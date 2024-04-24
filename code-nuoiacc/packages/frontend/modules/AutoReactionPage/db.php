<?php
class AutoReactionPageDB
{
	function get_items()
	{
		$cond = 'user_id="'.User::id().'"';
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