<?php
class AutoCommentDB
{
	function get_items()
	{
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
		}
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