<?php
class SchedulesPostForm extends Form
{
	function SchedulesPostForm()
	{
		Form::Form('SchedulesPostForm');	
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
		}
		if(Url::get('facebook_id'))
		{
			$cond .= ' and account_id='.Url::get('facebook_id');
		}
		$total = SchedulesPostDB::get_total_item($cond);
		$paging = paging($total,$item_per_page,10,false,'page_no',array());
		$processing = SchedulesPostDB::get_total_item($cond.' and status=1');
		$failure = SchedulesPostDB::get_total_item($cond.' and status=4');		
		$complated = ($total - $processing - $failure);
		$items = SchedulesPostDB::get_items($cond,$item_per_page);
		$this->parse_layout('list',array(
			'items'=>$items,
			'paging'=>$paging,
			'processing'=>$processing,
			'failure'=>$failure,	
			'complated'=>$complated,
			'total'=>$total,
			'facebook_id_list'=>array(''=>'[Chọn tài khoản Facebook]')+String::get_list(SchedulesPostDB::get_account())
		));
	}
}
?>