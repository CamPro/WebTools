<?php
class EditHelpAdminForm extends Form
{
	function EditHelpAdminForm()
	{
		Form::Form('EditHelpAdminForm');
	}	
	function on_submit()
	{
		if(isset($_REQUEST['title']))
		{
			if(isset($_REQUEST['id']) and DB::fetch('select * from facebook_help where id="'.Url::sget('id').'"'))
			{
				$account=array(
					'title',
					'level',
					'content',
					'position'
				);
				DB::update('facebook_help',$account,'id="'.Url::sget('id').'"');
			}
			else
			{
				$account=array(
					'title',
					'level',
					'content',
					'position',				
					'time'=>time()
				);
				DB::insert('facebook_help',$account);
			}
			echo '<script>if(confirm("Cập nhật thành công!")){location="'.Url::build_current(array('cmd'=>'add')).'";}else{location="'.Url::build_current().'";}</script>';
		}	
	}
	function draw()
	{
		$this->map = array();
		if(Url::get('cmd')=='edit' and Url::get('id') and ($user = DB::fetch('select * from facebook_help where id="'.Url::sget('id').'"')))
		{
			foreach($user as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
		}
		require_once Portal::template_js('core').'/tinymce/init_tinyMCE.php';
		$this->map['level_list'] = array(1=>'Cấp 1',2=>'Cấp 2');
		$this->parse_layout('edit',$this->map);
	}
}
?>