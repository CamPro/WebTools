<?php
class HelpMenuForm extends Form
{
	function HelpMenuForm()
	{
		Form::Form('HelpMenuForm');	
		$this->link_css('skins/news/css/bootstrap.css');
		$this->link_css('skins/news/css/style.css');																
		$this->link_css('skins/news/css/help.css');
	}	
	function draw()
	{
		$this->map['items'] = HelpMenuDB::get_items();
		$this->parse_layout('list',$this->map);
	}
}
?>