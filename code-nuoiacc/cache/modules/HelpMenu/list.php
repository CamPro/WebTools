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
            <?php
					if(isset($this->map['items']) and is_array($this->map['items']))
					{
						foreach($this->map['items'] as $key1=>&$item1)
						{
							if($key1!='current')
							{
								$this->map['items']['current'] = &$item1;?>
                <?php if($this->map['items']['current']['level']==1){?>
            <h6 class="text-muted text-uppercase"><?php echo $i++;?>. <?php echo $this->map['items']['current']['title'];?></h6>
            <?php }else{?>
             <div><a href="<?php echo Url::build_current(array('id'=>$this->map['items']['current']['id']));?>"><span><?php echo $this->map['items']['current']['title'];?></span></a></div>
                <?php }?>
            
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>             
        </div>
        <div class="content col-md-9"><?php Module::get_sub_regions("content");?></div>
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