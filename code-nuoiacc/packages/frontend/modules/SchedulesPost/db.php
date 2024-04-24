<?php
class SchedulesPostDB
{
	function get_total_item($cond='1')
	{
		return DB::fetch(
			'select 
				count(*) as acount 
			from 
				facebook_schedules
			where 
				'.$cond.'
				'
			,'acount');
	}
	function get_items($cond = '1',$item_per_page)
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				facebook_schedules
			WHERE
				'.$cond.'		
			ORDER BY 
				status,time_post desc
			LIMIT
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'		
		');
	}	
	function get_account()
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