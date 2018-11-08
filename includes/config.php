<?php
$host = "localhost";
$user = "root";
$password = "root"; //leave this blank for windows users
$db = "db_avapp";

$conn = mysqli_connect($host, $user, $password, $db);

if (!$conn) {
    echo "something broke ... connection isn't working";
    exit;
}

// echo "connected!";

// fill the array with the result set and send it to the browser
while($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
}

//get one item from the database
if (isset($_GET["testInfo"])){
    $info = $_GET["testInfo"];

    $myQuery = "SELECT * FROM tbl_test WHERE test = '$info'";
    $result = mysqli_query($conn, $myQuery);
    $rows = array();

    while($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
}

echo json_encode($rows);
?>