<!DOCTYPE html>
<html>
<head>
    <title>Business</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 30px;
            font-size: 40px;
        }

        form {
            max-width: 1600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .section-header {
            max-width: 1600px;
            font-size: 24px;
            font-weight: bold;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
            background-color: #f4f4f4;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            background-color: #45a049
        }

        p {
            font-weight: normal;
            margin-top: 20px;
            line-height: 25px;
        }

        .owner{
            text-align: center;
            color: #7b7b7b;
            font-weight: bold;
            font-size: 30px;
            
        }
        

        .message {
            font-weight:bold;
            margin-top: 20px;
            text-align: center;
            font-size: 20px;
            
            
            
            
        }

        div {
            text-align: center;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }

        label {
            display: inline-block;
            margin-right: 10px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <?php
    session_start();

    if (isset($_SESSION['owner']) && isset($_SESSION['project_name'])) {
        $owner = $_SESSION['owner'];
        $projectName = $_SESSION['project_name'];
        
    } else {

        header("Location: hr.php");
        exit();
    }
    ?>

    <h1>Risk Assessment and Project Complexity</h1>

    <p class="owner">Welcome <?php echo $owner; ?></p>
    <p class="owner">Project: <?php echo $projectName; ?></p>

    <p class ="message"> Attention: Please note that the numbers 1 to 5 represent a relative scale, not precise quantities. 
        In this context, a higher number signifies a greater level of involvement, such as more people, more use cases, 
        or more complexity or risky. Choose the number that best reflects the relative magnitude based on this scale.</p>

    <h2 class="section-header">Section 5: Business Risks</h2>

    <form method="POST" action="projectManagement.php" onsubmit="return validateBusiness();">
        
        <?php
        
        $servername = "localhost";
        $username = "root";
        $password = '';
        $dbname = "risk_assessment";

        $conn = new mysqli($servername, $username, $password, $dbname);

        
        $sql = "SELECT * FROM business";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Display questions
            $questionNumber = 1;
            while ($row = $result->fetch_assoc()) {
                echo "<p>" . $questionNumber . ". " . $row["question"] . "</p>";
                echo "<div class='question'>"; 
                for ($i = 1; $i <= 5; $i++) {
                    echo "<label>" . $i . " <input type='radio' name='business_scale[" . $row["id"] . "]' value='" . $i . "'> </label>";
                }
                echo "</div>";
                $questionNumber++;
            }
        }

        if (isset($_POST["characteristic_scale"])) {
            foreach ($_POST["characteristic_scale"] as $questionId => $scale) {
                echo "<input type='hidden' name='characteristic_scale[" . $questionId . "]' value='" . $scale . "'>";
            }
        }

        
        if (isset($_POST["strategic_scale"])) {
            foreach ($_POST["strategic_scale"] as $questionId => $scale) {
                echo "<input type='hidden' name='strategic_scale[" . $questionId . "]' value='" . $scale . "'>";
            }
        }

        if (isset($_POST["procurement_scale"])) {
            foreach ($_POST["procurement_scale"] as $questionId => $scale) {
                echo "<input type='hidden' name='procurement_scale[" . $questionId . "]' value='" . $scale . "'>";
            }
        }

        if (isset($_POST["hr_scale"])) {
            foreach ($_POST["hr_scale"] as $questionId => $scale) {
                echo "<input type='hidden' name='hr_scale[" . $questionId . "]' value='" . $scale . "'>";
            }
        }




        ?>

        <input type="submit" value="Next">
    </form>

    <script>
        function validateBusiness() {
           
            const questionDivs = document.querySelectorAll('.question');

            let isAllAnswered = true;


            questionDivs.forEach(questionDiv => {
                const radioInputs = questionDiv.querySelectorAll('input[type="radio"]');
                let isQuestionAnswered = false;

            radioInputs.forEach(input => {
                if (input.checked) {
                    isQuestionAnswered = true;
                }
            });

             if (!isQuestionAnswered) {
                questionDiv.style.backgroundColor = '#FFCCCC'; 
                isAllAnswered = false;
            } else {
                questionDiv.style.backgroundColor = ''; // Remove highlight from answered question
            }
            });

            if (!isAllAnswered) {
                alert('Please answer all the questions!');
            }

            return isAllAnswered;
        }
    </script>
</body>
</html>
