-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 02:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risk_assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `question`, `scale`) VALUES
(39, 'Describe the overall effect of this project on the organization:\r\n\r\n(1 = Project will fit with the organization\'s current processes, use existing workforce and skills, and not require substantial changes to technology and other infrastructure, 3 = Some changes to processes, staffing models, or technology will be required, 5 = Significant restructuring of business processes, staffing requirements, partner relationships, and infrastructure will be required.', 5),
(40, 'Does the project have a change management plan?\r\n\r\n(1 = Change management will be required and a change management plan has been prepared. Alternatively, there are no significant change management requirements, 3 = Change management will be required and preparation of a change management plan is incorporated or included in the project management plan, 5 = Change management will be required but there are no plans to establish a change management plan)', 5),
(41, 'What is the level of public involvement required to achieve expected outcomes?\r\n\r\n(1 = No public participation is required for project success, 2 = Limited public participation is required for project success, 4 = Moderate public participation is required for project success, 5 = Extensive public participation is required for project success)', 4),
(42, 'What level of legal risk will be introduced by this project through the addition of new liabilities, regulatory requirements, and legislative changes?\r\n\r\n(1 = No legal review is required; no legislative changes are required; legal costs and effort are assessed as low, 2 = One or more risk events will likely occur resulting in legal costs and effort; a legal review has been completed, 3 = One or more risk events will likely occur resulting in legal costs and effort; a legal review has not been completed, 4 = There is a high probability of liability and other legal risks; extensive legal resources will be required during the project; legislative change is required to implement the project; a legal review has been completed, 5 = There is a high probability of liability and other legal risks; extensive legal resources will be required during the project; legislative change is required to implement the project; a legal review has not been completed)', 4),
(43, 'Are there expected challenges to ensure that this project complies with relevant Treasury Board policy requirements, such as those regarding security, accessibility, common look and feel standards for the Internet, and management of government information?\r\n\r\n(1 = The project fully complies with all applicable policies. Alternatively, the project is not subject to any of these policies, 3 = There are some challenges associated with policy requirements, but the project team is adequately equipped to address these, 5 = There are some challenges associated with policy requirements and there is a lack of confidence that policy requirements can be met on schedule and within the budget)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `complexity_and_risk_level`
--

CREATE TABLE `complexity_and_risk_level` (
  `Name` varchar(1000) NOT NULL,
  `Definition` varchar(2000) NOT NULL,
  `Score` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complexity_and_risk_level`
--

INSERT INTO `complexity_and_risk_level` (`Name`, `Definition`, `Score`) VALUES
('Sustaining', 'Project has low risk and complexity. The project outcome affects only a specific service or at most a specific program, and risk mitigations for general project risks are in place. The project does not consume a significant percentage of departmental or agency resources.', 'less than 45'),
('Tactical', 'A project rated at this level affects multiple services within a program and may involve more significant procurement activities. It may involve some information management or information technology (IM/IT) or engineering activities. The project risk profile may indicate that some risks could have serious impacts, requiring carefully planned responses. The scope of a tactical project is operational in nature and delivers new capabilities within limits.', '45 to 63'),
('Evolutionary', 'As indicated by the name, projects within this level of complexity and risk introduce change, new capabilities and may have a fairly extensive scope. Disciplined skills are required to successfully manage evolutionary projects. Scope frequently spans programs and may affect one or two other departments or agencies. There may be substantial change to business process, internal staff, external clients, and technology infrastructure. IM/IT components may represent a significant proportion of total project activity', '64 to 82'),
('Transformational', 'At this level, projects require extensive capabilities and may have a dramatic impact on the organization and potentially other organizations. Horizontal (i.e. multi-departmental, multi-agency, or multi-jurisdictional) projects are transformational in nature. Risks associated with these projects often have serious consequences, such as restructuring the organization, change in senior management, and/or loss of public reputation.', '83 and over');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `question`, `scale`) VALUES
(34, 'Does the organization anticipate a shortage of available personnel with appropriate skills during a significant period of the project?\r\n\r\n(1 = No, 5 = Yes)', 4),
(35, 'What is the predicted stability of the project team? Consider the following criteria:\r\n\r\na. The project team has previously worked together.\r\n\r\nb. A low rate of turnover is expected.\r\n\r\nc. It is expected that a suitable replacement will be readily available.\r\n\r\n(1 = All three criteria are met, 2 = Two of the three criteria are met, 4 = One of the three criteria is met, 5 = None of the three criteria are met)', 2),
(36, 'What percentage of the project team is assigned full-time to the project?\r\n\r\n(1 = over 80 per cent, 2 = 61-80 per cent, 3 = 41-60 per cent, 4 = 20-40 per cent, 5 = under 20 per cent or all part-time)', 5),
(37, 'Consider the following criteria regarding knowledge and experience:\r\n\r\na. The project will use a proven approach.\r\n\r\nb. This type of project has been done before in the Government of Canada.\r\n\r\nc. The project will use resources that have been applied to this type of project before.\r\n\r\n(1 = All three criteria are met, 2 = Two of the three criteria are met, 4 = One of the three criteria is met, 5 = None of the three criteria are met)', 4),
(38, 'Has the assigned project manager worked on a project of this size and complexity before?\r\n\r\n(1 = Yes, 5 = No)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `procurement`
--

CREATE TABLE `procurement` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procurement`
--

INSERT INTO `procurement` (`id`, `question`, `scale`) VALUES
(25, 'The documented project procurement strategy:\r\n\r\n(1 = addresses all project requirements, 3 = is high-level and adequately describes required procurement activities, 5 = is incomplete or inappropriate for the project)', 2),
(26, 'What is the supplier availability and willingness?\r\n\r\n(1 = There are qualified suppliers in the market willing to work with the Government of Canada, 3 = There is a limited number of qualified suppliers in the market or some suppliers are reluctant to work with the Government of Canada, 5 = There is only one supplier or there are no qualified suppliers that can meet the requirements)', 2),
(27, 'Will the appropriate products, goods, or services be supplied in a timely manner (according to specified contract delivery dates or required delivery dates) within the expected cost envelope by a qualified supplier?\r\n\r\n(1 = There is no potential for products, goods, or services not being readily supplied, 3 = There is a slight potential for slippage of project schedule due to procurement complexity or vendor challenges, 5 = There is a potential that the project deliverables, schedule, or budget may be seriously affected by limited qualified bidders, significant request-for-proposal process delays, or extended challenges)', 2),
(28, 'How many of the following statements are true?\r\n\r\na. The personnel involved in the project\'s procurement component have expertise in writing specifications or contracts.\r\n\r\nb. The personnel involved in the project\'s procurement component have subject-matter expertise in the goods or services being procured.\r\n\r\nc. There is a robust review process for contract award.\r\n\r\n(1 = All statements are true, 2 = Two statements are true, 4 = One statement is true, 5 = None of the statements are true)', 3),
(29, 'How many separate contracts associated with key deliverables are planned for this project?\r\n\r\n(1 = One contract, 2 = Two contracts, 3 = Three contracts, 4 = Four contracts, 5 = Five or more contracts)', 3),
(30, 'How many of the following statements are true?\r\n\r\na. The firm or individual obtaining the contract will subcontract to other companies\r\n\r\nb. Contracts are subject to trade agreements\r\n\r\nc. The results of the contract are dependent on the results of another contract\r\n\r\n(1 = None of the statements are true, 3 = One statement is true, 4 = Two statements are true, 5 = All of the statements are true)', 4),
(31, 'Based on the contract, consider the degree of control over supplier selection and anticipated contract style.\r\n\r\n(1 = directed, 2 = a standing offer call-up, 4 = a supply arrangement procurement, 5 = a public tender)', 5),
(32, 'How many of the following statements pertaining to contract management are true?\r\n\r\na. The personnel who wrote the contract are involved in the management of the contract.\r\n\r\nb. There is a standardized acceptance process for the review of the completion of contracts (e.g. peer reviewing or field trials).\r\n\r\nc. The lines of communication between the contract authority and the contractor are well-defined and regularized.\r\n\r\nd. There is a standardized process for reporting progress (e.g. punctual evaluation or regular meetings).\r\n\r\ne. There is a mechanism in place to address any contractual disagreements between parties regarding the completion of a contract.\r\n\r\n(1 = All statements are true, 2 = Four statements are true, 3 = Three statements are true, 4 = Two statements are true, 5 = One or none of the statements are true)', 1),
(33, 'Has PWGSC or a delegated contracting authority been formally engaged through a service agreement to provide adequate support for the procurement process?\r\n\r\n(1 = Yes, or not required, 3 = This is planned but not yet in place, 5 = No)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_characteristics`
--

CREATE TABLE `project_characteristics` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_characteristics`
--

INSERT INTO `project_characteristics` (`id`, `question`, `scale`) VALUES
(1, 'What is the total project cost estimate?\r\n\r\n(1 = $1-5 million, 2 = $5-10 million, 3 = $10-25 million, 4 = $25-100 million, 5 = over $100 million)', 4),
(2, 'What percentage of the total project cost estimate is for procurement?\r\n\r\n(1 = No procurement is required—answer \"1\" to all questions in the \"Procurement risks\" section, 2 = under 25 per cent, 3 = 26-50 per cent, 4 = 51-75 per cent, 5 = over 75 per cent)', 3),
(3, 'Relative to the average project in your organization, which of the following adjectives describes the total project cost estimate?\r\n\r\n(1 = Small, 3 = Medium, 5 = Large)', 5),
(4, 'How many people (part-time or full-time on the project, including Government of Canada employees and individual contractors) are required to complete this project at its peak activity\r\n\r\n(1 = under 10, 2 = 10-25, 3 = 26-100, 4 = 101-250, 5 = over 250)', 5),
(5, 'From project defintion to project close-out, what is the expected duration of the project?\r\n\r\n(1 = under 12 months, 2 = 12-24 months, 3 = 24-36 months, 4 = 36-48 months, 5 = over 48 months)', 4),
(6, 'How many sponsoring or funding departments or agencies are involved?\r\n\r\n(1 = The project involves only one department or agency, 2 = The project involves another department or agency, 3 = The project involves two other departments or agencies, 4 = The pro', 4),
(7, 'How will the outcome of this project change or directly affect business processes, sectors, branches and other departments and agencies?\r\n\r\n(1 = The outcome of this project will affect one business process within a sector, 2 = The outcome of this project ', 4),
(8, 'The proposed or established project governance structure demonstrates adequate support for how many of the following project factors?\r\n\r\na. appropriate representation of stakeholders and executive management;\r\n\r\nb. documented decision-making processes;\r\n\r\nc. documented roles, responsibilities, and authorities within the governance structure;and\r\n\r\nd. documented information requirements.\r\n\r\n(1 = Support for all factors is demonstrated, 2 = Support for three of the factors is demonstrated, 3 = Support for two of the factors is demonstrated, 4 = Support for one of the factors is demonstrated, 5 = Support is not demonstrated for any of the factors)', 4),
(9, 'In supporting the achievement of the expected outcomes, how many of the following criteria apply to the total project cost estimate (either indicative cost estimate or substantive cost estimate)?\r\n\r\na. Cost estimates are generated at the work-package level.\r\n\r\nb. Cost estimates are based on historical data or industry benchmarks.\r\n\r\n(1 = Both criteria are met, 3 = One of the two criteria is met, 5 = None of the criteria are met)', 4),
(10, 'In supporting the achievement of the expected outcomes, how many of the following criteria apply to the costing model?\r\n\r\na. The source of funds has been identified within departmental reference levels.\r\n\r\nb. The funds have been internally committed.\r\n\r\n(1 = Both criteria are met, 3 = One of the two criteria is met, 5 = None of the criteria are met)', 4),
(11, 'Is the project susceptible to time delays? Time delays can have a number of causes, such as the following:\r\n\r\na. Changes in technology;\r\n\r\nb. Requirements of participating organizations;\r\n\r\nc. Seasonal considerations;\r\n\r\nd. The need for policy approvals; and\r\n\r\ne. External influences.\r\n\r\n(1 = No, the project is not susceptible, 3 = Yes, the project is moderately susceptible; time delays will have minor effects on the schedule, 5 = Yes, the project is highly susceptible; time delays will have major effects on the schedule)', 4),
(12, 'Do geographical considerations influence the manner in which the project is conducted? Consider the following statements:\r\n\r\na. Project activities or team members are distributed across a wide geographical area.\r\n\r\nb. The project will be conducted in a remote or difficult location\r\n\r\n(1 = Neither statement applies, 3 = One statement is true, 5 = Both statements are true)', 4),
(13, 'Do environmental considerations influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 4),
(14, 'Are there any socio-economic considerations that must be taken into account?\r\n\r\n(1 = No, 5 = Yes)', 4),
(15, 'Consider how the availability of facilities will influence the manner in which the project is conducted:\r\n\r\n(1 = Appropriate facilities are available to conduct the project, 3 = Facilities available to the project are inadequate, 5 = Facilities are unavailable for the project)', 4),
(16, 'Does public perception influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 4),
(17, 'Do considerations relating to Aboriginal people (including land claims and Aboriginal consultation obligations) influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 4),
(18, 'Do health and safety requirements add significant complexity to the requirements for this project?\r\n\r\n(1 = No, 5 = Yes)', 5);

-- --------------------------------------------------------

--
-- Table structure for table `project_management`
--

CREATE TABLE `project_management` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_management`
--

INSERT INTO `project_management` (`id`, `question`, `scale`) VALUES
(44, 'How many of the following elements are defined in the project management plan?\r\n\r\na. scope\r\nb. costs\r\nc. schedule\r\nd. project controls\r\ne. risks\r\nf. deliverables\r\ng. team or skills\r\n\r\n(1 = All elements are defined, 2 = Five or six elements are defined, 3 = Three or four elements are defined, 4 = One or two elements are defined, 5 = No plan has been completed)', 4),
(45, 'To indicate the extent of the project team\'s being appropriately organized to undertake a project of this scope, how many of these criteria are met?\r\n\r\na. Project team composition, resource levels, and roles and responsibilities are defined and documented.\r\n\r\nb. Resources are dedicated (i.e. available when required).\r\n\r\nc. Responsibilities and required authorities for managers and leads within the project team are defined and documented.\r\n\r\n(1 = All three criteria are met, 2 = Two of the three criteria are met, 4 = One of the three criteria is met, 5 = None of the three criteria are met)', 4),
(46, 'Has a project reporting and control process appropriate for the project been documented?\r\n\r\n(1 = Yes, 3 = The development of a project reporting and control process is a planned activity, but not yet completed, 5 = No)', 4),
(47, 'How many of the following disciplines will, or does the project employ?\r\n\r\na. quality assurance\r\n\r\nb. risk management\r\n\r\nc. outcome management\r\n\r\nd. issue management\r\n\r\n(1 = All four disciplines, 2 = Three of the disciplines, 3 = Two of the disciplines, 4 = One of the disciplines, 5 = None of the disciplines)', 4),
(48, 'Has a risk management plan been completed, and to what degree have appropriate contingency plans been included which respond to the risks as identified in the plan?\r\n\r\nConsider the following criteria:\r\n\r\na. Identified risks have been assessed and prioritized.\r\n\r\nb. Appropriate controls and mitigations are in place for all significant residual risks.\r\n\r\nc. A risk management plan has been integrated into the project management plan.\r\n\r\n(1 = All three criteria are met, OR a risk management plan is not required, 2 = Two of the three criteria are met, 4 = One of the three criteria is met, 5 = None of the three criteria are met)', 4),
(49, 'Is an appropriate information management (IM) process planned or in place to collect, distribute, and protect relevant and important project information, such as designs, project plans, baseline, and registers?\r\n\r\n(1 = Comprehensive information management practices are in place or planned to support the project throughout its life cycle, 3 = Standard IM practices are planned or in place and resourced, 5 = Minimal IM practices are in place or planned within the project)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `project_requirement`
--

CREATE TABLE `project_requirement` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_requirement`
--

INSERT INTO `project_requirement` (`id`, `question`, `scale`) VALUES
(50, 'How many of the following statements are true?\r\n\r\na. The project solution requires a high degree (greater than normal) of availability.\r\n\r\nb. The project solution requires customization beyond normal configuration.\r\n\r\nc. The project solution requires a hi', 4),
(51, 'In defining project requirements, how many of the following statements are true?\r\n\r\na. The requirements can be defined with very few people.\r\n\r\nb. The requirements can be defined in a short period of time.\r\n\r\nc. There are a small number of individual requirements to define.\r\n\r\nd. The requirements do not require a high degree of detail.\r\n\r\n(1 = Four of the statements are true, 2 = Three of the statements are true, 3 = Two of the statements are true, 4 = One of the statements is true, 5 = None of the statements are true)', 4),
(52, 'To what extent have available sources/methods been employed and verified to provide information for this project as applicable (e.g. research, consultations, workshops, surveys, and existing documentation)?\r\n\r\n(1 = All sources/methods have been employed and verified, 2 = All sources/methods have been employed but have not been verified, 3 = Some sources/methods have been employed, 4 = Few sources/methods have been employed, 5 = No information has been gathered or is available)', 4),
(53, 'Have the business requirements been validated with users with an appropriate technique, such as walk-throughs, workshops, and independent verification and validation?\r\n\r\n(1 = Yes, 3 = Validation is a planned activity but has not yet been completed, 5 = No)', 4),
(54, 'Have feasibility studies been conducted, and is there confidence in the assumptions made in the feasibility studies?\r\n\r\n(1 = Feasibility studies are not required, because none of the requirements are technically difficult to implement, 2 = Feasibility studies were conducted and there is confidence in the assumptions made, 4 = Feasibility studies were conducted, but there is not complete confidence in the assumptions made, 5 = Feasibility studies were necessary but not conducted)', 4),
(55, 'What percentage of tasks cannot be fully defined until the completion of previous tasks? These are tasks that may be understood but cannot be documented in detail due to dependency on results from a previous task.\r\n\r\n(1 = under 10 per cent, 2 = 20 per cent, 3 = 30 per cent, 4 = 40 per cent, 5 = over 40 per cent)', 4),
(56, 'To what extent are the project\'s requirements clear, completed, and communicated?\r\n\r\n(1 = All requirements are clear, complete, and communicated, 3 = Up to 10 per cent of total requirements are not complete or are undocumented, 5 = More than 10 per cent of total requirements are not complete or are unclear)', 4),
(57, 'How many of the following project characteristics are expected to remain stable?\r\n\r\na. quality\r\n\r\nb. functionality\r\n\r\nc. schedule\r\n\r\nd. integration\r\n\r\ne. design\r\n\r\nf. testing\r\n\r\n(1 = All of the project characteristics are expected to remain stable, 2 = Five of the six project characteristics are expected to remain stable, 3 = Four of the six project characteristics are expected to remain stable, 4 = Three of the six project characteristics are expected to remain stable, 5 = Two or less of the project characteristics are expected to remain stable)\r\n', 1),
(58, 'Are any other projects dependent on outputs or outcomes of this project?\r\n\r\n(1 = No, 5 = Yes)', 1),
(59, 'Are outcomes of this project dependent on the outputs and/or outcomes of any other projects?\r\n\r\n(1 = No, 5 = Yes)', 1),
(60, 'What degree of integration with externalities, such as other projects, systems, infrastructure, or organizations, is required?\r\n\r\n(1 = There are few complex integration requirements; activities to specify integration are included in the project management plan, 3 = There is adequate understanding and planning for integration, 5 = There are highly complex or numerous integration requirements and insufficient planning of required activities)', 1),
(61, 'What degree of integration is required within the project?\r\n\r\n(1 = There are few complex integration requirements; activities to specify integration are included in the project management plan, 3 = There is adequate understanding and planning for integration, 5 = There are highly complex or numerous integration requirements and insufficient planning of required activities)', 1),
(62, 'Relative to the average (typical) project in your organization, which of the following adjectives describes the number of tasks, elements, or deliverables in the work breakdown structure?\r\n\r\n(1 = Small, 3 = Medium, 5 = Large)', 1),
(63, 'Does the project schedule accommodate the critical path of the project, including appropriate contingencies?\r\n\r\n(1 = Yes, 5 = No, OR no critical path analysis has been performed)', 5),
(64, 'What is the effect on the project of the requirement for scarce resources or resources that are in very high demand?\r\n\r\n(1 = No scarce resources are required OR not applicable, 2 = The project will incur minor delays or minor cost overruns due to scarcity of resources, 3 = The project will incur moderate delays or moderate cost overruns due to scarcity of resources, 4 = The project will incur significant delays or significant cost overruns due to scarcity of resources and must return to Treasury Board for revised approval, 5 = The success of the project is critically dependent on scarce resources)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `risk_assessment_data`
--

CREATE TABLE `risk_assessment_data` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_assessment_data`
--

INSERT INTO `risk_assessment_data` (`id`, `question`, `scale`, `table_name`) VALUES
(1, 'What is the total project cost estimate?\r\n\r\n(1 = $1-5 million, 2 = $5-10 million, 3 = $10-25 million, 4 = $25-100 million, 5 = over $100 million)', 5, 'project_characteristics'),
(2, 'What percentage of the total project cost estimate is for procurement?\r\n\r\n(1 = No procurement is required—answer \"1\" to all questions in the \"Procurement risks\" section, 2 = under 25 per cent, 3 = 26-50 per cent, 4 = 51-75 per cent, 5 = over 75 per cent)', 5, 'project_characteristics'),
(3, 'Relative to the average project in your organization, which of the following adjectives describes the total project cost estimate?\r\n\r\n(1 = Small, 3 = Medium, 5 = Large)', 5, 'project_characteristics'),
(4, 'How many people (part-time or full-time on the project, including Government of Canada employees and individual contractors) are required to complete this project at its peak activity\r\n\r\n(1 = under 10, 2 = 10-25, 3 = 26-100, 4 = 101-250, 5 = over 250)', 5, 'project_characteristics'),
(5, 'From project defintion to project close-out, what is the expected duration of the project?\r\n\r\n(1 = under 12 months, 2 = 12-24 months, 3 = 24-36 months, 4 = 36-48 months, 5 = over 48 months)', 5, 'project_characteristics'),
(6, 'How many sponsoring or funding departments or agencies are involved?\r\n\r\n(1 = The project involves only one department or agency, 2 = The project involves another department or agency, 3 = The project involves two other departments or agencies, 4 = The pro', 5, 'project_characteristics'),
(7, 'How will the outcome of this project change or directly affect business processes, sectors, branches and other departments and agencies?\r\n\r\n(1 = The outcome of this project will affect one business process within a sector, 2 = The outcome of this project ', 5, 'project_characteristics'),
(8, 'The proposed or established project governance structure demonstrates adequate support for how many of the following project factors?\r\n\r\na. appropriate representation of stakeholders and executive management;\r\n\r\nb. documented decision-making processes;\r\n\r', 5, 'project_characteristics'),
(9, 'In supporting the achievement of the expected outcomes, how many of the following criteria apply to the total project cost estimate (either indicative cost estimate or substantive cost estimate)?\r\n\r\na. Cost estimates are generated at the work-package leve', 5, 'project_characteristics'),
(10, 'In supporting the achievement of the expected outcomes, how many of the following criteria apply to the costing model?\r\n\r\na. The source of funds has been identified within departmental reference levels.\r\n\r\nb. The funds have been internally committed.\r\n\r\n(', 5, 'project_characteristics'),
(11, 'Is the project susceptible to time delays? Time delays can have a number of causes, such as the following:\r\n\r\na. Changes in technology;\r\n\r\nb. Requirements of participating organizations;\r\n\r\nc. Seasonal considerations;\r\n\r\nd. The need for policy approvals; ', 5, 'project_characteristics'),
(12, 'Do geographical considerations influence the manner in which the project is conducted? Consider the following statements:\r\n\r\na. Project activities or team members are distributed across a wide geographical area.\r\n\r\nb. The project will be conducted in a re', 5, 'project_characteristics'),
(13, 'Do environmental considerations influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_characteristics'),
(14, 'Are there any socio-economic considerations that must be taken into account?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_characteristics'),
(15, 'Consider how the availability of facilities will influence the manner in which the project is conducted:\r\n\r\n(1 = Appropriate facilities are available to conduct the project, 3 = Facilities available to the project are inadequate, 5 = Facilities are unavai', 5, 'project_characteristics'),
(16, 'Does public perception influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_characteristics'),
(17, 'Do considerations relating to Aboriginal people (including land claims and Aboriginal consultation obligations) influence the manner in which the project is conducted?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_characteristics'),
(18, 'Do health and safety requirements add significant complexity to the requirements for this project?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_characteristics'),
(19, 'How well and how clearly does the project align with the organization\'s mandate and strategic outcomes?\r\n\r\n(1 = The project is directly aligned and it explicitly contributes to the strategic outcomes of the organization or program, 3 = There is good align', 5, 'strategic_management'),
(20, 'What level of priority is the project to the organization?\r\n\r\n(1 = The project is a critical priority: all resources necessary will be allocated to it, 5 = The project is a normal priority: resources may be shared with a project of equal or higher priorit', 5, 'strategic_management'),
(21, 'How thoroughly does the project business case demonstrate the value of the project to the organization?\r\n\r\n(1 = The business case is compelling, and value is extensively documented, OR a business case is not required, 3 = The business case provides a good', 5, 'strategic_management'),
(22, 'To what degree is the organization\'s management and relevant stakeholders aware of the project?\r\n\r\n(1 = There is consistent, clear, and comprehensive understanding of the project at all relevant levels, 3 = There is good general awareness of the project, ', 4, 'strategic_management'),
(23, 'Does the project have a communications plan?\r\n\r\n(1 = Yes, there is a project communications plan, 3 = The project communications plan has not yet been completed, 5 = No, a project communications plan does not exist)', 4, 'strategic_management'),
(24, 'How extensive is the commitment of the organization\'s senior executive management, stakeholders, partners, and project sponsors to the timely and successful completion of this project? Consider the following criteria:\r\n\r\na. A senior project sponsor or man', 5, 'strategic_management'),
(25, 'The documented project procurement strategy:\r\n\r\n(1 = addresses all project requirements, 3 = is high-level and adequately describes required procurement activities, 5 = is incomplete or inappropriate for the project)', 5, 'procurement'),
(26, 'What is the supplier availability and willingness?\r\n\r\n(1 = There are qualified suppliers in the market willing to work with the Government of Canada, 3 = There is a limited number of qualified suppliers in the market or some suppliers are reluctant to wor', 5, 'procurement'),
(27, 'Will the appropriate products, goods, or services be supplied in a timely manner (according to specified contract delivery dates or required delivery dates) within the expected cost envelope by a qualified supplier?\r\n\r\n(1 = There is no potential for produ', 5, 'procurement'),
(28, 'How many of the following statements are true?\r\n\r\na. The personnel involved in the project\'s procurement component have expertise in writing specifications or contracts.\r\n\r\nb. The personnel involved in the project\'s procurement component have subject-matt', 4, 'procurement'),
(29, 'How many separate contracts associated with key deliverables are planned for this project?\r\n\r\n(1 = One contract, 2 = Two contracts, 3 = Three contracts, 4 = Four contracts, 5 = Five or more contracts)', 4, 'procurement'),
(30, 'How many of the following statements are true?\r\n\r\na. The firm or individual obtaining the contract will subcontract to other companies\r\n\r\nb. Contracts are subject to trade agreements\r\n\r\nc. The results of the contract are dependent on the results of anothe', 5, 'procurement'),
(31, 'Based on the contract, consider the degree of control over supplier selection and anticipated contract style.\r\n\r\n(1 = directed, 2 = a standing offer call-up, 4 = a supply arrangement procurement, 5 = a public tender)', 5, 'procurement'),
(32, 'How many of the following statements pertaining to contract management are true?\r\n\r\na. The personnel who wrote the contract are involved in the management of the contract.\r\n\r\nb. There is a standardized acceptance process for the review of the completion o', 2, 'procurement'),
(33, 'Has PWGSC or a delegated contracting authority been formally engaged through a service agreement to provide adequate support for the procurement process?\r\n\r\n(1 = Yes, or not required, 3 = This is planned but not yet in place, 5 = No)', 2, 'procurement'),
(34, 'Does the organization anticipate a shortage of available personnel with appropriate skills during a significant period of the project?\r\n\r\n(1 = No, 5 = Yes)', 5, 'hr'),
(35, 'What is the predicted stability of the project team? Consider the following criteria:\r\n\r\na. The project team has previously worked together.\r\n\r\nb. A low rate of turnover is expected.\r\n\r\nc. It is expected that a suitable replacement will be readily availab', 3, 'hr'),
(36, 'What percentage of the project team is assigned full-time to the project?\r\n\r\n(1 = over 80 per cent, 2 = 61-80 per cent, 3 = 41-60 per cent, 4 = 20-40 per cent, 5 = under 20 per cent or all part-time)', 3, 'hr'),
(37, 'Consider the following criteria regarding knowledge and experience:\r\n\r\na. The project will use a proven approach.\r\n\r\nb. This type of project has been done before in the Government of Canada.\r\n\r\nc. The project will use resources that have been applied to t', 2, 'hr'),
(38, 'Has the assigned project manager worked on a project of this size and complexity before?\r\n\r\n(1 = Yes, 5 = No)', 1, 'hr'),
(39, 'Describe the overall effect of this project on the organization:\r\n\r\n(1 = Project will fit with the organization\'s current processes, use existing workforce and skills, and not require substantial changes to technology and other infrastructure, 3 = Some ch', 1, 'business'),
(40, 'Does the project have a change management plan?\r\n\r\n(1 = Change management will be required and a change management plan has been prepared. Alternatively, there are no significant change management requirements, 3 = Change management will be required and p', 1, 'business'),
(41, 'What is the level of public involvement required to achieve expected outcomes?\r\n\r\n(1 = No public participation is required for project success, 2 = Limited public participation is required for project success, 4 = Moderate public participation is required', 2, 'business'),
(42, 'What level of legal risk will be introduced by this project through the addition of new liabilities, regulatory requirements, and legislative changes?\r\n\r\n(1 = No legal review is required; no legislative changes are required; legal costs and effort are ass', 2, 'business'),
(43, 'Are there expected challenges to ensure that this project complies with relevant Treasury Board policy requirements, such as those regarding security, accessibility, common look and feel standards for the Internet, and management of government information', 2, 'business'),
(44, 'How many of the following elements are defined in the project management plan?\r\n\r\na. scope\r\nb. costs\r\nc. schedule\r\nd. project controls\r\ne. risks\r\nf. deliverables\r\ng. team or skills\r\n\r\n(1 = All elements are defined, 2 = Five or six elements are defined, 3 ', 4, 'project_management'),
(45, 'To indicate the extent of the project team\'s being appropriately organized to undertake a project of this scope, how many of these criteria are met?\r\n\r\na. Project team composition, resource levels, and roles and responsibilities are defined and documented', 3, 'project_management'),
(46, 'Has a project reporting and control process appropriate for the project been documented?\r\n\r\n(1 = Yes, 3 = The development of a project reporting and control process is a planned activity, but not yet completed, 5 = No)', 2, 'project_management'),
(47, 'How many of the following disciplines will, or does the project employ?\r\n\r\na. quality assurance\r\n\r\nb. risk management\r\n\r\nc. outcome management\r\n\r\nd. issue management\r\n\r\n(1 = All four disciplines, 2 = Three of the disciplines, 3 = Two of the disciplines, 4', 2, 'project_management'),
(48, 'Has a risk management plan been completed, and to what degree have appropriate contingency plans been included which respond to the risks as identified in the plan?\r\n\r\nConsider the following criteria:\r\n\r\na. Identified risks have been assessed and prioriti', 3, 'project_management'),
(49, 'Is an appropriate information management (IM) process planned or in place to collect, distribute, and protect relevant and important project information, such as designs, project plans, baseline, and registers?\r\n\r\n(1 = Comprehensive information management', 3, 'project_management'),
(50, 'How many of the following statements are true?\r\n\r\na. The project solution requires a high degree (greater than normal) of availability.\r\n\r\nb. The project solution requires customization beyond normal configuration.\r\n\r\nc. The project solution requires a hi', 4, 'project_requirement'),
(51, 'In defining project requirements, how many of the following statements are true?\r\n\r\na. The requirements can be defined with very few people.\r\n\r\nb. The requirements can be defined in a short period of time.\r\n\r\nc. There are a small number of individual requ', 2, 'project_requirement'),
(52, 'To what extent have available sources/methods been employed and verified to provide information for this project as applicable (e.g. research, consultations, workshops, surveys, and existing documentation)?\r\n\r\n(1 = All sources/methods have been employed a', 2, 'project_requirement'),
(53, 'Have the business requirements been validated with users with an appropriate technique, such as walk-throughs, workshops, and independent verification and validation?\r\n\r\n(1 = Yes, 3 = Validation is a planned activity but has not yet been completed, 5 = No', 2, 'project_requirement'),
(54, 'Have feasibility studies been conducted, and is there confidence in the assumptions made in the feasibility studies?\r\n\r\n(1 = Feasibility studies are not required, because none of the requirements are technically difficult to implement, 2 = Feasibility stu', 3, 'project_requirement'),
(55, 'What percentage of tasks cannot be fully defined until the completion of previous tasks? These are tasks that may be understood but cannot be documented in detail due to dependency on results from a previous task.\r\n\r\n(1 = under 10 per cent, 2 = 20 per cen', 4, 'project_requirement'),
(56, 'To what extent are the project\'s requirements clear, completed, and communicated?\r\n\r\n(1 = All requirements are clear, complete, and communicated, 3 = Up to 10 per cent of total requirements are not complete or are undocumented, 5 = More than 10 per cent o', 2, 'project_requirement'),
(57, 'How many of the following project characteristics are expected to remain stable?\r\n\r\na. quality\r\n\r\nb. functionality\r\n\r\nc. schedule\r\n\r\nd. integration\r\n\r\ne. design\r\n\r\nf. testing\r\n\r\n(1 = All of the project characteristics are expected to remain stable, 2 = Fi', 2, 'project_requirement'),
(58, 'Are any other projects dependent on outputs or outcomes of this project?\r\n\r\n(1 = No, 5 = Yes)', 3, 'project_requirement'),
(59, 'Are outcomes of this project dependent on the outputs and/or outcomes of any other projects?\r\n\r\n(1 = No, 5 = Yes)', 5, 'project_requirement'),
(60, 'What degree of integration with externalities, such as other projects, systems, infrastructure, or organizations, is required?\r\n\r\n(1 = There are few complex integration requirements; activities to specify integration are included in the project management', 5, 'project_requirement'),
(61, 'What degree of integration is required within the project?\r\n\r\n(1 = There are few complex integration requirements; activities to specify integration are included in the project management plan, 3 = There is adequate understanding and planning for integrat', 2, 'project_requirement'),
(62, 'Relative to the average (typical) project in your organization, which of the following adjectives describes the number of tasks, elements, or deliverables in the work breakdown structure?\r\n\r\n(1 = Small, 3 = Medium, 5 = Large)', 2, 'project_requirement'),
(63, 'Does the project schedule accommodate the critical path of the project, including appropriate contingencies?\r\n\r\n(1 = Yes, 5 = No, OR no critical path analysis has been performed)', 2, 'project_requirement'),
(64, 'What is the effect on the project of the requirement for scarce resources or resources that are in very high demand?\r\n\r\n(1 = No scarce resources are required OR not applicable, 2 = The project will incur minor delays or minor cost overruns due to scarcity', 2, 'project_requirement');

-- --------------------------------------------------------

--
-- Table structure for table `strategic_management`
--

CREATE TABLE `strategic_management` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strategic_management`
--

INSERT INTO `strategic_management` (`id`, `question`, `scale`) VALUES
(19, 'How well and how clearly does the project align with the organization\'s mandate and strategic outcomes?\r\n\r\n(1 = The project is directly aligned and it explicitly contributes to the strategic outcomes of the organization or program, 3 = There is good align', 5),
(20, 'What level of priority is the project to the organization?\r\n\r\n(1 = The project is a critical priority: all resources necessary will be allocated to it, 5 = The project is a normal priority: resources may be shared with a project of equal or higher priority)', 5),
(21, 'How thoroughly does the project business case demonstrate the value of the project to the organization?\r\n\r\n(1 = The business case is compelling, and value is extensively documented, OR a business case is not required, 3 = The business case provides a good demonstration of value; some details require further clarification, 5 = The business case does not demonstrate value or is not complete)', 4),
(22, 'To what degree is the organization\'s management and relevant stakeholders aware of the project?\r\n\r\n(1 = There is consistent, clear, and comprehensive understanding of the project at all relevant levels, 3 = There is good general awareness of the project, its implications, and its budget, 5 = There is minimal awareness of the project in relevant levels of the organization)', 4),
(23, 'Does the project have a communications plan?\r\n\r\n(1 = Yes, there is a project communications plan, 3 = The project communications plan has not yet been completed, 5 = No, a project communications plan does not exist)', 4),
(24, 'How extensive is the commitment of the organization\'s senior executive management, stakeholders, partners, and project sponsors to the timely and successful completion of this project? Consider the following criteria:\r\n\r\na. A senior project sponsor or management champion is engaged.\r\n\r\nb. Stakeholders and partners are willing to reallocate resources if necessary.\r\n\r\nc. Senior executive management oversight is in place.\r\n\r\nd. Commitment from all stakeholders is confirmed.\r\n\r\n(1 = All four criteria are met, 2 = Three of the four criteria are met, 3 = Two of the four criteria are met, 4 = One of the four criteria is met, 5 = None of the four criteria are met.)', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procurement`
--
ALTER TABLE `procurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_characteristics`
--
ALTER TABLE `project_characteristics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_management`
--
ALTER TABLE `project_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_requirement`
--
ALTER TABLE `project_requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_assessment_data`
--
ALTER TABLE `risk_assessment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strategic_management`
--
ALTER TABLE `strategic_management`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `procurement`
--
ALTER TABLE `procurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_characteristics`
--
ALTER TABLE `project_characteristics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `project_management`
--
ALTER TABLE `project_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `project_requirement`
--
ALTER TABLE `project_requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `strategic_management`
--
ALTER TABLE `strategic_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
