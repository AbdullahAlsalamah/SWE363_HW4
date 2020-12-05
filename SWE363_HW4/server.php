<?php


$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "mycourses";

$connect = mysqli_connect($hostname, $username, $password, $databaseName);
$query = "SELECT * FROM 'Courses'";

$result = mysqli_query($connect, $query);
$options = "";
while($row = mysqli_fetch_array($result)) {
    $options = $options."<option value=$row[0]>$row[1]</option>";
}

?>