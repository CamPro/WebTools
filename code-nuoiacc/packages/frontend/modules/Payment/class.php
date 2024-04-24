<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class Payment extends Module
{
	function Payment($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_admin())
		{
			switch(Url::get('cmd'))
			{
				case 'edit':			
					require_once 'forms/edit.php';
					$this->add_form(new EditPaymentForm());
					break;
				default:
					require_once 'forms/list.php';
					$this->add_form(new PaymentForm());
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