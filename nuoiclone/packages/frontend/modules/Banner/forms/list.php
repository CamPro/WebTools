<?php
class BannerForm extends Form
{
	function BannerForm()
	{
		Form::Form('BannerForm');
		$this->link_css('https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext');
		$this->link_css('https://fonts.googleapis.com/icon?family=Material+Icons');
		$this->link_css('https://fonts.googleapis.com/css?family=Open+Sans');
		$this->link_css('skins/news/css/bootstrap.css');
		$this->link_css('skins/news/css/font-awesome.css');
		$this->link_css('skins/news/css/waves.css');
		$this->link_css('skins/news/css/animate.css');
		$this->link_css('skins/news/css/jquery-ui-1.10.1.custom.css');
		$this->link_css('skins/news/css/bootstrap-material-datetimepicker.css');
		$this->link_css('skins/news/css/sweetalert.css');
		$this->link_css('skins/news/css/md-preloader.css');
		$this->link_css('skins/news/css/bootstrap-select.css');
		$this->link_css('skins/news/css/animate.css');
		$this->link_css('skins/news/css/emojionearea.css');
		$this->link_css('skins/news/css/style.css');																
		$this->link_css('skins/news/css/all-themes.css');		
		$this->link_css('skins/news/css/custom.css');
		
		$this->link_js('skins/news/js/jquery.min.js');
		$this->link_js('skins/news/js/bootstrap.js');
		$this->link_js('skins/news/js/moment.js');
		$this->link_js('skins/news/js/jquery.geocomplete.js');
		$this->link_js('skins/news/js/jquery.slimscroll.js');
		$this->link_js('skins/news/js/bootstrap-material-datetimepicker.js');
		$this->link_js('skins/news/js/gmaps.js');
		$this->link_js('skins/news/js/bootstrap-notify.js');
		$this->link_js('skins/news/js/sweetalert.min.js');
		$this->link_js('skins/news/js/waves.js');	
		$this->link_js('skins/news/js/admin.js');				
		$this->link_js('skins/news/js/analytics.js');														
		$this->link_js('skins/news/js/script.js');
	}
	function draw()
	{
		$layout = 'list';
		if(Url::get('page')=='upgrade_account')
		{
			$layout = 'empty';
		}
		$this->parse_layout($layout,array(
		));
	}
}
?>