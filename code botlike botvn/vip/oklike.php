<?php
session_start();
include'config.php';
if($_POST['id_like'] && $_SESSION['id']){
$limit=$_POST['limit'];
if ($limit > 300){
   die('<div class="alert alert-danger" style="padding: 12px; border-radius: 1px!important;">F12?</div>');
break;
}
$idstt2=$_POST['id_like'];
$iduser=$_SESSION['id'];
$spam2 = mysql_result(mysql_query("SELECT COUNT(*) FROM `timelikevip1` WHERE `iduser`='".$iduser."'"), 0);
if($spam2 == 0){
mysql_query("CREATE TABLE IF NOT EXISTS `timelikevip1` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `iduser` varchar(32) NOT NULL,
      `time` varchar(32) NOT NULL,
      `idlike` varchar(255) NOT NULL,
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   mysql_query(
         "INSERT INTO 
            timelikevip1
         SET
            `iduser` = '" . mysql_real_escape_string($iduser) . "',
            `time` = '" . time() . "',
            `idlike` = '" . mysql_real_escape_string($idstt2) . "'
      ");
	$laytoken = mysql_query("SELECT * FROM `token` ORDER BY RAND() LIMIT 0,$limit");

	while ($getpu = mysql_fetch_array($laytoken)){
		$tokenlike= $getpu['access_token'];		
	auto('https://graph.facebook.com/'.$idstt2.'/likes?access_token='.$tokenlike.'&method=post');}
	die('<script>alert("Auto Like Thành Công!"); window.location.href = "/index.php"</script>');
 } else {	die('<div class="alert alert-danger" style="padding: 12px; border-radius: 1px!important;">Không Thành Công! Mỗi Lần Sử Dụng Cách Nhau 5p!</div>'); }
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