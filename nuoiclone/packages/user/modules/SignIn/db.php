<?php

class SignInDB

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
				
				,party.delivery
				
				,last_cart

				,full_name 

				,address

				,zone_id

				,mobile

				,image_url

				,small_thumb_url

				,vip
				,reputation

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
	
	function get_user_fb($user_id)
	{
		return DB::fetch('
			select 
				account.*
				,party.full_name 
				,party.address
				,party.zone_id
				,party.mobile
				,party.gender
				,party.email
				,party.birth_date
				,party.image_url
				,party.small_thumb_url
				,party.yahoo
				,party.skype
				,party.last_cart
				,party.is_face
			from 
				account 
				inner join party on party.user_id=account.id 
			where 
				account.id="'.$user_id.'"
			'
		);
	}
}

?>