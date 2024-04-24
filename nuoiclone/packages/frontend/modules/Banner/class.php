<?php 
//  WRITEN BY	: thedeath
//  DATE  		: 24/11/2011
class Banner extends Module
{
	function Banner($row)
	{
		Module::Module($row);
		require_once 'db.php';	
		if(!User::is_login() and Url::get('token'))
		{
			if(Url::get('token') and ($user = DB::fetch('select * from account where token="'.Url::get('token').'" and !is_active')))
			{
				DB::update('account',array('is_active'=>1),'id="'.$user['id'].'"');
				Session::set('user_id',$user['id']);
				Session::set('user_data',$user);
			}
			else
			{
				echo '<script>alert("Tài khoản đã được active, bạn có thể sử dụng. Vui lòng đăng nhập vào hệ thống.");</script>';	
			}
		}
		if(User::is_login())
		{
			Url::redirect('dashboard');
		}
		if(isset($_REQUEST['ref']) and $_REQUEST['ref'] and !Session::is_set('ref'))
		{
			Session::set('ref',Url::get('ref'));
		}
		switch(Url::get('cmd'))
		{
			case 'forgot_password':
				$this->forgot_password();
				exit();
			case 'register':
				$this->register();
				exit();	
			case 'login':	
				$this->login();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new BannerForm());
				break;
		}
	}
	function forgot_password()
	{
		if(Url::get("email") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập email'
			));
			exit();			
		}	
		if(!filter_var(Url::get("email"), FILTER_VALIDATE_EMAIL)){
		  	System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Sai định dạng email'
			));
			exit();			
		}
		if($user = DB::fetch('select * from account where id="'.Url::get('email').'"'))
		{
			$from = 'ungdungnguoiviet@gmail.com';
			$password = String::random_string(5);	
			$subject = 'KHÔI PHỤC TÀI KHOẢN TRÊN '.strtoupper(WEBSERVER);
			$content = '
			<div style="border:1px solid #ccc;border-radius:5px;">
			<div style="border-bottom:1px solid #ccc;padding:10px 20px;"><h3 style="margin:0;padding:0;">Khôi phục tài khoản trên '.WEBSERVER.'.</h3></div>
			<div style="padding:10px 20px;">
			<p>Chào bạn, '.$user['full_name'].'!</p>
			<p>Email này được gửi vì chúng tôi đã nhận được yêu cầu khôi phục tài khoản của bạn trên '.WEBSERVER.'.</p>
			<p>Thông tin mật khẩu mới của bạn bây giờ là: <b style="color:#f00">'.$password.'</b></p>
			<p>Xin vui lòng nhớ mật khẩu này để tránh trường hợp đáng tiếc xảy ra.</p>
			<p><small><em>Đây là Email trả lời tự động vui lòng không reply lại email này!</em></small></p>
			</div>
			<div style="border-top:1px solid #ccc;padding:5px 20px;">
			<small>
			<span style="width:33%;display:inline-block;font-weight:bold;">'.Portal::get_setting('website_title').'</span>
			</small>
			</div>
			</div>
			';
			DB::update('account',array('password'=>User::encode_password($password)),'id="'.$user['id'].'"');
			@file_get_contents(WEBSERVER.'sendmail/send.php?cmd=send_email&from='.$from.'&to='.Url::get('email').'&subject='.urlencode($subject).'&content='.urlencode($content));
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => 'Khôi phục tài khoản thành công, vui lòng kiểm tra email của bạn.'
			));
		}
		else
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Tài khoản email không tồn tại trên hệ thống.'
			));
			exit();	
		}
	}
	function login()
	{
		if(Url::get("email") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập email'
			));
			exit();			
		}

		if(!filter_var(Url::get("email"), FILTER_VALIDATE_EMAIL)){
		  	System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Sai định dạng email'
			));
			exit();			
		}
		if(Url::get("password") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập mật khẩu'
			));
			exit();			
		}
		if($row = BannerDB::get_user(Url::sget('email'),Url::get('password')))
		{
			if($row['is_active']==1)
			{
				if($row['expiration_date']<date("Y-m-d H:i:s"))
				{
					System::jdebug(array(
						"st"    => "success",
						"label" => "bg-red",
						"redirect" => "?page=upgrade_account",
						"txt"   => 'Tài khoản hết hạn sử dụng vui lòng nâng cấp tài khoản để được sử dụng tiếp.'
					));
					exit();	
				}
				Session::set('user_id',$row['id']);
				Session::set('user_data',$row);
				DB::query('update account set last_online_time='.time().' where id="'.Session::get('user_id').'"');
				System::jdebug(array(
					"st"    => "success",
					"label" => "bg-light-green",
					"txt"   => 'Đăng nhập thành công'
				));
				exit();				
			}
			else
			{
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => 'Tài khoản của bạn chưa được kích hoạt'
				));
				exit();				
			}
		}
		else
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Tên đăng nhập hoặc mật khẩu không đúng'
			));
			exit();			
		}
	}
	function register()
	{
		if(Url::get("full_name") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập họ và tên'
			));
			exit();
		}
		if(Url::get("email") == ""){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập email'
			));
			exit();
		}

		if(!filter_var(Url::get("email"), FILTER_VALIDATE_EMAIL)){
		  	System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Sai định dạng email'
			));
			exit();			
		}

		if(strlen(Url::get('password')) == ''){
    		System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Nhập mật khẩu'
			));
			exit();			
    	}

		if(strlen(Url::get("password")) < 6){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Mật khẩu nhập phải ít nhất 6 ký tự'
			));
			exit();			
		}

		if(Url::get("password") != Url::get("repassword")){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => 'Mật khẩu và nhập lại mật khẩu không trùng nhau'
			));
			exit();			
		}
		if(!DB::fetch('select * from account where id="'.Url::sget('email').'"'))
		{
			$ref = '';
			if(Url::get('ref'))
			{
				$ref = Url::get('ref');
			}
			elseif(Session::is_set('ref'))
			{
				$ref = Session::get('ref');
			}
			$code = String::random_string(5,true,'account','code');
			$user_id = Url::sget('email');
			$account=array(
				'id'=>$user_id,
				'last_online_time'=>time(),
				'password'=>User::encode_password(Url::get('password')),
				'create_date'=>time(),
				'timezone'=>Portal::get_setting('timezone'),
				'type'=>'USER',
				'full_name'=>Url::get('full_name'),
				'expiration_date'=>date("Y-m-d H:i:s",time()+(Portal::get_setting('expiration_date')*24*60*60)),
				'is_active'=>Portal::get_setting('auto_active_user'),
				'email'=>$user_id,
				'ref'=>$ref,
				'phone',
				'maximum_facebook_accounts' => Portal::get_setting('max_account'),
				'code'=>$code,
				'sobcoin'=>Portal::get_setting('sobcoin_reward',3)
			);
			if(!User::is_login())
			{
				DB::insert('account',$account);
			}
			if(Portal::get_setting('auto_active_user'))
			{
				// dang ky thanh cong
				Session::set('user_id',$user_id);
				Session::set('user_data',$account);
				System::jdebug(array(
					'st' 	=> 'success',
					'label' => "bg-light-green",
					'txt' 	=> 'Đăng ký thành công!'
				));
			}
			else
			{
				//yeu cau active tai khoan qua email
				$token = String::random_string(rand(60,80));
				DB::update('account',array('token'=>$token),'id="'.$user_id.'"');
				System::jdebug(array(
					'st' 	=> 'success',
					'label' => "bg-light-green",
					'txt' 	=> 'Đăng ký tài khoản thành công, vui lòng kiểm tra hòm thư và kích hoạt tài khoản để có thể sử dụng.'
				));
				@$this->verify_email(Url::get('full_name'),$user_id,$token);
			}
		}
		else
		{
			System::jdebug(array(
				'st' 	=> 'error',
				'label' => "bg-red",
				'txt' 	=> 'Email đã tồn tại'
			));
		}
	}
	function verify_email($full_name,$to,$random_string)
	{
		$from = 'ungdungnguoiviet@gmail.com';
		$subject = 'KÍCH HOẠT TÀI KHOẢN TRÊN '.strtoupper(WEBSERVER);
		$content = '
		<div style="border:1px solid #ccc;border-radius:5px;">
		<div style="border-bottom:1px solid #ccc;padding:10px 20px;"><h3 style="margin:0;padding:0;">Xác thực email tài khoản trên '.WEBSERVER.' </h3></div>
		<div style="padding:10px 20px;">
		<p>Xin chào, '.$full_name.'!</p>
		<p>Email này được gửi vì chúng tôi đã nhận được yêu cầu xác thực tài khoản của bạn trên '.WEBSERVER.'.</p>
		<p><small><em>Nếu không phải bạn đã gửi yêu cầu, vui lòng bỏ qua không thực hiện các bước dưới đây.</em></small></p>
		<p>Click vào đường dẫn bên dưới để hoàn thành việc xác thực tài khoản trên '.WEBSERVER.':</p>
		<p><a href="'.WEBSERVER.'?verify='.md5(md5($to)).'&token='.$random_string.'">'.WEBSERVER.'?verify='.md5(md5($to)).'&token='.$random_string.'</a></p>
		<p><small><em>Hoặc copy đường dẫn trên và dán vào trình duyệt để truy cập.</em></small></p>
		</div>
		<div style="border-top:1px solid #ccc;padding:5px 20px;">
		<small>
		<span style="width:33%;display:inline-block;font-weight:bold;">'.Portal::get_setting('website_title').'</span>
		</small>
		</div>
		</div>
		';
		@file_get_contents(WEBSERVER.'sendmail/send.php?cmd=send_email&from='.$from.'&to='.$to.'&subject='.urlencode($subject).'&content='.urlencode($content));
		return true;
	}
}
?>