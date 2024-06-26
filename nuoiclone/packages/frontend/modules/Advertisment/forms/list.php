<?php
class AdvertismentForm extends Form
{
	function AdvertismentForm()
	{
		Form::Form('AdvertismentForm');
		if(Module::get_setting('skin_template'))
		{
			$this->link_css(Module::get_setting('skin_template').'/style.css');
		}
		if(Module::get_setting('frame_skin_template'))
		{
			$this->link_css(Module::get_setting('frame_skin_template').'/style.css');
		}
	}
	function draw()
	{
		if(!($this->map['items'] = DB::fetch_all('
			select
				advertisment.id,
				media.name_'.Portal::language().' as name,
				media.url,
				media.image_url,
				media.html_code,
				media.url_flash,
				media.height,
				media.width
			from
				media
				inner join advertisment on advertisment.item_id=media.id
			where
				advertisment.region = "'.addslashes(Module::$current->data['name']).'"
				and advertisment.start_time<"'.time().'" 
				and advertisment.end_time>"'.time().'"
				and type="ADVERTISMENT"
				'.(isset($_REQUEST['category_id'])?'and advertisment.category_id='.Url::get('category_id'):'').'
			order by
				advertisment.position
			limit 
				0,'.intval(Module::get_setting('limit',1)).'
		')))
		{
			$this->map['items'] = DB::fetch_all('
				select
					advertisment.id,
					media.name_'.Portal::language().' as name,
					media.url,
					media.html_code,
					media.image_url,
					media.url_flash,
					media.height,
					media.width
				from
					media
					inner join advertisment on advertisment.item_id=media.id
				where
					advertisment.region = "'.addslashes(Module::$current->data['name']).'"
					and advertisment.start_time<"'.time().'" 
					and advertisment.end_time>"'.time().'"
					and type="ADVERTISMENT"
				order by
					advertisment.position
				limit 
					0,'.intval(Module::get_setting('limit',1)).'
			')	;
		}
		$title= Portal::language(Module::get_setting('title'));
		if(!($list_layout = Module::get_setting('cache')) or !USE_CACHE)
		{
			if($layout_template = Module::get_setting('layout_template'))
			{
				if(Module::get_setting('frame_template') and file_exists(Module::get_setting('frame_template').'/layout.php'))
				{
					$frame_code = file_get_contents(Module::get_setting('frame_template').'/layout.php');
				}
				else
				{
					$frame_code = '{{-content-}}';
				}
				$frame_code = str_replace(
					array('{{-content-}}','{{-title-}}'), 
					array(
						file_get_contents($layout_template.'/layout.php'),
						'<?php echo $title;?>'
					),
					$frame_code
				);
				require_once 'packages/core/includes/portal/generate_layout.php';
				$generate_layout = new GenerateLayout($frame_code);
				$list_layout = $generate_layout->generate_text($generate_layout->synchronize());
				if(Module::get_setting('skin_template') and preg_match('/packages\/(\w+)\/templates\/Advertisment\/skins\/(\w+)/',Module::get_setting('skin_template'),$patterns))
				{
					$list_layout = '<div class="'.$patterns[1].'-advertisment-'.$patterns[2].'">'.$list_layout.'</div>';
				}
				if(Module::get_setting('frame_skin_template') and preg_match('/packages\/(\w+)\/templates\/Frame\/skins\/(\w+)/',Module::get_setting('frame_skin_template'),$patterns))
				{
					$list_layout = '<div class="'.$patterns[1].'-frame-'.$patterns[2].'">'.$list_layout.'</div>';
				}
				$list_layout .= '<?php $title = Module::get_setting(\'title\')?Portal::language(Module::get_setting(\'title\')):\'\';?>';
				Module::set_setting('cache',$list_layout);
			}
			else
			{
				$list_layout = '';
			}
		}
		eval('?>'.$list_layout.'<?php ');
	}
}
?>