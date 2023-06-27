<!DOCTYPE html>
<html>
<head>
    <title>update complexity Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    
</head>
<body>
	<div>
    <?php
if (isset($_POST['definition']) && isset($_POST['scale'])) {
  $complexity = $_GET['complexity'];
  $definition = $_POST['definition'];
  $scale = $_POST['scale'];

  // Perform necessary database update
  require 'config.php';
  $servername = "localhost";
  $username = "root";
  $password = '';
  $dbname = "risk_assessment";
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Update the complexity and risk level
  $sql = "UPDATE complexity_and_risk_level SET Definition = '$definition', Score = '$scale' WHERE Name = '$complexity'";

  if ($conn->query($sql) === TRUE) {
    echo "Complexity and Risk Level updated successfully.";
  } else {
    echo "Error updating Complexity and Risk Level: " . $conn->error;
  }

  $conn->close();
} else {
  echo "Please provide the necessary details.";
}
?>



<p ><a href="admin.php" class='back'> Back  </a></p>
</div>
</body>
</html>