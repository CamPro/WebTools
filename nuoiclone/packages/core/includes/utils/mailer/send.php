<meta charset="utf-8">
<pre>
<?php
function send($subject,$body,$to)
{
	include "class.phpmailer.php"; 
	include "class.smtp.php"; 
	include "phpmailer.lang-vn.php";
	
	$mail = new PHPMailer();
	$mail->CharSet = "UTF-8";
	$mail->IsSMTP(); // set mailer to use SMTP
	$mail->Host = "smtp.gmail.com"; // specify main and backup server
	$mail->Port = 465; // set the port to use
	$mail->SMTPAuth = true; // turn on SMTP authentication
	$mail->SMTPSecure = 'ssl';
	$mail->SetLanguage("vn", "");
	$mail->Username = "sendmail.bevui@gmail.com"; // your SMTP username or your gmail username
	$mail->Password = "123456789!@#"; // your SMTP password or your gmail password
	$from = $to; // Reply to this email
	$name=""; // Recipient's name
	$mail->From = $from;
	$mail->FromName = "Bevui.net"; // Name to indicate where the email came from when the recepient received
	$mail->AddAddress($to,$name);
	$mail->AddReplyTo($from,"");
	$mail->WordWrap = 50; // set word wrap
	$mail->IsHTML(true); // send as HTML
	$mail->Subject = $subject;
	$mail->Body = $body; //HTML Body
	$mail->AltBody = ""; //Text Body
	//$mail->SMTPDebug = 1;
	$mail->Send();
}
?>
<pre>