<?php 
//  WRITEN BY	: thedeath
//  DATE  		: 24/11/2011
class Redirect extends Module
{
	static $item = '';
	function Redirect($row)
	{
		Module::Module($row);
		require_once 'db.php';	
		if(Url::sget('id') and ($item = RedirectDB::get_item(Url::sget('id'))))
		{
			Redirect::$item = $item;
			Portal::$meta_social = '<meta property="og:type" content="website" /> 
			<meta property="og:url" content="'.$item['caption'].'"/>
			<meta property="og:image" itemprop="thumbnailUrl" content="'.$item['image_url'].'" />
			<meta content="'.$item['title'].'" property="og:title" />
			<meta content="'.$item['description'].'" property="og:description"/>
			<meta property="og:site_name" content="'.$item['caption'].'"/>
			
			';
		}
		require_once 'forms/list.php';
		$this->add_form(new RedirectForm());
	}
}
?>