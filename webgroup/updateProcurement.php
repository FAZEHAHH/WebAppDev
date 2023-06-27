<?php

$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
    if (isset($_POST["procurement_scale"]) && isset($_POST["procurement_question_ids"])) {
        $procurementScaleValues = $_POST["procurement_scale"];
        $procurementQuestionIds = $_POST["procurement_question_ids"];
        
        foreach ($i = 1; $i < count($procurementScaleValues); $i++) {
            $scale = intval($procurementScaleValues[$i]);
            $questionId = intval($procurementQuestionIds[$i]);
           

            $sql = "UPDATE procurement SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }
    }
}

$conn->close();


header("Location: procurement.php");
exit();
?>
