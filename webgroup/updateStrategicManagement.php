<?php

$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
    if (isset($_POST["strategic_scale"])&& isset($_POST["strategic_question_ids"])) {
        $strategicScaleValues = $_POST["strategic_scale"];
        $strategicQuestionIds = $_POST["strategic_question_ids"];

       
        for ($i = 1; $i < count($strategicScaleValues); $i++) {
            $scale = intval($strategicScaleValues);
            $questionId = intval($strategicQuestionIds);

            $sql = "UPDATE strategic_management SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }
    }
}

$conn->close();


header("Location: strategicManagement.php");
exit();
?>
