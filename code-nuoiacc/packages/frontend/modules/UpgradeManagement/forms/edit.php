<?php
class EditUpgradeManagementForm extends Form
{
	function EditUpgradeManagementForm()
	{
		Form::Form('EditUpgradeManagementForm');
	}	
	function draw()
	{
		$this->map = array();
		if(Url::get('cmd')=='edit' and Url::get('id') and ($user = DB::fetch('select * from facebook_upgrade_account where id="'.Url::sget('id').'"')))
		{
			foreach($user as $key=>$value)
			{
				if($key=='account_quantity' or $key=='total_price')
				{
					$_REQUEST[$key] = System::display_number($value);
				}
				else
				{
					$_REQUEST[$key] = $value;
				}
			}
		}
		$this->map['month_quantity_list'] = array(1=>'1 tháng',2=>'2 tháng',3=>'3 tháng',4=>'4 tháng',5=>'5 tháng',6=>'6 tháng',7=>'7 tháng',8=>'8 tháng',9=>'9 tháng',10=>'10 tháng',11=>'11 tháng',12=>'12 tháng');
		$this->parse_layout('edit',$this->map);
	}
}
?>