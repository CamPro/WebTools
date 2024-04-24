<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class AutoComment extends Module
{
	function AutoComment($row)
	{
		Module::Module($row);
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'save_schedules':
				$this->save_schedules();
				exit();
			case 'ajax_action_item':
				$this->ajax_action_item(Url::get('id'),Url::get('action'));
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new AutoCommentForm());
				break;
		}
	}
	function ajax_action_item($id,$action,$message = true)
	{
		$account = DB::fetch('select * from facebook_bot where id='.$id.' and user_id="'.User::id().'"');
		if($account)
		{
			switch ($action) 
			{
				case 'delete':									
					DB::delete('facebook_bot','id='.$id);															
					break;				
				case 'active':
					DB::update_id('facebook_bot',array('status'=>1),$id);
					break;		
				case 'disable':
					DB::update_id('facebook_bot',array('status'=>'0'),$id);
					break;
			}
		}		
		if($message)
		{
			System::jdebug(array(
				'st' 	=> 'success',
				'txt' 	=> Portal::language('Successfully')
			));
		}
	}
	function save_schedules()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['contents']) and $_REQUEST['contents'] and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$startdate = date("Y-m-d H:i:s"); 
			$enddate = Session::get('user_data','expiration_date'); 
			$diff=strtotime($enddate)-strtotime($startdate); 
			//$days = floor($diff/86400)+1;
			if(!DB::fetch('select id from facebook_bot where account_id="'.$_REQUEST['facebook_id'].'" and type=2' ))
			{
				DB::insert('facebook_bot',array(
					'user_id'=>User::id(),
					'account_id'=>$_REQUEST['facebook_id'],
					'type'=>'2',
					'flimit'=>Url::get('flimit'),
					'message'=>$_REQUEST['contents'],
					'status'=>'1',
					'time_post_show'=>date("Y-m-d H:i:s",time()+($diff))
				));			
				System::jdebug(array(
					"st"    => "success",
					"label" => "bg-light-green",
					"txt"   => 'Lên lịch thành công'
				));
				
			}
			else{
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => 'Tài khoản Facebook này đã lên lịch, vui lòng xóa lịch cũ để lên lịch mới'
				));
			}
			
		}	
	}
}
?>