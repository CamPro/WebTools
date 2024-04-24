 <?php
session_start();
include'head.php';
include'config.php';
?>
	<?php
	if($_SESSION['id'] 
                      ){
		?>
<?php
//ADD ID VIP LIKER
if($_SESSION['id'] =='100009116051272' 
|| $_SESSION['id'] =='100006347718238'
|| $_SESSION['id'] =='100010644313554'
|| $_SESSION['id'] =='860502407426625'
|| $_SESSION['id'] =='' 
){
?>
<div class="container">
<?php include'head2.php';?>
<div class="container">
                                    <div class="panel panel-primary">
<div class="panel-heading">
                                <h3 class="panel-title"><span class="fa fa-thumbs-o-up"></span> Auto Like (VIP)</h3>
                            </div>

	<div id="bodyupcmt" class="panel-body">			<center>
					<section class="status">
<div class="form-group">

		<input name="id_like" placeholder="Nhậ­p ID Status/ảnh/Video cần tăng Like !" value="" class="form-control" id="id_like" style="width:100%;"><br>
	
		<input class="" value="500" max="500" min=5 type="range" name="limit" id="limit" onchange="$('#limit_show').html(document.getElementById('limit').value)" style="width:70%;">

<div id='limit_show'>
500
</div><hr>



		<button class="btn btn-primary"  onclick="Submit();">Tăng Like</button>
</div>
<br>
					</section>

<span id="result" name="result"></span>	
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

         $('#adfly').html('Please Wait...');
         $('#result').html('<i class="fa fa-spinner fa-pulse"></i><br> Đang Auto Like...');
         var id_like = $('#id_like').val(); 
         var limit = $('#limit').val(); 
         var url_login	 = 'done/likevip.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_like='+id_like+'&limit='+limit,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish(); 
         $("#result").html(pesan);	

    },
   }); 
}


</script>

			</center>
	
</div>
	</div>	
</div></div>
                
<?php }else{ ?>
<?php 
die('<script>alert("Bạn không có quyền truy cập trang này!"); window.location.href = "/index.php?info=error"</script>');
?>	
<?php } ?>
<?php }else{ ?>
<script type="text/javascript">window.location.href = "/index.php?info=400"</script>	
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