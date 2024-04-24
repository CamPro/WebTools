<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY thedeath
******************************/
class File
{
	function File()
	{
			
	}
	function open($file,$mode = 'w+')
	{
		return fopen($file,$mode);
	}	
	function get($file)
	{
		return @file_get_contents($file);		 
	}
	function save($file,$content)
	{
		$hander = File::open($file);
		fwrite($hander,$content);
		File::close($hander);
	}
	function save_array($file,$items,$name = 'items')
	{
		$content = '<?php $'.$name.' = '.var_export($items,true).';?>';
		File::save($file,$content);
	}
	function close($hander)
	{
		fclose($hander);
	}
}
?>