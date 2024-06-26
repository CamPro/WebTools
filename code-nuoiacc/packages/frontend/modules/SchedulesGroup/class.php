<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class SchedulesGroup extends Module
{
	function SchedulesGroup($row)
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
				$this->add_form(new SchedulesGroupForm());
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
				DB::delete('facebook_schedules_group', 'id="'.$id.'"');
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
				$result = '<span class="label bg-light-blue">Chờ xử lý</span>';
				break;
			case 2:
				$result = '<span class="label bg-red">Xảy ra lỗi</span>';
				break;
			default:
				$result = '<span class="label bg-light-green">Thành công</span>';
				break;

		}

		return $result;
	}
}
?>