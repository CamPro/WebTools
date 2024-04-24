<?php
class SchedulesGroupDB
{
	function get_total_item($cond='1')
	{
		return DB::fetch(
			'select 
				count(*) as acount 
			from 
				facebook_schedules_group
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
				facebook_schedules_group
			WHERE
				'.$cond.'		
			ORDER BY 
				status,time_post_show desc
			LIMIT
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'	
		');
	}	
}
?>