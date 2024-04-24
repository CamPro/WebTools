<?php
class DashboardDB
{
	function status_post($type)
	{
		switch ($type) 
		{
			case 1:
				$result = 'Chờ xử lý';
				break;
			case 2:
				$result = 'Hàng đợi';
				break;
			case 4:
				$result = 'Xảy ra lỗi';
				break;
			case 5:
				$result = 'Lặp lại';
				break;
			default:
				$result = 'Hoàn thành';
				break;
		}
		return $result;
	}
	function get_items()
	{
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
		}
		$data = array(
			'total_process'=>0,
			'total_processing'=>0,
			'total_success'=>0,
			'total_failure'=>0,
			'total_profile'=>0,
			'total_group'=>0,
			'total_page'=>0,
			'total_liked'=>0,			
		);
		$fb_account = DB::fetch('select count(*) as total,sum(total_like) as total_like from facebook_accounts where '.$cond);
		$data['total_profile'] = $fb_account['total'];
		$data['total_liked'] = $fb_account['total_like'];
		$groups = DB::fetch_all('select count(*) as total,type as id from facebook_groups where '.$cond.' group by type');
		foreach($groups as $key=>$value)
		{
			switch($key)
			{
				case 'page':
					$data['total_page'] = $value['total'];
					break;
				case 'group':	
					$data['total_group'] = $value['total'];
					break;
			}
		}
		$facebook_schedules = DB::fetch_all('
			SELECT
				count(*) as total,
				status as id
			FROM
				facebook_schedules
			WHERE
				'.$cond.'
			GROUP BY 
				status	
		');
		$data['total_process'] = 0;
		if(isset($facebook_schedules[1]))
		{
			$data['total_processing'] = $facebook_schedules[1]['total'];
			$data['total_process']+=$data['total_processing'];
		}
		if(isset($facebook_schedules[3]))
		{
			$data['total_success'] = $facebook_schedules[3]['total'];
			$data['total_process']+=$data['total_success'];			
		}
		if(isset($facebook_schedules[4]))
		{
			$data['total_failure'] = $facebook_schedules[4]['total'];
			$data['total_process']+=$data['total_failure'];			
		}
		$data['post_pie_chart']    = "['Thành công',".$data['total_success']."],['Xảy ra lỗi',".$data['total_failure']."],['Chờ xử lý',".$data['total_processing']."]";
		$data['post_by_day'] = '[0,0]';
		$post_by_day = '';
		if($data_post_by_day = DB::fetch_all('select count(*) as total, DATE_FORMAT(created,"%Y,%m,%d") as date_by,id from facebook_schedules where '.$cond.' group by date_by'))
		{
			foreach($data_post_by_day as $key_=>$value_)
			{
				$post_by_day .= ',[Date.UTC('.$value_['date_by'].'),'.$value_['total'].']';
			}
			$post_by_day = substr($post_by_day,1);
		}		
		$data['post_by_day'] = $post_by_day;//"[Date.UTC(2017,2,2),7],[Date.UTC(2017,2,3),17],[Date.UTC(2017,2,4),27],[Date.UTC(2017,2,7),9]";
		return $data;
	}
}
?>