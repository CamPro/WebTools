<?php
session_start();
include'../head.php';
include'../config.php';
?>
	<?php
	if($_SESSION['id'])
	{
		?>
<div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Bot Like New Feed</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Bot New Feed</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
<div class="wrapper wrapper-content  animated fadeInRight">
 <div class="col-lg-12">
<div class="alert alert-success"><b>Bot không hoạt động?</b> gỡ bot và cài lại!</div>

                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Bot Like New Feed</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<?php
$dem = mysql_result(mysql_query("select count(*) from `botlikenf` where `user_id`='".$_SESSION['id']."' "),0);
$tonguser = mysql_result(mysql_query("select count(*) from `botlikenf`"),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">Bạn đã cài đặt</b>';
}
?>
<form method="post" action="">

		<select class="form-control"  id="id" name="id"> 
    <option value="OK">Cài Bot</option>
    <option value="UN">Gỡ Bot</option>
  </select><div class="hr-line-dashed"></div>
		<div class="row">
		<div class="col-sm-9">
		Hiện có <?php echo $tonguser; ?> thành viên đang sử dụng.
		</div>
		<div class="col-sm-3">
		<div class="text-right">
		<button type="submit" name="submit" id="submit_btn" class="btn btn-danger btn-block">Xác Nhận <i class="fa fa-arrow-right"></i></button>
		</div>
		</div>
		</div>
</form>
	</div>
	</div>	
</div></div>

		<?php
	}
	else
	{
	?>
<?php 
die('<script>alert("Bạn Chưa Đăng Nhập"); window.location.href = "/index.php?info=400"</script>');
?>
<?php
	}
include'../foot.php';
if($_POST['id'] && $_SESSION['id']){
	if($_POST['id'] == 'UN' || $_POST['id'] =='Un' || $_POST['id'] =='un')
	{
mysql_query("
            DELETE FROM
               botlikenf
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' 
         ");

die('<script type="text/javascript">$(function (){ toastr.error("Gỡ Bot Thành Công!")}); window.location.href = "BotLike"</script>');

}
else if($_POST['id'] == 'OK' || $_POST['id'] == 'Ok' || $_POST['id'] == 'ok')
{
	mysql_query("CREATE TABLE IF NOT EXISTS `botlikenf` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `user_id` varchar(32) NOT NULL,
      `name` varchar(32) NOT NULL,
      `access_token` varchar(255) NOT NULL,
      PRIMARY KEY (`id`)
      ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
   ");
   $row = null;
   $result = mysql_query("
      SELECT
         *
      FROM
         botlikenf
      WHERE
         user_id = '" . mysql_real_escape_string($_SESSION['id']) . "'
   ");
   if($result){
      $row = mysql_fetch_array($result, MYSQL_ASSOC);
      if(mysql_num_rows($result) > 100){
         mysql_query("
            DELETE FROM
               botlikenf
            WHERE
               user_id='" . mysql_real_escape_string($_SESSION['id']) . "' AND
               id != '" . $row['id'] . "'
         ");
      }
   }
 
   if(!$row){
      mysql_query(
         "INSERT INTO 
            botlikenf
         SET
            `user_id` = '" . mysql_real_escape_string($_SESSION['id']) . "',
            `name` = '" . mysql_real_escape_string($_SESSION['name']) . "',
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
      ");
   } else {
      mysql_query(
         "UPDATE 
            botlikenf
         SET
            `access_token` = '" . mysql_real_escape_string($_SESSION['token']) . "'
         WHERE
            `id` = " . $row['id'] . "
      ");
   }

   die('<script type="text/javascript">$(function (){ toastr.success("Cài Đặt Thành Công!")});window.location.href = "BotLike"</script>');

}
}
function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>