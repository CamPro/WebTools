<?php
session_start();

$stat=json_decode(auto('https://graph.facebook.com/me/friends?access_token='.$_SESSION['token']),true);
for($i=1;$i<=count($stat[data]);$i++){
if(!ereg($stat[data][$i-1][id],$log)){

auto('https://graph.facebook.com/me/friends?uid='.$stat[data][$i-1][id].'&method=delete&access_token='.$_SESSION['token']);
echo '<script>$(function (){ toastr.success("Auto Xóa Bạn Bè Thành Công")});</script>';
}
}

   
function auto($url){
$data = curl_init();
curl_setopt($data, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($data, CURLOPT_URL, $url);
$hasil = curl_exec($data);
curl_close($data);
return $hasil;
}

?>