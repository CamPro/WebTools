<?php
class ProfileForm extends Form
{
	function ProfileForm()
	{
		Form::Form('ProfileForm');
	}	
	function draw()
	{
		$data = DB::fetch('select * from account where id="'.User::id().'"');
		unset($data['password']);
		foreach($data as $key=>$value)
		{
			$_REQUEST[$key] = $value;
		}
		$this->map['timezone'] = Date_Time::timezone();	
		$this->parse_layout('list',$this->map);
	}
}
?>