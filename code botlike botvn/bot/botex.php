<?php 
session_start(); 
include'../config.php';
?>
<?php
	if($_SESSION['id'])
	{
		?>

 <div class="wrapper wrapper-content animated fadeInRight">
 <div class="col-lg-12">
<div class="alert alert-success"><b>Bot không hoạt động?</b> gỡ bot và cài lại!</div>

                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Bot Ex Like</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<div id="thongbao"><?php
$dem = mysql_result(mysql_query("select count(*) from `botexlike` where `user_id`='".$_SESSION['id']."' "),0);
$tonguser = mysql_result(mysql_query("select count(*) from `botexlike`"),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">*Bạn đã cài đặt</b>';
}
?></div>

<select name="id" id="id" class="form-control">
    <option value="OK">Cài Bot</option>
    <option value="UN">Gỡ Bot</option>
</select>
<div class="hr-line-dashed"></div>
		<div class="row">
		<div class="col-sm-9">
		Hiện có <?php echo $tonguser; ?> thành viên đang sử dụng Bot Ex Like!<br><b>Số thành viên tỷ lệ nghịch vời thời gian chạy ex</b>
		</div>
		<div class="col-sm-3">
		<div class="text-right">
		<button onclick="Submit();" class="btn btn-danger btn-block" name="result" id="result">Xác Nhận <i class="fa fa-arrow-right"></i></button>
		</div>
		</div>
		</div>


       </div>
    </div>


<script type="text/javascript"> 

function start()
{      
         $("input").attr("disabled", "disabled");   
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled"); 
} 
function finish()
{        
         $("input").removeAttr("disabled");    
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled"); } 
function Submit() 
{ 
start(); 
         $('#thongbao').html('<i class="fa fa-spinner fa-pulse"></i>');
         $('#result').html('<i class="m-progress"></i> ');
         var id = $('#id').val(); 
         var url_login	 = 'done_bot/ex.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id='+id,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish();	
         $("#result").html(pesan);
         $("#thongbao").load("bot/thongbao.php",{'tb':'ex'});
         $("#result").html('Xác Nhận <i class="fa fa-arrow-right"></i>');

    },
   }); 
}


</script>
<?php
	}
	else
	{
	?>
<?php 
die('<script>window.location.href = "/index.php?info=400"</script>');
?>
<?php
	}
?>
