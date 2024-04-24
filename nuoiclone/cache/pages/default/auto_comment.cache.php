<?php

Module::invoke_event('ONLOAD',System::$false,System::$false);
global $blocks;
global $plugins;
$plugins = array (
);
$blocks = array (
  13073 => 
  array (
    'id' => '13073',
    'module_id' => '315',
    'page_id' => '1047',
    'container_id' => '0',
    'region' => 'content',
    'position' => '2',
    'skin_name' => 'default',
    'layout' => 'default',
    'name' => '',
    'settings' => 
    array (
      '315_layout' => '',
      '315_category_id' => '',
    ),
    'module' => 
    array (
      'id' => '315',
      'name' => 'MenuList',
      'path' => 'packages/frontend/modules/MenuList/',
      'type' => '',
      'action_module_id' => '0',
      'use_dblclick' => '0',
      'package_id' => '4',
    ),
  ),
  13076 => 
  array (
    'id' => '13076',
    'module_id' => '481',
    'page_id' => '1047',
    'container_id' => '0',
    'region' => 'content',
    'position' => '3',
    'skin_name' => 'default',
    'layout' => 'default',
    'name' => '',
    'settings' => 
    array (
    ),
    'module' => 
    array (
      'id' => '481',
      'name' => 'AutoComment',
      'path' => 'packages/frontend/modules/AutoComment/',
      'type' => '',
      'action_module_id' => '0',
      'use_dblclick' => '0',
      'package_id' => '4',
    ),
  ),
);
		Portal::$page = array (
  'id' => '1047',
  'package_id' => '4',
  'layout_id' => '0',
  'layout' => 'packages/frontend/layouts/simple.php',
  'skin' => 'default',
  'help_id' => '0',
  'name' => 'auto_comment',
  'title_1' => 'Tự động comment các bài viết trên newfeed',
  'description_1' => '',
  'customer_id' => '0',
  'read_only' => '0',
  'show' => '1',
  'cachable' => '0',
  'cache_param' => '',
  'params' => '',
  'site_map_show' => '1',
  'type' => 'SYSTEM',
  'condition' => '',
  'is_use_sapi' => '0',
  'keyword_1' => '',
  'title' => 'Tự động comment các bài viết trên newfeed',
  'keyword' => '',
  'description' => '',
);
		foreach($blocks as $id=>$block)
		{
			if($block['module']['type'] == 'WRAPPER')
			{
				require_once $block['wrapper']['path'].'class.php';
				$blocks[$id]['object'] = new $block['wrapper']['name']($block);
				if(URL::get('form_block_id')==$id)
				{
					$blocks[$id]['object']->submit();
				}
			}
			else
			if($block['module']['type'] != 'HTML' and $block['module']['type'] != 'CONTENT' and $block['module']['name'] != 'HTML')
			{
				require_once $block['module']['path'].'class.php';
				$blocks[$id]['object'] = new $block['module']['name']($block);
				if(URL::get('form_block_id')==$id)
				{
					$blocks[$id]['object']->submit();
				}
			}
		}
		require_once 'packages/core/includes/utils/draw.php';
		?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html itemscope="itemscope" itemtype="http://schema.org/WebPage">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<meta http-equiv="cache-control" content="no-cache" />

<meta name="keywords" content="<?php echo Portal::set_header(Portal::$meta_keywords);?>"/>

<meta name="description" content="<?php echo Portal::set_header(Portal::$meta_description);?>"/>

<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<?php echo Portal::$meta_social;?>
<meta name="ROBOTS" content="ALL"/>

<title><?php echo Portal::set_header(Portal::$document_title);?></title>

<?php if(isset($_REQUEST['page']) and ($_REQUEST['page']!='setting')){?>

<base href="<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/';?>"/>

<?php }?>

<link rel="stylesheet" href="skins/default/css/global.css" type="text/css"/>

<link rel="stylesheet" href="skins/default/css/style.css" type="text/css"/>

<link rel="shortcut icon" href="<?php echo Portal::get_setting('website_icon');?>"/>

<script src="packages/core/includes/js/cookie.js" type="text/javascript"></script>

<script src="packages/core/includes/js/jquery/jquery-1.7.min.js" type="text/javascript"></script>

<script src="packages/core/includes/js/jquery/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>

<script src="packages/core/includes/js/common.js" type="text/javascript"></script>

<script type="text/javascript">

	query_string = "?<?php echo urlencode($_SERVER['QUERY_STRING']);?>";

	PORTAL_ID = "<?php echo substr(Portal::$portal_id,1);?>";

	var PATH       = '<?php echo WEBSERVER?>';

	var BASE       = '/';
	
	var CURRENT_URL = '<?php echo Url::build_current();?>';
	
	var list_chart = [];
	
	var token      = '';
	
	var module     = 'home';
	
	var Lang = {};
	
	Lang["yes"]     = 'Yes';
	
	Lang["deleted"] = 'Deleted';
	
	Lang["selectoneitem"] = 'Select at least one item';
	
	Lang["selectonemedia"] = 'Select at least one Page/Group/Profile/Friend';
	
	Lang["emptyTable"] = 'No data available in table';
	
	Lang["processing"] = 'Processing';
	//jQuery.noConflict();

</script>

<?php if(User::can_admin() or DEBUG){?>

<script type="text/javascript">

	var use_double_click = <?php echo USE_DOUBLE_CLICK;?>;

</script>

<script src="packages/core/includes/js/admin.js" type="text/javascript"></script>

<script src="skins/default/js/lib.js" type="text/javascript"></script>

<?php }?>

<?php 

	echo Portal::$extra_header;

	echo Portal::get_setting('google_analytics');
?>
</head>

<body class="<?php if(Url::get('page')=='help'){echo 'theme-red';}elseif(!User::is_login()){echo 'login-page';}else{echo 'theme-red';}?>">
    <!-- Page Loader -->
    
    <div class="page-loader-action">
    
        <div class="loader">
    
            <div class="md-preloader pl-size-md">
    
                <svg viewbox="0 0 75 75">
    
                    <circle cx="37.5" cy="37.5" r="33.5" class="pl-red" stroke-width="4" />
    
                </svg>
    
            </div>
    
            <p>Please wait...</p>
    
        </div>
    
    </div>
    
    <!-- #END# Page Loader -->
    
    <!-- Overlay For Sidebars -->
    
    <div class="overlay"></div>
    
    <!-- #END# Overlay For Sidebars -->
<div class="layout-bound">
<?php $blocks[13073]['object']->on_draw();?>
<?php $blocks[13076]['object']->on_draw();?></div>
 <!-- Modal Save-->
<div class="modal fade" id="modal-save" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue-grey">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">title</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input type="text" class="form-control save_title"/>
                </div>   
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-modal-save"><i class="fa fa-floppy-o" aria-hidden="true"></i> save</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
jQuery('.msg-error .close-error').click(function(){
	jQuery(this).parent().slideUp();
});
</script>
</body>
</html>
<?php Module::invoke_event('ONUNLOAD',System::$false,System::$false);?>