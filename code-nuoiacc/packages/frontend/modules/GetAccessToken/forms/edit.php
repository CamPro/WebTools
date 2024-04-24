<?php
class EditGetAccessTokenForm extends Form
{
	function EditGetAccessTokenForm()
	{
		Form::Form('GetAccessTokenForm');	
	}	
	function draw()
	{
		$this->parse_layout('edit',array(
			'app_id_list'=>array('6628568379'=>'Facebook For Iphone','350685531728'=>'Facebook For Android','165907476854626'=>'PAGES MANAGER FOR IOS'),
		));
	}
}
?>