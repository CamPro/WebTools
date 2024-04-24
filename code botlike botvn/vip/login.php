<?php include '../head.php';?>
<?php
session_start();
##########################################################################
$password = "vipmember56"; 
##########################################################################
?>
<?php 
  print "
        <div class='wrapper wrapper-content animated fadeInRight' id='view' name='view'>
               <div class='col-lg-12'>
                <div class='ibox float-e-margins'>
                    <div class='ibox-title'>
                        <h5><b>
Đăng Nhập Vip Member</b></h5>
                        
                    </div>
                    <div class='ibox-content'>
";
if (isset($_POST["password"]) && ($_POST["password"]=="$password")) {
	$_SESSION['password'] = $password;
	echo 
	"
<div class='alert alert-success' style='padding: 12px; border-radius: 1px!important,'>Đăng Nhập Thành Công!</div>
	<script>
	 window.location.href ='Success';
	</script>
	";
		
	
?>
<?php 
}
else
{
if (isset($_POST['password']) || $password == "") {
  print '<center><b style="color: red;">Mật Khẩu Không Chính Xác</b></center><br>';} 
  echo "<div class='lockscreen-item'>
        <form class='lockscreen-credentials' id='formlogin' method='POST' action=''>
          <div class='input-group'>
            <input type='password' name='password' class='form-control' placeholder='Nhập mật khẩu đã được adminstrator cung cấp'>
            <div class='input-group-btn'>
              <button class='btn btn-primary'>Đăng Nhập</button>
            </div>
          </div>
        </form>

      </div></div></div></div></div>";
} 
?>
<?php include'../foot.php';?>