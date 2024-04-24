<?php
class UpgradeManagementDB
{
	function get_items($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				facebook_upgrade_account
			WHERE
				'.$cond.'
			ORDER BY 
				id desc	
		');
	}
}
?>