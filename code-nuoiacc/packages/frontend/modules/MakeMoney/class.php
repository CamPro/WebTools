<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class MakeMoney extends Module
{
	function MakeMoney($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_login())
		{
			switch(Url::get('cmd'))
			{
				default:
					require_once 'forms/list.php';
					$this->add_form(new MakeMoneyForm());
					break;
			}
		}
		else
		{
			Url::redirect('dasboard');	
		}
	}
}
?>