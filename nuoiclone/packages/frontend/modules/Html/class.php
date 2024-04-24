<?php

/*	create by : ngocnv

	date : 10/08/2009

	Function : Hien thi ma HTML tu template

*/

class Html extends Module

{

	function Html($row)

	{

		Module::Module($row);

		require_once 'db.php';

		require_once 'forms/html.php';		

		$this->add_form(new HtmlForm());

	}

}

?>

