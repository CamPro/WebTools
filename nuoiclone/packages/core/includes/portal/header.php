<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
