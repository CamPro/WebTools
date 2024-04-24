<?php
class AddMemGroupDB
{
	function get_items()
	{
		return DB::fetch_all('
			SELECT
				*,
				concat(fullname," - ",username) as name
			FROM
				facebook_accounts
			WHERE
				user_id="'.User::id().'"			
				and status
			ORDER BY 
				id desc	
		');	
	}
}
?>