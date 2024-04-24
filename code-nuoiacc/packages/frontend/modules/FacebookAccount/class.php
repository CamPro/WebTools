<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class FacebookAccount extends Module
{
	function FacebookAccount($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';		
		switch(Url::get('cmd'))
		{
			case 'check_alive':
				$this->check_alive();
				break;
			case 'get_access_token':
				$this->get_access_token();
				exit();
			case 'ajax_action_multiple':
				$this->ajax_action_multiple();
				exit();
			case 'ajax_action_item':
				$this->ajax_action_item(Url::get('id'),Url::get('action'));
				exit();
			case 'ajax_get_groups':
				$this->ajax_get_groups();
				exit();
			case 'ajax_update':
				$this->ajax_update_all();
				exit();
			case 'add_all_token':	
				$this->add_all_token();
				exit();
			case 'get_owner_app':	
				$this->get_owner_app();
				exit();
			case 'add_all':
				require_once 'forms/add_all.php';
				$this->add_form(new AddAllFacebookAccountForm());
				break;
			case 'add':
			case 'edit':			
				require_once 'forms/edit.php';
				$this->add_form(new EditFacebookAccountForm());
				break;
			default:
				require_once 'forms/list.php';
				$this->add_form(new FacebookAccountForm());
				break;
		}
	}
	function check_alive()
	{
		$items = DB::fetch_all('select * from facebook_accounts where status and user_id="'.User::id().'"');	
		foreach($items as $key=>$value)
		{
			$app = FbOAuth_Info_App($value['access_token']);
			if(isset($app['error']))
			{
				DB::update_id('facebook_accounts',array('status'=>0),$key);
			}
		}
		Url::redirect_current();	
	}
	function get_access_token()
	{
		if (isset($_REQUEST["email"]) && isset($_REQUEST["password"]) && isset($_REQUEST["app_id"]))
		{
			$email = $_REQUEST['email'];
			$pass = $_REQUEST['password'];
			$app_id = $_REQUEST["app_id"];
			if($app_id == 350685531728)
			{
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/android.php?u='.$email.'&p='.$pass.''),true);  
				if($token['access_token']) echo $token['access_token'];
				else echo $token['error_msg'];
			}
			else if($app_id == 165907476854626)
			{
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/ios.php?u='.$email.'&p='.$pass.''),true);  	
				if($token['access_token']) echo $token['access_token'];
				else echo $token['error_msg'];
			}
			else if($app_id == 6628568379)
			{
				$token = json_decode(file_get_contents('http://ungdungdangtin.net/token/iphone.php?u='.$email.'&p='.$pass.''),true);  
				if($token['access_token']) echo $token['access_token'];
				else echo $token['error_msg'];
			}		
		}	
	}
	function ajax_action_multiple()
	{
		$ids = $_REQUEST['id'];
		if(!empty($ids))
		{
			foreach ($ids as $id) 
			{
				FacebookAccount::ajax_action_item($id,Url::get('action'),false);
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
		$account = DB::fetch('select * from facebook_accounts where id='.$id.' and user_id="'.User::id().'"');
		if($account)
		{
			switch ($action) 
			{
				case 'delete':
					DB::delete_id('facebook_accounts',$id);
					DB::delete('facebook_groups','account_id='.$id);
					DB::delete('facebook_schedules','account_id='.$id);		
					DB::delete('facebook_schedules_friend','account_id='.$id);										
					DB::delete('facebook_schedules_group','account_id='.$id);															
					DB::delete('facebook_bot','account_id='.$id);					
					break;				
				case 'active':
					DB::update_id('facebook_accounts',array('status'=>1),$id);
					break;		
				case 'disable':
					DB::update_id('facebook_accounts',array('status'=>'0'),$id);
					break;
			}
		}		
		if($message)
		{
			System::jdebug(array(
				'st' 	=> 'success',
				'txt' 	=> Portal::language('Successfully')
			));
		}
	}
	function ajax_get_groups()
	{
		$account = DB::fetch('select * from facebook_accounts where id='.Url::iget('id'));
		if(!empty($account))
		{
			switch (Url::get("type")) 
			{
				case 'group':
					$this->getGroups($account['id'], $account['access_token']);
					break;
				case 'page':
					$this->getPages($account['id'], $account['access_token']);
					break;
				case 'friend':	
					$this->getFriend($account['id'], $account['access_token']);
					break;
			}
			System::jdebug(array(
				'st' 	=> 'success',
				"label" => "bg-light-green",
				'txt' 	=> Portal::language('Successfully')
			));
		}
		else
		{
			System::jdebug(array(
				'st' 	=> 'error',
				"label" => "bg-red",
				'txt' 	=> Portal::language('Update failure')
			));
		}
		exit();
	}
	function get_owner_app()
	{
		System::jdebug(array(
			"st"  => "error",
			"label" => "bg-red",
			"txt" => Portal::language('Facebook App ID and Facebook App Secret is required')
		));
		exit();
	}
	function add_all_token()
	{
		set_time_limit(0);
		$access_token = explode(PHP_EOL,trim(Url::get('access_token')));
		$total_token = count($access_token);
		$accounts = DB::fetch('select count(*) as account from facebook_accounts where user_id="'.User::id().'"','account');
		$max_acc_add = Session::get('user_data','maximum_facebook_accounts');
		$total = ($max_acc_add - $accounts);
		if($total<=0)
		{
			System::jdebug(array(
				"error" => 'Bạn đã dùng hết số tài khoản cho phép. Vui lòng nâng cấp tài khoản để được sử dụng nhiều hơn.',
				"redirect"=>Url::build('profile',array('cmd'=>'upgrade'))
			));
			exit();	
		}
		else
		{
			if($total_token<$total)
			{
				$total = $total_token;
			}
			$i = 0;
			while($i<$total)
			{
				$value = $access_token[$i];
				$FbOAuth_App = FbOAuth_Info_App($value);
				if(!empty($FbOAuth_App) && !isset($FbOAuth_App['error']))
				{
					$FbOAuth_User = FbOAuth_User($value);
					$fid = $FbOAuth_User['id'];
					$data = array(
						"fid"           => $fid,
						"username"      => (isset($FbOAuth_User['email']))?$FbOAuth_User['email']:$fid,
						"fullname"      => $FbOAuth_User['name'],
						"token_name"    => $FbOAuth_App['name'],
						"access_token"  => $value,
						'birthday'      => $FbOAuth_User['birthday'],
						'user_id'       => User::id()
					);	
					if(!DB::fetch('select * from facebook_accounts where fid="'.$fid.'" and user_id="'.User::id().'"'))
					{
						$total_friend = 0;
						if($friend = FbOAuth_Friends($value))
						{
							$total_friend = sizeof($friend['data']);	
							$data['total_friend'] = $total_friend;
						}
						$id = DB::insert('facebook_accounts',$data);
						$this->getPages($id, $value);
						$this->getGroups($id, $value);	
					}
				}
				$i++;
			}
		}
		System::jdebug(array(
			"total"=>$total,
			"redirect"=>Url::build_current()
		));
		exit();	
	}
	function ajax_update_all()
	{
		$access_token = explode(PHP_EOL,Url::get('access_token'));	
		foreach($access_token as $key=>$value)
		{
			FacebookAccount::ajax_update($value);
		}
		exit();
	}
	function ajax_update($access_token)
	{
		if($access_token == ""){
			System::jdebug(array(
				"st"  => "error",
				"label" => "bg-red",
				"txt" => Portal::language('Please input all fields')
			));
			exit();
		}
		$FbOAuth_App = FbOAuth_Info_App($access_token);
		if(!empty($FbOAuth_App) && isset($FbOAuth_App['error'])){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language($FbOAuth_App['error']['message'])
			));
			exit();
		}
		$FbOAuth_User = FbOAuth_User($access_token);
		$fid = $FbOAuth_User['id'];
		$total_friend = 0;
		if($friend = FbOAuth_Friends($access_token))
		{
			$total_friend = sizeof($friend['data']);	
		}
		$data = array(
			"fid"           => $fid,
			"username"      => (isset($FbOAuth_User['email']))?$FbOAuth_User['email']:$fid,
			"fullname"      => $FbOAuth_User['name'],
			"token_name"    => $FbOAuth_App['name'],
			"access_token"  => $access_token,
			'birthday'      => $FbOAuth_User['birthday'],
			'password'      => Url::get('password'),
			'total_friend'  => $total_friend
		);				
		if(!User::is_admin())
		{
			$data["user_id"] = User::id();		
		}
		$id = Url::iget("id");
		$accounts = DB::fetch_all('select * from facebook_accounts where user_id="'.Session::get('user_id').'"');
		if($id == 0)
		{
			if(count($accounts) < Session::get('user_data','maximum_facebook_accounts'))
			{
				if(DB::fetch('select * from facebook_accounts where fid="'.$fid.'" and user_id="'.User::id().'"'))
				{
					System::jdebug(array(
						"st"    => "error",
						"label" => "bg-red",
						"txt"   => Portal::language('This facebook account already exists')
					));
					exit();
				}
				$id = DB::insert('facebook_accounts',$data);
				$this->getPages($id, $access_token);
				$this->getGroups($id, $access_token);
			}
			else
			{
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-orange",
					"txt"   => Portal::language('Oh sorry! You have exceeded the number of accounts allowed, You are only allowed to update your account')
				));
				exit();
			}
		}
		else
		{
			DB::update_id('facebook_accounts',$data,Url::iget('id'));
		}
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => Portal::language('Update successfully')
		));
		exit();
	}
	function getPages($id, $access_token)
	{
		$pages = FbOAuth_Pages($access_token);
		if(isset($pages["data"]) && !empty($pages["data"])) 
		{
			$count=0;
	        $insert_string = "INSERT INTO `facebook_groups` (`account_id`,`type`,`user_id`,`pid`,`name`,`privacy`,`category`,`status`) VALUES ";
			DB::delete('facebook_groups',"account_id = '".$id."' AND type = 'page'");
			$total_like = 0;
			foreach ($pages["data"] as $row) 
			{
				$data_like = get_total_like($access_token,$row['id']);
				$total_like+=$data_like['likes'];
				if(isset($row['name']))
				{
					$insert_string .= "('".$id."','page','".User::id()."','".$row['id']."','".DB::escape($row['name'])."','','".$row['category']."','1')";
	            	$insert_string .= ",";
            		$count++;
	            }
	        }
			DB::update_id('facebook_accounts',array('total_like'=>$total_like),$id);
	        if($count != 0)
			{
		       $insert_string=substr($insert_string,0,-1);
		       DB::query($insert_string);
	        }
		}
	}
	function getGroups($id, $access_token)
	{
		$groups = FbOAuth_Groups($access_token);
		if(isset($groups["data"]) && !empty($groups["data"])) 
		{
			$count=0;
   		    $insert_string = "INSERT INTO `facebook_groups` (`account_id`,`type`,`user_id`,`pid`,`name`,`privacy`,`category`,`status`) VALUES ";
			DB::delete('facebook_groups',"account_id = '".$id."' AND type = 'group'");
			foreach ($groups["data"] as $row) 
			{
				if(isset($row['name'])){
					$insert_string .= "('".$id."','group','".User::id()."','".$row['id']."','".DB::escape($row['name'])."','".$row['privacy']."','','1')";
	            	$insert_string .= ",";
            		$count++;
	            }
	        }
	        if($count != 0)
			{
		        $insert_string=substr($insert_string,0,-1);
				DB::query($insert_string);
	        }
		}
	}
	function getFriend($id,$access_token)
	{
		if($friend = FbOAuth_Friends($access_token))
		{
			$total_friend = sizeof($friend['data']);	
			DB::update_id('facebook_accounts',array('total_friend'=>$total_friend),$id);
		}
	}
}
?>