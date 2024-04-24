<?php
class FacebookAccountForm extends Form
{
	function FacebookAccountForm()
	{
		Form::Form('FacebookAccountForm');	
		$this->link_js("skins/news/js/jquery.dataTables.js");
		$this->link_js("skins/news/js/dataTables.responsive.min.js");
		$this->link_js("skins/news/js/dataTables.bootstrap.js");
		$this->link_js("skins/news/js/dataTables.buttons.min.js");
		$this->link_js("skins/news/js/buttons.flash.min.js");
		$this->link_js("skins/news/js/jszip.min.js");
		$this->link_js("skins/news/js/pdfmake.min.js");
		$this->link_js("skins/news/js/vfs_fonts.js");
		$this->link_js("skins/news/js/buttons.html5.min.js");
		$this->link_js("skins/news/js/buttons.print.min.js");
		$this->link_css('skins/news/css/dataTables.bootstrap.css');
		$this->link_css('skins/news/css/dataTables.responsive.css');
		$this->link_js('skins/news/js/script.js');
	}	
	function draw()
	{
		require_once 'packages/core/includes/utils/paging.php';
		$item_per_page = 50;
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
			if(Url::get('user_id'))
			{
				$cond.=' and user_id="'.Url::get('user_id').'"';
			}
		}
		$total = FacebookAccountDB::get_total_item($cond);
		$paging = paging($total,$item_per_page,10,false,'page_no',array());
		$items = FacebookAccountDB::get_items($cond,$item_per_page);
		$this->parse_layout('list',array(
			'paging'=>$paging,
			'items'=>$items,
			'item_per_page'=>$item_per_page,
			'total'=>$total
		));
	}
}
?>