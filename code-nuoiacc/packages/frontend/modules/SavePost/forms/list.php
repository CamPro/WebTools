<?php
class SavePostForm extends Form
{
	function SavePostForm()
	{
		Form::Form('SavePostForm');	
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
		$cond = '1';
		if(!User::is_admin())
		{
			$cond = 'user_id="'.User::id().'"';
		}
		$items = SavePostDB::get_items($cond);
		$this->parse_layout('list',array(
			'items'=>$items
		));
	}
}
?>