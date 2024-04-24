<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY thedeath
******************************/
class Printer
{
	static $handler ;
	static $printer_name = '';
	function Printer($printer_name,$options)
	{
		Printer::$printer_name = $printer_name;
		if(!Printer::$handler = printer_open(Printer::$printer_name))
		{
			die('Error: Could not connect to Printer');
			return false;
		}
		if(is_array($options) and count($options)>0)
		{
			foreach($options as $key=>$value)
			{
				printer_set_option(Printer::$handler, $key, $value);
			}	
		}	
	}
	function convert($string) 
	{			
		return convert_utf8_to_latin($string);
	}
	function write($content)
	{
		printer_write(Printer::$handler,Printer::convert($content));
	}
	function write_r($items,$group,$table,$department,$bill_title = 'PHIEU GHI BP ')
	{
		//CONFIG OPTION
		$top = 0;
		$left= 0;
		$right = 550;
		$font_size_title = 30;
		$font_width_title = 15;		
		$font_size_nomarl= 20;
		$font_width_nomarl= 10;		
		$font_family = "Arial";
		printer_start_doc(Printer::$handler, "My Document");
		printer_start_page(Printer::$handler);
		$font_title = printer_create_font($font_family, $font_size_title, $font_width_title, PRINTER_FW_BOLD, false, false, false, 0);		
		$font_nomarl = printer_create_font($font_family, $font_size_nomarl, $font_width_nomarl, PRINTER_FW_NORMAL, false, false, false, 0);		
		$font_nomarl_bold = printer_create_font($font_family, $font_size_nomarl, $font_width_nomarl, PRINTER_FW_BOLD, false, false, false, 0);		
		$font_sign_nature = printer_create_font($font_family, $font_size_nomarl, $font_width_nomarl, PRINTER_FW_NORMAL, true, false, false, 0);				
		//PRINT HEADER
		printer_select_font(Printer::$handler, $font_title);		
		printer_draw_text(Printer::$handler,Printer::convert('BAN: '.$table),$left,$top);
		$top += (2*$font_width_title);
		printer_draw_text(Printer::$handler,Portal::language($bill_title.$department),100,$top);				
		printer_select_font(Printer::$handler, $font_nomarl);			
		$top += (3.5*$font_width_nomarl);
		printer_draw_text(Printer::$handler,Portal::language('Thoi gian ').' :'.date('H:i\' d/m/Y'),$left,$top);
		printer_draw_text(Printer::$handler,Portal::language('No').' : '.$group,$left+400,$top);
		//PRINT BILL		
		$pen = printer_create_pen(PRINTER_PEN_SOLID, 1, "000000");
		printer_select_pen(Printer::$handler, $pen);
		$top+=(3.5*$font_width_nomarl);
		printer_draw_line(Printer::$handler, $left,$top,$right,$top);		
		$top+=(0.5*$font_width_nomarl);
		printer_select_font(Printer::$handler, $font_nomarl_bold);		
		printer_draw_text(Printer::$handler,Portal::language('SL'),$left+4,$top);	
		printer_draw_text(Printer::$handler,Portal::language('Ten mon'),$left+55,$top);	
		printer_draw_text(Printer::$handler,Portal::language('Vi tri'),$left+420,$top);	
		$top+=(2.2*$font_width_nomarl);
		printer_draw_line(Printer::$handler, $left,$top,$right,$top);
		$top+=$font_width_nomarl;
		$category_name = '';
		foreach($items as $key=>$value)
		{
			if($category_name!=$value['category_name'])
			{
				$top += ($font_width_nomarl-10);	
				printer_select_font(Printer::$handler, $font_nomarl_bold);				
				printer_draw_text(Printer::$handler,Printer::convert($value['category_name']),($left+6),$top);	
				$category_name = $value['category_name'];	
			}
			$top += (3*$font_width_nomarl);
			printer_select_font(Printer::$handler, $font_nomarl);			
			printer_draw_text(Printer::$handler,isset($_REQUEST['quantity_'.$key])?$_REQUEST['quantity_'.$key]:$value['quantity'],($left+6),$top);	
			printer_draw_text(Printer::$handler,Printer::convert($value['name']),55,$top);	
			printer_draw_text(Printer::$handler,isset($_REQUEST['position_'.$key])?$_REQUEST['position_'.$key]:$value['position'],425,$top);	
			$note = isset($_REQUEST['note_'.$key])?$_REQUEST['note_'.$key]:$value['note'];
			if($note!="")
			{
				$top += (2.5*$font_width_nomarl);
				printer_select_font(Printer::$handler, $font_sign_nature);			
				printer_draw_text(Printer::$handler,'('.Printer::convert($note).')',$left+55,$top);	
				printer_select_font(Printer::$handler, $font_nomarl);			
			}	
		}
		//PRINT FOOTER	
		$top+=(3*$font_width_nomarl);
		$center = (($right-$left-12)/2);
		printer_draw_line(Printer::$handler, $left,$top,$right,$top);
		printer_select_font(Printer::$handler, $font_sign_nature);		
		printer_draw_text(Printer::$handler,'Nhan vien',($center+($center/3.5)),$top+10);	
		printer_draw_text(Printer::$handler,Printer::convert(Session::get('staff_name')),($center+20),$top+10+(2*$font_width_nomarl));	
		//DELETE OPTION ,EXIT
		printer_delete_font($font_nomarl);
		printer_delete_font($font_nomarl_bold);
		printer_delete_font($font_title);
		printer_delete_pen($pen);
		printer_end_page(Printer::$handler);
		printer_end_doc(Printer::$handler);
	}
	function get_option($option)
	{
		return printer_get_option(Printer::$handler,$option);
	}
	function close()
	{
		if(Printer::$handler)
		{
			printer_close(Printer::$handler);
		}
	}
}
?>
