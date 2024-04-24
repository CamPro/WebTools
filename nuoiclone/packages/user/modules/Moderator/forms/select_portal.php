<?php
class GrantModeratorForm extends Form
{
	function GrantModeratorForm()
	{
		Form::Form('GrantModeratorForm');
		$this->add('account_id',new TextType(true,'invalid_user_id',0,50));
		$this->link_js(Portal::template_js('core').'/jquery/jquery.autocomplete.js');
		$this->link_css(Portal::template_css('default').'/css/jquery/autocomplete.css');
	}
	function on_submit()
	{	
		if($this->check())
		{
			$department = ModeratorDB::get_department();
			$department_id = $_REQUEST['department_id'];
			$privilege_user = DB::fetch_all('select * from privilege where account_id="'.Url::get('account_id').'"');
			foreach($privilege_user as $k=>$v)
			{
				DB::delete('privilege_module','privilege_id='.$k);
			}
			DB::delete('privilege','account_id="'.Url::get('account_id').'"');
			DB::delete('department_user','account_id="'.Url::get('account_id').'"');
			$privileges = array();
			$ids = '';
			foreach($department_id as $key=>$value)
			{
				DB::insert('department_user',array(
					'department_id'=>$key,
					'account_id'=>Url::get('account_id'),
					'time'=>time(),
					'user_id'=>Session::get('user_id')
				));
				eval('$privilege='.$department[$key]['privilege'].';');
				eval('$privilege_module='.$department[$key]['privilege_module'].';');
				foreach($privilege as $key_=>$value_)
				{
					$value_ += array('account_id'=>Url::get('account_id'));
					if(!DB::fetch('SELECT * from privilege where account_id="'.Url::get('account_id').'" and portal_id="'.$value_['portal_id'].'" and category='.$value_['category_id']))
					{
						if($privilege_id = DB::insert('privilege',$value_))
						{
							$privilege_module[$key_]['privilege_id'] = $privilege_id;
							DB::insert('privilege_module',$privilege_module[$key_]);
							ModeratorDB::update_moderator(URL::get('account_id'),$privilege_id,Portal::$portal_id,$value_['category_id']);
							if($structure_id = DB::fetch('select structure_id as id from function where id='.$value_['category_id'],'id'))
							{
								$privileges[$structure_id] =  $structure_id;
							}	
							$ids .= ','.$privilege_id;
						}	
					}
				}
			}
			Portal::set_setting('privilege',var_export($privileges,true),Url::sget('account_id'));
			Url::redirect_current();
		}
	}
	function draw()
	{		
		$department = ModeratorDB::get_department();
		$users = ModeratorDB::get_users();
		$this->init_edit();
		$this->parse_layout('select_portal',array(
			'users'=>$users,													  
			'department'=>$department,
			'zone'=>$zone
		));
	}		
	function init_edit()
	{
		if(Url::get('account_id') && $department = DB::fetch_all('select * from department_user where account_id="'.Url::get('account_id').'"'))
		{
			foreach($department as $key=>$value)
			{
				$_REQUEST['department_'.$value['department_id']] = 1;
			}
		}
	}
}
?>