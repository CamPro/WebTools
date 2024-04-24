<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class UpgradeManagement extends Module
{
	function UpgradeManagement($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::is_admin())
		{
			switch(Url::get('cmd'))
			{
				case 'ajax_action_item':
					$this->ajax_action_item(Url::get('id'),Url::get('action'));
					exit();
				case 'ajax_update':
					$this->ajax_update();
					exit();
				case 'get_user':	
					$this->get_user();
					exit();	
				case 'add':
				case 'edit':			
					require_once 'forms/edit.php';
					$this->add_form(new EditUpgradeManagementForm());
					break;
				default:
					require_once 'forms/list.php';
					$this->add_form(new UpgradeManagementForm());
					break;
			}
		}
		else
		{
			Url::redirect('dashboard');	
		}
	}
	function get_user()
	{
		if(Url::get('term'))
		{
			$user = DB::fetch_all('select id from account where id like "%'.Url::get('term').'%" and type="USER" and is_active');
			$data = array();
			foreach($user as $key=>$value)
			{
				$data[] = $value['id'];
			}
			System::jdebug($data);			
		}	
	}
	function ajax_action_item($id,$action,$message = true)
	{
		switch ($action) 
		{
			case 'delete':
				DB::delete('facebook_upgrade_account', 'id="'.$id.'"');
				break;
		}
		if($message)
		{
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => 'Xóa dữ liệu thành công!'
			));
		}
	}
	function ajax_update()
	{
		if(Url::get("user_id") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập tài khoản'
			));
			exit();
		}
		if(!filter_var(Url::get("user_id"), FILTER_VALIDATE_EMAIL)){
		  	System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Sai định dạng tài khoản email'
			));
			exit();			
		}
		if(Url::get('user_id') and (!($user = DB::fetch('select * from account where id="'.Url::get('user_id').'"'))))
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Tài khoản không tồn tại'
			));
			exit();	
		}
		if(Url::iget('account_quantity')=='')
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập số lượng tài khoản Faceboook'
			));
			exit();	
		}
		if(Url::get('total_price')=='')
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập số tổng tiền'
			));
			exit();	
		}
		if(isset($_REQUEST['id']) and DB::fetch('select * from facebook_upgrade_account where id="'.Url::sget('id').'"'))
		{
			$account=array(
				'user_id',
				'account_quantity'=>str_replace('.','',Url::get('account_quantity')),
				'month_quantity',
				'total_price'=>str_replace('.','',Url::get('total_price')),
				'date'
			);
			DB::update('facebook_upgrade_account',$account,'id="'.Url::sget('id').'"');
			System::jdebug(array(
				'st' 	=> 'success',
				'label' => "bg-light-green",
				'txt' 	=> 'Sửa thành công'
			));
			exit();
		}
		else
		{
			$account=array(
				'user_id',
				'account_quantity'=>str_replace('.','',Url::get('account_quantity')),
				'month_quantity',
				'total_price'=>str_replace('.','',Url::get('total_price')),
				'date',
				'time'=>time()
			);
			DB::insert('facebook_upgrade_account',$account);
			if(isset($_REQUEST['update']) and $user)
			{
				$time = strtotime($user['expiration_date']);
				DB::update('account',array(
					'maximum_facebook_accounts'=>str_replace('.','',Url::get('account_quantity')),
					'expiration_date'=>date("Y-m-d H:i:s",$time+(Url::iget('month_quantity')*30*24*60*60))
				),'id="'.Url::get('user_id').'"');
			}
			System::jdebug(array(
				'st' 	=> 'success',
				'label' => "bg-light-green",
				'txt' 	=> 'Thêm mới thành công'
			));
			exit();
		}

	}
}
?>