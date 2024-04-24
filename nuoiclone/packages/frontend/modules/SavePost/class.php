<?php
//	AUTHOR: thedeath
//	DATE  : 14/09/2009
class SavePost extends Module
{
	function SavePost($row)
	{
		Module::Module($row);
		require_once 'skins/news/libraries/facebook_helper.php';	
		require_once 'db.php';
		switch(Url::get('cmd'))
		{
			case 'ajax_action_multiple':
				$this->ajax_action_multiple();
				exit();
			case 'ajax_action_item':
				$this->ajax_action_item(Url::get('id'),Url::get('action'));
				exit();
			case 'ajax_post_now':
				$this->ajax_post_now();
				exit();
			case 'ajax_save_schedules':
				$this->ajax_save_schedules();
				exit();
			case 'ajax_save':
				$this->ajax_save();
				exit();
			case 'ajax_get_save':
				$this->ajax_get_save();
				exit();
			case 'ajax_get_category':
				$this->ajax_get_category();
				exit();
			case 'ajax_delete_category':
				$this->ajax_delete_category();
				exit();
			case 'ajax_update_category':
				$this->ajax_update_category();
				exit();
			case 'ajax_add_category':
				$this->ajax_add_category();
				exit();
			case 'add':
				require_once 'forms/edit.php';
				$this->add_form(new EditSavePostForm());
				break;
			default:
				require_once 'forms/list.php';
				$this->add_form(new SavePostForm());
				break;
		}
	}
	function ajax_action_multiple()
	{
		$ids = $_REQUEST['id'];
		if(!empty($ids))
		{
			foreach ($ids as $id) 
			{
				SavePost::ajax_action_item($id,Url::get('action'),false);
			}
		}
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => "Cập nhật thành công"
		));
		exit();	
	}
	function ajax_action_item($id,$action,$message = true)
	{
		$account = DB::fetch('select * from save where id='.$id.' and user_id="'.User::id().'"');
		if($account)
		{
			switch ($action) 
			{
				case 'delete':
					DB::delete_id('save',$id);
					break;				
				case 'active':
					DB::update_id('save',array('status'=>1),$id);
					break;		
				case 'disable':
					DB::update_id('save',array('status'=>'0'),$id);
					break;
			}
		}		
		if($message)
		{
			System::jdebug(array(
				'st' 	=> 'success',
				'txt' 	=> 'Cập nhật thành công'
			));
			exit();
		}
	}
	function ajax_post_now()
	{
		$spintax = new Spintax();
		$data = array();
		switch (Url::get('type')) {
			case 'link':
				if(Url::get('link_url') == "")
				{
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Link is required')
					));
					exit();
				}
				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"url"         => Url::get('link_url'),
					"image"       => Url::get('link_picture'),
					"title"       => Url::get('link_title'),
					"caption"     => Url::get('link_caption'),
					"description" => Url::get('link_description'),
					"message"     => Url::get('message'),
				);
				break;
			case 'image':
				if(Url::get('image_url') == "")
				{
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Image is required')
					));
					exit();
				}
				$data = array(
					"category"  => "post",
					"type"      => Url::get('type'),
					"image"     => Url::get('image_url'),
					"message"   => Url::get('message')
				);
				break;
			case 'video':
				if(Url::get('video_url') == "")
				{
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Video is required')
					));
					exit();
				}
				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"image"       => Url::get('video_url'),
					"description" => Url::get('video_description'),
					"message"     => Url::get('message'),
				);
				break;


			case 'images':
				if(Url::get('images_url')==''){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Images is required')
					));
					exit();
				}

				if(count(Url::get('images_url')) < 2){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Add at least two images')
					));
					exit();
				}
				if(count(Url::get('images_url')) > 5){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   =>  Portal::language('Add maximum five images')
					));
					exit();
				}

				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"image"       => json_encode(Url::get("images_url")),
					"message"     => Url::get('message'),
				);
				break;

			default:
				if(Url::get('message') == ""){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Message is required'),
					));
					exit();
				}
				$data = array(
					"category"  => "post",
					"type"      => Url::get('type'),
					"message"   => Url::get('message'),
				);
				break;
		}

		$group = explode("{-}", Url::get('group'));
		if(count($group) == 6){
			$data["user_id"]            = User::id();
			$data["group_type"]     = $group[0];
			$data["account_id"]     = $group[1];
			$data["account_name"]   = $group[2];
			$data["group_id"]       = $group[3];
			$data["name"]           = $group[4];
			$data["privacy"]        = $group[5];
			$data["time_post"]      = date("Y-m-d H:i:s");
			$data["changed"]        = date("Y-m-d H:i:s");
			$data["created"]        = date("Y-m-d H:i:s");
			$data["deplay"]         = 180;
			$data["status"]         = 4;

			$date = new DateTime(date("Y-m-d H:i:s"), new DateTimeZone(Portal::get_setting('timezone')));
			$date->setTimezone(new DateTimeZone(Session::get('user_data','timezone')));
			$time_post_show = $date->format('Y-m-d H:i:s');

			$data["time_post_show"] = $time_post_show;

			$account = DB::fetch('select * from facebook_accounts where id='.$group[1]);
			if($account)
			{
				$id = DB::insert('facebook_schedules',$data);
				unset($data['user_id']);
				$data['uid'] = User::id();
				$data['access_token'] = $account['access_token'];
				$data['username'] = $account['username'];
				$data['fid'] = $account['fid'];
				$row = (object)$data;
				$row->url         = $spintax->process($row->url);
				$row->message     = $spintax->process($row->message);
				$row->title       = $spintax->process($row->title);
				$row->description = $spintax->process($row->description);
				$row->image       = $spintax->process($row->image);
				$row->caption     = $spintax->process($row->caption);

				$response = (object)Fb_Post($row);
				DB::update('facebook_schedules', array(
					"status" => ($response->st == "success")?3:4,
					"result" => (isset($response->id))?$response->id:"",
					"message_error" => ($response->st == "success")?$response->txt:"",
				), "id = ".$id);

				if($response->st == "success"){
					System::jdebug(array(
						"st"    => "success",
						"label" => "bg-light-green",
						"txt"   => "<span class='col-green'>Đăng thành công <a href='https://facebook.com/".((isset($response->id) && $response->id != "")?$response->id:$group[3])."' target='_blank'><i class='col-light-blue fa fa-external-link-square' aria-hidden='true'></i></a></span>"
					));
					exit();
				}else{
					System::jdebug(array(
						"st"    => "error",
						"label" => "bg-red",
						"txt"   => "<span class='col-red'>".$response->txt."</span>"
					));
					exit();
				}
			}else{
				System::jdebug(array(
					"st"    => "error",
					"label" => "bg-red",
					"txt"   => "<span class='col-red'>Tài khoản Facebook không tồn tại</span>"
				));
				exit();
			}
		}else{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => "<span class='col-red'>".Portal::language('Have problem with this item')."</span>"
			));
			exit();
		}	
	}
	function ajax_save_schedules()
	{
		$data = array();
		$groups = Url::get('id');
		switch (Url::get('type')) {
			case 'link':
				if(Url::get('link_url') == "")
				{
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Link is required')
					));
					exit();
				}
				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"url"         => Url::get('link_url'),
					"image"       => Url::get('link_picture'),
					"title"       => Url::get('link_title'),
					"caption"     => Url::get('link_caption'),
					"description" => Url::get('link_description'),
					"message"     => Url::get('message'),
				);
				break;
			case 'image':
				if(Url::get('image_url') == ""){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Image is required')
					));
					exit();
				}
				$data = array(
					"category"  => "post",
					"type"      => Url::get('type'),
					"image"     => Url::get('image_url'),
					"message"   => Url::get('message')
				);
				break;
			case 'video':
				if(Url::get('video_url') == ""){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Video is required')
					));
					exit();
				}

				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"image"       => Url::get('video_url'),
					"description" => Url::get('video_description'),
					"message"     => Url::get('message'),
				);
				break;

			case 'images':
				if(Url::get('images_url')==''){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Images is required')
					));
					exit();
				}

				if(count(Url::get('images_url')) < 2){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Add at least two images')
					));
					exit();
				}

				if(count(Url::get('images_url')) > 5){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Add maximum five images')
					));
					exit();					
				}
				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"image"       => json_encode(Url::get("images_url")),
					"message"     => Url::get('message'),
				);
				break;

			default:
				if(Url::get('message') == ""){
					System::jdebug(array(
						"st"    => "valid",
						"label" => "bg-red",
						"txt"   => Portal::language('Message is required'),
					));
					exit();
				}

				$data = array(
					"category"    => "post",
					"type"        => Url::get('type'),
					"message"     => Url::get('message'),
				);
				break;
		}

		if(Url::get('time_post') == ""){
			$json[] = array(
				"st"    => "valid",
				"label" => "bg-red",
				"text"  =>  Portal::language('Time post is required')
			);
			exit();
		}

		if(empty($groups)){
			System::jdebug(array(
				"st"    => "valid",
				"label" => "bg-red",
				"txt"   =>  Portal::language('Select at least a Page/Group/Profile')
			));
			exit();
		}

		if(Url::get('auto_repeat') != 0){
			$data["repeat_post"] = 1;
			$data["repeat_time"] = (int)Url::get("auto_repeat");
			$data["repeat_end"]  = date("Y-m-d", strtotime(Url::get('repeat_end')));
		}else{
			$data["repeat_post"] = 0;
		}

		$count = 0;
		$deplay = (int)Url::get('deplay')*60;
		$list_deplay = array();
		for ($i=0; $i < count($groups); $i++) { 
			$list_deplay[] = $deplay*$i;
		}

		$auto_pause = (int)Url::get('auto_pause');
		if($auto_pause != 0){
			$pause = 0;
			$count_deplay = 0;
			for ($i=0; $i < count($list_deplay); $i++) { 
				$item_deplay = 1;
				if($auto_pause == $count_deplay){
					$pause += Url::get('time_pause')*60;
					$count_deplay = 0;
				}

				$list_deplay[$i] += $pause;
				$count_deplay++;
			}
		}

		shuffle($list_deplay);

		$time_post_show = strtotime(Url::get('time_post').":00");
		$time_now  = strtotime(date("Y-m-d H:i:s")) + 60;
		if($time_post_show < $time_now){
			$time_post_show = $time_now;
		}

		$date = new DateTime(date("Y-m-d H:i:s", $time_post_show), new DateTimeZone(Session::get('user_data','timezone')));
		$date->setTimezone(new DateTimeZone(Portal::get_setting('timezone')));
		$time_post = $date->format('Y-m-d H:i:s');
		foreach ($groups as $key => $group) {
			$group  = explode("{-}", $group);
			if(count($group) == 6){
				$data["user_id"]            = User::id();
				$data["group_type"]     = $group[0];
				$data["account_id"]     = $group[1];
				$data["account_name"]   = $group[2];
				$data["group_id"]       = $group[3];
				$data["name"]           = $group[4];
				$data["privacy"]        = $group[5];
				$data["time_post"]      = date("Y-m-d H:i:s", strtotime($time_post) + $list_deplay[$key]);
				$data["time_post_show"] = date("Y-m-d H:i:s", $time_post_show + $list_deplay[$key]);
				$data["status"]         = 1;
				$data["deplay"]         = $deplay;
				$data["changed"]        = date("Y-m-d H:i:s");
				$data["created"]        = date("Y-m-d H:i:s");

				DB::insert('facebook_schedules',$data);
				$count++;
			}
		}

		if($count != 0){
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-green",
				"txt"   => Portal::language('Successfully')
			));
			exit();
		}else{
			System::jdebug(array(
				"st"    => "valid",
				"label" => "bg-red",
				"txt"   => Portal::language('The error occurred during processing')
			));
			exit();
		}	
	}
	function ajax_save()
	{
		$data = array();
		switch (Url::get("category")) 
		{
			case 'post':
				switch (Url::get('type')) {
					case 'link':
						if(Url::get('link_url') == ""){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Link is required')
							));
							exit();
						}
						$data = array(
							"category"    => "post",
							"type"        => Url::get('type'),
							"url"         => Url::get('link_url'),
							"image"       => Url::get('link_picture'),
							"title"       => Url::get('link_title'),
							"caption"     => Url::get('link_caption'),
							"description" => Url::get('link_description'),
							"message"     => Url::get('message'),
						);
						break;
					case 'image':
						if(Url::get('image_url') == "")
						{
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Image is required')
							));
							exit();
						}

						$data = array(
							"category"  => "post",
							"type"      => Url::get('type'),
							"image"     => Url::get('image_url'),
							"message"   => Url::get('message')
						);
						break;
					case 'video':
						if(Url::get('video_url') == ""){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Video is required')
							));
							exit();
						}

						$data = array(
							"category"    => "post",
							"type"        => Url::get('type'),
							"image"       => Url::get('video_url'),
							"description" => Url::get('video_description'),
							"message"     => Url::get('message'),
						);
						break;
					case 'images':
						if(Url::get('images_url[]')==''){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Images is required')
							));
							exit();
						}

						if(count(Url::get('images_url[]')) < 2){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Add at least two images')
							));
							exit();
						}

						if(count(Url::get('images_url[]')) > 5){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Add maximum three images')
							));
							exit();
						}

						$data = array(
							"category"    => "post",
							"type"        => Url::get('type'),
							"image"       => json_encode(Url::get("images_url[]")),
							"message"     => Url::get('message'),
						);
						break;
					case 'text':
						if(Url::get('message') == ""){
							System::jdebug(array(
								"st"    => "valid",
								"label" => "bg-red",
								"txt"   => Portal::language('Message is required'),
							));
							exit();
						}

						$data = array(
							"category"  => "post",
							"type"      => Url::get('type'),
							"message"   => Url::get('message'),
						);
						break;
				}
				break;
		}

		if(Url::get('title') == "")
		{
			System::jdebug(array(
				"st"    => "title",
			));
		}
		else
		{
			$data["name"]    = htmlspecialchars(Url::get('title'),ENT_QUOTES);
			$data["user_id"]     = User::id();
			$data["created"] =  date('Y-m-d H:i:s');
			DB::insert('save',$data);
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => Portal::language('Save successfully')
			));
		}
	}
	function ajax_get_save()
	{
		$item = DB::fetch('select * from save where id='.Url::get('value').' and user_id="'.User::id().'"');
		System::jdebug($item);	
	}
	function ajax_get_category()
	{
		if($item = DB::fetch("select * from categories where id=".Url::get('id').' and user_id="'.User::id().'"'))
		{
			Session::set("category", $item['id']);
		}
		else
		{
			Session::delete("category");
		}
		
	}
	function ajax_delete_category()
	{
		if(Url::get('id')=='')
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Select at Category for delete')
			));
			exit();
		}
		DB::delete('categories', 'id  = '.Url::get("id").' and user_id="'.User::id().'"');
		Session::delete("category");
		System::jdebug(array(
			"st"    => "success",
			"label" => "bg-light-green",
			"txt"   => Portal::language('Successfully')
		));
	}
	function ajax_update_category()
	{
		if(Url::get('id')=='')
		{
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Select at least a Page/Group/Profile')
			));
			exit();
		}
		$array = array();
		$groups = Url::get('id');
		foreach ($groups as $key => $group) 
		{
			$group  = explode("{-}", $group);
			$array[] = $group[3];
		}
		if(Url::get('cid')=='')
		{
			System::jdebug(array(
				"st"    => "id"
			));
			exit();
		}
		else
		{
			$category = DB::fetch('select * from categories where id='.Url::get('cid').' and user_id="'.User::id().'"');
			$cur_array = json_decode($category['data']);
			$new_array = (array)array_unique(array_merge_recursive($cur_array, $array));
			$data = array(
				"user_id"     => User::id(),
				"data"    => json_encode($new_array),
				"created" => date('Y-m-d H:i:s')
			);
			DB::update('categories', $data, "id = '".Url::get("cid")."'");
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => Portal::language('Successfully')
			));
		}	
	}
	function ajax_add_category()
	{
		if(Url::get('id')==''){
			System::jdebug(array(
				"st"    => "error",
				"label" => "bg-red",
				"txt"   => Portal::language('Select at least a item')
			));
			exit();
		}
		$array = array();
		$groups = Url::get('id');
		foreach ($groups as $key => $group) 
		{
			$group  = explode("{-}", $group);
			$array[] = $group[3];
		}
		if(Url::get('title') == ""){
			System::jdebug(array(
				"st"    => "title"
			));
		}
		else
		{
			$data = array(
				"user_id"     => User::id(),
				"category"=> Url::get("category"),
				"name"    => Url::get("title"),
				"data"    => json_encode($array),
				"created" => date('Y-m-d H:i:s')
			);
			DB::insert('categories', $data);
			System::jdebug(array(
				"st"    => "success",
				"label" => "bg-light-green",
				"txt"   => Portal::language('Successfully')
			));
		}
	}
}
?>