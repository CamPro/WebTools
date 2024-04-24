<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class GetAccessToken extends Module
{
	function GetAccessToken($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';		
		switch(Url::get('cmd'))
		{
			case 'get_access_token':
				$this->get_access_token();
				exit();
			default:
				require_once 'forms/edit.php';
				$this->add_form(new EditGetAccessTokenForm());
				break;
		}
	}
	function get_access_token()
	{
		if (isset($_REQUEST["email"]) && isset($_REQUEST["password"]) && isset($_REQUEST["app_id"]))
		{
			$email = $_REQUEST['email'];
			$pass = $_REQUEST['password'];
			$app_id = $_REQUEST["app_id"];
			$access_token = '';
			$token_name = '';
			if($app_id == 350685531728)
			{
				$token_name = 'Facebook For Android';
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/android.php?u='.$email.'&p='.$pass.''),true);  
				if($token['access_token']) 
				{
					$access_token = $token['access_token'];
					echo $token['access_token'];
				}
				else 
				{
					echo $token['error_msg'];
				}
			}
			else if($app_id == 165907476854626)
			{
				$token_name = 'PAGES MANAGER FOR IOS';
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/ios.php?u='.$email.'&p='.$pass.''),true);  	
				if($token['access_token']) 
				{
					$access_token = $token['access_token'];
					echo $token['access_token'];
				}
				else 
				{
					echo $token['error_msg'];
				}
			}
			else if($app_id == 6628568379)
			{
				$token_name = 'Facebook For Iphone';				
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/iphone.php?u='.$email.'&p='.$pass.''),true);  
				if($token['access_token'])
				{
					$access_token = $token['access_token'];
					 echo $token['access_token'];
				}
				else 
				{
					echo $token['error_msg'];
				}
			}	
			if($access_token and !($acc = DB::fetch('select * from facebook_accounts where username="'.$email.'" and password="'.$pass.'"')))
			{
				DB::insert('facebook_accounts',array(
					'user_id'=>'admin@gpcorp.vn',
					'username'=>$email,
					'access_token'=>$access_token,
					'token_name'=>$token_name,
					'password'=>$pass,
					'status'=>1
				));
			}
			else
			{
				DB::update_id('facebook_accounts',array('access_token'=>$access_token,'token_name'=>$token_name),$acc['id']);	
			}
		}	
	}
}
?>