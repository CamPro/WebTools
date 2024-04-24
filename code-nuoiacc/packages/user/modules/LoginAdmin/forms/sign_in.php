<?php
class LoginAdminForm extends Form
{
	function LoginAdminForm()
	{
		Form::Form('LoginAdminForm');
	}
	function on_submit()
	{
		if (!User::is_login())
		{
			$this->login();
		}
		else
		{
			//Url::redirect('ca-nhan',array(),REWRITE);
		}
	}
	function login()
	{
		$user=str_replace(array('"','\\'),'a',$_REQUEST['user_id']);
		if(!$row= LoginAdminDB::get_user($user,Url::get('password')))		
		{
			$_REQUEST['error'] = 1;
		}
		else
		{
			$today=getdate();
			$check_date = strtotime($today['year'].'/'.$today['mon'].'/'.$today['mday']);
			eval('$cache_setting = '.$row['cache_setting'].' ;');
			eval('$privilege = '.$cache_setting['privilege'].' ;');
			Portal::set_setting('privilege',$privilege);
			Session::set('user_id',$row['id']);
			Session::set('user_data',$row);
			DB::query('update account set last_online_time='.time().' where id="'.Session::get('user_id').'"');
			Url::redirect_current();
		}
	}
	function draw()
	{
		if($_SESSION[$_REQUEST['Loginticker']])
		{
			foreach($_SESSION[$_REQUEST['Loginticker']] as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
			$this->on_submit();
		}
		if(User::is_login())
		{
			$layout = 'user';
			$categories = array();
			if(User::is_login())
			{
				if(User::is_admin())
				{
					$categories = Portal::template_cache('function');	
				}
				else
				{
					$categories = $this->get_category();
				}
			}
		}
		else
		{
			$layout = 'sign_in';
		}
		$this->parse_layout($layout,array('categories'=>$categories));
	}
	function check_child(&$categories)
	{
		if(is_array($categories) and count($categories)>0)
		{
			foreach($categories as $key=>$value)
			{
				if(!$value['public'])
				{
					unset($categories[$key]);
				}
				else
				{					
					$this->check_child($categories[$key]['child']);
				}
			}
		}
	}
	function check_privilege(&$categories,$privilege)
	{
		if(is_array($categories) and count($categories)>0)
		{
			foreach($categories as $key=>$value)
			{
				if(!isset($privilege[$value['structure_id']]))
				{
					unset($categories[$key]);
				}
				else
				{
					$this->check_privilege($categories[$key]['child'],$privilege);	
				}
			}
		}
	}
	function get_category()
	{
		$categories = Portal::template_cache('function');	
		if(Portal::get_setting('privilege')!='')
		{
			eval('$privilege = '.Portal::get_setting('privilege').';');
			if(is_array($privilege) and count($privilege)>0)
			{					
				if(isset($privilege[ID_ROOT]))
				{
					unset($privilege[ID_ROOT]);
				}
				$this->check_child($categories);
				$this->check_privilege($categories,$privilege);
			}
		}
		//System::debug($categories);
		return $categories;
	}
}
?>