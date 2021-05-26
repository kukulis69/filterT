<?php

/*
 * iTech Empires:  Export Data from MySQL to CSV Script
 * Version: 1.0.0
 * Page: Export
 */

// Database Connection
// require("db_connection.php");
include "connect.php"; 

$id = $_GET['id'];

// get Users
$query = "SELECT * FROM tasks where projectID='$id'";
if (!$result = mysqli_query($connect, $query)) {
     exit(mysqli_error($connect));
}

$tasks = array();
if (mysqli_num_rows($result) > 0) {
     while ($row = mysqli_fetch_assoc($result)) {
          $tasks[] = $row;
     }
}

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=Tasks.csv');
$output = fopen('php://output', 'w');
fputcsv($output, array('projectID', 'ID', 'name', 'description', 'priority', 'status', 'startDate', 'modifiedDate'));

if (count($tasks) > 0) {
     foreach ($tasks as $row) {
          fputcsv($output, $row);
     }
}
?>