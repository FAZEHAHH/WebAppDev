<!DOCTYPE html>
<html>
<head>
  <title>Admin Page</title>  
  <link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>

  <h1>Questions and Scales</h1>
	<p>
  <form method="POST" action="">
    <label for="option">Select a section:</label>
    <select name="option" id="option">
      <option value="">Choose</option>
      <option value="project_characteristics">Project Characteristics</option>
      <option value="strategic_management">Strategic Management</option>
      <option value="procurement">Procurement</option>
      <option value="hr">HR</option>
      <option value="business">Business</option>
      <option value="project_management">Project Management</option>
      <option value="project_requirement">Project Requirement</option>
    </select>
    <input type="submit" value="Submit">
  </form>
	</p>
  <?php
  
  if (isset($_POST['option'])) {
    $option = $_POST['option'];

    switch ($option) {
      case 'project_characteristics':
      $table = 'project_characteristics';
      break;
      case 'strategic_management':
      $table = 'strategic_management';
      break;
      case 'procurement':
      $table = 'procurement';
      break;
      case 'hr':
      $table = 'hr';
      break;
      case 'business':
      $table = 'business';
      break;
      case 'project_management':
      $table = 'project_management';
      break;
      case 'project_requirement':
      $table = 'project_requirement';
      break;
      default:
      $table = '';
      break;
    }
  }

  ?>



  <form method="POST" action="update_questions.php?table=<?php echo $table; ?>">
    <?php
    require 'config.php';

    $servername = "localhost";
    $username = "root";
    $password = '';
    $dbname = "risk_assessment";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if (!empty($table)) {
      echo "<p class='section-heading'>You are now viewing " . $table . " section </p><br>";
      $sql = "SELECT * FROM " . $table;
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
        $questionNumber = 1;
        while ($row = $result->fetch_assoc()) {
          echo "<p><label for='question" . $row['id'] . "'>Question " . $questionNumber . ": <br></label>";
          echo "<textarea id='question" . $row['id'] . "' name='questions[" . $row['id'] . "]' class='question-input'>" . $row['question'] . "</textarea><br>";

          echo "<label for='scale" . $row['id'] . "'>Scale for Question " . $questionNumber . ": </label>";
          echo "<input type='text' id='scale" . $row['id'] . "' name='scales[" . $row['id'] . "]' value='" . $row['scale'] . "'<p><br><br>";

          $questionNumber++;
        }
      }
		}else {
      echo "No Section Chosen";
    }
    ?>

    <input type="submit" value="Save">
  </form>

	<h1>Complexity and Risk Level</h1>

	<p>
	
  <form method="POST" action="">
  <label for="option2">Select a Complexity and Risk Level:</label>
  <select name="option2" id="option2">
    <option value="">Choose</option>

    <?php
    $conn = new mysqli($servername, $username, $password, $dbname);


    $nameColumn = "Name";
    $definitionColumn = "Definition";
    $sql = "SELECT DISTINCT $nameColumn, $definitionColumn FROM complexity_and_risk_level";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
        echo "<option value='" . $row[$nameColumn] . "'>" . $row[$nameColumn] . "</option>";
      }
    }
		$complexity = $_POST['option2'];
    ?>

  </select>
  <input type="submit" value="Submit">
</form>

	</p>

	<form method="POST" action="update_complexity.php?complexity=<?php echo urlencode($complexity); ?>">
  <?php
  if (isset($_POST['option2'])) {
    
    require 'config.php';

    $conn = new mysqli($servername, $username, $password, $dbname);
    if (!empty($complexity)) {
      echo "<p class='section-heading'>You are now viewing " . $complexity . " complexity </p><br>";
      $sql = "SELECT * FROM complexity_and_risk_level WHERE Name = '" . $complexity . "'";
      $result = $conn->query($sql);
      $row = $result->fetch_assoc();
			$ScaleColumn =  "Score";
			echo "<p><label for='definition'> Definition : <br></label>";
      echo "<textarea name='definition' class='question-input'>" . $row[$definitionColumn] . "</textarea><br>";
			echo "<label for='definition'> Score : <br></label>";
			echo "<textarea name='scale'>" . $row[$ScaleColumn] . "</textarea><br></p>";

    }
  } else {
    echo "No complexity chosen";
  }
  ?>

  <input type="submit" value="Save">
</form>

<p><a href="login.php">Go Back</a></p>
</body>
</html>