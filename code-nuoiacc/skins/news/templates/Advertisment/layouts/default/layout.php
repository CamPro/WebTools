<div class="advertisment-bound" style=" <?php if(Module::get_setting('extend_css')){ echo Module::get_setting('extend_css'); }?>">
<!--LIST:items-->
 <!--IF:html_code([[=items.html_code=]])-->
     <div style=" <?php echo Module::get_setting('internal_css');?>'">
        [[|items.html_code|]]
	</div>        
    <!--ELSE-->
    <?php
    $height = ''; $width = '';
    if(isset([[=items.height=]]) and [[=items.height=]]) $height = 'height="'.[[=items.height=]].'px"';
    if(isset([[=items.width=]]) and [[=items.width=]]) $width = 'width="'.[[=items.width=]].'px"';
    ?>
    
    <?php
    if(strpos([[=items.image_url=]],'.swf'))
    {
        ?>
        <embed src="[[|items.image_url|]]" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="[[|items.width|]]" height="[[|items.height|]]"></embed>
        <?php
    }
    else
    {
        $taget = 'target="_blank" ';
        if(Module::$current->data['name']=='banner')
        {
            $taget = '';
        }
        if([[=items.url=]]!="")
        {
            echo '<a '.$taget.' href="'.[[=items.url=]].'" rel="nofollow"><img src="'.[[=items.image_url=]].'" title="'.[[=items.name=]].'" alt="'.[[=items.name=]].'" '.$width.' '.$height.' style="'.Module::get_setting('internal_css').'"/></a>';
        }
        else
        {
            echo '<img src="'.[[=items.image_url=]].'" title="'.[[=items.name=]].'" alt="'.[[=items.name=]].'" '.$width.' '.$height.' style="'.Module::get_setting('internal_css').'"/>';
        }
    }
    ?>
    <!--/IF:html_code-->
<!--/LIST:items-->
<?php if(User::can_admin(MODULE_MEDIAADMIN,ANY_CATEGORY)){?>
<div align="center">[<a target="_blank" style=" <?php echo Module::get_setting('manage_link_extra');?>" href="<?php echo Url::build('manage_advertisment',array('page_id'=>Module::$current->data['page_id'],'region'=>Module::$current->data['name']))?>">[[.adv_list.]]</a>]&nbsp;[<a target="_blank" style=" <?php echo Module::get_setting('manage_link_extra');?>" href="<?php echo Url::build('manage_advertisment',array('cmd'=>'advertisment','page_id'=>Module::$current->data['page_id'],'region'=>Module::$current->data['name']))?>">[[.add_adv.]]</a>]</div>
<?php }?>
</div>