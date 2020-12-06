<?php

$host = 'localhost';
$db = 'schema';
<<<<<<< HEAD
$username = 'admin@project2.com';
$password = 'password123';

// function validatePassword($pword) {
//     if (strlen($pword) > 8) {
//         if(preg_match('/[0-9+]/', $pword)) {
//             return $pword;
//         } else {
//             echo "Invalid password criteria\n";
//         }
//     } else {
//         echo "Invalid password length\n";
//         var_dump($pword);
//     }
// }

?>
=======
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
>>>>>>> ccdc3e1ade8fed16a19c231204e47779c071c640
