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
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Auto Sub</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<?php
if($_SESSION['id_token'] == '6628568379' || 
$_SESSION['id_token'] == '350685531728' ||
$_SESSION['id_token'] == '165907476854626')
{
?>


                        <a href="http://findmyfbid.com" target="_blank" class="btn btn-danger btn-xs">Lấy ID Facebook</a>
					<section class="status">
<div class="form-group">
		<b>* Đã Nhập ID Của Bạn:</b>
		<input name="id_sub" placeholder="Nhậ­p ID Facebook!" value="<?php echo $_SESSION['id']; ?>" class="form-control" id="id_sub" style="width:100%;">
<div class="hr-line-dashed"></div>	
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="50">50 Sub</option>
				<option value="40">40 Sub</option>
				<option value="30">30 Sub</option>
				<option value="20">20 Sub</option>
				<option value="10">10 Sub</option>
			</select><div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>
	</div>
	</div>

					</section>
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
         $('#result').html('<i class="m-progress"></i> '); 
         var id_sub = $('#id_sub').val(); 
         var limit = $('#limit').val();
         if(id_sub == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập ID')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         } 
         var url_login	 = 'done/sub.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_sub='+id_sub+'&limit='+limit,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish();	
         $("#result").html(pesan); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>');	

    },
   }); 
}


</script>
			</center>
	</div>
	</div>	
</div></div>
<?php
}else{
?> 

Để sử dụng <b>Auto Sub</b> các bạn vui lòng thoát ra và đăng nhập lại bằng token <b>Facebook for Iphone</b> hoặc token <b>Facebook for Android</b> lấy từ việc đăng nhập bằng <b>Facebook</b> ở bên ngoài trang web!<br><br>
<a href="https://youtube.com/" target="_blank" class="btn btn-danger btn-xs">Click vào đây để xem video hướng dẫn</a>
</div></div></div></div>
<?php
}
?>


		<?php
	}
	else
	{
	?>
<script type="text/javascript">window.location.href = "/index.php?info=400"</script>

<?php
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