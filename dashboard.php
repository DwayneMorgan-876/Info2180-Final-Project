<?php

require_once 'password.php';
session_start();

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $username, $password);
        $stmt = $pdo->query("SELECT * FROM Issues");
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC); 
        echo $rows;
<<<<<<< HEAD
       
=======
        // include 'view.dashboard.php';
>>>>>>> f94099df7955fec1b31bdb7af0aa7a683870d962
    } catch (Exception $e) {
        alert($e->getMessage());
    }

