<?php
require 'PHPMailer-master/PHPMailerAutoload.php';

$datax = (array)json_decode($_POST['datax']);

$mail = new PHPMailer;

//$mail->SMTPDebug = 1;                               // Enable verbose debug output
$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'mail.a2zcinemaworld.com';  // Specify main and backup SMTP servers
//$mail->SMTPAuth = true;                               // Enable SMTP authentication
//$mail->Username = 'contact@a2zcinemaworld.com'; 
//$mail->Password = 'A2zcinema@sunder'; 
$mail->Username = 'a2zcinemaworld@gmail.com';                // SMTP username
$mail->Password = 'sunder@123';                          // SMTP password
$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;                                    // TCP port to connect to

$mail->setFrom('contact@a2zcinemaworld.com', 'a2zcinemaworld');

$mail->addAddress('prashantravi77@gmail.com', $datax["email"]);       // Add a recipient
//$mail->addAddress($datax["email"],'deepakshnkr482@gmail.com');  
//$mail->addAddress('ellen@example.com');               // Name is optional
//$mail->addReplyTo('prashantravi77@gmail.com', 'Designurhomes');
//$mail->addCC('prashantravi77@gmail');
//$mail->addBCC('bcc@example.com');

//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
$mail->isHTML(false);                                  // Set email format to HTML

$mail->Subject = $datax['subject'];
//$mail->Body    = $datax['message'];

$mail->Body    ="name -: ". $datax["name"]."\n mail from -: ". $datax["email"]." \n subject -:  ".  $datax["subject"]."  \n message -: "  .  $datax['message'];
//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
}
?>