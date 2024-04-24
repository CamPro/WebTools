<?php
session_start();
if($_POST['id_wall'] && $_SESSION['id'])
{

$stat=json_decode(auto('https://graph.facebook.com/me/home?fields=id,message,from,comments,type&access_token='.$_SESSION['token'].'&offset=0&limit='.$_POST['limit'].''),true); 

for($i=1;$i<=count($stat[data]);$i++){
$_SESSION['noidung']=$_POST['noidung'];
$message= $_POST['noidung'];
auto('https://graph.facebook.com/'.$_POST['id_wall'].'/feed?message='.urlencode($message).'&access_token='.$_SESSION['token'].'&method=post').'ass';
}
echo 'Boom '.$_POST['limit'].' Bài thành công <br> chuẩn bị ăn đấm nhá :D';
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