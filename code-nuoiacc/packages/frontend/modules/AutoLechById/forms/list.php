<?php
class AutoLechByIdForm extends Form
{
	function AutoLechByIdForm()
	{
		Form::Form('AutoLechByIdForm');
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
		$this->link_js('skins/news/js/autosize.js');	
		$this->link_js('skins/news/js/waitMe.js');		
		$this->link_css('skins/news/css/waitMe.css');	
		$this->link_js('skins/news/js/functions.js');	
	}	
	function draw()
	{
		$this->map = array();
		$accounts = AutoLechByIdDB::get_items();
		$this->map['facebook_id_list'] = array('0'=>'-- Ấn vào đây để chọn tài khoản --')+String::get_list($accounts);
		$this->map['items'] = $accounts;
		$this->parse_layout('list',$this->map);
	}
}
?>