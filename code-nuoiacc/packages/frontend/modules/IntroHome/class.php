<?php
//	AUTHOR: MINHTC
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class IntroHome extends Module
{
	function IntroHome($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_login())
		{
			Url::redirect('dashboard');
		}
		require_once 'forms/list.php';
		$this->add_form(new IntroHomeForm());
	}
}
?>