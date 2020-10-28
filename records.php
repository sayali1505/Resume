
<!DOCTYPE html>
<html>
<head>
	<title>Records</title>
	<style type="text/css">
		table,th,td{
			border: 1px solid black;
			border-collapse: collapse;
		}
	</style>
</head>
<body>
<form action="resume_search.php" method="post">
	<input type="text" name="search">
	<input type="submit" name="" value="Search">
</form>
<h2>Generate PDF file from records</h2>
<!--<form class="form-inline" method="post" action="generate_pdf.php">-->

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "resume";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM personal_info ";

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
$conn->close();
?>
</body>
</html>

