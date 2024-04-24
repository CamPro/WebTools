<?php
class EditPaymentForm extends Form
{
	function EditPaymentForm()
	{
		Form::Form('EditPaymentForm');
	}	
	function on_submit()
	{
		if(isset($_REQUEST['status']) and Url::get('id'))
		{
			DB::update_id('facebook_payment',array(
				'status',
				'note'
			),Url::iget('id'));
			echo '<script>alert("Xử lý thành công.");location="'.Url::build_current().'";</script>';
		}	
	}
	function draw()
	{
		$this->map = array();
		if(Url::get('cmd')=='edit' and Url::get('id') and ($user = DB::fetch('select * from facebook_payment where id="'.Url::sget('id').'"')))
		{
			foreach($user as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
		}
		$this->map['status_list'] = array('0'=>'Đang chờ xử lý',1=>'Đã thanh toán',2=>'Thanh toán bị hủy');
		$this->parse_layout('edit',$this->map);
	}
}
?>