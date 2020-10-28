<?php

include_once("connection.php");

$search = $_POST['search'];

$sql="select * from skills where skill_name like '%$search%' ";

$result=mysqli_query($conn,$sql);

if ($result->num_rows>0) 
{
	while ($row=$result->fetch_assoc()) {
		echo $row["skill_id"]." ". $row["skill_name"]." ".$row["p_id"]."<br>";
	}
}
else{
	echo "0 records";
}

$conn->close();

?>