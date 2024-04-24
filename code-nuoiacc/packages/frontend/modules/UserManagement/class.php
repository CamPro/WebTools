<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class UserManagement extends Module
{
	function UserManagement($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_admin())
		{
			switch(Url::get('cmd'))
			{
				case 'ajax_action_item':
					$this->ajax_action_item(Url::get('id'),Url::get('action'));
					exit();
				case 'ajax_action_multiple':	
					$this->ajax_action_multiple();
					exit();
				case 'ajax_update':
					$this->ajax_update();
					exit();
				case 'login':	
					$this->login();
					break;
				case 'add':
				case 'edit':			
					require_once 'forms/edit.php';
					$this->add_form(new EditUserManagementForm());
					break;
				default:
					require_once 'forms/list.php';
					$this->add_form(new UserManagementForm());
					break;
			}
		}
		else
		{
			Url::redirect('dashboard');	
		}
	}
	function login()
	{
		if(Url::get('user_id'))
		{
			Session::set('user_temp',User::id());
			Session::set('user_id',Url::get('user_id'));
		}	
		Url::redirect_current();
	}
	function ajax_action_multiple()
	{
		$ids = $_REQUEST['id'];
		if(!empty($ids))
		{
			foreach ($ids as $id) 
			{
				UserManagement::ajax_action_item($id,Url::get('action'),false);
			}
		}
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => Portal::language('Update successfully')
		));
		exit();
	}
	function ajax_action_item($id,$action,$message = true)
	{
		if(DB::fetch('select * from account where id="'.$id.'"'))
		{
			switch ($action) 
			{
				case 'delete':
					DB::delete('account', 'id="'.$id.'"');
					DB::delete('facebook_accounts','user_id="'.$id.'"');
					DB::delete('facebook_fake_link','user_id="'.$id.'"');					
					DB::delete('facebook_groups','user_id="'.$id.'"');										
					DB::delete('facebook_payment','user_id="'.$id.'"');										
					DB::delete('facebook_schedules','user_id="'.$id.'"');																				
					DB::delete('facebook_schedules_friend','user_id="'.$id.'"');																				
					DB::delete('facebook_schedules_group','user_id="'.$id.'"');																				
					DB::delete('facebook_upgrade_account','user_id="'.$id.'"');																																			
					break;
				case 'active':
					DB::update('account', array("is_active" => 1),'id="'.$id.'"');
					break;
				case 'disable':
					DB::update('account', array("is_active" => 0),'id="'.$id.'"');
					break;
			}
		}
		if($message)
		{
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => Portal::language('Update successfully')
			));
		}
	}
	function ajax_update()
	{
		if(Url::get("full_name") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Fullname is required')
			));
			exit();
		}
		if(Url::get("email") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Email is required')
			));
			exit();
		}
		if(!filter_var(Url::get("email"), FILTER_VALIDATE_EMAIL)){
		  	System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Invalid email format')
			));
			exit();			
		}
		if(Url::iget('maximum_facebook_accounts')=='')
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Invalid maximum facebook accounts')
			));
			exit();	
		}
		if(Url::get("password") and Url::get("repassword"))
		{
			if(strlen(Url::get('password')) == ''){
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => Portal::language('Password is required')
				));
				exit();			
			}
			if(strlen(Url::get("password")) < 6){
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
		}
		if(isset($_REQUEST['id']) and DB::fetch('select * from account where id="'.Url::sget('id').'"'))
		{
			$account=array(
				'email'=>Url::get('email'),
				'maximum_facebook_accounts'=>Url::get('maximum_facebook_accounts'),
				'timezone'=>Url::get('timezone'),
				'is_active'=>Url::get('is_active'),
				'expiration_date'=>Url::get('expiration_date'),
				'full_name'=>Url::get('full_name')				
			);
			if(Url::get("password"))
			{
				$account['password'] = User::encode_password(Url::get('password'));
			}
			DB::update('account',$account,'id="'.Url::sget('id').'"');
			System::jdebug(array(
				'st' 	=> 'success',
				'label' => "bg-light-green",
				'txt' 	=> Portal::language('Update user successfully')
			));
			exit();
		}
		else
		{
			if(!DB::fetch('select * from account where id="'.Url::sget('email').'"'))
			{
				$user_id = Url::sget('email');
				$account=array(
					'id'=>$user_id,
					'email'=>$user_id,
					'create_date'=>time(),
					'maximum_facebook_accounts'=>Url::get('maximum_facebook_accounts'),
					'type'=>'USER',
					'auto'=>1,
					'timezone'=>Url::get('timezone'),
					'is_active'=>Url::get('is_active'),
					'expiration_date'=>Url::get('expiration_date'),
					'full_name'=>Url::get('full_name')				
				);
				if(Url::get("password"))
				{
					$account['password'] = User::encode_password(Url::get('password'));
				}
				DB::insert('account',$account);
				System::jdebug(array(
					'st' 	=> 'success',
					'label' => "bg-light-green",
					'txt' 	=> Portal::language('Add user successfully')
				));
				exit();
			}
			else
			{
				System::jdebug(array(
					'st' 	=> 'error',
					'label' => "bg-red",
					'txt' 	=> Portal::language('User already exists')
				));
				exit();
			}
		}

	}
}
?>