<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY vuonggialong
******************************/

function empty_dir($name)
{
	if($dir = @opendir($name))
	{
		while($file=readdir($dir))
		{
			if($file!='..')
			{
				@unlink($name.'/'.$file);
			}
		}
		closedir($dir);
	}
}
function empty_all_dir($name, $remove = false)
{
	if(is_dir($name))
	{
		if($dir = opendir($name))
		{
			$files = array();
			while($file=readdir($dir))
			{
				if($file!='..' and $file!='.')
				{
					$files[]=$file;
				}
			}
			closedir($dir);
			foreach($files as $file)
			{
				if(is_dir($name.'/'.$file))
				{
					require_once 'packages/core/includes/utils/dir.php';
					empty_all_dir($name.'/'.$file, $remove);
				}
				else
				{
					@unlink($name.'/'.$file);
				}
			}
			if($remove)
			{
				@rmdir($name);
			}
		}		
	}
}
function copy_dir($source, $dest)
{
	$dir = opendir($source);
	while($file=readdir($dir))
	{
		if($file != '.' and $file != '..')
		{
			if(is_dir($source.'/'.$file))
			{
				if(mkdir($dest.'/'.$file))
				{
					require_once 'packages/core/includes/utils/dir.php';
					copy_dir($source.'/'.$file,$dest.'/'.$file);
				}
			}
			else
			{
				copy($source.'/'.$file,$dest.'/'.$file);
			}
		}
	}
	closedir($dir);
}
function image_icon($type)
{
	switch($type)
	{
		case 'doc':
		case 'docx':
			$icon = 'word.png';
			break;
		case 'png':
		case 'jpg':
		case 'gif':
		case 'jpeg':
		case 'bmp':
			$icon = 'image.png';
			break;
		case 'avi':
		case 'mpeg':
		case 'mp4':
		case 'flv':
			$icon = 'avi.png';
			break;
		case 'mp3':	
			$icon = 'mp3.png';
			break;	
		case 'pdf':	
			$icon = 'pdf.png';
			break;			
		case 'xls':
		case 'xlsx':	
			$icon = 'excel.png';
			break;			
		default:
			$icon = 'question.png';			
			break;
	}
	return $icon;
}
function get_files_in_dir($dir_path,$type='file',$prefix='',$use_icon)
{
	$files = array();
	if(is_dir($dir_path))
	{
		$dir = opendir($dir_path);
		
		while($file = readdir($dir))
		{
			if($file != '.' and $file != '..' and $file!='Thumbs.db' and 
				(($type=='file' and is_file($dir_path.'/'.$file))
				or($type=='dir' and is_dir($dir_path.'/'.$file))))
			{
				if($use_icon)
				{
					$icon = substr($file,strrpos($file,'.')+1);
					$files[$dir_path.'/'.$file] = array(
						'name'=>$file
						,'path'=>$dir_path.'/'.$file
						,'time'=>date("h\h:i' d/m/y", filectime($dir_path.'/'.$file))
						,'icon'=>'skins/default/images/footer/'.image_icon(strtolower($icon))
					);
				}
				else
				{
					$files[$dir_path.'/'.$file] = str_replace('skins/','',$dir_path).'/'.$prefix.$file;
				}
			}
		}
		closedir($dir);
	}
	return $files;
}
function get_package_template($extra_path, $type='file', $use_icon = false)
{
	require_once 'packages/core/includes/portal/package.php';
	global $packages;
	if($use_icon)
	{
		$layouts = array(''=>array('name'=>'none','icon'=>'packages/cms/templates/content/detail/layouts/default/icon.jpg'));
	}
	else
	{
		$layouts = array(''=>'');
	}
	foreach($packages as $package)
	{
		$layouts += get_files_in_dir($package['path'].$extra_path,$type,$package['name'].'/',$use_icon);
	}
	return $layouts;
}
function get_template($extra_path)
{
	$templates = array();
	$dir = 'skins';
	if($templates = get_files_in_dir($dir,'dir','',0))
	{
		foreach($templates as $id=>$temp)
		{
			$path = $id.'/'.$extra_path;				
			$templates += get_files_in_dir($path,'dir','',0);
			if(isset($templates[$id]))
			{
				unset($templates[$id]);
			}
		}
	}	
	return array(''=>'')+$templates;
}
?>