<?php

class EditUserAdminForm extends Form

{

	function EditUserAdminForm()

	{

		Form::Form('EditUserAdminForm');

		if(URL::get('cmd')=='edit')

		{

			$this->add('id',new IDType(true,'object_not_exists','account'));

		}

		$this->add('full_name',new TextType(true,'invalid_full_name',0,255)); 

		$this->add('address',new TextType(true,'invalid_address',0,255)); 

		$this->add('password',new TextType(false,'invalid_password',0,255)); 

		$this->add('birth_date',new DateType(false,'invalid_birth_date')); 		

		$this->add('join_date',new DateType(false,'invalid_join_date')); 

		$this->add('mobile',new PhoneType(true,'invalid_mobile',0,12)); 

		$this->add('zone_id',new IDType(true,'invalid_zone_id','zone')); 

		$this->link_js(Portal::template_js('core').'jquery/datepicker.js');

		$this->link_js(Portal::template_js('core').'jquery/jquery.maskedinput.js');

		$this->link_css('skins/default/css/jquery/datepicker.css');

	}

	function check_id()

	{

		$error = true;

		if(Url::get('cmd')=='add' && isset($_REQUEST['id']))

		{

			if((DB::fetch('select id from account where id="'.Url::sget('id').'"')))

			{

				$this->error('id','user_id_exists');

				$error = false;

			}

		}

		return $error;

	}

	function save_image($file,$id)

	{

		require_once 'packages/core/includes/utils/upload_file.php';

		$dir = substr(Portal::$portal_id,1).'/avatar';		

		update_upload_file('image_url',$dir);

		$row = array();

		if(Url::get('image_url')!='')

		{

			if($party = DB::fetch('select id,image_url from party where user_id="'.$id.'"'))

			{

				@unlink($party['image_url']);

			}

			$row['image_url'] = Url::get('image_url');

		}

		DB::update('party',$row,' user_id="'.$id.'"');

		return;

	}

	function on_submit()

	{

			$account = array(

				'create_date'=>Date_Time::to_sql_date((URL::get('join_date'))),

				'is_active'=>URL::get('active'),

				'is_block'=>URL::get('block'),

				'type'=>'USER',

				'cache_privilege'=>'',

			)+(URL::get('password')?array('password'=>User::encode_password($_REQUEST['password'])):array());			

			$party = array(

				'full_name',

				'address',

				'birth_date'=>Date_Time::to_sql_date((URL::get('birth_date'))), 

				'mobile',

				'gender',

				'email',

				'yahoo',

				'skype',

				'website',

				'point',

				'zone_id',

				'note'

			);

			if(URL::get('cmd')=='edit')

			{

				$id = $_REQUEST['id'];

				DB::update('party', $party,'user_id="'.$id.'"');

				DB::update('account', $account,'id="'.$id.'"');

			}

			else

			{

				require_once 'packages/core/includes/system/si_database.php';

				DB::insert('account', $account+array('id'=>URL::get('id')));

				DB::insert('party', $party+array('user_id'=>URL::get('id')));				

			}

			$this->save_image($_FILES,Url::sget('id'));

			Url::redirect_current(array('zone_id','page_no'));

	}	

	function draw()

	{	

		if(URL::get('cmd')=='edit' and $row=DB::select('party','user_id="'.URL::sget('id').'"') and $account = DB::select('account',URL::sget('id')))

		{

			$row['id'] = $account['id'];

			$row['join_date'] = $account['create_date'];

			$row['active'] = $account['is_active'];

			$row['block'] = $account['is_block'];

			if($row['birth_date']<>'0000-00-00')

			{

				$row['birth_date'] = Date_Time::to_common_date($row['birth_date']);

			}

			else

			{

				$row['birth_date'] = '';

			}  

			if($row['join_date']<>'0000-00-00')

			{

				$row['join_date'] = Date_Time::to_common_date($row['join_date']);

			}

			else

			{

				$row['join_date'] = '';

			}      

			unset($row['password']);

			foreach($row as $key=>$value)

			{

				if(is_string($value) and !isset($_POST[$key]))

				{

					$_REQUEST[$key] = $value;

				}

			}

			$edit_mode = true;

		}

		else

		{

			$edit_mode = false;

			$_REQUEST['join_date'] = date('d/m/Y');

		}

		$zone = Portal::template_cache('zone');

		$this->parse_layout('edit',

			($edit_mode?$row:array())+

			array(

				'zone_id_list'=>String::get_list($zone,'name_1',true,1),

				'gender_list'=>array('0'=>Portal::language('male'),'1'=>Portal::language('female'))

			)

		);

	}

}

?>

