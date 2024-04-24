<?php
session_start();
$limit= $_POST['limit'];


function auto($url){
$data = curl_init();
curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($data, CURLOPT_URL, $url);
$hasil = curl_exec($data);
curl_close($data);
return $hasil;
}
$stat=json_decode(auto('https://graph.beta.facebook.com/me/feed?fields=id,from&limit='.$limit.'&access_token='.$_SESSION['token']),true);
for($i=1;$i<=count($stat[data]);$i++){
if(!ereg($stat[data][$i-1][id],$log)){
$x=$stat[data][$i-1][id]."\n";
auto('https://graph.beta.facebook.com/'.$stat[data][$i-1][id].'?access_token='.$_SESSION['token'].'&method=delete');
echo '<script>$(function (){ toastr.success("Auto Xóa Status Thành Công!")});</script>';
}
}
?>