<?php
//$servername = "localhost";
//$username = "username";
//$password = "password";
//$dbname = "band_song_list";
include('config.php'); 

// example input

//  http://freenet4.no-ip.biz/band2/delete_song.php?ID=8
// ./delete_song.php?ID=8


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


$id = htmlspecialchars($_GET["ID"],ENT_QUOTES);

//echo "id = " . $id;
//exit -1;

$sql = "SELECT * FROM song_list WHERE ID=" . $id ;
$result = mysqli_query($conn,$sql) or die('Query failed: ' . mysql_error());
$line = mysqli_fetch_assoc($result);
//echo $line["adder_nickname"];
//echo "exit now";
//exit -1

?>
<br><br>
<p><strong>Are you SURE you want to delete this song??</strong>.</p><br>
<form action="delete_verify_song.php" method="post" >
<input type="hidden" name="ID" value="<?php echo $line['ID'] ?>" />

Song Name: <input type="text" name="songname" SIZE=40 value="<?php echo htmlentities($line['song_name']) ?>"><br>
Artist: <input type="text" name="artist" SIZE=40 value="<?php echo htmlentities($line['artist']) ?>"><br>
Youtube Link: <input type="text" name="youtube_url" SIZE=70 value="<?php echo htmlentities($line['youtube_url']) ?>"><br>
Enter yes here if your SURE: <input type="text" name="sure" SIZE=4 value="no"><br>
<input type="submit">
</form>

<?php
mysqli_close($conn);

?>


