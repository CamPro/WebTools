<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AutoLechProfile extends Module
{
	function AutoLechProfile($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'save_schedules':
				$this->save_schedules();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AutoLechProfileForm());
				break;
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and $_REQUEST['uid'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			if($all_post = FbOAuth_PostOfUser($account['access_token'],Url::get('uid'),true))
			{
				$type = array_flip($_REQUEST['type']);
				$max_post = (int)Url::get('max-post');
				$deplay = ((24*60*60)/$max_post);
				$list_deplay = array();
				for ($i=0; $i < count($all_post['data']); $i++) 
				{ 
					$list_deplay[] = $deplay*$i;
				}
				foreach($all_post['data'] as $key=>$value)
				{
					$group_type = $value['type'];
					if($group_type=='status')
					{
						$group_type = 'text';
					}
					elseif($group_type=='photo')
					{
						$group_type = 'images';							
					}
					elseif($group_type=='album')
					{
						$group_type = 'images';							
					}
					$row = array(
						'user_id'=>User::id(),
						'account_id'=>$account['id'],
						'account_name'=>$account['fullname'],
						'category'=>'post',
						'group_id'=>$account['fid'],
						'group_type'=>'profile',
						'type'=>$group_type,
						'privacy'=>(isset($_REQUEST['public'])?'1':'0'),
						'name'=>Url::get('uid'),
						'message'=>$value['message'],
						'time_post'=>date("Y-m-d H:i:s", time() + $list_deplay[$key]),
						'status'=>1,
						'created'=>$value['created_time']
					);
					if($group_type=='video')
					{
						$row['image'] = $value['source'];
					}
					elseif($group_type=='images')
					{
						$row['image'] = $value['picture'];
					}
					if($group_type=='link')
					{
						$row['title'] = $value['name'];
						$row['description'] = $value['description'];
						$row['caption'] = $value['caption'];							
						$row['url'] = $value['link'];			
					}
					DB::insert('facebook_schedules',$row);
				}
			}
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => "Xử lý thành công!"
			));
		}	
	}
}
?>