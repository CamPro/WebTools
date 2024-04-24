<?php
class ListUserAdminForm extends Form
{
	function ListUserAdminForm()
	{
		Form::Form('ListUserAdminForm');
		$this->link_css('skins/default/css/cms.css');
	}
	function on_submit()
	{
		if(Url::get('active') and $_REQUEST['selected_ids'] and sizeof($_REQUEST['selected_ids'])>0)
		{
			foreach($_REQUEST['selected_ids'] as $key=>$value)
			{
				DB::update_id('account',array('is_active'=>1),$value);
			}
		}
		if(URL::get('confirm') && !isset($_REQUEST['filter']))
		{
			if(Url::get('cmd')=='delete')
			{
				foreach(URL::get('selected_ids') as $id)
				{
					UserAdminDB::delete_item($id);		
				}
				require_once 'packages/core/includes/system/update_privilege.php';
				make_privilege_cache();
				Url::redirect_current();
			}
		}
	}
	function draw()
	{
		$cond = 'account.type="USER" and account.id!="#default"';
		$cond .= $this->get_condition();
		$item_per_page = 500;
		$count = UserAdminDB::get_total($cond);
		require_once 'packages/core/includes/utils/paging.php';
		$paging = paging($count['acount'],$item_per_page,10,false,'page_no',array('cmd','user_id'));
		$items = UserAdminDB::get_items($cond,$item_per_page);
		$just_edited_id['just_edited_ids'] = array();
		if (UrL::get('selected_ids'))
		{
			if(is_string(UrL::get('selected_ids')))
			{
				if (strstr(UrL::get('selected_ids'),','))
				{
					$just_edited_id['just_edited_ids']=explode(',',UrL::get('selected_ids'));
				}
				else
				{
					$just_edited_id['just_edited_ids']=array('0'=>UrL::get('selected_ids'));
				}
			}
		}
		$arr = array('1'=>'Đã kích hoạt','2'=>'Chưa kích hoạt');
		$this->parse_layout('list',$just_edited_id+
			array(
				'items'=>$items,
				'is_active_list'=>array(''=>'[Kích hoạt]')+$arr,
				'auto_list'=>array(''=>'[Đăng ký]')+array('1'=>'Đăng ký tự động','2'=>'Tự đăng ký'),
				'total'=>$count['acount'],
				'paging'=>$paging,
				'item_per_page'=>$item_per_page
			)
		);
	}
	function get_condition()
	{
		$cond = '';//'account.id!="admin"';
		if(Url::sget('user_id'))
		{
			$cond.= ' and account.id like "%'.Url::sget('user_id').'%"';
		}
		if(Url::get('is_active'))
		{
			if(Url::get('is_active')==1)
			{
				$cond.= ' and account.is_active';
			}
			else
			{
				$cond.= ' and ! account.is_active';
			}
		}
		if(Url::get('auto'))
		{
			if(Url::get('auto')==1)
			{
				$cond.= ' and account.auto';
			}
			else
			{
				$cond.= ' and ! account.auto';
			}
		}
		return $cond;
	}
}
?>
