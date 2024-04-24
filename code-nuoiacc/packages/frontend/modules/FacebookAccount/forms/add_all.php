<?php
class AddAllFacebookAccountForm extends Form
{
	function AddAllFacebookAccountForm()
	{
		Form::Form('AddAllFacebookAccountForm');	
		$this->link_js('skins/news/js/autosize.js');			
	}	
	function draw()
	{
		$this->parse_layout('add_all');
	}
}
?>