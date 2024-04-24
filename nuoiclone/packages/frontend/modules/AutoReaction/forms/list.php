<?php
class AutoReactionForm extends Form
{
	function AutoReactionForm()
	{
		Form::Form('AutoReactionForm');
		$this->link_css('skins/news/css/bootstrap-select.css');
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
		$this->link_js('skins/news/js/nouislider.js');
		$this->link_js('skins/news/js/waitMe.js');		
		$this->link_css('skins/news/css/waitMe.css');
		$this->link_js('skins/news/js/functions.js');	
	}	
	function draw()
	{
		$this->map = array();
		$this->map['facebook_id_list'] = array('0'=>'-- Ấn vào đây để chọn tài khoản --')+String::get_list(AutoReactionDB::get_items());
		$item_reaction =  DB::fetch_all('select facebook_bot.*, concat(facebook_accounts.fullname," - ",facebook_accounts.username) as name from facebook_bot inner join facebook_accounts on facebook_accounts.id = facebook_bot.account_id where facebook_bot.user_id="'.User::id().'"');
		$this->map['item_reaction'] = $item_reaction;
		$this->parse_layout('list',$this->map);
	}
}
?>