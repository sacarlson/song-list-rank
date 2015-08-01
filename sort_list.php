<?php
#$servername = "localhost";
#$username = "username";
#$password = "password";
#$dbname = "band_song_list";
include('config.php'); 
// display pokerth_acc database in a table format for human browser viewing

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = 'SELECT * FROM member_list';
$result_members = mysqli_query($conn,$query) or die('Query failed: ' . mysql_error());

$members = [];
while ($row = $result_members->fetch_assoc()) {
    $members[] = $row;
}

$top = '<table border="1">
  <tr>
    <th>ID</th>
    <th>Song Name</th>
    <th>Artist</th>
    <th>Youtube Link</th>
    <th>Added by</th>
    <th>Avg Rank</th>';

foreach ($members as &$value) {
        $top = $top . "<th>" . $value["member_name"] . "</th>";
      }

 $end_top = '</tr>
  <tr>';

$top = $top . $end_top;


$top2 = '<table border="1">
  <tr>
    <th>ID</th>
    <th>Song Name</th>
    <th>Artist</th>
    <th>Youtube Link</th>
    <th>Added by</th>
    <th>Rank</th>
    <th>Total Rank</th>
    <th>Date Added</th>
  </tr>
  <tr>';


$query = 'SELECT * FROM song_list ORDER BY total_rank DESC;';
//$query = 'SELECT * FROM song_list ;';
$result = mysqli_query($conn,$query) or die('Query failed: ' . mysql_error());

echo $top;
$colcount = 0;
$hide = 0;
while ($line = mysqli_fetch_assoc($result)) {

    foreach ($line as $col_value) {
       $colcount = $colcount + 1;
       
       if ($colcount < 8 && $colcount != 6) {
         if (strpos($col_value, "http") !== false) {
           $col_value = '<a href="'. $col_value . '">' . $col_value . '</a>';
         }
         if ($line["hide"] == 0) {
           echo "<td>" . $col_value . "</td>";
         }
       }
    }
    if ($line["hide"] == 0) {
      foreach ($members as &$value) {
        //echo "<td>" . $value["member_name"] . "</td>";
        // ./set_rank.php?member=Scotty&song_ID=3
        $member_rank = $value["member_name"] . "_rank";
        $rank = $line[$member_rank];
        $col_value = '<a href="./get_rank.php?member=' . $value["member_name"] . "&song_ID=" . $line["ID"] . '">' . $rank . '</a>';
        echo "<td>" . $col_value . "</td>";
      }
      
      $col_value = '<a href="./delete_song.php?ID=' . $line["ID"] . '">delete</a>';
      echo "<td>" . $col_value . "</td>";
      $col_value = '<a href="./edit_line.php?ID=' . $line["ID"] . '">edit</a>';
      echo "<td>" . $col_value . "</td>";
    }
    $colcount = 0;
    echo "</tr><tr>";
}

echo '<a href="./add_song.php">add new song</a>';
// Free resultset
//mysqli_free_result($result);
mysqli_close($conn);

?>
