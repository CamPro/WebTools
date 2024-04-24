<?php
session_start();
include'head.php';
include'config.php';
if(isset($_GET['info'])){
        switch($_GET['info']) {
            case 400:
                $errorMsg = "Bạn Phải Đăng Nhập Để Sử Dụng Chức Năng Này!";
            break;
            case 401:
                $errorMsg = "Bạn Phải Đăng Nhập Để Sử Dụng Chức Năng Này!";
            break;
            case 402:
                $errorMsg = "Bạn Phải Đăng Nhập Để Sử Dụng Chức Năng Này!";
            break;
            case coomingsoon:
                $errorMsg = "Tính năng đang phát triển";
            break;
            case logout:
                $errorMsg = "Đăng xuất thành công! Nhớ thường xuyên truy cập để cập nhật bot nhé!";
            break;
            case success:
                $errorMsg = "<b>Hệ thống: </b>Đăng nhập thành công! chào mừng <b>$_SESSION[name]</b> đến với <b>BOTVN.ME</b>";
            break;
            case error:
                $errorMsg = "Tài khoản của bạn không phải tài khoản VIP! hãy nâng cấp VIP và thử lại sau!";
            break;
            case block:
                $errorMsg = "Bạn đã bị BLOCK khỏi hệ thống do vi phạm quy định của chúng tôi! Chúng tôi sẽ mở BLOCK trong vòng 24~48h hoặc vĩnh viễn! Mọi chi tiết liên hệ <a href='https://www.facebook.com/BotVn.Me.Project'><font color='red'>Admin</font></a>";
            break;
            default:
                $errorMsg = "BotVn.Me - Hệ Thống Bot Facebook Đồn Như Lời ^^!";
            break;
        }
         ''.$errorMsg.'';
    }
