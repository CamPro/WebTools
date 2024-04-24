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
	$laytoken = mysql_query("SELECT * FROM `token` ORDER BY RAND() LIMIT 0,$limit");

	while ($getpu = mysql_fetch_array($laytoken)){
		$tokenlike= $getpu['access_token'];		
	auto('https://graph.facebook.com/'.$idstt2.'/likes?access_token='.$tokenlike.'&method=post');}
	die('<div class="alert alert-success" style="padding: 12px; border-radius: 1px!important;">Tăng '.$limit.' Like Thành Công Vào ID: '.$idstt2.'</div>');
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