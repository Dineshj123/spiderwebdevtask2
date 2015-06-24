<?php
echo "<script type=\"text/javascript\">
var markers=[];
var i=0,lat,lng,pos,city;
 </script>";
  $lat;
 $lng;
$host="localhost";
$user="root";
$password="";
$db="mydatabase";
$dbcon=@mysqli_connect($host,$user, $password, $db);
if($dbcon){
	$sql="SELECT * FROM `registrationspider`";
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
		$city=$row['description'];
		echo "</tr></td><br>";
		echo "<script type=\"text/javascript\">
		lat=\"  $lat\";
		lng=\"  $lng \";
		city=\"$city\";
		</script>";
		echo "<script type=\"text/javascript\">
		markers[i]=[lat,lng,city];
		i++;
 </script>";
		}
	else{
		echo  "The time has expired for the city:".$row['description'];
		$t=(time()-$timestamp);
					echo $t."ago";
			echo "<br>";
	}
	}
	echo "<script type=\"text/javascript\">
	pos=i-1;
		</script>";
	echo "</table>";
	}
else{die("error in retrieving data from the database");}
?>
<html>
<head>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>

function initialize()
{alert("hi");
var myCenter=new google.maps.LatLng(13.0827,80.2707);
var mapProp = {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
		var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
		var marker=new google.maps.Marker({
  position:myCenter,
  draggable:true,
  });
var i;
for(i=1;i<=pos;i++){
	myCenter=new google.maps.LatLng(markers[i][0],markers[i][1]);
var marker=new google.maps.Marker({
  position:myCenter,
  }); 
    var infowindow = new google.maps.InfoWindow({
  content:"city:"+markers[i][2]
});
infowindow.open(map,marker);
  
  marker.setMap(map);
}}
		google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<div id="googleMap" style="width:500px;height:380px;"></div>
<body>
</html>
