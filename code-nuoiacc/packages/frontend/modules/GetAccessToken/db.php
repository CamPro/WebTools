<?php
class GetAccessTokenDB
{
	function get_items($cond = '1')
	{
		return DB::fetch_all('
			SELECT 
				* 
			FROM
				facebook_accounts 
			WHERE 
				'.$cond.'	
			ORDER BY 
				status desc,id desc	
			');	
	}
}
?>