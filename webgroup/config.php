

<?php
$host = 'localhost';  // Replace with your database host
$dbname = 'risk_assessment';  // Replace with your database name
$user = 'root';  // Replace with your database username
$password = '';  // Replace with your database password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);



} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    exit();
}
