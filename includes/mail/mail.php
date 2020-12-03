<?php

header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');

$results = [];

$visitor_name = '';
$visitor_email = '';
$visitor_message = '';

if (isset($_POST['firstname']) && $_POST['firstname'] !='') {
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'First Name is not set';
    echo json_encode($results);
    exit;
}

if (isset($_POST['lastname']) && $_POST['lastname'] !='') {
    $visitor_name .= ' '.filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'Last Name is not set';
    echo json_encode($results);
    exit;
}

if (isset($_POST['email']) && $_POST['email'] !='') {
    $visitor_email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
} else {
    $results['message'] = 'Email is not set';
    echo json_encode($results);
    exit;
}

if (isset($_POST['message']) && $_POST['message'] !='') {
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
} else {
    $results['message'] = 'Message input is not set';
    echo json_encode($results);
    exit;
}

$email_headers = array(
    'From'=>$visitor_email
);


$email_subject = "Inquiry from Porfolio Website";
$email_recipient = "spencercmellor@gmail.com";
$email_message = sprintf('Name: %s, Email %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

$email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);

if ($email_result) {
    $results['message'] = 'Your email was sent';
} else {
    $results['message'] = 'Error, it broken, did not send';
}

echo json_encode($results);
