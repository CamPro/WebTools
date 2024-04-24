<?php 
/*
	WRITTEN BY :THEDEATH
	DATE : 20/10/2009
	EDIT : 17/7/2010
*/
class Moderator extends Module
{
	function Moderator($row)
	{
		Module::Module($row);
		require_once 'db.php';
		if(User::can_view(false,ANY_CATEGORY))
		{	
			$this->update_cache();
			switch(Url::get('cmd'))
			{
				case 'delete_item':
					$this->delete_item(Url::get('account_id'),Url::get('portal_id'));
					Url::redirect_current();				
				case 'add':
				case 'edit':
					require_once 'forms/select_portal.php';
					$this->add_form(new GrantModeratorForm());	
					break;	
				case 'extra':
					$this->extra();
					break;	
				default:
					require_once 'forms/list.php';
					$this->add_form(new ListModeratorForm());
					break;												
			}			
		}
		else
		{
			URL::access_denied();
		}
	}	
	function extra()
	{
		if(Url::get('account_id'))
		{
			require_once 'forms/extra.php';
			$this->add_form(new ExtraForm());
		}
		else
		{
			echo '<script>alert("'.Portal::language('you_must_select_account').'");window.close();</script>';
		}
	}
	function delete_item($account_id,$portal_id)
	{
		if($privilege = DB::fetch_all('select id from privilege where account_id="'.$account_id.'" and portal_id="'.$portal_id.'"'))
		{
			DB::delete('privilege','account_id="'.$account_id.'" and portal_id="'.$portal_id.'"');
			foreach($privilege as $privilege_id=>$privi)
			{
				DB::delete('privilege_module','privilege_id='.$privilege_id);
			}
			DB::delete('account_privilege','account_id="'.$account_id.'" and portal_id="'.$portal_id.'"');
			DB::update_id('account',array('cache_privilege'=>''),$account_id);
		}		
	}
	function update_cache()
	{
		DB::update('account',array('cache_privilege'=>'','cache_setting'=>''),'type="USER"');
	}	
}
?>