?>
<?php
	if($_SESSION['id'])
	{
		?>
<?php if($_SESSION['id'] == '100009116051272'){
		$tien = '<font color="green">999999999</font> VNĐ';
	  	}else{
	  	$tien = '<font color="red">0</font> VNĐ'; 
} ?>


 <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>BotVn.Me Beta 2.5</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li>
                            Login
                        </li>
                        <li class="active">
                            <strong>Login Success</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight" id="view" name="view">
<?php

$useragent=$_SERVER['HTTP_USER_AGENT'];

if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4))){
?>
<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Chức năng</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<center>
<div class="alert alert-success"><b>Xin chào <?php echo $_SESSION['name'];?>! Bạn đang sử dụng phiên bản dành cho <font color="red">ĐIỆN THOẠI</font></div>
<h2>Khu vực auto</h2>
<a href="AutoLike" class="btn btn-primary"><i class="fa fa-thumbs-up"></i> Auto Like</a>
<a href="AutoSub" class="btn btn-primary"><i class="fa fa-rss"></i> Auto Sub</a>
<a href="AutoCmt" class="btn btn-primary"><i class="fa fa-comments-o"></i> Auto Comment</a>
<a href="AutoFriend" class="btn btn-primary"><i class="fa fa-user-plus"></i> Auto Add Friend</a>
<a href="Del" class="btn btn-primary"><i class="fa fa-calendar-times-o"></i> Auto Xóa Status</a>
<a href="DelFriend" class="btn btn-primary"><i class="fa fa-user-times"></i> Auto Xóa Friend</a>
<a href="Confirm" class="btn btn-primary"><i class="fa fa-user-plus"></i> Auto Xác Nhân Friends</a>
<a href="Post" class="btn btn-primary"><i class="fa fa-thumbs-up"></i> Auto Post Gr / Page / Wall</a>
<br>
<h2>Khu vực bot</h2>
<a href="Ex" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Ex Like</a>
<a href="Exreac" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Ex Reac</a>
<a href="BotLike" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Like New Feed</a>
<a href="BotReac" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Reac New Feed</a>
<a href="BotCmt" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Comment</a>
<a href="BotCmtRandom" class="btn btn-warning"><i class="fa fa-thumbs-up"></i> Bot Comment Ramdom</a>
<br>
<h2>Khu vực boom<h2>
<a href="BoomLike" class="btn btn-success"><i class="fa fa-thumbs-up"></i> Boom Like</a>
<a href="BoomWall" class="btn btn-success"><i class="fa fa-thumbs-up"></i> Boom Wall</a>
<a href="BoomCmt" class="btn btn-success"><i class="fa fa-thumbs-up"></i> Boom Comment</a>
<br><br>
<a href="logout.php" class="btn btn-danger"><i class="fa fa-sign-out"></i> Đăng Xuất</a>

</center>
</div>
</div>
        <div  id="view" name="view"></div>
</div>


<?php
}else{
?>

                <div class="col-lg-12 animated fadeInRight">
<div class="alert alert-success">Để sử dụng vui lòng chọn chức năng ở thanh bên trái</div>

                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Welcome To BotVn.Me</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<div class="row">
<div class="col-sm-5">
<center><br><br>
<a href="https://facebook.com/<?php echo $_SESSION['id']; ?>">
<img class="img-circle" width="110" height="110" src="https://graph.facebook.com/<?php echo $_SESSION['id']; ?>/picture?type=large" alt="Coday"/><br>
</a><br><span class="mfsl fcb"><span class="badge" style="background-color:green; color:#FFFFFF;"><?php echo $_SESSION['name']; ?></span><br><br><b><a type="button" href="index.php?info=coomingsoon" class="btn btn-primary btn-sm"><i class="fa fa-money" aria-hidden="true"></i> 5.000 VND </a></b> <br><br><a href="index.php?info=coomingsoon" class="btn btn-success btn-sm"> Nạp Tiền </a> Hoặc <a href="index.php?info=coomingsoon" class="btn btn-warning btn-sm">Mua VIP</a><br><br><a class="btn btn-danger btn-sm" href="logout.php" >Đăng xuất <i class="fa fa-sign-out"></i></a></center>
<br>
</div>
<div class="col-sm-7">
 <ul class="list-group">
					<li class="list-group-item">
						Name: <strong><span class="pull-right"><?php echo $_SESSION['name'];?></span></strong>
					</li>
					<li class="list-group-item">
						ID: <strong><span class="pull-right"><?php echo $_SESSION['id'];?></span></strong>
					</li>
					<li class="list-group-item">
						Tên Trước: <strong><span class="pull-right"><?php echo $_SESSION['last_name'];?></span></strong>
					</li>
					<li class="list-group-item">
						Tên Sau: <strong><span class="pull-right"><?php echo $_SESSION['first_name'];?></span></strong>
					</li>
					<li class="list-group-item">
						Ngày Sinh: <strong><span class="pull-right"><?php echo $_SESSION['birthday'];?></span></strong>
					</li>
					<li class="list-group-item">
						Email: <strong><span class="pull-right"><?php echo $_SESSION['email'];?></span></strong>
					</li>
					<li class="list-group-item">
						ID Token: <strong><span class="pull-right"><?php echo $_SESSION['id_token'];?></span></strong>
					</li>
					<li class="list-group-item">
						Tài Khoản: <strong><span class="pull-right"><?php echo $tien; ?>
					</span></strong>
					</li>
				</ul> 
</div>
</div>
<center>
<div class="alert alert-success"><b>Bạn đang muốn kiếm tiền mua vip mà không cần nạp thẻ? Hãy làm theo hướng dẫn dưới đây!</b>
<br>
<b>Bước 1:</b> các bạn copy link ref sau đây: <b>https://botvn.me/?ref=<?php echo $_SESSION['id']; ?></b>
<br>
<b>Bước 2:</b> hãy chia sẽ link có từ bước 1 cho bạn bè, người thân để cùng sử dụng!<br>
<b>[Cứ 1 người sử dụng trên link ref bạn sẽ nhận được 1.000 đồng trong tài khoản, sẽ được trao trong vòng 1~24h]<br></b>
<b>CHÚC CÁC BẠN THÀNH CÔNG! ^^</b></div>

</center>
</div>
                     </div>
                        </div></div>


<?php
}
?>                   
                           

                    


