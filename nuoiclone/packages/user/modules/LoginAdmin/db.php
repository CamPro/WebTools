<?php
class LoginAdminDB
{
	function get_user($user_id,$password)
	{
		return DB::fetch('
			select 
				account.*
				,party.id as ref_id
				,party.email
				,party.zone_id
				,party.gender
				,full_name 
				,address
				,mobile
				,image_url
				,small_thumb_url
			from 
				account 
				inner join party on party.user_id=account.id 
			where 
				account.id="'.$user_id.'" 
				and password="'.User::encode_password($password).'"
				and is_active
			'
		);
	}
}
?>