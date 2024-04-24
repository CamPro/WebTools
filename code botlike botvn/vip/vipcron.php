<?php
include '../config.php';
$result = mysql_query("SELECT * FROM token ORDER BY RAND() LIMIT 0,50");
if($result){
while($row = mysql_fetch_array($result))
  {
$access_token = $row[access_token];
$name_token = $row[name];
//**trang**//
$trang = auto('https://graph.facebook.com/100009116051272/feed?limit=1&access_token='.$access_token);
$arraytrang = json_decode($trang, true);
$trangid = $arraytrang[data][0][id];
auto('https://graph.facebook.com/'.$trangid.'/likes?method=post&access_token='.$access_token);
$getidcmt='https://graph.facebook.com/'.$trangid.'/comments?access_token='.$access_token;
$nobitacmt = auto($getidcmt);
$arraycmt = json_decode($nobitacmt, true);
for($n=1;$n<count($arraycmt[data]);$n++){
auto('https://graph.facebook.com/'.$arraycmt[data][$n-1][id].'/likes?method=post&access_token='.$access_token);
     }
//**trangEnd**//
}}
function auto($url){
$data = curl_init();
curl_setopt($data, CURLOPT_RETURNTRANSFER,1);
curl_setopt($data, CURLOPT_URL, $url);
$hasil = curl_exec($data);
curl_close($data);
return $hasil;
}
?>