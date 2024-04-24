<div class="admin-login-bound">
  <div class="admin-login-content">
	<div class="admin-login-form clear">
        <form name="AdminLogin" id="AdminLogin" method="post">
            <p><input name="user_id" type="text" id="user_id" <?php if($_REQUEST['user_id']){echo 'value="'.$_REQUEST['user_id'].'"';}else{echo 'placeholder="'.Portal::language('account_id').'"';}?> class="adminlogin-input" required="required" autocomplete="off"></p>
            <p><input name="password" type="password" id="password" <?php if($_REQUEST['password']){echo 'value="'.$_REQUEST['password'].'"';}else{echo 'placeholder="'.Portal::language('password').'"';}?> class="adminlogin-input" required="required"></p>
            <div><input name="submit" type="submit" value="" id="submit"></div>
            <p class="clear error"><?php if($_REQUEST['error']){echo Portal::language('admin_login_error');}?></p>
        </form>
    </div>
    </div>
    <div class="clear"></div>
        <div class="counsel">
            <strong>Lưu ý:</strong> Bạn nên cài đặt các trình duyệt hiện đại để sử dụng website một cách tốt nhất
            <p>Nếu chưa cài đặt, bạn có thể chọn một hình ảnh trình duyệt bên dưới để tải về</p>
            <p><a href="https://www.google.com/intl/vi/chrome/browser/desktop/index.html" target="_blank" rel="nofollow" title="Click để tải trình duyệt Chrome"><img src="skins/default/images/login/Chrome.png"></a><a href="https://www.mozilla.org/vi/firefox/new/" target="_blank" rel="nofollow" title="Click để tải trình duyệt Firefox"><img src="skins/default/images/login/Firefox.png"></a><a href="http://coccoc.vn" target="_blank" rel="nofollow" title="Click để tải trình duyệt Cốc cốc"><img src="skins/default/images/login/CocCoc.png"></a></p>
        </div>

</div>
<div class="clear"></div>
<style type="text/css">
body,html{background-color:transparent;}
.admin-login-bound{}
.admin-login-content{
	width:623px;
	height:335px;
	background-image: url(/skins/news/images/login-bg.png);
	background-position:center center;
	background-repeat:no-repeat;
	background-size:cover;
	margin:5% auto 0 auto;
	position:relative;
}
form#AdminLogin {
	position: absolute;
	top: 105px;
    left: 28%;
}
.admin-login-form{
	position:absolute;
	top:0px;
	left:30px;
}
.adminlogin-input{
	width:245px;
	height:41px;
	background-color:transparent;
	background-position:0 0;
	background-repeat:no-repeat;
	border:none;
	text-indent:50px;
	color:#fff;
	letter-spacing:1px;
}
.admin-login-form input:focus{
	outline:none;
}
.adminlogin-input#user_id{background-image:url('skins/default/images/login/user-bg.png');}
.adminlogin-input#password{background-image:url('skins/default/images/login/pass-bg.png');}
.admin-login-form #submit{
	width:115px;
	height:41px;
	border:none;
	background-color:transparent;
	background-image:url('skins/default/images/login/btn-login.png');
	background-position:center center;
	background-repeat:no-repeat;
	background-size:cover;
	cursor:pointer;
}
.admin-login-form #submit:hover{background-image:url('skins/default/images/login/btn-login-h.png');}
.admin-login-form .error{
	color:#fff;
	font-size:11px;
	padding-top:5px;
	line-height:20px;
}
.counsel{width:100%;padding:10px 0;font-size:12px;color:#fff;text-align:center;}
.counsel a{padding:0 5px;}
</style>