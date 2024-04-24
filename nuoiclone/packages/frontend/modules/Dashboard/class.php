<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class Dashboard extends Module
{
	static $category = array();
	function Dashboard($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'forms/list.php';
		$this->add_form(new DashboardForm());
	}
}
?>