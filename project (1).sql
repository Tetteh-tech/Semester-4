-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 04:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `user_id`, `activity`, `time`, `date`, `created_at`, `updated_at`, `status`) VALUES
(1, 5, 'excepturi Writing', '03:45 AM', 'Saturday, April 23, 2005', '2025-01-30 10:54:27', '2025-01-30 10:54:27', 'medium'),
(2, 5, 'vel Swimming', '12:52 PM', 'Wednesday, July 8, 1998', '2025-01-30 10:54:27', '2025-01-30 10:54:27', 'low'),
(3, 6, 'quo Running', '01:54 AM', 'Tuesday, June 6, 1995', '2025-01-30 10:54:28', '2025-01-30 10:54:28', 'medium'),
(4, 5, 'quia Reading', '01:44 AM', 'Monday, January 22, 1990', '2025-01-30 10:54:29', '2025-01-30 10:54:29', 'low'),
(5, 7, 'alias Reading', '11:20 PM', 'Sunday, August 28, 2005', '2025-01-30 10:54:29', '2025-01-30 10:54:29', 'High'),
(6, 6, 'dolor Running', '07:59 PM', 'Friday, June 18, 1993', '2025-01-30 10:54:30', '2025-01-30 10:54:30', 'medium'),
(7, 2, 'qui Swimming', '03:04 AM', 'Tuesday, February 28, 2006', '2025-01-30 10:54:31', '2025-01-30 10:54:31', 'medium'),
(8, 6, 'ut Swimming', '09:32 AM', 'Monday, September 16, 2024', '2025-01-30 10:54:32', '2025-01-30 10:54:32', 'medium'),
(9, 6, 'rerum Reading', '04:26 AM', 'Friday, November 16, 2007', '2025-01-30 10:54:32', '2025-01-30 10:54:32', 'medium'),
(10, 7, 'harum Reading', '11:15 AM', 'Thursday, July 17, 2014', '2025-01-30 10:54:32', '2025-01-30 10:54:32', 'low'),
(11, 3, 'reiciendis Writing', '07:43 AM', 'Saturday, January 8, 1977', '2025-01-30 10:54:32', '2025-01-30 10:54:32', 'low'),
(12, 2, 'consequatur Reading', '08:18 PM', 'Wednesday, December 8, 1971', '2025-01-30 10:54:33', '2025-01-30 10:54:33', 'low'),
(13, 7, 'tempore Running', '10:35 AM', 'Thursday, September 28, 1978', '2025-01-30 10:54:33', '2025-01-30 10:54:33', 'High'),
(14, 3, 'dignissimos Reading', '12:17 AM', 'Monday, September 14, 1987', '2025-01-30 10:54:33', '2025-01-30 10:54:33', 'low'),
(15, 6, 'aliquid Running', '03:23 PM', 'Tuesday, September 22, 1970', '2025-01-30 10:54:33', '2025-01-30 10:54:33', 'low'),
(16, 1, 'quia Writing', '12:33 AM', 'Wednesday, November 20, 2019', '2025-01-30 10:54:34', '2025-01-30 10:54:34', 'High'),
(17, 7, 'incidunt Writing', '01:52 AM', 'Wednesday, March 8, 2017', '2025-01-30 10:54:34', '2025-01-30 10:54:34', 'medium'),
(18, 2, 'officiis Reading', '03:50 PM', 'Thursday, August 21, 1997', '2025-01-30 10:54:34', '2025-01-30 10:54:34', 'low'),
(19, 4, 'aut Writing', '09:10 PM', 'Wednesday, May 9, 1973', '2025-01-30 10:54:34', '2025-01-30 10:54:34', 'High'),
(20, 6, 'voluptates Swimming', '09:11 AM', 'Thursday, April 10, 1980', '2025-01-30 10:54:35', '2025-01-30 10:54:35', 'High'),
(21, 2, 'ut Swimming', '03:38 AM', 'Sunday, October 6, 2019', '2025-01-30 10:54:35', '2025-01-30 10:54:35', 'low'),
(22, 2, 'sed Swimming', '01:40 AM', 'Friday, December 23, 2011', '2025-01-30 10:54:36', '2025-01-30 10:54:36', 'medium'),
(23, 2, 'debitis Writing', '10:12 PM', 'Wednesday, December 28, 2011', '2025-01-30 10:54:36', '2025-01-30 10:54:36', 'low'),
(24, 7, 'molestiae Reading', '12:52 PM', 'Friday, June 19, 1992', '2025-01-30 10:54:36', '2025-01-30 10:54:36', 'medium'),
(25, 1, 'eaque Running', '11:12 AM', 'Friday, May 30, 2014', '2025-01-30 10:54:36', '2025-01-30 10:54:36', 'low'),
(26, 5, 'repudiandae Swimming', '05:41 PM', 'Tuesday, September 18, 1990', '2025-01-30 10:54:37', '2025-01-30 10:54:37', 'High'),
(27, 4, 'rerum Running', '01:46 PM', 'Thursday, June 3, 1982', '2025-01-30 10:54:37', '2025-01-30 10:54:37', 'medium'),
(28, 7, 'est Reading', '10:16 PM', 'Wednesday, February 17, 1971', '2025-01-30 10:54:37', '2025-01-30 10:54:37', 'medium'),
(29, 7, 'error Running', '01:24 AM', 'Tuesday, December 30, 1986', '2025-01-30 10:54:38', '2025-01-30 10:54:38', 'High'),
(30, 2, 'eum Running', '08:57 AM', 'Tuesday, January 18, 2011', '2025-01-30 10:54:38', '2025-01-30 10:54:38', 'low'),
(31, 1, 'et Writing', '03:38 PM', 'Monday, April 4, 1994', '2025-01-30 10:54:38', '2025-01-30 10:54:38', 'High'),
(32, 4, 'a Reading', '03:42 AM', 'Friday, December 29, 1978', '2025-01-30 10:54:38', '2025-01-30 10:54:38', 'low'),
(33, 1, 'qui Running', '10:13 AM', 'Thursday, August 11, 1988', '2025-01-30 10:54:39', '2025-01-30 10:54:39', 'High'),
(34, 5, 'alias Swimming', '08:46 PM', 'Thursday, February 5, 1981', '2025-01-30 10:54:39', '2025-01-30 10:54:39', 'medium'),
(35, 3, 'eos Reading', '09:04 PM', 'Thursday, September 28, 2006', '2025-01-30 10:54:39', '2025-01-30 10:54:39', 'medium'),
(36, 2, 'dfghjkljhgf', '18:17', '2025-01-30', '2025-01-30 17:38:14', '2025-01-30 17:38:14', 'cghjklkjhgf'),
(37, 2, 'qwert', '18:38', '2025-01-30', '2025-01-30 17:39:19', '2025-01-30 17:39:19', 'asdfgh'),
(38, 9, 'hghgh', '18:50', '2025-01-30', '2025-01-30 17:50:50', '2025-01-30 17:50:50', 'jfjfjf'),
(39, 8, '50 pushups', '11:52', '2025-01-31', '2025-01-31 10:52:29', '2025-01-31 10:52:29', 'high'),
(40, 8, '50 push ups', '11:54', '2025-01-31', '2025-01-31 10:55:03', '2025-01-31 10:55:03', 'low'),
(41, 8, 'hjk', '11:55', '2025-01-31', '2025-01-31 11:11:55', '2025-01-31 11:11:55', 'ghjkl'),
(42, 7, '50 push ups', '12:20', '2025-01-31', '2025-01-31 11:21:08', '2025-01-31 11:21:08', 'high'),
(43, 7, 'bhj', '16:58', '2025-01-31', '2025-01-31 15:58:34', '2025-01-31 15:58:34', 'ghjkl'),
(44, 7, 'Gsyvs', '17:22', '2025-01-31', '2025-01-31 16:22:25', '2025-01-31 16:22:25', 'Hshsh'),
(45, 7, 'Am black', '05:55', '2025-01-06', '2025-01-31 16:23:46', '2025-01-31 16:23:46', 'Ur white'),
(46, 10, 'Cooking evening food', '05:00', '2025-01-31', '2025-01-31 16:27:29', '2025-01-31 16:27:29', 'High'),
(47, 10, 'The man', '17:27', '2025-01-31', '2025-01-31 16:27:41', '2025-01-31 16:27:41', 'Then'),
(48, 10, 'The man', '17:27', '2025-01-31', '2025-01-31 16:27:44', '2025-01-31 16:27:44', 'Then'),
(49, 10, 'jk', '11:16', '2025-02-01', '2025-02-01 10:16:24', '2025-02-01 10:16:24', 'bn'),
(53, 9, 'Cooking', '14:27', '2025-02-01', '2025-02-01 13:27:55', '2025-02-01 13:27:55', 'High'),
(55, 9, 'cghjcvhj', '13:10', '2025-02-03', '2025-02-03 12:10:39', '2025-02-03 12:10:39', 'High'),
(56, 9, 'sdfg', '13:20', '2025-02-03', '2025-02-03 12:20:26', '2025-02-03 12:20:26', 'Low'),
(57, 9, 'mvmgmb', '13:21', '2025-02-03', '2025-02-03 12:23:51', '2025-02-03 12:23:51', 'Medium'),
(58, 9, 'mccncnc', '13:24', '2025-02-03', '2025-02-03 12:24:22', '2025-02-03 12:24:22', 'High'),
(59, 9, 'checking my code before time', '17:37', '2025-02-06', '2025-02-06 17:06:43', '2025-02-06 17:15:47', 'Low'),
(62, 11, 'Y U go leave me now 😠😭', '07:15', '2025-02-09', '2025-02-06 17:28:38', '2025-02-06 17:29:49', 'Low'),
(63, 9, 'Rading', '11:20', '2025-02-10', '2025-02-10 10:20:20', '2025-02-10 10:20:20', 'Medium'),
(65, 9, 'Reading', '11:26', '2025-02-10', '2025-02-10 10:29:32', '2025-02-10 10:29:32', 'High'),
(66, 9, 'reading', '06:48', '2025-02-13', '2025-02-13 05:49:28', '2025-02-13 05:53:54', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_28_123332_create_homes_table', 2),
(6, '2025_01_30_113801_updatehomes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'AppToken', 'a659286f49e35471184b6e6a30296ca7e5b4d4e823333169e35fecb6c4f48ab3', '[\"*\"]', NULL, NULL, '2025-01-29 09:58:56', '2025-01-29 09:58:56'),
(2, 'App\\Models\\User', 2, 'AppToken', '257e6ef5178323e455f698fa159126691eb1af2c8c4f071da3fde961c84653a0', '[\"*\"]', NULL, NULL, '2025-01-29 09:59:05', '2025-01-29 09:59:05'),
(3, 'App\\Models\\User', 2, 'AppToken', '247e5d8d4020fa4c57557d24ea2692836ba38c550e3f2a552c1c1cc943f8151b', '[\"*\"]', NULL, NULL, '2025-01-29 10:06:33', '2025-01-29 10:06:33'),
(4, 'App\\Models\\User', 2, 'AppToken', '814a2d757b19fed9566b2b776eabe06b569060665104fd80cf8d693055304af2', '[\"*\"]', NULL, NULL, '2025-01-29 10:07:05', '2025-01-29 10:07:05'),
(5, 'App\\Models\\User', 8, 'AppToken', 'e8ed4e077c33cfaeba8ae0228a4faf586fdc6a300063aa5ac219388eac34143e', '[\"*\"]', NULL, NULL, '2025-01-29 10:08:40', '2025-01-29 10:08:40'),
(6, 'App\\Models\\User', 8, 'AppToken', '944127b3a35063a5d199c42d56bf3555f4a3171d5b5c53d33a92ae332fb2a6c7', '[\"*\"]', NULL, NULL, '2025-01-29 10:08:54', '2025-01-29 10:08:54'),
(7, 'App\\Models\\User', 8, 'AppToken', 'd9831019d7969ff32cfa0634f480698b1c50d2f9c5f8c33eff0744bb5ee723ea', '[\"*\"]', NULL, NULL, '2025-01-29 10:23:20', '2025-01-29 10:23:20'),
(8, 'App\\Models\\User', 8, 'AppToken', '367e7573c9c66884b3a4c8ab0705cb6560a9d10d2233a31b78c6ed1a919e16a3', '[\"*\"]', NULL, NULL, '2025-01-29 10:23:22', '2025-01-29 10:23:22'),
(9, 'App\\Models\\User', 8, 'AppToken', '5f64cf5a04f702a04258f37eef9e78fd873aafb3e887bdfd27488494f57c851c', '[\"*\"]', NULL, NULL, '2025-01-29 10:24:03', '2025-01-29 10:24:03'),
(10, 'App\\Models\\User', 8, 'AppToken', '6734dda8177544891b75958f1739999942730ea3dbcbb2f3cdd8ea5ebb021249', '[\"*\"]', NULL, NULL, '2025-01-29 10:25:41', '2025-01-29 10:25:41'),
(11, 'App\\Models\\User', 8, 'AppToken', 'd6cab34ab474603b4c8cbdb544b443ce47e943e92964e1a9ff8f87e4d8b7eef9', '[\"*\"]', NULL, NULL, '2025-01-29 10:26:02', '2025-01-29 10:26:02'),
(12, 'App\\Models\\User', 2, 'AppToken', '0581ef929f89dcefe3226d4217885134392cc4be20d6ccf8ce9c3a2e72f3eec1', '[\"*\"]', '2025-01-29 10:48:42', NULL, '2025-01-29 10:26:37', '2025-01-29 10:48:42'),
(13, 'App\\Models\\User', 2, 'AppToken', 'fe21684f751aa2099b88646d765cdbc8a5892e0be7aa3ffa83f41e86fa29005b', '[\"*\"]', '2025-01-29 10:51:48', NULL, '2025-01-29 10:49:07', '2025-01-29 10:51:48'),
(14, 'App\\Models\\User', 2, 'AppToken', 'da3bbe3b1e9075c8b1c4f064c7122f6ed9759ad447f45fc591b5d615d7b5b8f5', '[\"*\"]', '2025-01-29 10:58:36', NULL, '2025-01-29 10:52:20', '2025-01-29 10:58:36'),
(15, 'App\\Models\\User', 1, 'AppToken', '7d94a24e02cb3f39fc8d495a97f200191e571b3999b5592025d5170c2a60bf07', '[\"*\"]', NULL, NULL, '2025-01-29 13:03:01', '2025-01-29 13:03:01'),
(16, 'App\\Models\\User', 1, 'AppToken', '744bde62bb08592f9f8416c30fd6b79638cb728345003b638fa7cb2e58f76f08', '[\"*\"]', NULL, NULL, '2025-01-29 13:03:06', '2025-01-29 13:03:06'),
(17, 'App\\Models\\User', 2, 'AppToken', 'c87c1b6d533c976b4f1bc730c44816a1b6519de8b8f98147cfbedd9246db1b72', '[\"*\"]', NULL, NULL, '2025-01-29 13:05:23', '2025-01-29 13:05:23'),
(18, 'App\\Models\\User', 2, 'AppToken', '8ddced9129148817516d5067b63abe87eca33d15d669cd8ad72b0160898d3077', '[\"*\"]', '2025-01-29 13:06:27', NULL, '2025-01-29 13:06:23', '2025-01-29 13:06:27'),
(19, 'App\\Models\\User', 2, 'AppToken', '0a502e52da47676b37b70a548eff75679b81f7beca5c344f3aad15555bed0e9b', '[\"*\"]', '2025-01-29 13:08:56', NULL, '2025-01-29 13:08:55', '2025-01-29 13:08:56'),
(20, 'App\\Models\\User', 2, 'AppToken', 'e5a7be3edc808f2e23210feff918af23867de6c4ba726a60c664dc47c7d315b0', '[\"*\"]', '2025-01-29 13:37:42', NULL, '2025-01-29 13:37:38', '2025-01-29 13:37:42'),
(21, 'App\\Models\\User', 2, 'AppToken', 'e61b9535d00e9da6ed7933d3061ecbeace48c570045ec34fac613effd0d98c73', '[\"*\"]', '2025-01-29 13:40:43', NULL, '2025-01-29 13:40:42', '2025-01-29 13:40:43'),
(22, 'App\\Models\\User', 2, 'AppToken', '44aada90cf665760a670897417eb0efa8034fadd164213f4fc749b869a1b655a', '[\"*\"]', '2025-01-29 13:46:51', NULL, '2025-01-29 13:46:49', '2025-01-29 13:46:51'),
(23, 'App\\Models\\User', 2, 'AppToken', '093e9a578b7d8af6f519958f21cc1f6dcfb4e4ba455b31b442a84145457a3191', '[\"*\"]', '2025-01-29 14:04:29', NULL, '2025-01-29 14:04:26', '2025-01-29 14:04:29'),
(24, 'App\\Models\\User', 2, 'AppToken', 'df82ffa95b66317dba51a9ed6bc4807c896c54d47fcf619d748ac36044983d31', '[\"*\"]', '2025-01-29 14:58:49', NULL, '2025-01-29 14:51:04', '2025-01-29 14:58:49'),
(25, 'App\\Models\\User', 2, 'AppToken', '335abcc1b3e2d0bd0e3901858c354553d09d3b550850bfb91e6ecdb8aeb225ce', '[\"*\"]', '2025-01-29 15:01:42', NULL, '2025-01-29 15:01:41', '2025-01-29 15:01:42'),
(26, 'App\\Models\\User', 2, 'AppToken', '277e1ab67932f4779e801c678eec6c37c9d01588384882f5b2c8509d62dd807e', '[\"*\"]', '2025-01-29 15:03:13', NULL, '2025-01-29 15:03:11', '2025-01-29 15:03:13'),
(27, 'App\\Models\\User', 2, 'AppToken', '9fbfe726c6f5c317f86f1d393f818d0fa96c253c509ab00ed749f081e3dc97a4', '[\"*\"]', '2025-01-29 15:04:43', NULL, '2025-01-29 15:04:41', '2025-01-29 15:04:43'),
(28, 'App\\Models\\User', 2, 'AppToken', '42f05d1355417f1d467c4afa96d25b1084a31c4a299d96617759abfc0320d279', '[\"*\"]', '2025-01-29 15:34:16', NULL, '2025-01-29 15:34:15', '2025-01-29 15:34:16'),
(29, 'App\\Models\\User', 2, 'AppToken', 'a025788bd94bf4f9bb6470bd9683e247196ab9da17b3ef32ba79c9259730f9f1', '[\"*\"]', '2025-01-29 15:36:13', NULL, '2025-01-29 15:36:12', '2025-01-29 15:36:13'),
(30, 'App\\Models\\User', 2, 'AppToken', 'bcc82c1e6d18d39337291e8515cf194e7fb690acf580ae2328a3fc8fa8e62c23', '[\"*\"]', '2025-01-29 15:36:57', NULL, '2025-01-29 15:36:55', '2025-01-29 15:36:57'),
(31, 'App\\Models\\User', 2, 'AppToken', '8eb077bf97d5cdc4a1e0bcda6f210023a3ff3bc9c7be768910d968e7d1e773b6', '[\"*\"]', '2025-01-29 15:38:12', NULL, '2025-01-29 15:38:10', '2025-01-29 15:38:12'),
(32, 'App\\Models\\User', 2, 'AppToken', '22569c89ce9adfc778a1e0d131b7871bab34f359350ffc3881a695bac5dfaffd', '[\"*\"]', '2025-01-29 15:40:39', NULL, '2025-01-29 15:40:37', '2025-01-29 15:40:39'),
(33, 'App\\Models\\User', 2, 'AppToken', '41870656db94462860a50c51104762699769e61f57b7248a6f904074e17f00a2', '[\"*\"]', '2025-01-29 15:45:59', NULL, '2025-01-29 15:45:54', '2025-01-29 15:45:59'),
(34, 'App\\Models\\User', 2, 'AppToken', '28d8a3529e3015af79eaafa3c139839ea8a99a3bb89b415757671e4b6b00ce6d', '[\"*\"]', NULL, NULL, '2025-01-29 15:45:56', '2025-01-29 15:45:56'),
(35, 'App\\Models\\User', 2, 'AppToken', 'ba82e9ead295e9c46fe1af22f8159d96e39922f00d9412f6c7ee3ce0fa20b562', '[\"*\"]', '2025-01-29 15:46:25', NULL, '2025-01-29 15:46:23', '2025-01-29 15:46:25'),
(36, 'App\\Models\\User', 3, 'AppToken', 'faa231b0cbbcca10a09907853855f5485a50c13877192c7ded06622fcfecad01', '[\"*\"]', '2025-01-29 15:50:19', NULL, '2025-01-29 15:50:17', '2025-01-29 15:50:19'),
(37, 'App\\Models\\User', 7, 'AppToken', '8c532d4e6be238940adb66611dfd2a3005e70495fc34b52c2fa1e515ccbd38b1', '[\"*\"]', '2025-01-29 15:56:43', NULL, '2025-01-29 15:56:41', '2025-01-29 15:56:43'),
(38, 'App\\Models\\User', 2, 'AppToken', 'fd6d52a5140d373868019cbe11fe74d49b9c5d2827de284af81d42fc9b82279d', '[\"*\"]', '2025-01-29 16:17:19', NULL, '2025-01-29 16:17:17', '2025-01-29 16:17:19'),
(39, 'App\\Models\\User', 2, 'AppToken', '18e528b5fe4108cb81d18defd26b4713a5d21bed4cba3b39a6a69edf5bf936d2', '[\"*\"]', '2025-01-30 08:17:17', NULL, '2025-01-30 08:17:11', '2025-01-30 08:17:17'),
(40, 'App\\Models\\User', 2, 'AppToken', 'fc1701a20a6196798cbfbc0d8b8c3f84b1f755603d3efe6ece60e6c965e11090', '[\"*\"]', '2025-01-30 08:32:09', NULL, '2025-01-30 08:32:07', '2025-01-30 08:32:09'),
(41, 'App\\Models\\User', 2, 'AppToken', '11824c9f239ff4daa820f6f381630a7a4fcde1462d969418b3da0f88fafb3ae0', '[\"*\"]', '2025-01-30 08:38:56', NULL, '2025-01-30 08:38:55', '2025-01-30 08:38:56'),
(42, 'App\\Models\\User', 2, 'AppToken', '643cb54935812f2cb5b9b82415c77112f03487de772093e5d449b3fce634ce4c', '[\"*\"]', '2025-01-30 08:53:35', NULL, '2025-01-30 08:39:21', '2025-01-30 08:53:35'),
(43, 'App\\Models\\User', 2, 'AppToken', '4e8666971711bcc2737827d7418d333af7a691b5398b9eda6cb410c93fe907fb', '[\"*\"]', '2025-01-30 08:47:25', NULL, '2025-01-30 08:47:23', '2025-01-30 08:47:25'),
(44, 'App\\Models\\User', 2, 'AppToken', 'f67b66fd4b8d2311d433cfa96bd3d5e564e07858b9ad6d9f9f4908ea2543f4c8', '[\"*\"]', '2025-01-30 08:50:59', NULL, '2025-01-30 08:50:31', '2025-01-30 08:50:59'),
(45, 'App\\Models\\User', 2, 'AppToken', 'f9b00786493e03e61cd957825e505dd05d19564425d5e92a46da1fedb1ec0b43', '[\"*\"]', NULL, NULL, '2025-01-30 08:50:45', '2025-01-30 08:50:45'),
(46, 'App\\Models\\User', 2, 'AppToken', '35d1615a0dc91b4bbbe81415fa2d57b94263722ce6d19b8935729c231344756e', '[\"*\"]', '2025-01-30 08:53:33', NULL, '2025-01-30 08:53:20', '2025-01-30 08:53:33'),
(47, 'App\\Models\\User', 2, 'AppToken', '72c0f37460e06bca9837bcff6ed66904988304d15724edf184b1e871a2a7339d', '[\"*\"]', '2025-01-30 08:54:39', NULL, '2025-01-30 08:54:38', '2025-01-30 08:54:39'),
(48, 'App\\Models\\User', 2, 'AppToken', 'd868afed5801ccbd09a42132c13ce7f338ee1e37085a4214c7e787bddb70fee1', '[\"*\"]', '2025-01-30 09:03:24', NULL, '2025-01-30 09:03:19', '2025-01-30 09:03:24'),
(49, 'App\\Models\\User', 3, 'AppToken', 'e3af0be2115926307f26147859587fab4cffa562fac583e923d600e9a2fac48e', '[\"*\"]', '2025-01-30 09:08:29', NULL, '2025-01-30 09:08:28', '2025-01-30 09:08:29'),
(50, 'App\\Models\\User', 3, 'AppToken', '91106f08bdd2e59086679ae252824e7d33fceb1105a7bb78bee8c2c35659ff20', '[\"*\"]', '2025-01-30 09:13:16', NULL, '2025-01-30 09:13:14', '2025-01-30 09:13:16'),
(51, 'App\\Models\\User', 3, 'AppToken', '6a64e710d5fe150fc2aceb1a94dd09f25f4271c0fe4d7a7371650956f4c93d13', '[\"*\"]', '2025-01-30 09:30:23', NULL, '2025-01-30 09:30:21', '2025-01-30 09:30:23'),
(52, 'App\\Models\\User', 3, 'AppToken', '406cfd3f9cb877bdaaaf072a304d26b9a93e04b64b00842907017bd48cdf6bcb', '[\"*\"]', '2025-01-30 10:57:22', NULL, '2025-01-30 10:55:08', '2025-01-30 10:57:22'),
(53, 'App\\Models\\User', 7, 'AppToken', 'a98fb3529223339941ddf7f4122af9404666def62e104eb1d1855dbda91b70a7', '[\"*\"]', '2025-01-30 10:59:56', NULL, '2025-01-30 10:58:25', '2025-01-30 10:59:56'),
(54, 'App\\Models\\User', 7, 'AppToken', '2a99b0d29d0792af82f8fb35b976fcd776805447928dd6b6d40e7182c5c306ab', '[\"*\"]', '2025-01-30 15:06:58', NULL, '2025-01-30 14:34:24', '2025-01-30 15:06:58'),
(55, 'App\\Models\\User', 7, 'AppToken', '27bea52cadeeac4804cf20a14a6eb06d101c009c08bf22a557550f152ec71edc', '[\"*\"]', '2025-01-30 15:15:39', NULL, '2025-01-30 15:10:56', '2025-01-30 15:15:39'),
(56, 'App\\Models\\User', 7, 'AppToken', '1f0ac45b022ea190a8414ceb7d3249d2484a24f7e12336ccb31b38f58c3b9140', '[\"*\"]', NULL, NULL, '2025-01-30 15:54:03', '2025-01-30 15:54:03'),
(57, 'App\\Models\\User', 7, 'AppToken', 'fc6e2727365f8bcf4196a10383db53f83ce9efd5afc4514ca30afe3c7df27e88', '[\"*\"]', NULL, NULL, '2025-01-30 15:54:44', '2025-01-30 15:54:44'),
(58, 'App\\Models\\User', 7, 'AppToken', 'ea62b38fad4823d93c7a4e18626a2c953fa37ab15452813f901d83b66011f7dd', '[\"*\"]', NULL, NULL, '2025-01-30 15:58:52', '2025-01-30 15:58:52'),
(59, 'App\\Models\\User', 7, 'AppToken', '5ffcea1b28d2c924f8a9dae77a325ae4b5fef3ddb8fa772c869b3a247dbf2ff3', '[\"*\"]', NULL, NULL, '2025-01-30 15:59:00', '2025-01-30 15:59:00'),
(60, 'App\\Models\\User', 9, 'AppToken', 'f3587095c898423843667582e559d6212fdf866bf20a40e261b32095b3be230b', '[\"*\"]', NULL, NULL, '2025-01-30 15:59:30', '2025-01-30 15:59:30'),
(61, 'App\\Models\\User', 9, 'AppToken', 'ac873ea7654ac892e11a73e1457fe96018a8a63b99064c3f2889679fc46657fa', '[\"*\"]', NULL, NULL, '2025-01-30 15:59:48', '2025-01-30 15:59:48'),
(62, 'App\\Models\\User', 9, 'AppToken', '88169d3da0dfe32ed4bc573d7f8feadfbc21142a2d46d9eec8469a051a3a0e3e', '[\"*\"]', NULL, NULL, '2025-01-30 16:01:12', '2025-01-30 16:01:12'),
(63, 'App\\Models\\User', 9, 'AppToken', '61800ae10e34929580ab82e981e2f6811a6ed725211bf4be6c329b30ae445efc', '[\"*\"]', NULL, NULL, '2025-01-30 16:01:19', '2025-01-30 16:01:19'),
(64, 'App\\Models\\User', 9, 'AppToken', 'c307ef43c7128e93dbb7c7556d6941fe8809af8c32d6e834cb05556ce2eef82f', '[\"*\"]', NULL, NULL, '2025-01-30 16:03:25', '2025-01-30 16:03:25'),
(65, 'App\\Models\\User', 9, 'AppToken', '9a921791cfdeb320e7c8ec3b300e00976f2eafc64bef6956266f62a076171d11', '[\"*\"]', NULL, NULL, '2025-01-30 16:04:34', '2025-01-30 16:04:34'),
(66, 'App\\Models\\User', 9, 'AppToken', '6773aa64ec9fc05362d00bd1f32b275ba0dd556d61e2d8f8b84eedaeda20acf1', '[\"*\"]', '2025-01-30 16:05:12', NULL, '2025-01-30 16:05:11', '2025-01-30 16:05:12'),
(67, 'App\\Models\\User', 2, 'AppToken', 'e5358f6e5222885da3422fc0a165690466a02b21cc6dc8bd5e163c9d00589d60', '[\"*\"]', '2025-01-30 16:15:34', NULL, '2025-01-30 16:15:33', '2025-01-30 16:15:34'),
(68, 'App\\Models\\User', 2, 'AppToken', '78c64abad86e163bd89e281ca4c19322778105275f91a7e2a5cdfb5b3f9ee2b8', '[\"*\"]', '2025-01-30 16:45:48', NULL, '2025-01-30 16:45:47', '2025-01-30 16:45:48'),
(69, 'App\\Models\\User', 2, 'AppToken', '36947adf856b7396d0264961dbe7dffaf1a16ffaa791d1b25793a2e8178811ee', '[\"*\"]', '2025-01-30 16:51:24', NULL, '2025-01-30 16:51:23', '2025-01-30 16:51:24'),
(70, 'App\\Models\\User', 2, 'AppToken', 'eac2680f73e6961e7aede8b8399f0c5b0b992274a85d31c82f26ff63b11aed11', '[\"*\"]', '2025-01-30 17:02:22', NULL, '2025-01-30 16:53:08', '2025-01-30 17:02:22'),
(71, 'App\\Models\\User', 2, 'AppToken', 'b0f9d8b87baaa1dffa839d7fd1e0075a9214194ad8895ee186ce45bd12d00093', '[\"*\"]', NULL, NULL, '2025-01-30 17:02:01', '2025-01-30 17:02:01'),
(72, 'App\\Models\\User', 2, 'AppToken', '9d9c7684e99e8e85a676ac0f130425c2792d0f48b38d51b755a5e541eea4c22b', '[\"*\"]', NULL, NULL, '2025-01-30 17:02:19', '2025-01-30 17:02:19'),
(73, 'App\\Models\\User', 2, 'AppToken', '6a3cf3ef922bfc4d2ab2ab9da4cae933f54cb52ec24835b518c7bf4d61811e65', '[\"*\"]', NULL, NULL, '2025-01-30 17:04:58', '2025-01-30 17:04:58'),
(74, 'App\\Models\\User', 2, 'AppToken', '34eb30c4d972cf2db55d45813dd2400c51a2be2f32f5df5d8469a04ad9708017', '[\"*\"]', NULL, NULL, '2025-01-30 17:07:51', '2025-01-30 17:07:51'),
(75, 'App\\Models\\User', 2, 'AppToken', '443db9712805cb01b93dd0e8d9757a624afe98180831035a57a24a0f6003e27b', '[\"*\"]', NULL, NULL, '2025-01-30 17:11:18', '2025-01-30 17:11:18'),
(76, 'App\\Models\\User', 2, 'AppToken', '092b035e5e38e8559070bdb3af7cc9e961024a5308082e528c5a11eaa9e700e8', '[\"*\"]', NULL, NULL, '2025-01-30 17:11:32', '2025-01-30 17:11:32'),
(77, 'App\\Models\\User', 2, 'AppToken', '074cced923e454cc49e18b82b8636cacabc23889064f3160ce422f474a7bcb5b', '[\"*\"]', '2025-01-30 17:17:09', NULL, '2025-01-30 17:12:08', '2025-01-30 17:17:09'),
(78, 'App\\Models\\User', 2, 'AppToken', '56f24059c9afd9ac091868449a817e0d7611d5988245009d65422c8c01a4ce3c', '[\"*\"]', '2025-01-30 17:39:19', NULL, '2025-01-30 17:17:49', '2025-01-30 17:39:19'),
(79, 'App\\Models\\User', 9, 'AppToken', '7684630f1641da4f05f644811a66f5ebf2463f178251fa9e9fcbbd96e66c94ca', '[\"*\"]', '2025-01-30 17:50:50', NULL, '2025-01-30 17:50:33', '2025-01-30 17:50:50'),
(80, 'App\\Models\\User', 9, 'AppToken', '8a74f546b8485e06a012f361332855749e3201cc18faba0d9ec294d55691ef62', '[\"*\"]', '2025-01-30 17:52:57', NULL, '2025-01-30 17:51:16', '2025-01-30 17:52:57'),
(81, 'App\\Models\\User', 8, 'AppToken', '6ae03332084253cb0f7ef3b79937527541950d32c52af3d5993e21d6cbf29de5', '[\"*\"]', '2025-01-31 10:54:01', NULL, '2025-01-31 10:51:50', '2025-01-31 10:54:01'),
(82, 'App\\Models\\User', 8, 'AppToken', '11a7aa19aff70946d4adbe87617b6e8a178c2c3e8b07b4806ede0188b678cb09', '[\"*\"]', '2025-01-31 11:18:41', NULL, '2025-01-31 10:54:33', '2025-01-31 11:18:41'),
(83, 'App\\Models\\User', 7, 'AppToken', 'a95c68fc98b00cf6cb6a13a846fa1177cd6733949d8ae7bf44937a2dd5e91004', '[\"*\"]', '2025-01-31 11:21:10', NULL, '2025-01-31 11:19:37', '2025-01-31 11:21:10'),
(84, 'App\\Models\\User', 7, 'AppToken', 'e4a50787715412576bad94564d3c10da230d319ebc9782c339c5f9ba606a6fae', '[\"*\"]', '2025-01-31 15:30:40', NULL, '2025-01-31 15:30:33', '2025-01-31 15:30:40'),
(85, 'App\\Models\\User', 7, 'AppToken', 'b17725ae1ba9d7f5b2e48f41acde91ae2427a3b104fbe18a0e93b068878a39f4', '[\"*\"]', NULL, NULL, '2025-01-31 15:39:46', '2025-01-31 15:39:46'),
(86, 'App\\Models\\User', 7, 'AppToken', '4a34cca3d9617c8487634d9841727bf142d0499fedef76653bb255c1488df0e3', '[\"*\"]', NULL, NULL, '2025-01-31 15:39:54', '2025-01-31 15:39:54'),
(87, 'App\\Models\\User', 7, 'AppToken', '27417acfb3d52a67552e5af2bbbf3bf06c111802f9424c4fe975393690ca5508', '[\"*\"]', NULL, NULL, '2025-01-31 15:40:07', '2025-01-31 15:40:07'),
(88, 'App\\Models\\User', 7, 'AppToken', 'a845f1b602f244154061a29b9ac6761f8b8f74dd2621ecab3b21e97d88c24762', '[\"*\"]', NULL, NULL, '2025-01-31 15:41:05', '2025-01-31 15:41:05'),
(89, 'App\\Models\\User', 7, 'AppToken', '7ecf41c383d5367c04cd10e2613c9608ef7474d7a101239ef0cd8494b2b15e54', '[\"*\"]', '2025-01-31 16:02:48', NULL, '2025-01-31 15:41:59', '2025-01-31 16:02:48'),
(90, 'App\\Models\\User', 9, 'AppToken', '0686c0e348931a0bd597e781bca4957803c5dbfef1f2ec18b14aa37b2ae4e8ab', '[\"*\"]', NULL, NULL, '2025-01-31 15:42:15', '2025-01-31 15:42:15'),
(91, 'App\\Models\\User', 9, 'AppToken', '8828a96244bdf2d2f16e2c298bd74a0d59f75d64026f38d139ebaea468fd95ef', '[\"*\"]', NULL, NULL, '2025-01-31 15:46:59', '2025-01-31 15:46:59'),
(92, 'App\\Models\\User', 9, 'AppToken', 'f1020ddee64e832332fe9cdb75808804d858fff026929a7f9a6ebc78b85f873a', '[\"*\"]', '2025-01-31 15:56:08', NULL, '2025-01-31 15:56:03', '2025-01-31 15:56:08'),
(93, 'App\\Models\\User', 9, 'AppToken', 'bc06fe9cafa46d6b6ebb15eafb340e8dea8e4bb0163297978ffb1c7d75cc2a8f', '[\"*\"]', NULL, NULL, '2025-01-31 15:56:05', '2025-01-31 15:56:05'),
(94, 'App\\Models\\User', 7, 'AppToken', '7d2f321e4bea0c678e6e4199161890fe77ca1df6b4824c10d3ff891d781a8ba9', '[\"*\"]', '2025-01-31 16:00:55', NULL, '2025-01-31 16:00:53', '2025-01-31 16:00:55'),
(95, 'App\\Models\\User', 7, 'AppToken', '0e173820e3496bab17e927da3fff49d4a83f909a0b46586dd3d47fc6216e7d4d', '[\"*\"]', '2025-01-31 16:02:33', NULL, '2025-01-31 16:02:32', '2025-01-31 16:02:33'),
(96, 'App\\Models\\User', 7, 'AppToken', '7d7d18aa233026e7bd81878aff1ab6edade91b6415f0c034eff96a9ae1e338ee', '[\"*\"]', '2025-01-31 16:06:14', NULL, '2025-01-31 16:06:12', '2025-01-31 16:06:14'),
(97, 'App\\Models\\User', 7, 'AppToken', '7073eb6f8604e79dc92e0c3108ea495d1c558332f22b17e7507875b6eab35d56', '[\"*\"]', '2025-01-31 16:06:22', NULL, '2025-01-31 16:06:20', '2025-01-31 16:06:22'),
(98, 'App\\Models\\User', 7, 'AppToken', '319628d2a14a63d5e00fb1d01f64f4ced555f8372e80368b7e26bd3ff530fdca', '[\"*\"]', NULL, NULL, '2025-01-31 16:06:21', '2025-01-31 16:06:21'),
(99, 'App\\Models\\User', 7, 'AppToken', 'a64be5c4a48201a63e648ad07498f15b5de2397d6ea341292a9e727cfb20ce85', '[\"*\"]', '2025-01-31 16:07:02', NULL, '2025-01-31 16:07:00', '2025-01-31 16:07:02'),
(100, 'App\\Models\\User', 7, 'AppToken', '4d9917e1c414ed4c78ef32a1dcfb93f14472cf6640e52d601fae52aa886b4f11', '[\"*\"]', '2025-01-31 16:07:07', NULL, '2025-01-31 16:07:06', '2025-01-31 16:07:07'),
(101, 'App\\Models\\User', 7, 'AppToken', '91dd76de9d848c33ff661805a65f11a4981e9cbd8d0aa8af455a0434135806d1', '[\"*\"]', '2025-01-31 16:23:47', NULL, '2025-01-31 16:21:57', '2025-01-31 16:23:47'),
(102, 'App\\Models\\User', 10, 'AppToken', 'f34594f3528883435a4568c7a43c3e79842f4fcb17cbaba14804d628b86b460b', '[\"*\"]', NULL, NULL, '2025-01-31 16:25:15', '2025-01-31 16:25:15'),
(103, 'App\\Models\\User', 10, 'AppToken', '5b7d8a2db3e0e22c3e445ccbd659d82d818ec58cae7de7edeedb7060f6e71316', '[\"*\"]', '2025-01-31 16:27:46', NULL, '2025-01-31 16:26:27', '2025-01-31 16:27:46'),
(104, 'App\\Models\\User', 10, 'AppToken', 'f23b63a3ecef6bdf46c33e091b1a68492bf82a4947777ece310a167694963f5c', '[\"*\"]', '2025-02-01 10:16:26', NULL, '2025-01-31 16:35:33', '2025-02-01 10:16:26'),
(105, 'App\\Models\\User', 9, 'AppToken', '1c167629ea048b28f816e8bfb33ff7fd3f109582595cb24d543dae5a3564feea', '[\"*\"]', '2025-02-01 10:52:46', NULL, '2025-02-01 10:19:23', '2025-02-01 10:52:46'),
(106, 'App\\Models\\User', 9, 'AppToken', '439221b70088515d4041b79a2ca255366fe3d49fe4c1b05aab24dcc329008340', '[\"*\"]', '2025-02-01 12:19:35', NULL, '2025-02-01 10:53:10', '2025-02-01 12:19:35'),
(107, 'App\\Models\\User', 9, 'AppToken', 'ccaf508ebe5267704f02299d8b4f8a4451aad66734cf5317f92c163151249ef1', '[\"*\"]', '2025-02-01 12:23:32', NULL, '2025-02-01 12:23:30', '2025-02-01 12:23:32'),
(108, 'App\\Models\\User', 9, 'AppToken', '1168c95522cf397ba3f8051d65eaa8bc266fbbc57e84b0b37c172a3d18b4b3d8', '[\"*\"]', '2025-02-01 13:25:02', NULL, '2025-02-01 12:38:53', '2025-02-01 13:25:02'),
(109, 'App\\Models\\User', 9, 'AppToken', '613c93020611abc8e12b0aa8283b6d97cec373549968182e89fecadb36a1b173', '[\"*\"]', '2025-02-01 13:28:26', NULL, '2025-02-01 13:27:38', '2025-02-01 13:28:26'),
(110, 'App\\Models\\User', 9, 'AppToken', 'f7b9f6e2b68f18c6c6934cdbdfe2e5ebaa8d9d2a2f9d375909dac56d10a0396e', '[\"*\"]', '2025-02-03 11:00:30', NULL, '2025-02-03 11:00:11', '2025-02-03 11:00:30'),
(111, 'App\\Models\\User', 9, 'AppToken', '160f3ca907e25c226e48115a08589421c1e0ace33edabfe78432903be60d0724', '[\"*\"]', '2025-02-03 11:49:33', NULL, '2025-02-03 11:42:33', '2025-02-03 11:49:33'),
(112, 'App\\Models\\User', 9, 'AppToken', 'f8999b7027bcbf79ff3e86d8d0be366f51aed6af3cdeba19315a2add93dfacea', '[\"*\"]', '2025-02-03 12:02:27', NULL, '2025-02-03 11:50:10', '2025-02-03 12:02:27'),
(113, 'App\\Models\\User', 9, 'AppToken', '5b6d24884b7f2023a607c77d83c59729b1271d855a20c4956558bb1fd457e96d', '[\"*\"]', '2025-02-03 12:40:02', NULL, '2025-02-03 12:03:02', '2025-02-03 12:40:02'),
(114, 'App\\Models\\User', 9, 'AppToken', 'd887966861ed7c5456b2ad41b4acba96482ee7e72cb9be0d02a4fe93d4abc581', '[\"*\"]', '2025-02-04 11:41:08', NULL, '2025-02-04 11:39:22', '2025-02-04 11:41:08'),
(115, 'App\\Models\\User', 9, 'AppToken', 'a0ad9fbf25d3037f1cd218dfe8e2b27751e86eb8f3243920ca82474508f7ccb9', '[\"*\"]', '2025-02-06 11:02:39', NULL, '2025-02-06 11:01:54', '2025-02-06 11:02:39'),
(116, 'App\\Models\\User', 9, 'AppToken', 'f880fc9501606513c149372b95892db53f0fb03e1d5004d58832eb0af98fece2', '[\"*\"]', '2025-02-06 11:15:33', NULL, '2025-02-06 11:15:32', '2025-02-06 11:15:33'),
(117, 'App\\Models\\User', 9, 'AppToken', '49d032ab8f54d45a64088273c54fe599d89c3837fe3df65fc70c0e787e1c5aa6', '[\"*\"]', '2025-02-06 17:28:13', NULL, '2025-02-06 16:28:09', '2025-02-06 17:28:13'),
(118, 'App\\Models\\User', 11, 'AppToken', '501c105dee8a1b3461a7fdca936148bd953f20c35101aca1f5b40894fd500a64', '[\"*\"]', NULL, NULL, '2025-02-06 17:20:22', '2025-02-06 17:20:22'),
(119, 'App\\Models\\User', 11, 'AppToken', '6fca2a2cb172b83e0f019bedc129260a86dafb4109293f1a07d6ddb0ca00513a', '[\"*\"]', '2025-02-06 17:28:39', NULL, '2025-02-06 17:20:41', '2025-02-06 17:28:39'),
(120, 'App\\Models\\User', 11, 'AppToken', 'eeaa459029a1cd5eea8f14dd29f120a9feaa469583de4362b8ff1c512bccadab', '[\"*\"]', '2025-02-06 17:36:35', NULL, '2025-02-06 17:29:22', '2025-02-06 17:36:35'),
(121, 'App\\Models\\User', 9, 'AppToken', '8b2ef12aa9703d3c62b2fc169e272c1985955018b6fc80458f1a707b588d9730', '[\"*\"]', '2025-02-06 18:59:43', NULL, '2025-02-06 18:58:31', '2025-02-06 18:59:43'),
(122, 'App\\Models\\User', 9, 'AppToken', '8c587cc18e13e4369402e51a2e81dc34e5023ec2e074880f1d15fc802b0cf14c', '[\"*\"]', '2025-02-10 10:15:11', NULL, '2025-02-10 10:14:58', '2025-02-10 10:15:11'),
(123, 'App\\Models\\User', 9, 'AppToken', '839472b96c6598b91edd233c14dc9c117670ce01dfa872428a94662e2c9da0e9', '[\"*\"]', '2025-02-10 10:22:54', NULL, '2025-02-10 10:20:02', '2025-02-10 10:22:54'),
(124, 'App\\Models\\User', 9, 'AppToken', '48173deeeabb896d16e8ab55942e706c02e1bdcd43ea350c633af899665e2c40', '[\"*\"]', '2025-02-10 10:29:34', NULL, '2025-02-10 10:24:02', '2025-02-10 10:29:34'),
(125, 'App\\Models\\User', 9, 'AppToken', 'd0f578d7c200a2fc8546e372089e372e5a0868b34e321475118dd0b9823a12ad', '[\"*\"]', NULL, NULL, '2025-02-10 11:08:16', '2025-02-10 11:08:16'),
(126, 'App\\Models\\User', 9, 'AppToken', 'e99710470e012d32f023101c2b44fb7041cabca762476fbc1ffe8bb7ee64cbc0', '[\"*\"]', '2025-02-10 11:10:53', NULL, '2025-02-10 11:08:37', '2025-02-10 11:10:53'),
(127, 'App\\Models\\User', 9, 'AppToken', 'b06b15de077b1f4fc650101f3fa0d2241e51882bb69e620e32ec64c327f6d9cd', '[\"*\"]', '2025-02-13 05:19:39', NULL, '2025-02-13 05:19:34', '2025-02-13 05:19:39'),
(128, 'App\\Models\\User', 9, 'AppToken', 'a719207bd13da5f0c3a848a878d02b9f32c7eebd180d26246d6ecfd5ebbbae5d', '[\"*\"]', '2025-02-13 05:44:23', NULL, '2025-02-13 05:44:22', '2025-02-13 05:44:23'),
(129, 'App\\Models\\User', 9, 'AppToken', 'f108bca1997b794a6cfb8960b56fccf039bfbb79b12fba7b3cedb1752c8df9e1', '[\"*\"]', '2025-02-13 05:49:47', NULL, '2025-02-13 05:48:05', '2025-02-13 05:49:47'),
(130, 'App\\Models\\User', 9, 'AppToken', 'cb428b3a96ef292f8493cc777d9939123e3757206e5968b570ea6c6b54a81a12', '[\"*\"]', '2025-02-13 06:03:34', NULL, '2025-02-13 05:53:32', '2025-02-13 06:03:34'),
(131, 'App\\Models\\User', 9, 'AppToken', '79626c3b9bb44470bc4ce11d4f8ec2f42f08bc703b6e8415e18f0081ac4c14ad', '[\"*\"]', '2025-02-13 06:05:42', NULL, '2025-02-13 06:05:29', '2025-02-13 06:05:42'),
(132, 'App\\Models\\User', 9, 'AppToken', '980778c8f5c885050c08ebdf8486a95d8b979cb2511f3abc98c036b309bc9403', '[\"*\"]', '2025-02-13 07:59:21', NULL, '2025-02-13 07:40:28', '2025-02-13 07:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'David', 'ocquaye@gmail.com', NULL, '$2y$12$b4Ho2.dA2SJ5NUxk.k9gvuj2MlsZ5RI37l.AbJU567j.mPjDfM.fO', NULL, '2025-01-24 01:06:08', '2025-01-24 01:06:08'),
(2, 'David', 'ocquayedavid@gmail.com', NULL, '$2y$12$lw90t81VT74ve83iVXHNSO71bzv1lcmnggx8Zk6abWkz8O23weX1i', NULL, '2025-01-24 01:19:38', '2025-01-24 01:19:38'),
(3, 'david', 'david@gamil.com', NULL, '$2y$12$s5OUxW5vFknGxMLymhe0AeZIDJ4HS45BHXUCEa7jcRPtYvrx2KNci', NULL, '2025-01-24 01:20:03', '2025-01-24 01:20:03'),
(4, 'tetteh', 'tetteh@gamil.com', NULL, '$2y$12$aUuGy2stXjS1FF5oW00VnejWoP2Ndx9lwHvqdkn7PTwlOxHtlQ1Xy', NULL, '2025-01-24 01:21:03', '2025-01-24 01:21:03'),
(5, 'tetteh', 'tetteh123@gamil.com', NULL, '$2y$12$oOK14rBSWeUa8T8f/D4rDeAU/AvZf8AY0OI1zGYfD/lsXUGahkXjC', NULL, '2025-01-24 01:32:29', '2025-01-24 01:32:29'),
(6, 'david', 'david@gmail.com', NULL, '$2y$12$wiol5Ddbr5EUxvsx6GmHvuZJjnxCyLImrVqXk4nPMl3FbodpsmwJu', NULL, '2025-01-24 03:13:29', '2025-01-24 03:13:29'),
(7, 'nite', 'nite@gmail.com', NULL, '$2y$12$mqukpK3WyAXMH5FMolhpOu6v3VNaOn7xiIqDArgrYyITcxZfp1KLu', NULL, '2025-01-24 03:19:49', '2025-01-24 03:19:49'),
(8, 'favour', 'fave@gmail.com', NULL, '$2y$12$5j80xtyiALU.4RbKKdc1YevR8ePrHlbEeU2gm7blTvs2XrvSgXcO6', NULL, '2025-01-29 10:08:40', '2025-01-29 10:08:40'),
(9, 'me', 'me@gmail.com', NULL, '$2y$12$EgklaOKnYci9T8F/qLNT1uDXBBNfEmnZ5IIuHf6Md8Dy/cZpOsyEW', NULL, '2025-01-30 15:59:30', '2025-01-30 15:59:30'),
(10, 'Bosede', 'Bosed@gmail.com', NULL, '$2y$12$4ZO7jaSr4jWanwSoYGKcLu2yDpktpmEk8L0ZB86EryS9Ao5ARZ7bW', NULL, '2025-01-31 16:25:15', '2025-01-31 16:25:15'),
(11, 'Go', 'Go@gmail.com', NULL, '$2y$12$mvpo4Ict/zWNp1vJULicY.7ACIKsvLBLCyYpGgCORdWv51cJ30dWe', NULL, '2025-02-06 17:20:22', '2025-02-06 17:20:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homes_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
