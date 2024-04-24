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
                    <h2>Boom Wall</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Boom Wall</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated rotateInDownRight">

 <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Boom Wall</b></h5>
                        
                    </div>
                    <div class="ibox-content">
	<a href="http://findmyfbid.com" target="_blank" class="btn btn-danger btn-xs">Lấy ID Bạn Bè (copy link dán vào rồi ấn FIND)</a>

					<section class="status">
<div class="form-group">
<!--<input name="tokenhtc" placeholder="Nhập Token HTC" value="" class="form-control" id="tokenhtc" style="width:100%;" ><br>-->
<b>*Nhập ID Cần Bão Wall:</b>
<input name="id_wall" placeholder="ID Cần Bão Wall" value="" class="form-control" id="id_wall" style="width:100%;" >
<br>

<b>*Nội Dung Cần Đăng Lên Tường:</b>
<textarea class="form-control" rows="8" name="noidung" id="noidung" placeholder="Nhập nội dung cần bão wall" style="width:100%;"></textarea>

<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="100">100 STT</option>
				<option value="80">80 STT</option>
				<option value="70">70 STT</option>
				<option value="60">60 STT</option>
				<option value="50">50 STT</option>
				<option value="40">40 STT</option>
				<option value="30">30 STT</option>
				<option value="20">20 STT</option>
				<option value="10">10 STT</option>
				<option value="5">5 STT</option>
				<option value="1">1 STT</option>
			</select><div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>
					</section>

<span id="result" name="result"></span>
<script type="text/javascript"> 

function start()
{      
         $("input").attr("disabled", "disabled");   
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled"); 
         $("textarea").attr("disabled", "disabled");
} 
function finish()
{        
         $("input").removeAttr("disabled");    
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); } 
function Submit() 
{ 
start(); 
         $('#result').html('<i class="m-progress"></i> ');
         var id_wall = $('#id_wall').val(); 
         var limit = $('#limit').val();  
         var noidung = $('#noidung').val();
         var tokenhtc = $('#tokenhtc').val();
         if(id_wall == '' || noidung ==''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Đủ Thông Tin')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         } 
         var url_login	 = '../done/boomwall.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_wall='+id_wall+'&limit='+limit+'&tokenhtc='+tokenhtc+'&noidung='+noidung,
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

function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>