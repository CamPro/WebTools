<?php 
	date_default_timezone_set('Asia/Saigon');
	define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
	define( 'WEBSERVER','http://'.$_SERVER['SERVER_NAME'].'/');
	define('USE_DOUBLE_CLICK',1);
	define('FACEBOOK_ID','107098986404749');
	define('FACEBOOK_SECRET','944182ee696426cf7df69898769a0c27');
	define('DEBUG',true);	
	define('DURATION_EXPIRED_DATE',3);		

	require_once ROOT_PATH.'packages/core/includes/system/config.php';
	if(!isset($_REQUEST['portal']))
	{
		$_REQUEST['portal'] = 'news';			
	}
	if(!isset($_REQUEST['page']))
	{
		if(User::is_login())
		{
			$_REQUEST['page'] = 'dashboard';
		}
		else
		{
			$_REQUEST['page'] = 'home';
		}
	}
	Portal::run();
?>


