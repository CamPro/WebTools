<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class BuffComment extends Module
{
	function BuffComment($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		if(User::is_login())
		{
			switch(Url::get('cmd'))
			{
				case 'buff_comment':
					$this->buff_comment();
					exit();
				default:
					require_once 'forms/list.php';
					$this->add_form(new BuffCommentForm());
					break;
			}
		}
		else
		{
			Url::redirect('dasboard');	
		}
	}
	function buff_comment()
	{
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
		}
		if(Url::get('like_id') and Url::get('message') and ($account = DB::fetch_all('select * from facebook_accounts where '.$cond.' and status order by rand() limit 0,'.Url::get('limit'))))
		{
			foreach($account as $key=>$value)
			{
				BuffComment(Url::get('like_id'),Url::get('message'),$value['access_token']);
			}
			System::jdebug(array(
				'txt'=>'Buff thành công !',
				'status'=>1,
				'total'=>sizeof($account)
			));
			exit();
		}
		System::jdebug(array(
			'txt'=>'Đã có lỗi xảy ra',
			'status'=>0,
			'total'=>0
		));
		exit();
	}
}
?>