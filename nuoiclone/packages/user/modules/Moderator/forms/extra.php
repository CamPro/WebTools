<?php
class ExtraForm extends Form
{
	function ExtraForm()
	{
		Form::Form('ExtraForm');
		$this->link_css('skins/default/css/cms.css');
		$this->link_js('packages/core/includes/js/multi_items.js');		
	}
	function on_submit()
	{
		if(Url::get('confirm_edit'))
		{
			$is_error = false;
			if(isset($_REQUEST['mi_privilege_module']))
			{
				$ids = array();
				if(!$privilege_id = DB::fetch('select id from privilege where account_id="'.Url::sget('account_id').'" and category_id=0','id'))
				{
					$privilege_id = DB::insert('privilege',array('portal_id'=>'#'.Url::get('portal_id'),'category_id'=>0,'status'=>1,'account_id'=>Url::sget('account_id')));
					ModeratorDB::update_moderator(URL::get('account_id'),$privilege_id,'#'.Url::get('portal_id'));					
				}	
				foreach($_REQUEST['mi_privilege_module'] as $key=>$record)
				{
					$record['privilege_id'] = $privilege_id;
					$record['view'] = isset($record['view'])?1:0;
					$record['view_detail'] = isset($record['view_detail'])?1:0;
					$record['add'] = isset($record['add'])?1:0;
					$record['edit'] = isset($record['edit'])?1:0;
					$record['delete'] = isset($record['delete'])?1:0;
					$record['special'] = isset($record['special'])?1:0;
					$record['reserve'] = isset($record['reserve'])?1:0;
					$record['admin'] = isset($record['admin'])?1:0;
					if($record['view'] == 0 and $record['view_detail'] == 0 and $record['add'] == 0
						and $record['edit'] == 0 and $record['delete'] == 0 and $record['special'] == 0
						and $record['reserve'] == 0 and $record['admin'] == 0)
					{
						DB::delete('privilege_module','module_id="'.$record['module_id'].'" and privilege_id="'.$record['privilege_id'].'"');
					}
					else
					{
						if(isset($record['id']))
						{
							unset($record['id']);
						}
						if($privilege_module=DB::select('privilege_module','module_id="'.$record['module_id'].'" and privilege_id="'.$record['privilege_id'].'"'))
						{
							DB::update('privilege_module',$record,'id="'.$privilege_module['id'].'"');
							$ids[] = $privilege_module['id'];
						}
						else
						{
							$ids[] = DB::insert('privilege_module',$record); 
						}
					}
				}
				$_REQUEST['selected_ids']=join(',',$ids);				
			}
			if(URL::get('deleted_ids'))
			{
				$deleted_ids = explode(',',URL::get('deleted_ids'));
				foreach($deleted_ids as $id)
				{					
					DB::delete_id('privilege_module',$id);
				}				
			}
			if(!$is_error)
			{
				echo '
				<script>
				alert("'.Portal::language('update_success').'");
				if(window.parent)
				{
					parent.jQuery.fn.colorbox.close();
				}
				else
				{
					window.close();
				}
				</script>';
			}
		}
	}
	function draw()
	{
		$db_items = DB::select_all('module',false,'name');
		$module_id_options = '';
		foreach($db_items as $item)
		{
			$module_id_options .= '<option value="'.$item['id'].'">'.$item['name'].' - '.$item['title_1'].'</option>';
		}
		if($mi_privilege_module = DB::fetch_all('select privilege_module.* from privilege inner join privilege_module on privilege_module.privilege_id= privilege.id where account_id="'.Url::get('account_id').'" and category_id=0'))
		{
			$_REQUEST['mi_privilege_module'] = $mi_privilege_module;
		}
		$this->parse_layout('extra',
			array(
				'module_id_options' => $module_id_options, 
			)
		);
	}
}
?>