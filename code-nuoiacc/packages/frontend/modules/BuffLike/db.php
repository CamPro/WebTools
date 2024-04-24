<?php
class BuffLikeDB
{
	function get_items($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				facebook_accounts
			WHERE
				'.$cond.'		
				and status
			ORDER BY 
				id desc	
		');	
	}
}
?>