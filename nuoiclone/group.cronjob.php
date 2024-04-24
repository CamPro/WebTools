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
	 	$items = DB::fetch_all('select * from facebook_schedules_group where status=1 and time_post_show<="'.NOW.'"');
		if(!empty($items))
		{
			foreach ($items as $key => $row) 
			{
				$account = DB::fetch('select * from facebook_accounts where id='.$row['account_id'].' and status=1');
				if(!empty($account))
				{
					if($row['type']=='Up Top Group')
					{
						$result = @json_decode(file_get_contents('https://graph.facebook.com/'.trim($row['groupid']).'/comments/?access_token='.$account['access_token'].'&message='.urlencode($row['message']).'&method=post'),true);
					}
					else
					{
						$result = FbOAuth_AddMemGroup($account['access_token'],$row['uid'],$row['groupid']);
					}
					if(isset($result['error']['message']))
					{
						DB::update_id('facebook_schedules_group',array('status'=>2,'message_error'=>$result['error']['message']),$key);
					}
					else
					{
						DB::update_id('facebook_schedules_group',array('status'=>3),$key);								
					}
				}
				else
				{
					$arr_update = array(
						'status' => 2,
						'message_error' => Portal::language('Facebook account not active')
					);
					DB::update_id('facebook_schedules_group',$arr_update,$key);
				}
			}
		}
		echo Portal::language('Successfully');
	}
	//run conjob
	cronjob();
?>

