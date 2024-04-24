<?php

if(!$_SESSION['id']){ print '
???
                        


';
print '<center>'.$prev.$next.'</center>';
exit;
}
viewChat();
if($_POST[message]){
$message=$_POST[message];
$xxx=array('cc','cặc','ngu','loz','con mẹ mày','sủa','đòi','web như cc','địt','mẹ','lồn','cac','lon','cái loz','cái lồn','con cặc','địt mẹ mày','con me may',);
foreach($xxx as $xn=> $mades){
if(ereg($mades,strtolower($message))){
$madesu=true;
}
}

if($madesu){
print '<script>alert("Không được nói tục bạn eii");</script>';
}else{
saveChat($_SESSION['id'],$_SESSION['name'],$_POST[message]); 
print '<script type="text/javascript">window.location.href = "'.$_SERVER[PHP_SELF].'"</script>';
}
}


function saveChat($id,$name,$message){
$set_jam=7; 
$tang =gmdate('d/m/Y',time()+($set_jam*3600));
$jame =gmdate('H:i',time()+($set_jam*3600));
$tme=gmdate('Y',time()+($set_jam*3600));
$hrs=gmdate('z',time()+($set_jam*3600));
$jum=(($tme-1)*365)
+(int)(($tme-1)/4)+$hrs;
$di=7*(int)($jum/7);
$dino=$jum-$di;
$pas=5*(int)($jum/5);
$pasar=$jum-$pas;
$dino=str_replace('6','Sabtu',$dino);
$dino=str_replace('0','Minggu',$dino);
$dino=str_replace('1','Senin',$dino);
$dino=str_replace('2','Selasa',$dino);
$dino=str_replace('3','Rabu',$dino);
$dino=str_replace('4','Kamis',$dino);
$dino=str_replace('5','Jum`at',$dino);
$pasar=str_replace('4','Legi',$pasar);
$pasar=str_replace('0','Pahing',$pasar);
$pasar=str_replace('1','Pon',$pasar);
$pasar=str_replace('2','Wage',$pasar);
$pasar=str_replace('3','Kliwon',$pasar);
$date=''.$tang.' - '.$jame.'';
$data[] = array(
'id' => $id,
'name' => $name,
'message' => $message,
'date' => $date,
);

if(file_exists('tmpChat')){
$view = json_decode(file_get_contents('tmpChat'),true);}else{ $view = array();}
$x=json_encode(array_merge($data,$view));
$f = fopen('tmpChat','w');
fwrite($f,$x);
fclose($f);
}

function viewChat(){
if(file_exists('tmpChat')){ $data=json_decode(file_get_contents('tmpChat'),true);}else{$data=array();}
if($_GET[n]){
$a=htmlspecialchars($_GET[n]);
$b=$a+10;
}else{
$a=0;
$b=10;
}
if($a < count($data) -10){
$next='<li class="page-number">
<a href="?n='.$b.'"> <b>Cũ</b> <i class="fa fa-chevron-right" aria-hidden="true"></i></a></li>';
}else{
$next='
<li class="page-number disabled">
<a>
<i class="fa fa-chevron-right" aria-hidden="true"></i> <b>Cũ</b></a></li>';
}
if($a > 1){
$prev='<li class="page-number">
<a href="?n='.($a-10).'">
<i class="fa fa-chevron-left" aria-hidden="true"></i> <b>Mới</b></a></li>';
}else{
$prev='
<li class="page-number disabled">
<a>
<i class="fa fa-chevron-left" aria-hidden="true"></i> <b>Mới</b></a></li>';
}
if(file_exists('/tmp/news')){ $news=file_get_contents('/tmp/news'); }else{ $news= ' ';}
print'


';
for($i=$a;$i<$b;$i++){
if($data[$i]){   
$data[$i][name] = str_replace('Nam Lê Ngọc','<font color="red">๖ۣۜAdministrator</font>', $data[$i][name]);
$data[$i][name] = str_replace('Nguyễn Hữu Hiếu','<font color="red">๖ۣۜNguyễn Hữu Hiếu</font>', $data[$i][name]);
print '

<img class="img-circle" width="35" height="35" src="https://graph.facebook.com/'.$data[$i][id].'/picture?type=large" alt="Coday">
<b><a href="http://facebook.com/'.$data[$i][id].'" target="_blank">'.$data[$i][name].':</a></b>
<span class="pull-right">
                                                <i class="fa fa-clock-o fa-fw"></i> '.$data[$i][date].'
</span>
'.nl2br(stripslashes(htmlspecialchars($data[$i][message]))).'
<div class="hr-line-dashed"></div>
';
}
}
print '
<span class="pull-right">
<ul class="pagination">
'.$prev.$next.'
</ul></span>
';
}

?>

