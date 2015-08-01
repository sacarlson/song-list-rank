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

<form action="editsong.php" method="post" >
<input type="hidden" name="ID" value="<?php echo $line['ID'] ?>" />
Band Member Nickname: <input type="text" name="member" SIZE=40 value="<?php echo htmlentities($line['adder_nickname']) ?>"><br>
Song Name: <input type="text" name="songname" SIZE=40 value="<?php echo htmlentities($line['song_name']) ?>"><br>
Artist: <input type="text" name="artist" SIZE=40 value="<?php echo htmlentities($line['artist']) ?>"><br>
Youtube Link: <input type="text" name="youtube_url" SIZE=70 value="<?php echo htmlentities($line['youtube_url']) ?>"><br>
Rank: <input type="text" name="rank" SIZE=3 value="<?php echo htmlentities($line['rank']) ?>"><br>
<input type="submit">
</form>

<?php
mysqli_close($conn);

?>


