<?php
//WRITEND BY THEDEATH
//DATE 24/03/2011
class CloneLib
{
	static function clone_portal($old_portal, $new_portal,$shop_id,$is_copy_page,$is_copy_data,$overwrite_setting = true)
	{
		$new_portal = '#'.$new_portal;
		//tao account + shop
		if(!DB::fetch('select id from account where id="'.$new_portal.'"'))
		{
			DB::insert('account',array(
				'id' =>$new_portal,
				'type' => 'PORTAL',
				'is_active' =>1,
				'create_date' => date('Y-m-d',time())									
			));
			if($shop_id)
			{
				if($shop=DB::fetch('select * from shop where id="'.$shop_id.'" and account_id=""'))
				{
					DB::update_id('shop',array('account_id'=>$new_portal,'account_actived'=>User::id(),'time_actived'=>time()),$shop_id);
				}
				elseif($shop = DB::fetch('select * from shop where id='.$shop_id))
				{
					unset($shop['id']);
					$shop['account_id'] = $new_portal;
					if($shop['logo']!="" && file_exists($shop['logo']))
					{
						$logo = 'upload/default/avatar/'.substr($new_portal,1).'_logo.'.substr($shop['logo'],(strrpos($shop['logo'],'.')+1));
						@copy($shop['logo'],$logo);
						$shop['logo'] = $logo;
					}
					$shop['website'] = substr($new_portal,1).'.'.$_SERVER['SERVER_NAME'];
					$shop['account_actived'] = User::id();
					$shop['time_actived'] = time();
					DB::insert('shop',$shop);
				}
			}
			elseif($shop = DB::select('shop','account_id="'.$old_portal.'"'))
			{
				unset($shop['id']);
				$shop['account_id'] = $new_portal;
				$shop['website'] = substr($new_portal,1).'.'.$_SERVER['SERVER_NAME'];
				$shop['account_actived'] = User::id();
				$shop['time_actived'] = time();
				DB::insert('shop',$shop);	
			}
		}
		//neu da ton tai page cua new_portal thi xoa bo het
		if($old_pages = DB::fetch_all('
			SELECT
				*
			FROM
				page
			WHERE
				params="'.substr($new_portal,1).'"
		'))
		{
			foreach($old_pages as $page)
			{
				CloneLib::unclone_page($page);
			}
		}
		// nhan ban trang
		if($is_copy_page)
		{
			// nhan ban trang
			if($pages = DB::fetch_all('
				SELECT
					*
				FROM
					page
				WHERE
					params="'.substr($old_portal,1).'"
					and package_id<>7
			'))
			{	
				foreach($pages as $page)
				{
					$new_params = substr($new_portal,1);
					if(!DB::select('page','name="'.$page['name'].'" and params="'.$new_params.'"'))
					{
						CloneLib::clone_page($page,$page['name'],$new_params);
					}
				}
			}
			// nhan ban cac setting
			if($overwrite_setting)
			{
				CloneLib::copy_account_setting($old_portal, $new_portal);
			}
			// nhan ban du lieu
			if($is_copy_data)
			{			
				CloneLib::copy_account_setting($old_portal,$new_portal);
				CloneLib::copy_item('portal_language',$old_portal,$new_portal);	
				CloneLib::copy_item('function',$old_portal,$new_portal);	
				CloneLib::copy_item('type',$old_portal,$new_portal);	
				CloneLib::copy_status('status',$old_portal,$new_portal);
				CloneLib::copy_category($old_portal,$new_portal);	
				$old_portal = substr($old_portal,1);
				$new_portal = substr($new_portal,1);
				CloneLib::copy_folder('cache/pages/'.$old_portal,'cache/pages/'.$new_portal);
				CloneLib::copy_folder('cache/tables/'.$old_portal,'cache/tables/'.$new_portal);
				CloneLib::copy_folder('upload/'.$old_portal,'upload/'.$new_portal);				
				CloneLib::copy_folder('skins/'.$old_portal,'skins/'.$new_portal);
				CloneLib::make_navigation($old_portal,$new_portal);
			}
		}
	}	
	static function make_navigation($old_portal,$new_portal)
	{
		$file = 'skins/'.$new_portal.'/templates/Navigation/skins/vertical/style.css';
		$content = file_get_contents($file);
		$content = str_replace($old_portal,$new_portal,$content);
		require_once 'packages/core/includes/utils/file.php';
		File::save($file,$content);
	}
	static function clone_page($page, $new_name, $new_params)
	{
		$old_page_id = $page['id'];
		$page['name'] = $new_name;
		$old_params = $page['params'];
		$page['params'] = $new_params;
		unset($page['id']);
		if($new_page_id=DB::insert('page', $page))
		{
			if($blocks = DB::fetch_all('select * from block where page_id='.$old_page_id.' order by container_id'))
			{
				$match_blocks = array();
				foreach($blocks as $old_block_id=>$block)
				{
					if($block['container_id'] and isset($match_blocks[$block['container_id']]))
					{
						$block['container_id'] = $match_blocks[$block['container_id']];
					}
					unset($block['id']);
					$block['page_id'] = $new_page_id;
					if($new_block_id=DB::insert('block',$block))
					{
						$match_blocks[$old_block_id] = $new_block_id;
						DB::query('insert block_setting(block_id, value, setting_id) select '.$new_block_id.',replace(value,"skins/'.$old_params.'","skins/'.$new_params.'") as value, setting_id from block_setting where block_id='.$old_block_id);
					}
				}
			}
			return true;
		}
	}
	static function copy_status($table,$from,$to)
	{
		if($items = DB::fetch_all('select * from '.$table.' where portal_id="'.$from.'"'))
		{
			foreach($items as $key=>$value)
			{
				$value['portal_id'] = $to;
				DB::insert($table,$value);
			}	
		}
	}
	static function copy_item($table,$from,$to)
	{
		if($menus = DB::fetch_all('select * from '.$table.' where portal_id="'.$from.'"'))
		{
			foreach($menus as $key=>$value)
			{
				unset($value['id']);
				$value['portal_id'] = $to;
				foreach($value as $field=>$field_value)
				{
					$value[$field] = str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$field_value);
				}
				DB::insert($table,$value);				
			}
		}
	}		
	static function copy_category($from,$to)
	{
		if($menus = DB::fetch_all('select * from category where portal_id="'.$from.'"'))
		{
			foreach($menus as $key=>$value)
			{
				unset($value['id']);
				$value['portal_id'] = $to;
				foreach($value as $field=>$field_value)
				{
					$value[$field] = str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$field_value);
				}
				$category_id = DB::insert('category',$value);
				if($news = DB::fetch_all('select * from news where portal_id="'.$from.'" and category_id='.$key))
				{
					foreach($news as $news_id=>$news_value)
					{
						unset($news_value['id']);
						$news_value['category_id'] = $category_id;
						$news_value['portal_id'] = $to;
						foreach($news_value as $news_value_id=>$news_value_value)
						{
							$news_value[$news_value_id] = str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$news_value_value);
						}
						DB::insert('news',$news_value);
					}
				}
				if($products = DB::fetch_all('select * from product where portal_id="'.$from.'" and category_id='.$key))
				{
					foreach($products as $product_id=>$product_value)
					{
						unset($product_value['id']);
						$product_value['category_id'] = $category_id;
						$product_value['portal_id'] = $to;
						foreach($product_value as $product_value_id=>$product_value_value)
						{
							$product_value[$product_value_id] = str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$product_value_value);
						}
						DB::insert('product',$product_value);
					}
				}				
			}
		}
		if($media = DB::fetch_all('select * from media where portal_id="'.$from.'"'))
		{
			foreach($media as $media_id=>$media_value)
			{				
				unset($media_value['id']);
				$media_value['portal_id'] = $to;
				foreach($media_value as $media_value_id=>$media_value_value)
				{
					$media_value[$media_value_id] = str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$media_value_value);
				}
				$item_id = DB::insert('media',$media_value);
				if(($adv = DB::fetch_all('select * from advertisment where item_id='.$media_id)))
				{		
					foreach($adv as $id=>$item)
					{
						unset($item['id']);
						$item['item_id'] = $item_id;
						DB::insert('advertisment',$item);
					}
				}
			}
		}
	}
	static function copy_account_setting($from, $to)
	{
		if(DB::fetch('select id,value from account_setting where account_id="'.$to.'"'))
		{
			DB::query('delete from account_setting where account_id="'.$to.'"');
		}
		DB::query('
			insert into 
				account_setting(account_id, value, setting_id) 
			select 
				"'.$to.'",
				value, 
				setting_id 
			from 
				account_setting 
			where 
				account_id="'.$from.'"
		');
		if($settings = DB::fetch_all('
			select
				account_setting.id,account_setting.value
			from
				account_setting
				inner join setting on setting.id = account_setting.setting_id
			where
				account_setting.account_id="'.$to.'" and setting.type="IMAGE"'
		))
		{
			foreach($settings as $key=>$value)
			{
				DB::update('account_setting',array('value'=>str_replace('upload/'.substr($from,1),'upload/'.substr($to,1),$value['value'])),'id='.$key);
			}		
		}
	}		
	static function unclone_account_setting($id)
	{
		if($settings = DB::fetch_all('
			select
				account_setting.id
				,account_setting.value
				,setting.type
			from
				account_setting
				inner join setting on setting.id = account_setting.setting_id
			where
				account_setting.account_id="'.$id.'"'
		))
		{
			foreach($settings as $key=>$value)
			{
				if($value['type']=='IMAGE')
				{
					@unlink($value['value']);
				}
			}		
			DB::delete('account_setting','account_setting.account_id="'.$id.'"');
		}
	}
	static function unclone_item($table,$id)
	{
		if($items = DB::fetch_all('select * from '.$table.' where portal_id="'.$id.'"'))
		{
			foreach($items as $key=>$value)
			{
				foreach($value as $field=>$field_value)
				{
					if(strpos($field_value,'upload/'.substr($id,1)))
					{
						@unlink($field_value);
					}
				}
				if($table=='media')
				{
					@DB::delete('advertisment','item_id='.$value['id']);
				}
			}
			DB::delete($table,'portal_id="'.$id.'"');
		}
	}		
	static function unclone_portal($id)
	{
		if($pages = DB::fetch_all('
			SELECT
				*
			FROM
				page
			WHERE
				params="'.substr($id,1).'"
		'))
		{
			foreach($pages as $page)
			{
				CloneLib::unclone_page($page);
			}
		}		
		CloneLib::unclone_account_setting($id);
		CloneLib::unclone_item('portal_language',$id);	
		CloneLib::unclone_item('function',$id);	
		CloneLib::unclone_item('type',$id);	
		CloneLib::unclone_item('status',$id);	
		CloneLib::unclone_item('category',$id);	
		CloneLib::unclone_item('news',$id);	
		CloneLib::unclone_item('media',$id);	
		//CloneLib::unclone_item('advertisment',$id);	
		CloneLib::unclone_item('product',$id);			
		$dir = substr($id,1);
		CloneLib::empty_all_dir('cache/pages/'.$dir);
		CloneLib::empty_all_dir('cache/tables/'.$dir);
		CloneLib::empty_all_dir('upload/'.$dir);				
		CloneLib::empty_all_dir('skins/'.$dir);
	}
	static function unclone_page($page)
	{
		if($blocks = DB::fetch_all('select * from block where page_id='.$page['id']))
		{
			foreach($blocks as $block_id=>$block)
			{
				DB::delete('block_setting','block_id='.$block_id);
				DB::delete('block','id='.$block_id);
			}
		}
		DB::delete('page','id='.$page['id']);
	}	
	static function copy_folder($dir_name,$copy_to)
	{
		if(!is_dir($copy_to))
		{
			mkdir($copy_to);
			if(is_dir($dir_name))
			{
				$dir_handle = opendir($dir_name);
				while($file = readdir($dir_handle))
				{ 
					if ($file != "." && $file != "..")
					{
						if (!is_dir($dir_name."/".$file))
						{
							copy($dir_name."/".$file,$copy_to."/".$file);
						}
						else 
						{
							CloneLib::copy_folder($dir_name."/".$file,$copy_to."/".$file); 
						} 
					}
				}
				
			}
		}
	}
	static function empty_all_dir($name, $remove = true)
	{
		if(is_dir($name))
		{
			if($dir = opendir($name))
			{
				$files = array();
				while($file=readdir($dir))
				{
					if($file!='..' and $file!='.')
					{
						$files[]=$file;
					}
				}
				closedir($dir);
				foreach($files as $file)
				{
					if(is_dir($name.'/'.$file))
					{
						CloneLib::empty_all_dir($name.'/'.$file, $remove);
					}
					else
					{
						@unlink($name.'/'.$file);
					}
				}
				if($remove)
				{
					@rmdir($name);
				}
			}		
		}
	}

}
?>