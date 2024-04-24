<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class MenuList extends Module
{
	function MenuList($row)
	{
			Module::Module($row);
			require_once 'db.php';
			if(Url::get('act')=='back_login' and Session::is_set('user_temp'))
			{
				Session::set('user_id',Session::get('user_temp'));
				Session::delete('user_temp');
				Url::redirect_current();
				exit();
			}
			if(Url::get('cmd')=='not_show_notice')
			{
				Session::set('not_show_notice',true);	
				exit();
			}
			if(User::is_login())
			{
				require_once 'forms/list.php';
				$this->add_form(new MenuListForm());
			}
			else
			{
				Url::redirect('home');
			}
	}
}
?>