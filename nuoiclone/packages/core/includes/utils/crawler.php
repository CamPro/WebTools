<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY thedeath
******************************/
class Feed
{
	function check_link($url,$host='')
	{
		if((strpos($url,'http://')===false) and (preg_match_all('/http:\/\/(.*)\.([a-z]+)\//',$host,$matches,PREG_SET_ORDER)))
		{
			$url = $matches[0][0].$url;
		}
		return $url;
	}
	function get_site($cond = 1)
	{
		return DB::fetch_all('
			SELECT
				site.*,
				site_register.category_id,
				site_register.zone_id,
				site_register.account_id
			FROM
				site 
				INNER JOIN site_register on site_register.site_id = site.id
			WHERE
				'.$cond.'
			ORDER BY	
				site.id DESC
		');
	}
	function get_pattern($site_id)
	{
		return DB::fetch_all('
			SELECT
				*
			FROM
				site_structure
			WHERE
				site_id='.$site_id.'		
			ORDER BY
				id desc	
		');
	}
	function format_link($source,$format=false)
	{
		if($format)
		{
			$source = str_replace(' ','%20',$source);	
		}
		else
		{
			if(strrpos($source,'?')===true)
			{
				$source = substr($source,0,strrpos($source,'?'));
			}
			$source = str_replace(' ','',$source);	
		}
		return $source;
	}
	function format_content($content,$host)
	{
		$html = str_get_html($content);
		foreach($html->find('img') as $key)
		{
			if($key->src)
			{
				$url = $key->src;
				$content = str_replace($url,Feed::check_link($url,$host),$html);
			}
		}
		return trim($content);
	}
	function save($sour,$dest)
	{
		$sour = Feed::format_link($sour,true);
		@copy($sour,$dest);
	}	
	function parse_row($link,$pattern,$site)
	{
		$html = file_get_html($link);
		$item = array();
		if(isset($site['image_url']))
		{
			$item['image_url'] = $site['image_url'];
			if($site['table_name']=='news')
			{
				$item['small_thumb_url'] = $site['image_url'];
			}
		}
		$row = array();
		if($pattern)
		{			
			require_once 'packages/core/includes/utils/vn_code.php';
			require_once 'packages/core/includes/utils/search.php';
			foreach($pattern as $key=>$value)
			{
				if($value['extra']!="")
				{
					$detail_pattern = $value['extra'];			
				}
				else
				{
					$detail_pattern = $value['element'].'['.$value['attribute'].'='.$value['value'].']';
				}
				foreach($html->find($detail_pattern) as $element)
				{
					if($value['type'] == 'IMG' or $value['type'] == 'FILE')
					{		
						if($value['type'] == 'IMG')
						{
							$source = $element->getAttribute('src');
						}
						else
						{
							$source = $element->getAttribute('href');
						}						
						$dest = 'upload/'.substr($site['account_id'],1).'/content/'.substr($source,strrpos($source,'/')+1);						
						$source = Feed::check_link($source,$site['url']);
						Feed::save($source,$dest);
						$item[$value['field_name']] = $dest;
					}
					else
					{
						$item[$value['field_name']] = Feed::format_content($element->innertext,$site['url']);
					}
					break;
				}				
			}
			if(isset($item['name_1']))
			{
				$name = $item['name_1'];
			}
			if(isset($item['name']))
			{
				$name = $item['name'];
			}
			if(isset($name))
			{
				$row = $item;
				$name_id = convert_utf8_to_url_rewrite($name).'-'.substr($site['account_id'],1); 
				if(!DB::fetch('select name_id from '.$site['table_name'].' where name_id="'.$name_id.'" and portal_id="'.$site['account_id'].'"'))
				{
					$item += array(
						'portal_id'=>$site['account_id'],
						'time'=>time(),
						'up_time'=>time(),
						'name_id'=>$name_id,
						'zone_id'=>($site['zone_id']!=""?$site['zone_id']:1),
						'user_id'=>User::id()						
					);
					if($site['table_name']=='news')
					{
						require_once 'packages/core/includes/utils/vn_code.php';
						require_once 'packages/core/includes/utils/search.php';
						$keywords = extend_search_keywords(convert_utf8_to_telex($item['name_1'].' '.$item['brief_1']));
						$item += array(
							'show_image'=>0,
							'show_comment'=>1,
							'type'=>'NEWS',
							'show_share'=>1,
							'keywords'=>$keywords,
							'source'=>$site['source']
						);
					}
					$item+= array(
						'status'=>'SHOW',
						'category_id'=>$site['category_id'],
						'publish'=>$site['publish']
					);
					$pos = DB::insert($site['table_name'],$item);
					if($site['table_name']=='news')
					{
						DB::update_id($site['table_name'],array('position'=>$pos),$pos);	
					}
					echo Feed::draw_html($row);
				}
			}
		}
	}
	function draw_html($item)
	{
		$html = '
		<table cellpadding="4" cellspacing="0" width="100%" style="#width:99%;margin-top:-1px;" border="1" bordercolor="#ccc" align="center">
			<tr>
				<td>&nbsp;';
				if(isset($item['name']) or isset($item['name_1']))
				{
					$html .= isset($item['name'])?$item['name']:$item['name_1'];
				}
		$html .='</td>
			</tr>
		</table>';
		return $html;
	}
	function get_data($site,$pattern)
	{
		$html = file_get_html($site['url']);
		if($site['extra']!="")
		{
			$list_pattern = $site['extra'];			
		}
		else
		{
			$list_pattern = $site['element'].'['.$site['attribute'].'='.$site['value'].']';
		}
		$images = array();
		if($site['image_pattern']!="")
		{
			$i = 1;
			foreach($html->find($site['image_pattern']) as $element)
			{
				if($element->hasAttribute('src'))
				{
					$images[$i] = $element->getAttribute('src');
				}
				$i++;
			}
		}
		$i = 1;
		foreach($html->find($list_pattern) as $element)
		{
			if($element->hasAttribute('href'))
			{
				if(isset($images[$i]))
				{
					$source = Feed::check_link($images[$i],$site['url']);
					$dest = 'upload/'.substr($site['account_id'],1).'/content/'.substr($source,strrpos($source,'/')+1);																
					Feed::save($source,$dest);
					$site['image_url'] = $dest;
				}				
				$item = Feed::parse_row(Feed::check_link($element->getAttribute('href'),$site['url']),$pattern,$site);
			}
			$i++;
		}
	}
}
?>