<?php
class SignInForm extends Form
{
	function SignInForm()
	{
		Form::Form('SignInForm');
		$this->link_js('packages/core/includes/js/jquery/jquery.cookie.js');
		$this->link_js('packages/core/includes/js/jquery/jquery.blockUI.js');
		$this->link_css(Portal::template_css('news').'/css/login.css');
		$this->link_css(Portal::template_css('news').'/css/sign_in.css');
	}
	function on_submit()
	{
		if (!User::is_login())
		{
			$this->login();
		}
		else
		{
			Url::redirect('ca-nhan',array(),REWRITE);
		}
	}
	function login()
	{
		$user=str_replace(array('"','\\'),'a',$_REQUEST['user_id']);
		if(!$row= SignInDB::get_user($user,Url::get('password')))		
		{
			$this->error('','invalid_password');
		}
		else
		{
			$today=getdate();
			$check_date = strtotime($today['year'].'/'.$today['mon'].'/'.$today['mday']);
			{
				if(!$_SESSION['items'])
				{
					eval('$cart='.$row['last_cart'].';');
					foreach($cart as $key=>$value)
					{
						$cart[$key]['remain'] = DB::fetch('select id,quantity from quantity_cz where product_id='.$value['id'].' and color_id='.$value['color'].' and size_id='.$value['size'],'quantity');
					}
					Session::set('items',$cart);
				}
				Session::set('user_id',$row['id']);
				Session::set('user_data',$row);
				DB::query('update account set last_online_time='.time().' where id="'.Session::get('user_id').'"');
				if($_REQUEST['forgot_user'])
				{
					//setcookie('c_user',$row['ref_id']);
					echo '<script src="packages/core/includes/js/cookie.js"></script>';
					echo '<script>Set_Cookie("c_user","'.$row['ref_id'].'",365,"/","","");</script>';
				}
				if($_REQUEST['popup'])
				{
					echo '<script>parent.location=parent.window.location;</script>';exit();
				}
				if(Url::get('href'))
				{
					$href = str_replace('SID='.$_COOKIE['PHPSESSID'],'',Url::get('href'));
					echo '<script>location="'.$href.'";</script>';
				}
				else
				{
					Url::redirect('ca-nhan',array(),REWRITE);
				}
			}
		}
	}
	function draw()
	{
		if($_SESSION[$_REQUEST['Loginticker']])
		{
			foreach($_SESSION[$_REQUEST['Loginticker']] as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
			$this->on_submit();
		}
		if(User::is_login())
		{
			$this->parse_layout('user');	
			if($_REQUEST['page']=='dang-nhap')
			{
				echo '<script>location="'.Url::build('overview',array(),REWRITE).'";</script>';
			}
			if(Url::get('href'))
			{
				$href = str_replace('SID='.$_COOKIE['PHPSESSID'],'',Url::get('href'));
				echo '<script>location="'.$href.'";</script>';
			}
		}
		else
		{
			$layout = 'sign_in';
			if(Module::get_setting('layout'))
			{
				$layout = Module::get_setting('layout');
			}
			if(!isset($_REQUEST['user_id']))
			{
				if(isset($_COOKIE['forgot_user']))
				{
					$_REQUEST['user_id'] = substr($_COOKIE['forgot_user'],0,strpos($_COOKIE['forgot_user'],'_'));
				}
			}
			if(!isset($_REQUEST['password']))
			{
				if(isset($_COOKIE['forgot_user']))
				{
					$_REQUEST['password'] = substr($_COOKIE['forgot_user'],strpos($_COOKIE['forgot_user'],'_')+1);
				}
			}
			$this->parse_layout($layout);
		}
	}
}
?>