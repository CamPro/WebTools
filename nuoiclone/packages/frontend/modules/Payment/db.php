<?php
class PaymentDB
{
	function status($status)
	{
		switch ($status) {
			case 0:
				$result = '<span class="label bg-light-blue">Đang chờ xử lý</span>';
				break;

			case 1:
				$result = '<span class="label bg-light-green">Đã thanh toán</span>';
				break;
			default:
				$result = '<span class="label bg-red">Thanh toán bị hủy</span>';
				break;

		}

		return $result;
	}
	function get_items($cond='1')
	{
		return DB::fetch_all('
			SELECT
				*,
				0 as total
			FROM
				account
			WHERE
				'.$cond.'		
			ORDER BY 
				create_date desc	
		');	
	}
	function get_pay($cond)
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				facebook_payment
			WHERE
				'.$cond.'		
			ORDER BY 
				time desc	
		');	
	}
}
?>