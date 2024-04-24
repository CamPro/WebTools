<?php 
/*

require 'facebook/facebook.php';
$fbPermissions = 'public_profile,user_location,email';
$facebook = new Facebook(array(
  'appId'  => '489828141148034',
  'secret' => '551cfb6876463e75ec41516c6530e17f',
  'fileUpload' => true,
  'cookie' => true
));
$user = $facebook->getUser(); 
if($user)
{
	try
	{
		$user_profile = $facebook->api('/me');
		if(!empty($user_profile))
		{
			$user_id = $user_profile['id'];
			if($row = SignInDB::get_user_fb($user_id))
			{
				Session::set('user_id',$row['id']);
				Session::set('user_data',$row);
			}
			else
			{
				$account=array(
					'id'=>$user_id,
					'last_time_online'=>time(),
					'password'=>User::encode_password($user_id),
					'create_date'=>Date_Time::to_sql_date(date('d/m/Y',time())),
					'type'=>'USER',
					'is_active'=>1
				);
				$party = array(
					'user_id'=>$user_id,
					'email'=>$user_profile['email'],
					'full_name'=>$user_profile['name'],
					'image_url'=>'https://graph.facebook.com/'.$user_id.'/picture?type=large',
					'small_thumb_url'=>'https://graph.facebook.com/'.$user_id.'/picture?type=large',
					'type'=>'USER',
					'address'=>$user_profile['location']['name'],
					'gender'=>($user_profile['gender']=='male'?'1':'0'),
					'time'=>time(),
					'is_face'=>1
				);
				$party_id = DB::insert('party',$party);
				DB::insert('account',$account);
				Session::set('user_id',$party['user_id']);
				Session::set('user_data',$party);
			}
			if(Url::get('href'))
			{
				echo '<script>location="'.Url::get('href').'";</script>';
			}
			else
			{
				echo '<script>location="'.Url::redirect('ca-nhan',array(),REWRITE).'";</script>';
			}
		}
	}
	catch(FacebookApiException $e)
	{
		 $user = null;
	}
}
else
{
	$loginUrl = $facebook->getLoginUrl(array('scope' => $fbPermissions));	
} 

//Login Google
########## Google Settings.. Client ID, Client Secret from https://cloud.google.com/console #############

$google_client_id 		= '648999487884-hg3pj2imkji20ba6jg6pastpogtsr6n3.apps.googleusercontent.com';
$google_client_secret 	= 'pnD9HzC0Mpg9AOJcuYu_I0Bg';
$google_redirect_url 	= 'http://kamaka.vn/dang-nhap.html'; //path to your script
//include google api files
require_once 'google1/src/Google_Client.php';
require_once 'google1/src/contrib/Google_Oauth2Service.php';

$gClient = new Google_Client();
$gClient->setApplicationName('Login to Kamaka.vn');
$gClient->setClientId($google_client_id);
$gClient->setClientSecret($google_client_secret);
$gClient->setRedirectUri($google_redirect_url);

$google_oauthV2 = new Google_Oauth2Service($gClient);

if (isset($_REQUEST['reset'])) 
{
  unset($_SESSION['token']);
  $gClient->revokeToken();
}
if (isset($_GET['code'])) 
{ 
	$gClient->authenticate($_GET['code']);
	$_SESSION['token'] = $gClient->getAccessToken();
}

if (isset($_SESSION['token'])) 
{ 
	$gClient->setAccessToken($_SESSION['token']);
}
if ($gClient->getAccessToken()) 
{
	  $g_user 				= $google_oauthV2->userinfo->get();
	  $g_user_id 			= $g_user['id'];
	  $g_user_name 			= filter_var($g_user['name'], FILTER_SANITIZE_SPECIAL_CHARS);
	  $g_email 				= filter_var($g_user['email'], FILTER_SANITIZE_EMAIL);
	  $g_profile_url 		= filter_var($g_user['link'], FILTER_VALIDATE_URL);
	  $g_profile_image_url 	= filter_var($g_user['picture'], FILTER_VALIDATE_URL);
	  $g_personMarkup 		= "$email<div><img src='$profile_image_url?sz=50'></div>";
	  $_SESSION['token'] 	= $gClient->getAccessToken();
}
else 
{
	$authUrl = $gClient->createAuthUrl();
}
if(!isset($authUrl))
{
	if($g_row = SignInDB::get_user_fb($g_user_id))
	{
		Session::set('user_id',$g_row['id']);
		Session::set('user_data',$g_row);
		@$mobile=Mobile::mobile_device_detect();
		if($mobile)
		{
			echo '<script>location="'.Url::redirect('m-trang-chu',array(),REWRITE).'";</script>';
		}
		if(Url::get('href'))
		{
			echo '<script>location="'.Url::get('href').'";</script>';
		}
		else
		{
			echo '<script>location="'.Url::redirect('ca-nhan',array(),REWRITE).'";</script>';
		}
	}
	else
	{
		$g_account=array(
			'id'=>$g_user_id,
			'last_time_online'=>time(),
			'password'=>User::encode_password($g_user_id),
			'create_date'=>Date_Time::to_sql_date(date('d/m/Y',time())),
			'type'=>'USER',
			'is_active'=>1
		);
		$g_party = array(
			'user_id'=>$g_user_id,
			'email'=>$g_email,
			'full_name'=>$g_user_name,
			'image_url'=>$g_profile_image_url,
			'small_thumb_url'=>$g_profile_image_url,
			'type'=>'USER',
			'address'=>$user_profile['location']['name'],
			'gender'=>($user_profile['gender']=='male'?'1':'0'),
			'time'=>time(),
			'is_face'=>1
		);
		$g_party_id = DB::insert('party',$g_party);
		DB::insert('account',$g_account);
		Session::set('user_id',$g_party['user_id']);
		Session::set('user_data',$g_party);
		@$mobile=Mobile::mobile_device_detect();
		if($mobile)
		{
			echo '<script>location="'.Url::redirect('m-trang-chu',array(),REWRITE).'";</script>';
		}
		if(Url::get('href'))
		{
			echo '<script>location="'.Url::get('href').'";</script>';
		}
		else
		{
			echo '<script>location="'.Url::redirect('ca-nhan',array(),REWRITE).'";</script>';
		}
	}
} 
*/
?>
<div class="sign-in-bound">
	<div class="content">
    <a class="bg login" href="<?php echo Portal::get_setting('background_login_link');?>" target="_blank"><img src="<?php echo Portal::get_setting('background_login');?>"></a>
    <div class="sign-in-right">
        <div class="sign-in-form">
        	<?php if(Form::$current->is_error()){echo '<div style="padding:10px;padding-left:0px;margin-left:-2px;">'.Form::$current->error_messages().'</div>';}?>
            <form name="SignInForm" method="post">
            <p><strong><label for="user_id">[[.account_id.]] :</label></strong></p>
            <p><input name="user_id" type="text" id="user_id" class="input" required="required"></p>
            <p><strong><label for="password">[[.Password.]] :</label></strong></p>
            <p><input name="password" type="password" id="password" class="input" required="required"></p>
            <p><input name="forgot_user" type="checkbox" value="1" id="forgot_user"><label for="forgot_user" style="color: #aaa;">[[.forgot_user.]]</label></p>
            <input class="submit-button" type="submit" value="Đăng nhập">
            <p style="margin-top:-15px;margin-bottom:10px;"><a target="_top" href="<?php echo $loginUrl;?>"><img src="skins/news/images/loginfacebook.png" /></a></p>
            <p style="margin-top:-5px;margin-bottom:10px;"><a target="_top" href="<?php echo $authUrl;?>"><img src="skins/news/images/logingoogle.png" /></a></p>
            </form>    
            <div class="signup-forgot">
            	<a href="/quen-mat-khau.html">[[.forgot_password.]]</a>
                <a style="float:right;" href="/dang-ky.html">[[.free_reg.]]</a>
            </div>
        </div>
    </div>
    </div>
</div>
<div class="clear"></div>