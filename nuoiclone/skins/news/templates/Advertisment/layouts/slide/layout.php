<LINK rel="stylesheet" href="skins/news/css/slick.css" type="text/css">
<script type="text/javascript" src="skins/news/js/slick.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(){		
		jQuery('#photos_<?php echo Module::block_id();?>').slick({
			slidesToShow:1,
			slidesToScroll:1,
			arrows:false,
			autoplay:true,
			autoplaySpeed: 4000,
			speed: 700
		});
	});
</script>
<div style="width:697px;<?php if(Module::get_setting('extend_css')){ echo Module::get_setting('extend_css'); }?>;overflow:hidden;" align="center">
	<div id="photos_<?php echo Module::block_id();?>" class="galleryview" style="margin-top:10px;">
		<!--LIST:items-->
		<div class="panel">
			<a target="_blank" <?php if([[=items.url=]]){ echo 'href="'.[[=items.url=]].'"'; }?> rel="nofollow">
				<img src="[[|items.image_url|]]" alt="[[|items.name|]]" style="<?php echo Module::get_setting('internal_css');?>"/> 
			</a>
		  </div>  
		<!--/LIST:items--> 
	</div>
</div>
<?php if(User::can_admin(MODULE_MEDIAADMIN,ANY_CATEGORY)){?>
<div align="center">[<a target="_blank" href="<?php echo Url::build('manage_advertisment',array('page_id'=>Module::$current->data['page_id'],'region'=>Module::$current->data['name']))?>">[[.adv_list.]]</a>]&nbsp;[<a target="_blank" href="<?php echo Url::build('manage_advertisment',array('cmd'=>'advertisment','page_id'=>Module::$current->data['page_id'],'region'=>Module::$current->data['name']))?>">[[.add_adv.]]</a>]</div>
<?php }?>

