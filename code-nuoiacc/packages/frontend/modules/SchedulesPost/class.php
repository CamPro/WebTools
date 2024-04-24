<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class SchedulesPost extends Module
{
	function SchedulesPost($row)
	{
		Module::Module($row);
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'ajax_analytics_post':
				$this->ajax_analytics_post();
				exit();
			case 'ajax_action_multiple':
				$this->ajax_action_multiple();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new SchedulesPostForm());
				break;
		}
	}
	function ajax_analytics_post()
	{
		
	}
	function ajax_action_multiple()
	{
		$ids = $_REQUEST['id'];
		if(!empty($ids))
		{
			foreach ($ids as $id) 
			{
				DB::delete('facebook_schedules', 'id="'.$id.'"');
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
				$result = '<span class="label bg-light-orange">'.Portal::language('Queue').'</span>';
				break;

			case 4:
				$result = '<span class="label bg-red">'.Portal::language('Failure').'</span>';
				break;

			case 5:
				$result = '<span class="label bg-purple">'.Portal::language('Repeat').'</span>';
				break;

			default:
				$result = '<span class="label bg-light-green">'.Portal::language('Complete').'</span>';
				break;

		}

		return $result;
	}
}
?>