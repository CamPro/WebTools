<?php
class BuffLikeForm extends Form
{
	function BuffLikeForm()
	{
		Form::Form('BuffLikeForm');
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
	}	
	function draw()
	{
		$this->map = array();
		$this->parse_layout('list',$this->map);
	}
}
?>