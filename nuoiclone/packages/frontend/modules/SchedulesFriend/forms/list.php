<?php
class SchedulesFriendForm extends Form
{
	function SchedulesFriendForm()
	{
		Form::Form('SchedulesFriendForm');	
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
		$item_per_page = 300;
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin()){
			$cond = '1';
		}
		$total = SchedulesFriendDB::get_total_item($cond);
		$paging = paging($total,$item_per_page,10,false,'page_no',array());
		$processing = SchedulesFriendDB::get_total_item($cond.' and status=1');
		$failure = SchedulesFriendDB::get_total_item($cond.' and status=2');		
		$complated = ($total - $processing - $failure);
		$items = SchedulesFriendDB::get_items($cond,$item_per_page);
		$this->parse_layout('list',array(
			'items'=>$items,
			'processing'=>$processing,
			'failure'=>$failure,	
			'complated'=>$complated,		
			'paging'=>$paging,
			'total'=>$total,
		));
	}
}
?>