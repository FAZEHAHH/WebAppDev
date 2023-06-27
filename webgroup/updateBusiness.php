<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "risk_assessment";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    if (isset($_POST["business_scale"]) && isset($_POST["business_question_ids"])) {
        $businessScaleValues = $_POST["business_scale"];
        $businessQuestionIds = $_POST["business_question_ids"];


        foreach($i = 1; i < count($businessScaleValues); i++){
            $scale = intval($businessScaleValues[$i]);
            $questionId = intval($businessQuestionIds[$i]);

            $sql = "UPDATE business SET scale = $scale WHERE id = $questionId";
            $conn->query($sql);
        }

       
    }
}

$conn->close();


header("Location: business.php");
exit();
?>

