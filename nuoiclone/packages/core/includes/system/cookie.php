<?php
class Cookie
{
	function is_set($name)
	{
		return isset($_COOKIE[$name]);
	}
	function set($name,$value,$duration)
	{
		setcookie($name,$value,time()+$duration,'/');
	}
	function get($name,$default)
	{
		return Cookie::is_set($name)?$_COOKIE[$name]:$default;
	}
	function delete($name)
	{
		if(Cookie::is_set($name))
		{
			setcookie($name,'',time()-3600);
		}
	}
}
?>