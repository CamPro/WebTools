<?php
class RedirectForm extends Form
{
	function RedirectForm()
	{
		Form::Form('RedirectForm');
	}
	function draw()
	{
		if(Url::sget('id') and $item = Redirect::$item)
		{
			//DB::update_hit_count('share',$item['id'],'directcount');
		}
		else
		{
			Url::redirect('home');
		}
	}
}
?>