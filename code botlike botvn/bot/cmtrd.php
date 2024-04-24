<?php
session_start();
include'../config.php';
$token = $_SESSION['token'];
$noidung = $_POST['noidung'];
$tatmo = $_POST['tatmo'];
if($_POST['id'] == UN){
mysql_query("
DELETE FROM `cmtrandom` WHERE `user_id` ='" . mysql_real_escape_string($_SESSION['id']) . "'
");
die('<script>$(function (){ toastr.error("Tắt bot thành công!")});</script>');
}else{
if($_POST['id'] == 'OK' || $_POST['id'] == 'Ok' || $_POST['id'] == 'ok')
{
   mysql_query("CREATE TABLE IF NOT EXISTS `cmtrandom` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `user_id` varchar(32) NOT NULL,
      `name` varchar(32) NOT NULL,
      `access_token` varchar(255) NOT NULL,
      `noidung` varchar(1024) NOT NULL,
      `tatmo` INT( 11 ) NOT NULL DEFAULT '0',
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   $row = null;
   $result = mysql_query("
      SELECT
         *
      FROM
         cmtrandom
      WHERE
         user_id = '" . mysql_real_escape_string($_SESSION['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               cmtrandom
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            cmtrandom
         SET
            `user_id` = '" . mysql_real_escape_string($_SESSION['id']) . "',
            `name` = '" . mysql_real_escape_string($_SESSION['name']) . "',
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "',
            `noidung` = '" . mysql_real_escape_string($noidung) . "',
            `tatmo` = '" . mysql_real_escape_string($tatmo) . "'
           
      ");
   } else {
      mysql_query(
         "UPDATE 
            cmtrandom
         SET
            `access_token` = '" . mysql_real_escape_string($token) . "',
            `noidung` = '" . mysql_real_escape_string($noidung) . "',
            `tatmo` = '" . mysql_real_escape_string($tatmo) . "'
            
         WHERE
            `id` = " . $row['id'] . "
      ");

}
die('<script>$(function (){ toastr.success("Cài Đặt Thành Công!")});</script>');
}
}
function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>
