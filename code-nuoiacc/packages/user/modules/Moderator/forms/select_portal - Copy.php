<?php
class GrantModeratorForm extends Form
{
	function GrantModeratorForm()
	{
		Form::Form('GrantModeratorForm');
		$this->add('account_id',new TextType(true,'invalid_user_id',0,50));
		$this->link_js(Portal::template_js('core').'/jquery/jquery.autocomplete.js');
		$this->link_css(Portal::template_css('default').'/css/jquery/autocomplete.css');
		$this->link_js('packages/core/includes/js/jquery/jquery.colorbox.js');		
		$this->link_css('skins/default/css/jquery/colorbox.css');
	}
	function save_zone($account_id,$portal_id)
	{
		$ids = '0';
		if(isset($_REQUEST['zone']) && is_array($_REQUEST['zone']))
		{
			foreach($_REQUEST['zone'] as $key)
			{
				if(!DB::exists('account_zone',' account_id="'.$account_id.'" and portal_id="'.$portal_id.'" and zone_id='.$key))
				{
					DB::insert('account_zone',array('account_id'=>$account_id,'portal_id'=>$portal_id,'zone_id'=>$key));
				}
				$ids.=','.$key;
			}			
		}	
		DB::delete('account_zone','account_id ="'.$account_id.'" and portal_id="'.$portal_id.'" and zone_id not in ('.$ids.')');
	}
	function on_submit()
	{	
		if($this->check())
		{
			$portal_id = (isset($_REQUEST['portal_id'])?$_REQUEST['portal_id']:Portal::$portal_id);
			if(Url::get('account_id') and !DB::exists_id('account',Url::sget('account_id')))
			{
				$this->error('account_id','account_id_not_exist');
				return;	
			}
			$privileges = array();
			$ids = '0';
			foreach($_REQUEST as $key=>$value)
			{
				if(preg_match('/show\_([0-9]+)/',$key,$match) && isset($match[1]))
				{
					$privilege = array('account_id','status'=>1,'category_id'=>$match[1],'portal_id'=>$portal_id);
					$privilege_module = array(
						'module_id'=>Url::get('module_'.$match[1]),
						'view'=>isset($_REQUEST['show_'.$match[1]])?1:0,
						'view_detail'=>isset($_REQUEST['view_'.$match[1]])?1:0,
						'add'=>isset($_REQUEST['add_'.$match[1]])?1:0,
						'edit'=>isset($_REQUEST['edit_'.$match[1]])?1:0,
						'delete'=>isset($_REQUEST['delete_'.$match[1]])?1:0,
						'reserve'=>0,
						'special'=>0,
						'admin'=>isset($_REQUEST['admin_'.$match[1]])?1:0
					);
					if(Url::get('cmd')=='edit' && Url::get('account_id') && Url::get('privilege_id_'.$match[1]))
					{
						$privilege_id = Url::iget('privilege_id_'.$match[1]);
						DB::update_id('privilege',$privilege,$privilege_id);
						DB::update('privilege_module',$privilege_module,'privilege_id='.$privilege_id);
					}
					else
					{
						if($privilege_id = DB::insert('privilege',$privilege))
						{
							$privilege_module['privilege_id'] = $privilege_id;
							DB::insert('privilege_module',$privilege_module);
						}	
					}	
					ModeratorDB::update_moderator(URL::get('account_id'),$privilege_id,$portal_id,$match[1]);
					if($structure_id = DB::fetch('select structure_id as id from function where id='.$match[1],'id'))
					{
						$privileges[$structure_id] =  $structure_id;
					}	
					$ids .= ','.$privilege_id;
					
				}
			}
			if($delete_ids = DB::fetch_all('select id from privilege where id not in ('.$ids.') and account_id="'.Url::sget('account_id').'" and portal_id="'.$portal_id.'" and category_id!=0'))
			{
				foreach($delete_ids as $id)
				{
					DB::delete_id('privilege',$id['id']);
					DB::delete('account_privilege','privilege_id ='.$id['id']);
					DB::delete('privilege_module','privilege_id ='.$id['id']);
				}	
			}	
			DB::update_id('account',array('cache_setting'=>''),Url::sget('account_id'));
			Portal::set_setting('privilege',var_export($privileges,true),Url::sget('account_id'));
			$this->save_zone(Url::sget('account_id'),$portal_id);
			Url::redirect_current();
		}
	}
	function draw()
	{		
		if(Url::get('portal_id') && Url::get('portal_id')!='#default')
		{
			$cond =' portal_id="'.Url::get('portal_id').'"';
		}
		else
		{
			$cond  = IDStructure::child_cond(DB::structure_id('function',352),true);
			$cond .=' and portal_id="'.Portal::$portal_id.'"';			
		}
		$categories = ModeratorDB::get_categories($cond);
		$zone = Portal::template_cache('region');
		require_once 'packages/core/includes/utils/category.php';
		category_indent($categories);		
		$users = ModeratorDB::get_users();
		$this->init_edit();
		$this->parse_layout('select_portal',array(
			'users'=>$users,													  
			'items'=>$categories,
			'zone'=>$zone
		));
	}		
	function init_edit()
	{
		if(Url::get('account_id') && $privileges = ModeratorDB::get_privilege(Url::sget('account_id')))
		{
			foreach($privileges as $key=>$value)
			{
				if(!isset($_REQUEST['module_'.$value['id']]))
				{
					$_REQUEST['privilege_id_'.$value['id']] = $value['privilege_id'];
					$_REQUEST['module_'.$value['id']] = $value['module_id'];
					$_REQUEST['show_'.$value['id']] = $value['view'];
					$_REQUEST['view_'.$value['id']] = $value['view_detail'];
					$_REQUEST['add_'.$value['id']] = $value['add'];
					$_REQUEST['edit_'.$value['id']] = $value['edit'];
					$_REQUEST['delete_'.$value['id']] = $value['delete'];
					$_REQUEST['admin_'.$value['id']] = $value['admin'];
					$_REQUEST['reserve_'.$value['id']] = $value['reserve'];
					$_REQUEST['special_'.$value['id']] = $value['special'];
				}
			}
		}
		$portal_id = (isset($_REQUEST['portal_id'])?$_REQUEST['portal_id']:Portal::$portal_id);
		if(isset($_REQUEST['account_id']) && ($zone = DB::fetch_all('select *,zone_id as id from account_zone where portal_id="'.$portal_id.'" and account_id="'.$_REQUEST['account_id'].'"')))
		{
			foreach($zone as $key=>$value)
			{
				$_REQUEST['zone_'.$value['zone_id']] = $value['zone_id'];
			}
		}
	}
}
?>