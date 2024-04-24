 <?php
session_start();
include'head.php';
include'config.php';
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
Auto Comment</b></h5>
                        
                    </div>
                    <div class="ibox-content">
                        <a href="#skytamm" data-target="#popup_id" data-toggle="modal" title="Lấy ID" class="btn btn-danger btn-xs">Lấy ID Status / Ảnh / Video</a>


					<section class="status">
<div class="form-group">
<b>*Nhập ID Cần Auto Comment:</b>
<input name="id_cmt" placeholder="Nhậ­p ID Status/ảnh/Video cần tăng comment!" value="" class="form-control" id="id_cmt" ><br>
<b>Nhập Nội Dung:</b>
<textarea class="form-control" rows="5" name="noidung" id="noidung" placeholder="Nhập nội dung cần auto comment" style="width:100%;"></textarea>
<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="30">30 Comment</option>
				<option value="30">20 Comment</option>
				<option value="30">10 Comment</option>
				<option value="30">5 Comment</option>
				<option value="10">3 Comment</option>
			</select><div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>

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
         $('#adfly').html('Please Wait...');
         $('#result').html('<i class="m-progress"></i> ');
         var id_cmt = $('#id_cmt').val(); 
         var limit = $('#limit').val();  
         var noidung = $('#noidung').val();
          if(id_cmt == '' || noidung ==''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Đủ Thông Tin')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         }
         var url_login	 = 'done/cmt.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_cmt='+id_cmt+'&noidung='+noidung+'&limit='+limit,
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
	</div>
	</div>	
</div></div>	</div>
	</div>	
</div>




                 
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
include'foot.php';
function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>