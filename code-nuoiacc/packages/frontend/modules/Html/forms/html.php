<?php

class HtmlForm extends Form

{

	function HtmlForm()

	{

		Form::Form('HtmlForm');

	}

	function draw()

	{

		if(Module::get_setting('template') and file_exists(Module::get_setting('template').'/layout.php'))

		{

			$html_code = file_get_contents(Module::get_setting('template').'/layout.php');

		}

		else

		{

			$html_code = '{{-content-}}';

		}

		$html_code = str_replace(

			array('{{-content-}}'), 

			array(

				Module::get_setting('html')

			),

			$html_code

		);

		if(Module::get_setting('use_php'))

		{

			eval(' ?>'.$html_code.'<?php ');

		}

		else

		{

			echo $html_code;

		}

	}

}	

?>

