<?php
$servername = "localhost"; 
$username = "id";      
$password = "pw";    
$database = "table"; 

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id, status, location_name, address, use_uid, end_date, latitude, longitude FROM lockers";
$result = $conn->query($sql);

$response = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $locker = array(
            'id' => $row['id'],
            'status' => $row['status'],
            'location_name' => $row['location_name'],
            'address' => $row['address'],
            'use_uid' => $row['use_uid'],
            'end_date' => $row['end_date'],
            'latitude' => $row['latitude'],
            'longitude' => $row['longitude']
        );
        array_push($response, $locker);
    }
    
    echo json_encode($response);
    
} else {
    echo "No lockers found";
}

$conn->close();

?>
