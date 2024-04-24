<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class Profile extends Module
{
	function Profile($row)
	{
		Module::Module($row);
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'ajax_profile':
				$this->ajax_profile();
				exit();
			case 'upgrade':	
				require_once 'forms/upgrade.php';
				$this->add_form(new UpgradeAccountForm());
				break;
			default:
				require_once 'forms/list.php';
				$this->add_form(new ProfileForm());
				break;
		}
	}
	function ajax_profile()
	{
		$id = User::id();
		if(Url::get("full_name") == "")
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Fullname is required')
			));
			exit();
		}		
		if(Url::get("timezone") == "")
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Timezone is required')
			));
			exit();
		}
		$data = array(
			"full_name"        => Url::get("full_name"),
			"timezone"        => Url::get("timezone"),
		);
		if(Url::get("password") != "")
		{
			if(strlen(Url::get("password")) < 6)
			{
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => Portal::language('Passwords must be at least 6 characters')
				));
				exit();
			}
			if(Url::get("password") != Url::get("repassword")){
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => Portal::language('Password incorrect')
				));
				exit();
			}
			$data["password"] = User::encode_password(Url::get("password"));
		}
		DB::update('account',$data,'id="'.$id.'"');
		$user = Session::get('user_data');
		$user['full_name'] = $data['full_name'];
		$user['timezone'] = $data['timezone'];		
		Session::set('user_data',$user);
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => Portal::language('Update successfully')
		));	
	}
}
?>