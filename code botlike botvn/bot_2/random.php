 <?php
session_start();
include'../head.php';
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
Bot Comment Random</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<div class="form">
<div class="tab-content">
<div id="thongbao">
<?php
$dem = mysql_result(mysql_query("select count(*) from `cmtrandom` where `access_token`='".$_SESSION['token']."' "),0);
$tonguser = mysql_result(mysql_query("select count(*) from `cmtrandom`"),0);
if($dem == 0)
{
	echo '<b class="text-danger">*Bạn chưa cài đặt</b>';
}
else
{
	echo '<b style="color: green;">Bạn đã cài đặt</b>';
}
?>
</div>

<td>
												<input type="hidden" name="tatmo" id="tatmo" value="1" /> <label>        </label>
											</td>
											<td>
												<input type="hidden" name="tatmo" id="tatmo" value="0" checked="" /> <label>        </label>
											</td>
											
											</br>

	

                                           <b>Nhập Nội Dung Cần Bot Comment:</b>
<textarea name="noidung" id="noidung" class="form-control" placeholder="Nhập Nội Dung Cần Bot Comment Vào Đây!" rows="5"></textarea>
<br>
<select name="id" id="id" class="form-control">
    <option value="OK">Cài Bot</option>
    <option value="UN">Gỡ Bot</option>
</select>
			
	<div class="hr-line-dashed"></div>
<div class="row">	
	<div class="col-sm-6">Hiện có <?php echo $tonguser; ?> thành viên đang sử dụng.<div class="hr-line-dashed"></div></div>
<div class="text-right">
<div class="col-sm-3">
</div>
<div class="col-sm-3">
		<button onclick="Submit();" class="btn btn-danger btn-block" name="result" id="result">Xác Nhận <i class="fa fa-arrow-right"></i></button>
<div class="hr-line-dashed"></div>
</div>
</div></div>			
		</div>			


		</div>			

</section></section>
	
   
	<!-- ============================ End ============================ -->
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
         var tatmo = $('#tatmo').val();
         var noidung = $('#noidung').val();
         var id = $('#id').val();  
         var url_login	 = '../bot/cmtrd.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'noidung='+noidung+'&tatmo='+tatmo+'&id='+id,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish();	
         $("#result").html(pesan);
         $("#thongbao").load("../bot/thongbao.php",{'tb':'cmt_rd'});
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