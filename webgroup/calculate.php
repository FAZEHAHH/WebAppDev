<!DOCTYPE html>
<html>
<head>
    <title>Results</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            text-align: center;
        }

        .section-header {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
            padding: 20px;
            text-align: center;
            background-color: #f4f4f4;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        h3 {
            margin-top: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ECECEC;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            
        }

        .containerResult {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #90EE90;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            
        }

        .container h4 {
            margin: 0;
            font-weight: bold;
        }

        .container p {
            margin: 0;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Results</h1>

    <?php
        // Database connection
        $servername = "localhost";
        $username = "root";
        $password = '';
        $dbname = "risk_assessment";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($_SERVER["REQUEST_METHOD"] === "POST") {

            if (isset($_POST["characteristic_scale"])) {
                $characteristicScaleValues = $_POST["characteristic_scale"];

                foreach ($characteristicScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE project_characteristics SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

       
            if (isset($_POST["strategic_scale"])) {
                $strategicScaleValues = $_POST["strategic_scale"];

                foreach ($strategicScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE strategic_management SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

            if (isset($_POST["procurement_scale"])) {
                $procurementScaleValues = $_POST["procurement_scale"];

                foreach ($procurementScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE procurement SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

            
            if (isset($_POST["hr_scale"])) {
                $hrScaleValues = $_POST["hr_scale"];

                
                foreach ($hrScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE hr SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

           
            if (isset($_POST["business_scale"])) {
                $businessScaleValues = $_POST["business_scale"];

                foreach ($businessScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE business SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

            if (isset($_POST["project_management_scale"])) {
                $projectManagementScaleValues = $_POST["project_management_scale"];

                foreach ($projectManagementScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE project_management SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }

            if (isset($_POST["project_requirement_scale"])) {
                $projectRequirementsScaleValues = $_POST["project_requirement_scale"];

                foreach ($projectRequirementsScaleValues as $questionId => $scale) {
                    $scale = intval($scale);

                    $sql = "UPDATE project_requirement SET scale = $scale WHERE id = $questionId";
                    $conn->query($sql);
                }
            }
        }

        $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM project_characteristics";
        $result = $conn->query($sql);
        $projectCharacteristicsData = $result->fetch_assoc();
        $projectCharacteristicsTotal = $projectCharacteristicsData["total"];
        $projectCharacteristicsCount = $projectCharacteristicsData["count"];
        

         // Calculate marks for Strategic Management section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM strategic_management";
         $result = $conn->query($sql);
         $strategicManagementData = $result->fetch_assoc();
         $strategicManagementTotal = $strategicManagementData["total"];
         $strategicManagementCount = $strategicManagementData["count"];
 
         // Calculate marks for Procurement section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM procurement";
         $result = $conn->query($sql);
         $procurementData = $result->fetch_assoc();
         $procurementTotal = $procurementData["total"];
         $procurementCount = $procurementData["count"];
 
         // Calculate marks for HR section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM hr";
         $result = $conn->query($sql);
         $hrData = $result->fetch_assoc();
         $hrTotal = $hrData["total"];
         $hrCount = $hrData["count"];
 
         // Calculate marks for Business section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM business";
         $result = $conn->query($sql);
         $businessData = $result->fetch_assoc();
         $businessTotal = $businessData["total"];
         $businessCount = $businessData["count"];
 
         // Calculate marks for Project Management section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM project_management";
         $result = $conn->query($sql);
         $projectManagementData = $result->fetch_assoc();
         $projectManagementTotal = $projectManagementData["total"];
         $projectManagementCount = $projectManagementData["count"];
 
         // Calculate marks for Project Requirements section
         $sql = "SELECT SUM(scale) AS total, COUNT(*) AS count FROM project_requirement";
         $result = $conn->query($sql);
         $projectRequirementsData = $result->fetch_assoc();
         $projectRequirementsTotal = $projectRequirementsData["total"];
         $projectRequirementsCount = $projectRequirementsData["count"];

        

        // Calculate overall marks
        $overallTotal = $projectCharacteristicsTotal + $strategicManagementTotal + $procurementTotal + $hrTotal + $businessTotal + $projectManagementTotal + $projectRequirementsTotal;
        $overallCount = $projectCharacteristicsCount + $strategicManagementCount + $procurementCount + $hrCount + $businessCount + $projectManagementCount + $projectRequirementsCount;

        // Calculate percentage
        $maxMarks = 320;
        $percentage = ($overallTotal / $maxMarks) * 100;
        $formattedPercentage = number_format($percentage, 2);
        
       
    ?>

    <div class="container">
        <h4>Project Characteristics Result</h4>
        <p><?php echo $projectCharacteristicsTotal; ?> / 90</p>
    </div>
    <br>

    <div class="container">
        <h4>Strategic Management Result</h4>
        <p><?php echo $strategicManagementTotal; ?> / 30</p>
    </div>
    <br>

    <div class="container">
        <h4>Procurement Result</h4>
        <p><?php echo $procurementTotal; ?> / 45</p>
    </div>
    <br>

    <div class="container">
        <h4>HR Result</h4>
        <p><?php echo $hrTotal; ?> / 25</p>
    </div>
    <br>

    <div class="container">
        <h4>Business Result</h4>
        <p><?php echo $businessTotal; ?> / 25</p>
    </div>
    <br>

    <div class="container">
        <h4>Project Management Result</h4>
        <p><?php echo $projectManagementTotal; ?> / 30</p>
    </div>
    <br>

    <div class="container">
        <h4>Project Requirements Result</h4>
        <p><?php echo $projectRequirementsTotal; ?> / 75</p>
    </div>
    <br>

    <div class="container">
        <h4>Overall Result</h4>
        <p>Total Marks: <?php echo $overallTotal; ?> / 320</p>
        <p>Percentage: <?php echo $formattedPercentage; ?>%</p>
    </div>
    <br>

    <div class="containerResult">
    <?php
    
        if ($overallTotal < 45) {
            echo  "<h4>Sustaining</h4>";
            echo "<p>Project has low risk and complexity. 
            The project outcome affects only a specific service or at most a specific program, 
            and risk mitigations for general project risks are in place. The project does not
            consume a significant percentage of departmental or agency resources.</p>";

        } elseif ($overallTotal >= 45 && $overallTotal < 64) {
            echo  "<h4>Tactical</h4>";
            echo "<p>A project rated at this level affects multiple services within a program and may 
            involve more significant procurement activities. It may involve some information management 
            or information technology (IM/IT) or engineering activities. The project risk profile may indicate 
            that some risks could have serious impacts, requiring carefully planned responses. 
            The scope of a tactical project is operational in nature and delivers new capabilities within limits.</p>";
        
        } elseif ($overallTotal >= 64 && $overallTotal < 83) {
            echo  "<h4>Evolutionary</h4>";
            echo "<p>	
            As indicated by the name, projects within this level of complexity and risk introduce change, 
            new capabilities and may have a fairly extensive scope. Disciplined skills are required to successfully 
            manage evolutionary projects. Scope frequently spans programs and may affect one or two other departments or agencies. 
            There may be substantial change to business process, internal staff, external clients, and technology infrastructure. 
            IM/IT components may represent a significant proportion of total project activity.</p>";
        }
        
        else {
            echo  "<h4>Transformational</h4>";
            echo "<p>At this level, projects require extensive capabilities and may have a dramatic impact on the organization and potentially 
            other organizations. Horizontal (i.e. multi-departmental, multi-agency, or multi-jurisdictional) projects are transformational in nature. 
            Risks associated with these projects often have serious consequences, such as restructuring the organization, change in senior management, 
            and/or loss of public reputation.</p>";
        }
    ?>
    </div>

    <a href="index.php">Go Back</a>
    
    <?php
        $conn->close();
    ?>

</body>
</html>
