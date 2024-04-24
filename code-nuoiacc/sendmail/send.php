<?php
	if($_REQUEST['cmd']=='send_email')
	{	
		extract($_REQUEST);
		return send_email($from,$to,$subject,$content);
	}
	function send_email($from,$to,$subject,$content,$from_user='ungdungnguoiviet@gmail.com',$from_password='hien123456',$from_name="HỆ THỐNG GỬI EMAIL TỰ ĐỘNG UNGDUNGNGUOIVIET")
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
		$mail->Username = $from_user; // your SMTP username or your gmail username
		$mail->Password = $from_password; // your SMTP password or your gmail password
		
		$mail->From = $from;
		$mail->FromName = $from_name; // Name to indicate where the email came from when the recepient received
		$mail->addAddress($to, '');     // Add a recipient
		$mail->addReplyTo($from, '');
		$mail->WordWrap = 50; // set word wrap
		$mail->IsHTML(true); // send as HTML
		$mail->Subject = $subject;
		$mail->Body = $content; //HTML Body
		$mail->AltBody = ""; //Text Body
		//$mail->SMTPDebug = 1;
		
		if($mail->Send())
		{
			echo 1;
		}
		else
		{
			
			echo '';
			//return $mail->ErrorInfo;
		}
	}
?>