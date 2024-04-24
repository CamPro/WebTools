<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class HelpContent extends Module
{
	static $item;
	function HelpContent($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(Url::get('id') and $item = DB::fetch('select * from facebook_help where id='.Url::get('id')))
		{
			HelpContent::$item = $item;
		}
		else
		{
			HelpContent::$item = DB::fetch('select * from facebook_help where id=1');
		}
		require_once 'forms/list.php';
		$this->add_form(new HelpContentForm());
	}
}
?>