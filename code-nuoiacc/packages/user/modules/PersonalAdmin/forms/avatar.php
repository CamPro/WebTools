<?php
class ChangeAvatarForm extends Form
{
	function ChangeAvatarForm()
	{
		Form::Form('ChangeAvatarForm');		
		$this->link_css('skins/default/css/cms.css');
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
		$this->check_verify();
		if(!$this->is_error())
		{				
			if($row = DB::fetch('select id,image_url from party where user_id="'.Session::get('user_id').'"'))
			{
				require_once 'packages/core/includes/utils/upload_file.php';
				$dir = substr(Portal::$portal_id,1).'/avatar/';	
				update_upload_file('image_url',$dir);
				if(Url::get('image_url')!='')
				{
					@unlink($row['image_url']);
					DB::update('party',array('image_url'),' user_id = "'.Session::get('user_id').'"');
				}	
			}	
			Url::redirect_current(array('cmd','action'=>'successful'));			
		}
	}
	function draw()
	{	
		if(Url::get('action')=='successful')
		{
			MessageBox::show_box(Portal::language('update_successful'),'success');							
		}
		if($row = PersonalAdminDB::get_user())
		{
			$_REQUEST['image_url'] = $row['image_url'];	
		}
		$this->parse_layout('avatar');
	}	
}
?>
