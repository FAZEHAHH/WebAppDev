<?php
   
    $servername = "localhost";
    $username = "root";
    $password = '';
    $dbname = "risk_assessment";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
 
        if (isset($_POST["characteristic_scale"])&& isset($_POST["characteristic_question_ids"])) {
            $characteristicScaleValues = $_POST["characteristic_scale"];
            $characteristicQuestionIds = $_POST["characteristic_question_ids"];

           
            for ($i = 1; $i < count($characteristicScaleValues); $i++) {
                $scale = intval($characteristicScaleValues[$i]);
                $questionId = intval($characteristicQuestionIds[$i]);

                $sql = "UPDATE project_characteristics SET scale = $scale WHERE id = $questionId";
                $conn->query($sql);
            }
        }
    }

    $conn->close();

    
    header("Location: projectCharacteristic.php");
    exit();
?>
