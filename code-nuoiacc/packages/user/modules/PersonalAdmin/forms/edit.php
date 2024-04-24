<?php
class PersonalAdminEditForm extends Form
{
	function PersonalAdminEditForm()
	{
		Form::Form('PersonalAdminEditForm');
		$this->add('full_name',new TextType(true,'invalid_full_name',0,50));
		$this->add('email',new EmailType(true,'invalid_email',0,200));
		$this->add('address',new TextType(true,'invalid_address',0,200));
		$this->add('phone',new PhoneType(false,'invalid_phone_number'));
		$this->add('mobile',new PhoneType(false,'invalid_mobile'));
		$this->add('zone_id',new TextType(true,'invalid_zone_id',0,50));
		$this->link_css('skins/default/css/cms.css');
		$this->link_css('skins/default/css/message.css');
		$this->link_js(Portal::template_js('core').'jquery/datepicker.js');
		$this->link_js(Portal::template_js('core').'jquery/jquery.maskedinput.js');
		$this->link_css('skins/default/css/jquery/datepicker.css');
	}
	function check_verify()
	{
		$security_code = $_SESSION["security_code"];
		$error = false;
		if (!(($_REQUEST["verify_confirm_code"] == $security_code) && (!empty($_REQUEST["verify_confirm_code"]) && !empty($security_code)) ))
		{
			$this->error('verify_confirm_code','error_verify_confirm_code');
			$error = true;
		}
		return $error;
	}
	function on_submit()
	{		
		if($this->check())
		{
			if(!$this->is_error())
			{
				$row = array(
					'full_name'
					,'address'
					,'birth_date'=>Date_Time::to_sql_date(Url::get('birth_date'))
					,'gender'
					,'phone'
					,'mobile'
					,'zone_id'
					,'fax'
					,'yahoo'
					,'skype'
					,'email'
					,'website'
					,'blast'
					,'note'
				);			
				DB::update('party',$row,' user_id = "'.Session::get('user_id').'"');			
				require_once 'packages/core/includes/utils/upload_file.php';
				$dir = substr(Portal::$portal_id,1).'/avatar/';	
				update_upload_file('image_url',$dir);
				if(Url::get('image_url')!='')
				{
					$row = DB::fetch('select id,image_url from party where user_id="'.Session::get('user_id').'"');
					@unlink($row['image_url']);
					DB::update('party',array('image_url'),' user_id = "'.Session::get('user_id').'"');
				}	
				Url::redirect_current(array('cmd','action'=>'successful'));
			}
		}
	}
	function draw()
	{			
		if(Url::get('action')=='successful')
		{
			echo '<script>alert("'.Portal::language('update_successful').'");</script>';
		}		
		if($row = PersonalAdminDB::get_user())
		{			
			foreach($row as $key=>$value)
			{
				if(is_string($value) and !isset($_REQUEST[$key]))
				{
					if($key=='birth_date')
					{
						$_REQUEST[$key]= Date_Time::to_common_date($value);
					}
					else
					{							
						$_REQUEST[$key] = $value;
					}
				}
			}					
				 			
		}	
		$zone = Portal::template_cache('zone');
		unset($zone[1]);
		$this->map['zone_id_list'] = array(''=>Portal::language('select_zone'))+String::get_list($zone,'name',true,1);
		$this->map['gender_list'] = array('0'=>Portal::language('male'),'1'=>Portal::language('female'));
		$this->map['birth_day_list'] = Lib::get_day();
		$this->map['birth_month_list'] = Lib::get_month();
		$this->map['birth_year_list'] = Lib::get_year();
		$this->parse_layout('edit',$this->map);
	}
}
?>
