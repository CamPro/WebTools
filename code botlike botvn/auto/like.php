 <?php
session_start();
include'../config.php';
?>
	<?php
	if($_SESSION['id'])
	{
		?>


	<?php
$feed=json_decode(file_get_contents('https://graph.fb.me/me/feed?access_token='.$_SESSION['token'].'&limit=1'),true);
for($u=0;$u<count($feed[data]);$u++){ 
$idstt = $feed[data][$u][id]; 
 } 
?>
             <div class="wrapper wrapper-content animated fadeInRight">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Auto Like</b></h5>
                        
                    </div>
                    <div class="ibox-content">
                        <a href="#skytamm" data-target="#popup_id" data-toggle="modal" title="Lấy ID" class="btn btn-danger btn-xs">Lấy ID Status / Ảnh / Video</a><br>

		<b>*Đã Chọn ID Status Mới Nhất:</b>
		<input name="id_like" placeholder="Nhậ­p ID Status/ảnh/Video cần tăng Like !" value="<?php echo $idstt; ?>" class="form-control" id="id_like" style="width:100%;">
<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">



			<select class="form-control" id="limit" name="limit">
				<option value="200">200 Like</option>
				<option value="170">170 Like</option>
				<option value="150">150 Like</option>
				<option value="130">130 Like</option>
				<option value="100">100 Like</option>
				<option value="70">70 Like</option>
				<option value="50">50 Like</option>
				<option value="30">30 Like</option>
				<option value="10">10 Like</option>
			</select><div class="hr-line-dashed"></div>
	</div>
	<div class="col-sm-3">
			<button id="result" name="result" class="btn btn-danger btn-block" onclick="Submit();">
				Bắt Đầu <i class="fa fa-arrow-right"></i>
			</button><div class="hr-line-dashed"></div>
	</div>
	</div>
</div></div></div>
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Auto Like</b></h5>
                        
                    </div>
                    <div class="ibox-content" id="">

							</div>
</div></div></div>
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
         var id_like = $('#id_like').val(); 
         var limit = $('#limit').val();
         //Kiem tra gia tri
         if(id_like == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập ID')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         } 
        //END
         var url_login	 = 'done/like.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_like='+id_like+'&limit='+limit,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish(); 
         $("#result").html(pesan);
         //Co su thay doi
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>');

    },
   }); 
}


</script>
<script>
function load_status(){
	$.ajax({
		url : "status.php",
		type : "GET",
		dateType:"text",
		data : {
			id : $("#ids").val()
		},
		success : function (result){
			document.getElementById("status").innerHTML = result;
			$("#loadingstt").addClass('hidden');
		}
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
function auto($url){
   $curl = curl_init();
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_URL, $url);
   $ch = curl_exec($curl);
   curl_close($curl);
   return $ch;
   }
?>