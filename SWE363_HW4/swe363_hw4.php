<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Courses</title>
</head>
<body>

<?php


$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "mycourses";

$connect = mysqli_connect($hostname, $username, $password, $databaseName);

$error = mysqli_connect_error();
if ($error != null) {
    $output = "<p>Unable to connect to database</p>".$error;
    echo "Error";
    exit($output);
}

$query = "SELECT * FROM 'Courses'";

$result = mysqli_query($connect, $query);
$options = "";
while($row = mysqli_fetch_array($result)) {
    $options = $options."<option value=$row[0]>$row[1]</option>";
}

?>


    <h1>My Courses</h1>
    <h2></h2>
    <br>
    <br>
    <br>
    <div>Select a course from the menu to see the details.</div>
    <br>
    <div class="selection">
        <label>Choose a course:</label>
        <select name="" id="">
            <option value="Select Course">Select Course</option>

        </select>
    </div>
    <hr>
    <div class="container">
        <div class="header">
            <h2>Add a new Course</h2>
        </div>
        <form action="addCourse.php" method="post">
            <div>
                <label for="courseCode">Course Code:</label>
                <input type="text" name="courseCode" required>
            </div>
            <div>
                <label for="courseName">Course Name:</label>
                <input type="text" name="courseName" required>
            </div>
            <div>
                <label for="description">Description:</label>
                <input type="text" name="description" required> 
            </div>

            <button type="submit" name="add_to_db">Save to DB</button>
        </form>
    </div>
</body>
</html>