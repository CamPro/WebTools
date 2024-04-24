<?php
/*
	This is PHP file that generates CAPTCHA image for the How to Create CAPTCHA Protection using PHP and AJAX Tutorial

	You may use this code in your own projects as long as this 
	copyright is left in place.  All code is provided AS-IS.
	This code is distributed in the hope that it will be useful,
 	but WITHOUT ANY WARRANTY; without even the implied warranty of
 	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
	
	For the rest of the code visit http://www.WebCheatSheet.com
	
	Copyright 2006 WebCheatSheet.com	

*/
//Start the session so we can store what the security code actually is
if(!defined('ROOT_PATH'))
{
	define( 'ROOT_PATH', strtr(dirname( __FILE__ ) ."/",array('\\'=>'/')));
}	
require_once ROOT_PATH.'packages/core/includes/system/config.php';
require_once 'packages/core/includes/system/database.php';

//Send a generated image to the browser 
$type ='';
if(Url::get('type'))
{
	$type = Url::get('type');
}
create_image($type); 
System::halt(); 
function create_image($type='')
{ 
    //Let's generate a totally random string using md5 
	$md5_hash = rand(1000,9999); 
	//We don't need a 32 character long string so we trim it down to 5 
	$security_code = substr($md5_hash, 0, 4); 
    //Set the session to store the security code
    Session::set("security_code", $security_code);

    //Set the image width and height 
    $width = 60; 
    $height = 22;  

    //Create the image resource 
    $image = ImageCreate($width, $height);  

    //We are making three colors, white, black and gray 
    $white = ImageColorAllocate($image, 255, 255, 255); 
    $black = ImageColorAllocate($image, 000, 000, 000); 
    $grey = ImageColorAllocate($image, 000, 000, 000); 

    //Make the background black 
    ImageFill($image, 0, 0, $black); 

    //Add randomly generated string in white to the image
    ImageString($image, 5, 10, 3, $security_code, $white); 

    //Throw in some lines to make it a little bit harder for any bots to break 
    ImageRectangle($image,0,0,$width-1,$height-1,$grey); 
    //imageline($image, 0, $height/2, $width, $height/2, $grey); 
    //imageline($image, $width/2, 0, $width/2, $height, $grey); 
 
    //Tell the browser what kind of file is come in 
    header("Content-Type: image/jpeg"); 

    //Output the newly created image in jpeg format 
    ImageJpeg($image); 
    
    //Free up resources
    ImageDestroy($image); 
} 
?>