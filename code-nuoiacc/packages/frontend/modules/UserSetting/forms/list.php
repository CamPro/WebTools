<?php
class UserSettingForm extends Form
{
	function UserSettingForm()
	{
		Form::Form('UserSettingForm');
	}	
	function save_image($field)
	{
		require_once 'packages/core/includes/utils/upload_file.php';
		$dir = substr(Portal::$portal_id,1).'/icon/';		
		update_upload_file('config_'.$field,$dir);
		if(Url::get('config_'.$field)!='')
		{
			Portal::set_setting($field,Url::get('config_'.$field),false,'PORTAL');
		}
	}	
	function on_submit()
	{
		if(isset($_REQUEST))
		{
			foreach($_REQUEST as $key=>$value)
			{
				if(preg_match('/config_(.*)/',$key,$matches))
				{	

					Portal::set_setting($matches[1],$value,false,'PORTAL');
				}	
			}	
			if($_FILES)
			{
				foreach($_FILES as $key=>$value)
				{
					if(preg_match('/config_(.*)/',$key,$matches))
					{
						$this->save_image($matches[1]);	
					}
				}
			}
			Session::delete('portal');
			Url::redirect_current();
		}
	}
	function draw()
	{
		$this->map = array();
		$this->map['timezone'] = Date_Time::timezone();
		$this->map['config_default_language_list'] = String::get_list(DB::select_all('language'));
		$this->map['config_default_deplay_post_now_list'] = Date_Time::time_delay(Portal::language('seconds'));
		$this->map['config_minimum_deplay_post_now_list'] = Date_Time::time_delay(Portal::language('seconds'));
		$this->map['config_default_deplay_list'] = Date_Time::time_delay(Portal::language('minutes'),1,100);				
		//$this->map['config_minimum_deplay_list'] = Date_Time::time_delay(Portal::language('minutes'));	
		if(Portal::$current->settings)
		{			
			foreach(Portal::$current->settings as $key=>$value)
			{
				if(is_string($value) and !isset($_REQUEST['config_'.$key]))
				{
					$_REQUEST['config_'.$key] = $value;
				}
			}
		}
		require_once Portal::template_js('core').'/tinymce/init_tinyMCE.php';		
		$this->parse_layout('list',$this->map);
	}
}
?>