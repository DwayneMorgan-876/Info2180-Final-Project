<?php

$host = 'localhost';
$db = 'schema1';
$username = 'admin@project2.com';
$password = 'password123';

function validatePassword($pword) {
    if (strlen($pword) > 8) {
        if(preg_match('/[0-9+]/', $pword)) {
            return $pword;
        } else {
            echo "Invalid password criteria\n";
        }
    } else {
        echo "Invalid password length\n";
        var_dump($pword);
    }
}

?>
