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
		$spintax = new Spintax();
		ini_set('max_execution_time', 300000);
	 	$result = DB::fetch_all('select * from facebook_schedules where status!=2 and status!=3 and status!=4 and time_post<="'.NOW.'"');
		if(!empty($result))
		{
			foreach ($result as $key => $row) 
			{
				$delete       = $row['delete_post'];
				$repeat       = $row['repeat_post'];
				$repeat_time  = $row['repeat_time'];
				$repeat_end   = $row['repeat_end'];
				$time_post    = $row['time_post'];
				$deplay       = $row['deplay'];

				$time_post          = strtotime(NOW) + $repeat_time;
				$time_post_only_day = date("Y-m-d", $time_post);
				$time_post_day      = strtotime($time_post_only_day);
				$repeat_end         = strtotime($repeat_end);

				$row['url']         = $spintax->process($row['url']);
				$row['message']     = $spintax->process($row['message']);
				$row['title']       = $spintax->process($row['title']);
				$row['description'] = $spintax->process($row['description']);
				$row['image']       = $spintax->process($row['image']);
				$row['caption']     = $spintax->process($row['caption']);
				$row['uid'] = $row['user_id'];
				unset($row['user_id']);				
				$account = DB::fetch('select * from facebook_accounts where id='.$row['account_id'].' and status=1');
				if(!empty($account))
				{
					$row['access_token'] = $account['access_token'];
					$row['username'] = $account['username'];
					$row['fid'] = $account['fid'];
					//System::debug($row);exit();
					DB::update_id('facebook_schedules',array('status'=>3),$row['id']);
					$response = (object)Fb_Post((object)$row);
					$arr_update = array(
						'status' => ($response->st == "success")?3:4,
						'result' => (isset($response->id) && $response->id != "")?$response->id:"", 
						'message_error' => (isset($response->txt) && $response->txt != "")?$response->txt:""
					);
					if($repeat == 1 && $time_post_day <= $repeat_end)
					{
						$arr_update['status']    = 5;
						$arr_update['time_post'] = date("Y-m-d H:i:s", $time_post);

						$user = DB::fetch('select * from account where id="'.$row['uid'].'"');
						if(!empty($user))
						{
							$system_timezone = DB::fetch('select value from account_setting where id=4','value');
							$date = new DateTime(date("Y-m-d H:i:s", $time_post), new DateTimeZone($system_timezone));
							$date->setTimezone(new DateTimeZone($user['timezone']));
							$time_post_show = $date->format('Y-m-d H:i:s');
							$arr_update['time_post_show'] = $time_post_show;
						}
						else
						{
							$arr_update['time_post_show'] = date("Y-m-d H:i:s", $time_post);
						}
					}
					DB::update_id('facebook_schedules',$arr_update,$row['id']);
				}
				else
				{
					$arr_update = array(
						'status' => 4,
						'message_error' => Portal::language('Facebook account not exist')
					);
					DB::update_id('facebook_schedules',$arr_update,$row['id']);
				}
				//sleep($deplay);
			}
		}
		echo Portal::language('Successfully');
	}
	//run conjob
	cronjob();
?>

