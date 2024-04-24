<?php
class EditUserManagementForm extends Form
{
	function EditUserManagementForm()
	{
		Form::Form('EditUserManagementForm');
	}	
	function draw()
	{
		$this->map = array();
		if(Url::get('cmd')=='edit' and Url::get('id') and ($user = DB::fetch('select * from account where id="'.Url::sget('id').'"')))
		{
			foreach($user as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
		}
		else
		{
			$_REQUEST['timezone'] = 'Asia/Ho_Chi_Minh';
		}
		$this->map['timezone'] = Date_Time::timezone();
		$this->parse_layout('edit',$this->map);
	}
}
?>