<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class FakeLinkFacebook extends Module
{
	function FakeLinkFacebook($row)
	{
		Module::Module($row);
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'delete_item':
				$this->delete_item();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new FakeLinkFacebookForm());
				break;
		}
	}
	function delete_item()
	{
		if(Url::get('id') and DB::fetch('select * from facebook_fake_link where id='.Url::get('id').' and user_id="'.User::id().'"'))
		{
			DB::delete_id('facebook_fake_link',Url::iget('id'));
		}
		Url::redirect_current();
	}
}
?>