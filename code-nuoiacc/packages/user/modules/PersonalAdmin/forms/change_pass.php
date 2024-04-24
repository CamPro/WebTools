<?php
class ChangePassForm extends Form
{
	function ChangePassForm()
	{
		Form::Form('ChangePass');
		$this->add('old_password',new PasswordType(true,'invalid_old_password'));
		$this->add('new_password',new PasswordType(true,'invalid_new_password'));
		$this->add('retype_new_password',new PasswordType(true,'invalid_retype_password'));
		$this->link_css('skins/default/css/cms.css');
		$this->link_css('skins/default/css/message.css');
	}
	function user_changepass()
	{
		$password = $_REQUEST['new_password'];
		$retypepassword = $_REQUEST['retype_new_password'];
		if ($password!=$retypepassword)
		{
			$this->error('retype_new_password','invalid_retype_password');
		}
		else 
		{
			DB::update('account',array('password'=>User::encode_password($password)),'id="'.Session::get('user_id').'"');
			URL::redirect_current(array('cmd','action'=>'successful'));
		}
	}
	function on_submit()
	{
		if ($this->check())
		{
			if(!$this->is_error())
			{
				$row = DB::select('account',Session::get('user_id'));
				if (User::encode_password($_REQUEST['old_password'])==($row['password']))
				{
					$this->user_changepass();
				}
				else
				{
					$this->error('old_password','invalid_old_password');
				}	
			}
		}
	}

	function draw()
	{	
		if(Url::get('action')=='successful')
		{
			MessageBox::show_box(Portal::language('update_successful'),'success');							
		}	
		$this->parse_layout('change_pass');
	}	
}
?>
