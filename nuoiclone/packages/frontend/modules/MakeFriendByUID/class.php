<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class MakeFriendByUID extends Module
{
	function MakeFriendByUID($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'save_schedules':
				$this->save_schedules();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new MakeFriendByUIDForm());
				break;
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['list_uid']) and $_REQUEST['list_uid'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$deplay = (int)Url::get('distance',60);
			$list_deplay = array();
			$uid = explode(',',trim(Url::get('list_uid')));
			for ($i=0; $i < count($uid); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($uid as $key=>$value)
			{
				if(($account['fid']!=$value) and (!DB::fetch('select * from facebook_schedules_friend where account_id='.Url::get('facebook_id').' and uid='.$value)))
				{
					DB::insert('facebook_schedules_friend',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Add friend',
						'created'=>date("Y-m-d H:i:s"),
						'uid'=>$value,
						'status'=>1,
						'uid_name'=>$value,
						'time_post_show'=>date("Y-m-d H:i:s", time() + $list_deplay[$key])
					));
				}
			}
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => "Gửi yêu cầu kết bạn thành công!"
			));
		}	
	}
}
?>