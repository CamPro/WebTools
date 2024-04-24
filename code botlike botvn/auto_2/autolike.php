 <?php
session_start();
include'../head.php';
include'../config.php';
?>
	<?php
	if($_SESSION['id'])
	{
                  $useragent=$_SERVER['HTTP_USER_AGENT'];

if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)) ){
		?>
 <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Auto Like</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Auto Like</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated rotateInDownRight">

	<?php
$feed=json_decode(file_get_contents('https://graph.fb.me/me/feed?access_token='.$_SESSION['token'].'&limit=1'),true);
for($u=0;$u<count($feed[data]);$u++){ 
$idstt = $feed[data][$u][id]; 
 } 
?>
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
</div></div>
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
         var url_login	 = '../done/like.php';	
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
	<?php
                 }else{
  die('<script>alert("Bạn Đang Sử Dụng Phiên Bản Dành Cho Máy Tính!"); window.location.href = "/index.php"</script>');
                }
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