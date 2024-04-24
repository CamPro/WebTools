<div class="navbar-header" style="padding: 0px 0px 26px 10px;">
    <a href="javascript:void(0);" class="bars" style="color:#000;"></a>
</div>
<?php 
$startdate = date("Y-m-d H:i:s"); 
$enddate = Session::get('user_data','expiration_date'); 
$diff=strtotime($enddate)-strtotime($startdate); 
$days = floor($diff/86400)+1;
?>
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- Menu -->
        <div class="user-info">
            <div class="image">
                <img src="skins/news/images/user.png" width="45" height="45" alt="User">
            </div>
            <div class="info-container">
                <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Chào, <?php echo Session::get('user_data','full_name');?></div>
                <br/><small style="color:#FFF;font-size:9px;">Được <?php echo Session::get('user_data','maximum_facebook_accounts');?> acc và <?php echo $days;?> ngày sử dụng</small>
                <div class="money" style="color: #fff;cursor:help" title=""><i class="material-icons" style="font-size: 14px">account_balance_wallet</i><a href="<?php echo Url::build('profile',array('cmd'=>'upgrade'));?>" style="color:#FF0;text-decoration:none;"><span style="vertical-align: 2px;margin-left: 5px;"><b><?php echo System::display_number(Session::get('user_data','sobcoin'));?></b> XU</span></a></div>
				<?php if(Session::is_set('user_temp') and Session::get('user_temp')){?><br/><a href="<?php echo Url::build_current(array('act'=>'back_login'));?>" style="font-size:11px;color:#FF0;text-decoration:underline"><< Trở về admin</a><?php }?>
            </div>
        </div>
        <div class="menu">
            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 184px;">
            <ul class="list" style="height: 286px; overflow: hidden; width: auto;">
            <li class="header">CHỨC NĂNG</li>
            <li>
                <a href="<?php echo WEBSERVER ;?>" class=" waves-effect waves-block">
                    <i class="material-icons">account_balance</i>
                    <span>TRANG CHỦ</span>
                </a>
            </li>
            <li>
                <a href="<?php echo Url::build('help');?>" target="_blank" class=" waves-effect waves-block">
                    <i class="material-icons">help</i>
                    <span>HƯỚNG DẪN SỬ DỤNG</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block<?php if((Url::get('page')=='schedules') or (Url::get('page')=='save_post' and !Url::get('type')) or (Url::get('page')=='dashboard')){echo ' toggled';}?>">
                    <i class="material-icons">assessment</i>
                    <span>ĐĂNG BÀI TỰ ĐỘNG</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="<?php echo Url::build('save_post',array('cmd'=>'add'));?>" class="toggled waves-effect waves-block">Đăng tự động</a>
                    </li>  
                     <li>
                        <a href="<?php echo Url::build('schedules');?>" class=" waves-effect waves-block">Lịch đăng</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('save_post');?>" class=" waves-effect waves-block">Mẫu bài đăng</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('dashboard');?>" class=" waves-effect waves-block">Báo cáo thống kê</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block<?php if((Url::get('page')=='join_group_by_uid') or (Url::get('page')=='join_group') or (Url::get('page')=='add_mem_group') or (Url::get('page')=='schedules_group') or (Url::get('type')=='group') or (Url::get('page')=='up_top_group')){echo ' toggled';}?>">
                    <i class="material-icons">public</i>
                    <span>NUÔI NHÓM FACEBOOK</span>
                </a>
				<ul class="ml-menu">
                    <li>
                        <a href="<?php echo Url::build('save_post',array('cmd'=>'add','type'=>'group'));?>" class=" waves-effect waves-block">Tự động đăng lên nhóm</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('join_group');?>" class=" waves-effect waves-block">Tự động tham gia nhóm</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('join_group_by_uid');?>" class=" waves-effect waves-block">Tham gia nhóm theo UID</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('add_mem_group');?>" class=" waves-effect waves-block">Tự động mời bạn vào nhóm</a>
                    </li>
                    <li>
                        <a href="<?php echo Url::build('up_top_group');?>" class=" waves-effect waves-block">Tự động up top bài viết</a>
                    </li>
                     <li>
                        <a href="<?php echo Url::build('schedules_group');?>" class=" waves-effect waves-block">Lịch thực hiện nhóm</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block<?php if((Url::get('page')=='auto_comment') or (Url::get('page')=='auto_reaction') or (Url::get('page')=='auto_lech_by_id') or (Url::get('page')=='auto_lech_profile') or (Url::get('page')=='make_friend_by_uid') or (Url::get('page')=='message_inbox') or (Url::get('page')=='schedules_friend') or (Url::get('page')=='auto_cancel_friend') or (Url::get('page')=='auto_accept_friend') or (Url::get('page')=='auto_make_friend')){echo ' toggled';}?>">
                    <i class="material-icons">people</i>
                    <span>NUÔI NICK FACEBOOK</span>
                </a>
                <ul class="ml-menu">
                    <li><a href="<?php echo Url::build('auto_make_friend');?>">Tự động kết bạn</a></li> 
                    <li><a href="<?php echo Url::build('make_friend_by_uid');?>">Kết bạn theo list UID</a></li>                     
                    <li><a href="<?php echo Url::build('auto_accept_friend');?>" class=" waves-effect waves-block">Tự động chấp nhận kết bạn</a></li>  
                    <li><a href="<?php echo Url::build('auto_cancel_friend');?>" class=" waves-effect waves-block">Tự động hủy kết bạn</a></li>     
                    <li><a href="<?php echo Url::build('auto_lech_by_id');?>" class=" waves-effect waves-block">Copy bài lên trang cá nhân</a></li>                         
                    <li><a href="<?php echo Url::build('auto_reaction');?>" class=" waves-effect waves-block">Tự động thể hiện cảm xúc các bài viết trên newfeed</a></li>                         
                    <li><a href="<?php echo Url::build('auto_comment');?>" class=" waves-effect waves-block">Tự động comment các bài viết trên newfeed</a></li>                                             
                    <li><a href="<?php echo Url::build('auto_lech_profile');?>" class=" waves-effect waves-block">Tự động lấy bài đăng của người khác</a></li>                         
                    <li style="display:none"> 
                        <a href="<?php echo Url::build('message_inbox');?>" class=" waves-effect waves-block">Danh sách inbox</a>
                    </li>           
                     <li><a href="<?php echo Url::build('schedules_friend');?>" class=" waves-effect waves-block">Lịch thực hiện</a></li>   
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block<?php if((Url::get('page')=='auto_lech_page') or (Url::get('page')=='auto_reaction_page')){echo ' toggled';}?>">
                    <i class="material-icons">perm_media</i>
                    <span>NUÔI PAGE FACEBOOK</span>
                </a>
                <ul class="ml-menu">
                    <li><a href="<?php echo Url::build('auto_lech_page');?>">Tự động lấy bài đăng của page khác</a></li>
                    <li><a href="<?php echo Url::build('auto_reaction_page');?>">Tự động thả tim bài đăng của Page/Profile</a></li>                                        
                 </ul>
            </li>        
            <li>
                <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block<?php if((Url::get('page')=='seeding_like') or (Url::get('page')=='seeding_comment') or (Url::get('page')=='get_token_full') or (Url::get('page')=='fake_link_facebook')){echo ' toggled';}?>">
                    <i class="material-icons">settings</i>
                    <span>TOOL FACEBOOK</span>
                </a>
                <ul class="ml-menu">
                    <li><a href="<?php echo Url::build('get_token_full');?>">Get token hàng loạt</a></li>
					<li><a href="<?php echo Url::build('fake_link_facebook');?>">Fake link facebook</a></li>
    				<li><a href="<?php echo Url::build('seeding_like');?>">Seeding Like</a></li> 
                     <li><a href="<?php echo Url::build('seeding_comment');?>">Seeding Comment</a></li> 
                     <li><a href="http://link4ad.com/" target="_blank">Kiếm tiền Online</a></li> 
                </ul>
            </li> 
            <li<?php if((Url::get('page')=='facebook_accounts') and !Url::get('cmd')){echo ' class="active"';}?>>
                <a href="<?php echo Url::build('facebook_accounts');?>" class=" waves-effect waves-block">
                	<i class="material-icons">face</i>
                	<span>TÀI KHOẢN FACEBOOK</span>
                </a>
            </li>    
             
            <li>
                <a href="<?php echo Url::build('profile',array('cmd'=>'upgrade'));?>" class=" waves-effect waves-block">
                    <i class="material-icons">attach_money</i>
                    <span>NÂNG CẤP TÀI KHOẢN</span>
                </a>
            </li>
           <li>
                <a href="<?php echo Url::build('make_money');?>" class=" waves-effect waves-block">
	                <div class="new-badge">HOT</div>
                    <i class="material-icons">euro_symbol</i>
                    <span>KIẾM TIỀN</span>
                </a>
            </li>
            <li data-toggle="modal" data-target="#smallModal">
                <a href="<?php echo Url::build('profile');?>" class=" waves-effect waves-block">
                    <i class="material-icons">vpn_key</i>
                    <span>ĐỔI MẬT KHẨU</span>
                </a>
            </li>
            <li>
                <a href="<?php echo Url::build('sign_out');?>" class=" waves-effect waves-block">
                    <i class="material-icons">input</i>
                    <span>ĐĂNG XUẤT</span>
                </a>
            </li>
                <?php if(User::is_admin()){?>
                <li class="header">QUẢN TRỊ WEBSITE</li>
                 <li>
                    <a href="<?php echo Url::build('payment');?>" class=" waves-effect waves-block">Thanh toán hoa hồng TV</a>
                </li>
                <li>
                    <a href="<?php echo Url::build('upgrade_management');?>" class=" waves-effect waves-block">Quản lý nâng cấp tài khoản</a>
                </li>
                 <li>
                    <a href="<?php echo Url::build('help_management');?>" class=" waves-effect waves-block">Quản lý hướng dẫn sử dụng</a>
                </li>
                <li>
                    <a href="<?php echo Url::build('user_management');?>" class=" waves-effect waves-block">Quản lý người dùng</a>
                </li>
                <li>
                    <a href="<?php echo Url::build('user_setting');?>" class=" waves-effect waves-block">Cấu hình hệ thống</a>
                </li>
                <?php }?>
             </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>
