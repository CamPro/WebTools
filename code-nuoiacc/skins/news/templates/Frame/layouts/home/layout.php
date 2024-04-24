<div class="frame-home-bound" <?php if(Module::get_setting('extra_css_bound')){ echo 'style="'.Module::get_setting('extra_css_bound').'"'; }?> >
    <div class="frame-home-title">
        <div class="frame-home-title-left">
            <div class="frame-home-title-right">
                <div class="frame-home-title-center">
                <?php if(Module::get_setting('frame_icon_title') and file_exists(Module::get_setting('frame_icon_title'))){?><span class="frame-home-icon"><img src="<?php echo Module::get_setting('frame_icon_title');?>" /></span><?php }?>
                <?php if(Module::get_setting('frame_title_link')){?>
                    <a href="<?php echo Module::get_setting('frame_title_link');?>" class="frame-title-link">{{-title-}}</a>
                <?php }else{ ?>
                    <div>{{-title-}}</div>
                <?php }?>
                </div>
            </div>
        </div>
    </div>
    <div class="frame-home-content-bound">
        <div class="frame-home-content-left">
            <div class="frame-home-content-right">
	            {{-content-}}
            </div></div></div>
    <div class="frame-home-bottom"><div class="frame-home-bottom-left"><div class="frame-home-bottom-right">
    <div class="frame-home-bottom-center">
    </div></div></div></div>
</div><div class="clear"></div>