<?php 
date_default_timezone_set('Asia/Saigon');
define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
define( 'WEBSERVER','http://ungdungdangtin.net/');
define('USE_DOUBLE_CLICK',1);
require_once ROOT_PATH.'packages/core/includes/system/config.php';
function is_bot()
{
   $botlist = array(
	   "Teoma", "alexa", "froogle", "Gigabot", "inktomi",
		"looksmart", "URL_Spider_SQL", "Firefly", "NationalDirectory",
		"Ask Jeeves", "TECNOSEEK", "InfoSeek", "WebFindBot", "girafabot",
		"crawler", "www.galaxy.com", "Googlebot", "Scooter", "Slurp",
		"msnbot", "appie", "FAST", "WebBug", "Spade", "ZyBorg", "rabaz",
		"Baiduspider", "Feedfetcher-Google", "TechnoratiSnoop", "Rankivabot",
		"Mediapartners-Google", "Sogou web spider", "WebAlta 
		 Crawler","TweetmemeBot", "Butterfly", "Twitturls", "Me.dium", 
		 "Twiceler", "Purebot", "facebookexternalhit",
		"Yandex", "CatchBot", "W3C_Validator", "Jigsaw","PostRank", 
		"Purebot", "Twitterbot",
		"Voyager", "zelist", "pingdom", "favicon"
	);
   foreach($botlist as $bot)
   {
		if(strpos($_SERVER['HTTP_USER_AGENT'],$bot)!==false)
		{
			return true;    // Is a bot
		}
	}
	return false; 
}
if(Url::get('code') and ($item = DB::fetch('select * from facebook_fake_link where code="'.Url::sget('code').'"')))
{
	$is_bot = is_bot();
	?>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
	<?php
	if ($is_bot)
	{
		echo '<meta property="og:url" content="'.$item['fake_link'].'" />';
		//DB::update_hit_count('facebook_fake_link',$item['id'],'bot_view');		
	}
	else
	{
		DB::update_hit_count('facebook_fake_link',$item['id']);
		$is_mobile = Mobile::mobile_device_detect();
		if($is_mobile)
		{
			echo '<meta http-equiv="refresh" content="0; url='.$item['mobile_link_redirect'].'" />';
		}
		else
		{
			echo '<meta http-equiv="refresh" content="0; url='.$item['link_redirect'].'" />';
		}
	}
	?>
	</head>
	<body>
	</body>
	</html>
<?php }?>        