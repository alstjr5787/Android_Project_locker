<?php
$servername = "localhost";
$username = "id";      
$password = "pw";    
$database = "table"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['use_uid']) && isset($_POST['end_date']) && isset($_POST['locker_id']) && isset($_POST['status'])) {
    $useUid = $_POST['use_uid'];
    $endDate = $_POST['end_date'];
    $lockerId = $_POST['locker_id'];
    $status = $_POST['status'];

    $sql = "UPDATE lockers SET use_uid='$useUid', end_date='$endDate', status='$status' WHERE id='$lockerId'";

    if ($conn->query($sql) === TRUE) {
        echo "Data updated successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Required parameters are missing";
}

$conn->close();
?>
