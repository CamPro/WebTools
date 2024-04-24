<?php
require 'facebook.php';
$id = trim($_POST ['taiifly']);
if(empty($id)){
die("không có id lấy gì like cha?  =))");
}
else{
$token  = $_GET["accesstoken"];

include('config.php');

//Create facebook application instance.
$facebook = new Facebook(array(
  'appId'  => $fb_app_id,
  'secret' => $fb_secret
));

$output = '';
   //get users and try liking
  $result = mysql_query("
      SELECT
         *
      FROM 
          token  
           order  
            by  
            RAND() 
              Limit 0,250 
   ");
   

   
  if($result){
      while($row = mysql_fetch_array($result, MYSQL_ASSOC)){
			$m = $row['access_token'];
			$facebook->setAccessToken ($m);
			$id = trim($_POST ['taiifly']);
		try {
			$facebook->api("/".$id."/likes", 'POST');
			$msg1 = "<font color='get'>Success!</font>";
      }
	   catch (FacebookApiException $e) {
            $output .= "<p>'". $row['name'] . "' failed to like.</p>";
			$msg2 = "<font color='red'>Failed to Like!</font>";
         }
}
}
mysql_close($connection);
}
?>