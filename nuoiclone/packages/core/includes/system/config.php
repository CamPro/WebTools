<?php 
			header("Content-Type: text/html; charset=utf-8");
			ini_set ('zend.ze1_compatibility_mode','off');			
			// include kernel files
			require_once 'cache/modules.php';			
			require_once 'packages/core/includes/system/database.php';
			require_once 'packages/core/includes/system/default_session.php';
			require_once 'packages/core/includes/system/cookie.php';
			require_once 'packages/core/includes/system/system.php';
			require_once 'packages/core/includes/system/url.php';			
			require_once 'packages/core/includes/system/id_structure.php';
			require_once 'packages/core/includes/portal/types.php';
			require_once 'packages/core/includes/portal/form.php';
			require_once 'packages/core/includes/system/user.php';

			require_once 'packages/core/includes/portal/module.php';
			require_once 'packages/core/includes/portal/portal.php';
			require_once 'packages/core/includes/system/visitor.php';
			require_once 'packages/core/includes/system/log.php';
			require_once 'packages/core/includes/utils/format_text.php';			
			if(file_exists('cache/config/skin_'.Portal::$portal_id.'.php'))
			{				
				require_once 'cache/config/skin_'.Portal::$portal_id.'.php';
			}	
			else
			{
				require_once'cache/config/skin_default.php';
			}
			//error report
			error_reporting(E_ALL);
			//error_reporting(0);
			// Disable ALL magic_quote
			if (get_magic_quotes_gpc())
			{
				function stripslashes_deep($value)
				{
					$value = is_array($value) ? array_map('stripslashes_deep', $value) : stripslashes($value);
					return $value;
				}
				$_REQUEST = array_map('stripslashes_deep', $_REQUEST);
				$_COOKIE = array_map('stripslashes_deep', $_COOKIE);
			}
		?>