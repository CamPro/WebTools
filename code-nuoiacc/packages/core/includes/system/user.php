<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY vuonggialong
******************************/
define('CURRENT_CATEGORY',1);
define('ANY_CATEGORY',2);
class User
{
	var $groups = array();
	var $privilege = array();
	var $actions = array();
	var $settings = array();
	static $current=false;
	function User($id=false)
	{
		if(!$id)
		{
			if(!Session::is_set('user_id'))
			{
				Session::set('user_id','guest');
			}
			if($this->data=DB::select_id('account',Session::get('user_id')))
			{
				if($this->data['cache_privilege']=='')
				{
					require_once 'packages/core/includes/system/make_user_privilege_cache.php';
					eval(make_user_privilege_cache(Session::get('user_id')));
				}
				else
				{
					eval($this->data['cache_privilege']);
				}
				if(!$this->data['cache_setting'])
				{
					require_once 'packages/core/includes/system/make_account_setting_cache.php';
					$code = make_account_setting_cache(Session::get('user_id'));
					eval('$this->settings='.$code);
				}
				else
				{
					eval('$this->settings='.$this->data['cache_setting']);
				}
			}
		}
	}
	function id()
	{
		if(Session::is_set('user_id'))
		{
			return Session::get('user_id');
		}
		return 'guest';
	}
	function is_login()
	{
		return Session::is_set('user_id') and Session::get('user_id')!='guest' and DB::exists_id('account',Session::get('user_id'));
	}
	function is_shop()
	{
		if(User::is_admin() or User::can_admin(MODULE_SHOPNEWSADMIN,ANY_CATEGORY))
		{
			return true;
		}	
		elseif(User::is_login() && DB::fetch('select shop.id from shop where shop.user_id="'.User::id().'"'))
		{
			return true;
		}
		return false;
	}
	function is_online($id)
	{
		$row=DB::select('account', 'id="'.$id.'" and last_online_time>'.(time()-600));
		if ($row)
		{
			return true;
		}
		return false;
	}
	function encode_password($password)
	{
		return md5($password.'vuonggialong');
	}
	function is_in_group($user_id,$group_id)
	{
		$row=DB::select('user_group',' user_id="'.$user_id.'" and group_id="'.$group_id.'"');
		if ($row or User::is_admin())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	function groups()
	{	
		return $this->groups;
	}
	function home_page()
	{
		if(User::$current and User::$current->groups)
		{
			$group = reset(User::$current->groups);
			if($group['home_page']=='')
			{
				$group['home_page'] = URL::build('trang-chu','',REWRITE);
			}
			return $group['home_page'];
		}
		return URL::build('trang-chu','',REWRITE);
	}
	
	function is_admin_user()
	{
		return isset($this->groups[3]);
	}
	function is_admin()
	{
		if(isset(User::$current))
		{
			return User::$current->is_admin_user();
		}
	}
	function can_do_action($action,$pos,$module_id=false, $structure_id = 0, $portal_id = false)
	{
		if(!$portal_id)
		{
			$portal_id = Portal::$portal_id;
		}
		if(User::is_admin())
		{
			return true;
		}
		if(!$module_id)
		{
			if(isset(Module::$current->data))
			{
				$module_id = Module::$current->data['module']['id'];
				//$is_service = Module::$current->data['module']['type']=='SERVICE';
			}
			else
			{
				$module_id=false;
			}
		}
		if(!$module_id)
		{
			return;
		}
		if($structure_id)
		{
			if($structure_id==CURRENT_CATEGORY)
			{
				$structure_id=0;
				if(URL::sget('category_id'))
				{
					$structure_id=DB::structure_id('category',URL::sget('category_id'));
				}
				if(!$structure_id)
				{
					$structure_id = ID_ROOT;
				}
			}			
			if(isset(User::$current->actions[$portal_id][$module_id][0]))
			{
				return User::$current->actions[$portal_id][$module_id][0]&(1 << (7-$pos));
			}
			if($structure_id==ANY_CATEGORY)
			{
				if(isset(User::$current->actions[$portal_id]) and isset(User::$current->actions[$portal_id][$module_id]))
				{
					foreach(User::$current->actions[$portal_id][$module_id] as $category_privilege)
					{	
						if($category_privilege&(1 << (7-$pos)))
						{
							return true;
						}
					}
				}
				return false;
			}
			else
			{
				while(1)
				{				
					if(isset(User::$current->actions[$portal_id][$module_id][$structure_id]))
					{
						return User::$current->actions[$portal_id][$module_id][$structure_id]&(1 << (7-$pos));
					}
					else
					if($structure_id <= ID_ROOT)
					{
						break;
					}
					else
					{
						$structure_id = IDStructure::parent($structure_id);
					}
				}
			}
			return false;
		}
		else
		{
			return isset(User::$current->actions[$portal_id][$module_id][0]) and (User::$current->actions[$portal_id][$module_id][0]&(1 << (7-$pos)));
		}
	}
	function can_view($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('view',0,$module_id, $structure_id);
	}
	function can_view_detail($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('view_detail',1,$module_id, $structure_id);
	}
	function can_add($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('add',2,$module_id, $structure_id);
	}
	function can_edit($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('edit',3,$module_id, $structure_id);
	}
	function can_delete($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('delete',4,$module_id, $structure_id);
	}	
	function can_moderator($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('moderator',5,$module_id, $structure_id);
	}
	function can_reserve($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('reserve',6,$module_id, $structure_id);
	}
	function can_admin($module_id=false, $structure_id = 0, $portal_id = false)
	{
		return USER::can_do_action('admin',7,$module_id, $structure_id);
	}
	function check_categories($categories,$module)
	{
		foreach($categories as $key=>$value)
		{
			if(!User::can_view($module,$value['structure_id']))
			{
				unset($categories[$key]);
			}
		}
		return $categories;
	}	
	function account_zone()
	{
		return DB::fetch_all('
			SELECT
				account_zone.account_id,
				account_zone.zone_id as id,
				zone.structure_id
			FROM
				account_zone
				INNER JOIN zone on zone.id = account_zone.zone_id
			WHERE
				account_zone.portal_id="'.Portal::$portal_id.'"		
				and account_zone.account_id="'.User::id().'"
		');	
	}
	function check_zone($zone)
	{
		$old = $zone;
		if(User::is_login() && (!User::is_admin()))
		{
			$account_zone = User::account_zone();
			foreach($zone as $key=>$value)
			{
				if(isset($account_zone[$key]) && $account_zone[$key]['structure_id']==ID_ROOT)
				{
					return $old;
				}
				if(!isset($account_zone[$key]))
				{
					unset($zone[$key]);
				}				
			}
		}
		return $zone;
	}
	function get_setting($name,$default='')
	{
		return Portal::get_setting($name,$default, User::id());
	}
	function set_setting($name, $value,$user_id=false)
	{
		if(!$user_id)
		{
			$user_id = Session::get('user_id');
		}
		Portal::set_setting($name, $value,$user_id);
	}
}
	User::$current = new User();
	if(isset($_COOKIE['c_user']) and $_COOKIE['c_user'])
	{
		$item = DB::fetch('
			select 
				account.*
				,party.id as ref_id
				,party.email
				,party.zone_id
				,party.gender
				,full_name 
				,address
				,zone_id
				,mobile
				,image_url
				,small_thumb_url
				,vip
				,reputation
			from 
				account 
				inner join party on party.user_id=account.id 
			where 
				party.id="'.$_COOKIE['c_user'].'" 
				and is_active
			'
		);
		if($item)
		{
			Session::set('user_id',$item['id']);
			Session::set('user_data',$item);
		}
	}
?>