<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AutoLechById extends Module
{
	function AutoLechById($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'get_content':
				$this->get_content();
				exit();
			case 'save_schedules':
				$this->save_schedules();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AutoLechByIdForm());
				break;
		}
	}
	function get_content()
	{
		if(Url::get('id') and Url::get('facebook_id') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id').' and user_id="'.User::id().'"')))
		{
			$fql = 'https://graph.facebook.com/'.Url::iget('id').'/?access_token='.$account['access_token'];
			echo(file_get_contents($fql));			
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and $_REQUEST['uid'] and $_REQUEST['facebook_accounts'] and ($account = DB::fetch('select * from facebook_accounts where user_id="'.User::id().'" and id='.Url::iget('facebook_id'))))
		{
			foreach($_REQUEST['facebook_accounts'] as $key=>$value)
			{
				if(Url::get('type')=='video')
				{
					$group_type = 'video';
				}
				elseif(Url::get('type')=='photo')
				{
					$group_type = 'image';							
				}
				elseif(Url::get('type')=='album')
				{
					$group_type = 'images';							
				}
				else
				{
					$group_type = 'text';
				}
				$uid = explode('|',$key);
				$row = array(
					'user_id'=>User::id(),
					'account_id'=>$uid[2],
					'account_name'=>$uid[1],
					'category'=>'post',
					'group_id'=>$uid[0],
					'group_type'=>'profile',
					'type'=>$group_type,
					'privacy'=>1,
					'name'=>$uid[1],
					'message'=>Url::get('description'),
					'time_post'=>date("Y-m-d H:i:s", time()),
					'status'=>1,
					'created'=>date("Y-m-d H:i:s", time())
				);
				if($group_type=='video')
				{
					$row['image'] = Url::get('video');
				}
				elseif($group_type=='image')
				{
					$row['image'] = Url::get('photo');
				}
				elseif($group_type=='images')
				{
					$row['image'] = json_encode(Url::get('photos'));
				}
				DB::insert('facebook_schedules',$row);
			}
		}	
	}
}
?>