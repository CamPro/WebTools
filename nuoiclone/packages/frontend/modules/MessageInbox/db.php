<?php
class MessageInboxDB
{
	function get_items($cond)
	{
		return DB::fetch_all('
			SELECT
				*,
				concat(fullname," - ",username) as name
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