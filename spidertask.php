<?php
global $dbcon;
global $latitude;
global $longitude;
global $data,$url,$json;
$host="localhost";
$user="root";
$password="";
$db="mydatabase";
$dbcon=@mysqli_connect($host,$user, $password, $db);
              	if($dbcon){ 	echo "hi";				
if($_SERVER['REQUEST_METHOD'] == "POST"){
	    $latitude=$_REQUEST['box'];
	    $longitude=$_REQUEST['box1'];
		$city=$_REQUEST['cityname'];
$sql="INSERT INTO `registrationspider` (`id`,`latitude`,`longitude`,`description`,`time`) VALUES('NULL','$latitude','$longitude','$city',now())";
$res=mysqli_query($dbcon, $sql);
if($res){
echo "okay";
}
else{echo "error in inserting the value";}
	 }
	 }
	 else{die ("error connecting to databse");}
?>
