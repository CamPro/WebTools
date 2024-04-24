<div class="location-bound">
	<div class="user-detail">
    	<div class="detail-up">
            <div class="user-avatar"><a title="Thay avatar" href="ca-nhan.html?cmd=change_avatar"><img src="<?php echo Session::get('user_data','small_thumb_url');?>" onerror="this.src='skins/news/images/no-avatar.jpg'"></a>
            </div>
            <div class="user-info">
                <h3 class="vip vip<?php echo Session::get('user_data','vip');?>">hi, <?php if(Session::get('user_data','full_name')!=""){echo Session::get('user_data','full_name');}else{echo Session::get('user_id');};?>&nbsp;&nbsp;<a href=""></a></h3>
                <a class="personal" href="<?php echo Url::build('overview',array(),REWRITE);?>">[[.trang_ca_nhan.]]</a><a class="sign-in-link" href="<?php echo URL::build('sign_out');?>&href=<?php echo $_SERVER['REQUEST_URI'];?>">[[.logout.]]</a>
                <a class="sign-in-link edit" href="ca-nhan.html?cmd=edit">[[[.edit.]]]</a>
            </div>
        </div>
        <div class="detail-center">
			<div class="confirm-shop">            
	            <h2><img src="skins/news/images/<?php if(Session::get('user_data','reputation')){echo 'verify.png';}else{echo 'unverify.png';}?>"><a target="_blank" href="<?php if(Session::get('user_data','shop_id')){echo Session::get('user_data','shop_id');}else{echo Session::get('user_id');};?>">SHOP <?php if(Session::get('user_data','full_name')!=""){echo Session::get('user_data','full_name');}else{echo Session::get('user_id');};?></a></h2>
    		</div>
            <div class="clear"></div>
			<?php if(!Session::get('user_data','reputation')){?>
            <p class="up-vip"><a href="quan-ly-gian-hang/yeu-cau-tinh-nang-moi.html">[[.up_shop.]]</a></p>
            <?php }else{?>
            <?php }?>
        </div>
        <div class="detail-down">
        	<a href="quan-ly-gian-hang/thong-tin-shop.html">[[.quan_ly_gian_hang.]]</a>
        	<a href="?page=quan-ly-san-pham">[[.manager_product.]]</a>
        	<a href="ca-nhan/quan-ly-don-hang.html">[[.quan_ly_don_hang.]]</a>
            <a href="kiem-tien/kiem-tra-hoa-hong.html">[[.kiem_tra_hoa_hong.]]</a>
        </div>
    </div>
    <div class="clear"></div>
    <div class="content-guide">
    	<a href="tro-giup/huong-dan-mua-hang.html"><img src="/skins/news/images/huong-dan-mua-hang.png"></a>
        <a href="tro-giup/cac-cau-hoi-thuong-gap.html"><img src="/skins/news/images/q&a.png"></a>
        <a href="tro-giup/huong-dan-mua-hang.html"><img src="/skins/news/images/van-chuyen.png"></a>
        <a href="tro-giup/huong-dan-mua-hang.html"><img src="/skins/news/images/thanh-toan.png"></a>
    </div>
    <div class="location-bottom">
        <a href="ymsgr:sendim?trungthanh2941984"><img src="http://opi.yahoo.com/online?u=trungthanh2941984&amp;m=g&amp;t=1&amp;l=us"></a>
        <a href="ymsgr:sendim?thangkho_cuataohoa"><img src="http://opi.yahoo.com/online?u=thangkho_cuataohoa&amp;m=g&amp;t=1&amp;l=us"></a>
        <a href="ymsgr:sendim?zozoha01"><img src="http://opi.yahoo.com/online?u=zozoha01&amp;m=g&amp;t=1&amp;l=us"></a>        
    </div>
</div>
<!--<table cellpadding="5" cellspacing="0" width="100%" class="user-bound">
    <tr>
        <td width="46%" class="sign-in-welcome">[[.welcome.]] : <a target="_blank" href="<?php echo URL::build('personal','',REWRITE);?>"><b style="color:#009EE7;"><?php echo Session::get('user_id')?></b></a></td>
    </tr>
	<?php if(User::can_view(MODULE_NEWSADMIN,ANY_CATEGORY)){?>
    <tr>
        <td class="sign-in-welcome"><a target="_blank" href="<?php echo URL::build('news_admin');?>">[[.manage_content.]]</a><td width="5%"/>
    </tr>
    <tr>
        <td class="sign-in-welcome"><a target="_blank" href="<?php echo URL::build('user_admin','',REWRITE);?>">[[.manage_user.]]</a><td width="5%"/>
    </tr>
	<?php }?>
	<?php if(User::can_view(MODULE_SETTING,ANY_CATEGORY)){?>
    <tr>
        <td class="sign-in-welcome"><a target="_blank" href="<?php echo URL::build('setting','',REWRITE);?>">[[.config_your_site.]]</a><td/>
    </tr>
	<?php }?>    
    <tr>
        <td class="sign-in-welcome"><a class="sign-in-link" href="<?php echo URL::build('sign_out');?>&href=?<?php echo urlencode($_SERVER['QUERY_STRING'])?>">[[.logout.]]</a></td>
    </tr>
</table>-->