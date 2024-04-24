<?php
if (isset($_POST['email']) && isset($_POST['password'])){
$email = $_POST['email'];
$pass = $_POST['password'];
$app_id = $_POST["app_id"];
$kieu = $_POST['kieu'];
if($app_id == iphone)
{
$token = json_decode(file_get_contents('http://botvn.me/loginfb2.php?u='.$email.'&p='.$pass.''),true); 
if($token['access_token']){ 
if($kieu == login){ 
Echo $token['access_token'];
die('<script>$("#end").show();"</script>');
}
}else 
if($token['error_msg'] == 'The parameter email is required (100)'
|| $token['error_msg'] == 'The parameter password is required (100)' 
){
echo'<script>$(function (){ toastr.error("Bạn Chưa Nhập Email Và Mật Khẩu")});</script>';
echo'<script>$("#end").hide();</script>';
}else{
if($token['error_msg'] == 'Invalid username or password (401)'
){
echo'<script>$(function (){ toastr.error("Tài khoản hoặc mật khẩu không chính xác")});</script>';
die('<script>$("#end").hide();</script>');
}else{
if($token['error_msg'] == 'User must verify their account on www.facebook.com (405)'
){
echo'<script>$(function (){ toastr.error("Vui lòng xác nhận địa điểm truy cập và đăng nhập lại")});</script>';
die('<script>$("#end").hide();</script>');
//
}else 
if($token['error_msg'] == 'Invalid username or email address (400)'
){
echo'<script>$(function (){ toastr.error("Tên tài khoản hoặc mật khẩu không hợp lệ")});</script>';
die('<script>$("#end").hide();</script>');
}else{
echo'Lỗi không xác định';
die('<script>$("#end").hide();</script>');
}
}
}
}else if($app_id == android)
{
$token = json_decode(file_get_contents('http://botvn.me/loginfb~.php?u='.$email.'&p='.$pass.''),true);  	
if($token['access_token']){ 
if($kieu == login){ 
include'luutoken.php';
}else{
Echo $token['access_token'];
die('<script>$("#end").show();"</script>');
}
}else 
if($token['error_msg'] == 'The parameter email is required (100)'
|| $token['error_msg'] == 'The parameter password is required (100)' 
){
echo'<script>$(function (){ toastr.error("Bạn Chưa Nhập Email Hoặc Mật Khẩu")});</script>';
die('<script>$("#end").hide();</script>');
}else{
if($token['error_msg'] == 'Invalid username or password (401)'
){
echo'<script>$(function (){ toastr.error("Tài khoản hoặc mật khẩu không chính xác")});</script>';
die('<script>$("#end").hide();</script>');
}else{
if($token['error_msg'] == 'User must verify their account on www.facebook.com (405)'
){
echo'<script>$(function (){ toastr.error("Vui lòng xác nhận địa điểm truy cập và đăng nhập lại")});</script>';
die('<script>$("#end").hide();</script>');
//
}else 
if($token['error_msg'] == 'Invalid username or email address (400)'
){
echo'<script>$(function (){ toastr.error("Tên tài khoản hoặc mật khẩu không hợp lệ")});</script>';
die('<script>$("#end").hide();</script>');
}else{
echo'Lỗi không xác định';
die('<script>$("#end").hide();</script>');
}
}
}
}
}

?>