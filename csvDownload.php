<?php
//   //If user is not logged in, can not access this page
require_once"connection.php";


    $filename = "Information.csv";
    $fp = fopen('php://output', 'w');

    $header = array(
        'First Name',
        'Last Name',
        'Nick Name',
        'Cell Phone',
        'Work Phone',
        'Email',
        'Address',
        'City',

    );

    header('Content-type: application/csv');
    header('Content-Disposition: attachment;
     filename='.$filename);
    fputcsv($fp, $header);

    $csv_query = "SELECT contact_fname,
     contact_lname,
     contact_nickname,
     contact_cphone,
     contact_wphone,
     contact_email,
     contact_address,
     contact_city FROM contacts where user_id = '$_SESSION[id]'";
    $csv_result = mysqli_query($conn, $csv_query);

    while($row = mysqli_fetch_row($csv_result)) {
        fputcsv($fp, $row);
    }

?>