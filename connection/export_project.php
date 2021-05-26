<?php
/*
* iTech Empires:  Export Data from MySQL to CSV Script
* Version: 1.0.0
* Page: Export
*/

// Database Connection
// require("db_connection.php");
include "connect.php"; 

// get Users
$query = "SELECT * FROM projects";
if (!$result = mysqli_query($connect, $query)) {
    exit(mysqli_error($connect));
}

$projects = array();
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $projects[] = $row;
    }
}

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=Projects.csv');
$output = fopen('php://output', 'w');
fputcsv($output, array('ID', 'name', 'description'));

if (count($projects) > 0) {
    foreach ($projects as $row) {
        fputcsv($output, $row);
    }
}
?>