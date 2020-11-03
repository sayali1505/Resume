
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<style type="text/css">
		table,th,td{
			border: 1px solid black;
			border-collapse: collapse;
		}
	</style>
</head>
<body>

<?php

include_once("connection.php");

$search = $_POST['search'];
$resume= $_POST['resume'];

echo "<h2>Resume containing $search as field </h2>";

//$sql="select * from skills where skill_name like '%$search%' ";

if($resume == 'skill_name'){

	$sql="SELECT * FROM personal_info where p_id IN (select p_id from skills where $resume like '$search' )";

		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  echo "<table ><tr><th>Name</th><th>PDF</th></tr>";
		  // output data of each row
		  while($row = $result->fetch_assoc()) {

		  	$id=$row['p_id'];
		  	$name=$row['Name'];

		  	?>
		   
		<tr>
		<td><?php  echo $name?></td>
		<td><a href="generate_pdf1.php?id=<?php echo $id; ?> ">pdf</a></td>


		</tr>

		<?php
		  }
		  echo "</table>";
		} else {
		  echo "0 results";
		}

}

if ($resume == 'education') {

	$sql="SELECT * FROM personal_info where p_id IN (select p_id from education where $resume like '$search' )";

		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  echo "<table ><tr><th>Name</th><th>PDF</th></tr>";
		  // output data of each row
		  while($row = $result->fetch_assoc()) {

		  	$id=$row['p_id'];
		  	$name=$row['Name'];

		  	?>
		   
		<tr>
		<td><?php  echo $name?></td>
		<td><a href="generate_pdf1.php?id=<?php echo $id; ?> ">pdf</a></td>


		</tr>

		<?php
		  }
		  echo "</table>";
		} else {
		  echo "0 results";
		}
	
}

if ($resume=='city') {

	$sql="SELECT * FROM personal_info where p_id IN (select p_id from job_location where $resume like '$search' )";

		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  echo "<table ><tr><th>Name</th><th>PDF</th></tr>";
		  // output data of each row
		  while($row = $result->fetch_assoc()) {

		  	$id=$row['p_id'];
		  	$name=$row['Name'];

		  	?>
		   
		<tr>
		<td><?php  echo $name?></td>
		<td><a href="generate_pdf1.php?id=<?php echo $id; ?> ">pdf</a></td>


		</tr>

		<?php
		  }
		  echo "</table>";
		} else {
		  echo "0 results";
		}
	

	
}

if ($resume=='experience') {

	$sql="SELECT * FROM personal_info where p_id IN (select p_id from profile_summary where $resume like '$search' )";

		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  echo "<table ><tr><th>Name</th><th>PDF</th></tr>";
		  // output data of each row
		  while($row = $result->fetch_assoc()) {

		  	$id=$row['p_id'];
		  	$name=$row['Name'];

		  	?>
		   
		<tr>
		<td><?php  echo $name?></td>
		<td><a href="generate_pdf1.php?id=<?php echo $id; ?> ">pdf</a></td>


		</tr>

		<?php
		  }
		  echo "</table>";
		} else {
		  echo "0 results";
		}
	
}

$conn->close();
?>
</body>
</html>
