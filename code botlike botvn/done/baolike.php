<?php
session_start();

if($_POST['id_wall'] && $_SESSION['id'])
{

$stat=json_decode(auto('https://graph.facebook.com/'.$_POST['id_wall'].'/feed?access_token='.$_SESSION['token'].'&limit='.$_POST['limit'].''),true);
for($i=1;$i<=count($stat['data']);$i++)
{
set_time_limit(0);
auto('https://graph.facebook.com/'.$stat['data'][$i-1][id].'/likes?access_token='.$_SESSION[token].'&method=post');
}

 echo 'Bão '.$_POST['limit'].' Like Thành Công! ';

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