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

$stat=json_decode(auto('https://graph.facebook.com/me/likes?access_token='.$_SESSION['token'].'&limit='.$limit.''),true);
for($i=1;$i<=count($stat[data]);$i++){
if(!ereg($stat[data][$i-1][id],$log)){
$x=$stat[data][$i-1][id]."\n";
auto('https://graph.beta.facebook.com/'.$stat[data][$i-1][id].'/likes?method=delete&access_token='.$_SESSION['token'].'');
echo ''.$stat[data][$i-1][id].' -> Success <br>';
}
}
?>