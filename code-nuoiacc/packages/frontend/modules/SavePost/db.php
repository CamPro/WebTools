<?php
class SavePostDB
{
	function get_categories($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				categories
			WHERE
				'.$cond.'		
			ORDER BY 
				name	
		');	
	}
	function get_items($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*
			FROM 
				save
			WHERE
				'.$cond.'	
			ORDER BY 
				id desc	
		');	
	}
	function get_fb_account($cond='1')
	{
		return DB::fetch_all('
			select 
				username as id,
				concat(fullname," (",username,")") as name 
			from 
				facebook_accounts 
			where 
				'.$cond.' and status 
			order by 
				status desc,id desc');
	}
	function get_groups($condition='1')
	{
		$category = array();
		if(Session::is_set('category'))
		{
			$category = DB::fetch('select * from categories where id='.Session::get('category').' and '.$condition);
		}
		$account_fb =  DB::fetch_all('select * from facebook_accounts where '.$condition.' and status');
		if($account_fb)
		{
			$cond = '1';
			if($category and $category['data'])
			{
				$group_id = str_replace(array('[',']'),array('',''),$category['data']);;
				if($group_id)
				{
					$cond.=' and pid in ('.$group_id.')';
				}
			}
			foreach ($account_fb as $key => $value) 
			{
				$account_fb[$key]['groups'] = DB::fetch_all('select * from facebook_groups where '.$cond.' and account_id="'.$key.'" and '.$condition.' order by `type` desc');
			}
		}
		return $account_fb;
	}
}

?>