<?php
/******************************
COPY RIGHT BY NYN PORTAL - TCV
WRITTEN BY vuonggialong
******************************/

//Lop he thong
//Cac ham dung chung thong dung cho vao day
class Timer
{
	var $starttime = 0;
    function start_timer()
    {
        $mtime = microtime();
        $mtime = explode (' ', $mtime);
        $mtime = $mtime[1] + $mtime[0];
		$this->starttime = $mtime;
    }
	function get_timer()
	{
		$mtime = microtime();
		$mtime = explode (' ', $mtime);
		$mtime = $mtime[1] + $mtime[0];
		return number_format($mtime-$this->starttime,4);
	}
	function period_time($time)
	{
		$period_time='';
		$day=intval((time()-$time)/24/60/60);
		$hour=intval((time()-$time)/60/60);
		$minute=intval((time()-$time)/60);
		$second=intval((time()-$time)%60);
		if($day>0)
		{
			$period_time .= $day.' ngày';
		}
		else
		{
			if($hour>0)
			{ 
				$period_time .= $hour.' giờ';
			}
			else
			{
				if($minute>0)
				{
					$period_time .= $minute.' phút';
				}
				else
				{
					if($second>10)
					{
						$period_time .= $second.' giây';
					}
					else
					{
						$period_time = 'Vài giây';
					}
				}
			}
		}
		return $period_time.' trước';
	}
}

