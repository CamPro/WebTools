<?php 
	date_default_timezone_set('Asia/Saigon');
	define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
	define( 'WEBSERVER','http://'.$_SERVER['SERVER_NAME'].'/');
	define('USE_DOUBLE_CLICK',1);
	define('FACEBOOK_ID','1915111885393939');
	define('FACEBOOK_SECRET','6c33c7cbacc5c67c7859ad4477838e49');
	define('DEBUG',true);	
	define('DURATION_EXPIRED_DATE',30);		
	define('NOW',date("Y-m-d H:i:s"));
	require_once ROOT_PATH.'packages/core/includes/system/config.php';
	require_once ROOT_PATH.'skins/news/libraries/facebook_helper.php';		
	if(!isset($_REQUEST['portal']))
	{
		$_REQUEST['portal'] = 'news';			
	}
	if(!isset($_REQUEST['page']))
	{
		$_REQUEST['page'] = 'home';
	}
	function cronjob()
	{
		ini_set('max_execution_time', 300000);
	 	$items = DB::fetch_all('select * from facebook_schedules_friend where status=1 and time_post_show<="'.NOW.'"');
		if(!empty($items))
		{
			foreach ($items as $key => $row) 
			{
				$account = DB::fetch('select * from facebook_accounts where id='.$row['account_id'].' and status=1');
				if(!empty($account))
				{
					$result = FbOAuth_SendFriendRequest($account['access_token'],$row['uid']);
					if(isset($result['error']['message']))
					{
						DB::update_id('facebook_schedules_friend',array('status'=>2,'message_error'=>$result['error']['message']),$key);
					}
					else
					{
						DB::update_id('facebook_schedules_friend',array('status'=>3),$key);								
					}
				}
				else
				{
					$arr_update = array(
						'status' => 2,
						'message_error' => Portal::language('Facebook account not active')
					);
					DB::update_id('facebook_schedules_friend',$arr_update,$key);
				}
			}
		}
		echo Portal::language('Successfully');
	}
	//run conjob
	cronjob();
?>

