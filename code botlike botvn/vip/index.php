<?
session_start();
if(!$_SESSION['password']){
	header("LOCATION: Vip");
	exit;
}
error_reporting(0);
    //lấy IP của khach
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $remoteip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $remoteip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $remoteip = $_SERVER['REMOTE_ADDR'];
    }
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timelikevip1`"), 0);
$layid = mysql_query("SELECT * FROM `timelikevip1` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 0;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timelikevip1
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php include'../head.php';?>
        <div class='wrapper wrapper-content animated fadeInRight' id='view' name='view'>
	<div class="alert alert-success"><b>QUYỀN LỢI VIP: KHÔNG TỐN TIME ĐỢI AUTO LIKE, LIKE MAX TRONG HỆ THỐNG! KHÔNG BỊ SPAM TOKEN...</b></div>
                 <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Auto Like</b></h5>
                        
                    </div>
                    <div class="ibox-content">
                        <a href="#skytamm" data-target="#popup_id" data-toggle="modal" title="Lấy ID" class="btn btn-danger btn-xs">Lấy ID Status / Ảnh / Video</a><br>

		<b>*Đã Chọn ID Status Mới Nhất:</b>
		<input name="id_like" placeholder="Nhậ­p ID Status/ảnh/Video cần tăng Like !"  class="form-control" id="id_like" style="width:100%;">
<div class="hr-line-dashed"></div>
<div class="row">
	<div class="col-sm-6"></div>
	<div class="col-sm-3">



			<select class="form-control" id="limit" name="limit">
				<option value="500">500 Like</option>
				<option value="400">400 Like</option>
				<option value="300">300 Like</option>
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
         var url_login	 = '../done/likevip.php';	
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
</div><div class="lockscreen-footer text-center">
Your IP: <font color="red"><?php echo $remoteip; ?></font><br>
      </div>
<?php include'../foot.php';?>
