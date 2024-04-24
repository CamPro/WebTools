<?php
session_start();
if($_POST['id_bai'] && $_SESSION['id'])
{
$_SESSION['id_bai']=$_POST['id_bai'];   
$_SESSION['limit']=$_POST['limit']; 
$_SESSION['noidung']=$_POST['noidung']; 
$jumlah = $_POST['limit'];                
$message = $_POST['noidung'];

          
    for($a=0; $a<$jumlah; $a++){
  $stat = curl("https://graph.beta.facebook.com/".$_POST['id_bai']."/comments?access_token=".$_SESSION['token']."&method=post&message=".$message);
            $dec = json_decode($stat);
            if(isset($dec->id))echo '';
            else echo "error\n";
    }

echo '<script>$(function (){ toastr.success("Boom Comment Thành Công!")});</script>';
}
function curl($url){
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            $exec = curl_exec($ch);
            curl_close($ch);
            return $exec;
    }
?>