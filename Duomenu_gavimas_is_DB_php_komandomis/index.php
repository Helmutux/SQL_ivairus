<?php
    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASSWORD', 'mysql');
    define('DB_NAME', 'mysite');
    
    $mysqli = @new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysqli->connect_errno) exit('Ошибка соединения с БД');
    $mysqli->set_charset('utf8_general_ci');

    // echo ('Pateikti visus lenteles duomenis<br>');
    // $result_set = $mysqli->query('SELECT * FROM `secret_users`');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti is lenteles irasus (vardus, emailus), kur vardai prasideda raide D<br>');
    // $result_set = $mysqli->query('SELECT `name`, `email` FROM `secret_users` WHERE  `name` LIKE "D%" ');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti is lenteles irasus (vardus, emailus), kurie sarase yra 4, 8, 8, 12, 16<br>');
    // $result_set = $mysqli->query('SELECT `name`, `email` FROM `secret_users` WHERE  `id` IN (4,8,12,16) ');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);


    // echo ('Pateikti is lenteles irasus (vardus, emailus), kurie sarase yra 3, 6, 9, 12, 15 ir varde yra raide A<br>');
    // $result_set = $mysqli->query('SELECT `name`, `email` FROM `secret_users` WHERE  `id` IN (3,6,9,12,15) AND `name`LIKE "%A%" ');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti is lenteles irasus (vardus, emailus), kuriu varda prasideda raide D arba B, isrusiuokite irasus pagal varda<br>');
    // $result_set = $mysqli->query('SELECT `id`, `name`, `email` FROM `secret_users` WHERE  `name` LIKE "D%" OR `name` LIKE "B%" ORDER BY `name`' );
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);


    // echo ('Pateikti is lenteles irasus (id, vardus), kuriu varde nera A raides ir isrusiuoti juos pagal id mazejancia tvarak<br>');
    // $result_set = $mysqli->query('SELECT `id`, `name` FROM `secret_users` WHERE  `name` NOT LIKE "%A%"  ORDER BY `id` DESC' );
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti is lenteles irasus (id, vardus, email), kuriu varde nera D raides ir isrusiuoti juos pagal email mazejancia tvarak<br>');
    // $result_set = $mysqli->query('SELECT `id`, `name`, `email` FROM `secret_users` WHERE  `name` NOT LIKE "%D%"  ORDER BY `name`, `email` ASC' );
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti sarasa su visais duomenimis auoriu ,kuriu darbai yra lenteleej secret_articles (zymi zyma user_id)(darome lenteleiu apjungima)<br>');
    // $result_set = $mysqli->query('SELECT *  FROM `secret_users` INNER JOIN `secret_articles` ON `secret_users`.`id` = `secret_articles`.`user_id`');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti sarasa su visais duomenimis vidu user`iu,(iskaitant tuos, kurie neturi darbu secret_articles lenteleje) (zymi zyma user_id)(darome lenteleiu apjungima)<br>');
    // $result_set = $mysqli->query('SELECT *, `secret_users`.`id` as `u_id`, `secret_users`.`name` as `klycka`  FROM `secret_users` INNER JOIN `secret_articles` ON `secret_users`.`id` = `secret_articles`.`user_id`');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // echo ('Pateikti visu lenteleje esanciu irasu (eiluciu) kieki <br>');
    // $result_set = $mysqli->query('SELECT COUNT(`id`) FROM `secret_users`');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);

    // SVARBU: norint palengvinti norimo gauti elemento tolimesni panaudojima. rasome taip
    // echo ('Pateikti visu lenteleje esanciu irasu (eiluciu) kieki');
    // $result_set = $mysqli->query('SELECT COUNT(`id`) as `count` FROM `secret_users`');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // echo "<br>";
    // echo 'Norimas skaicius yra '.$secret_users[0]['count'];//gauname gryna skaiciu
    
    // echo ('Pateikti visu lenteleje esanciu vartotoju balansu suma, jei balansas didesnis uz 40');
    // $result_set = $mysqli->query('SELECT SUM(`balance`) as `bendras_balansas` FROM `secret_users` WHERE `balance` > "40"');
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }

    // echo "<br>";
    // echo 'Norimas skaicius yra '.$secret_users[0]['bendras_balansas'];//gauname gryna skaiciu

    // echo ('Pateikti 3 lenteleje esanciu irasus kuriu balansas lygus 0 (jei tokiu irasu bus maziau, pateiks maziau) ir isrikiuoti atvirkstine tvarka <br>');
    // $result_set = $mysqli->query('SELECT * FROM `secret_users` WHERE `balance`="0" ORDER BY `name` DESC LIMIT 3' );
    // $secret_users = [];
    // while (($row = $result_set -> fetch_assoc()) != false){
    //     $secret_users[]= $row;
    // }
    // print_r($secret_users);
    
        echo ('Pateikti 3 asitiktinius lenteleje esanciu irasus<br>');
        $result_set = $mysqli->query('SELECT * FROM `secret_users` ORDER BY RAND() LIMIT 3' );
        $secret_users = [];
        while (($row = $result_set -> fetch_assoc()) != false){
            $secret_users[]= $row;
        }
        print_r($secret_users);
       
    
    $mysqli->close();
?>