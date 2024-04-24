<?php
	session_start();
		$data = json_decode(curl("https://graph.facebook.com/".$_SESSION['id']."/feed?field=id,message,like&limit=10&access_token=".$SESSION['token']), true);

		for ($i=0; $i < count($data['data']); $i++) { 
			//echo $data['data'][$i]['id'].$data['data'][$i]['message'].'<br>';
			echo '<li class="list-group-item" style="display: list-item;">';
			echo '<div class="profile-avatar tiny pull-left" style="background-image: url(https://graph.facebook.com/'.$_SESSION['id'].'/picture)"></div>';
			echo '<div class="pull-right">';
			echo '<button class="btn btn-xs btn-info" onclick=\'fill("'.$data['data'][$i]['id'].'")\'>Tăng lượt thích</button></div><h5 class="list-group-item-heading">';
			echo '<a href="https://facebook.com/profile.php?id='.$_POST['id'].'" target="_blank">Huy Nguyen</a></h5><p class="message-content">'.$data['data'][$i]['message'].'  <huynguyen><i class="fa fa-thumbs-up"></i> '.$data['data'][$i]['likes']['count'].'</huynguyen></p></li>';
			//echo $data['data'][$i]['like']['count']."<br>";
		}

		//print_r($data['data'][0]['likes']['count']);
	function curl($url) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept-Charset: utf-8',
        'Accept-Language: en-us,en;q=0.7,bn-bd;q=0.3',
        'Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3");
        $result = curl_exec($ch) or die(curl_error($ch));
    	return $result;
	}
?>