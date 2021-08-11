-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2021 at 11:24 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoacce_kvda`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_np` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `slug`, `name_np`, `description`, `description_np`, `cover_image`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'KVDA Gallery', 'kvda-gallery', 'KVDA ग्यालरी', NULL, NULL, NULL, 1, '2021-07-13 23:48:47', '2021-07-13 23:48:47'),
(2, 'Nanda Keshar Bagaicha Revitalization', 'nanda-keshar-bagaicha-revitalization', 'नन्द केशर बगाइचा पुनरुद्धार', NULL, NULL, NULL, 1, '2021-07-13 23:49:28', '2021-07-13 23:49:28'),
(3, 'KVDA 3rd Anniversary', 'kvda-3rd-anniversary', 'KVDA तेस्रो वार्षिकोत्सव', NULL, NULL, NULL, 1, '2021-07-13 23:49:55', '2021-07-13 23:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `child_sub_menus`
--

CREATE TABLE `child_sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `title_np`, `slug`, `document`, `document_np`, `is_featured`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'EQ Spectra Explanation', 'EQ Spectra Explanation', 'eq-spectra-explanation', 'Document_201512151026.pdf', 'Document_201512151026.pdf', 1, 1, '2021-07-12 05:30:07', '2021-07-12 05:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `form` text COLLATE utf8mb4_unicode_ci,
  `form_np` text COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `slug`, `title`, `title_np`, `type`, `type_np`, `content`, `content_np`, `form`, `form_np`, `is_featured`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Nandi Keshwor Bagaicha Revival Project', 'Nandi Keshwor Bagaicha Revival Project', 'Nandi Keshwor Bagaicha Revival Project', 'document', NULL, '<p>Nandi Keshwor Bagaicha Revival Project</p>', '<p>Nandi Keshwor Bagaicha Revival Project</p>', 'Document_201507070324.pdf', 'Document_201507070324.pdf', 1, 1, '2021-07-12 09:42:18', '2021-07-12 09:58:13'),
(4, 'draft-20-years-strategic-development-master-plan-2015-2035-for-kathmandu-valley-part-2-of-3', 'Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 2 OF 3', 'Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 2 OF 3', 'document', NULL, '<p>Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 2 OF 3&nbsp;</p>', '<p>Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 2 OF 3&nbsp;</p>', 'Document_201603060220.pdf', 'Document_201603060220.pdf', 1, 1, '2021-07-12 10:04:14', '2021-07-12 10:04:14'),
(5, 'draft-20-years-strategic-development-master-plan-2015-2035-for-kathmandu-valley-part-3-of-3', 'Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 3 OF 3', 'Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 3 OF 3', 'document', NULL, '<p>Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 3 OF 3&nbsp;</p>', '<p>Draft 20 Years Strategic Development Master Plan (2015-2035) For Kathmandu Valley_PART 3 OF 3&nbsp;</p>', 'Document_201603060203.pdf', 'Document_201603060203.pdf', 0, 1, '2021-07-12 10:05:37', '2021-07-12 10:05:37'),
(7, 'kvda-publication-3a-articles', 'KVDA Publication_3a_Articles', 'KVDA Publication_3a_Articles', 'publication', NULL, '<p>KVDA Publication_3a_Articles</p>', '<p>KVDA Publication_3a_Articles</p>', 'Document_201507061038.pdf', 'Document_201507061038.pdf', 1, 1, '2021-07-12 10:08:12', '2021-07-12 10:08:13'),
(8, 'boundary-of-walls', 'Boundary of Walls', 'Boundary of Walls', 'criteria', NULL, '<p>Boundary of Walls</p>', '<p>Boundary of Walls</p>', 'Boundarywall.guidelines.Jestha_2072.pdf', 'Boundarywall.guidelines.Jestha_2072.pdf', 1, 1, '2021-07-12 10:13:46', '2021-07-12 10:13:46'),
(10, 'dharauti-firtako-notice', 'dharauti firtako notice', 'धरैाटी फर्ताकाे सूचना', 'notice', NULL, NULL, NULL, 'धरैाटि फिर्ता सूचना.pdf', 'धरैाटि फिर्ता सूचना.pdf', 1, 1, '2021-07-13 00:47:49', '2021-07-13 00:47:50'),
(11, 'geo-information-officer', 'Geo Information Officer', 'भू-सूचना अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.३४_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_11.pdf', 'वि.नं.३४_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_11.pdf', 1, 1, '2021-07-13 00:53:28', '2021-07-13 00:53:29'),
(12, 'va-va-thha-sa-va-chha-tha-taha-sama-jasha-sa-ta-ra-pathaka-sa-fa-ra-sa', 'विविध सेवा, छैठौंतह, समाजशास्त्री पदको सिफारिस', 'विविध सेवा, छैठौंतह, समाजशास्त्री पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.३३_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_10.pdf', 'वि.नं.३३_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_10.pdf', 1, 1, '2021-07-13 00:57:45', '2021-07-13 00:57:45'),
(13, 'va-ja-nia-pana-na-thal-ta-ina-ja-na-yara-na-sa-va-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-sama-haka-saha-yaka-ina-ja-na-yara-pathaka-sa-fa-ra-sa-sa-cana', 'विज्ञापन नं. ३२/२०७४-७५(दलित ), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'विज्ञापन नं. ३२/२०७४-७५(दलित ), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'recommendation', NULL, NULL, NULL, 'वि.नं.३२_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_9.pdf', 'वि.नं.३२_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_9.pdf', 1, 1, '2021-07-13 01:01:55', '2021-07-13 01:01:55'),
(14, 'va-ja-nia-pana-na-mathha-sa-ina-ja-na-yara-na-sa-va-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-sama-haka-saha-yaka-ina-ja-na-yara-pathaka-sa-fa-ra-sa-sa-cana', 'विज्ञापन नं. ३१/२०७४-७५(मधेसी ), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'विज्ञापन नं. ३१/२०७४-७५(मधेसी ), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'recommendation', NULL, NULL, NULL, 'वि.नं.३१_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_8.pdf', 'वि.नं.३१_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_8.pdf', 1, 1, '2021-07-13 01:04:07', '2021-07-13 01:04:07'),
(15, 'va-ja-nia-pana-na-a-ja-ina-ja-na-yara-na-sa-va-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-sama-haka-saha-yaka-ina-ja-na-yara-pathaka-sa-fa-ra-sa-sa-cana', 'विज्ञापन नं. ३०/२०७४-७५(अा.ज), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'विज्ञापन नं. ३०/२०७४-७५(अा.ज), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'recommendation', NULL, NULL, NULL, 'वि.नं.३०_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_7.pdf', 'वि.नं.३०_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_7.pdf', 1, 1, '2021-07-13 01:09:13', '2021-07-13 01:09:14'),
(16, 'va-ja-nia-pana-na-kha-l-ina-ja-na-yara-na-sa-va-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-sama-haka-saha-yaka-ina-ja-na-yara-pathaka-sa-fa-ra-sa-sa-cana', 'विज्ञापन नं. २८/२०७४-७५(खुुला), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'विज्ञापन नं. २८/२०७४-७५(खुुला), इन्जिनियरिङ सेवा, विल्डिङ एण्ड अार्किटेक्ट समुहकाे सहायक इन्जिनियर पदकाे सिफारिस सूचना', 'recommendation', NULL, NULL, NULL, 'वि.नं.२८_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_5.pdf', 'वि.नं.२८_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_5.pdf', 1, 1, '2021-07-13 01:10:56', '2021-07-13 01:10:56'),
(17, 'va-ja-nia-pana-na-maha-l-pa-rasha-sana-sa-va-sa-ma-na-ya-pa-rasha-sana-sama-ha-chha-tha-taha-saha-yaka-pa-rasha-saka-ya-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २४/२०७४-७५(महिला), प्रशासन सेवा, सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'विज्ञापन नं. २४/२०७४-७५(महिला), प्रशासन सेवा, सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२४_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_1.pdf', 'वि.नं.२४_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_1.pdf', 1, 1, '2021-07-13 01:13:51', '2021-07-13 01:13:52'),
(18, 'va-ja-nia-pana-na-maha-l-pa-rasha-sana-sa-va-sa-ma-na-ya-pa-rasha-sana-sama-ha-chha-tha-taha-saha-yaka-l-kha-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २७/२०७४-७५(महिला), प्रशासन सेवा, सामान्य प्रशासन समूह, छैठाै तह, सहायक लेखा अधिकृत पदको सिफारिस', 'विज्ञापन नं. २७/२०७४-७५(महिला), प्रशासन सेवा, सामान्य प्रशासन समूह, छैठाै तह, सहायक लेखा अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२७_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_4.pdf', 'वि.नं.२७_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_4.pdf', 1, 1, '2021-07-13 01:17:09', '2021-07-13 01:17:09'),
(19, 'va-ja-nia-pana-na-kha-l-pa-rasha-sana-sa-va-l-kha-sama-ha-chha-tha-taha-saha-yaka-l-kha-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २६/२०७४-७५(खुला), प्रशासन सेवा,  लेखा समूह, छैठाै तह, सहायक लेखा अधिकृत पदको सिफारिस', 'विज्ञापन नं. २६/२०७४-७५(खुला), प्रशासन सेवा,  लेखा समूह, छैठाै तह, सहायक लेखा अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२६_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_3.pdf', 'वि.नं.२६_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा_3.pdf', 1, 1, '2021-07-13 01:19:50', '2021-07-13 01:19:50'),
(20, 'विज्ञापन नं. २५/२०७४-७५(अा.ज.), प्रशासन सेवा,  सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'विज्ञापन नं. २५/२०७४-७५(अा.ज.), प्रशासन सेवा,  सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'विज्ञापन नं. २६/२०७४-७५(अा.ज.), प्रशासन सेवा,  सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-07-13 01:22:31', '2021-07-13 01:23:01'),
(21, 'va-ja-nia-pana-na-kha-l-pa-rasha-sana-sa-va-sa-ma-na-ya-pa-rasha-sana-sama-ha-chha-tha-taha-saha-yaka-pa-rasha-saka-ya-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २३/२०७४-७५(खुुला), प्रशासन सेवा,  सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'विज्ञापन नं. २३/२०७४-७५(खुुला), प्रशासन सेवा,  सामान्य प्रशासन समूह, छैठाै तह, सहायक प्रशासकीय अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२३_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा.pdf', 'वि.नं.२३_२०७४-७५_छैठौं तह_अन्तरवार्ताको नतिजा.pdf', 1, 1, '2021-07-13 01:24:53', '2021-07-13 01:24:53'),
(22, 'va-ja-nia-pana-na-mathha-sha-ina-ja-na-yara-na-sa-va-sa-bha-l-sama-ha-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-upasama-ha-sa-ta-taha-ina-ja-na-yara-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २२/२०७४-७५(मधेशी), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'विज्ञापन नं. २२/२०७४-७५(मधेशी), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२२_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_7.pdf', 'वि.नं.२२_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_7.pdf', 1, 1, '2021-07-13 01:28:49', '2021-07-13 01:28:49'),
(23, 'va-ja-nia-pana-na-a-ja-ina-ja-na-yara-na-sa-va-sa-bha-l-sama-ha-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-upasama-ha-sa-ta-taha-ina-ja-na-yara-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २१/२०७४-७५(अा.ज.), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'विज्ञापन नं. २१/२०७४-७५(अा.ज.), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२१_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_6.pdf', 'वि.नं.२१_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_6.pdf', 1, 1, '2021-07-13 01:30:33', '2021-07-13 01:30:34'),
(24, 'va-ja-nia-pana-na-maha-l-ina-ja-na-yara-na-sa-va-sa-bha-l-sama-ha-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-upasama-ha-sa-ta-taha-ina-ja-na-yara-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. २०/२०७४-७५(महिला), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'विज्ञापन नं. २०/२०७४-७५(महिला), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.२०_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_5.pdf', 'वि.नं.२०_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_5.pdf', 1, 1, '2021-07-13 01:32:54', '2021-07-13 01:32:54'),
(25, 'va-ja-nia-pana-na-kha-l-ina-ja-na-yara-na-sa-va-sa-bha-l-sama-ha-va-l-da-na-enae-da-a-ra-ka-ta-ka-ta-upasama-ha-sa-ta-taha-ina-ja-na-yara-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. १९/२०७४-७५(खुला), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'विज्ञापन नं. १९/२०७४-७५(खुला), इन्जिनियरिङ सेवा, सिभिल समूह, विल्डिङ एण्ड अार्किटेक्ट उपसमूह, साताै तह, इन्जिनियर पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.१९_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_4.pdf', 'वि.नं.१९_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_4.pdf', 1, 1, '2021-07-13 01:34:26', '2021-07-13 01:34:26'),
(26, 'va-ja-nia-pana-na-kha-l-ka-na-na-sa-va-sa-ta-taha-ka-na-na-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. १८/२०७४-७५ (खुला), कानून सेवा, सातौ तह, कानून अधिकृत पदको सिफारिस', 'विज्ञापन नं. १८/२०७४-७५ (खुला), कानून सेवा, सातौ तह, कानून अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.१८_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_3.pdf', 'वि.नं.१८_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_3.pdf', 1, 1, '2021-07-13 01:37:04', '2021-07-13 01:37:05'),
(27, 'va-ja-nia-pana-na-maha-l-pa-rasha-sana-sa-va-l-kha-sama-ha-sa-ta-taha-l-kha-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. १७/२०७४-७५(महिला), प्रशासन सेवा, लेखा समूह, सातौ तह, लेखा अधिकृत पदकाे सिफारिस', 'विज्ञापन नं. १७/२०७४-७५(महिला), प्रशासन सेवा, लेखा समूह, सातौ तह, लेखा अधिकृत पदकाे सिफारिस', 'recommendation', NULL, NULL, NULL, 'वि.नं.१७_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_2.pdf', 'वि.नं.१७_२०७४-७५_सातौं तह_अन्तरवार्ताको नतिजा_2.pdf', 1, 1, '2021-07-13 01:41:50', '2021-07-13 01:41:50'),
(28, 'va-ja-nia-pana-na-maha-l-pa-rasha-sana-sa-va-l-kha-sama-ha-sa-ta-taha-l-kha-athha-ka-ta-pathaka-sa-fa-ra-sa-2', 'विज्ञापन नं. १६/२०७४-७५(महिला), प्रशासन सेवा, लेखा समूह, सातौ तह, लेखा अधिकृत पदकाे सिफारिस', 'विज्ञापन नं. १६/२०७४-७५(महिला), प्रशासन सेवा, लेखा समूह, सातौ तह, लेखा अधिकृत पदकाे सिफारिस', 'recommendation', NULL, NULL, NULL, '1562050824.pdf', '1562050824.pdf', 1, 1, '2021-07-13 01:54:12', '2021-07-13 01:54:12'),
(29, 'va-ja-nia-pana-na-kha-l-pa-rasha-sana-sa-va-sa-ma-na-ya-pa-rasha-sana-sama-ha-upapa-rasha-saka-ya-athha-ka-ta-pathaka-sa-fa-ra-sa', 'विज्ञापन नं. १५/२०७४-७५ (खुला), प्रशासन सेवा, सामान्य प्रशासन समूह, उपप्रशासकीय अधिकृत पदको सिफारिस', 'विज्ञापन नं. १५/२०७४-७५ (खुला), प्रशासन सेवा, सामान्य प्रशासन समूह, उपप्रशासकीय अधिकृत पदको सिफारिस', 'recommendation', NULL, NULL, NULL, '1562050664.pdf', '1562050664.pdf', 1, 1, '2021-07-13 02:03:05', '2021-07-13 02:03:05'),
(30, 'written-result-of-kvda', 'Written Result Of KVDA', 'लिखित परीक्षाकाे नतिजा', 'writtenresult', NULL, NULL, NULL, '1561962221.pdf', '1561962221.pdf', 1, 1, '2021-07-13 02:06:11', '2021-07-13 02:06:11'),
(31, 'महानगरपालिकाकाे मापदण्ड र प्राधिकरणकाे मापदण्डमा रहेका भिन्नताहरू', 'महानगरपालिकाकाे मापदण्ड र प्राधिकरणकाे मापदण्डमा रहेका भिन्नताहरू', 'महानगरपालिकाकाे मापदण्ड र प्राधिकरणकाे मापदण्डमा रहेका भिन्नताहरू', 'document', NULL, NULL, NULL, NULL, 'महानगरपालिका र प्राधिकरणकेा मापदण्डमा देखिएका भिन्नताहरू.jpg', 1, 1, '2021-07-13 02:13:13', '2021-07-13 02:16:43'),
(32, 'pa-rava-shapata-ra-va-taranae-sama-bna-thha-sa-cana', 'प्रवेशपत्र वितरण सम्बन्धी सूचना', 'प्रवेशपत्र वितरण सम्बन्धी सूचना', 'notice', NULL, NULL, NULL, '1546493221.pdf', '1546493221.pdf', 1, 1, '2021-07-13 02:25:44', '2021-07-13 02:25:45'),
(33, 'kha-l-tatha-sama-va-sha-pa-rata-ya-ga-ta-ta-maka-para-ka-shha-ka-va-ja-nia-pana', 'खुला तथा समावेशी प्रतियाेगितात्मक परीक्षाकाे विज्ञापन २०७५.७.९', 'खुला तथा समावेशी प्रतियाेगितात्मक परीक्षाकाे विज्ञापन २०७५.७.९', 'vacancy', NULL, NULL, NULL, 'vacancy notice of KVDA.pdf', 'vacancy notice of KVDA.pdf', 1, 1, '2021-07-13 02:29:49', '2021-07-13 02:29:49'),
(34, 'Curriculam of KVDA', 'Curriculam of KVDA', 'प्राधिकरणकाे पाठ्यक्रम', 'syllabus', NULL, NULL, NULL, '1354864521.pdf', '1354864521.pdf', 1, 1, '2021-07-13 02:48:04', '2021-07-14 00:46:15'),
(35, 'application-form', 'Application Form', 'दरखास्त फाराम', 'forms', NULL, NULL, NULL, '1539254174.pdf', '1539254174.pdf', 1, 1, '2021-07-13 03:01:00', '2021-07-13 03:01:00'),
(36, 'kvda-syllabus-for-26-posts', 'KVDA Syllabus For 26 Posts', 'KVDA Syllabus For 26 Posts', 'syllabus', NULL, NULL, NULL, 'KVDA _26_Post_Sylabus.pdf', 'KVDA _26_Post_Sylabus.pdf', 1, 1, '2021-07-13 22:27:30', '2021-07-13 22:27:30'),
(37, 'kvda-syllabus-table-of-contents', 'KVDA Syllabus Table Of Contents', 'KVDA Syllabus Table Of Contents', 'syllabus', NULL, NULL, NULL, '1521522392.pdf', '1521522392.pdf', 1, 1, '2021-07-13 22:30:25', '2021-07-13 22:30:25'),
(38, 'Kvda Act 2068', 'Kvda Act 2068', 'Kvda Act 2068', 'act', NULL, NULL, NULL, '1521522332.pdf', '1521522332.pdf', 1, 1, '2021-07-13 22:31:37', '2021-07-13 22:38:21'),
(39, 'Kvda Act 2045', 'Kvda Act 2045', 'Kvda Act 2045', 'act', NULL, NULL, NULL, '1521522245.pdf', '1521522245.pdf', 1, 1, '2021-07-13 22:32:30', '2021-07-13 22:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` enum('Ads','Popup','Cover') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `name`, `view`, `meta_description`, `image`, `url`, `is_published`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bagaicha', NULL, 'Bagaicha', 'bagaicha13.jpg', NULL, 1, 0, '2021-07-13 23:52:44', '2021-07-13 23:52:45'),
(2, 1, 'Kamalpokhari', NULL, 'Kamalpokhari', 'kamalpokhari2.jpg', NULL, 1, 0, '2021-07-13 23:53:46', '2021-07-13 23:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `slug`, `name`, `name_np`, `order`, `url`, `icon`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', 'गृहपृष्ठ', NULL, '/', NULL, 0, '2021-07-12 02:36:39', '2021-07-12 02:36:39'),
(2, 'about', 'About Us', 'हाम्रो बारेमा', NULL, '#', NULL, 0, '2021-07-12 02:39:55', '2021-07-12 02:39:55'),
(3, 'project', 'Project', 'आयोजनाहरु', NULL, '#', NULL, 0, '2021-07-12 02:41:15', '2021-07-12 02:41:15'),
(4, 'act-and-regulation', 'Act and Regulation', 'कानुनहरू', NULL, '#', NULL, 0, '2021-07-12 02:43:48', '2021-07-12 02:43:48'),
(5, 'download', 'Download', 'डाउनलोड', NULL, '#', NULL, 0, '2021-07-12 02:45:53', '2021-07-12 02:45:53'),
(7, 'notice-and-news', 'Notice and News', 'सूचना तथा समाचार', NULL, '#', NULL, 0, '2021-07-12 02:51:58', '2021-07-12 02:51:58'),
(8, 'gallery', 'Gallery', 'संग्रह', NULL, '#', NULL, 0, '2021-07-12 02:53:32', '2021-07-12 02:53:32'),
(9, 'career', 'Career', 'पदपूर्ति', NULL, '#', NULL, 0, '2021-07-12 03:21:09', '2021-07-12 03:21:09'),
(10, 'contact', 'Contact', 'ठेगाना', NULL, '#', NULL, 0, '2021-07-12 03:22:04', '2021-07-12 03:22:04');

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
(52, '2014_10_12_000000_create_users_table', 1),
(53, '2014_10_12_100000_create_password_resets_table', 1),
(54, '2019_08_19_000000_create_failed_jobs_table', 1),
(55, '2021_02_17_172437_create_settings_table', 1),
(56, '2021_06_30_043247_create_sliders_table', 1),
(57, '2021_06_30_051551_create_menus_table', 1),
(58, '2021_06_30_053654_create_sub_menus_table', 1),
(59, '2021_06_30_054247_create_pages_table', 1),
(60, '2021_06_30_060453_create_child_sub_menus_table', 1),
(61, '2021_07_08_110123_create_albums_table', 1),
(62, '2021_07_08_110125_create_galleries_table', 1),
(63, '2021_07_10_111624_create_news_table', 1),
(64, '2021_07_10_155837_create_documents_table', 1),
(65, '2021_07_11_091256_create_projects_table', 1),
(66, '2021_07_11_093255_create_teams_table', 1),
(67, '2021_07_11_095348_create_vacancies_table', 1),
(68, '2021_07_11_101918_create_forms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_description_np` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `news_date` timestamp NULL DEFAULT NULL,
  `news_date_np` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `slug`, `title`, `title_np`, `type`, `meta_description`, `meta_description_np`, `content`, `content_np`, `news_date`, `news_date_np`, `image`, `is_featured`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'ka-u-va-pa-ra-l-kha-ta-para-ka-shha-ka-nata-ja', 'का.उ.वि.प्रा_लिखित परिक्षाको नतिजा', 'का.उ.वि.प्रा_लिखित परिक्षाको नतिजा', 'news', NULL, NULL, '<p><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0001.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0002.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0003.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0004.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0005.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0006.jpg\" style=\"height:1755px; width:1241px\" /><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0007.jpg\" /></p>', '<p><img alt=\"\" src=\"http://kvda.gov.np/images/news/new_page-0001.jpg\" style=\"height:1755px; width:1241px\" /></p>', '2019-06-13 18:15:00', '2019-06-13 18:15:00', 'news.jpg', 1, 1, '2021-07-13 10:11:36', '2021-07-13 10:38:14'),
(2, 'upata-yaka-va-ka-sa-pa-ra-thha-karanaeka-va-ka-sa-aaya-ka-tama-dhaka-l-na-ya-ka-ta', 'उपत्यका विकास प्राधिकरणको विकास आयुक्तमा ढकाल नियुक्त', 'उपत्यका विकास प्राधिकरणको विकास आयुक्तमा ढकाल नियुक्त', 'news', NULL, NULL, '<p>२१ वैशाख, काठमाडौं । उपत्यका विकास प्राधिकरणको विकास आयुक्तमा जानुका ढकाल नियुक्त भएकी छिन् । मन्त्रिपरिषदको आइतबार बसेको बैठकले ढकाललाई विकास आयुक्त नियुक्त गरेको हो ।</p>\r\n\r\n<p>झापा घर भएकी ढकाल नवनारी मासिककी&nbsp; सम्पादक हुन् । शहरी विकास मन्त्रालयबाट उनले नियुक्तिपत्र बुझेकी छिन् ।</p>\r\n\r\n<p>विकास आयुक्तका लागि चैत १२ गते सरकारले दरखास्त मागेको थियो । जसमा ८ जनाले दरखास्त दिएकोमा ३ जनाको नाम मन्त्रिपरिषदमा सिफारिस गरेर पठाइएको थियो । ढकालसहित डा. श्यामसुन्दर बोहोरा र भुपेन्द्रप्रसाद अर्यालको नाम सिफारिस भएको थियो ।</p>\r\n\r\n<p>अनलाइनखबरसँग कुरा गर्दै उनले नयाँ शहर निर्माण र बाहिरी चक्रपथ निर्माणलाई प्राथमिकतामा राखेर काम गर्ने बताइन् ।</p>\r\n\r\n<p>उपत्यका विकास प्राधिकरण ऐनअनुसार नेपाल सरकारले विशिष्ट श्रेणी वा सो भन्दा माथिको पदमा काम गरिरहेको वा गरिसकेको व्यक्ति वा सम्बन्धित क्षेत्रमा लब्ध प्रतिष्ठित कुनै व्यक्तिलाई प्राधिकरणको कार्यकारी प्रमुखको रूपमा विकास आयुक्तमा नियुक्त गर्ने व्यवस्था छ ।</p>\r\n\r\n<p>विकास आयुक्तको पदावधि बढीमा पाँच वर्षको हुन्छ । नेपाल सरकारले चाहेमा निजको पदावधि पुनः बढीमा पाँच वर्षको लागि थप गर्न सक्नेछ । यसअघि भाइकाजी तिवारीले लगातार दुई कार्यकाल विकास आयुक्तका रुपमा काम गरेका थिए ।</p>\r\n\r\n<p><span style=\"font-size:9px\">Soruce:&nbsp;https://www.onlinekhabar.com/</span></p>', '<p>२१ वैशाख, काठमाडौं । उपत्यका विकास प्राधिकरणको विकास आयुक्तमा जानुका ढकाल नियुक्त भएकी छिन् । मन्त्रिपरिषदको आइतबार बसेको बैठकले ढकाललाई विकास आयुक्त नियुक्त गरेको हो ।</p>\r\n\r\n<p>झापा घर भएकी ढकाल नवनारी मासिककी&nbsp; सम्पादक हुन् । शहरी विकास मन्त्रालयबाट उनले नियुक्तिपत्र बुझेकी छिन् ।</p>\r\n\r\n<p>विकास आयुक्तका लागि चैत १२ गते सरकारले दरखास्त मागेको थियो । जसमा ८ जनाले दरखास्त दिएकोमा ३ जनाको नाम मन्त्रिपरिषदमा सिफारिस गरेर पठाइएको थियो । ढकालसहित डा. श्यामसुन्दर बोहोरा र भुपेन्द्रप्रसाद अर्यालको नाम सिफारिस भएको थियो ।</p>\r\n\r\n<p>अनलाइनखबरसँग कुरा गर्दै उनले नयाँ शहर निर्माण र बाहिरी चक्रपथ निर्माणलाई प्राथमिकतामा राखेर काम गर्ने बताइन् ।</p>\r\n\r\n<p>उपत्यका विकास प्राधिकरण ऐनअनुसार नेपाल सरकारले विशिष्ट श्रेणी वा सो भन्दा माथिको पदमा काम गरिरहेको वा गरिसकेको व्यक्ति वा सम्बन्धित क्षेत्रमा लब्ध प्रतिष्ठित कुनै व्यक्तिलाई प्राधिकरणको कार्यकारी प्रमुखको रूपमा विकास आयुक्तमा नियुक्त गर्ने व्यवस्था छ ।</p>\r\n\r\n<p>विकास आयुक्तको पदावधि बढीमा पाँच वर्षको हुन्छ । नेपाल सरकारले चाहेमा निजको पदावधि पुनः बढीमा पाँच वर्षको लागि थप गर्न सक्नेछ । यसअघि भाइकाजी तिवारीले लगातार दुई कार्यकाल विकास आयुक्तका रुपमा काम गरेका थिए ।</p>\r\n\r\n<p><span style=\"font-size:9px\">Soruce:&nbsp;https://www.onlinekhabar.com/</span></p>', '2021-05-03 18:15:00', '2021-05-03 18:15:00', 'news.jpg', 1, 1, '2021-07-14 00:26:08', '2021-07-14 00:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_description_np` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `title_np`, `meta_description`, `meta_description_np`, `content`, `content_np`, `image`, `url`, `view`, `is_published`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 'introduction', 'Introduction', 'परिचय', NULL, NULL, '<p>Kathmandu Valley Development Authority (KVDA) was formally established on 1st Baisakh 2069 BS (13th April 2012), under the &ldquo;Kathmandu Valley Development Authority Act 2045&rdquo;. KVDA officially initiated its activities from 15th Baisakh 2069 BS (27th April 2012), with primary mandate to prepare and implement an integrated physical development plan for Kathmandu Valley, which encompasses five municipalities and 99 VDCs with estimated permanent population of Three million and floating population of another Two and a half millions.</p>\r\n\r\n<p>The apex governing body of KVDA is the Kathmandu Valley Physical Development Committee, chaired by the Honorable Minister of Urban Development, with members consisting of four other ministers and nine secretaries of the Government of Nepal, Chief Executive Officers of five municipalities and Chairpersons of three District Development Committees. The Development Commissioner, a political appointee of the Government of Nepal, serves as the Member Secretary of the Committee and Chief Executive Officer of KVDA</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><span style=\"font-size:18px\">Functions of KVDA</span></span></p>\r\n\r\n<h2><big><strong>Planner, Planning Agency</strong></big></h2>\r\n\r\n<p>Preparation and implementation of PDP (Physical Development Plan) which includes:</p>\r\n\r\n<ul>\r\n	<li>TOD (Transit Oriented Development Plan) preparation and implementation.</li>\r\n	<li>LUP (Land Use Plan) preparation incorporating risk sensitiveness as one of the features.</li>\r\n</ul>\r\n\r\n<p>As a Planner, it has prepared a Long-Term Development Concept (LTDC) 2015-2035 of Kathmandu Valley, which is currently under public scrutiny. The LTDC consists of Strategies, Objectives, Supporting activities as well as list of &ldquo;Doable, Visible, and Appreciable&rdquo; Short term Projects, which will be implemented through a collaborative effort of relevant stakeholders.</p>\r\n\r\n<h2><strong><big>Developer, Developing Agency</big></strong></h2>\r\n\r\n<ul>\r\n	<li>Land Development /Land Pooling.</li>\r\n	<li>Open Space Revitalization/ Greenery Enhancement.</li>\r\n	<li>Project(s) Transcending One Local Body.</li>\r\n</ul>\r\n\r\n<p>As a Developer, it has been undertaking participatory land development projects. By doing so it has been able to add tangible and intangible values to the Kathmandu Valley, contributing additional road and other public spaces, planned infrastructures etc.</p>\r\n\r\n<h2><strong><big>Monitoring, Regulating and Prohibiting Agency</big></strong></h2>\r\n\r\n<ul>\r\n	<li>Preparation and implementation of valley-wide planning, building bye-Laws.</li>\r\n	<li>Preparation, implementation &amp; monitoring of various urban development guidelines, handbooks and tools.</li>\r\n	<li>Coordinating with different line agencies, local authorities and development partners for integrated and inclusive development of the KV.</li>\r\n	<li>Preparation, implementation and monitoring of various regulating and prohibition mechanism for integrated development of the KV.</li>\r\n</ul>\r\n\r\n<p>As a Regulator, it has proposed a revision in the existing planning and building bye-laws. It is also in the process of preparing various guidelines and handbooks including streetscapes and Urban Aesthetics, Urban Landscapes, indicators on Urban Disaster Resilience, Infrastructure Standards etc. for the Kathmandu Valley. The present Right-of-Way (RoW) clearance for Road Widening Program is one of the successful examples of its regulatory function.</p>\r\n\r\n<p>Within its functional framework as a planning, developing and regulating authority, KVDA seeks to establish and institutionalize itself as an &ldquo;exemplary organization&rdquo; in urban planning and development through learning, sharing and capacitating the stakeholders. KVDA seeks to establish itself as a &ldquo;center of excellence&rdquo; through establishing a state-of-art infrastructure and knowledge hub to develop and promote innovative technologies and approaches for sustainable, environmentally friendly and risk resilient development of KV</p>', '<p>Kathmandu Valley Development Authority (KVDA) was formally established on 1st Baisakh 2069 BS (13th April 2012), under the &ldquo;Kathmandu Valley Development Authority Act 2045&rdquo;. KVDA officially initiated its activities from 15th Baisakh 2069 BS (27th April 2012), with primary mandate to prepare and implement an integrated physical development plan for Kathmandu Valley, which encompasses five municipalities and 99 VDCs with estimated permanent population of Three million and floating population of another Two and a half millions.</p>\r\n\r\n<p>The apex governing body of KVDA is the Kathmandu Valley Physical Development Committee, chaired by the Honorable Minister of Urban Development, with members consisting of four other ministers and nine secretaries of the Government of Nepal, Chief Executive Officers of five municipalities and Chairpersons of three District Development Committees. The Development Commissioner, a political appointee of the Government of Nepal, serves as the Member Secretary of the Committee and Chief Executive Officer of KVDA</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><span style=\"font-size:18px\">Functions of KVDA</span></span></p>\r\n\r\n<h2><big><strong>Planner, Planning Agency</strong></big></h2>\r\n\r\n<p>Preparation and implementation of PDP (Physical Development Plan) which includes:</p>\r\n\r\n<ul>\r\n	<li>TOD (Transit Oriented Development Plan) preparation and implementation.</li>\r\n	<li>LUP (Land Use Plan) preparation incorporating risk sensitiveness as one of the features.</li>\r\n</ul>\r\n\r\n<p>As a Planner, it has prepared a Long-Term Development Concept (LTDC) 2015-2035 of Kathmandu Valley, which is currently under public scrutiny. The LTDC consists of Strategies, Objectives, Supporting activities as well as list of &ldquo;Doable, Visible, and Appreciable&rdquo; Short term Projects, which will be implemented through a collaborative effort of relevant stakeholders.</p>\r\n\r\n<h2><strong><big>Developer, Developing Agency</big></strong></h2>\r\n\r\n<ul>\r\n	<li>Land Development /Land Pooling.</li>\r\n	<li>Open Space Revitalization/ Greenery Enhancement.</li>\r\n	<li>Project(s) Transcending One Local Body.</li>\r\n</ul>\r\n\r\n<p>As a Developer, it has been undertaking participatory land development projects. By doing so it has been able to add tangible and intangible values to the Kathmandu Valley, contributing additional road and other public spaces, planned infrastructures etc.</p>\r\n\r\n<h2><strong><big>Monitoring, Regulating and Prohibiting Agency</big></strong></h2>\r\n\r\n<ul>\r\n	<li>Preparation and implementation of valley-wide planning, building bye-Laws.</li>\r\n	<li>Preparation, implementation &amp; monitoring of various urban development guidelines, handbooks and tools.</li>\r\n	<li>Coordinating with different line agencies, local authorities and development partners for integrated and inclusive development of the KV.</li>\r\n	<li>Preparation, implementation and monitoring of various regulating and prohibition mechanism for integrated development of the KV.</li>\r\n</ul>\r\n\r\n<p>As a Regulator, it has proposed a revision in the existing planning and building bye-laws. It is also in the process of preparing various guidelines and handbooks including streetscapes and Urban Aesthetics, Urban Landscapes, indicators on Urban Disaster Resilience, Infrastructure Standards etc. for the Kathmandu Valley. The present Right-of-Way (RoW) clearance for Road Widening Program is one of the successful examples of its regulatory function.</p>\r\n\r\n<p>Within its functional framework as a planning, developing and regulating authority, KVDA seeks to establish and institutionalize itself as an &ldquo;exemplary organization&rdquo; in urban planning and development through learning, sharing and capacitating the stakeholders. KVDA seeks to establish itself as a &ldquo;center of excellence&rdquo; through establishing a state-of-art infrastructure and knowledge hub to develop and promote innovative technologies and approaches for sustainable, environmentally friendly and risk resilient development of KV</p>', NULL, NULL, NULL, 1, 0, '2021-07-12 04:42:00', '2021-07-12 08:51:27'),
(2, 'kvda-achievement', 'KVDA Achievement', 'प्राधिकरणका हालसम्मका उपलब्धि', NULL, NULL, '<h2>Achievements</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Making road widening a reality by achieving some 200 kms of road RoW clearance with additional 64 kms marked for clearance, and additional 500 kms identified for clearance.</li>\r\n	<li>Another 300 kms road width opening under GLD (Guided Land Development).</li>\r\n	<li>Finalization of Planning and Building Bye-laws of Kathmandu Valley.</li>\r\n	<li>Completion of Participatory Land Development of 4,366 Ropanies of land through 10 projects; 7,271 Ropanies ongoing through 9 projects and more projects in pipeline.</li>\r\n	<li>Identification of 887 sites for public land preservation, of which preservation have been secured in 24 sites, and already planned in additional 36 sites.</li>\r\n	<li>Piloting of Pro-poor Urban Regeneration in Lalitpur Sub-metropolitan City, Piloting of Small Scale Integrated Rain Water, Storm Water and Waste Water Management System, Narayan Chaur Public Garden Project, Kamal Pokhari revitalization, enhancing the aesthetics of selected widened roads already in progress.</li>\r\n</ol>', '<h2>Achievements</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Making road widening a reality by achieving some 200 kms of road RoW clearance with additional 64 kms marked for clearance, and additional 500 kms identified for clearance.</li>\r\n	<li>Another 300 kms road width opening under GLD (Guided Land Development).</li>\r\n	<li>Finalization of Planning and Building Bye-laws of Kathmandu Valley.</li>\r\n	<li>Completion of Participatory Land Development of 4,366 Ropanies of land through 10 projects; 7,271 Ropanies ongoing through 9 projects and more projects in pipeline.</li>\r\n	<li>Identification of 887 sites for public land preservation, of which preservation have been secured in 24 sites, and already planned in additional 36 sites.</li>\r\n	<li>Piloting of Pro-poor Urban Regeneration in Lalitpur Sub-metropolitan City, Piloting of Small Scale Integrated Rain Water, Storm Water and Waste Water Management System, Narayan Chaur Public Garden Project, Kamal Pokhari revitalization, enhancing the aesthetics of selected widened roads already in progress.</li>\r\n</ol>', NULL, NULL, NULL, 1, 0, '2021-07-12 05:04:22', '2021-07-12 05:04:22'),
(3, 'kvda-current-priorities', 'KVDA Current Priorities', 'प्राधिकरणका हालका प्राथमिकताहरू', NULL, NULL, '<h2>Priorties</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>To prepare an Integrated Physical Development Plan for Kathmandu Valley, with due consideration for disaster risk mitigation, within the ambit of National Urban Policy 2068.</li>\r\n	<br />\r\n	<li>Under the guidance of National Land Use Policy 2069, develop, articulate, and implement risk sensitive land use program that will enhance safety of &lsquo;life and property&rsquo;, increase economic productivity, food security and upscale environmental and aesthetic beauty.</li>\r\n	<br />\r\n	<li>To prepare a master plan for effective public transport network in Kathmandu Valley that can meet the increasing demand for mobility of urban population and promote residential and commercial development based on development of transport infrastructure.</li>\r\n	<br />\r\n	<li>Improve financial, technical, and managerial capacity of KVDA, by soliciting and involving domestic and foreign development partners, where necessary.</li>\r\n	<br />\r\n	<li>Promotion of a model green satellite city in about 5000+ Ropanies of land..</li>\r\n	<br />\r\n	<li>Initiate Kathmandu Valley greening programs.</li>\r\n	<br />\r\n	<li>Development of public open space at already identified 887 sites consisting of 5000 Ropanies of land.</li>\r\n	<br />\r\n	<li>Promoting a platform for Intra and Inter Agency Learning, Sharing and Innovation within and outside Nepal to create a common understanding for Kathmandu Valley&rsquo;s Development Vision, Mission, and Strategies among the stakeholders.</li>\r\n	<br />\r\n	<li>Conduct Institutional and Capacity Building Activities of KVDA including establishment of Learning - Innovation - Application (LIA) Center for Valley Development.</li>\r\n	<br />\r\n	<li>Coordinate the activities of multiple agencies involved in services like land administration, drinking water, sewerage and waste management, road, communication, electricity etc., which constitute critical aspects of urban development.</li>\r\n	<br />\r\n	<li>Engaging Academia, Civil Societies, Professional Bodies, Young Entrepreneurs, Business Communities and Media, to align their thoughts, programs and actions to accomplish KVDA&rsquo;s Vision and Mission for the Valley (V4V)</li>\r\n</ol>', '<h2>Priorties</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>To prepare an Integrated Physical Development Plan for Kathmandu Valley, with due consideration for disaster risk mitigation, within the ambit of National Urban Policy 2068.</li>\r\n	<br />\r\n	<li>Under the guidance of National Land Use Policy 2069, develop, articulate, and implement risk sensitive land use program that will enhance safety of &lsquo;life and property&rsquo;, increase economic productivity, food security and upscale environmental and aesthetic beauty.</li>\r\n	<br />\r\n	<li>To prepare a master plan for effective public transport network in Kathmandu Valley that can meet the increasing demand for mobility of urban population and promote residential and commercial development based on development of transport infrastructure.</li>\r\n	<br />\r\n	<li>Improve financial, technical, and managerial capacity of KVDA, by soliciting and involving domestic and foreign development partners, where necessary.</li>\r\n	<br />\r\n	<li>Promotion of a model green satellite city in about 5000+ Ropanies of land..</li>\r\n	<br />\r\n	<li>Initiate Kathmandu Valley greening programs.</li>\r\n	<br />\r\n	<li>Development of public open space at already identified 887 sites consisting of 5000 Ropanies of land.</li>\r\n	<br />\r\n	<li>Promoting a platform for Intra and Inter Agency Learning, Sharing and Innovation within and outside Nepal to create a common understanding for Kathmandu Valley&rsquo;s Development Vision, Mission, and Strategies among the stakeholders.</li>\r\n	<br />\r\n	<li>Conduct Institutional and Capacity Building Activities of KVDA including establishment of Learning - Innovation - Application (LIA) Center for Valley Development.</li>\r\n	<br />\r\n	<li>Coordinate the activities of multiple agencies involved in services like land administration, drinking water, sewerage and waste management, road, communication, electricity etc., which constitute critical aspects of urban development.</li>\r\n	<br />\r\n	<li>Engaging Academia, Civil Societies, Professional Bodies, Young Entrepreneurs, Business Communities and Media, to align their thoughts, programs and actions to accomplish KVDA&rsquo;s Vision and Mission for the Valley (V4V)</li>\r\n</ol>', NULL, NULL, NULL, 1, 0, '2021-07-12 05:11:05', '2021-07-12 08:52:23'),
(4, 'organization-structure', 'Organization structure', 'प्राधिकरणकाे संगठन संरचना', NULL, NULL, '<p><a href=\"http://www.kvda.gov.np/images/pages/tree1.jpg\"><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree1.jpg\" style=\"height:614px; width:995px\" /></a><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree2.jpg\" /><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree3.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', '<p><img alt=\"\" src=\"kvda.gov.np/images/pages/tree1.jpg\" /><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree1.jpg\" style=\"height:614px; width:995px\" /><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree2.jpg\" style=\"height:625px; width:982px\" /><img alt=\"\" src=\"http://www.kvda.gov.np/images/pages/tree3.jpg\" style=\"height:593px; width:962px\" /></p>', NULL, NULL, NULL, 1, 0, '2021-07-12 08:49:47', '2021-07-12 08:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_date` date DEFAULT NULL,
  `project_date_np` date DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_caption` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title_np`, `caption`, `link_url`, `image`, `banner_image`, `link_caption`, `order`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Kathmandu Valley Development Authority', 'Kathmandu Valley Development Authority', NULL, NULL, 'nepal.jpg', NULL, NULL, NULL, 0, '2021-07-12 22:59:27', '2021-07-12 22:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `slug`, `menu_id`, `name`, `name_np`, `url`, `order`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'introduction', 2, 'Introduction', 'परिचय', 'introduction', 0, NULL, '2021-07-12 03:29:22', '2021-07-12 03:29:22'),
(2, 'organization-structure-of-kvda', 2, 'Organization Structure of KVDA', 'प्राधिकरणकाे संगठन संरचना', 'organization-structure', 1, NULL, '2021-07-12 03:30:40', '2021-07-12 03:30:40'),
(3, 'board-of-director', 2, 'Board of Director', 'संचालक समिति', '#', 3, NULL, '2021-07-12 03:32:03', '2021-07-12 03:32:03'),
(4, 'kvda-current-priorities', 2, 'KVDA Current Priorities', 'प्राधिकरणका हालका प्राथमिकताहरू', 'kvda-current-priorities', 2, NULL, '2021-07-12 04:46:33', '2021-07-12 04:46:33'),
(5, 'government-decision-regarding-kvda', 2, 'Government Decision Regarding KVDA', 'प्राधिकरणकाे सम्बन्धमा सरकारका निर्णयहरू', '#', 4, NULL, '2021-07-12 03:35:02', '2021-07-12 03:35:02'),
(6, 'citizen-charter', 2, 'Citizen Charter', 'नागरिक बडापत्र', '#', 5, NULL, '2021-07-12 03:36:08', '2021-07-12 03:36:08'),
(7, 'act', 4, 'Act', 'ऐन', '/form/act', 0, NULL, '2021-07-12 03:43:38', '2021-07-12 03:43:38'),
(8, 'regulations', 4, 'Regulations', 'नियमहरू', '#', 1, NULL, '2021-07-12 03:44:03', '2021-07-12 03:44:03'),
(9, 'directory', 4, 'Directory', 'निर्देशिका', '#', 2, NULL, '2021-07-12 03:46:41', '2021-07-12 03:46:41'),
(10, 'criteria', 4, 'Criteria', 'मापदण्ड', '/form/criteria', 3, NULL, '2021-07-12 03:47:32', '2021-07-12 03:47:32'),
(11, 'forms', 5, 'Forms', 'फारामहरू', '/form/forms', 0, NULL, '2021-07-12 03:56:45', '2021-07-12 03:56:45'),
(13, 'publications', 5, 'Publications', 'प्रकाशनहरू', '/form/publication', 1, NULL, '2021-07-12 03:58:32', '2021-07-12 03:58:32'),
(14, 'documents', 5, 'Documents', 'दस्तावेज', '/form/document', 2, NULL, '2021-07-12 04:00:41', '2021-07-12 04:00:41'),
(15, 'notices', 7, 'Notices', 'सूचना', '/form/notice', 0, NULL, '2021-07-12 04:03:39', '2021-07-12 04:03:39'),
(16, 'news', 7, 'News', 'समाचार', '/news', 1, NULL, '2021-07-12 04:04:08', '2021-07-12 04:04:08'),
(17, 'bid', 7, 'Bid', 'बाेलपत्र', '#', 6, NULL, '2021-07-12 04:07:18', '2021-07-12 04:07:18'),
(18, 'circular', 7, 'Circular', 'परिपत्र', '#', 3, NULL, '2021-07-12 04:08:20', '2021-07-12 04:08:20'),
(19, 'press-release', 7, 'Press Release', 'प्रेस विज्ञप्ति', '#', 4, NULL, '2021-07-12 04:09:35', '2021-07-12 04:09:35'),
(20, 'right-to-information', 7, 'Right to Information', 'सूचनाकाे हक', '#', 5, NULL, '2021-07-12 04:10:18', '2021-07-12 04:10:18'),
(21, 'image', 8, 'Image', 'तस्बिर', '/image', 0, NULL, '2021-07-12 04:12:54', '2021-07-12 04:12:54'),
(22, 'video', 8, 'Video', 'भिडियाे', '/video', 1, NULL, '2021-07-12 04:13:34', '2021-07-12 04:13:34'),
(23, 'vacancy', 9, 'Vacancy', 'विज्ञापन', '/form/vacancy', 0, NULL, '2021-07-12 04:30:14', '2021-07-12 04:30:14'),
(24, 'syllabus', 9, 'Syllabus', 'पाठ्यक्रम', '/form/syllabus', 1, NULL, '2021-07-12 04:31:36', '2021-07-12 04:31:36'),
(25, 'application-forms', 9, 'ApplicationForms', 'दरखास्त फाराम', '/form/applicationform', 2, NULL, '2021-07-12 04:32:13', '2021-07-12 04:32:13'),
(26, 'exam-centre', 9, 'ExamCentre', 'परीक्षा केन्द्र', '/form/examcentre', 3, NULL, '2021-07-12 04:33:04', '2021-07-12 04:33:04'),
(27, 'exam-schedule', 9, 'Exam Schedule', 'परीक्षा तालिका', '#', 4, NULL, '2021-07-12 04:33:58', '2021-07-12 04:33:58'),
(28, 'written-results', 9, 'Written Results', 'लिखित नतिजा', '/form/writtenresult', 5, NULL, '2021-07-12 04:34:59', '2021-07-12 04:34:59'),
(29, 'recommendation', 9, 'Recommendation', 'सिफारिस', '/form/recommendation', 6, NULL, '2021-07-12 04:35:38', '2021-07-12 04:35:38'),
(31, 'kvda-achievements', 5, 'KVDA Achievements', 'प्राधिकरणका हालसम्मकाे उपलब्धि', 'kvda-achievement', 3, NULL, '2021-07-12 04:49:01', '2021-07-12 04:49:01'),
(34, 'physical-development-committee', 2, 'Physical Development Committee', 'भाैतिक विकास समिति', '#', 7, NULL, '2021-07-12 05:26:34', '2021-07-12 05:26:34'),
(35, 'event', 7, 'Event', 'घटना', '/event', 2, NULL, '2021-07-14 00:54:01', '2021-07-14 00:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` enum('management-team','bod') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `slug`, `title`, `title_np`, `position`, `position_np`, `content`, `content_np`, `phone`, `phone_np`, `email`, `image`, `view`, `order`, `rank`, `is_featured`, `is_published`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 'januka-dhakal', 'Januka Dhakal', 'Januka Dhakal', 'Development Commissioner', 'Development Commissioner', NULL, NULL, NULL, NULL, NULL, 'memer1.jpg', NULL, 0, '1', 1, 1, 0, '2021-07-12 22:35:04', '2021-07-12 22:35:06'),
(2, 'dilip-shekher-shrestha', 'Dilip Shekher Shrestha', 'Dilip Shekher Shrestha', 'Deputy Development Commissioner', 'Deputy Development Commissioner', NULL, NULL, NULL, NULL, NULL, 'IMG_0092.JPG', NULL, 1, '2', 1, 1, 0, '2021-07-12 22:37:41', '2021-07-12 22:37:49'),
(3, 'ishwor-raj-joshi', 'Ishwor Raj Joshi', 'Ishwor Raj Joshi', 'Bhaktapur District Development', 'Bhaktapur District Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '3', 1, 1, 0, '2021-07-12 22:39:00', '2021-07-12 22:39:00'),
(4, 'dinesh-krishna-pote', 'Dinesh Krishna Pote', 'Dinesh Krishna Pote', 'Kathmandu District Development', 'Kathmandu District Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '3', 1, 1, 0, '2021-07-12 22:39:54', '2021-07-12 22:39:54'),
(5, 'ekraj-adhikari', 'Ekraj Adhikari', 'Ekraj Adhikari', 'Lalitpur District Commissioner', 'Lalitpur District Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '3', 1, 1, 0, '2021-07-12 22:40:57', '2021-07-12 22:40:57'),
(6, 'ghanshyam-poudel', 'Ghanshyam Poudel', 'Ghanshyam Poudel', 'Prabakta', 'Prabakta', NULL, NULL, '9813389127', '9813389127', 'ghanshyampoudel@gmail.com', NULL, NULL, 5, '4', 1, 1, 0, '2021-07-12 22:43:00', '2021-07-12 22:43:00'),
(7, 'susma-gautam', 'Susma Gautam', 'Susma Gautam', 'Information Officer', 'Information Officer', NULL, NULL, '9831231222', '9831231222', 'sushmaadhikari@gmail.com', '1b125042376c0d5e69288fba4e0dec561e039dd7.png', NULL, 6, '4', 1, 1, 0, '2021-07-12 22:44:48', '2021-07-12 22:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'admin@kvda.com', NULL, '$2y$10$aqoDKA5nsbEYJaCmfKdgmekZQFNGgjkP1GCgjDJ2xwfnttX5Rh6pS', NULL, '2021-07-12 02:21:41', '2021-07-12 02:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_np` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_np` text COLLATE utf8mb4_unicode_ci,
  `vacancy_date` timestamp NULL DEFAULT NULL,
  `vacancy_date_np` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_sub_menus`
--
ALTER TABLE `child_sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `child_sub_menus_sub_menu_id_slug_unique` (`sub_menu_id`,`slug`),
  ADD KEY `child_sub_menus_sub_menu_id_index` (`sub_menu_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forms_slug_unique` (`slug`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_album_id_index` (`album_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_menus_menu_id_slug_unique` (`menu_id`,`slug`),
  ADD KEY `sub_menus_menu_id_index` (`menu_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vacancies_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `child_sub_menus`
--
ALTER TABLE `child_sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_sub_menus`
--
ALTER TABLE `child_sub_menus`
  ADD CONSTRAINT `child_sub_menus_sub_menu_id_foreign` FOREIGN KEY (`sub_menu_id`) REFERENCES `sub_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
