<?php
class PersonalAdminDB
{
	function get_user()
	{
		 return DB::fetch('
			SELECT 
				party.*
				,`account`.last_time_online
				,`account`.`create_date` as create_date
			FROM
				`account` 
				inner join party on party.user_id=account.id
			WHERE 
				`account`.id="'.Session::get('user_id').'" 
				 and account.type="USER"'
		);		
	}
}
?>