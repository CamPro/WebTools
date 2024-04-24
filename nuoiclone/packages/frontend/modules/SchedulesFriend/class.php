<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class SchedulesFriend extends Module
{
	function SchedulesFriend($row)
	{
		Module::Module($row);
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'ajax_action_multiple':
				$this->ajax_action_multiple();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new SchedulesFriendForm());
				break;
		}
	}
	function ajax_action_multiple()
	{
		$ids = $_REQUEST['id'];
		if(!empty($ids))
		{
			foreach ($ids as $id) 
			{
				DB::delete('facebook_schedules_friend', 'id="'.$id.'"');
			}
		}
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => Portal::language('Update successfully')
		));
		exit();
	}
	function status_post($type){
		switch ($type) {
			case 1:
				$result = '<span class="label bg-light-blue">'.Portal::language('Processing').'</span>';
				break;
			case 2:
				$result = '<span class="label bg-red">'.Portal::language('Failure').'</span>';
				break;
			default:
				$result = '<span class="label bg-light-green">'.Portal::language('Complete').'</span>';
				break;

		}

		return $result;
	}
}
?>