<?php 	
	date_default_timezone_set('Asia/Saigon');
	define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
	define( 'WEBSERVER','http://'.$_SERVER['SERVER_NAME'].'/');
	define('NOW',date("Y-m-d H:i:s"));
	require_once ROOT_PATH.'packages/core/includes/system/config.php';
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
		set_time_limit(0);
		$result = DB::fetch_all('select facebook_bot.id,facebook_bot.uid,facebook_bot.flimit,facebook_bot.message,facebook_bot.time_post_show,facebook_bot.type,facebook_accounts.access_token from facebook_bot inner join facebook_accounts on facebook_accounts.id = facebook_bot.account_id where facebook_bot.time_post_show>="'.NOW.'" and facebook_bot.status=1 and facebook_accounts.status=1');
		if(!empty($result))
		{
			foreach ($result as $key => $row) 
			{
				$token = $row['access_token'];
				$message = $row['message'];
				$limitnf = $row['flimit']; // số lần tương tác
				if($row['type']==3)
				{
					$puaru = json_decode(puaru('https://graph.facebook.com/'.$row['uid'].'/feed?fields=id,message,created_time,from,comments,type&access_token='.$token.'&offset=0&limit='.$limitnf.''),true);
				}
				else
				{
					$puaru = json_decode(puaru('https://graph.facebook.com/me/home?fields=id,message,created_time,from,comments,type&access_token='.$token.'&offset=0&limit='.$limitnf.''),true);
				}
				foreach($puaru[data] as $k=>$value)
				{
					if($row['type']==2)
					{
						puaru('https://graph.facebook.com/'.$value['id'].'/comments?message='.urlencode($message).'&method=post&access_token='.$token.'');						
					}
					else
					{
						puaru('https://graph.facebook.com/'.$value['id'].'/reactions?type='.$message.'&method=post&access_token='.$token.'');
					}
				}
			}
			echo 'Thực hiện thành công !';
		}
	}
	function puaru($url)
	{
		$data = curl_init();
		curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($data, CURLOPT_URL, $url);
		$hasil = curl_exec($data);
		curl_close($data);
		return $hasil;
	}
	//run conjob
	cronjob();
?>
