<?php
session_start();
require_once 'pdo.php';
$error = ""; // Variable to store error message
$success = ""; // Variable to store success message

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the form data
    $projectName = $_POST['project_name'];
    $owner = $_POST['owner'];
    $funds = $_POST['funds'];
    $duration = $_POST['duration'];
    $mode = $_POST['mode'];

    // Check if all fields have input
    if (!empty($projectName) && !empty($owner) && !empty($funds) && !empty($duration) && !empty($mode)) {
        // Check if funds is numerical
        if (is_numeric($funds)) {
            // Prepare the SQL statement to insert the data into the database
            $stmt = $pdo->prepare('INSERT INTO projects (project_name, owner, financial_funds, project_duration, mode) 
            VALUES (:project_name, :owner, :funds, :duration, :mode)');

            // Execute the SQL statement with the form data
            $stmt->execute(
                array(
                    ':project_name' => $projectName,
                    ':owner' => $owner,
                    ':funds' => $funds,
                    ':duration' => $duration,
                    ':mode' => $mode
                )
            );

            // Check if the data was inserted successfully
            if ($stmt->rowCount() > 0) {
                // Data inserted successfully
                $success = "Data saved successfully.";
                
                // Set session variables
                $_SESSION['owner'] = $owner;
                $_SESSION['project_name'] = $projectName;
                
                // Redirect to riskAssessment.php
                header("Location: projectCharacteristic.php");
                exit();
            } else {
                // Error occurred while inserting data
                $error = "Error: Unable to save data.";
            }
        } else {
            // Funds is not numerical
            $error = "Error: Funds should be numerical.";
        }
    } else {
        // Not all fields have input
        $error = "Error: Please fill in all the fields.";
    }
}
?>

<link rel='stylesheet' type='text/css' media='screen' href='main.css'>
<div class="container">
    <h2>Project Form</h2>
    <?php
    if (!empty($error)) {
        echo "<p class='error-message'>$error</p>";
    } elseif (!empty($success)) {
        echo "<p class='success-message'>$success</p>";
    }
    ?>
    <form method="POST">
        <div class="form-group">
            <label for="project_name">Project Name:</label>
            <input type="text" id="project_name" name="project_name" required>
        </div>

        <div class="form-group">
            <label for="owner">Owner:</label>
            <input type="text" id="owner" name="owner" required>
        </div>

        <div class="form-group">
            <label for="funds">Financial/Funds:</label>
            <input type="text" id="funds" name="funds" required>
        </div>

        <div class="form-group">
            <label for="duration">Project Duration:</label>
            <input type="text" id="duration" name="duration" required>
        </div>

        <div class="form-group">
            <label for="mode">Mode:</label>
            <select id="mode" name="mode" required>
                <option value="unspecified">Unspecified</option>
                <option value="internal">Internal</option>
                <option value="external">External</option>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" value="Submit">
        </div>
    </form>
    <p><a href="informationpage.php">Information Page</a></p>
</div>
