<?php
session_start();
if($_SESSION['id']){
die('<b>https://botvn.me/ref?='.$_SESSION['id'].'</b>');
}
?>