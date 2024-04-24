<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class GetAccessTokenAll extends Module
{
	function GetAccessTokenAll($row)
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
				$this->add_form(new EditGetAccessTokenAllForm());
				break;
		}
	}
	function get_access_token()
	{
		if (isset($_REQUEST["nicks"]) && isset($_REQUEST["app_id"]))
		{
			$nicks =  explode(PHP_EOL, $_REQUEST['nicks']);
			$app_id = $_REQUEST["app_id"];
			$token_all = '';
			$token_name = '';
			if($app_id == 350685531728)
			{
				$token_name = 'android';
			}
			elseif($app_id == 165907476854626)
			{
				$token_name = 'ios';
			}
			else
			{
				$token_name = 'iphone';
			}
			foreach($nicks as $key=>$value)
			{
				$nick = explode('|',trim($value));
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/'.$token_name.'.php?u='.$nick[0].'&p='.$nick[1].''),true);  
				if($token['access_token']) 
				{
					$access_token = $token['access_token'];
					$token_all.=$access_token.'\n';
					if($access_token and !($acc = DB::fetch('select * from facebook_accounts where username="'.$nick[0].'" and password="'.$nick[1].'"')))
					{
						DB::insert('facebook_accounts',array(
							'user_id'=>'admin@gpcorp.vn',
							'username'=>$nick[0],
							'access_token'=>$access_token,
							'token_name'=>$token_name,
							'password'=>$nick[1],
							'status'=>1
						));
					}
					else
					{
						DB::update_id('facebook_accounts',array('access_token'=>$access_token,'token_name'=>$token_name),$acc['id']);	
					}
				}
			}
			echo trim($token_all);
		}	
	}
}
?>