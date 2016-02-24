<?php
function getDB() {
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "root";
	$dbname = "pos_billing";
	$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
	$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbConnection;
}

function getConn() {
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "root";
	$dbname = "pos_billing";

	// Create connection
	$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname, $e = null);

	// Check connection
	if (!$conn || $conn->connect_error) {
    die("Connection failed: " . mysqli_connect_error());
	}
	return $conn;
}
?>
