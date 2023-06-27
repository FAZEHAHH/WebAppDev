<?php

$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
    if (isset($_POST["hr_scale"])&& isset($_POST["hr_question_ids"])) {
        $hrScaleValues = $_POST["hr_scale"];
        $hrQuestionIds = $_POST["hr_question_ids"];
      
        for ($i = 1; $i < count($hrScaleValues); $i++) {
            $scale = intval($hrScaleValues[$i]);
            $questionId = intval($hrQuestionIds[$i]);

            $sql = "UPDATE hr SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }
    }
}

$conn->close();


header("Location: hr.php");
exit();
?>
