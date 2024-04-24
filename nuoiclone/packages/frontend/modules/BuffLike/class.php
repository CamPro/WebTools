<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class BuffLike extends Module
{
	function BuffLike($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		if(User::is_login())
		{
			switch(Url::get('cmd'))
			{
				case 'buff_like':
					$this->buff_like();
					exit();
				default:
					require_once 'forms/list.php';
					$this->add_form(new BuffLikeForm());
					break;
			}
		}
		else
		{
			Url::redirect('dasboard');	
		}
	}
	function buff_like()
	{
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
		}
		if(Url::get('like_id') and ($account = DB::fetch_all('select * from facebook_accounts where '.$cond.' and status order by rand() limit 0,'.Url::iget('limit'))))
		{
			foreach($account as $key=>$value)
			{
				BuffLike(Url::iget('like_id'),$value['access_token']);
			}
			System::jdebug(array(
				'txt'=>'Buff Like thành công',
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