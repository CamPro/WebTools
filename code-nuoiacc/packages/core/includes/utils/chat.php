<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY thedeath
******************************/
class Chat
{
	function Chat()
	{
	
	}
	function load_image_yahoo($file)
	{
		$xmlDoc = new DOMDocument();
		$xmlDoc->load($file);
		$x = $xmlDoc->documentElement; 
		$smiles = array();
		foreach ($x->childNodes as $item)
		{
			 if( !is_null($item->attributes) && $item->hasChildNodes())
			 {
			 	foreach($item->childNodes as $node)
				{
					if($node->nodeName=='shortcuts' && $node->hasChildNodes())
					{	
						foreach($node->childNodes as $childs)
						{
							if($childs->nodeName!='#text')
							{
								$smiles[String::html_normalize($childs->nodeValue)] = '<img src=\'skins/default/images/Smileys/'.$item->getAttribute ('fname').'.gif\'>';		
							}
						}	
					}	
				}			
			}	
		}
		return $smiles;
	}
	function check_user_online()
	{
		if($items = DB::fetch_all('
			select 
				account.id
				,party.image_url
			from 
				account 
				inner join party on party.user_id =  account.id 
			where 
				account.type="USER" 
				and account.last_online_time>0
				and account.id!="'.Session::get('user_id').'"
			order by 
				account.last_online_time DESC	
		'))
		{
			$str = '{
			"number_online":'.count($items).',
			"items":[';
			$first = true;
			foreach($items as $key=>$value)
			{
				if(!$first)
				{
					$str.=',';
				}	
				if(!file_exists($value['image_url']))
				{
					$value['image_url'] =  'skins/default/images/avatar.gif';
				}						
				$str .= '{"user_name": "'.$value['id'].'","image_url": "'.$value['image_url'].'"}';
				$first = false;				
			}
			echo $str.']}';		
		}		
	}
	function update_image_yahoo()
	{
		$smiles = Chat::load_image_yahoo('skins/default/images/Smileys/emoticons.xml');
		$smiles_search  = array_keys($smiles);
		$smiles_replace = array_values($smiles);
		$handler = fopen('skins/default/images/Smileys/emoticons.php','w+');
		fwrite($handler,'<?php $smiles_search='.var_export($smiles_search,1).';$smiles_replace='.var_export($smiles_replace,1).';?>');
		fclose($handler);		
	}
	function startchatsession()
	{	
		require_once 'skins/default/images/Smileys/emoticons.php';
		if(!Session::is_set('time_in'))
		{	
			if(Session::is_set('user_id') && $time = DB::fetch('select id,last_online_time from account where id="'.Session::get('user_id').'"','last_online_time'))
			{
				Session::set('time_in',$time);
			}
			else
			{
				Session::set('time_in',time());
			}	
		}			
		$cond = '1';		
		if($items = DB::fetch_all('select id,sender,message from chat where FROM_UNIXTIME(time,"%d-%m-%Y") ="'.date('d-m-Y',Session::get('time_in')).'" and '.$cond.' order by  time ASC'))
		{
			$str = '{"items":[';
			$first = true;
			foreach($items as $key=>$value)
			{
				if(!$first)
				{
					$str.=',';
				}							
				$str .= '{"sender": "'.$value['sender'].'","message": "'.String::string2js(str_replace($smiles_search,$smiles_replace,$value['message'])).'"	}';
				$first = false;				
			}
			echo $str.']}';
			exit();
		}	
	}
	function sendchat($message)
	{
		$message = String::html_normalize($message);
		require_once 'skins/default/images/Smileys/emoticons.php';
		$row = array('sender'=>Session::get('user_id'),'message'=>$message,'time'=>time());
		$id = DB::insert('chat',$row);	
		echo '<div id="chatbox_'.Session::get('user_id').'" class="chatbox_content"><span class="chatbox_user">'.Session::get('user_id').': </span><span class="chatbox_message">'.str_replace($smiles_search,$smiles_replace,$message).'</span></div>';
	}
	function check_new_message_income()
	{
		if(Session::is_set(Url::get('sender').'_new_message_time'))
		{
			if($messages = DB::fetch('select id,sender,count(*) as acount from chat where time>='.Session::get(Url::get('sender').'_new_message_time').' and receiver="'.Session::get('user_id').'" and sender="'.Url::get('sender').'"'))
			{
				echo '{"sender": "'.$messages['sender'].'","total":"'.$messages['acount'].'"}';
			}		
		}
	}
	function closechat()
	{
		DB::delete('chat','user_id="'.Session::get('user_id').'"');
	}
}
?>