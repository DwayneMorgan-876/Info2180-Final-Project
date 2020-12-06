<?php

require_once 'password.php';
session_start();

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $username, $password);
        $stmt = $pdo->query("SELECT * FROM Issues");
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC); 
        echo $rows;
       
    } catch (Exception $e) {
        alert($e->getMessage());
    }

