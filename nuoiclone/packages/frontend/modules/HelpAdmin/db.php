<?php
class HelpAdminDB
{
	function get_items($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				facebook_help
			WHERE
				'.$cond.'
			ORDER BY 
				position 	
		');
	}
}
?>