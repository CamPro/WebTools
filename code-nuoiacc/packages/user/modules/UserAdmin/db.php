<?php
class UserAdminDB
{
	function get_total($cond)
	{
		return DB::fetch('
			SELECT 
				count(DISTINCT(account.id)) as acount
			FROM 
			 	`account`
				inner join `party` on `party`.user_id=`account`.id and account.type="USER"
				left outer join `zone` on `zone`.id=`party`.`zone_id`
			WHERE 
				'.$cond.'
		');
	}
	function get_items($cond,$item_per_page)
	{
		return DB::fetch_all('
			SELECT 
				`account`.id
				,`account`.`password` 
				,`account`.`auto` 				
				,`party`.full_name 
				,IF(`party`.`birth_date`<>"0000-00-00",DATE_FORMAT(`party`.`birth_date`,"%d/%m/%Y"),"") as birth_date 
				,`party`.`address`
				,IF(`account`.`create_date`<>"0000-00-00",DATE_FORMAT(`account`.`create_date`,"%d/%m/%Y"),"") as create_date
				,IF(`party`.`gender`=1, "Male","Female") as gender
				,IF(`account`.`is_active`=1,"Yes","No") as active 
				,IF(`account`.`is_block`=1,"Yes","No") as block
				,`zone`.`name_'.Portal::language().'` as zone_id
				,zone.id as city
				,party.point
				,party.time		
				,party.reputation		
				,party.mobile
				,party.email
			FROM 
			 	`account`
				inner join `party` on `party`.user_id=`account`.id and account.type="USER"
				left outer join `zone` on `zone`.id=`party`.`zone_id`
			WHERE 
				'.$cond.'	
			ORDER BY 
				party.id DESC
			LIMIT 
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'
		');
	}
	function delete_item($user_id)
	{
		if($user_id && ($item = DB::fetch('select id from account where id="'.$user_id.'"')))
		{
			if($party = DB::fetch('select id,image_url from party where user_id="'.$user_id.'"'))
			{
				DB::delete('party',' user_id ="'.$item['id'].'"');
				@unlink($party['image_url']);
			}
			DB::delete('account_privilege',' account_id ="'.$item['id'].'"');
			DB::delete('account_setting',' account_id ="'.$item['id'].'"');
			DB::delete('account',' id ="'.$item['id'].'"');
			DB::delete('account_related','child_id="'.$user_id.'"');
			if($privilege = DB::fetch_all('select * from privilege where account_id="'.$user_id.'"'))
			{
				foreach($privilege as $key)
				{
					DB::delete('privilege_module','	privilege_id ='.$key);
				}
				DB::delete('privilege','account_id="'.$user_id.'"');
			}
		}	
	}
}
?>