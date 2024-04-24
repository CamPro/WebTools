<?php
class MessageInboxForm extends Form
{
	function MessageInboxForm()
	{
		Form::Form('MessageInboxForm');
		$this->link_js('skins/news/js/emojione.min.js');
		$this->link_js('skins/news/js/emojionearea.js');			
		$this->link_css('skins/news/css/app.css');		
		$this->link_js('skins/news/js/waitMe.js');		
		$this->link_css('skins/news/css/waitMe.css');
		$this->link_js('skins/news/js/functions.js');				
	}	
	function draw()
	{
		$cond = 'user_id="'.User::id().'"';		
		$facebook_acc = MessageInboxDB::get_items($cond);
		$this->map['facebook_id_list'] = array('0'=>'-- Chọn tài khoản Facebook --')+String::get_list($facebook_acc);
		$this->parse_layout('list',$this->map);
	}
}
?>