<?php

// example input

//  http://freenet4.no-ip.biz/band2/get_rank.php?member=Scotty&song_ID=3
// ./get_rank.php?member=Scotty&song_ID=3


$member = htmlspecialchars($_GET["member"]);
$song_id = htmlspecialchars($_GET["song_ID"]);

?>

<center>
<br>
<br>
<form action="set_rank.php" method="post" >
<input type="hidden" name="song_ID" value="<?php echo $song_id ?>" />
<input type="hidden" name="member" value="<?php echo $member ?>" />
New Song Rank: <input type="text" name="rank" SIZE=3 > <br>
<input type="submit">

</form>
</center>
