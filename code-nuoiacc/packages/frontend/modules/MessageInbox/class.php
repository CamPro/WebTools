<?php
//	AUTHOR: thedeath
//	FUNCTION: DANH SACH TIN NOI BAT
//	DATE  : 18/01/2011
class MessageInbox extends Module
{
	function MessageInbox($row)
	{
		Module::Module($row);
		require_once 'db.php';
		require_once 'skins/news/libraries/facebook_helper.php';	
		switch(Url::get('cmd'))
		{
			case 'get_all_conversation':
				$this->get_all_conversation();
				exit();
			case 'get_conversation':
				$this->get_conversation();
				exit();
			case 'post_conversation':	
				$this->post_conversation();
				exit();
			default:
				require_once 'forms/list.php';
				$this->add_form(new MessageInboxForm());
				break;
		}
	}
	function post_conversation()
	{
		if(Url::get('access_token') and Url::get('message_id') and Url::get('message'))
		{
			ConversationPost(base64_decode(Url::get('access_token')),Url::get('message_id'),Url::get('message'));
		}
		System::debug($_REQUEST);exit();		
	}
	function get_all_conversation()
	{
		if(Url::get('facebook_id') and $account = DB::fetch('select * from facebook_accounts where id='.Url::get('facebook_id').' and user_id="'.User::id().'"'))
		{
			$conversations = array();
			$pages = ConversationOfAccount($account['access_token']);
            $str='<h5><i class="fa fa-facebook-official"></i>&nbsp;'.$account['fullname'].'</h5>';
			if($pages)
			{
				foreach($pages as $key=>$page)
				{
				   foreach($page['message'] as $k=>$v)
				   {
						$str.='<li class="list-group-item" onclick="conversations(jQuery(this));" data-page_id="'.$key.'" data-message_id="'.$v['id'].'" data-token="'.base64_encode($page['access_token']).'" data-user_id="'.$v['from_user_name'].'">';
						$str.='<span class="k-checkbox">';
						$str.='<input type="checkbox" name="id[]" id="md_checkbox_'.$v['id'].'" class="filled-in chk-col-red checkItem" value="'.$v['id'].'">';
						$str.='<label class="p0 m0" for="md_checkbox_'.$v['id'].'">&nbsp;</label>';
						$str.='</span>';
						$str.='<span class="badge badge-red rounded ng-binding ng-hide">'.$v['message_count'].'</span>';
						if($v['unread_count'])
						{
							$str.='<span class="pull-right label rounded ng-binding label-red">Mới</span>';	
						}
						else
						{
							$str.='<span class="pull-right label rounded ng-binding label-green">Trả lời rồi</span>';							
						}
						$str.='<div class="conversationContent">';
						$str.='<strong class="conversation-name ng-binding"><a href="http://facebook.com/'.$v['from_user'].'" target="_blank">'.$v['from_user_name'].'</a></strong>';
						$str.='<p class="ng-binding">'.$v['message'].'</p>';
						$str.='<div class="conversation-tags"></div>';
						$str.='<div class="text-muted">';
						$str.='<span class="updated-time ng-binding"><i class="fa fa-clock-o"></i>'.Timer::period_time($v['created_time']).'</span> ';
						$str.='<span class="ng-binding"><i class="fa fa-facebook-official"></i> <a href="http://facebook.com/'.$key.'" target="_blank">'.$page['name'].'</a></span>';
						$str.='</div>';
						$str.='</div>';
						$str.='</li>';
					}
				}
			}
			else
			{
				$str = '<div style="text-align:center;color:#f00;font-weight:bold;">Tài khoản chưa quản lý Page nào.</div>';	
			}
			echo $str;
		}	
	}
	function get_conversation()
	{
		if(Url::get('access_token') and Url::get('message_id'))
		{
			$conversations = Conversation(base64_decode(Url::get('access_token')),Url::get('message_id'));
			$data = array();
			$total = count($conversations)-1;
			for($i=$total;$i>=0;$i--)
			{
				$value = $conversations[$i];
				$data[$value['id']] = array(
					'id'=>$value['id'],
					'created_time'=>Timer::period_time(strtotime($value['created_time'])),
					'message'=>$value['message'],
					'from_user_name'=>$value['from']['name'],
					'from_user_id'=>$value['from']['id'],
				);
			}			
			System::jdebug($data);
		}
	}
}
?>