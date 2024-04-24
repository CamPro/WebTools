<?php
class DashboardForm extends Form
{
	function DashboardForm()
	{
		Form::Form('DashboardForm');	
		$this->link_js('skins/news/js/highcharts.js');
	}	
	function draw()
	{
		$this->map = DashboardDB::get_items();
		$this->parse_layout('list',$this->map);
	}
}
?>