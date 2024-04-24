<?php
/*---
WRITTEN BY :THEDEATH
---*/
class PersonalAdmin extends Module
{
	function PersonalAdmin($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'packages/member/includes/php/lib.php';
		if(User::is_login())
		{
			switch( URL::get('cmd'))
			{
				case 'change_avatar':
					require_once 'forms/avatar.php';
					$this->add_form(new ChangeAvatarForm);
					break;
				case 'edit_password':
					require_once 'forms/change_pass.php';
					$this->add_form(new ChangePassForm);
					break;
				case 'edit':
					require_once 'forms/edit.php';
					$this->add_form(new PersonalAdminEditForm);
					break;
				default:
					require_once 'forms/edit.php';	
					$this->add_form(new PersonalAdminEditForm());
					break;
			}	
		}	
		else
		{
			Url::redirect('dang-nhap');
		}
	}
}
?>
