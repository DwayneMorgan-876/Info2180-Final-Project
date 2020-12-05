<?php

$host = 'localhost';
$db = 'schema';
$username = 'root';
$password = 'password123';

function validatePassword($pword) {
    if (strlen($pword) > 8) {
        if(preg_match('/[0-9+]/', $pword)) {
            return $pword;
        } else {
            echo "Your password contains invalid characaters\n";
        }
    } else {
        echo "Your password is too short\n";
        var_dump($pword);
    }
}