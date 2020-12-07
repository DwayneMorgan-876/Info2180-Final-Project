<?php
session_start();

if (isset($_SESSION['id'])) {
    if ($_SESSION['email'] === 'admin@project2.com') {
        header("Location:newUser.html");
    } else {
        header("Location:./issuesAll.html");
    }
} else {
    header("Location:./login.html");
}