<?php 
}else{
?>
 <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Method Login</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.php">Home</a>
                        </li>
                        <li class="active">
                            <strong>Login</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
<span id="view" name="view" style="display: none;"></span>
<div class="row">
            <div class="col-lg-3">
                <div class="widget style1 red-bg">
                        <div class="row">
                            <div class="col-xs-4 text-center">
                                <i class="fa fa-trophy fa-5x"></i>
                            </div>
                            <div class="col-xs-8 text-right">
                                <span> Tổng Người Dùng Hệ Thống </span>
                                <h2 class="font-bold"><?php echo $skytamm;?></h2>
                            </div>
                        </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget style1 navy-bg">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-rss fa-5x"></i>
                        </div>
                        <div class="col-xs-8 text-right">
                            <span> Người Dùng Auto Sub </span>
                            <h2 class="font-bold"><?php echo $tongsub;?></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget style1 lazur-bg">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-star-half-o fa-5x"></i>
                        </div>
                        <div class="col-xs-8 text-right">
                            <span> Người Dùng Bot Ex </span>
                            <h2 class="font-bold"><?php echo $tongex;?></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget style1 yellow-bg">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-thumbs-up fa-5x"></i>
                        </div>
                        <div class="col-xs-8 text-right">
                            <span> Người Dùng Bot New Feed </span>
                            <h2 class="font-bold"><?php echo $tongbot;?></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><b>
Đăng Nhập Hệ Thống</b></h5>
                        
                    </div>
                    <div class="ibox-content">
<p style="font-size: 15px;">Đầu tiên, bạn click vào <a href="https://www.facebook.com/settings?tab=followers" target="_blank">đây</a> để thay đổi thiết lập người theo dõi. Trong phần: "<b>Ai có thể theo dõi tôi</b>" bạn chọn và sửa thành <br><kbd><i class="fa fa-globe"></i> Tất cả mọi người <i class="fa fa-caret-down"></i></kbd>        <br>
        <u>Lưu ý: Bạn phải trên <b>18+</b>, nếu không hãy thay đổi năm sinh trên 18 tuổi. Nếu không sẽ không bật theo dõi được</u></p>

        <p style="font-size: 15px;">Cài đặt <a href="https://www.facebook.com/settings?tab=privacy&amp;section=composer&amp;view" target="_blank">Bài Đăng</a> ở chế độ <kbd><i class="fa fa-globe"></i> mọi người <i class="fa fa-caret-down"></i></kbd></p>
		<div id="skytamm"></div>
		<div class="form-group">
			<b>*Access Token:</b>
			<input id="access_token" name="access_token" class="form-control" placeholder="Nhập Token Vào Đây..." onpaste="setTimeout( function() { login(document.getElementById('access_token').value);}, 100);"/>
			<div class="hr-line-dashed"></div>
		<div class="text-right">
			<div class="row">
			<div class="col-sm-5"></div>
			<div class="col-sm-2">
			<a href="https://t.co/rtlALBjaX3" target="_blank" class="btn btn-success btn-block"><i class="fa fa-cogs"></i> Cài Token</a>
			</div>
			<div class="col-sm-2">
			<a href="https://developers.facebook.com/tools/debug/accesstoken/?app_id=41158896424" target="_blank" class="btn btn-primary btn-block"><i class="fa fa-edit"></i> Lấy Token</a>
			</div>
			<div class="col-lg-3">
			<button id="go" type="button" class="btn btn-danger btn-block" onclick="login(document.getElementById('access_token').value);">
				<i class="fa fa-sign-in"></i> Đăng Nhập
			</button>

			</div>
			</div>
			
		</div>
		</div>
		<div class="hr-line-dashed"></div>
			<center><h3>ĐĂNG NHẬP BẰNG TÀI KHOẢN FACEBOOK</h3></center>
		<div class="hr-line-dashed"></div>
		<div class="row">
			<div class="col-sm-6 b-r">
			<b style="color: red;">*Nếu bạn gặp khó khăn trong việc lấy token hãy thử đăng nhập bằng tài khoản Facebook!</b><br>
			<ul class="list-group" >
				 	<li class="list-group-item">
						Hệ thống sẽ tự động lấy token full quyền, dùng được tất cả chức năng trong BotVn.Me
					</li>
					<li class="list-group-item">
						Chúng tôi không hề lưu lại thông tin và gây tổn hại đến tài khoản của bạn.
					</li>
					<li class="list-group-item">
						Đăng Nhập được hoạt động trên IP Client và chỉ sử dụng để lấy token.
					</li>
					<li class="list-group-item">
						Khi đăng nhập lần đầu có thể tài khoản của bạn sẽ bị checkpoint địa điểm truy cập! Vui lòng chấp nhận địa điểm đó và thử lại!
					</li>
			</ul>
						</div>
			<div class="col-sm-6">
			<div class="form">
				<b>*Email Hoặc SĐT:</b>
				<input class="form-control" id="email" name="email"/>
				<br>
				<b>*Mật Khẩu:</b>
				<input name="password" id="password" class="form-control" type="password">
				<br>
				<b for="app_id">*Chọn Ứng Dụng:</b>
				<select id="app_id" class="form-control">
				<option value="iphone">Token Facebook for Iphone</option>
				<option value="android">Token Facebook for Android</option>
				</select>
				<br>
                                <b for="app_id">*Kiểu lấy:</b>
				<select id="kieu" name="kieu" class="form-control">
				<option value="login">Đăng Nhập Luôn</option>
				<option value="gettoken">Chỉ Lấy Token</option>
				</select>
				<br>
				<span class="pull-right">
				<button class="btn btn-danger" type="button" id="result" name="result" onclick="Submit();"><i class="fa fa-sign-in"></i> Đăng Nhập</button>
				</span>
			
			</div></div>
			<!--row-->
			</div>
			<span id="end" name="end" style="display: none;">
			<b style="color: green;">*Token Của Bạn:</b>
			<textarea autofocus="autofocus" onfocus="this.select()" class="form-control" id="result2" name="result2" /></textarea>
			</span>
			<div class="hr-line-dashed"></div>

                    </div>
                </div>
            </div>
</div>



            
            <div class="row">
                <div class="col-lg-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>Người Dùng Mới</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <div>

                                            <div class="table-responsive">
                                <table class="table table-hover table-striped">
                                    <thead>
                                                                    <tr>
                                        <th>#</th>
                                        <th>Avatar:</th>
                                        <th>Name:</th>
                                        <th>ID Facebook:</th>
                                        <th>Chức Vụ:</th>
                                    </tr>
                                    </thead>
                                    <tbody>

 <?php
								  
                $infotv = mysql_query("SELECT * FROM `token` order by id desc LIMIT 0,8");
		while ($getinfo = mysql_fetch_array($infotv)){
		$nametv= $getinfo['name'];
		$idtv= $getinfo['user_id'];
                if($idtv == '100009116051272'){
                $chucvu = '<font color="red">Adminstrator</font>';
                }else{
                $chucvu = 'Thành viên';
                }
		?>


                                                                        <tr>
                                        <td></td>
                                        <td><img width="20" height="20" src="https://graph.facebook.com/<?php echo $idtv;?>/picture?type=large" alt="image" class="img-circle"></td>
                                        <td><a href="https://fb.com/<?php echo $idtv;?>" target="_blank"><?php echo $nametv; ?></a></td>
                                        <td><?php echo $idtv;?></td>
                                        <td><?php echo $chucvu;?></td>
                                    </tr>                                   
                                                                     
                                    

			<?php } ?>
</tbody>
                                </table>
                                                

                                        </div>
</div>
                                    </div>
                                </div>

                            </div>

                



                </div>
            </div>
<script>
 var _0xf285=["","\x42\u1EA1\x6E\x20\x43\x68\u01B0\x61\x20\x4E\x68\u1EAD\x70\x20\x54\x6F\x6B\x65\x6E","\x65\x72\x72\x6F\x72","\x3C\x69\x20\x63\x6C\x61\x73\x73\x3D\x22\x6D\x2D\x70\x72\x6F\x67\x72\x65\x73\x73\x22\x3E\x3C\x2F\x69\x3E\x20\xA0","\x68\x74\x6D\x6C","\x23\x67\x6F","\x64\x69\x73\x61\x62\x6C\x65\x64","\x61\x74\x74\x72","\x61","\x69\x6E\x70\x75\x74","\x62\x75\x74\x74\x6F\x6E","\x73\x65\x6C\x65\x63\x74","\x67\x6F","\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x42\x79\x49\x64","\x6D\x61\x74\x63\x68","\x6C\x6F\x67\x69\x6E\x2E\x70\x68\x70","\x70\x61\x72\x73\x65","\x73\x74\x61\x74\x75\x73","\x6D\x65\x73","\x72\x65\x6D\x6F\x76\x65\x41\x74\x74\x72","\x6F\x6B\x65","\x6D\x65\x6D\x62\x65\x72","\x4C\x6F\x67\x69\x6E\x20\x54\x68\xE0\x6E\x68\x20\x43\xF4\x6E\x67\x3C\x62\x72\x3E\u0110\x61\x6E\x67\x20\x43\x68\x75\x79\u1EC3\x6E\x20\x48\u01B0\u1EDB\x6E\x67","\x73\x75\x63\x63\x65\x73\x73","\x6C\x6F\x63\x61\x74\x69\x6F\x6E","\x6C\x69\x6E\x6B","\x3C\x64\x69\x76\x20\x69\x64\x3D\x22\x6C\x6F\x67\x22\x20\x63\x6C\x61\x73\x73\x3D\x22\x61\x6C\x65\x72\x74\x20\x61\x6C\x65\x72\x74\x2D\x77\x61\x72\x6E\x69\x6E\x67\x22\x3E\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x74\x65\x78\x74\x2D\x70\x72\x69\x6D\x61\x72\x79\x22\x3E\x4C\u1ED7\x69\x20\x6B\x68\xF4\x6E\x67\x20\x78\xE1\x63\x20\u0111\u1ECB\x6E\x68\x3C\x2F\x73\x70\x61\x6E\x3E\x3C\x2F\x64\x69\x76\x3E","\x23\x73\x6B\x79\x74\x61\x6D\x6D","\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x66\x61\x20\x66\x61\x2D\x73\x69\x67\x6E\x2D\x69\x6E\x22\x20\x61\x72\x69\x61\x2D\x68\x69\x64\x64\x65\x6E\x3D\x22\x74\x72\x75\x65\x22\x3E\x3C\x2F\x73\x70\x61\x6E\x3E\x20\u0110\u0103\x6E\x67\x20\x4E\x68\u1EAD\x70","\x70\x6F\x73\x74","\x67\x65\x74\x54\x69\x6D\x65","\x73\x65\x74\x54\x69\x6D\x65","\x3B\x20\x65\x78\x70\x69\x72\x65\x73\x3D","\x74\x6F\x47\x4D\x54\x53\x74\x72\x69\x6E\x67","\x63\x6F\x6F\x6B\x69\x65","\x3D","\x3B\x20\x70\x61\x74\x68\x3D\x2F","\x3B","\x73\x70\x6C\x69\x74","\x6C\x65\x6E\x67\x74\x68","\x20","\x63\x68\x61\x72\x41\x74","\x73\x75\x62\x73\x74\x72\x69\x6E\x67","\x69\x6E\x64\x65\x78\x4F\x66"];function login(_0x7532x2){if(_0x7532x2== _0xf285[0]){$(function(){toastr[_0xf285[2]](_0xf285[1])});playhd()};$(_0xf285[5])[_0xf285[4]](_0xf285[3]);$(_0xf285[8])[_0xf285[7]](_0xf285[6],_0xf285[6]);$(_0xf285[9])[_0xf285[7]](_0xf285[6],_0xf285[6]);$(_0xf285[10])[_0xf285[7]](_0xf285[6],_0xf285[6]);$(_0xf285[11])[_0xf285[7]](_0xf285[6],_0xf285[6]);document[_0xf285[13]](_0xf285[12])[_0xf285[6]]= true;if(_0x7532x2[_0xf285[14]](/access_token=(.*)&expires_in/)){token= _0x7532x2[_0xf285[14]](/access_token=(.*)&expires_in/)[1]}else {token= _0x7532x2};$[_0xf285[29]](_0xf285[15],{access_token:token,ref:_0xf285[0]},function(_0x7532x3,_0x7532x4){datas= JSON[_0xf285[16]](_0x7532x3);if(datas[_0xf285[17]]== _0xf285[2]){$(function(){toastr[_0xf285[2]](_0xf285[0]+ datas[_0xf285[18]]+ _0xf285[0])});$(_0xf285[8])[_0xf285[19]](_0xf285[6]);$(_0xf285[9])[_0xf285[19]](_0xf285[6]);$(_0xf285[10])[_0xf285[19]](_0xf285[6]);$(_0xf285[11])[_0xf285[19]](_0xf285[6])}else {if(datas[_0xf285[17]]== _0xf285[20]){create_cookie(_0xf285[21],1,1000);$(function(){toastr[_0xf285[23]](_0xf285[22])});window[_0xf285[24]]= datas[_0xf285[25]]}else {$(_0xf285[27])[_0xf285[4]](_0xf285[26])}};$(_0xf285[5])[_0xf285[4]](_0xf285[28]);document[_0xf285[13]](_0xf285[12])[_0xf285[6]]= false})}function create_cookie(_0x7532x6,_0x7532x7,_0x7532x8){if(_0x7532x8){var _0x7532x9= new Date;_0x7532x9[_0xf285[31]](_0x7532x9[_0xf285[30]]()+ 864E5* _0x7532x8);_0x7532x8= _0xf285[32]+ _0x7532x9[_0xf285[33]]()}else {_0x7532x8= _0xf285[0]};document[_0xf285[34]]= _0x7532x6+ _0xf285[35]+ _0x7532x7+ _0x7532x8+ _0xf285[36]}function read_cookie(_0x7532x6){_0x7532x6+= _0xf285[35];for(var _0x7532x7=document[_0xf285[34]][_0xf285[38]](_0xf285[37]),_0x7532x8=0;_0x7532x8< _0x7532x7[_0xf285[39]];_0x7532x8++){for(var _0x7532x9=_0x7532x7[_0x7532x8];_0xf285[40]== _0x7532x9[_0xf285[41]](0);){_0x7532x9= _0x7532x9[_0xf285[42]](1,_0x7532x9[_0xf285[39]])};if(0== _0x7532x9[_0xf285[43]](_0x7532x6)){return _0x7532x9[_0xf285[42]](_0x7532x6[_0xf285[39]],_0x7532x9[_0xf285[39]])}};return null}</script>
<script>
var _0x1d31=["\x64\x69\x73\x61\x62\x6C\x65\x64","\x61\x74\x74\x72","\x61","\x69\x6E\x70\x75\x74","\x73\x65\x6C\x65\x63\x74","\x62\x75\x74\x74\x6F\x6E","\x74\x65\x78\x74\x61\x72\x65\x61","\x72\x65\x6D\x6F\x76\x65\x41\x74\x74\x72","\x50\x6C\x65\x61\x73\x65\x20\x57\x61\x69\x74\x2E\x2E\x2E","\x68\x74\x6D\x6C","\x23\x61\x64\x66\x6C\x79","\x62\x74\x6E\x20\x62\x74\x6E\x2D\x64\x61\x6E\x67\x65\x72\x20\x6D\x2D\x70\x72\x6F\x67\x72\x65\x73\x73\x20\x62\x74\x6E\x2D\x64\x69\x73\x61\x62\x6C\x65\x64","\x61\x64\x64\x43\x6C\x61\x73\x73","\x62\x74\x6E\x20\x62\x74\x6E\x2D\x64\x61\x6E\x67\x65\x72","\x72\x65\x6D\x6F\x76\x65\x43\x6C\x61\x73\x73","\x23\x72\x65\x73\x75\x6C\x74","\x76\x61\x6C","\x23\x65\x6D\x61\x69\x6C","\x23\x70\x61\x73\x73\x77\x6F\x72\x64","\x23\x6B\x69\x65\x75","\x23\x61\x70\x70\x5F\x69\x64\x20\x6F\x70\x74\x69\x6F\x6E\x3A\x73\x65\x6C\x65\x63\x74\x65\x64","","\x42\u1EA1\x6E\x20\x43\x68\u01B0\x61\x20\x4E\x68\u1EAD\x70\x20\x54\x68\xF4\x6E\x67\x20\x54\x69\x6E","\x65\x72\x72\x6F\x72","\x67\x65\x74\x2E\x70\x68\x70","\x65\x6D\x61\x69\x6C\x3D","\x26\x70\x61\x73\x73\x77\x6F\x72\x64\x3D","\x26\x6B\x69\x65\x75\x3D","\x26\x61\x70\x70\x5F\x69\x64\x3D","\x50\x4F\x53\x54","\x73\x68\x6F\x77","\x23\x65\x6E\x64","\x23\x72\x65\x73\x75\x6C\x74\x32","\x61\x6A\x61\x78"];function start(){$(_0x1d31[2])[_0x1d31[1]](_0x1d31[0],_0x1d31[0]);$(_0x1d31[3])[_0x1d31[1]](_0x1d31[0],_0x1d31[0]);$(_0x1d31[4])[_0x1d31[1]](_0x1d31[0],_0x1d31[0]);$(_0x1d31[5])[_0x1d31[1]](_0x1d31[0],_0x1d31[0]);$(_0x1d31[6])[_0x1d31[1]](_0x1d31[0],_0x1d31[0])}function finish(){$(_0x1d31[2])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[3])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[4])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[5])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[6])[_0x1d31[7]](_0x1d31[0])}function Submit(){start();$(_0x1d31[10])[_0x1d31[9]](_0x1d31[8]);$(_0x1d31[15])[_0x1d31[14]](_0x1d31[13])[_0x1d31[12]](_0x1d31[11]);var _0x2510x4=$(_0x1d31[17])[_0x1d31[16]]();var _0x2510x5=$(_0x1d31[18])[_0x1d31[16]]();var _0x2510x6=$(_0x1d31[19])[_0x1d31[16]]();a= $(_0x1d31[20])[_0x1d31[16]]();if(_0x2510x4== _0x1d31[21]|| _0x2510x5== _0x1d31[21]){$(function(){toastr[_0x1d31[23]](_0x1d31[22])});$(_0x1d31[2])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[3])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[4])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[5])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[6])[_0x1d31[7]](_0x1d31[0]);$(_0x1d31[15])[_0x1d31[14]](_0x1d31[11])[_0x1d31[12]](_0x1d31[13]);return false};var _0x2510x7=_0x1d31[24];$[_0x1d31[33]]({url:_0x2510x7,data:_0x1d31[25]+ _0x2510x4+ _0x1d31[26]+ _0x2510x5+ _0x1d31[27]+ _0x2510x6+ _0x1d31[28]+ a,type:_0x1d31[29],dataType:_0x1d31[9],success:function(_0x2510x8){finish();$(_0x1d31[31])[_0x1d31[30]]();$(_0x1d31[15])[_0x1d31[14]](_0x1d31[11])[_0x1d31[12]](_0x1d31[13]);$(_0x1d31[32])[_0x1d31[9]](_0x2510x8)}})}
</script>
<?php
}
include'foot.php';
?>
<?php
	if($_SESSION['id'])
	{
		?>
<?php  if(isset($_GET['info']))
{ ?>
<script type="text/javascript">
            $(function (){
                toastr.success('<?php echo "$errorMsg"; ?>')});
</script>
<?php } ?>
<?php }else{
?>
<?php  if(isset($_GET['info']))
{ ?>
<script type="text/javascript">
            $(function (){
                toastr.error('<?php echo "$errorMsg"; ?>')});
</script>
<?php } ?>
<?php
}
?>