class System
{
	static $false = false;
	function send_email($from,$to,$subject,$content,$attachment=array(),$from_user='send.kamaka@gmail.com',$from_password='123456!@#$%^',$from_name="")
	{
		@file_get_contents('http://vietnamnay.com/sendemail.php?from='.$from.'&to='.$to.'&subject='.urlencode($subject).'&content='.urlencode($content));
		return true;exit();
		if(!class_exists('PHPMailer'))
		{
			require(ROOT_PATH.'packages/core/includes/utils/mailer/class.phpmailer.php');
		}	
		$mail = new PHPMailer();		
		$mail->IsSMTP();
		$mail->SetLanguage("vn", "");
		$mail->Host     = "webmail.akay.vn";
		$mail->SMTPAuth = true;
		//attachment
		if(is_array($attachment) and count($attachment)>0)
		{
			foreach($attachment as $value)
			{
				$mail->AddAttachment($value);
			}
		}
		////////////////////////////////////////////////
		// Ban hay sua cac thong tin sau cho phu hop
		
		$mail->Username = $from_user;				// SMTP username
		$mail->Password = $from_password; 				// SMTP password
		
		$mail->From     = $from;				// Email duoc gui tu???
		$mail->FromName =$from_name;					// Ten hom email duoc gui
		$mail->AddAddress($to,"");	 	// Dia chi email va ten nhan
		$mail->AddReplyTo($from,"");		// Dia chi email va ten gui lai
				
		$mail->IsHTML(true);//default : true (ducnm sua)				// Gui theo dang HTML
		
		$mail->Subject  =  $subject;				// Chu de email
		$mail->Body     =  $content;		// Noi dung html
		//$mail->Send();
		if(!$mail->Send())
		{
		   echo "Email chua duoc gui di! <p>";
		   echo "Loi: " . $mail->ErrorInfo;
		   echo '<br><a href="'.URL::build('lost_password').'">Back</a>';
		   exit;
		}
		else
		{
			return true;
		}
	}
	function halt()
	{
		Session::end();
		DB::close();
		exit();
	}
	function log($type, $title='', $description = '', $parameter = '', $note = '', $user_id = false)
	{
		DB::insert('log', array(
			'type'=>$type, 
			'module_id'=>is_object(Module::$current)?Module::block_id():0,
			'title'=>$title, 
			'description'=>$description, 
			'parameter'=>$parameter, 
			'note'=>$note, 
			'time'=>time(),
			'user_id'=>$user_id?$user_id:is_object(User::$current)?User::id():0,
			'portal_id'=>Portal::$portal_id)
		);
	}
	function set_page_title($title)
	{
		echo '<script type="text/javascript">document.title=\''.str_replace('\'','&quot;',$title).'\';</script>';
	}
	function set_page_description($description)
	{
		echo '<script type="text/javascript">document.description=\''.str_replace('\'','&quot;',$description).'\';</script>';
	}
	function add_meta_tag($tags)
	{
		global $meta_tags;
		if(isset($meta_tags))
		{
	 		$meta_tags.=$tags;
		}
		else
		{
			$meta_tags=$tags;
		}
	}
	function display_number($num)
	{
		if($num==round($num))
		{
			return number_format(round($num,is_float($num)?-2:0),0,'','.');
		}
		else
		{
			return number_format($num,0,',','.');
		}
	}
	function display_number_report($num)
	{
		return number_format(round($num,2),2,'.',',');
	}
	function calculate_number($num)
	{
		return str_replace(',','',$num);
	}
	function debug($array)
	{
		echo '<pre>';
		print_r($array);
		echo '</pre>';
	}
	function jdebug($array)
	{
		print_r(json_encode($array));
	}
	function message($receiver_id,$sender_id,$title,$content,$file=false,$time=false)
	{
		$rows = array(
			'receiver_id'=>$receiver_id,
			'sender_id'=>$sender_id,
			'title'=>$title,
			'content'=>$content
		);		
		if($file)
		{
			$rows['file'] = $file;
		}
		if($time)
		{
			$rows['time'] = $time;
		}
		else
		{
			$rows['time'] = time();
		}
		return DB::insert('message',$rows);
	}
	function exp_to_dec($float_str)
	// formats a floating point number string in decimal notation, supports signed floats, also supports non-standard formatting e.g. 0.2e+2 for 20
	// e.g. '1.6E+6' to '1600000', '-4.566e-12' to '-0.000000000004566', '+34e+10' to '340000000000'
	// Author: Bob
	{
		// make sure its a standard php float string (i.e. change 0.2e+2 to 20)
		// php will automatically format floats decimally if they are within a certain range
		$float_str = (string)((float)($float_str));
	
		// if there is an E in the float string
		if(($pos = strpos(strtolower($float_str), 'e')) !== false)
		{
			// get either side of the E, e.g. 1.6E+6 => exp E+6, num 1.6
			$exp = substr($float_str, $pos+1);
			$num = substr($float_str, 0, $pos);
			
			// strip off num sign, if there is one, and leave it off if its + (not required)
			if((($num_sign = $num[0]) === '+') || ($num_sign === '-')) $num = substr($num, 1);
			else $num_sign = '';
			if($num_sign === '+') $num_sign = '';
			
			// strip off exponential sign ('+' or '-' as in 'E+6') if there is one, otherwise throw error, e.g. E+6 => '+'
			if((($exp_sign = $exp[0]) === '+') || ($exp_sign === '-')) $exp = substr($exp, 1);
			else trigger_error("Could not convert exponential notation to decimal notation: invalid float string '$float_str'", E_USER_ERROR);
			
			// get the number of decimal places to the right of the decimal point (or 0 if there is no dec point), e.g., 1.6 => 1
			$right_dec_places = (($dec_pos = strpos($num, '.')) === false) ? 0 : strlen(substr($num, $dec_pos+1));
			// get the number of decimal places to the left of the decimal point (or the length of the entire num if there is no dec point), e.g. 1.6 => 1
			$left_dec_places = ($dec_pos === false) ? strlen($num) : strlen(substr($num, 0, $dec_pos));
			
			// work out number of zeros from exp, exp sign and dec places, e.g. exp 6, exp sign +, dec places 1 => num zeros 5
			if($exp_sign === '+') $num_zeros = $exp - $right_dec_places;
			else $num_zeros = $exp - $left_dec_places;
			
			// build a string with $num_zeros zeros, e.g. '0' 5 times => '00000'
			$zeros = str_pad('', $num_zeros, '0');
			
			// strip decimal from num, e.g. 1.6 => 16
			if($dec_pos !== false) $num = str_replace('.', '', $num);
			
			// if positive exponent, return like 1600000
			if($exp_sign === '+') return $num_sign.$num.$zeros;
			// if negative exponent, return like 0.0000016
			else return $num_sign.'0.'.$zeros.$num;
		}
		// otherwise, assume already in decimal notation and return
		else return $float_str;
	}
}
class String
{
	function array2suggest($array)
	{
		$st = '[';
		$i = 0;
		$size_of_array = sizeof($array);
		foreach($array as $key=>$value)
		{
			$st.='{';
			if(isset($value['name']))
			{
				$st.='name:"'.String::string2js($value['name']).'",to:"'.$key.'", id:"'.$key.'"';
			}
			else
			{
				$st.='name:"'.$key.'",to:"'.$key.'", id:"'.$key.'"';
			}
			if(isset($value['code']))
			{
				$st.=',code:"'.$value['code'].'"';
			}
			$i++;
			if($i==$size_of_array)
			{
				$st.='}';
			}
			else
			{
				$st.='},
';
			}
		}
		$st.= ']';
		return $st;
	}
	function array2autosuggest($array)
	{
		$st = '[';
		$i = 0;
		$size_of_array = sizeof($array);
		foreach($array as $key=>$value)
		{
			$st.='{';
			$f = true;
			foreach($value as $k=>$v){
				if($f){ $f = false; }else{ $st .= ',';}
				$st .= $k.':"'.$v.'"';
			}
			$i++;
			if($i==$size_of_array)
			{
				$st.='}';
			}else{
				$st.='},
';
			}
		}
		$st.= ']';
		return $st;
	}
	function str_multi_language($vn,$en=false)
	{
		if(Portal::language()==1)
		{
			return $vn;
		}
		else
		if(Portal::language()==2)
		{
			return ($en!=false)?$en:$vn;
		}
		else
		if(Portal::language()==3)
		{
			return ($en!=false)?$en:$vn;
		}
		else
		if(Portal::language()==4)
		{
			return ($en!=false)?$en:$vn;
		}
		else
		{
			return ($en!=false)?$en:$vn;
		}
	}
	function language_field_list($name)
	{
		$languages = DB::select_all('language');
		$st = '';
		foreach($languages as $language)
		{
			if($st)
			{
				$st .= ',';
			}
			$st .= $name.'_'.$language['id'];
		}
		return $st;
	}
	function display_sort_title($str,$word_number,$char=false)
	{
		if($char)
		{
			$length = strlen($str);
			if($word_number<$length)
			{
				return substr($str,0,$word_number-$length).'...';
			}
			else
			{
				return $str;
			}
		}
		else
		{
			$str = trim($str);
			$arr = explode(' ',$str);
			$c = sizeof($arr);
			$new_str='';
			if($word_number < $c)
			{
				$i=0;
				while($i<$word_number)
				{
					$new_str.=$arr[$i].' ';
					$i++;
				}
				return $new_str.'...';
			}
			else
			{
				return $str;
			}
		}
	}
	function html_normalize($st)
	{
		return str_replace(array('"','<'),array('&quot;','&lt;'),$st);
	}
	function string2js($st)
	{
		return strtr($st, array('\''=>'\\\'','\\'=>'\\\\','\n'=>'',chr(10)=>'\\',chr(13)=>''));
	}
	function array2js($array)
	{
		$st = '{';
		foreach($array as $key=>$value)
		{
			if($st!='{')
			{
				$st.='
,';
			}
			$st.='\''.String::string2js($key).'\':';
			if(is_array($value))
			{
				$st .= String::array2js($value);
			}
			else
			{
				$st .= '\''.String::string2js($value).'\'';
			}
		}
		return $st.'
}';
	}
	function array2menu($array,$m='m'){
		$str = 'var '.$m.'=[];';
		foreach($array as $key=>$value){
			$i=0;
			$str .= $m.'['.$key.']=[];';
			if($value['childs']){
				foreach($value['childs'] as $k=>$v){
					$str .= $m.'['.$key.']['.$i.']=';
					$str .= '{r:"'.$k.'|'.String::tojs($v['name']).'|'.$v['child_number'].'"';
					if($v['childs']){
						$str .= ',s:[';
						$check = 1;
						foreach($v['childs'] as $s=>$sv){
							if($check > 1){
								$str .= ',"'.$s.'|'.String::tojs($sv['name']).'"';
							}else{
								$str .= '"'.$s.'|'.String::tojs($sv['name']).'"';
							}
							$check++;
						}
						$str .= ']';
					}
					$str .= '};';
					$i++;
				}
			}
		}
		return $str;
	}
	function tojs($st){
		return strtr($st,array('"'=>'\"','\\'=>'\\\\','\n'=>'',chr(10)=>'\\',chr(13)=>''));
	}
	function array2tree(&$items,$items_name)
	{
		$show_items = array();
		$min = -1;
		foreach($items as $item)
		{
			if($min==-1)
			{
				$min = IDStructure::level($item['structure_id']);
			}
			$structure_ids[number_format($item['structure_id'],0,'','')] = $item['id'];
			if(IDStructure::level($item['structure_id'])<=$min)
			{
				$show_items[$item['id']] = $item+(isset($item['childs'])?array():array($items_name=>array()));
			}else{
				$st = '';
				$parent = $item['structure_id'];
				while(($level=IDStructure::level($parent = IDStructure::parent($parent)))>=$min and $parent and isset($structure_ids[number_format($parent,0,'','')]))
				{
					$st = '['.$structure_ids[number_format($parent,0,'','')].'][\''.$items_name.'\']'.$st;
				}
				if($level<$min or $level==0)
				{				
					eval('$show_items'.$st.'['.$item['id'].'] = $item+array($items_name=>array());');
				}
			}
		}
		return $show_items;
	}
	function array2options($arr,$selecteds=array()){
		if($arr && is_array($arr) && count($arr)>0){
			$arr = String::array2tree($arr,'childs');
			return String::array2option($arr,$selecteds);
		}else{
			return '';	
		}
	}
	function array2option($arr,$selecteds){
		$str = '';
		foreach($arr as $key=>$value){
			if(isset($value['childs']) && count($value['childs'])>0 ){
				$str .= '<optgroup label="'.$value['name'].'">';
				$str .= String::array2option($value['childs'],$selecteds);
				$str .= '</optgroup>';
			}else{
				$str .= '<option value="'.$key.'" '.(isset($selecteds[$key])?'selected="selected"':'').'>'.$value['name'].'</option>';	
			}
		}
		return $str;
	}
	function convert_to_vnnumeric($st)
	{
		return str_replace(',','',$st);
	}
	function to_number($st,$count=0)
	{
		$temp = substr($st,$count);
		$n = 0;
		for($i=0;$i<strlen($temp);$i++)
		{
			$n = $n*10 + $temp[$i];
		}
		return $n;
	}
	function get_list($items, $field_name=false, $tree=true, $level_start = 0, $space = ' --- ', $value = 'id')
	{
		
		$item_list = array();
		foreach($items as $item)
		{	
			if(!$field_name)
			{
				$field_name=isset($item['name'])?'name':(isset($item['title'])?'title':(isset($item['name_'.Portal::language()])?'name_'.Portal::language():(isset($item['title_'.Portal::language()])?'title_'.Portal::language():'id')));
			}
			if(isset($item['structure_id']) and $tree)
			{
				$level = IDStructure::level($item['structure_id']);
				for($i=$level_start;$i<$level;$i++)
				{
					$item[$field_name] = $space.$item[$field_name];
				}
			}
			$item_list[$item[$value]]=isset($item[$field_name])?$item[$field_name]:'';
		}
		return $item_list;
	}
	function format_text($str,$type='TEXT'){
		if($type=='NUMBER'){
			$str = str_replace(array('\\',' ','"','\''),'',trim(preg_replace('/\s\s+/',' ',strip_tags($str))));
			if(is_numeric($str)) $str = $str;
			else $str = '';
		}else{
			$str = str_replace(array('\\','"','\''),array('','&quot;','&rsquo;'),trim(preg_replace('/\s\s+/',' ',strip_tags($str))));
		}
		return $str;
	}
	function random_string($len=8,$check=false,$table='',$field='')
	{
		$base='ABCDEFGHKLMNOPQRSTWXYZabcdefghjkmnpqrstwxyz123456789';
		$max=strlen($base)-1;
		$activatecode='';
		mt_srand((double)microtime()*1000000);
		while (strlen($activatecode)<$len+1)
		  $activatecode.=$base{mt_rand(0,$max)};	
		if($check)
		{
			if(DB::fetch('select id from '.$table.' where '.$field.'="'.$activatecode.'"'))
			{
				$activatecode = String::random_string($len,$check,$table,$field);
			}
		}	 
		return $activatecode;
	}
}
class Date_Time
{
	function to_sql_date($date)
	{
		$a = explode('/',$date);
		if(sizeof($a)==3 and is_numeric($a[1]) and is_numeric($a[2]) and is_numeric($a[0]) and checkdate($a[1],$a[0],$a[2]))
		{
			return ($a[2].'-'.$a[1].'-'.$a[0]);
		}
		else
		{
			return false;
		}
	}
	function to_common_date($date)
	{
		$a = explode('-',$date);
		
		if(sizeof($a)==3 and $a[0]!='0000')
		{
			return ($a[2].'/'.$a[1].'/'.$a[0]);
		}
		else
		{
			return false;
		}	
	}
	// format 01/01/2006
	function to_time($date)
	{
		if(preg_match('/(\d+)\/(\d+)\/(\d+)\s*(\d+)\:(\d+)/',$date,$patterns))
		{
			return strtotime($patterns[2].'/'.$patterns[1].'/'.$patterns[3])+$patterns[4]*3600+$patterns[5]*60;
		}
		else
		{
			$a = explode('/',$date);
			if(sizeof($a)==3 and is_numeric($a[1]) and is_numeric($a[2]) and is_numeric($a[0]) and checkdate($a[1],$a[0],$a[2]))
			{
				return strtotime($a[1].'/'.$a[0].'/'.$a[2]);
			}
			else
			{
				return false;
			}		
		}
	}
	//Tra ve ngay lon nhat trong thang (29, 30 hay 31)
	function display_date($time)
	{
		$time=date('d/m/Y',$time);
		return $time;
	}
	function daily($time)
	{
		$daily=(getdate($time));
		return $daily['weekday'];
	}
	//Chuyen du lieu tu dang int sang gio:phut:giay
	function int_to_time($time,$mode=0)
	{
		if($time and $time>=0){$hour = floor($time/3600);}else{$hour = 0;}
		if($time and $time>=0){$minute = $time%3600/60;}else{$minute = 0;}
		switch ($mode)
		{
			case 1:
				return $hour;
				break;
			case 2:
				return $minute;
				break;	
			default:
				return $hour.':'.$minute;
				break;
		}
	}
	function day_of_month($month,$year)
	{
		return cal_days_in_month(CAL_GREGORIAN,$month,$year); 
	}	
	function timezone() 
	{
	  	$zones_array = array();
	  	$timestamp = time();
	  	foreach(timezone_identifiers_list() as $key => $zone) {
	   		date_default_timezone_set($zone);
	   		$zones_array[$key]['zone'] = $zone;
	    	$zones_array[$key]['diff_from_GMT'] = 'UTC/GMT ' . date('P', $timestamp);
	  	}
	  	return $zones_array;
	}
	function time_delay($label = 'Seconds',$start = 5,$max=900)
	{
		$time = array();
		for($i=$start;$i<=$max;$i++)
		{
			$time[$i] = $i.' '.$label;
		}
		return $time;
	}
	
}
class Spintax
{
    public function process( $text )
    {
        return preg_replace_callback(
            '/\{(((?>[^\{\}]+)|(?R))*)\}/x',
            array( $this, 'replace' ),
            $text
        );
    }

