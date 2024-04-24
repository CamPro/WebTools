<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AutoCancelFriend extends Module
{
	function AutoCancelFriend($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'save_schedules':
				$this->save_schedules();
				exit();
			case 'get_friend':
				$this->get_friend();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AutoCancelFriendForm());
				break;
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['users']) and $_REQUEST['users'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$data = $_REQUEST['users'];
			$deplay = 20;
			$list_deplay = array();
			for ($i=0; $i < count($data); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($data as $key=>$value)
			{
				$values = explode('|',$value);
				if(!DB::fetch('select * from facebook_schedules_friend where account_id='.Url::get('facebook_id').' and uid='.$values[0]))
				{
					DB::insert('facebook_schedules_friend',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Cancel friend',
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
	function get_friend()
	{
		if(Url::get('facebook_id') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::get('facebook_id').' and status')))
		{
			$friends = FbOAuth_Friends($account['access_token']);
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