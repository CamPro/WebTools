<div class="advertisment-bound" style=" <?php if(Module::get_setting('extend_css')){ echo Module::get_setting('extend_css'); }?>">
<?php if(Module::get_setting('title')){?>
<div class="advertisment-title"><?php echo Portal::language(Module::get_setting('title'));?></div>
<?php 
}$i=1;?>
<!--LIST:items-->
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
	if([[=items.url=]]!="")
	{
		echo '<a target="_blank" href="'.[[=items.url=]].'" rel="nofollow"><img class="adv_'.$i.'" src="'.[[=items.image_url=]].'" alt="'.[[=items.name=]].'" '.$width.' '.$height.' style="'.Module::get_setting('internal_css').'" /></a>';
	}
	else
	{
		echo '<img class="adv_'.$i.'" src="'.[[=items.image_url=]].'" alt="'.[[=items.name=]].'" '.$width.' '.$height.' style="'.Module::get_setting('internal_css').'" />';
	}
}
$i++;
?>
<!--/LIST:items-->
<?php if(User::can_admin(MODULE_MANAGEADVERTISMENT,ANY_CATEGORY) or User::can_admin(MODULE_SHOPMANAGEADVERTISMENT,ANY_CATEGORY)){?>
<div align="center">
[<a target="_blank" style=" <?php echo Module::get_setting('manage_link_extra');?>" href="<?php echo Url::build(('manage_advertisment'),array('page_id'=>Url::get('page'),'region'=>Module::$current->data['name']))?>">[[.adv_list.]]</a>]&nbsp;
[<a target="_blank" style=" <?php echo Module::get_setting('manage_link_extra');?>" href="<?php echo Url::build(('manage_advertisment'),array('cmd'=>'add','page_id'=>Url::get('page'),'region'=>Module::$current->data['name']))?>">[[.add_adv.]]</a>]
</div>
<?php }?>
</div>
<style>
.adv_2,.adv_4{margin:0 !important;}
</style>