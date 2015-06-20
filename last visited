<?php
$host="localhost";
$user="root";
$password="";
$db="mydatabase";
$dbcon=@mysqli_connect($host,$user, $password, $db);
if($dbcon){
	$sql="SELECT * FROM `registration`";
	$res=mysqli_query($dbcon,$sql);
	if($res){
		echo "";
	}
	else{die("error");}
	echo "<table>";
	echo "<th>Latitude</th> <th>Longitude</th><th>Description</th>";
	while($row=mysqli_fetch_array($res)){
			$timestamp=strtotime($row['time']);
			if($timestamp >= time()+(60*60)){
		echo "<tr><td>";
		echo $row['latitude'];
			echo "</td><td>";
		echo $row['longitude'];
		echo "</td><td>";
		echo $row['description'];
		echo "</tr></td><br>";
	}
	else{
		echo  "The time has expired for the city:".$row['description'];
		$t=(time()-$timestamp);
					echo $t."ago";
			echo "<br>";
	}
	}
	echo "</table>";
	}
else{die("error in retrieving data from the database");}



?>
