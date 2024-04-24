<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class JoinGroupByUID extends Module
{
	function JoinGroupByUID($row)
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
				$this->add_form(new JoinGroupByUIDForm());
				break;
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['list_uid']) and $_REQUEST['list_uid'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$data = explode(',',trim($_REQUEST['list_uid']));
			$deplay = Url::get('distance');
			$list_deplay = array();
			$time = time();
			if(isset($_REQUEST['time_continue']) and $_REQUEST['time_continue'] and ($schedule = DB::fetch('select id,time_post_show from facebook_schedules_group where account_id='.Url::get('facebook_id').' and status=1 order by time_post_show desc')))
			{
				$time = strtotime($schedule['time_post_show']);
			}
			for ($i=0; $i < count($data); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($data as $key=>$value)
			{
				if(!DB::fetch('select * from facebook_schedules_group where uid='.$account['fid'].' and groupid='.$value))
				{
					DB::insert('facebook_schedules_group',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Join Group By UID',
						'created'=>date("Y-m-d H:i:s"),
						'uid'=>$account['fid'],
						'uid_name'=>$account['fullname'],
						'groupid'=>$value,
						'group_name'=>$value,
						'status'=>1,
						'time_post_show'=>date("Y-m-d H:i:s",$time + $list_deplay[$key])
					));
				}
			}
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => "Gửi yêu cầu tham gia nhóm thành công!"
			));
		}		
	}
}
?>