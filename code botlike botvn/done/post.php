<?php
session_start();


$access_token= $_SESSION['token'];
$token= $_POST['tokenpost'];
$soluong= $_POST['limit'];
$message = $_POST['noidung'];

if($_POST['mode']=='friend'){

//post friends
$me = json_decode(auto('https://graph.beta.facebook.com/me?access_token='.$_SESSION['token'].'&fields=id'),true);
$dg = json_decode(auto('https://graph.beta.facebook.com/me/friends?access_token='.$_SESSION['token'].'&method=GET&limit='.$soluong.''),true);
for($i=1;$i<=count($dg[data]);$i++){
if(!ereg($dg[data][$i-1][id])){
$x=$stat[data][$i-1][id]."\n";
auto('https://graph.beta.facebook.com/'.$dg[data][$i-1][id].'/feed?message='.urlencode($message).'&access_token='.$_SESSION['token'].'&method=post').'<hr/>';
   }
}

die('<script>$(function (){ toastr.success("Auto Post Friend Thành Công")});</script>');
}
if($_POST['mode']=='page'){

//post page
$me = json_decode(auto('https://graph.beta.facebook.com/me?access_token='.$_SESSION['token'].'&fields=id'),true);
$dg = json_decode(auto('https://graph.beta.facebook.com/me/likes?access_token='.$_SESSION['token'].'&method=GET&limit='.$soluong.''),true);
for($i=1;$i<=count($dg[data]);$i++){
if(!ereg($dg[data][$i-1][id])){
$x=$stat[data][$i-1][id]."\n";
auto('https://graph.beta.facebook.com/'.$dg[data][$i-1][id].'/feed?message='.urlencode($message).'&access_token='.$_SESSION['token'].'&method=post').'<hr/>';
   }
}
die('<script>$(function (){ toastr.success("Auto Post Pages Thành Công")});</script>');
}
if($_POST['mode']=='group'){

//post groups
$me = json_decode(auto('https://graph.beta.facebook.com/me?access_token='.$_SESSION['token'].'&fields=id'),true);
$dg = json_decode(auto('https://graph.beta.facebook.com/me/groups?access_token='.$_SESSION['token'].'&method=GET&limit='.$soluong.''),true);
for($i=1;$i<=count($dg[data]);$i++){
if(!ereg($dg[data][$i-1][id])){
$x=$stat[data][$i-1][id]."\n";
auto('https://graph.beta.facebook.com/'.$dg[data][$i-1][id].'/feed?message='.urlencode($message).'&access_token='.$_SESSION['token'].'&method=post').'<hr/>';
   }
}

die('<script>$(function (){ toastr.success("Auto Post Groups Thành Công")});</script>');
}
function auto($url){
   $ch=curl_init();
   curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
   curl_setopt($ch,CURLOPT_URL,$url);
 echo   $cx=curl_exec($ch);
  curl_close($ch);
  return($cx);
  }

?> 