<?php
class UpgradeAccountForm extends Form
{
	function UpgradeAccountForm()
	{
		Form::Form('UpgradeAccountForm');
	}	
	function draw()
	{
		$this->map = DB::fetch('select * from account where id="'.User::id().'"');
		$this->parse_layout('upgrade',$this->map);
	}
}
?>