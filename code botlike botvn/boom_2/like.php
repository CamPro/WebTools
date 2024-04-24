 <?php
session_start();
include'../head.php';
include'../config.php';
?>
	</ol>
	<?php
	if($_SESSION['id'])
	{
		?>
<div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Boom Like</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Boom Like</strong>
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
Boom Like</b></h5>
                        
                    </div>
                    <div class="ibox-content">
	<a href="http://findmyfbid.com" target="_blank" class="btn btn-danger btn-xs">Lấy ID Bạn Bè (copy link dán vào rồi ấn FIND)</a>
					<section class="status">
<div class="form-group">
		<b>*Nhập ID Cần Bão Like:</b>
		<input name="id_wall" placeholder="ID Cần Bão Like" value="" class="form-control" id="id_wall" style="width:100%;" >

<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="100">100 Like</option>
				<option value="80">80 Like</option>
				<option value="70">70 Like</option>
				<option value="60">60 Like</option>
				<option value="50">50 Like</option>
				<option value="40">40 Like</option>
				<option value="30">30 Like</option>
				<option value="20">20 Like</option>
				<option value="10">10 Like</option>
				<option value="5">5 Like</option>
			</select><div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>

					</section>

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
         if(id_wall == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập ID')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         }
 
         var url_login	 = '../done/boomlike.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_wall='+id_wall+'&limit='+limit,
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
	
</div></div>	</div>	

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