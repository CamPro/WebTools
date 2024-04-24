<?php
class UserManagementDB
{
	function get_total_item($cond='1')
	{
		return DB::fetch(
			'select 
				count(*) as acount 
			from 
				account
			where 
				'.$cond.'
				'
			,'acount');
	}
	function get_items($cond='1',$item_per_page)
	{
		return DB::fetch_all('
			SELECT
				account.*
			FROM
				account 
			WHERE
				'.$cond.'
				and account.type="USER"	
			ORDER BY 
				create_date desc	
			LIMIT
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'		
		');
	}
}
?>