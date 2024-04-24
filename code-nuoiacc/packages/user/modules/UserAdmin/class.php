<?php 
/*---
WRITTEN BY :THEDEATH
---*/
class UserAdmin extends Module
{
	function UserAdmin($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::can_view(false,ANY_CATEGORY))
		{
			switch(URL::get('cmd'))
			{
				case 'delete_openid':
					$this->delete_openid();
					break;
				case 'active_reputation':
					if(User::can_edit(false,ANY_CATEGORY))
					{
						$this->active_reputation();
						break;
					}
					else
					{
						URL::access_denied();
					}
				case 'delete_item':
					if(User::can_delete(false,ANY_CATEGORY))
					{
						$this->delete_item();
						break;
					}
					else
					{
						URL::access_denied();
					}
				case 'edit':
					if(User::can_edit(false,ANY_CATEGORY))
					{
						require_once 'forms/edit.php';
						$this->add_form(new EditUserAdminForm());
						break;
					}
					else
					{
						URL::access_denied();
					}
				case 'add':
					if(User::can_add(false,ANY_CATEGORY))
					{
						require_once 'forms/edit.php';
						$this->add_form(new EditUserAdminForm());
						break;
					}
					else
					{
						URL::access_denied();
					}
				case 'award':	
					if(User::can_admin(false,ANY_CATEGORY))
					{
						require_once 'forms/award.php';
						$this->add_form(new AwardUserAdminForm());
						break;
					}
					else
					{
						URL::access_denied();
					}
				case 'export':
					$this->export();
					break;
				case 'active':
					$this->active();
					break;
				default: 
					require_once 'forms/list.php';
					$this->add_form(new ListUserAdminForm());
					break;
			}		
		}
		else
		{
			URL::access_denied();
		}
	}
	function active()
	{
		if($_REQUEST['id'] and $user = DB::fetch('select * from account where id="'.$_REQUEST['id'].'"'))
		{
			DB::update_id('account',array('is_active'=>1),$user['id']);
		}
		Url::redirect_current();
	}
	function delete_openid()
	{
		if(Url::get('user_id') && ($party = DB::fetch('select * from party where user_id="'.Url::sget('user_id').'"')))
		{
			DB::update('party',array('openid'=>''),'user_id="'.$party['user_id'].'"');
			echo '<script>window.close();</script>';
		}
	}
	function delete_item()
	{
		UserAdminDB::delete_item(Url::sget('id'));
		Url::redirect_current();
	}	
	function active_reputation()
	{
		DB::update('party',array('reputation'=>Url::iget('active')),'user_id="'.Url::sget('id').'"');
		Url::redirect_current();
	}	
	function export()
	{
		$items = DB::fetch_all('select email as id from party where email!=""');	
		$email = implode(',',array_keys($items));
		header('Content-type: application/txt');
		header('Content-Disposition: attachment; filename="'.date('dmY').'.txt"');
		echo $email;
		exit();
	}
}
?>
