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
                    <h2>Boom Comment</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Boom Comment</strong>
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
Boom Comment</b></h5>
                        
                    </div>
                    <div class="ibox-content">
	<a href="http://findmyfbid.com" target="_blank" class="btn btn-danger btn-xs">Lấy ID Bạn Bè (copy link dán vào rồi ấn FIND)</a>

					<section class="status">
<div class="form-group">
		<b>*ID Cần Bão Comment:</b>
		<input name="id_bai" placeholder="ID Cần Bão Comment" value="" class="form-control" id="id_bai" style="width:100%;" >	<br>

<b>*Nội Dung Comment:</b>
<textarea class="form-control" rows="8" name="noidung" id="noidung" placeholder="Nhập nội dung cần boom comment" style="width:100%;"></textarea><br>

<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="100">100 Comment</option>
				<option value="80">80 Comment</option>
				<option value="70">70 Comment</option>
				<option value="60">60 Comment</option>
				<option value="50">50 Comment</option>
				<option value="40">40 Comment</option>
				<option value="30">30 Comment</option>
				<option value="20">20 Comment</option>
				<option value="10">10 Comment</option>
				<option value="5">5 Comment</option>
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
         var id_bai = $('#id_bai').val(); 
         var limit = $('#limit').val();  
         var noidung = $('#noidung').val();
         if(id_bai == '' || noidung ==''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Đủ Thông Tin')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         } 
         var url_login	 = '../done/boomcmt.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_bai='+id_bai+'&limit='+limit+'&noidung='+noidung,
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