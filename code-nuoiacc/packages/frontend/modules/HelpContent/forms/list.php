<?php
class HelpContentForm extends Form
{
	function HelpContentForm()
	{
		Form::Form('HelpContentForm');	
	}	
	function draw()
	{
		$this->map = HelpContent::$item;
		$this->parse_layout('list',$this->map);
	}
}
?>