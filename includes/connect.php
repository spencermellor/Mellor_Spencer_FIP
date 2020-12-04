<?php 
    // Database name is below
   $db_dsn = array( 
        'host' => 'localhost',
        'dbname' => 'db_FIP',
        'charset' => 'utf8'
    );

    $dsn = 'mysql:'.http_build_query($db_dsn, '', ';');


    // MySQL password and username
    $db_user = 'root';
    $db_pass = 'root';

    try{
        $pdo = new PDO($dsn, $db_user, $db_pass);

    } catch (PDOException $exception){
        echo 'Connection Error:'.$exception->getMessage();
        exit();
    }