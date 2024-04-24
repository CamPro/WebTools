<?php 
session_start();
include'../config.php';

if($_POST['tb']=="like")
{
$dem = mysql_result(mysql_query("select count(*) from `botlikenf` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
if($_POST['tb']=="ex")
{
$dem = mysql_result(mysql_query("select count(*) from `botexlike` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
if($_POST['tb']=="exreac")
{
$dem = mysql_result(mysql_query("select count(*) from `exreac` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
if($_POST['tb']=="reac")
{
$dem = mysql_result(mysql_query("select count(*) from `reac` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
if($_POST['tb']=="cmt")
{
$dem = mysql_result(mysql_query("select count(*) from `botcmt` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
if($_POST['tb']=="cmt_rd")
{
$dem = mysql_result(mysql_query("select count(*) from `cmtrandom` where `user_id`='".$_SESSION['id']."' "),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
}
?>