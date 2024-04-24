<?php
class IntroHomeDB
{
	function get_items($cond)
	{
		return DB::fetch_all('
			SELECT
				news.id,
				news.name_id,
				news.name_'.Portal::language().' as name,
				news.brief_'.Portal::language().' as brief,
				IF(news.small_thumb_url!="",news.small_thumb_url,news.image_url) as image_url
			FROM
				news
				left outer join category on news.category_id = category.id
			WHERE
				'.$cond.'
			ORDER BY
				news.time desc, news.position desc
			LIMIT
				0,3
		');
	}
}
?>