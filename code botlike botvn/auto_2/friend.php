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
                    <h2>Auto Add Friend</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Auto Add Friend</strong>
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
Auto Add Friends</b></h5>
                        
                    </div>
                    <div class="ibox-content">
                        <a class="btn btn-danger btn-xs" href="http://findmyfbid.com" target="_blank">Lấy ID Facebook</a>
<div class="form-group">
		<b>*Đã Nhập ID Facebook Của Bạn:</b>
		<input name="id_friend" placeholder="Nhậ­p ID Facebook" value="<?php echo $_SESSION['id']; ?>" class="form-control" id="id_friend" style="width:100%;">	
		<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">
			<select class="form-control" id="limit" name="limit">
				<option value="50">50 Friend</option>
				<option value="40">40 Friend</option>
				<option value="30">30 Friend</option>
				<option value="20">20 Friend</option>
				<option value="10">10 Friend</option>
				<option value="10">5 Friend</option>
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
} 
function finish()
{        
         $("input").removeAttr("disabled");    
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled"); } 
function Submit() 
{ 
start(); 
         $('#result').html('<center><i class="m-progress"></i> </center>'); 
         var id_friend = $('#id_friend').val(); 
         var limit = $('#limit').val();
         if(id_friend == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập ID')});
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('Bắt Đầu <i class="fa fa-arrow-right"></i>'); 
         return false;
         }  
         var url_login	 = '../done/friend.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'id_friend='+id_friend+'&limit='+limit,
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
</div></div></div>
	</div>	
</div>


                 

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