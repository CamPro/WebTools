<?php
class EditSavePostForm extends Form
{
	function EditSavePostForm()
	{
		Form::Form('EditSavePostForm');	
		$this->link_js('skins/news/js/emojione.min.js');
		$this->link_js('skins/news/js/emojionearea.js');			
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
		$this->link_js('skins/news/js/jquery.countdown.min.js');
		$this->link_js('skins/news/js/jquery.ui.min.js');
		$this->link_js('skins/news/libraries/elFinder/js/elfinder.full.js');		
		$this->link_js('skins/news/js/jquery.dialogelfinder.js');
		$this->link_css('skins/news/libraries/elFinder/css/elfinder.min.css');		
		$this->link_js('skins/news/js/script.js');
	}	
	function draw()
	{
		$cond = 'user_id="'.User::id().'"';
		$this->map['deplay_post_now_list'] = Date_Time::time_delay(Portal::language('seconds'));				
		$_REQUEST['deplay_post_now'] = Portal::get_setting('default_deplay_post_now');
		$this->map['deplay_list'] = Date_Time::time_delay(Portal::language('minutes'),1,900);	
		$_REQUEST['deplay'] = Portal::get_setting('default_deplay');
		$this->map['time_pause_list'] = Date_Time::time_delay(Portal::language('minutes'));	
		$this->map['auto_pause_list'] = Date_Time::time_delay(Portal::language('posts'),0,50);	
		$this->map['items'] = SavePostDB::get_groups($cond);
		$this->map['account_list'] = array(''=>'[--Chọn tài khoản--]')+String::get_list(SavePostDB::get_fb_account($cond));
		$this->map['categories_list'] = $this->map['category_id_list'] = array(''=>'[--Chọn danh mục--]')+String::get_list(SavePostDB::get_categories($cond));
		if(Session::is_set('category'))
		{
			$_REQUEST['categories'] = Session::get('category');
		}
		$this->map['getSavePost_list'] = array(''=>'[--Mẫu đã lưu--]')+String::get_list(SavePostDB::get_items($cond));
		$this->parse_layout('edit',$this->map);
	}
}
?>