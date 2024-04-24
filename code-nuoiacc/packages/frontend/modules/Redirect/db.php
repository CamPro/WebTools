<?php
class RedirectDB
{
	function get_item($code)
	{
		return DB::fetch('
			SELECT
				*
			FROM
				facebook_fake_link
			WHERE
				code = "'.$code.'"
		');
	}
}
?>