<?php if(Portal::get_setting('is_notice') and !Session::is_set('not_show_notice')){?>
<div class="modal fade in" id="defaultModal" tabindex="-1" role="dialog" style="display: block;">
        <div class="modal-dialog" role="document">
            <div class="modal-content ">
                <div class="modal-header" style="margin-bottom:0px;padding-bottom:0px;">
                    <h4 class="modal-title" id="defaultModalLabel"><?php echo Portal::get_setting('notice_title');?></h4>
                   <div style="position:absolute;top:15px;right:10px;"> <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">ĐÓNG</button></div>
                </div>
                <div class="modal-body"><?php echo Portal::get_setting('notice');?></div>
                <div class="modal-footer">
                    <div style="float:left">
                        <input type="hidden" name="notification-id" value="32">
                        <input type="checkbox" id="disabled-notification" class="filled-in">
                        <label for="disabled-notification">Lần sau không hiện thông báo này nữa</label>
                    </div>
                    <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">ĐÓNG</button>
                </div>
            </div>
        </div>
    </div>
<script>
 $("#defaultModal").modal('show');
  $("#disabled-notification").on('change', function () {
		$(this).attr('disabled', 'disabled');
		$.get('<?php echo Url::build_current(array('cmd'=>'not_show_notice'));?>');
		location.reload();
	});
</script>
<?php }?>
<style>
.new-badge{
	position: absolute;
    left: 114px;
    top: 0px;
    padding: 2px 3px;
    border-radius: 2px;
    background: #fe6363;
    color: #fff;
    font-size: 10px;
    font-weight: 500;	
}
</style>