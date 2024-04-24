<?php
function get_dir($dir)
{
	if(is_dir(ROOT_PATH.$dir))
	{
		return $dir;
	}
	else
	{
		$new_dir = mkdir(ROOT_PATH.$dir);
		return $dir;
	}
}
function update_upload_file($field, $dir,$constraint=false,$logo=false,$params=false,$old_file=false)
{	
	$error_message = '';
	if(!$params)
	{
		$params = Portal::template_cache('upload');
	}	
	if(isset($_FILES[$field]) and $_FILES[$field]['name'])
	{		
		if($old_file and file_exists($old_file))
		{
			$_REQUEST[$field] = $old_file;
		}
		else
		{
			if(!is_dir('upload/'.substr(Portal::$portal_id,1)))
			{
				@mkdir('upload/'.substr(Portal::$portal_id,1));			
			}
			if(!is_dir('upload/'.$dir))
			{
				@mkdir('upload/'.$dir);
			}
			$dir = $dir.'/'.date('W.Y');
			if(!is_dir('upload/'.$dir))
			{
				@mkdir('upload/'.$dir);
			}
			
			if(file_exists('upload/'.$dir.'/'.$_FILES[$field]['name']))
			{				
				$new_name = 'upload/'.$dir.'/'.time().'_'.$_FILES[$field]['name'];
			}
			else
			{
				require_once 'packages/core/includes/utils/vn_code.php';	
				$new_name = 'upload/'.$dir.'/'.convert_utf8_to_latin($_FILES[$field]['name']);
			}
			$_REQUEST[$field] = $new_name;
		}
		if(strrpos($_REQUEST[$field],'.')!==false)
		{
			$extend = strtoupper(substr($_REQUEST[$field],strrpos($_REQUEST[$field],'.')+1));
			if(isset($params[$extend]))
			{
				$max_upload_file_size = ($params[$extend]['file_size']*1024*1024);	
				if(filesize($_FILES[$field]['tmp_name'])<= $max_upload_file_size)
				{
					if(move_uploaded_file($_FILES[$field]['tmp_name'],$_REQUEST[$field]))
					{
						if($constraint && $params[$extend]['width']>0 && $params[$extend]['height']>0)
						{
							create_thumb($_REQUEST[$field],$_REQUEST[$field],$params[$extend]['width'],$params[$extend]['height'],$logo);
						}
					}	
				}
				else
				{
					$error_message = 'invalid_file_size';
				}
			}
			else
			{
				$error_message = 'invalid_file_type';	
			}
		}	
		return $error_message;
	}
}
function update_upload($field, $dir,$constraint=false,$logo=false,$params=false,$old_file=false)
{
	$error_message = '';
	if(!$params)
	{
		$params = Portal::template_cache('upload');
	}
	if(isset($_FILES[$field]) and $_FILES[$field]['name'])
	{		
		if($old_file and file_exists($old_file))
		{
			$_REQUEST[$field] = $old_file;
		}
		else
		{
			if(!is_dir('upload/'.substr(Portal::$portal_id,1)))
			{
				@mkdir('upload/'.substr(Portal::$portal_id,1));			
			}
			if(!is_dir('upload/'.$dir))
			{
				@mkdir('upload/'.$dir);
			}
			if(file_exists('upload/'.$dir.'/'.$_FILES[$field]['name']))
			{				
				$new_name = 'upload/'.$dir.'/'.time().'_'.$_FILES[$field]['name'];
			}
			else
			{
				require_once 'packages/core/includes/utils/vn_code.php';	
				$new_name = 'upload/'.$dir.'/'.convert_utf8_to_latin($_FILES[$field]['name']);
			}
			$_REQUEST[$field] = $new_name;
		}
		if(strrpos($_REQUEST[$field],'.')!==false)
		{
			$extend = strtoupper(substr($_REQUEST[$field],strrpos($_REQUEST[$field],'.')+1));
			if(isset($params[$extend]))
			{
				$max_upload_file_size = ($params[$extend]['file_size']*1024*1024);	
				if(filesize($_FILES[$field]['tmp_name'])<= $max_upload_file_size)
				{
					if(move_uploaded_file($_FILES[$field]['tmp_name'],$_REQUEST[$field]))
					{
						if($constraint && $params[$extend]['width']>0 && $params[$extend]['height']>0)
						{
							create_thumb($_REQUEST[$field],$_REQUEST[$field],$params[$extend]['width'],$params[$extend]['height'],$logo);
						}
					}	
				}
				else
				{
					$error_message = 'invalid_file_size';
				}
			}
			else
			{
				$error_message = 'invalid_file_type';	
			}
		}	
		return $error_message;
	}
}
function update_file($field, $dir,$params=false)
{
	$error_message = '';
	if(!$params)
	{
		$params = Portal::template_cache('upload');
	}
	if(isset($_FILES[$field]) and $_FILES[$field]['name'])
	{		
		require_once 'packages/core/includes/utils/vn_code.php';	
		$new_name = $dir.'/'.convert_utf8_to_latin($_FILES[$field]['name']);
		$_REQUEST[$field] = $new_name;
		if(strrpos($_REQUEST[$field],'.')!==false)
		{
			$extend = strtoupper(substr($_REQUEST[$field],strrpos($_REQUEST[$field],'.')+1));
			if(isset($params[$extend]))
			{
				$max_upload_file_size = ($params[$extend]['file_size']*1024*1024);	
				if(filesize($_FILES[$field]['tmp_name'])<= $max_upload_file_size)
				{
					if(!move_uploaded_file($_FILES[$field]['tmp_name'],$_REQUEST[$field]))
					{
						$error_message = 'can_not_access';
					}	
				}
				else
				{
					$error_message = 'invalid_file_size';
				}
			}
			else
			{
				$error_message = 'invalid_file_type';	
			}
		}	
		return $error_message;
	}
}
function image_open($image_url)
{
	if(!($image = @imagecreatefromgif($image_url)))
	{
		if(!($image = @imagecreatefromjpeg($image_url)))
		{
			if(!($image = @imagecreatefrompng($image_url)))
			{
				if(!($image = @imagecreatefromwbmp($image_url)))
				{
					return false;
				}
			}
		}
	}
	return $image;
}
function create_thumb($image,$new_image,$new_width,$new_height,$logo=false)
{
	require_once 'packages/core/includes/utils/image/class.asido.php';
	asido::driver('gd');
	$i1 = asido::image($image,$new_image); 
	asido::resize($i1, $new_width, $new_height,ASIDO_RESIZE_PROPORTIONAL);
	if($logo)
	{
		Asido::watermark($i1, Portal::get_setting('site_icon_'.Portal::language()), ASIDO_WATERMARK_TOP_LEFT);
	}
	$i1->save(ASIDO_OVERWRITE_ENABLED);
	//nen anh
	//return compress_image($new_image,$new_image);
}
function compress_image($source_url, $destination_url, $quality=90) 
{ 
	$info = getimagesize($source_url); 
	if ($info['mime'] == 'image/jpeg') 
	{
		$image = imagecreatefromjpeg($source_url); 
	}
	elseif ($info['mime'] == 'image/gif') 
	{
			$image = imagecreatefromgif($source_url); 
	}
	elseif ($info['mime'] == 'image/png') 
	{
			$image = imagecreatefrompng($source_url); 
	}
	imagejpeg($image, $destination_url, $quality); 
	return $destination_url; 
} 

function write_file($file,$content)
{	
	$handler = fopen($file,'w');
	fwrite($handler,$content);
	fclose($handler);
}
?>