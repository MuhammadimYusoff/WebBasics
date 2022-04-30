<?php 
$name = $_POST['name'];
$visitor_email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];

$email_from = 'ultimateskyxer@gmail.com';
$email_subject = 'New Form Submssion';
$email_body = 'User Name: $name.\n'.
'User Email: $visitor_email.\n'.
'Subject: $subject.\n'.
'User Message: $message.\n';

$to = 'muhammadimyusoff@gmail.com';
$headers = "From: $email_from \r\n";
$headers .= "Reply-To: $visitor_email \r\n";

// Sending all content to $to email
mail($to, $email_subject, $email_body, $headers);

// Redirect the user back to contact.html after submitting the form
header("Location: contact.html");
?>