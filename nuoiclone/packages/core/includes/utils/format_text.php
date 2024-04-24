<?php
function format_text($content,$width=false,$height=false)
{		
	$word_bad = Portal::template_cache('word_bad');
	$quick_link = Portal::template_cache('quick_link');	
	// tu xau
	$pattern = array();
	$replace = array();
	foreach($word_bad as $key=>$value)
	{
		$pattern[] = $value['word_bad'];
		$replace[] = $value['word_replace'];		
	}
	$content = @str_replace($pattern,$replace,$content);
	// gan link
	$pattern = array();
	$replace = array();
	foreach($quick_link as $key=>$value)
	{
		$pattern[] = '#(?!<.*?)(\b'.$value['word'].'\b)(?![^<>]*?>)#si'; ;
		$replace[] = '<a href="'.$value['link'].'">'.$value['word'].'</a>';		
	}
	$content = @preg_replace($pattern,$replace,$content,1);
	// ghep link root 
	$content = str_replace('../../../../../../../../../../',WEBSERVER.'/',$content);
	if(preg_match_all('/href="([^"]+)"/i',$content,$matches))
	{
		foreach($matches[1]  as $key=>$value)
		{
			if(strpos($value,'zozoha.com')===false)
			{
				$content = str_replace('href="'.$value.'"','href="'.$value.'" rel="nofollow"',$content);			
			}
		}
	}
	return $content;
}
function format_content($content,$dir = '',$alt)
{
	if(preg_match_all('/src="([^"]+)"/i',$content,$matches))
	{
		foreach($matches[1] as $key=>$value)
		{
			$name = 'upload/'.$dir.'/'.substr($value,(strrpos($value,'/')+1));
			copy($value,$name);
			//create_watermark($name,$name,true);
			$content = str_replace('src="'.$value.'"','src="'.$name.'" alt="Zozoha.com | '.$alt.'"',$content);	
		}
	}
	return $content;
}
function create_watermark($image,$new_image,$logo=false)
{
	require_once 'packages/core/includes/utils/image/class.asido.php';
	asido::driver('gd');
	$i1 = asido::image($image,$new_image); 
	Asido::watermark($i1, Portal::get_setting('watermark_'.Portal::language()), ASIDO_WATERMARK_BOTTOM_CENTER);
	$i1->save(ASIDO_OVERWRITE_ENABLED);
}
?>