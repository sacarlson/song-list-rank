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

$member 	= htmlspecialchars($_POST['member'],ENT_QUOTES);
$song_id = htmlspecialchars($_POST["song_ID"],ENT_QUOTES);
$rank_value = htmlspecialchars($_POST["rank"],ENT_QUOTES);


$sql = "UPDATE song_list SET ". $member ."_rank =" . $rank_value . " WHERE ID=" . $song_id ;


if (mysqli_query($conn, $sql)) {
    //echo " record deleted successfully";
    //header("Location:  ./display_list.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

$sql = "SELECT * FROM song_list WHERE ID=" . $song_id ;
$result = mysqli_query($conn,$sql) or die('Query failed: ' . mysql_error());
$line = mysqli_fetch_assoc($result);

$count = 0;
$member_count = 0;
$sum = 0;
foreach ($line as $col_value) {
  $count = $count + 1;
  // this value of > 9 in count may change as this is the position in the database that starting 10th position that has members rankings
  if ($count > 9) {
    $member_count = $member_count + 1;
    $sum = $sum + $col_value;
    //echo $col_value . "  " . $member_count . " <br>";
  }  
}
$average = $sum/$member_count;
//echo "average: " . $average . "<br>";
//echo " end set_rank";

$sql = "UPDATE song_list SET total_rank=" . $average . " WHERE ID=" . $song_id ;
$result = mysqli_query($conn,$sql) or die('Query failed: ' . mysql_error());

mysqli_close($conn);
header("Location:  ./display_list.php");

?>
