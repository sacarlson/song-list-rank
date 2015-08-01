
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

$member = htmlspecialchars($_POST['member'],ENT_QUOTES);
$song_name 	= htmlspecialchars($_POST['songname'],ENT_QUOTES);
$artist = htmlspecialchars($_POST['artist'],ENT_QUOTES);
$youtube_url = htmlspecialchars($_POST['youtube_url'],ENT_QUOTES);
$rank = htmlspecialchars($_POST['rank'],ENT_QUOTES);


if (strlen($member) < 2) {
  header("Location:  ./display_list.php");
}


$sql = "REPLACE INTO song_list (adder_nickname, song_name, artist, youtube_url, rank, date_added) VALUES ('" . $member . "','" . $song_name . "','" . $artist . "','" . $youtube_url . "','" . $rank . "',NOW())";


if (mysqli_query($conn, $sql)) {
    //echo "New record created successfully";
    header("Location:  ./display_list.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}



mysqli_close($conn);

?>
