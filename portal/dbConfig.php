<?php
const DB_HOST = "localhost"; // set database host
const DB_USER = "leseding_admin"; // set database user
const DB_PASS = "lesedingadmin123"; // set database password
const DB_NAME = "leseding_kasilimo"; // set database name

//$link = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Couldn't make connection.");
$link = mysqli_connect(DB_HOST,DB_USER,DB_PASS) or die("Couldn't make connection.");
$connection = new mysqli(DB_HOST,DB_USER,DB_PASS); 
if ($connection->connect_error) {
	die ("DB connection failed<br>".$connection->error);
}
if (!$connection->select_db(DB_NAME)) {
	die (DB_NAME." selection failed<br>".$connection->error);
}
$db = mysqli_select_db($link, DB_NAME) or die("Couldn't select database");
?>