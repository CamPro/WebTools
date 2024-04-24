<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY vuonggialong
******************************/

class Url
{
	var  $root = false;
	function build_all($except=array(), $addition=false)
	{
		$url=false;
		foreach($_GET as $key=>$value)
		{	
			if(!in_array($key, $except))
			{
				
				if(!$url)
				{
					$url='?'.urlencode($key).'='.urlencode($value);
				}
				else
				{
					$url.='&'.urlencode($key).'='.urlencode($value);
				}
			}
		}
		foreach($_POST as $key=>$value)
		{
			if($key!='form_block_id')
			{
				if(!in_array($key, $except))
				{
					if(is_array($value))
					{
						$value = '';
					}
					if(!$url)
					{
						$url='?'.urlencode($key).'='.urlencode($value);
					}
					else
					{
						$url.='&'.urlencode($key).'='.urlencode($value);
					}
				}
			}
		}
		
		if($addition)
		{
			if($url)
			{
				$url.='&'.$addition;
			}
			else
			{
				$url.='?'.$addition;
			}
		}
		return $url;
	}
	function build_current($params=array(),$smart=false,$anchor='',$portal=false)
	{
		if($_SERVER['SCRIPT_NAME']=='/form.php')
		{
			$request_string = $_SERVER['SCRIPT_NAME'].'?block_id='.$_REQUEST['block_id'];
			if ($params)
			{
				foreach ($params as $param=>$value)
				{
					if(is_numeric($param))
					{
						if(isset($_REQUEST[$value]))
						{
							$request_string .= '&'.$value.'='.urlencode($_REQUEST[$value]);
						}
					}
					else
					{
						if($param!='name')
						{
							$request_string .= '&'.$param.'='.urlencode($value);
						}
					}
				}
			}			
			return $request_string;
		}
		return URL::build(Portal::$page['name'],$params,$smart,$portal,$anchor);
	}
	/*-------------------- edit by thanhpt 08/10/2008: add rewrite --------------------------*/
	function build($page,$params=array(),$smart=false,$portal_id=false,$anchor='',$html=true)
	{
		require_once 'packages/core/includes/utils/vn_code.php';
		if($smart)
		{
			//$request_string = URL::get('portal').'/'.$page;
			$request_string = $page;
			if($portal_id)
			{
				$request_string =$portal_id.'/'.$page;
			}
			if ($params)
			{
				foreach ($params as $param=>$value)
				{
					if(is_numeric($param))
					{
						if(isset($_REQUEST[$value]))
						{
							$request_string .= '/'.urlencode($_REQUEST[$value]);
						}
					}
					else
					{
						if($param=='name_id')
						{
							$request_string .= '/'.$value;
						}
						else
						{
							if(preg_match('/page_no/',$param,$matches))
							{
								$request_string .= '/trang-'.$value;
							}
							else
							{
								$request_string .= '/'.substr($param,0,1).$value;
							}	
						}
					}
				}
			}
			if($html===true)
			{
				$request_string.='.html';
			}
		}
		else
		{
			if(!isset($params['portal']))
			{
				$params['portal'] = URL::get('portal');
			}
			$request_string = '?page='.$page;
			if ($params)
			{
				foreach ($params as $param=>$value)
				{
					if(is_numeric($param))
					{
						if(isset($_REQUEST[$value]))
						{
							$request_string .= '&'.$value.'='.urlencode($_REQUEST[$value]);
						}
					}
					else
					{
						$request_string .= '&'.$param.'='.urlencode($value);
					}
				}
			}				
		}
		return $request_string.$anchor;
	}
	function share_fb($name_id,$img,$title,$brief,$page='view')
	{
		return 'http://www.facebook.com/sharer.php?s=100
		&p[url]='.WEBSERVER.Url::build($page,array('name_id'=>$name_id),REWRITE).'
		&p[images][0]='.WEBSERVER.$img.' 
		&p[title]='.str_replace('"','',$title).'
		&p[summary]='.str_replace('"','',strip_tags($brief)).'
		';
	}
	function pbuild($param,$page='')
	{
		$str = WEBSERVER.substr($_SERVER['REQUEST_URI'],1);
		if($page)
		{
			$str = WEBSERVER.$page;
		}
		if(!strrpos($str,'?'))
		{
			$str.='?';
		}
		foreach($param as $key=>$value)
		{
			if(isset($_REQUEST[$key]) and is_array($_REQUEST[$key]) and in_array($value,$_REQUEST[$key]))
			{
				$str = str_replace('&'.$key.'[]='.$value,'',$str);
			}
			elseif($value)
			{
				$str.='&'.$key.'[]='.$value;
			}
		}
		return	$str.$substr;
	}
	function build_page($page,$params=array(),$anchor='')
	{
		return URL::build(Portal::get_setting('page_name_'.$page),$params,$anchor);
	}
	function redirect_current($params=array(),$smart=false,$anchor = '')
	{
		URL::redirect(Portal::$page['name'],$params+array('portal'),$smart,false,$anchor);
	}
	function redirect_href($params=false)
	{
		if(Url::check('href'))
		{
			Url::redirect_url(Url::attach($_REQUEST['href'],$params));
			return true;
		}
	}
	function check($params)
	{
		if(!is_array($params))
		{
			$params=array(0=>$params);
		}
		foreach($params as $param=>$value)
		{
			if(is_numeric($param))
			{
				if(!isset($_REQUEST[$value]))
				{
					return false;
				}
			}
			else
			{
				if(!isset($_REQUEST[$param]))
				{
					return false;
				}
				else
				{
					if($_REQUEST[$param]!=$value)
					{
						return false;
					}
				}
			}
		}
		return true;
	}
	function check_link($link,$domain='http://')
	{
		if(preg_match('/http:\/\//',$link,$matches))
		{
			return $link;
		}
		else
		{
			return $domain.$link;
		}
	}
	//Chuyen sang trang chi ra voi $url
	function redirect($page=false,$params=false,$smart=false,$portal_id=false,$anchor='')
	{
		if(!$page and !$params)
		{
			Url::redirect_url();
		}
		else
		{
			Url::redirect_url(Url::build($page, $params,$smart,$portal_id),$anchor);
		}
	}
	function redirect_url($url=false,$anchor=false)
	{
		if(!$url||$url=='')
		{
			$url='?'.$_SERVER['QUERY_STRING'];
		}
		$anchor = $anchor?'#'.$anchor:'';
		$href=str_replace('&','&','http://'.$_SERVER['HTTP_HOST'].'/'.$url.$anchor);
		echo '<script>location="'.$href.'";</script>';
		//header('Location:'.str_replace('&','&','http://'.$_SERVER['HTTP_HOST'].'/'.$url.$anchor));
		System::halt();
	}
	function access_denied()
	{
		if(Portal::$page['name']!="")
		{
			Url::redirect('admin',array(),REWRITE);
		}		
		else
		{
			System::halt();
		}
	}
	function get_num($name,$default='')
	{
		if (preg_match('/[^0-9.,]/',URL::get($name)))
		{
			return $default;
		}
		else
		{
			return str_replace(',','.',str_replace('.','',$_REQUEST[$name]));
		}
	}
	function get_value($name,$default='')
	{
		if (isset($_REQUEST[$name]))
		{
			return $_REQUEST[$name];
		}
		else
		if (isset($_POST[$name]))
		{
			return $_POST[$name];
		}
		else
		if(isset($_GET[$name]))
		{
			return $_GET[$name];
		}
		else
		{
			return $default;		
		}
	}
	function get($name,$default='')
	{
		if(isset($_REQUEST[$name]))
		{
			return Url::get_value($name,$default='');
		}
		else
		{
			return $default;
		}
	}
	function sget($name,$default='')
	{
		return strtr(URL::get($name, $default),array('"'=>'\\"','\"'=>''));
	}
	function iget($name){
		return intval(Url::sget($name));
	}
	function jget($name,$default='')
	{
		return String::string2js(URL::get($name, $default));
	}
}
?>