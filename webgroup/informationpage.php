<!DOCTYPE html>
<html>
    <head>
        <style>
            .body{
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            #table1{
                border-collapse: collapse;
                width: 100%;
            }
            #table1 td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            #table1 tr:nth-child(even){
                background-color: #f2f2f2;
            }
            #table1 tr:hover {
                background-color: #ddd;
            }
            #table1 th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: green;
                color: white;
            }
            .button {
                position: relative;
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
            }
            .button {
                background-color: white; 
                color: black; 
                border: 2px solid green;
            }
            .button:hover {
                background-color: green;
                color: white;
            }

        </style>
    </head>
    <body class="body">
        <h1>Information Page</h1>
        <h2>Project Complexity and Risk Assessment Tool</h2>
        <h3>About</h3>
        <p>The Project Complexity and Risk Assessment Tool (PCRA) is intended to support the Treasury Board Policy on the Management of Projects and the Standard for Project Complexity and Risk.</p>
        <p>The Treasury Board Policy on the Management of Projects requires deputy heads to ensure that each planned or proposed project which is subject to the Policy is accurately assessed to determine its level of risk and complexity for the purposes of project approval and expenditure authority.</p>
        <p>This questionnaire is a derivative of Interis Consulting Inc.'s taxonomy-based questionnaire for project risk assessments. Interis' questionnaire draws extensively on the Continuous Risk Management Guidebook (1999) of the Software Engineering Institute (SEI). In consultation with project managers in the Government of Canada Interis has modified and extended the series of questions to reflect public sector and broader strategic considerations.</p>
        <h3>Risk and Complexity Definitions</h3>
        <p>The SEI, the authoring agency of the Continuous Risk Management Guidebook, uses the following definition for the term "risk":</p>
        <p>The possibility of suffering loss.</p>
        <p>Source: Webster's</p>
        <p>The Government of Canada (GC) cites the SEI as the basis for the concepts, methods, and guidelines embodied in the Integrated Risk Management Framework (IRMF). Within that Framework, the following definition of risk provides a standard for the GC:</p>
        <p>Risk refers to the uncertainty that surrounds future events and outcomes. It is the expression of the likelihood and impact of an event with the potential to influence the achievement of an organization's objectives.</p>
        <p>Source: Government of Canada: <a href="https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=12254#sec3.1">Integrated Risk Management Framework (2001)</a></p>
        <p><b>Project complexity:</b> Complexity is, fittingly, a much more difficult concept to define. Once again, the SEI provides a solid definition from Webster's:</p>
        <p><b>Complexity:</b></p>
        <ol>
            <li>(Apparent) the degree to which a system or component has a design or implementation that is difficult to understand and verify.</li>
            <li>(Inherent) the degree of complication of a system or system component, determined by such factors as the number and intricacy of interfaces, the number and intricacy of conditional branches, the degree of nesting, and the types of data structures.</li>
        </ol>
        <h3>Questions and Sections Descriptions</h3>
        <p>The assessment is divided into seven sections or categories of questions described in table below</p>
        <table id="table1">
            <tr>
                <th>Section</th>
                <th>Description</th>
            </tr>
            <tr>
                <td><b>Project Characteristics</br>(18 Questions)</b></td>
                <td>This category is designed to build a profile of a given project with respect to key attributes, including funding, budget, size and number of resources, duration, scope, technology scope, stakeholders, dependencies, and external considerations.</td>
            </tr>
            <tr>
                <td><b>Strategic Management Risks</br>(6 Questions)</b></td>
                <td>This category assesses a project's alignment with the organization's investment plan:
                    <ul>
                        <li>Is the project well-positioned to achieve the goals and objectives of the plan?</li>
                        <li>Is the project a potential risk to the plan?</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td><b>Procurement Risks</br>(9 Questions)</b></td>
                <td>This category assesses the extent to which procurement activities present potential risks to the project.</td>
            </tr>
            <tr>
                <td><b>Human Resource Risks</br>(5 Questions)</b></td>
                <td>This category assesses whether the project team has the right skill sets in place, with the appropriate roles and responsibilities.</td>
            </tr>
            <tr>
                <td><b>Business Risks</br>(5 Questions)</b></td>
                <td>This category assesses the extent to which the project affects the organization operationally and from a legislative perspective.</td>
            </tr>
            <tr>
                <td><b>Project Management Integration Risks</br>(6 Questions)</b></td>
                <td>This category assesses whether the project demonstrates implementation of key project management control measures and deliverables. This assessment includes addressing the state of the project management plan, project management and control disciplines, and information management processes.</td>
            </tr>
            <tr>
                <td><b>Project Requirements Risks</br>(15 Questions)</b></td>
                <td>This category assesses, by considering the number, type, and degree of certainty of the requirements, the extent to which the specific requirements of the project add risk and complexity.</td>
            </tr>
        </table>
        <h3>Value of sections</h3>
        <p>Each section has its own number of questions with its maximum score described table below</p>
        <table id="table1">
            <tr>
                <th><b>Section</b></th>
                <th><b>Number of Questions</b></th>
                <th><b>Maximum Score</b></th>
            </tr>
            <tr>
                <td><b>Project Characteristics</b></td>
                <td>18</td>
                <td>90</td>
            </tr>
            <tr>
                <td><b>Strategic Management Risks</b></td>
                <td>6</td>
                <td>30</td>
            </tr>
            <tr>
                <td><b>Procurement Risks</b></td>
                <td>9</td>
                <td>45</td>
            </tr>
            <tr>
                <td><b>Human Resource Risks</b></td>
                <td>5</td>
                <td>25</td>
            </tr>
            <tr>
                <td><b>Business Risks</b></td>
                <td>5</td>
                <td>25</td>
            </tr>
            <tr>
                <td><b>Project Management Integration Risks</b></td>
                <td>6</td>
                <td>30</td>
            </tr>
            <tr>
                <td><b>Project Requirements Risks</b></td>
                <td>15</td>
                <td>75</td>
            </tr>
            <tr>
                <td><b>Total</b></td>
                <td>64</td>
                <td>320</td>
            </tr>
        </table>
        <p>
            The questions are all of equal value in the overall score. Please note though that if questions 1, 3, and 11, which deal with money, scope, and time in the project characteristics section, are all answered as '5', a triple constraint condition will apply resulting in '5' response scoring for all questions in this section (i.e. the maximum score of 90 for the section). In addition, if the project has no procurement (addressed in question 2) the minimum score is automatically assigned for each question in the procurement section.
        </p>
        <p>
            The criteria in the PCRA consider a very broad range of potential project risks which stem from virtually every possible root cause relevant for just about any project. However, not every project risk will apply to every project in every instance. When the PCRA was validated in 2009, it was determined that approximately 70% of the project risks reflected in the assessment criteria would apply to any single project. Therefore, when calculating the final PCRA score, the total numeric value is normalized to accurately reflect the more realistic range of relevant risks for a single project.
        </p>
        <h3><b>Complexity and Risk Level Defined</b></h3>
        <p>Level of Complexity and Risk with its score is described in table below</p>
                <table id="table1">
                <tr>
                    <th><b>Complexity and Risk Level</b></th>
                    <th><b>Definition</b></th>
                    <th><b>Score</b></th>
                </tr>
        <?php
        $pdo = new PDO("mysql:host=localhost;dbname=risk_assessment;charset=utf8mb4", 'root', '');
        $stmt = $pdo->query("SELECT Name, Definition, Score FROM complexity_and_risk_level");
        while ( $row = $stmt->fetch(PDO::FETCH_ASSOC)){
            echo "<tr><td>";
            echo ($row['Name']);
            echo ("</td><td>");
            echo ($row['Definition']);
            echo ("</td><td>");
            echo ($row['Score']);
            echo ("</td></tr>\n");
        }
        ?>
            </table>
        
        <h3>Instructions</h3>
        <p>The PCRA contains 64 questions. The questions are all given an equal percentage in the overall score. This tool is accompanied by the PCRA User Guide and an Excel spreadsheet that will tabulate the final score and rating automatically.</p>
        <p>There are a few rules for completing the PCRA:</p>
        <ul>
            <li>Every question must be answered. If you are sure a question does not apply to your project, answer with the lowest score ("1") for that question;</li>
            <li>If the answer to a question is unknown, answer with the highest score ("5") for that question; and</li>
            <li>If you answer "1" to Question 2 in the "Project characteristics" section (3.1), questions in the "Procurement risks" section (3.3) should be answered with a "1" only.</li>
        </ul>
        <p>If you require more specific information regarding the purpose of the section or the significance of a particular rating, please refer to the User Guide. For the definitions of terms, please refer to the Glossary included at the end of the User Guide. Some of the terminology used in the assessment tool may not be a best fit for your organization. Please consult your departmental coordinator on how the terms are to be applied in your organization.</p>
            <p>The tool is also available on-line. For further information on how to setup a user account and complete the assessment online, please contact your departmental coordinator or agency lead.</p>
    
            <button onclick="window.location.href='index.php';" class="button">Back to Project Form</button>
        </body>
</html>
