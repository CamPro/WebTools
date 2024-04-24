<?php
class AwardUserAdminForm extends Form
{
	function AwardUserAdminForm()
	{
		Form::Form('AwardUserAdminForm');
		$this->link_css('skins/default/css/cms.css');
	}
	function on_submit()
	{
		if(URL::get('confirm') && !isset($_REQUEST['filter']) && isset($_REQUEST['items']))
		{
			foreach($_REQUEST['items'] as $key=>$value)
			{
				if($value['award']>0)
				{
					DB::query('update party set point=point+'.$value['award'].' where user_id="'.$key.'"');
					DB::insert('v_coin',array('user_id'=>$key,'time'=>time(),'point'=>$value['award'],'note'=>'System award for user'));
				}
			}
			Url::redirect_current(array('cmd','page_no'));
		}
	}
	function draw()
	{
		$cond = '';
		$cond .= $this->get_condition();
		$item_per_page = 100;
		$count = UserAdminDB::get_total($cond);
		require_once 'packages/core/includes/utils/paging.php';
		$paging = paging($count['acount'],$item_per_page,10,false,'page_no',array('cmd'));
		$items = UserAdminDB::get_items($cond,$item_per_page);
		$this->parse_layout('award',array(
				'items'=>$items,
				'total'=>$count['acount'],
				'paging'=>$paging,
				'item_per_page'=>$item_per_page
			)
		);
	}
	function get_condition()
	{
		$cond = 'account.id!="admin"';
		if(Url::sget('user_id'))
		{
			$cond.= ' and account.id like "%'.Url::sget('user_id').'%"';
		}
		return $cond;
	}
}
?>
