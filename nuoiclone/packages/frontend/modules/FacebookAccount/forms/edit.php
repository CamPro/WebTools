<?php
class EditFacebookAccountForm extends Form
{
	function EditFacebookAccountForm()
	{
		Form::Form('FacebookAccountForm');	
		$this->link_js('skins/news/js/autosize.js');			
	}	
	function draw()
	{
		if((Url::get('cmd')=='edit') and Url::get('id') and ($fb_acc = DB::fetch('select * from facebook_accounts where id='.Url::iget('id'))))
		{
			$_REQUEST['access_token'] = $fb_acc['access_token'];
			$_REQUEST['email'] = $fb_acc['username'];
			$_REQUEST['password'] = $fb_acc['password'];			
		}
		$this->parse_layout('edit',array(
			'app_id_list'=>array('6628568379'=>'Facebook For Iphone','350685531728'=>'Facebook For Android','165907476854626'=>'PAGES MANAGER FOR IOS'),
		));
	}
}
?>