<?php
//$servername = "localhost";
//$username = "username";
//$password = "password";
//$dbname = "band_song_list";
include('config.php'); 

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$member_name 	= htmlspecialchars($_POST['member_name'],ENT_QUOTES);
$band_name 	= htmlspecialchars($_POST['band_name'],ENT_QUOTES);



//if (strlen($member) < 2) {
//  header("Location:  ./display_list.php");
//}


$sql = "REPLACE INTO member_list (member_name, band_name, date_joined ) VALUES ('" . $member_name . "','" . $band_name .  "',NOW())";


if (mysqli_query($conn, $sql)) {
    //echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


$insert_col = 'ALTER TABLE song_list ADD ' . $member_name . "_rank INT NOT NULL DEFAULT '0'";

if (mysqli_query($conn, $insert_col)) {
    //echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
header("Location:  ./display_list.php");
?>
