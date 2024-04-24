<?php
class HelpContentDB
{
	function get_items($cond,$item_per_page)
	{		
		$items = DB::fetch_all('
			SELECT
				news.id,
				news.name_id,
				news.name_'.Portal::language().' as name,
				IF(news.brief_'.Portal::language().'!="",news.brief_'.Portal::language().',news.description_'.Portal::language().') as brief,
				IF(news.small_thumb_url!="",news.small_thumb_url,news.image_url) as image_url,
				news.time,
				news.user_id,
				category.name_'.Portal::language().' as category_name,
				category.name_id as category_name_id
			FROM
				news
				INNER JOIN category ON news.category_id=category.id
			WHERE
				'.$cond.'
			ORDER BY 
				news.time DESC
				,news.id DESC
			LIMIT
				'.((page_no()-1)*$item_per_page).','.$item_per_page.'				
		');	
		return $items;
	}
	function get_total_item($cond)
	{
		return DB::fetch('
			SELECT
				count(*) as acount
			FROM
				news
				INNER JOIN category ON news.category_id=category.id
			WHERE
				'.$cond.'
		');
	}
}
?>