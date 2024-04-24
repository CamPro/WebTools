<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY TCV PORTAL
******************************/
if(User::is_login())
{
	if (Session::is_set('user_id'))
	{
		DB::update('account',array('last_online_time'=>0),'id="'.Session::get('user_id').'"');
		Session::delete('user_id');
		Session::delete('user_data');
		Session::delete('items');;
	}
	URL::redirect('home');
}
else
{
	URL::redirect('home');
}
?>
