
<?php
//$servername = "localhost";
//$username = "username";
//$password = "password";
//$dbname = "band_song_list";
include('config.php'); 



$id		= htmlspecialchars($_POST['ID'],ENT_QUOTES);
$sure = htmlspecialchars($_POST['sure'],ENT_QUOTES);


if ($sure == "yes") {
  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }
  $sql = "UPDATE song_list SET hide='1' WHERE ID=" . $id ;
  if (mysqli_query($conn, $sql)) {
    //echo " record deleted successfully";
    header("Location:  ./display_list.php");
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }

  mysqli_close($conn);
  
}

header("Location:  ./display_list.php");


?>
