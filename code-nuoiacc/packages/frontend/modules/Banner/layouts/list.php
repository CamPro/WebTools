<?php if(!User::is_login()){?>
<div class="login-box">
    <div class="logo">
    	<div align="center"><img src="<?php echo Portal::get_setting('website_logo');?>" width="300"></div>
        <small style="font-size:20px;padding-top:10px;"><?php if(!Url::get('act')){?>ĐĂNG NHẬP HỆ THỐNG<?php }elseif(Url::get('act')=='register'){echo 'ĐĂNG KÝ THÀNH VIÊN';}else{echo 'QUÊN MẬT KHẨU TÀI KHOẢN';}?></small>
    </div>
    <div class="card" style="margin-top:-10px;">
        <div class="body">
        	<?php if(Url::get('act')=='forgot_password'){?>
			 <div class="register">
                <form action="<?php echo Url::build_current(array('cmd'=>'forgot_password'));?>" data-redirect="<?php echo Url::build_current(array('act'=>'forgot_password'));?>">
                	<div class="input-group">
                    Để lấy lại mật khẩu bạn vui lòng nhập địa chỉ Email của mình vào đây.
                    </div>
                	<div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email tài khoản">
                        </div>
                    </div>
                      <div class="col-xs-4">
                    	<input name="ref" type="hidden" id="ref">
	                   <button type="submit" class="btn btn-block bg-pink waves-effect btnActionUpdate">Cấp lại</button>
                    </div>   
                    <div class="m-t-25 m-b--5 align-center">
                        <a href="<?php echo Url::build_current(array('act'=>'register'));?>">Đăng ký</a> nếu bạn chưa có tài khoản
                    </div>
                </form>
                <br/>
             </div>
            <?php }elseif(Url::get('act')=='register'){?>
				<?php if(Portal::get_setting('register')==1){?>
                	<div class="register">
                 <form action="<?php echo Url::build_current(array('cmd'=>'register'));?>" data-redirect="<?php echo(Portal::get_setting('auto_active_user')?Url::build('dashboard'):Url::build('home'));?>">
                    <div class="msg">Khi đăng ký sử dụng HỆ THỐNG HỖ TRỢ BÁN HÀNG ONLINE FACEBOOK 24/24, bạn được thưởng <b style="color:#F00"><?php echo Portal::get_setting('sobcoin_reward');?></b> Sobcoin vào tài khoản.</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
						 <input type="text" class="form-control" name="full_name" placeholder="Họ và tên" autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">email</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email">
                        </div>
                    </div>
                   <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">phone</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" required="">
                        </div>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                                    <input type="password" class="form-control" name="password" minlength="6" placeholder="Mật khẩu">
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                                    <input type="password" class="form-control" name="repassword" minlength="6" placeholder="Nhập lại mật khẩu">
                        </div>
                    </div>
                    <div class="col-xs-4">
                    	<input name="ref" type="hidden" id="ref">
	                   <button type="submit" class="btn btn-block bg-pink waves-effect btnActionUpdate">Đăng ký</button>
                    </div>   
                    <div class="m-t-25 m-b--5 align-center">
                        <a href="<?php Url::build_current(array('act'=>'login'));?>">Đăng nhập</a> nếu bạn đã có tài khoản
                    </div>
                    <br/>
                </form>
            </div>
                <?php } else {?>
                	<div class="notice_bound" style="font-size:26px">
                    	<img class="img" src="https://static.fhan4-1.fna.fbcdn.net/images/emoji.php/v9/fb0/1/16/1f3af.png" alt="" width="18" height="18"> Hệ Thống Đã Tắt Chức Năng Đăng Ký Tài Khoản !
                    </div>
                <?php } ?>
            
            <?php }else{?>
            <div class="login">
            <form action="<?php echo Url::build_current(array('cmd'=>'login'));?>" data-redirect="<?php echo Url::build('dashboard');?>">
            <div class="msg"><?php echo Portal::get_setting('website_description');?></div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">person</i>
                    </span>
                    <div class="form-line">
                      <input type="text" class="form-control" name="email" placeholder="[[.Email.]]" required="" autofocus="" value="demo@gpcorp.vn">
                    </div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">lock</i>
                    </span>
                    <div class="form-line">
                        <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required="" value="123456@">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-8 p-t-5">
                        <input type="checkbox" name="remember" id="remember" class="filled-in chk-col-pink">
                        <label for="remember">Nhớ tài khoản</label>
                    </div>
                    <div class="col-xs-4">
                        <button class="btn btn-block bg-pink waves-effect btnActionUpdate" type="submit">Đăng nhập</button>
                    </div>
                </div>
                <div class="row m-t-15 m-b--20">
                    <div class="col-xs-6">
                        <a href="<?php echo Url::build_current(array('act'=>'register'));?>" class="font-bold">ĐĂNG KÝ NGAY !</a>
                    </div>
                    <div class="col-xs-6 align-right">
                        <a href="<?php echo Url::build_current(array('act'=>'forgot_password'))?>">Quên mật khẩu?</a>
                    </div>
                </div>
            </form>
            </div>
            <?php }?>
        </div>
    </div>
</div>

<?php }?>