<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY TCV PORTAL
******************************/
class SignIn extends Module
{
	function SignIn($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'forms/sign_in.php';
		$this->add_form(new SignInForm);
	}
}
?>