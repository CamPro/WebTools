<?php

/******************************

COPY RIGHT BY NYN PORTAL - TCV

WRITTEN BY thedeath

******************************/



class Portal

{
	static $current = false;

	static $extra_header = '';

	static $page_gen_time = 0;

	static $page = false;

	static $meta_keywords = '';

	static $meta_description = '';

	static $document_title = '';
    
	static $meta_social = '';

	static $portal_id = '#default';

	function Portal()

	{

	}

	function register_module($row_or_id, &$module)

	{

		if(is_numeric($row_or_id))

		{

			$id=$row_or_id;

		}

		else

		if(isset($row_or_id['id']))

		{

			$id = $row_or_id['id'];

		}

		else

		{

			System::halt();

		}

		if(is_numeric($row_or_id))

		{

			DB::query('

				select

					id, name, package_id

				from

					module

				where

					id = '.$row_or_id);

			$row = DB::fetch();

			if(!$row)

			{

				System::halt();

			}

		}

		else

		{

			$row = $row_or_id;

		}

		require_once 'packages/core/includes/portal/package.php';

		$class_fn = get_package_path($row['package_id']).'module_'.$row['name'].'/class.php';

		require_once $class_fn;

		$module = new $row['name']($row);

		$module->package = &$GLOBALS['packages'][$row['package_id']];

	}

	function set_header($content)

	{

		$content = String::display_sort_title(strip_tags(str_replace(array('%name%','%brief%','%category_name%','%domain%','%date%','%zone_name%','%full_name%','%address%'),array(Url::get('name'),Url::get('brief'),Url::get('category_name'),str_replace(array('https://','http://','/'),'',WEBSERVER),date('G:i d/m/Y'),Url::get('zone_name'),Url::get('full_name'),Url::get('address')),$content)),124);

		if(strpos($content,'%split_name%')!==false and Url::get('name'))

		{

			return str_replace(array('%split_name%'),array(''),$content).', '.str_replace(' ',',',Url::get('name'));

		}

		return $content;

	}

	//Chay portal

	function run()

	{

		if(!Session::is_set('portal')||Session::get('portal')=='')

		{

			$portal=DB::fetch('select id from account where type="PORTAL" and is_active = 1 and id = "#'.Url::sget('portal').'"');

			Session::set('portal',$portal);			

		}

		if(Session::is_set('portal') and Session::get('portal'))

		{

			if(!Session::get('portal','cache_setting'))

			{

				require_once 'packages/core/includes/system/make_account_setting_cache.php';

				make_account_setting_cache(Session::get('portal','id'));

				Session::set('portal', DB::select('account','id="'.Session::get('portal','id').'"'));				

			}		

			eval('Portal::$current->settings='.Session::get('portal','cache_setting'));

			Portal::$portal_id = Session::get('portal','id');

			define('REWRITE',Portal::get_setting('rewrite'));

			define('USE_CACHE',Portal::get_setting('use_cache'));

			if(isset($_REQUEST['language_id']))

			{

				Session::set('language_id',Url::get('language_id'));

			}

			elseif(!Session::is_set('language_id'))

			{

				Session::set('language_id',Portal::get_setting('language_default'));							

			}
			$params = Portal::$portal_id!='#default'?' and params="'.substr(Portal::$portal_id,1).'"':' and params=""';					
			if(Url::sget('page') and $page = DB::fetch('select *,title_'.Portal::language().' as title,keyword_'.Portal::language().' as keyword,description_'.Portal::language().' description from page where name="'.Url::sget('page').'"'.$params))

			{
				$_REQUEST['page_name'] = $page['title'];

				Portal::run_page($page,$page['name'],$page['params']);

			}

			elseif(Url::get('page') and $page = DB::fetch('select *,title_'.Portal::language().' as title,keyword_'.Portal::language().' as keyword,description_'.Portal::language().' description from page where name="'.Url::sget('page').'"'))

			{
				$_REQUEST['page_name'] = $page['title'];

				Portal::run_page($page,$page['name'],$page['params']);

			}
			
			elseif($page = DB::fetch('select *,title_'.Portal::language().' as title,keyword_'.Portal::language().' as keyword,description_'.Portal::language().' description from page where name="home"'))
			{
				$_REQUEST['page_name'] = $page['title'];

				Portal::run_page($page,$page['name'],$page['params']);
			}
		}	

		else

		{

			echo 'System can\'t actived !';	

		}

		Session::end();

		DB::close();

	}

	function run_page($row, $page_name, $params=false)

	{

		Portal::$document_title = Portal::get_setting('website_title');	

		Portal::$meta_keywords = Portal::get_setting('website_keyword');

		Portal::$meta_description = Portal::get_setting('website_description');
		$portal_id = $params?$params:'default';

		$page_file = ROOT_PATH.'cache/pages/'.$portal_id.'/'.$page_name.'.cache.php';

		if(file_exists($page_file) and USE_CACHE)

		{

			require_once $page_file;								

		}

		else

		{

			require_once 'packages/core/includes/portal/generate_page.php';

			$generate_page = new GeneratePage($row);

			$generate_page->generate();

			$page_name=$row['name'];

		}

	}

	function template($portal = true)

	{

		if($portal)

		{

			return 'skins/'.substr(Portal::$portal_id,1).'/';

		}

		return 	'skins/default/';

	}

	static function template_css($portal = 'default')

	{

		return 'skins/'.$portal.'/';

	}

	static function template_js($package= 'core')

	{

		return 'packages/'.$package.'/includes/js/';

	}

	function get_config_cache($portal_id=false)

	{

		if(!$portal_id)

		{

			$portal_id = substr(Portal::$portal_id,1);

		}

		return 'cache/tables/'.$portal_id.'/';

	}

	function template_cache($temp,$portal_id=false,$check = true)

	{			

		$path = Portal::get_config_cache($portal_id).$temp.'.cache.php';

		$cache = array();

		if(file_exists($path))

		{

			require $path;

			$cache = $$temp;

		}

		else

		{

			require 'cache/tables/default/'.$temp.'.cache.php';

			$cache = $$temp;

		}

		/*

		if($temp=='zone' && $check)

		{

			$cache = User::check_zone($cache);

		}

		*/

		return $cache;

	}

	static function service($service_name)

	{

		$services = Portal::get_setting('registered_services');

		return isset($services[$service_name]);

	}

	static function language($name=false)

	{

		if($name)

		{

			if(isset($GLOBALS['all_words']['[[.'.$name.'.]]']))

			{

				return $GLOBALS['all_words']['[[.'.$name.'.]]'];

			}

			else

			{

				$languages = DB::select_all('language');

				$row = array();

				foreach($languages as $language)

				{

					$row['value_'.$language['id']] = ucfirst(str_replace('_',' ',$name));

				}

				DB::insert('word',$row + array(

					'id'=>$name,

					'package_id'=>Module::$current->data['module']['package_id']

				),1);

				Portal::make_word_cache();

				return $name;

			}

		}

		if(Session::is_set('language_id') and Session::get('language_id')!='')

		{

			return Session::get('language_id');

		}

		return 1;

	}	

	static function get_setting($name, $default=false, $user_id = false)

	{

		if(!$user_id)

		{			

			if(isset(User::$current->settings[$name]))

			{

				if(User::$current->settings[$name] == '@VERY_LARGE_INFORMATION')

				{

					if($setting = DB::select('account_setting','setting_id="'.DB::escape($name).'" and account_id="'.User::id().'"'))

					{

						return $setting['value'];

						

					}

				}

				else

				{					

					return User::$current->settings[$name];

				}

			}

			else

			if(isset(Portal::$current->settings[$name]))

			{

				if(Portal::$current->settings[$name] == '@VERY_LARGE_INFORMATION')

				{

					if($setting = DB::select('account_setting','setting_id="'.DB::escape($name).'" and account_id="'.Portal::$portal_id.'"'))

					{

						return $setting['value'];

					}

				}

				else

				{

					return Portal::$current->settings[$name];

				}

			}			

		}

		else

		{

			if($setting = DB::select('account_setting','setting_id="'.DB::escape($name).'" and account_id="'.DB::escape($user_id).'"'))

			{

				return $setting['value'];

			}

			return $default;

		}		

		return $default;

	}

	function use_service($name)

	{

		return isset(Portal::$current->services[$name]);

	}

	function set_setting($name, $value,$user_id=false,$account_type = 'USER')

	{

		if($setting = DB::select('setting','id="'.$name.'"'))

		{

			if($user_id==false)

			{

				if($setting['account_type']=='USER')

				{

					$account_id = Session::get('user_id');

				}

				else

				{

					$account_id = Session::get('portal','id');

				}

			}

			else

			{

				$account_id = $user_id;

			}

			if(DB::select('account_setting','account_id="'.addslashes($account_id).'" and setting_id="'.addslashes($name).'"'))

			{

				DB::update('account_setting',

					array(

						'value'=>$value

					),

					'account_id="'.addslashes($account_id).'" and setting_id="'.addslashes($name).'"'

				);

			}

			else

			{

				DB::insert('account_setting',

					array(

						'account_id'=>$account_id,

						'setting_id'=>$name,

						'value'=>$value

					)

				);

			}

			DB::update('account',array('cache_setting'=>''),'id="'.$account_id.'"');

			if($setting['account_type']=='PORTAL' and $account_id==Portal::$portal_id)

			{				

				if(isset($_REQUEST['portal']) and $portal=DB::select_id('account','#'.addslashes($_REQUEST['portal'])))

				{

					Session::set('portal', $portal);

				}

				else

				{

					Session::set('portal', DB::select_id('account','#default'));

				}

			}

		}

		else

		{

			DB::insert('setting',array('id'=>$name,'default_value'=>$value,'type'=>'TEXT','account_type'=>$account_type));

			if($user_id==false)

			{

				$user_id = Session::get('portal','id');				

			}

			DB::insert('account_setting',array('setting_id'=>$name,'value'=>$value,'account_id'=>$user_id));

		}

	}

	function make_word_cache()

	{

		$languages = DB::fetch_all('SELECT id FROM language');

		foreach($languages as $language_id=>$row)

		{

			$all_words = DB::fetch_all('

					SELECT 

						id, value_'.$language_id.' as value 

					FROM

						word 

				');

			$language_convert = array();

			foreach($all_words as $language)

			{

				$language_convert = $language_convert + 

					array('[[.'.$language['id'].'.]]'=>$language['value']);

			}

			if($language_id==Portal::language())

			{

				$GLOBALS['all_words'] = $language_convert;

			}

			$st = '<?php

if(!isset($GLOBALS[\'all_words\']))

{

	$GLOBALS[\'all_words\'] = '.var_export($language_convert,1).';

}

?>';





			$f = fopen('cache/language_'.$language_id.'.php','w+');

			fwrite($f,$st);

			fclose($f);

			$st = 'all_words = '.String::array2js($language_convert).';';

			$f = fopen('cache/language_'.$language_id.'.js','w+');

			fwrite($f,$st);

			fclose($f);

		}

	}

}

Portal::$page_gen_time = new Timer();

Portal::$page_gen_time->start_timer();

require_once 'cache/language_'.Portal::language().'.php';

Portal::$current = new Portal();

?>