<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class UserSetting extends Module
{
	function UserSetting($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_admin())
		{
			switch(Url::get('cmd'))
			{
				case 'unlink':
					if(Url::get('link'))
					{
						@unlink(Url::get('link'));
						Url::redirect_current();
					}
					break;
				default:
				
					require_once 'forms/list.php';
					$this->add_form(new UserSettingForm());
					break;
			}
		}
		else
		{
			Url::redirect('dashboard');	
		}
	}
}
?>