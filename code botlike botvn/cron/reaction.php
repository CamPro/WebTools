   <meta charset="utf-8" />
    <title>Bot Cảm Xúc | BotViet.Host</title>
<?php
ob_start('ob_gzhandler');
include'config.php';
$laytoken = mysql_query("SELECT * FROM `reac` ORDER BY RAND() LIMIT 0,50");
while ($getpu = mysql_fetch_array($laytoken)){
$tokenlike= $getpu['access_token'];
$cccc = '1';	
like($me,$cccc,$tokenlike);
}

function _req($url){
   $opts = array(
            19913 => 1,
            10002 => $url,
            10018 => 'botviet.host',
            );
   $ch=curl_init();
   curl_setopt_array($ch,$opts);
   $result = curl_exec($ch);
   curl_close($ch);
   return $result;
  }

function getData($dir,$token,$params){
    $param = array(
        'access_token' => $token,
        );
   if($params){ 
       $arrayParams=array_merge($params,$param);
       }else{
       $arrayParams =$param;
       }
   $url = getUrl('graph',$dir,$arrayParams);
   $result = json_decode(_req($url),true);
   if($result[data]){
       return $result[data];
       }else{
       return $result;
       }
   }

function getUrl($domain,$dir,$uri=null){
   if($uri){
       foreach($uri as $key =>$value){
           $parsing[] = $key . '=' . $value;
           }
       $parse = '?' . implode('&',$parsing);
       }
   return 'https://' . $domain . '.facebook.com/' . $dir . $parse; 
   }

function getLog($x,$y){
if(!is_dir('log')){   mkdir('log');   }

   if(file_exists('log/xx_'.$x)){
       $log=file_get_contents('log/xx_'.$x);
       }else{
       $log=' ';
       }

  if(ereg($y[id],$log)){
       return false;
       }else{
if(strlen($log) > 5000){
   $n = strlen($log) - 5000;
   }else{
  $n= 0;
   }
       saveFile('log/xx_'.$x,substr($log,$n).' '.$y[id]);
       return true;
      }
 }

function saveFile($x,$y){
   $f = fopen($x,'w');
             fwrite($f,$y);
             fclose($f);
   }


function like($me,$c,$token){
$home=getData('me/home',$token,array(
   'fields' => 'id,message,created_time,from,comments,type',
   'limit' => 15,
   )
);
$camxuc= array('LOVE', 'WOW', 'HAHA', 'SAD', 'ANGRY', 'THANKFUL');
$mess=$camxuc[rand(0,count($camxuc)-1)];
foreach($home as $post){
     if($post['id']){ if(getLog($me,$post) && $me!=$post['from']['id']){
          print getData($post['id'].'/reactions',$token,array(
                        'type' => ''.$mess.'',
						'method' => 'post',
						
                         )
                 );
           } }

}
}
?> 