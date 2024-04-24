<div class="frame-title-bound" <?php if(Module::get_setting('extra_css_bound')){ echo 'style="'.Module::get_setting('extra_css_bound').'"'; }?> >
    <div class="frame-title-title" <?php if(Module::get_setting('title_color')){echo 'style="color:'.Module::get_setting('title_color').';"';}?>>
        <div class="frame-title-title-left">
            <div class="frame-title-title-right">
                <div class="frame-title-title-center">
                <?php if(Module::get_setting('frame_icon_title') and file_exists(Module::get_setting('frame_icon_title'))){?><span class="frame-title-icon"><img src="<?php echo Module::get_setting('frame_icon_title');?>" /></span><?php }?>
                <?php if(Module::get_setting('frame_title_link')){?>
                    <a href="<?php echo Module::get_setting('frame_title_link');?>" class="frame-title-link">{{-title-}}</a>
                <?php }else{ ?>
                    {{-title-}}
                <?php }?>
                </div>
            </div>
        </div>
    </div>
    <div class="frame-title-content-bound">
        <div class="frame-title-content-left">
            <div class="frame-title-content-right">
	            <div class="frame-title-content">{{-content-}}</div>
            </div></div></div>
    <div class="frame-title-bottom"><div class="frame-title-bottom-left"><div class="frame-title-bottom-right"></div></div></div>
</div>
<div class="clear"></div>