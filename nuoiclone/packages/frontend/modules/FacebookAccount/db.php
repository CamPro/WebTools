<?php
class FacebookAccountDB
{
	function get_total_item($cond='1')
	{
		return DB::fetch(
			'select 
				count(*) as acount 
			from 
				facebook_accounts
			where 
				'.$cond.'
				'
			,'acount');
	}
	function get_items($cond = '1',$item_per_page=100)
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
			LIMIT
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'	
			');	
	}
}
?>