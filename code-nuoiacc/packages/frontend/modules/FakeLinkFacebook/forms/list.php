<?php
class FakeLinkFacebookForm extends Form
{
	function FakeLinkFacebookForm()
	{
		Form::Form('FakeLinkFacebookForm');$this->link_js('skins/news/js/emojione.min.js');
		$this->link_js('skins/news/js/emojionearea.js');			
		$this->link_js("skins/news/js/jquery.dataTables.js");
		$this->link_js("skins/news/js/dataTables.responsive.min.js");
		$this->link_js("skins/news/js/dataTables.bootstrap.js");
		$this->link_js("skins/news/js/dataTables.buttons.min.js");
		$this->link_js("skins/news/js/buttons.flash.min.js");
		$this->link_js("skins/news/js/jszip.min.js");
		$this->link_js("skins/news/js/pdfmake.min.js");
		$this->link_js("skins/news/js/vfs_fonts.js");
		$this->link_js("skins/news/js/buttons.html5.min.js");
		$this->link_js("skins/news/js/buttons.print.min.js");
		$this->link_css('skins/news/css/dataTables.bootstrap.css');
		$this->link_css('skins/news/css/dataTables.responsive.css');
		$this->link_js('skins/news/js/jquery.countdown.min.js');
		$this->link_js('skins/news/js/jquery.ui.min.js');
		$this->link_js('skins/news/libraries/elFinder/js/elfinder.full.js');		
		$this->link_js('skins/news/js/jquery.dialogelfinder.js');
		$this->link_css('skins/news/libraries/elFinder/css/elfinder.min.css');		
		$this->link_js('skins/news/js/script.js');	
		$this->link_js('skins/news/js/autosize.js');				
	}	
	function on_submit()
	{
		if(isset($_REQUEST['fake_link']) and isset($_REQUEST['link_redirect']) and isset($_REQUEST['mobile_link_redirect']))
		{
			$data = array(
				'link_redirect','mobile_link_redirect','domain','fake_link'
			);
			if((Url::get('cmd')=='edit') and (Url::iget('id') and $fake=DB::fetch('select * from facebook_fake_link where id='.Url::iget('id').' and user_id="'.User::id().'"')))
			{
				DB::update_id('facebook_fake_link',$data,Url::iget('id'));
			}
			else
			{
				$code = String::random_string(8,true,'facebook_fake_link','code');
				$data+=array(
					'time'=>time(),
					'user_id'=>User::id(),
					'code'=>$code
				);
				DB::insert('facebook_fake_link',$data);	
			}
			Url::redirect_current();
		}
	}
	function draw()
	{
		$this->map = array();
		$this->map['domain_list'] = array(
			'http://tinhotqua123.gq/'=>'http://tinhotqua123.gq/',
			'http://tinhotqua123.tk/'=>'http://tinhotqua123.tk/',
			'http://tinhotqua123.cf/'=>'http://tinhotqua123.cf/',
			'http://tinhotqua123.ml/'=>'http://tinhotqua123.ml/',
			'http://tinhotqua123.ga/'=>'http://tinhotqua123.ga/',
		);
		$cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = '1';
		}
		$this->init_edit();
		$this->map['items'] = DB::fetch_all('select * from facebook_fake_link where '.$cond.' order by time desc');
		$this->parse_layout('list',$this->map);
	}
	function init_edit()
	{
		if(Url::get('cmd')=='edit' and Url::get('id') and ($item = DB::fetch('select * from facebook_fake_link where id='.Url::iget('id'))))
		{
			foreach($item as $key=>$value)
			{
				$_REQUEST[$key] = $value;
			}
		}	
	}
}
?>