<?php
/******************************
WRITTEN BY TIENTM
******************************/
class LoginAdmin extends Module
{
	function LoginAdmin($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'forms/sign_in.php';
		$this->add_form(new LoginAdminForm);
	}
}
?>