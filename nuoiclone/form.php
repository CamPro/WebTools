<?php
date_default_timezone_set('Asia/Saigon');
define('DEVELOPING',false);
define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
//define( 'WEB_ROOT','http://'.$_SERVER['HTTP_HOST'].'/');
require_once ROOT_PATH.'packages/core/includes/system/config.php';
require_once'cache/config/skin_default.php';
if(URL::get('block_id') and $block = DB::select('block','id="'.intval(URL::sget('block_id')).'"'))
{
	
	if(isset($_REQUEST['portal']) and $portal=DB::select('account','id="#'.addslashes($_REQUEST['portal']).'"'))
	{
		Session::set('portal', $portal);
	}
	if(!Session::is_set('portal') or !Session::get('portal'))
	{
		Session::set('portal', DB::select('account','id="#default"'));
	}
	if(Session::is_set('portal') and Session::get('portal'))
	{
		if(!Session::get('portal','cache_setting'))
		{
			require_once 'packages/core/includes/system/make_account_setting_cache.php';
			make_account_setting_cache(Session::get('portal','id'));
			Session::set('portal', DB::select('account','id="'.Session::get('portal','id').'"'));
		}
		eval('$GLOBALS[\'current_portal\']->settings='.Session::get('portal','cache_setting'));
		define('PORTAL_PREFIX',str_replace('#','p_',Session::get('portal','id')).'_');
		define('PORTAL_ID',Session::get('portal','id'));
			
		$GLOBALS['root'] = Portal::get_setting('website_url_root','');
		$GLOBALS['current_page'] = DB::select('page',$block['page_id']);
		$GLOBALS['current_user'] = new User();

		$block_settings = String::get_list(DB::fetch_all('select setting_id as id, value as name from block_setting where block_id="'.$block['id'].'"'),'name');
		$settings = String::get_list(DB::fetch_all('select id, default_value as name from module_setting where module_id="'.$block['module_id'].'"'),'name');
		foreach($settings as $setting_id=>$value)
		{
			if(!isset($block_setting[$setting_id]))
			{
				$block_setting[$setting_id] = $value;
			}
		}
		$blocks = array(
			$block['id'] => $block + array (
				'settings' => $block_settings,
				'module' => DB::fetch('select id, name, path, `type`, use_dblclick,package_id from module where id="'.$block['module_id'].'"')
			)
		);
		
		require_once $blocks[$block['id']]['module']['path'].'class.php';
		$blocks[$block['id']]['object'] = new $blocks[$block['id']]['module']['name']($blocks[$block['id']]);
		if(URL::get('form_block_id')==$block['id'])
		{
			$blocks[$block['id']]['object']->submit();
		}
		if(!defined('SKIN_PATH'))
		{
			define ('SKIN_PATH',$GLOBALS['root'].'skins/default/');
		}
		require_once ROOT_PATH.'packages/core/includes/utils/draw.php';
		require_once 'packages/core/includes/portal/header.php';
		$blocks[$block['id']]['object']->on_draw();
		require_once 'packages/core/includes/portal/footer.php';
	}
}
DB::close();
?>