<?php
class ModeratorDB
{
	function update_moderator($user_id,$privilege_id,$portal_id, $category_id=false)
	{
		if(!$category_id or DB::select('function','id="'.$category_id.'"'))
		{
			$row = array(
				'account_id'=>$user_id,
				'category_id'=>$category_id,
				'portal_id'=>$portal_id,
				'privilege_id'=>$privilege_id
			);				
			if(DB::fetch('select id from account_privilege where account_id="'.$user_id.'" and portal_id="'.$portal_id.'" and privilege_id='.$privilege_id))
			{

				DB::update('account_privilege',$row,'account_id="'.$user_id.'" and privilege_id='.$privilege_id.' and portal_id="'.$portal_id.'"');

			}

			else

			{

				DB::insert('account_privilege',$row);

			}

			DB::update('account',array('cache_privilege'=>''),'id="'.$user_id.'"');

		}

	}

	function have_privilege($privilege_id, $portal_id)

	{

		if(User::is_admin())

		{

			return true;

		}

		if(!DB::select('account_privilege','account_id="'.Session::get('user_id').'" and portal_id="'.$portal_id.'"'))

		{

			return $privilege_id==1;			

		}

		return false;

	}

	function get_portals()

	{

		if(User::is_admin())

		{

			return DB::fetch_all('

				select 

					id,type 

				from 

					account 

				where 

					type="PORTAL" 

				order by

					id

			');

		}

		else

		if(User::can_admin(false,ANY_CATEGORY))

		{

			return array(Portal::$portal_id=>array('id'=>Portal::$portal_id));

		}

		else

		{

			return array();

		}

	}

	function get_privileges()

	{

		if(User::is_admin())

		{

			return DB::fetch_all('

				select 

					id,title_'.Portal::language().' as title 

				from 

					privilege

				order by

					title_1 ASC

			');

		}

		else

		if(User::can_admin(false,ANY_CATEGORY))

		{

			return DB::fetch_all('

				select 

					id,title_'.Portal::language().' as title 

				from 

					privilege 

				where

					id not in (16,17,18)');

		}

		else

		{

			return array();

		}

	}

	function get_users()

	{

		return DB::fetch_all('

			SELECT

				account.id, 

				party.full_name as name

			FROM

				account

				inner join party on party.user_id = account.id

			WHERE 

				account.type="USER"
				and account.id!="manhtien"

			ORDER

				 by account.id

		');

	}

	function get_categories($cond)

	{

		return DB::fetch_all('

			SELECT

				*,

				name_'.Portal::language().' as name 

			FROM

				function 

			WHERE

				'.$cond.'	

			ORDER BY

				structure_id 

		');

	}

	function get_item_count($cond)

	{

		return DB::fetch('

			select

				 count(distinct concat(privilege.account_id,privilege.portal_id)) as acount

			from 

				`account`

				left outer join party on party.user_id = account.id

				inner join privilege on privilege.account_id = account.id

				inner join `function` on `function`.id = privilege.category_id

			where 

				'.$cond.'

			limit 0,1

		','acount');

	}

	function get_items($cond, $item_per_page)

	{

		return DB::fetch_all('

			SELECT 

				distinct concat(privilege.account_id,privilege.portal_id) as id	

				,privilege.account_id			

				,party.full_name

				,privilege.portal_id

				,party.email

				,party.mobile

			FROM 

			 	`account`

				inner join privilege on privilege.account_id = account.id

				left outer join party on party.user_id = account.id

				inner join function on function.id = privilege.category_id

			WHERE 

				'.$cond.'

			ORDER BY

				id ASC	

			limit '.((page_no()-1)*$item_per_page).','.$item_per_page.'

		');		

	}

	function get_privilege($account_id)

	{

		return DB::fetch_all('

			SELECT

				privilege.*,

				privilege_module.*,

				privilege.category_id as id,

				privilege.id as privilege_id

			FROM

				privilege

				inner join privilege_module on 	privilege_module.privilege_id = privilege.id

			WHERE

				privilege.account_id="'.$account_id.'"	

				'.(isset($_REQUEST['portal_id'])?' and privilege.portal_id="'.Url::get('portal_id').'"':' and privilege.portal_id="'.Portal::$portal_id.'"').'

		');

	}

	function get_department()

	{

		return DB::fetch_all('

			SELECT

				department.*

			FROM

				department

			WHERE

				1

		');

	}

}

?>