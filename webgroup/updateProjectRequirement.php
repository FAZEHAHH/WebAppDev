<?php

$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    if (isset($_POST["project_requirement_scale"])&& isset($_POST["project_requirement_question_ids"])) {
        $projectRequirementScaleValues = $_POST["project_requirement_scale"];
        $projectRequirementQuestionIds = $_POST["project_requirement_question_ids"]

       
        for ($i = 1; $i < count($projectRequirementScaleValues); $i++) {
            $scale = intval($projectRequirementScaleValues[$i]);
            $questionId = intval($projectRequirementQuestionIds[$i]);

            $sql = "UPDATE project_requirement SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }
    }
}

$conn->close();


header("Location: projectRequirement.php");
exit();
?>
