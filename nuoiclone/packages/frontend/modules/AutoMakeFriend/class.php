<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AutoMakeFriend extends Module
{
	function AutoMakeFriend($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'save_schedules':
				$this->save_schedules();
				exit();
			case 'get_friend_by_id':
				$this->get_friend(Url::get('link'));
				exit();
			case 'get_friend':
				$this->get_friend();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AutoMakeFriendForm());
				break;
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['users']) and $_REQUEST['users'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$deplay = (int)Url::get('distance',60);
			$list_deplay = array();
			for ($i=0; $i < count($_REQUEST['users']); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($_REQUEST['users'] as $key=>$value)
			{
				$values = explode('|',$value);
				if(($account['fid']!=$values[0]) and (!DB::fetch('select * from facebook_schedules_friend where account_id='.Url::get('facebook_id').' and uid='.$values[0])))
				{
					DB::insert('facebook_schedules_friend',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Add friend',
						'created'=>date("Y-m-d H:i:s"),
						'uid'=>$values[0],
						'status'=>1,
						'uid_name'=>$values[1],
						'time_post_show'=>date("Y-m-d H:i:s", time() + $list_deplay[$key])
					));
				}
			}
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => Portal::language('Save successfully')
			));
		}	
	}
	function get_friend($uid='me')
	{
		if(Url::get('facebook_id') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::get('facebook_id').' and status')))
		{
			switch(Url::get('type'))
			{
				case 'user':
					$friends = FbOAuth_FriendOfUser($account['access_token'],$uid);	
					break;
				case 'group':	
					if($uid=='me')
					{
						$friends = FbOAuth_Groups($account['access_token'],$uid);
					}
					else
					{
						$friends = FbOAuth_MemberGroups($account['access_token'],$uid);				
					}
					break;
				case 'follower':
					$friends = FbOAuth_FollowerOfUser($account['access_token'],$uid);
					break;
				case 'post':
					$friends = FbOAuth_PostOfUser($account['access_token'],$uid);
					break;
			}
			if(!empty($friends) && isset($friends['error'])){
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => Portal::language($friends['error']['message'])
				));
				exit();
			}
			System::jdebug($friends);exit();
		}
	}
}
?>