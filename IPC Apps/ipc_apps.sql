-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2022 at 08:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipc_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Core component 1: Infection Prevention and Control (IPC) programme', '2022-08-20 05:03:47', '2022-08-20 05:03:47'),
(4, 'Core component 2: Infection Prevention and Control (IPC) guidelines', '2022-08-20 05:04:14', '2022-08-20 05:04:14'),
(5, 'Core component 3: Infection Prevention and Control (IPC) education and training', '2022-08-20 05:04:28', '2022-08-20 05:04:28'),
(6, 'Core component 4: Monitoring/audit of IPC practices and feedback', '2022-08-20 05:04:41', '2022-08-20 05:04:41'),
(7, 'Core component 5: Workload, staffing and bed occupancy', '2022-08-20 05:04:58', '2022-08-20 05:04:58'),
(8, 'Core component 6: Built environment, materials and equipment for IPC at the facility level', '2022-08-20 05:05:24', '2022-08-20 05:05:24'),
(9, 'Core component 7: Health care-associated infection (HAI) surveillance', '2022-08-20 05:05:39', '2022-08-20 05:05:39'),
(10, 'Core component 8: Multimodal strategies16 for implementation of infection prevention and  control (IPC) interventions', '2022-08-20 05:05:55', '2022-08-20 05:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `description`, `remarks`, `created_at`, `updated_at`) VALUES
(2, 'Health Facility Assessment Tool', 'Health Facility Assessment Tool INFECTION PREVENTION AND CONTROL ASSESSMENT FRAMEWORK (IPCAF) AT THE FACILITY LEVEL IN SELECTIVE DISTRICTS IN BANGLADESH', 'Tools', '2022-08-20 05:49:02', '2022-08-20 05:49:11'),
(3, 'CONSENT for Health Facility Survey', 'FIND THE MANAGER, THE PERSON IN-CHARGE OF THE FACILITY, OR THE MOST SENIOR HEALTH WORKER RESPONSIBLE FOR CLIENT SERVICES WHO IS PRESENT AT THE FACILITY.', 'Health Facility Survey', '2022-08-20 05:55:07', '2022-08-20 05:56:02'),
(4, 'Lorem ipsum', 'visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Test', '2022-08-20 06:24:03', '2022-08-20 06:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `develop_questions`
--

CREATE TABLE `develop_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile`, `gender`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Razidul Islam Rasel', 'razidul.rasel@gmail.com', 1741793851, 'Male', 'Web Developer', '2022-08-11 04:20:04', '2022-08-20 05:45:30'),
(3, 'Tabarul Islam', 'tabarul@gmail.com', 1741793982, 'Male', 'Web Developer', '2022-08-20 05:44:38', '2022-08-20 05:44:38'),
(4, 'Raton Kumar', 'raton@gmail.com', 1741793800, 'Male', 'Lead Developer', '2022-08-20 05:45:10', '2022-08-20 05:45:10'),
(5, 'Julhas Sujan', 'julhas@gmail.com', 1741793877, 'Male', 'CEO', '2022-08-20 05:45:59', '2022-08-20 05:45:59'),
(6, 'Rasel Rana', 'rasel@gmail.com', 1741793877, 'Male', 'Managing Director', '2022-08-20 05:46:25', '2022-08-20 05:46:25'),
(7, 'Abul Hasnat Parag', 'parag@gmail.com', 1741793877, 'Male', 'Team Manager', '2022-08-20 05:46:49', '2022-08-20 05:46:49'),
(8, 'Golam Mastafa', 'mastafa@gmail.com', 1732157536, 'Male', 'Accounts Manager', '2022-08-20 05:47:16', '2022-08-20 05:47:16'),
(9, 'Shahin', 'shagor@gmail.com', 1990944371, 'Male', 'Team Manager', '2022-08-20 06:25:46', '2022-08-20 06:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_04_16_172646_create_users_table', 1),
(4, '2022_05_28_183804_create_contents_table', 1),
(5, '2022_06_06_195257_create_questions_table', 1),
(6, '2022_06_20_181949_create_employees_table', 1),
(7, '2022_06_22_175632_create_categories_table', 1),
(8, '2022_07_03_191107_create_options_table', 1),
(9, '2022_07_17_111131_create_question_option_scores_table', 1),
(10, '2022_07_25_054234_create_develop_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(6, '3', '1. Do you have an IPC programme? Choose one answer', '2022-08-20 05:07:50', '2022-08-20 05:07:50'),
(7, '3', '2. Is the IPC programme supported by an IPC team comprising of IPC trained professionals( )?4 Choose one answer', '2022-08-20 05:08:49', '2022-08-20 05:08:49'),
(8, '3', '3. Does the IPC team have at least one full-time IPC professional or equivalent (nurse or doctor working 100% in IPC) available? Choose oneanswer', '2022-08-20 05:58:05', '2022-08-20 05:58:05'),
(9, '3', '4. Doesthe IPC team or focal personhavededicated timefor IPC activities?', '2022-08-20 05:58:37', '2022-08-20 05:58:37'),
(10, '3', '5. Does the IPC team include both doctors and nurses?', '2022-08-20 05:58:59', '2022-08-20 05:58:59'),
(11, '3', '6. Do you have an IPC committee actively supporting the IPC team?', '2022-08-20 05:59:25', '2022-08-20 05:59:25'),
(12, '4', '1. Does your facility have the expertise (in IPC and/or infectious diseases) for developing or adapting guidelines/national guideline?', '2022-08-20 06:00:09', '2022-08-20 06:00:09'),
(13, '4', '2A. IPC Standard precautions?', '2022-08-20 06:00:52', '2022-08-20 06:00:52'),
(14, '4', '2B. Hand hygiene?', '2022-08-20 06:01:20', '2022-08-20 06:01:20'),
(15, '4', '2C. Transmission-based precautions?6', '2022-08-20 06:01:42', '2022-08-20 06:01:42'),
(16, '4', '2D. Outbreak management and preparedness?', '2022-08-20 06:02:21', '2022-08-20 06:02:21'),
(17, '5', '1. Are there personnel with the IPCexpertise (in  IPCand/orinfectious diseases) to lead IPC training?', '2022-08-20 06:02:45', '2022-08-20 06:02:45'),
(18, '5', '2. Are there additional non-IPC personnel with adequate skills to serve as trainers and mentors (for example, link nurses or doctors, champions)? Choose one answer', '2022-08-20 06:03:52', '2022-08-20 06:03:52'),
(19, '5', '3. How frequently do health care workers receive training regarding IPC in yourfacility? Choose one answer', '2022-08-20 06:04:44', '2022-08-20 06:04:44'),
(20, '6', '1. Do you have trained personnel responsible for monitoring/audit of  IPC practices and feedback?', '2022-08-20 06:05:39', '2022-08-20 06:05:39'),
(21, '6', '2. Do you have a well-defined monitoring plan with clear goals, targetsand  activities(includingtoolstocollect data inasystematic way)?', '2022-08-20 06:05:58', '2022-08-20 06:05:58'),
(23, '5', '4. How frequently do cleaners and other personnel directly involved in patient care receive training regarding IPC in your facility? Choose one answer', '2022-08-20 11:38:23', '2022-08-20 11:38:23'),
(24, '5', '5.Does administrative staff (Director/  Superintendent/ UH&FPO/ UFPO/ RMO, etc.)  receive general training regarding IPC in your  facility? Choose one answer', '2022-08-20 11:38:48', '2022-08-20 11:38:48'),
(25, '6', '3. Which processes and indicators do you monitor in your facility? Tick all that apply', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(26, '6', '4. How frequently is the WHO Hand Hygiene Self-Assessment Framework Survey 21 undertaken? Choose one answer', '2022-08-20 11:41:57', '2022-08-20 11:41:57'),
(27, '7', '1. Are appropriate staffing levels assessed in your facility according to patient workload using national standards or a standard staffing needs assessment tool such as the WHO Workload indicators of staffing need24 method?', '2022-08-20 11:42:31', '2022-08-20 11:42:31'),
(28, '7', '2. Is an agreed (that is, WHO or national) ratio of health care workers to  patients25 maintained across your facility? Choose one answer', '2022-08-20 11:43:31', '2022-08-20 11:43:31'),
(29, '7', '3. Is a system in place in your facility to act on the results of the staffing  needs assessments when staffing levels are deemed to be too low?', '2022-08-20 11:43:58', '2022-08-20 11:43:58'),
(30, '7', '4. Is the design of wards in your facility in accordance with international  standards14 regarding bed capacity? (Standards are the requirements that must be met to achieve minimum essential environmental health conditions in health-care settings. They must be clear, essential and verifiable statements) Choose one answer', '2022-08-20 11:47:34', '2022-08-20 11:47:34'),
(32, '7', '5. Is bed occupancy in your facility kept to one patient per bed? Choose one answer', '2022-08-20 12:01:35', '2022-08-20 12:01:35'),
(33, '8', '1. Are water services available at all times and of sufficient quantity for all\r\n uses (for example, hand washing, drinking, personal hygiene, medical activities, sterilization, decontamination, cleaning and laundry)?\r\nChoose one answer', '2022-08-20 12:03:33', '2022-08-20 12:03:33'),
(34, '8', '2. Is a reliable safe drinking water station present and accessible for staff,\r\n patients and families at all times and in all locations/wards? Choose one answer', '2022-08-20 12:04:33', '2022-08-20 12:04:33'),
(35, '8', '3. Are functioning hand hygiene stations (that is, soap and water)\r\n available at all points of care? Choose one answer', '2022-08-20 12:09:32', '2022-08-20 12:09:32'),
(36, '8', '4. In your facility, are ≥ 4 toilets or improved latrines28 available for outpatient settings or ≥ 1 per 20 beds for inpatient settings?\r\nChoose oneanswer', '2022-08-20 12:10:54', '2022-08-20 12:10:54'),
(37, '9', '1. Is surveillance a defined component of your IPC programme?', '2022-08-20 12:11:28', '2022-08-20 12:11:28'),
(38, '9', '2. Do you have personnel responsible for surveillance activities?', '2022-08-20 12:11:49', '2022-08-20 12:11:49'),
(39, '9', '3. Have the professionals responsible for surveillance activities been trained in basic epidemiology, surveillance and IPC (that is, capacity to oversee surveillance methods, data management and interpretation)?', '2022-08-20 12:12:10', '2022-08-20 12:12:10'),
(40, '9', '4.Do you have informatics/IT support to conduct your surveillance (for example, equipment, mobile technologies, electronic health records)?', '2022-08-20 12:12:31', '2022-08-20 12:12:31'),
(41, '9', '5.Do you go through a prioritization exercise to determine the HAIs to be targeted for surveillance according to the local context (that is, identifying infections that are major causes of morbidity and mortality in the facility)?', '2022-08-20 12:12:53', '2022-08-20 12:12:53'),
(42, '10', '1. Do you use multimodal strategies16 to implement IPC\r\n interventions?', '2022-08-20 12:13:23', '2022-08-20 12:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `question_option_score`
--

CREATE TABLE `question_option_score` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_option_score`
--

INSERT INTO `question_option_score` (`id`, `question_id`, `option`, `score`, `created_at`, `updated_at`) VALUES
(1, '2', 'Yes, Completly.', '10', '2022-08-11 04:28:14', '2022-08-11 04:28:14'),
(2, '2', 'Yes', '5', '2022-08-11 04:28:14', '2022-08-11 04:28:14'),
(3, '2', 'No', '0', '2022-08-11 04:28:14', '2022-08-11 04:28:14'),
(4, '3', 'Yes', '10', '2022-08-11 04:36:26', '2022-08-11 04:36:26'),
(5, '3', 'No', '0', '2022-08-11 04:36:27', '2022-08-11 04:36:27'),
(6, '4', 'Yes, Completly.', '10', '2022-08-11 04:38:28', '2022-08-11 04:38:28'),
(7, '4', 'Yes', '5', '2022-08-11 04:38:28', '2022-08-11 04:38:28'),
(8, '4', 'No', '0', '2022-08-11 04:38:28', '2022-08-11 04:38:28'),
(9, '5', 'Yes', '10', '2022-08-11 04:39:18', '2022-08-11 04:39:18'),
(10, '5', 'No', '5', '2022-08-11 04:39:18', '2022-08-11 04:39:18'),
(11, '6', 'No', '0', '2022-08-20 05:07:50', '2022-08-20 05:07:50'),
(12, '6', 'Yes, without clearly defined objectives', '5', '2022-08-20 05:07:50', '2022-08-20 05:07:50'),
(13, '6', 'Yes, with clearly defined objectives and annual activity plan', '10', '2022-08-20 05:07:50', '2022-08-20 05:07:50'),
(14, '7', 'No', '0', '2022-08-20 05:08:49', '2022-08-20 05:08:49'),
(15, '7', 'Not a team, only an IPC focal person', '5', '2022-08-20 05:08:49', '2022-08-20 05:08:49'),
(16, '7', 'Yes', '10', '2022-08-20 05:08:49', '2022-08-20 05:08:49'),
(17, '8', 'No IPC professional available', '0', '2022-08-20 05:58:05', '2022-08-20 05:58:05'),
(18, '8', 'No, only a part-time IPC professional available', '2.5', '2022-08-20 05:58:05', '2022-08-20 05:58:05'),
(19, '8', 'Yes, one per > 250 beds', '5', '2022-08-20 05:58:05', '2022-08-20 05:58:05'),
(20, '8', 'Yes, one per ≤ 250 beds', '10', '2022-08-20 05:58:05', '2022-08-20 05:58:05'),
(21, '9', 'No', '0', '2022-08-20 05:58:37', '2022-08-20 05:58:37'),
(22, '9', 'Yes', '10', '2022-08-20 05:58:37', '2022-08-20 05:58:37'),
(23, '10', 'No', '0', '2022-08-20 05:58:59', '2022-08-20 05:58:59'),
(24, '10', 'Yes', '10', '2022-08-20 05:58:59', '2022-08-20 05:58:59'),
(25, '11', 'No', '0', '2022-08-20 05:59:25', '2022-08-20 05:59:25'),
(26, '11', 'Yes', '10', '2022-08-20 05:59:25', '2022-08-20 05:59:25'),
(27, '12', 'No', '0', '2022-08-20 06:00:09', '2022-08-20 06:00:09'),
(28, '12', 'Yes', '7.5', '2022-08-20 06:00:09', '2022-08-20 06:00:09'),
(29, '13', 'No', '0', '2022-08-20 06:00:52', '2022-08-20 06:00:52'),
(30, '13', 'Yes', '2.5', '2022-08-20 06:00:52', '2022-08-20 06:00:52'),
(31, '14', 'No', '0', '2022-08-20 06:01:20', '2022-08-20 06:01:20'),
(32, '14', 'Yes', '2.5', '2022-08-20 06:01:20', '2022-08-20 06:01:20'),
(33, '15', 'No', '0', '2022-08-20 06:01:42', '2022-08-20 06:01:42'),
(34, '15', 'Yes', '2.5', '2022-08-20 06:01:42', '2022-08-20 06:01:42'),
(35, '16', 'No', '0', '2022-08-20 06:02:21', '2022-08-20 06:02:21'),
(36, '16', 'Yes', '2.5', '2022-08-20 06:02:21', '2022-08-20 06:02:21'),
(37, '17', 'No', '0', '2022-08-20 06:02:45', '2022-08-20 06:02:45'),
(38, '17', 'Yes', '10', '2022-08-20 06:02:45', '2022-08-20 06:02:45'),
(39, '18', 'No', '0', '2022-08-20 06:03:52', '2022-08-20 06:03:52'),
(40, '18', 'Yes', '10', '2022-08-20 06:03:52', '2022-08-20 06:03:52'),
(41, '19', 'Never or rarely', '0', '2022-08-20 06:04:44', '2022-08-20 06:04:44'),
(42, '19', 'New employee orientation only for health care workers', '5', '2022-08-20 06:04:44', '2022-08-20 06:04:44'),
(43, '19', 'New employee orientation and regular (at least annually) IPC trainingforhealthcareworkersofferedbutnotmandatory', '10', '2022-08-20 06:04:44', '2022-08-20 06:04:44'),
(44, '19', 'New employee orientation and regular (at least annually) mandatory IPC training for all health care workers', '15', '2022-08-20 06:04:44', '2022-08-20 06:04:44'),
(45, '20', 'No', '0', '2022-08-20 06:05:39', '2022-08-20 06:05:39'),
(46, '20', 'Yes', '10', '2022-08-20 06:05:39', '2022-08-20 06:05:39'),
(47, '21', 'No', '0', '2022-08-20 06:05:58', '2022-08-20 06:05:58'),
(48, '21', 'Yes', '7.5', '2022-08-20 06:05:58', '2022-08-20 06:05:58'),
(49, '22', 'Yes', '10', '2022-08-20 06:29:35', '2022-08-20 06:29:35'),
(50, '22', 'Yes, Complete', '15', '2022-08-20 06:29:35', '2022-08-20 06:29:35'),
(51, '22', 'No', '0', '2022-08-20 06:29:35', '2022-08-20 06:29:35'),
(52, '23', 'Never or rarely', '0', '2022-08-20 11:38:23', '2022-08-20 11:38:23'),
(53, '23', 'New employee orientation only for other personnel', '5', '2022-08-20 11:38:23', '2022-08-20 11:38:23'),
(54, '23', 'New employee orientation and regular (at least annually) training for other personnel offered but not mandatory', '10', '2022-08-20 11:38:23', '2022-08-20 11:38:23'),
(55, '23', 'New employee orientation and regular (at least annually) mandatory IPC training for other personnel', '15', '2022-08-20 11:38:23', '2022-08-20 11:38:23'),
(56, '24', 'No', '0', '2022-08-20 11:38:48', '2022-08-20 11:38:48'),
(57, '24', 'Yes', '5', '2022-08-20 11:38:48', '2022-08-20 11:38:48'),
(58, '25', 'None', '0', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(59, '25', 'Hand hygiene compliance (using the WHO hand hygiene observation tool20 or equivalent)', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(60, '25', 'Intravascular catheter insertion and/or care', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(61, '25', 'Wound dressing change', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(62, '25', 'Transmission-based precautions and isolation to prevent the spread of multidrug resistant organisms (MDRO)', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(63, '25', 'Cleaning of the ward environment', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(64, '25', 'Disinfection and sterilization of medical equipment/instruments', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(65, '25', 'Consumption/usage of alcohol-based hand rub or soap', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(66, '25', 'Consumption/usage of antimicrobial agents', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(67, '25', 'Waste management', '5', '2022-08-20 11:41:09', '2022-08-20 11:41:09'),
(68, '26', 'Never', '0', '2022-08-20 11:41:57', '2022-08-20 11:41:57'),
(69, '26', 'Periodically, but no regular schedule', '2.5', '2022-08-20 11:41:57', '2022-08-20 11:41:57'),
(70, '26', 'At least annually', '5', '2022-08-20 11:41:57', '2022-08-20 11:41:57'),
(71, '27', 'No', '0', '2022-08-20 11:42:31', '2022-08-20 11:42:31'),
(72, '27', 'Yes', '5', '2022-08-20 11:42:31', '2022-08-20 11:42:31'),
(73, '28', 'No', '0', '2022-08-20 11:43:31', '2022-08-20 11:43:31'),
(74, '28', 'Yes, for staff in less than 50% of units', '5', '2022-08-20 11:43:31', '2022-08-20 11:43:31'),
(75, '28', 'Yes, for staff in more than 50% of units', '10', '2022-08-20 11:43:31', '2022-08-20 11:43:31'),
(76, '28', 'Yes, for all health care workers in the facility', '15', '2022-08-20 11:43:31', '2022-08-20 11:43:31'),
(77, '29', 'No', '0', '2022-08-20 11:43:58', '2022-08-20 11:43:58'),
(78, '29', 'Yes', '10', '2022-08-20 11:43:58', '2022-08-20 11:43:58'),
(79, '30', 'No', '0', '2022-08-20 11:47:34', '2022-08-20 11:47:34'),
(80, '30', 'Yes, but only in certain departments', '5', '2022-08-20 11:47:34', '2022-08-20 11:47:34'),
(81, '30', 'Yes, for all departments (including emergency department and pediatrics)', '15', '2022-08-20 11:47:34', '2022-08-20 11:47:34'),
(82, '31', 'No', '0', '2022-08-20 11:58:59', '2022-08-20 11:58:59'),
(83, '31', 'Yes, but only in certain departments', '5', '2022-08-20 11:58:59', '2022-08-20 11:58:59'),
(84, '31', 'Yes, for all units (including emergency departments and pediatrics)', '15', '2022-08-20 11:58:59', '2022-08-20 11:58:59'),
(85, '32', 'No', '0', '2022-08-20 12:01:35', '2022-08-20 12:01:35'),
(86, '32', 'Yes, but only in certain departments', '5', '2022-08-20 12:01:35', '2022-08-20 12:01:35'),
(87, '32', 'Yes, for all units (including emergency departments and pediatrics)', '15', '2022-08-20 12:01:35', '2022-08-20 12:01:35'),
(88, '33', 'No, available on average < 5 days per week', '0', '2022-08-20 12:03:33', '2022-08-20 12:03:33'),
(89, '33', 'Yes, available on average ≥ 5 days per week or every day but not of sufficient quantity', '2.5', '2022-08-20 12:03:33', '2022-08-20 12:03:33'),
(90, '33', 'Yes, every day and of sufficient quantity', '7.5', '2022-08-20 12:03:33', '2022-08-20 12:03:33'),
(91, '34', 'No, not available', '0', '2022-08-20 12:04:33', '2022-08-20 12:04:33'),
(92, '34', 'Sometimes, or only in some places or not available for all users', '2.5', '2022-08-20 12:04:33', '2022-08-20 12:04:33'),
(93, '34', 'Yes, accessible at all times and for all wards/groups', '7.5', '2022-08-20 12:04:33', '2022-08-20 12:04:33'),
(94, '35', 'No, not present', '0', '2022-08-20 12:09:32', '2022-08-20 12:09:32'),
(95, '35', 'Yes, stations present, but supplies are not reliably available', '2.5', '2022-08-20 12:09:32', '2022-08-20 12:09:32'),
(96, '35', 'Yes, with reliably available supplies', '7.5', '2022-08-20 12:09:32', '2022-08-20 12:09:32'),
(97, '36', 'Less than required number of toilets or latrines available and functioning', '0', '2022-08-20 12:10:54', '2022-08-20 12:10:54'),
(98, '36', 'Sufficient number present but not all functioning', '2.5', '2022-08-20 12:10:54', '2022-08-20 12:10:54'),
(99, '36', 'Sufficient number present and functioning', '7.5', '2022-08-20 12:10:54', '2022-08-20 12:10:54'),
(100, '37', 'No', '0', '2022-08-20 12:11:28', '2022-08-20 12:11:28'),
(101, '37', 'Yes', '5', '2022-08-20 12:11:28', '2022-08-20 12:11:28'),
(102, '38', 'No', '0', '2022-08-20 12:11:49', '2022-08-20 12:11:49'),
(103, '38', 'Yes', '5', '2022-08-20 12:11:49', '2022-08-20 12:11:49'),
(104, '39', 'No', '0', '2022-08-20 12:12:10', '2022-08-20 12:12:10'),
(105, '39', 'Yes', '5', '2022-08-20 12:12:10', '2022-08-20 12:12:10'),
(106, '40', 'No', '0', '2022-08-20 12:12:31', '2022-08-20 12:12:31'),
(107, '40', 'Yes', '5', '2022-08-20 12:12:31', '2022-08-20 12:12:31'),
(108, '41', 'No', '0', '2022-08-20 12:12:53', '2022-08-20 12:12:53'),
(109, '41', 'Yes', '5', '2022-08-20 12:12:53', '2022-08-20 12:12:53'),
(110, '42', 'No', '0', '2022-08-20 12:13:23', '2022-08-20 12:13:23'),
(111, '42', 'Yes', '15', '2022-08-20 12:13:23', '2022-08-20 12:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Razidul', 'razidul.rasel@gmail.com', '$2y$10$90WL77mk/ZEIuhBzyDr/9ej7dHaQWCFqBLYzmZ/myzrzRhUQKVwxi', '2022-08-11 04:11:23', '2022-08-11 04:11:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `develop_questions`
--
ALTER TABLE `develop_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_option_score`
--
ALTER TABLE `question_option_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `develop_questions`
--
ALTER TABLE `develop_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `question_option_score`
--
ALTER TABLE `question_option_score`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
