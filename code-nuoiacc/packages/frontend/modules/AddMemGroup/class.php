<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AddMemGroup extends Module
{
	function AddMemGroup($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		$this->save_shedules();
		switch(Url::get('cmd'))
		{
			case 'get_group':
				$this->get_group();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AddMemGroupForm());
				break;
		}
	}
	function save_shedules()
	{
		if(isset($_REQUEST['users']) and isset($_REQUEST['group_id']) and isset($_REQUEST['facebook_id']) and Url::get('users') and Url::get('distance') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$data = $_REQUEST['users'];
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
			$groups = explode('|',$_REQUEST['group_id']);
			foreach($data as $key=>$value)
			{
				$values = explode('|',$value);
				if(!DB::fetch('select * from facebook_schedules_group where uid='.$values[0].' and groupid='.$groups[0]))
				{
					DB::insert('facebook_schedules_group',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Add Mem Group',
						'created'=>date("Y-m-d H:i:s"),
						'uid'=>$values[0],
						'status'=>1,
						'groupid'=>$groups[0],
						'group_name'=>$groups[1],
						'uid_name'=>$values[1],
						'time_post_show'=>date("Y-m-d H:i:s",$time + $list_deplay[$key])
					));
				}
			}
			Url::redirect_current();
		}	
	}
	function get_group()
	{
		if(Url::get('facebook_id') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::get('facebook_id').' and status')))
		{
			$data = array();
			// lay nhom quan ly
			$groups = FbOAuth_GroupAdmin($account['access_token']);
			if(isset($groups['error']))
			{
				System::jdebug(array(
					"error"    => $groups['error']['message'],
				));
				exit();
			}
			if(sizeof($groups)==0){
				System::jdebug(array(
					"error"    => "Tài khoản không quản lý nhóm nào",
				));
				exit();
			}
			$data['groups'] = $groups;
			// lay ban be
			$friends = FbOAuth_Friends($account['access_token']);
			if(!empty($friends) && isset($friends['error'])){
				System::jdebug(array(
					"error"   => $friends['error']['message']
				));
				exit();
			}
			$data['friends'] = $friends['data'];
			System::jdebug($data);
		}
	}
}
?>