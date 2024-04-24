<header class="header fixed-sticky">
    <div class="container">
        <nav class="heading-font">
            <!-- branding -->
            <div class="branding">
                <!-- toggle menu -->
                <button class="mobile-toggle" type="button">
                <span class="ti-menu">
                </span>
                </button>
                <!-- /toggle menu -->
                <a class="logo" href="/" target="_blank">HƯỚNG DẪN SỬ DỤNG HỆ THỐNG</a>
            </div>
            <!-- /branding -->
        </nav>
    </div>
</header>
<div style="clear:both">&nbsp;</div>
<section class="content-section">
	<div class="container">
        <div class="col-md-3">
            <h6 class="text-muted text-uppercase">Menu hướng dấn sử dụng</h6>
            <?php $i=1;?>
            <!--LIST:items-->
                <?php if([[=items.level=]]==1){?>
            <h6 class="text-muted text-uppercase"><?php echo $i++;?>. [[|items.title|]]</h6>
            <?php }else{?>
             <div><a href="<?php echo Url::build_current(array('id'=>[[=items.id=]]));?>"><span>[[|items.title|]]</span></a></div>
                <?php }?>
            <!--/LIST:items-->             
        </div>
        <div class="content col-md-9">[[--content--]]</div>
	 </div>
</section>
<footer class="content-section">
	<div class="container">
		<div class="row text-center">
			<div class="col-sm-12 mb25">
				<small class="show">Hệ thống Facebook Marketing, tool nuôi nick, lên lịch post trên fanpage, group, mời bạn bè vào group, fake link spam..</small>
			</div>
		</div>
	</div>
</footer>
<style>
.content img{
	max-width:100%;	
}
</style>