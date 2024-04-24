<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class HelpMenu extends Module
{
	function HelpMenu($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'forms/list.php';
		$this->add_form(new HelpMenuForm());
	}
}
?>