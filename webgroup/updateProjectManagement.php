<?php

$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    if (isset($_POST["project_management_scale"])&& isset($_POST["project_management_question_ids"])) {
        $projectManagementScaleValues = $_POST["project_management_scale"];
        $projectManagementQuestionIds = $_POST["project_management_question_ids"];

     
        for ($i = 1; $i < count($projectManagementScaleValues); $i++) {
            $scale = intval($projectManagementScaleValues[$i]);
            $questionId = intval($projectManagementQuestionIds[$i]);

            $sql = "UPDATE project_management SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }
    }
}

$conn->close();


header("Location: projectManagement.php");
exit();
?>
