<div class="admin-login-bound">
	<div class="admin-login-form clear" style="position:static;margin-top:100px">
        <div style="width:500px;margin:0 auto;">
        	<ul class="privilege-list">
                <!--LIST:categories-->
                <li>
                    <a><strong>[[|categories.name|]]</strong></a>
                    <!--IF:child([[=categories.child=]])-->
                    <ul class="privilege-list-childs">
                        <!--LIST:categories.child-->
                        <li><a href="[[|categories.child.url|]]" target="_blank">[[|categories.child.name|]]</a></li>
                        <!--/LIST:categories.child-->
                    </ul>
                    <!--/IF:child-->
                </li>
                <!--/LIST:categories-->
                <li><a class="sign-in-link" href="<?php echo URL::build('sign_out');?>&href=<?php echo $_SERVER['REQUEST_URI'];?>">[[.logout.]]</a></li>
            </ul>
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
.counsel{width:100%;padding:10px 0;font-size:12px;color:#fff;text-align:center;}
.counsel a{padding:0 5px;}
.privilege-list a{color:#fff;}
.privilege-list-childs{padding-left:20px;}
</style>