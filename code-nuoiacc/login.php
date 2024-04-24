<?php
$email = 'dinh01x4@gmail.com';
$pass = 'Dhkn17201516';
$cnf = array(
	'email' => $user,
	'pass' =>  $pass,
	'login'=> 'Login'
);
$random = md5(rand(00000000,99999999)).'.txt';
$login = cURL('https://m.facebook.com/login.php', $random, $cnf);
print $login;
function cURL($url, $cookie = false, $PostFields = false)
{
	$c = curl_init();
	$opts = array(
		CURLOPT_URL => $url,
		CURLOPT_RETURNTRANSFER => true,
		CURLOPT_SSL_VERIFYPEER => false,
		CURLOPT_FRESH_CONNECT => true,
		CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36',//'Opera/9.80 (Series 60; Opera Mini/6.5.27309/34.1445; U; en) Presto/2.8.119 Version/11.10',
		CURLOPT_FOLLOWLOCATION => true,
		CURLOPT_POST => true,
		CURLOPT_POSTFIELDS => $PostFields,
		CURLOPT_COOKIE => true,
		CURLOPT_COOKIEJAR => $cookie,
		CURLOPT_COOKIEFILE => $cookie
	);
	curl_setopt_array($c, $opts);
	$data = curl_exec($c);
	curl_close($c);
	return $data;
}
unlink($random);
?>
