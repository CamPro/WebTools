<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class JoinGroup extends Module
{
	function JoinGroup($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'get_group':
				$this->get_group();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new JoinGroupForm());
				break;
		}
	}
	function get_group()
	{
		if(Url::get('facebook_id') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::get('facebook_id').' and status')))
		{
			$groups = FbOAuth_FindGroup($account['access_token'],Url::get('keyword'),Url::get('show_member'));
			System::jdebug($groups['data']);
		}
	}
}
?>