    public function replace( $text )
    {
        $text = $this -> process( $text[1] );
        $parts = explode( '|', $text );
        return $parts[ array_rand( $parts ) ];
    }
}
class Mobile
{
	function mobile_device_detect($iphone=true,$android=true,$opera=true,$blackberry=true,$palm=true,$windows=true,$mobileredirect=false,$desktopredirect=false)
	{
	  $mobile_browser   = false; // set mobile browser as false till we can prove otherwise
	  $user_agent     = $_SERVER['HTTP_USER_AGENT']; // get the user agent value - this should be cleaned to ensure no nefarious input gets executed
	  $accept       = $_SERVER['HTTP_ACCEPT']; // get the content accept value - this should be cleaned to ensure no nefarious input gets executed
	  switch(true){ // using a switch against the following statements which could return true is more efficient than the previous method of using if statements
		case (eregi('ipod',$user_agent)||eregi('iphone',$user_agent)); // we find the words iphone or ipod in the user agent
		$mobile_browser = $iphone; // mobile browser is either true or false depending on the setting of iphone when calling the function
		$status = 'Apple';
		if(substr($iphone,0,4)=='http'){ // does the value of iphone resemble a url
		  $mobileredirect = $iphone; // set the mobile redirect url to the url value stored in the iphone value
		} // ends the if for iphone being a url
		break; // break out and skip the rest if we've had a match on the iphone or ipod
		case (eregi('android',$user_agent));  // we find android in the user agent
		$mobile_browser = $android; // mobile browser is either true or false depending on the setting of android when calling the function
		$status = 'Android';
		if(substr($android,0,4)=='http'){ // does the value of android resemble a url
		  $mobileredirect = $android; // set the mobile redirect url to the url value stored in the android value
		} // ends the if for android being a url
		break; // break out and skip the rest if we've had a match on android
		case (eregi('opera mini',$user_agent)); // we find opera mini in the user agent
		$mobile_browser = $opera; // mobile browser is either true or false depending on the setting of opera when calling the function
		$status = 'Opera';
		if(substr($opera,0,4)=='http'){ // does the value of opera resemble a rul
		  $mobileredirect = $opera; // set the mobile redirect url to the url value stored in the opera value
		} // ends the if for opera being a url 
		break; // break out and skip the rest if we've had a match on opera
		case (eregi('blackberry',$user_agent)); // we find blackberry in the user agent
		$mobile_browser = $blackberry; // mobile browser is either true or false depending on the setting of blackberry when calling the function
		$status = 'Blackberry';
		if(substr($blackberry,0,4)=='http'){ // does the value of blackberry resemble a rul
		  $mobileredirect = $blackberry; // set the mobile redirect url to the url value stored in the blackberry value
		} // ends the if for blackberry being a url 
		break; // break out and skip the rest if we've had a match on blackberry
		case (preg_match('/(pre\/|palm os|palm|hiptop|avantgo|fennec|plucker|xiino|blazer|elaine)/i',$user_agent)); // we find palm os in the user agent - the i at the end makes it case insensitive
		$mobile_browser = $palm; // mobile browser is either true or false depending on the setting of palm when calling the function
		$status = 'Palm';
		if(substr($palm,0,4)=='http'){ // does the value of palm resemble a rul
		  $mobileredirect = $palm; // set the mobile redirect url to the url value stored in the palm value
		} // ends the if for palm being a url 
		break; // break out and skip the rest if we've had a match on palm os
		case (preg_match('/(iris|3g_t|windows ce|opera mobi|windows ce; smartphone;|windows ce; iemobile)/i',$user_agent)); // we find windows mobile in the user agent - the i at the end makes it case insensitive
		$mobile_browser = $windows; // mobile browser is either true or false depending on the setting of windows when calling the function
		$status = 'Windows Smartphone';
		if(substr($windows,0,4)=='http'){ // does the value of windows resemble a rul
		  $mobileredirect = $windows; // set the mobile redirect url to the url value stored in the windows value
		} // ends the if for windows being a url 
		break; // break out and skip the rest if we've had a match on windows
		case (preg_match('/(mini 9.5|vx1000|lge |m800|e860|u940|ux840|compal|wireless| mobi|ahong|lg380|lgku|lgu900|lg210|lg47|lg920|lg840|lg370|sam-r|mg50|s55|g83|t66|vx400|mk99|d615|d763|el370|sl900|mp500|samu3|samu4|vx10|xda_|samu5|samu6|samu7|samu9|a615|b832|m881|s920|n210|s700|c-810|_h797|mob-x|sk16d|848b|mowser|s580|r800|471x|v120|rim8|c500foma:|160x|x160|480x|x640|t503|w839|i250|sprint|w398samr810|m5252|c7100|mt126|x225|s5330|s820|htil-g1|fly v71|s302|-x113|novarra|k610i|-three|8325rc|8352rc|sanyo|vx54|c888|nx250|n120|mtk |c5588|s710|t880|c5005|i;458x|p404i|s210|c5100|teleca|s940|c500|s590|foma|samsu|vx8|vx9|a1000|_mms|myx|a700|gu1100|bc831|e300|ems100|me701|me702m-three|sd588|s800|8325rc|ac831|mw200|brew |d88|htc\/|htc_touch|355x|m50|km100|d736|p-9521|telco|sl74|ktouch|m4u\/|me702|8325rc|kddi|phone|lg |sonyericsson|samsung|240x|x320vx10|nokia|sony cmd|motorola|up.browser|up.link|mmp|symbian|smartphone|midp|wap|vodafone|o2|pocket|kindle|mobile|psp|treo)/i',$user_agent)); // check if any of the values listed create a match on the user agent - these are some of the most common terms used in agents to identify them as being mobile devices - the i at the end makes it case insensitive
		$mobile_browser = true; // set mobile browser to true
		$status = 'Mobile matched on piped preg_match';
		break; // break out and skip the rest if we've preg_match on the user agent returned true 
		case ((strpos($accept,'text/vnd.wap.wml')>0)||(strpos($accept,'application/vnd.wap.xhtml+xml')>0)); // is the device showing signs of support for text/vnd.wap.wml or application/vnd.wap.xhtml+xml
		$mobile_browser = true; // set mobile browser to true
		$status = 'Mobile matched on content accept header';
		break; // break out and skip the rest if we've had a match on the content accept headers
		case (isset($_SERVER['HTTP_X_WAP_PROFILE'])||isset($_SERVER['HTTP_PROFILE'])); // is the device giving us a HTTP_X_WAP_PROFILE or HTTP_PROFILE header - only mobile devices would do this
		$mobile_browser = true; // set mobile browser to true
		$status = 'Mobile matched on profile headers being set';
		break; // break out and skip the final step if we've had a return true on the mobile specfic headers
		case (in_array(strtolower(substr($user_agent,0,4)),array('1207'=>'1207','3gso'=>'3gso','4thp'=>'4thp','501i'=>'501i','502i'=>'502i','503i'=>'503i','504i'=>'504i','505i'=>'505i','506i'=>'506i','6310'=>'6310','6590'=>'6590','770s'=>'770s','802s'=>'802s','a wa'=>'a wa','acer'=>'acer','acs-'=>'acs-','airn'=>'airn','alav'=>'alav','asus'=>'asus','attw'=>'attw','au-m'=>'au-m','aur '=>'aur ','aus '=>'aus ','abac'=>'abac','acoo'=>'acoo','aiko'=>'aiko','alco'=>'alco','alca'=>'alca','amoi'=>'amoi','anex'=>'anex','anny'=>'anny','anyw'=>'anyw','aptu'=>'aptu','arch'=>'arch','argo'=>'argo','bell'=>'bell','bird'=>'bird','bw-n'=>'bw-n','bw-u'=>'bw-u','beck'=>'beck','benq'=>'benq','bilb'=>'bilb','blac'=>'blac','c55/'=>'c55/','cdm-'=>'cdm-','chtm'=>'chtm','capi'=>'capi','cond'=>'cond','craw'=>'craw','dall'=>'dall','dbte'=>'dbte','dc-s'=>'dc-s','dica'=>'dica','ds-d'=>'ds-d','ds12'=>'ds12','dait'=>'dait','devi'=>'devi','dmob'=>'dmob','doco'=>'doco','dopo'=>'dopo','el49'=>'el49','erk0'=>'erk0','esl8'=>'esl8','ez40'=>'ez40','ez60'=>'ez60','ez70'=>'ez70','ezos'=>'ezos','ezze'=>'ezze','elai'=>'elai','emul'=>'emul','eric'=>'eric','ezwa'=>'ezwa','fake'=>'fake','fly-'=>'fly-','fly_'=>'fly_','g-mo'=>'g-mo','g1 u'=>'g1 u','g560'=>'g560','gf-5'=>'gf-5','grun'=>'grun','gene'=>'gene','go.w'=>'go.w','good'=>'good','grad'=>'grad','hcit'=>'hcit','hd-m'=>'hd-m','hd-p'=>'hd-p','hd-t'=>'hd-t','hei-'=>'hei-','hp i'=>'hp i','hpip'=>'hpip','hs-c'=>'hs-c','htc '=>'htc ','htc-'=>'htc-','htca'=>'htca','htcg'=>'htcg','htcp'=>'htcp','htcs'=>'htcs','htct'=>'htct','htc_'=>'htc_','haie'=>'haie','hita'=>'hita','huaw'=>'huaw','hutc'=>'hutc','i-20'=>'i-20','i-go'=>'i-go','i-ma'=>'i-ma','i230'=>'i230','iac'=>'iac','iac-'=>'iac-','iac/'=>'iac/','ig01'=>'ig01','im1k'=>'im1k','inno'=>'inno','iris'=>'iris','jata'=>'jata','java'=>'java','kddi'=>'kddi','kgt'=>'kgt','kgt/'=>'kgt/','kpt '=>'kpt ','kwc-'=>'kwc-','klon'=>'klon','lexi'=>'lexi','lg g'=>'lg g','lg-a'=>'lg-a','lg-b'=>'lg-b','lg-c'=>'lg-c','lg-d'=>'lg-d','lg-f'=>'lg-f','lg-g'=>'lg-g','lg-k'=>'lg-k','lg-l'=>'lg-l','lg-m'=>'lg-m','lg-o'=>'lg-o','lg-p'=>'lg-p','lg-s'=>'lg-s','lg-t'=>'lg-t','lg-u'=>'lg-u','lg-w'=>'lg-w','lg/k'=>'lg/k','lg/l'=>'lg/l','lg/u'=>'lg/u','lg50'=>'lg50','lg54'=>'lg54','lge-'=>'lge-','lge/'=>'lge/','lynx'=>'lynx','leno'=>'leno','m1-w'=>'m1-w','m3ga'=>'m3ga','m50/'=>'m50/','maui'=>'maui','mc01'=>'mc01','mc21'=>'mc21','mcca'=>'mcca','medi'=>'medi','meri'=>'meri','mio8'=>'mio8','mioa'=>'mioa','mo01'=>'mo01','mo02'=>'mo02','mode'=>'mode','modo'=>'modo','mot '=>'mot ','mot-'=>'mot-','mt50'=>'mt50','mtp1'=>'mtp1','mtv '=>'mtv ','mate'=>'mate','maxo'=>'maxo','merc'=>'merc','mits'=>'mits','mobi'=>'mobi','motv'=>'motv','mozz'=>'mozz','n100'=>'n100','n101'=>'n101','n102'=>'n102','n202'=>'n202','n203'=>'n203','n300'=>'n300','n302'=>'n302','n500'=>'n500','n502'=>'n502','n505'=>'n505','n700'=>'n700','n701'=>'n701','n710'=>'n710','nec-'=>'nec-','nem-'=>'nem-','newg'=>'newg','neon'=>'neon','netf'=>'netf','noki'=>'noki','nzph'=>'nzph','o2 x'=>'o2 x','o2-x'=>'o2-x','opwv'=>'opwv','owg1'=>'owg1','opti'=>'opti','oran'=>'oran','p800'=>'p800','pand'=>'pand','pg-1'=>'pg-1','pg-2'=>'pg-2','pg-3'=>'pg-3','pg-6'=>'pg-6','pg-8'=>'pg-8','pg-c'=>'pg-c','pg13'=>'pg13','phil'=>'phil','pn-2'=>'pn-2','pt-g'=>'pt-g','palm'=>'palm','pana'=>'pana','pire'=>'pire','pock'=>'pock','pose'=>'pose','psio'=>'psio','qa-a'=>'qa-a','qc-2'=>'qc-2','qc-3'=>'qc-3','qc-5'=>'qc-5','qc-7'=>'qc-7','qc07'=>'qc07','qc12'=>'qc12','qc21'=>'qc21','qc32'=>'qc32','qc60'=>'qc60','qci-'=>'qci-','qwap'=>'qwap','qtek'=>'qtek','r380'=>'r380','r600'=>'r600','raks'=>'raks','rim9'=>'rim9','rove'=>'rove','s55/'=>'s55/','sage'=>'sage','sams'=>'sams','sc01'=>'sc01','sch-'=>'sch-','scp-'=>'scp-','sdk/'=>'sdk/','se47'=>'se47','sec-'=>'sec-','sec0'=>'sec0','sec1'=>'sec1','semc'=>'semc','sgh-'=>'sgh-','shar'=>'shar','sie-'=>'sie-','sk-0'=>'sk-0','sl45'=>'sl45','slid'=>'slid','smb3'=>'smb3','smt5'=>'smt5','sp01'=>'sp01','sph-'=>'sph-','spv '=>'spv ','spv-'=>'spv-','sy01'=>'sy01','samm'=>'samm','sany'=>'sany','sava'=>'sava','scoo'=>'scoo','send'=>'send','siem'=>'siem','smar'=>'smar','smit'=>'smit','soft'=>'soft','sony'=>'sony','t-mo'=>'t-mo','t218'=>'t218','t250'=>'t250','t600'=>'t600','t610'=>'t610','t618'=>'t618','tcl-'=>'tcl-','tdg-'=>'tdg-','telm'=>'telm','tim-'=>'tim-','ts70'=>'ts70','tsm-'=>'tsm-','tsm3'=>'tsm3','tsm5'=>'tsm5','tx-9'=>'tx-9','tagt'=>'tagt','talk'=>'talk','teli'=>'teli','topl'=>'topl','hiba'=>'hiba','up.b'=>'up.b','upg1'=>'upg1','utst'=>'utst','v400'=>'v400','v750'=>'v750','veri'=>'veri','vk-v'=>'vk-v','vk40'=>'vk40','vk50'=>'vk50','vk52'=>'vk52','vk53'=>'vk53','vm40'=>'vm40','vx98'=>'vx98','virg'=>'virg','vite'=>'vite','voda'=>'voda','vulc'=>'vulc','w3c '=>'w3c ','w3c-'=>'w3c-','wapj'=>'wapj','wapp'=>'wapp','wapu'=>'wapu','wapm'=>'wapm','wig '=>'wig ','wapi'=>'wapi','wapr'=>'wapr','wapv'=>'wapv','wapy'=>'wapy','wapa'=>'wapa','waps'=>'waps','wapt'=>'wapt','winc'=>'winc','winw'=>'winw','wonu'=>'wonu','x700'=>'x700','xda2'=>'xda2','xdag'=>'xdag','yas-'=>'yas-','your'=>'your','zte-'=>'zte-','zeto'=>'zeto','acs-'=>'acs-','alav'=>'alav','alca'=>'alca','amoi'=>'amoi','aste'=>'aste','audi'=>'audi','avan'=>'avan','benq'=>'benq','bird'=>'bird','blac'=>'blac','blaz'=>'blaz','brew'=>'brew','brvw'=>'brvw','bumb'=>'bumb','ccwa'=>'ccwa','cell'=>'cell','cldc'=>'cldc','cmd-'=>'cmd-','dang'=>'dang','doco'=>'doco','eml2'=>'eml2','eric'=>'eric','fetc'=>'fetc','hipt'=>'hipt','http'=>'http','ibro'=>'ibro','idea'=>'idea','ikom'=>'ikom','inno'=>'inno','ipaq'=>'ipaq','jbro'=>'jbro','jemu'=>'jemu','java'=>'java','jigs'=>'jigs','kddi'=>'kddi','keji'=>'keji','kyoc'=>'kyoc','kyok'=>'kyok','leno'=>'leno','lg-c'=>'lg-c','lg-d'=>'lg-d','lg-g'=>'lg-g','lge-'=>'lge-','libw'=>'libw','m-cr'=>'m-cr','maui'=>'maui','maxo'=>'maxo','midp'=>'midp','mits'=>'mits','mmef'=>'mmef','mobi'=>'mobi','mot-'=>'mot-','moto'=>'moto','mwbp'=>'mwbp','mywa'=>'mywa','nec-'=>'nec-','newt'=>'newt','nok6'=>'nok6','noki'=>'noki','o2im'=>'o2im','opwv'=>'opwv','palm'=>'palm','pana'=>'pana','pant'=>'pant','pdxg'=>'pdxg','phil'=>'phil','play'=>'play','pluc'=>'pluc','port'=>'port','prox'=>'prox','qtek'=>'qtek','qwap'=>'qwap','rozo'=>'rozo','sage'=>'sage','sama'=>'sama','sams'=>'sams','sany'=>'sany','sch-'=>'sch-','sec-'=>'sec-','send'=>'send','seri'=>'seri','sgh-'=>'sgh-','shar'=>'shar','sie-'=>'sie-','siem'=>'siem','smal'=>'smal','smar'=>'smar','sony'=>'sony','sph-'=>'sph-','symb'=>'symb','t-mo'=>'t-mo','teli'=>'teli','tim-'=>'tim-','tosh'=>'tosh','treo'=>'treo','tsm-'=>'tsm-','upg1'=>'upg1','upsi'=>'upsi','vk-v'=>'vk-v','voda'=>'voda','vx52'=>'vx52','vx53'=>'vx53','vx60'=>'vx60','vx61'=>'vx61','vx70'=>'vx70','vx80'=>'vx80','vx81'=>'vx81','vx83'=>'vx83','vx85'=>'vx85','wap-'=>'wap-','wapa'=>'wapa','wapi'=>'wapi','wapp'=>'wapp','wapr'=>'wapr','webc'=>'webc','whit'=>'whit','winw'=>'winw','wmlb'=>'wmlb','xda-'=>'xda-',))); // check against a list of trimmed user agents to see if we find a match
		$mobile_browser = true; // set mobile browser to true
		$status = 'Mobile matched on in_array';
		break; // break even though it's the last statement in the switch so there's nothing to break away from but it seems better to include it than exclude it
		default;
		$mobile_browser = false; // set mobile browser to false
		$status = 'Desktop / full capability browser';
		break; // break even though it's the last statement in the switch so there's nothing to break away from but it seems better to include it than exclude it
	  } // ends the switch 
	  // tell adaptation services (transcoders and proxies) to not alter the content based on user agent as it's already being managed by this script
	//  header('Cache-Control: no-transform'); // http://mobiforge.com/developing/story/setting-http-headers-advise-transcoding-proxies
	//  header('Vary: User-Agent, Accept'); // http://mobiforge.com/developing/story/setting-http-headers-advise-transcoding-proxies
	  // if redirect (either the value of the mobile or desktop redirect depending on the value of $mobile_browser) is true redirect else we return the status of $mobile_browser
	  if($redirect = ($mobile_browser==true) ? $mobileredirect : $desktopredirect){
		header('Location: '.$redirect); // redirect to the right url for this device
		exit;
	  }else{ 
		return $mobile_browser; // will return either true or false 
  }	
	}
}
?>