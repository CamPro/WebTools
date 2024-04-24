<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class HelpAdmin extends Module
{
	function HelpAdmin($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_admin())
		{
			switch(Url::get('cmd'))
			{
				case 'ajax_action_item':
					$this->ajax_action_item(Url::get('id'),Url::get('action'));
					exit();
				case 'add':
				case 'edit':			
					require_once 'forms/edit.php';
					$this->add_form(new EditHelpAdminForm());
					break;
				default:
					require_once 'forms/list.php';
					$this->add_form(new HelpAdminForm());
					break;
			}
		}
		else
		{
			Url::redirect('dashboard');	
		}
	}
	function ajax_action_item($id,$action,$message = true)
	{
		switch ($action) 
		{
			case 'delete':
				DB::delete('facebook_help', 'id="'.$id.'"');
				break;
		}
		if($message)
		{
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => 'Xóa dữ liệu thành công!'
			));
		}
	}
}
?>