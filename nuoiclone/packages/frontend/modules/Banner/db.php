<?php
class BannerDB
{
	function get_user($user_id,$password)
	{
		return DB::fetch('
			SELECT
				account.*
			from 
				account 
			where 
				account.id="'.$user_id.'" 
				and password="'.User::encode_password($password).'"
			'
		);
	}
}
?>