<?php
function getDB() {
	$dbhost = "mysql.hostinger.in";
	$dbuser = "u868242255_pos";
	$dbpass = "posbilling123";
	$dbname = "u868242255_pos";
	$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
	$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbConnection;
}

function getConn() {
	$dbhost = "mysql.hostinger.in";
	$dbuser = "u868242255_pos";
	$dbpass = "posbilling123";
	$dbname = "u868242255_pos";

	// Create connection
	$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname, $e = null);

	// Check connection
	if (!$conn || $conn->connect_error) {
    die("Connection failed: " . mysqli_connect_error());
	}
	return $conn;
}
?>
