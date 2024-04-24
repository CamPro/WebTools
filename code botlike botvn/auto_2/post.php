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
                    <h2>Auto Post...</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Auto Post...</strong>
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
Auto Post Groups, Wall Friends, Fanpage</b></h5>
                        
                    </div>
                    <div class="ibox-content">
					<section class="status">
<div class="form-group">
		<!--<input name="tokenpost" placeholder="Nhập TOKEN HTC SENSE vào đây... ví dụ: EAAAACZAVC6ygBADr54ARyx7qo2M5gAMa4CJOl9gGlqK99iHRtz6l5e1caM1kn5nKZB1ZBzvYYw6NCYJGbbwhrSTte62KPAXDSzG1CJlbNFXzfmkzo0rPw2QhMPQcIJf5rZBtOQZC1W8wtZBEf8rvlAbflmEfvm8O4ZD" value="" class="form-control" id="tokenpost" style="width:100%;">-->
<b>*Nhập Nội Dung Cần Post</b>
<textarea class="form-control" rows="8" name="noidung" id="noidung" placeholder="Nhập nội dung cần post" style="width:100%;"></textarea></div>
<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-3"></div>
	<div class="col-sm-3">
			<select class="form-control" name="loaipost" id="loaipost">
				<option value="group">Groups</option>
				<option value="friend"> Wall Friends</option>
				<option value="page">Fanpages</option>
			</select>
			<div class="hr-line-dashed"></div>
</div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="100">100 Post</option>
				<option value="80">80 Post</option>
				<option value="70">70 Post</option>
				<option value="60">60 Post</option>
				<option value="50">50 Post</option>
				<option value="40">40 Post</option>
				<option value="30">30 Post</option>
				<option value="20">20 Post</option>
				<option value="10">10 Post</option>
			</select>
			<div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>


</div>
					</section>
<script type="text/javascript"> 

function start()
{      
         $("input").attr("disabled", "disabled");   
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled"); 
         $("texarea").attr("disabled", "disabled");
} 
function finish()
{        
         $("input").removeAttr("disabled");    
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("texarea").removeAttr("disabled");
 } 
function Submit() 
{ 
start(); 
         $('#result').html('<i class="m-progress"></i> ');
         var code =  $('#loaipost').val();
         var limit = $('#limit').val(); 
         var noidung = $('#noidung').val();
         if(noidung == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Nội Dung')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         } 
         var url_login	 = '../done/post.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'mode='+code+'&limit='+limit+'&noidung='+noidung,
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