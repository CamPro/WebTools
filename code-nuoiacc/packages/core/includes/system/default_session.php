<?php
class Session
{
	static $name;
	static $init_vars;
	static function start()
	{
		session_start();
	}
	static function end()
	{
		
	}
	static function destroy()
	{
		session_destroy();
	}
	static function name($name = false)
	{
		if($name)
		{
			Session::$name = $name;
		}
		return Session::$name;
	}
	static function delete($name, $field=false)
	{
		if($field)
		{
			unset($_SESSION[$name][$field]);
		}
		else
		{
			unset($_SESSION[$name]);
		}
	}
	static function get($name, $field=false)
	{
		
		if(isset($_SESSION[$name]))
		{
			if($field)
			{
				if(isset($_SESSION[$name][$field]))
				{
					return $_SESSION[$name][$field];
				}
				return false;
			}
			return $_SESSION[$name];
		}
	}
	static function set($name,$value)
	{
		$_SESSION[$name] = $value;
	}
	static function is_set($name, $field=false)
	{
		if($field)
		{
			return isset($_SESSION[$name]) and isset($_SESSION[$name][$field]);
		}
		return isset($_SESSION[$name]);
	}
	static function login($user_id)
	{
		if(DB::fetch('select id from session where user_id="'.$user_id.'"'))
		{
			DB::update('session',array('id'=>session_id(),'last_active_time'=>time()),'user_id="'.$user_id.'"');
		}
		else
		{
			DB::insert('session',array('id'=>session_id(),'user_id'=>$user_id,'time'=>time()),'user_id="'.$user_id.'"');
		}
	}
	static function sign_out($user_id)
	{
		if($user = DB::fetch('select id from session where user_id="'.$user_id.'"'))
		{
			DB::delete('session','user_id="'.$user_id.'"');
			unset($user['id']);
		}
		Session::delete('user_id');
	}
}
Session::start();
?>