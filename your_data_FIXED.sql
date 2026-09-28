-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2026 at 08:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `icon` varchar(10) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `by_role` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `icon`, `title`, `detail`, `by_role`, `username`, `created_at`) VALUES
(1, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-24 15:37:08'),
(2, '🎓', 'Student added', 'ANITHA S — CSE301', 'ADMIN', 'admin', '2026-07-24 15:39:12'),
(3, '💰', 'Fee structure saved', 'CSE301 — I YEAR', 'ADMIN', 'admin', '2026-07-24 15:39:44'),
(4, '💰', 'Fee structure saved', 'CSE301 — II YEAR', 'ADMIN', 'admin', '2026-07-24 15:40:15'),
(5, '💵', 'Fee payment recorded', 'CSE301 — ₹2000', 'ADMIN', 'admin', '2026-07-24 15:40:50'),
(6, '💵', 'Fee payment recorded', 'CSE301 — ₹13000', 'ADMIN', 'admin', '2026-07-24 15:41:18'),
(7, '💵', 'Fee payment recorded', 'CSE301 — ₹15000', 'ADMIN', 'admin', '2026-07-24 15:41:52'),
(8, '💵', 'Fee payment recorded', 'CSE301 — ₹5000', 'ADMIN', 'admin', '2026-07-24 15:42:27'),
(9, '💵', 'Fee payment recorded', 'CSE301 — ₹14000', 'ADMIN', 'admin', '2026-07-24 15:43:13'),
(10, '💵', 'Fee payment recorded', 'CSE301 — ₹21000', 'ADMIN', 'admin', '2026-07-24 15:43:40'),
(11, '🎓', 'Student added', 'ANU PRIYA R — CSE302', 'ADMIN', 'admin', '2026-07-24 15:45:14'),
(12, '💰', 'Fee structure saved', 'CSE302 — I YEAR', 'ADMIN', 'admin', '2026-07-24 15:47:06'),
(13, '💰', 'Fee structure saved', 'CSE302 — I YEAR', 'ADMIN', 'admin', '2026-07-24 15:48:30'),
(14, '💰', 'Fee structure saved', 'CSE302 — II YEAR', 'ADMIN', 'admin', '2026-07-24 15:49:02'),
(15, '💵', 'Fee payment recorded', 'CSE302 — ₹5000', 'ADMIN', 'admin', '2026-07-24 15:49:33'),
(16, '💵', 'Fee payment recorded', 'CSE302 — ₹10000', 'ADMIN', 'admin', '2026-07-24 15:50:06'),
(17, '💵', 'Fee payment recorded', 'CSE302 — ₹10000', 'ADMIN', 'admin', '2026-07-24 15:50:43'),
(18, '💵', 'Fee payment recorded', 'CSE302 — ₹12000', 'ADMIN', 'admin', '2026-07-24 15:51:09'),
(19, '💵', 'Fee payment recorded', 'CSE302 — ₹7000', 'ADMIN', 'admin', '2026-07-24 15:52:03'),
(20, '🎓', 'Student added', 'BHUVANESHWARI K — CSE303', 'ADMIN', 'admin', '2026-07-24 15:53:50'),
(21, '💰', 'Fee structure saved', 'CSE303 — I YEAR', 'ADMIN', 'admin', '2026-07-24 15:54:28'),
(22, '💰', 'Fee structure saved', 'CSE303 — II YEAR', 'ADMIN', 'admin', '2026-07-24 15:54:48'),
(23, '💵', 'Fee payment recorded', 'CSE303 — ₹1000', 'ADMIN', 'admin', '2026-07-24 15:55:24'),
(24, '💵', 'Fee payment recorded', 'CSE303 — ₹5000', 'ADMIN', 'admin', '2026-07-24 15:56:03'),
(25, '💵', 'Fee payment recorded', 'CSE303 — ₹3000', 'ADMIN', 'admin', '2026-07-24 15:56:31'),
(26, '💵', 'Fee payment recorded', 'CSE303 — ₹3500', 'ADMIN', 'admin', '2026-07-24 15:56:53'),
(27, '💵', 'Fee payment recorded', 'CSE303 — ₹2800', 'ADMIN', 'admin', '2026-07-24 15:58:27'),
(28, '💵', 'Fee payment recorded', 'CSE303 — ₹10000', 'ADMIN', 'admin', '2026-07-24 15:58:48'),
(29, '💵', 'Fee payment recorded', 'CSE303 — ₹5000', 'ADMIN', 'admin', '2026-07-24 16:01:30'),
(30, '💵', 'Fee payment recorded', 'CSE303 — ₹5000', 'ADMIN', 'admin', '2026-07-24 16:02:14'),
(31, '💵', 'Fee payment recorded', 'CSE303 — ₹5000', 'ADMIN', 'admin', '2026-07-24 16:03:09'),
(32, '💵', 'Fee payment recorded', 'CSE303 — ₹10000', 'ADMIN', 'admin', '2026-07-24 16:03:34'),
(33, '🎓', 'Student added', 'DINESH S — CSE304', 'ADMIN', 'admin', '2026-07-24 16:05:36'),
(34, '💰', 'Fee structure saved', 'CSE304 — I YEAR', 'ADMIN', 'admin', '2026-07-24 16:06:13'),
(35, '💰', 'Fee structure saved', 'CSE304 — II YEAR', 'ADMIN', 'admin', '2026-07-24 16:06:31'),
(36, '💵', 'Fee payment recorded', 'CSE304 — ₹2000', 'ADMIN', 'admin', '2026-07-24 16:09:04'),
(37, '💵', 'Fee payment recorded', 'CSE304 — ₹31000', 'ADMIN', 'admin', '2026-07-24 16:09:28'),
(38, '💵', 'Fee payment recorded', 'CSE304 — ₹22500', 'ADMIN', 'admin', '2026-07-24 16:12:22'),
(39, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 09:59:04'),
(40, '📆', 'Saturday setting added', '2026-07-04', 'ADMIN', 'admin', '2026-07-29 10:04:31'),
(41, '📅', 'Holiday added', 'hod bday — 2026-07-03', 'ADMIN', 'admin', '2026-07-29 10:05:39'),
(42, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 11:15:30'),
(43, '🎓', 'Student added', 'HARIPRADEEP S — CSE305', 'ADMIN', 'admin', '2026-07-29 11:17:01'),
(44, '💰', 'Fee structure saved', 'CSE305 — I YEAR', 'ADMIN', 'admin', '2026-07-29 11:17:36'),
(45, '💰', 'Fee structure saved', 'CSE305 — II YEAR', 'ADMIN', 'admin', '2026-07-29 11:17:56'),
(46, '💵', 'Fee payment recorded', 'CSE305 — ₹15000', 'ADMIN', 'admin', '2026-07-29 11:18:36'),
(47, '🎓', 'Student added', 'JAI DHANUSH A — CSE306', 'ADMIN', 'admin', '2026-07-29 11:19:20'),
(48, '💰', 'Fee structure saved', 'CSE306 — I YEAR', 'ADMIN', 'admin', '2026-07-29 11:23:01'),
(49, '💰', 'Fee structure saved', 'CSE306 — II YEAR', 'ADMIN', 'admin', '2026-07-29 11:23:25'),
(50, '💵', 'Fee payment recorded', 'CSE306 — ₹5000', 'ADMIN', 'admin', '2026-07-29 11:24:11'),
(51, '💵', 'Fee payment recorded', 'CSE306 — ₹5000', 'ADMIN', 'admin', '2026-07-29 11:24:54'),
(52, '💵', 'Fee payment recorded', 'CSE306 — ₹5000', 'ADMIN', 'admin', '2026-07-29 11:25:26'),
(53, '💵', 'Fee payment recorded', 'CSE306 — ₹5000', 'ADMIN', 'admin', '2026-07-29 11:25:57'),
(54, '💵', 'Fee payment recorded', 'CSE306 — ₹5000', 'ADMIN', 'admin', '2026-07-29 11:26:23'),
(55, '💵', 'Fee payment recorded', 'CSE306 — ₹2000', 'ADMIN', 'admin', '2026-07-29 11:26:47'),
(56, '💵', 'Fee payment recorded', 'CSE306 — ₹4800', 'ADMIN', 'admin', '2026-07-29 11:27:13'),
(57, '💵', 'Fee payment recorded', 'CSE306 — ₹1000', 'ADMIN', 'admin', '2026-07-29 11:27:36'),
(58, '💵', 'Fee payment recorded', 'CSE306 — ₹4000', 'ADMIN', 'admin', '2026-07-29 11:28:03'),
(59, '💵', 'Fee payment recorded', 'CSE306 — ₹7500', 'ADMIN', 'admin', '2026-07-29 11:28:26'),
(60, '💵', 'Fee payment recorded', 'CSE306 — ₹4000', 'ADMIN', 'admin', '2026-07-29 11:28:50'),
(61, '💵', 'Fee payment recorded', 'CSE306 — ₹3000', 'ADMIN', 'admin', '2026-07-29 11:29:15'),
(62, '💵', 'Fee payment recorded', 'CSE306 — ₹6000', 'ADMIN', 'admin', '2026-07-29 11:29:41'),
(63, '💵', 'Fee payment recorded', 'CSE306 — ₹2000', 'ADMIN', 'admin', '2026-07-29 11:30:13'),
(64, '🎓', 'Student added', 'KARTHICK K — CSE307', 'ADMIN', 'admin', '2026-07-29 11:30:59'),
(65, '💰', 'Fee structure saved', 'CSE307 — I YEAR', 'ADMIN', 'admin', '2026-07-29 11:31:43'),
(66, '💰', 'Fee structure saved', 'CSE307 — II YEAR', 'ADMIN', 'admin', '2026-07-29 11:32:17'),
(67, '💵', 'Fee payment recorded', 'CSE307 — ₹1000', 'ADMIN', 'admin', '2026-07-29 11:32:45'),
(68, '💵', 'Fee payment recorded', 'CSE307 — ₹1000', 'ADMIN', 'admin', '2026-07-29 11:33:14'),
(69, '💵', 'Fee payment recorded', 'CSE307 — ₹13000', 'ADMIN', 'admin', '2026-07-29 11:33:39'),
(70, '💵', 'Fee payment recorded', 'CSE307 — ₹20000', 'ADMIN', 'admin', '2026-07-29 11:34:08'),
(71, '💵', 'Fee payment recorded', 'CSE307 — ₹14000', 'ADMIN', 'admin', '2026-07-29 11:36:49'),
(72, '💵', 'Fee payment recorded', 'CSE307 — ₹20000', 'ADMIN', 'admin', '2026-07-29 11:37:13'),
(73, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 12:01:51'),
(74, '🎓', 'Student added', 'KISHORE M — CSE308', 'ADMIN', 'admin', '2026-07-29 12:03:19'),
(75, '💰', 'Fee structure saved', 'CSE308 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:03:40'),
(76, '💰', 'Fee structure saved', 'CSE308 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:03:59'),
(77, '💵', 'Fee payment recorded', 'CSE308 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:04:43'),
(78, '💵', 'Fee payment recorded', 'CSE308 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:05:10'),
(79, '💵', 'Fee payment recorded', 'CSE308 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:05:38'),
(80, '💵', 'Fee payment recorded', 'CSE308 — ₹22000', 'ADMIN', 'admin', '2026-07-29 12:06:26'),
(81, '💵', 'Fee payment recorded', 'CSE308 — ₹15000', 'ADMIN', 'admin', '2026-07-29 12:07:02'),
(82, '💵', 'Fee payment recorded', 'CSE308 — ₹21200', 'ADMIN', 'admin', '2026-07-29 12:07:27'),
(83, '🎓', 'Student added', 'MARUTHUPANDI P — CSE309', 'ADMIN', 'admin', '2026-07-29 12:08:37'),
(84, '💰', 'Fee structure saved', 'CSE309 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:09:22'),
(85, '💰', 'Fee structure saved', 'CSE309 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:09:44'),
(86, '💵', 'Fee payment recorded', 'CSE309 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:10:29'),
(87, '💵', 'Fee payment recorded', 'CSE309 — ₹13000', 'ADMIN', 'admin', '2026-07-29 12:10:54'),
(88, '💵', 'Fee payment recorded', 'CSE309 — ₹13000', 'ADMIN', 'admin', '2026-07-29 12:11:18'),
(89, '💵', 'Fee payment recorded', 'CSE309 — ₹21000', 'ADMIN', 'admin', '2026-07-29 12:11:39'),
(90, '🎓', 'Student added', 'MUNEESWARI P — CSE310', 'ADMIN', 'admin', '2026-07-29 12:12:39'),
(91, '💰', 'Fee structure saved', 'CSE310 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:13:01'),
(92, '💰', 'Fee structure saved', 'CSE310 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:13:28'),
(93, '💵', 'Fee payment recorded', 'CSE310 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:15:36'),
(94, '💵', 'Fee payment recorded', 'CSE310 — ₹43500', 'ADMIN', 'admin', '2026-07-29 12:16:10'),
(95, '💵', 'Fee payment recorded', 'CSE310 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:16:47'),
(96, '💵', 'Fee payment recorded', 'CSE310 — ₹14000', 'ADMIN', 'admin', '2026-07-29 12:17:06'),
(97, '💵', 'Fee payment recorded', 'CSE310 — ₹27000', 'ADMIN', 'admin', '2026-07-29 12:17:35'),
(98, '💵', 'Fee payment recorded', 'CSE310 — ₹300', 'ADMIN', 'admin', '2026-07-29 12:17:57'),
(99, '🎓', 'Student added', 'NARESH KUMAR B — CSE311', 'ADMIN', 'admin', '2026-07-29 12:19:02'),
(100, '💰', 'Fee structure saved', 'CSE311 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:19:56'),
(101, '💰', 'Fee structure saved', 'CSE311 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:20:22'),
(102, '💵', 'Fee payment recorded', 'CSE311 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:21:40'),
(103, '💵', 'Fee payment recorded', 'CSE311 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:23:24'),
(104, '💵', 'Fee payment recorded', 'CSE311 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:23:57'),
(105, '💵', 'Fee payment recorded', 'CSE311 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:24:28'),
(106, '💵', 'Fee payment recorded', 'CSE311 — ₹1200', 'ADMIN', 'admin', '2026-07-29 12:24:56'),
(107, '💵', 'Fee payment recorded', 'CSE311 — ₹4000', 'ADMIN', 'admin', '2026-07-29 12:26:35'),
(108, '💵', 'Fee payment recorded', 'CSE311 — ₹5000', 'ADMIN', 'admin', '2026-07-29 12:27:35'),
(109, '💵', 'Fee payment recorded', 'CSE311 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:29:01'),
(110, '💵', 'Fee payment recorded', 'CSE311 — ₹12000', 'ADMIN', 'admin', '2026-07-29 12:29:37'),
(111, '💵', 'Fee payment recorded', 'CSE311 — ₹5000', 'ADMIN', 'admin', '2026-07-29 12:30:07'),
(112, '🎓', 'Student added', 'NARASTMHAN K — CSE312', 'ADMIN', 'admin', '2026-07-29 12:31:37'),
(113, '✏️', 'Student updated', 'NARASIMHAN K — CSE312', 'ADMIN', 'admin', '2026-07-29 12:32:25'),
(114, '💰', 'Fee structure saved', 'CSE312 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:32:48'),
(115, '💰', 'Fee structure saved', 'CSE312 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:33:09'),
(116, '💵', 'Fee payment recorded', 'CSE312 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:34:07'),
(117, '📅', 'Holiday added', 'HOD BDAY — 2026-07-04', 'ADMIN', 'admin', '2026-07-29 12:35:30'),
(118, '📆', 'Saturday setting added', '2026-07-11', 'ADMIN', 'admin', '2026-07-29 12:36:00'),
(119, '🎓', 'Student added', 'NISHITHA T — CSE313', 'ADMIN', 'admin', '2026-07-29 12:37:34'),
(120, '💰', 'Fee structure saved', 'CSE313 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:38:12'),
(121, '💰', 'Fee structure saved', 'CSE313 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:38:29'),
(122, '💵', 'Fee payment recorded', 'CSE313 — ₹5000', 'ADMIN', 'admin', '2026-07-29 12:40:09'),
(123, '💵', 'Fee payment recorded', 'CSE313 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:40:56'),
(124, '💵', 'Fee payment recorded', 'CSE313 — ₹15000', 'ADMIN', 'admin', '2026-07-29 12:41:18'),
(125, '💵', 'Fee payment recorded', 'CSE313 — ₹1200', 'ADMIN', 'admin', '2026-07-29 12:42:00'),
(126, '💵', 'Fee payment recorded', 'CSE313 — ₹5000', 'ADMIN', 'admin', '2026-07-29 12:43:11'),
(127, '💵', 'Fee payment recorded', 'CSE313 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:43:32'),
(128, '💵', 'Fee payment recorded', 'CSE313 — ₹10000', 'ADMIN', 'admin', '2026-07-29 12:44:11'),
(129, '💵', 'Fee payment recorded', 'CSE313 — ₹4100', 'ADMIN', 'admin', '2026-07-29 12:44:34'),
(130, '🎓', 'Student added', 'NITHISH C — CSE314', 'ADMIN', 'admin', '2026-07-29 12:45:25'),
(131, '💰', 'Fee structure saved', 'CSE314 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:46:02'),
(132, '💰', 'Fee structure saved', 'CSE314 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:46:20'),
(133, '💵', 'Fee payment recorded', 'CSE314 — ₹5000', 'ADMIN', 'admin', '2026-07-29 12:46:51'),
(134, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:47:18'),
(135, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:47:46'),
(136, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:48:07'),
(137, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:48:26'),
(138, '💵', 'Fee payment recorded', 'CSE314 — ₹7000', 'ADMIN', 'admin', '2026-07-29 12:48:46'),
(139, '💵', 'Fee payment recorded', 'CSE314 — ₹4000', 'ADMIN', 'admin', '2026-07-29 12:49:09'),
(140, '💵', 'Fee payment recorded', 'CSE314 — ₹6000', 'ADMIN', 'admin', '2026-07-29 12:50:23'),
(141, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:51:08'),
(142, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:51:43'),
(143, '💵', 'Fee payment recorded', 'CSE314 — ₹3000', 'ADMIN', 'admin', '2026-07-29 12:52:17'),
(144, '🎓', 'Student added', 'NIVETHA M — CSE315', 'ADMIN', 'admin', '2026-07-29 12:53:28'),
(145, '💰', 'Fee structure saved', 'CSE315 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:54:18'),
(146, '💰', 'Fee structure saved', 'CSE315 — I YEAR', 'ADMIN', 'admin', '2026-07-29 12:54:57'),
(147, '💰', 'Fee structure saved', 'CSE315 — II YEAR', 'ADMIN', 'admin', '2026-07-29 12:55:18'),
(148, '💵', 'Fee payment recorded', 'CSE315 — ₹1000', 'ADMIN', 'admin', '2026-07-29 12:55:46'),
(149, '💵', 'Fee payment recorded', 'CSE315 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:56:06'),
(150, '💵', 'Fee payment recorded', 'CSE315 — ₹15000', 'ADMIN', 'admin', '2026-07-29 12:56:30'),
(151, '💵', 'Fee payment recorded', 'CSE315 — ₹4000', 'ADMIN', 'admin', '2026-07-29 12:56:53'),
(152, '💵', 'Fee payment recorded', 'CSE315 — ₹22400', 'ADMIN', 'admin', '2026-07-29 12:57:17'),
(153, '💵', 'Fee payment recorded', 'CSE315 — ₹15000', 'ADMIN', 'admin', '2026-07-29 12:57:37'),
(154, '💵', 'Fee payment recorded', 'CSE315 — ₹22500', 'ADMIN', 'admin', '2026-07-29 12:58:06'),
(155, '💵', 'Fee payment recorded', 'CSE315 — ₹2000', 'ADMIN', 'admin', '2026-07-29 12:59:17'),
(156, '💵', 'Fee payment recorded', 'CSE315 — ₹2900', 'ADMIN', 'admin', '2026-07-29 12:59:38'),
(157, '🎓', 'Student added', 'PRADEEPA MARI S — CSE101', 'ADMIN', 'admin', '2026-07-29 13:00:40'),
(158, '💰', 'Fee structure saved', 'CSE101 — I YEAR', 'ADMIN', 'admin', '2026-07-29 13:01:15'),
(159, '💰', 'Fee structure saved', 'CSE101 — II YEAR', 'ADMIN', 'admin', '2026-07-29 13:01:27'),
(160, '💵', 'Fee payment recorded', 'CSE101 — ₹3000', 'ADMIN', 'admin', '2026-07-29 13:01:49'),
(161, '💵', 'Fee payment recorded', 'CSE101 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:02:20'),
(162, '💵', 'Fee payment recorded', 'CSE101 — ₹2000', 'ADMIN', 'admin', '2026-07-29 13:02:51'),
(163, '💵', 'Fee payment recorded', 'CSE101 — ₹10000', 'ADMIN', 'admin', '2026-07-29 13:03:13'),
(164, '💵', 'Fee payment recorded', 'CSE101 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:03:33'),
(165, '🗑️', 'Student deleted', 'CSE101', 'ADMIN', 'admin', '2026-07-29 13:05:03'),
(166, '🎓', 'Student added', 'PRADEEPA MARY S — CSE316', 'ADMIN', 'admin', '2026-07-29 13:06:14'),
(167, '💰', 'Fee structure saved', 'CSE316 — I YEAR', 'ADMIN', 'admin', '2026-07-29 13:06:58'),
(168, '💰', 'Fee structure saved', 'CSE316 — II YEAR', 'ADMIN', 'admin', '2026-07-29 13:07:13'),
(169, '💵', 'Fee payment recorded', 'CSE316 — ₹3000', 'ADMIN', 'admin', '2026-07-29 13:07:34'),
(170, '💵', 'Fee payment recorded', 'CSE316 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:07:57'),
(171, '💵', 'Fee payment recorded', 'CSE316 — ₹2000', 'ADMIN', 'admin', '2026-07-29 13:08:16'),
(172, '💵', 'Fee payment recorded', 'CSE316 — ₹10000', 'ADMIN', 'admin', '2026-07-29 13:08:40'),
(173, '💵', 'Fee payment recorded', 'CSE316 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:09:15'),
(174, '💵', 'Fee payment recorded', 'CSE316 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:09:34'),
(175, '💵', 'Fee payment recorded', 'CSE316 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:10:10'),
(176, '🎓', 'Student added', 'PRINCI J — CSE317', 'ADMIN', 'admin', '2026-07-29 13:11:01'),
(177, '💰', 'Fee structure saved', 'CSE317 — I YEAR', 'ADMIN', 'admin', '2026-07-29 13:11:36'),
(178, '💰', 'Fee structure saved', 'CSE317 — II YEAR', 'ADMIN', 'admin', '2026-07-29 13:11:52'),
(179, '💵', 'Fee payment recorded', 'CSE317 — ₹10000', 'ADMIN', 'admin', '2026-07-29 13:12:18'),
(180, '💵', 'Fee payment recorded', 'CSE317 — ₹3000', 'ADMIN', 'admin', '2026-07-29 13:12:39'),
(181, '💵', 'Fee payment recorded', 'CSE317 — ₹2000', 'ADMIN', 'admin', '2026-07-29 13:13:09'),
(182, '💵', 'Fee payment recorded', 'CSE317 — ₹17000', 'ADMIN', 'admin', '2026-07-29 13:14:10'),
(183, '💵', 'Fee payment recorded', 'CSE317 — ₹4000', 'ADMIN', 'admin', '2026-07-29 13:15:19'),
(184, '💵', 'Fee payment recorded', 'CSE317 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:16:13'),
(185, '💵', 'Fee payment recorded', 'CSE317 — ₹5000', 'ADMIN', 'admin', '2026-07-29 13:16:43'),
(186, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 14:08:53'),
(187, '🎓', 'Student added', 'RAHUL K — CSE318', 'ADMIN', 'admin', '2026-07-29 14:11:07'),
(188, '💰', 'Fee structure saved', 'CSE318 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:11:37'),
(189, '💰', 'Fee structure saved', 'CSE318 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:12:51'),
(190, '💰', 'Fee structure saved', 'CSE318 — II YEAR', 'ADMIN', 'admin', '2026-07-29 14:13:09'),
(191, '💵', 'Fee payment recorded', 'CSE318 — ₹500', 'ADMIN', 'admin', '2026-07-29 14:13:57'),
(192, '💵', 'Fee payment recorded', 'CSE318 — ₹1500', 'ADMIN', 'admin', '2026-07-29 14:14:19'),
(193, '💵', 'Fee payment recorded', 'CSE318 — ₹5000', 'ADMIN', 'admin', '2026-07-29 14:14:48'),
(194, '💵', 'Fee payment recorded', 'CSE318 — ₹25000', 'ADMIN', 'admin', '2026-07-29 14:15:11'),
(195, '💵', 'Fee payment recorded', 'CSE318 — ₹10000', 'ADMIN', 'admin', '2026-07-29 14:15:35'),
(196, '💵', 'Fee payment recorded', 'CSE318 — ₹4400', 'ADMIN', 'admin', '2026-07-29 14:15:57'),
(197, '💵', 'Fee payment recorded', 'CSE318 — ₹22100', 'ADMIN', 'admin', '2026-07-29 14:16:25'),
(198, '💵', 'Fee payment recorded', 'CSE318 — ₹22100', 'ADMIN', 'admin', '2026-07-29 14:16:50'),
(199, '💵', 'Fee payment recorded', 'CSE318 — ₹10000', 'ADMIN', 'admin', '2026-07-29 14:17:18'),
(200, '🎓', 'Student added', 'SANTHOSH LADMAN N — CSE319', 'ADMIN', 'admin', '2026-07-29 14:18:48'),
(201, '💰', 'Fee structure saved', 'CSE319 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:19:34'),
(202, '💰', 'Fee structure saved', 'CSE319 — II YEAR', 'ADMIN', 'admin', '2026-07-29 14:20:48'),
(203, '💵', 'Fee payment recorded', 'CSE319 — ₹10500', 'ADMIN', 'admin', '2026-07-29 14:21:29'),
(204, '💵', 'Fee payment recorded', 'CSE319 — ₹10000', 'ADMIN', 'admin', '2026-07-29 14:21:52'),
(205, '💵', 'Fee payment recorded', 'CSE319 — ₹7000', 'ADMIN', 'admin', '2026-07-29 14:22:20'),
(206, '💵', 'Fee payment recorded', 'CSE319 — ₹5000', 'ADMIN', 'admin', '2026-07-29 14:22:51'),
(207, '💵', 'Fee payment recorded', 'CSE319 — ₹10000', 'ADMIN', 'admin', '2026-07-29 14:23:16'),
(208, '🎓', 'Student added', 'SANTHOSH M — CSE320', 'ADMIN', 'admin', '2026-07-29 14:26:10'),
(209, '💰', 'Fee structure saved', 'CSE320 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:27:05'),
(210, '💰', 'Fee structure saved', 'CSE320 — II YEAR', 'ADMIN', 'admin', '2026-07-29 14:27:44'),
(211, '💵', 'Fee payment recorded', 'CSE320 — ₹2000', 'ADMIN', 'admin', '2026-07-29 14:28:10'),
(212, '💵', 'Fee payment recorded', 'CSE320 — ₹15000', 'ADMIN', 'admin', '2026-07-29 14:28:38'),
(213, '💵', 'Fee payment recorded', 'CSE320 — ₹22500', 'ADMIN', 'admin', '2026-07-29 14:28:59'),
(214, '💵', 'Fee payment recorded', 'CSE320 — ₹15000', 'ADMIN', 'admin', '2026-07-29 14:29:25'),
(215, '💵', 'Fee payment recorded', 'CSE320 — ₹5000', 'ADMIN', 'admin', '2026-07-29 14:29:53'),
(216, '🎓', 'Student added', 'SARAVANAN S — CSE321', 'ADMIN', 'admin', '2026-07-29 14:37:21'),
(217, '💰', 'Fee structure saved', 'CSE321 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:37:41'),
(218, '💰', 'Fee structure saved', 'CSE321 — II YEAR', 'ADMIN', 'admin', '2026-07-29 14:38:02'),
(219, '💰', 'Fee structure saved', 'CSE321 — III YEAR', 'ADMIN', 'admin', '2026-07-29 14:38:16'),
(220, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:40:49'),
(221, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:41:38'),
(222, '💵', 'Fee payment recorded', 'CSE321 — ₹6000', 'ADMIN', 'admin', '2026-07-29 14:42:51'),
(223, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:43:16'),
(224, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:43:38'),
(225, '💵', 'Fee payment recorded', 'CSE321 — ₹7000', 'ADMIN', 'admin', '2026-07-29 14:44:38'),
(226, '💵', 'Fee payment recorded', 'CSE321 — ₹1000', 'ADMIN', 'admin', '2026-07-29 14:44:38'),
(227, '💵', 'Fee payment recorded', 'CSE321 — ₹200', 'ADMIN', 'admin', '2026-07-29 14:45:15'),
(228, '💵', 'Fee payment recorded', 'CSE321 — ₹5000', 'ADMIN', 'admin', '2026-07-29 14:45:42'),
(229, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:46:26'),
(230, '💵', 'Fee payment recorded', 'CSE321 — ₹2000', 'ADMIN', 'admin', '2026-07-29 14:46:55'),
(231, '💵', 'Fee payment recorded', 'CSE321 — ₹2000', 'ADMIN', 'admin', '2026-07-29 14:47:26'),
(232, '💵', 'Fee payment recorded', 'CSE321 — ₹4000', 'ADMIN', 'admin', '2026-07-29 14:49:54'),
(233, '💵', 'Fee payment recorded', 'CSE321 — ₹4000', 'ADMIN', 'admin', '2026-07-29 14:50:30'),
(234, '💵', 'Fee payment recorded', 'CSE321 — ₹2000', 'ADMIN', 'admin', '2026-07-29 14:50:54'),
(235, '💵', 'Fee payment recorded', 'CSE321 — ₹2000', 'ADMIN', 'admin', '2026-07-29 14:51:15'),
(236, '💵', 'Fee payment recorded', 'CSE321 — ₹3000', 'ADMIN', 'admin', '2026-07-29 14:51:33'),
(237, '🎓', 'Student added', 'SUDHAKAR S — CSE322', 'ADMIN', 'admin', '2026-07-29 14:54:37'),
(238, '💰', 'Fee structure saved', 'CSE322 — I YEAR', 'ADMIN', 'admin', '2026-07-29 14:55:33'),
(239, '💰', 'Fee structure saved', 'CSE322 — II YEAR', 'ADMIN', 'admin', '2026-07-29 14:56:40'),
(240, '💵', 'Fee payment recorded', 'CSE320 — ₹25000', 'ADMIN', 'admin', '2026-07-29 14:59:19'),
(241, '💵', 'Fee payment recorded', 'CSE322 — ₹500', 'ADMIN', 'admin', '2026-07-29 15:00:43'),
(242, '💵', 'Fee payment recorded', 'CSE322 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:01:51'),
(243, '💵', 'Fee payment recorded', 'CSE322 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:02:27'),
(244, '💵', 'Fee payment recorded', 'CSE322 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:04:00'),
(245, '💵', 'Fee payment recorded', 'CSE322 — ₹42700', 'ADMIN', 'admin', '2026-07-29 15:04:34'),
(246, '💵', 'Fee payment recorded', 'CSE322 — ₹4000', 'ADMIN', 'admin', '2026-07-29 15:05:03'),
(247, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 15:06:40'),
(248, '🎓', 'Student added', 'VENKATESH S — CSE323', 'ADMIN', 'admin', '2026-07-29 15:07:38'),
(249, '💰', 'Fee structure saved', 'CSE323 — I YEAR', 'ADMIN', 'admin', '2026-07-29 15:08:28'),
(250, '💰', 'Fee structure saved', 'CSE323 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:08:50'),
(251, '💵', 'Fee payment recorded', 'CSE323 — ₹1000', 'ADMIN', 'admin', '2026-07-29 15:09:25'),
(252, '💵', 'Fee payment recorded', 'CSE323 — ₹1000', 'ADMIN', 'admin', '2026-07-29 15:09:54'),
(253, '💵', 'Fee payment recorded', 'CSE323 — ₹13000', 'ADMIN', 'admin', '2026-07-29 15:10:16'),
(254, '💵', 'Fee payment recorded', 'CSE323 — ₹21200', 'ADMIN', 'admin', '2026-07-29 15:10:45'),
(255, '💵', 'Fee payment recorded', 'CSE323 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:11:12'),
(256, '💵', 'Fee payment recorded', 'CSE323 — ₹20000', 'ADMIN', 'admin', '2026-07-29 15:11:39'),
(257, '🎓', 'Student added', 'VIGHNESHWARAN E — CSE324', 'ADMIN', 'admin', '2026-07-29 15:13:04'),
(258, '💰', 'Fee structure saved', 'CSE324 — I YEAR', 'ADMIN', 'admin', '2026-07-29 15:13:28'),
(259, '💰', 'Fee structure saved', 'CSE324 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:13:50'),
(260, '💵', 'Fee payment recorded', 'CSE324 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:14:27'),
(261, '💵', 'Fee payment recorded', 'CSE324 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:14:52'),
(262, '💵', 'Fee payment recorded', 'CSE324 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:15:14'),
(263, '💵', 'Fee payment recorded', 'CSE324 — ₹6000', 'ADMIN', 'admin', '2026-07-29 15:15:43'),
(264, '💵', 'Fee payment recorded', 'CSE324 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:16:02'),
(265, '💵', 'Fee payment recorded', 'CSE324 — ₹20000', 'ADMIN', 'admin', '2026-07-29 15:16:20'),
(266, '💵', 'Fee payment recorded', 'CSE324 — ₹13000', 'ADMIN', 'admin', '2026-07-29 15:16:39'),
(267, '💵', 'Fee payment recorded', 'CSE324 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:17:00'),
(268, '💵', 'Fee payment recorded', 'CSE324 — ₹20000', 'ADMIN', 'admin', '2026-07-29 15:17:19'),
(269, '🎓', 'Student added', 'ABEL RAJA J — CSE325', 'ADMIN', 'admin', '2026-07-29 15:18:01'),
(270, '💰', 'Fee structure saved', 'CSE325 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:18:26'),
(271, '💵', 'Fee payment recorded', 'CSE325 — ₹10000', 'ADMIN', 'admin', '2026-07-29 15:18:49'),
(272, '💵', 'Fee payment recorded', 'CSE325 — ₹15000', 'ADMIN', 'admin', '2026-07-29 15:19:13'),
(273, '🎓', 'Student added', 'DINESH HARI V — CSE326', 'ADMIN', 'admin', '2026-07-29 15:20:11'),
(274, '💰', 'Fee structure saved', 'CSE326 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:21:39'),
(275, '💵', 'Fee payment recorded', 'CSE326 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:21:58'),
(276, '💵', 'Fee payment recorded', 'CSE326 — ₹10000', 'ADMIN', 'admin', '2026-07-29 15:22:21'),
(277, '💵', 'Fee payment recorded', 'CSE326 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:22:40'),
(278, '💵', 'Fee payment recorded', 'CSE326 — ₹3500', 'ADMIN', 'admin', '2026-07-29 15:23:02'),
(279, '🎓', 'Student added', 'GIRI R — CSE327', 'ADMIN', 'admin', '2026-07-29 15:24:15'),
(280, '💰', 'Fee structure saved', 'CSE327 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:24:37'),
(281, '💵', 'Fee payment recorded', 'CSE327 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:25:00'),
(282, '💵', 'Fee payment recorded', 'CSE327 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:25:32'),
(283, '💵', 'Fee payment recorded', 'CSE327 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:26:05'),
(284, '💵', 'Fee payment recorded', 'CSE327 — ₹10000', 'ADMIN', 'admin', '2026-07-29 15:26:27'),
(285, '🎓', 'Student added', 'MADHAN KUMAR A — CSE328', 'ADMIN', 'admin', '2026-07-29 15:27:21'),
(286, '💰', 'Fee structure saved', 'CSE328 — II  YEAR', 'ADMIN', 'admin', '2026-07-29 15:28:02'),
(287, '💵', 'Fee payment recorded', 'CSE328 — ₹1000', 'ADMIN', 'admin', '2026-07-29 15:28:39'),
(288, '💵', 'Fee payment recorded', 'CSE328 — ₹3000', 'ADMIN', 'admin', '2026-07-29 15:29:01'),
(289, '💵', 'Fee payment recorded', 'CSE328 — ₹6000', 'ADMIN', 'admin', '2026-07-29 15:29:35'),
(290, '💵', 'Fee payment recorded', 'CSE328 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:30:09'),
(291, '🎓', 'Student added', 'KALAIYARASI P — CSE329', 'ADMIN', 'admin', '2026-07-29 15:30:55'),
(292, '💰', 'Fee structure saved', 'CSE329 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:31:18'),
(293, '💵', 'Fee payment recorded', 'CSE329 — ₹3000', 'ADMIN', 'admin', '2026-07-29 15:31:50'),
(294, '💵', 'Fee payment recorded', 'CSE329 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:32:12'),
(295, '💵', 'Fee payment recorded', 'CSE329 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:32:42'),
(296, '💵', 'Fee payment recorded', 'CSE329 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:33:05'),
(297, '💵', 'Fee payment recorded', 'CSE329 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:33:48'),
(298, '💵', 'Fee payment recorded', 'CSE329 — ₹10000', 'ADMIN', 'admin', '2026-07-29 15:34:07'),
(299, '🎓', 'Student added', 'MANIKANDIN K — CSE330', 'ADMIN', 'admin', '2026-07-29 15:35:39'),
(300, '🗑️', 'Student deleted', 'CSE330', 'ADMIN', 'admin', '2026-07-29 15:35:52'),
(301, '🎓', 'Student added', 'MANIKANDAN K — CSE331', 'ADMIN', 'admin', '2026-07-29 15:36:25'),
(302, '💰', 'Fee structure saved', 'CSE331 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:37:03'),
(303, '💵', 'Fee payment recorded', 'CSE331 — ₹2500', 'ADMIN', 'admin', '2026-07-29 15:37:28'),
(304, '💵', 'Fee payment recorded', 'CSE331 — ₹12000', 'ADMIN', 'admin', '2026-07-29 15:37:48'),
(305, '💵', 'Fee payment recorded', 'CSE331 — ₹22500', 'ADMIN', 'admin', '2026-07-29 15:38:13'),
(306, '🎓', 'Student added', 'MUTHULAKSHMI M — CSE332', 'ADMIN', 'admin', '2026-07-29 15:38:47'),
(307, '💰', 'Fee structure saved', 'CSE332 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:39:04'),
(308, '💵', 'Fee payment recorded', 'CSE332 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:39:23'),
(309, '🎓', 'Student added', 'NITHISH KUMAR N — CSE333', 'ADMIN', 'admin', '2026-07-29 15:39:57'),
(310, '💰', 'Fee structure saved', 'CSE333 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:40:23'),
(311, '💵', 'Fee payment recorded', 'CSE333 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:40:45'),
(312, '💵', 'Fee payment recorded', 'CSE333 — ₹35000', 'ADMIN', 'admin', '2026-07-29 15:41:08'),
(313, '🎓', 'Student added', 'PRAKASH P — CSE334', 'ADMIN', 'admin', '2026-07-29 15:41:43'),
(314, '💰', 'Fee structure saved', 'CSE334 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:42:01'),
(315, '💵', 'Fee payment recorded', 'CSE334 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:42:34'),
(316, '🎓', 'Student added', 'RAGAVI SRI S — CSE335', 'ADMIN', 'admin', '2026-07-29 15:44:56'),
(317, '💰', 'Fee structure saved', 'CSE335 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:45:38'),
(318, '💵', 'Fee payment recorded', 'CSE335 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:45:58'),
(319, '💵', 'Fee payment recorded', 'CSE335 — ₹17000', 'ADMIN', 'admin', '2026-07-29 15:46:29'),
(320, '💵', 'Fee payment recorded', 'CSE335 — ₹26100', 'ADMIN', 'admin', '2026-07-29 15:46:50'),
(321, '🎓', 'Student added', 'SANKAR B — CSE336', 'ADMIN', 'admin', '2026-07-29 15:47:27'),
(322, '💰', 'Fee structure saved', 'CSE336 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:47:53'),
(323, '💵', 'Fee payment recorded', 'CSE336 — ₹1000', 'ADMIN', 'admin', '2026-07-29 15:48:11'),
(324, '💵', 'Fee payment recorded', 'CSE336 — ₹8000', 'ADMIN', 'admin', '2026-07-29 15:48:33'),
(325, '🎓', 'Student added', 'SARAN KUMAR S — CSE337', 'ADMIN', 'admin', '2026-07-29 15:48:57'),
(326, '💰', 'Fee structure saved', 'CSE337 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:49:15'),
(327, '💵', 'Fee payment recorded', 'CSE337 — ₹3000', 'ADMIN', 'admin', '2026-07-29 15:49:32'),
(328, '💵', 'Fee payment recorded', 'CSE337 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:49:48'),
(329, '💵', 'Fee payment recorded', 'CSE337 — ₹4000', 'ADMIN', 'admin', '2026-07-29 15:50:17'),
(330, '💵', 'Fee payment recorded', 'CSE337 — ₹3000', 'ADMIN', 'admin', '2026-07-29 15:51:13'),
(331, '💵', 'Fee payment recorded', 'CSE337 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:51:47'),
(332, '🎓', 'Student added', 'SURYAPRAKASH G — CSE338', 'ADMIN', 'admin', '2026-07-29 15:52:35'),
(333, '💰', 'Fee structure saved', 'CSE338 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:52:56'),
(334, '💵', 'Fee payment recorded', 'CSE338 — ₹500', 'ADMIN', 'admin', '2026-07-29 15:53:17'),
(335, '💵', 'Fee payment recorded', 'CSE338 — ₹4000', 'ADMIN', 'admin', '2026-07-29 15:53:34'),
(336, '💵', 'Fee payment recorded', 'CSE338 — ₹6000', 'ADMIN', 'admin', '2026-07-29 15:53:51'),
(337, '💵', 'Fee payment recorded', 'CSE338 — ₹6000', 'ADMIN', 'admin', '2026-07-29 15:54:18'),
(338, '💵', 'Fee payment recorded', 'CSE338 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:54:44'),
(339, '🎓', 'Student added', 'THILSON S — CSE339', 'ADMIN', 'admin', '2026-07-29 15:55:26'),
(340, '💰', 'Fee structure saved', 'CSE339 — II YEAR', 'ADMIN', 'admin', '2026-07-29 15:56:06'),
(341, '💵', 'Fee payment recorded', 'CSE339 — ₹2000', 'ADMIN', 'admin', '2026-07-29 15:56:37'),
(342, '💵', 'Fee payment recorded', 'CSE339 — ₹6000', 'ADMIN', 'admin', '2026-07-29 15:56:55'),
(343, '💵', 'Fee payment recorded', 'CSE339 — ₹5000', 'ADMIN', 'admin', '2026-07-29 15:57:12'),
(344, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-29 15:58:08'),
(345, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 09:35:58'),
(346, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:10:58'),
(347, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:11:19'),
(348, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:11:23'),
(349, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:15:07'),
(350, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:15:47'),
(351, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:16:13'),
(352, '🎓', 'Student added', 'AABINA BEGAM S — CSE201', 'ADMIN', 'admin', '2026-07-30 10:29:07'),
(353, '🎓', 'Student added', 'AHAMED SHAJITH KHAN M — CSE202', 'ADMIN', 'admin', '2026-07-30 10:31:12'),
(354, '✏️', 'Student updated', 'AABINA BEGAM S — CSE201', 'ADMIN', 'admin', '2026-07-30 10:31:31'),
(355, '🎓', 'Student added', 'BALAKRISHNAN S — CSE203', 'ADMIN', 'admin', '2026-07-30 10:32:38'),
(356, '🎓', 'Student added', 'BALA NANDHINI K — CSE204', 'ADMIN', 'admin', '2026-07-30 10:33:10'),
(357, '🎓', 'Student added', 'BHAVANI V — CSE205', 'ADMIN', 'admin', '2026-07-30 10:33:45'),
(358, '✏️', 'Student updated', 'BHAVANI V — CSE205', 'ADMIN', 'admin', '2026-07-30 10:34:05'),
(359, '🎓', 'Student added', 'AABINA BEGAM S — CSE206', 'ADMIN', 'admin', '2026-07-30 10:48:08'),
(360, '🎓', 'Student added', 'AHAMED SHAJITH KHAN M — CSE207', 'ADMIN', 'admin', '2026-07-30 10:48:08'),
(361, '🎓', 'Student added', 'BALAKRISHNAN S — CSE208', 'ADMIN', 'admin', '2026-07-30 10:48:08'),
(362, '🎓', 'Student added', 'BALA NANDHINI K — CSE209', 'ADMIN', 'admin', '2026-07-30 10:48:08'),
(363, '🎓', 'Student added', 'BHAVANI V — CSE210', 'ADMIN', 'admin', '2026-07-30 10:48:09'),
(364, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:48:14'),
(365, '🗑️', 'Student deleted', 'CSE206', 'ADMIN', 'admin', '2026-07-30 10:50:05'),
(366, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 10:50:44'),
(367, '🗑️', 'Student deleted', 'CSE207', 'ADMIN', 'admin', '2026-07-30 10:50:49'),
(368, '🗑️', 'Student deleted', 'CSE208', 'ADMIN', 'admin', '2026-07-30 10:50:52'),
(369, '🗑️', 'Student deleted', 'CSE209', 'ADMIN', 'admin', '2026-07-30 10:50:54'),
(370, '🗑️', 'Student deleted', 'CSE210', 'ADMIN', 'admin', '2026-07-30 10:50:57'),
(371, '🎓', 'Student added', 'AABINA BEGAM S — CSE211', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(372, '🎓', 'Student added', 'AHAMED SHAJITH KHAN M — CSE212', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(373, '🎓', 'Student added', 'BALAKRISHNAN S — CSE213', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(374, '🎓', 'Student added', 'BALA NANDHINI K — CSE214', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(375, '🎓', 'Student added', 'BHAVANI V — CSE215', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(376, '🎓', 'Student added', 'DARVIN S — CSE216', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(377, '🎓', 'Student added', 'DHANAPAL M — CSE217', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(378, '🎓', 'Student added', 'DHANUSH RAMAN K — CSE218', 'ADMIN', 'admin', '2026-07-30 10:54:28'),
(379, '🎓', 'Student added', 'GOPALAKRISHNAN S — CSE219', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(380, '🎓', 'Student added', 'JAISHINGH DANIYEL L — CSE220', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(381, '🎓', 'Student added', 'JAJI KUMAR C — CSE221', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(382, '🎓', 'Student added', 'JEYASURYA T — CSE222', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(383, '🎓', 'Student added', 'KANAKA N — CSE223', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(384, '🎓', 'Student added', 'KARTHICK RAJA S — CSE224', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(385, '🎓', 'Student added', 'KISHORE AK — CSE225', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(386, '🎓', 'Student added', 'KUMARAPANDIAN S — CSE226', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(387, '🎓', 'Student added', 'LAKSHANA S — CSE227', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(388, '🎓', 'Student added', 'MANIVEL V — CSE228', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(389, '🎓', 'Student added', 'MOHAMED JAVEED KHAN M — CSE229', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(390, '🎓', 'Student added', 'MUNEES G — CSE230', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(391, '🎓', 'Student added', 'NANDHA KISHORE S — CSE231', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(392, '🎓', 'Student added', 'NARESH — CSE232', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(393, '🎓', 'Student added', 'PUGAZHENDHI G — CSE233', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(394, '🎓', 'Student added', 'SABARISH KUMAR S — CSE234', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(395, '🎓', 'Student added', 'SANJAY KRISHNAN U — CSE235', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(396, '🎓', 'Student added', 'SIVASHANMUGAM S — CSE236', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(397, '🎓', 'Student added', 'THIRUPPATHY E — CSE237', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(398, '🎓', 'Student added', 'UMA MAHESHWARI G — CSE238', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(399, '🎓', 'Student added', 'VISHNU K — CSE239', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(400, '🎓', 'Student added', 'NANDHA GOPALAN S — CSE240', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(401, '🎓', 'Student added', 'RAMYAKRISHNAN R — CSE241', 'ADMIN', 'admin', '2026-07-30 10:54:29'),
(402, '🗑️', 'Student deleted', 'CSE211', 'ADMIN', 'admin', '2026-07-30 10:54:43'),
(403, '🗑️', 'Student deleted', 'CSE212', 'ADMIN', 'admin', '2026-07-30 10:54:45'),
(404, '🗑️', 'Student deleted', 'CSE213', 'ADMIN', 'admin', '2026-07-30 10:54:51'),
(405, '🗑️', 'Student deleted', 'CSE214', 'ADMIN', 'admin', '2026-07-30 10:54:54'),
(406, '🗑️', 'Student deleted', 'CSE215', 'ADMIN', 'admin', '2026-07-30 10:54:57'),
(407, '💰', 'Fee structure saved', 'CSE201 — I YEAR', 'ADMIN', 'admin', '2026-07-30 10:57:12'),
(408, '💰', 'Fee structure saved', 'CSE202 — I YEAR', 'ADMIN', 'admin', '2026-07-30 10:58:17'),
(409, '💰', 'Fee structure saved', 'CSE203 — I YEAR', 'ADMIN', 'admin', '2026-07-30 10:58:48'),
(410, '💰', 'Fee structure saved', 'CSE204 — I YEAR', 'ADMIN', 'admin', '2026-07-30 10:59:31'),
(411, '💰', 'Fee structure saved', 'CSE205 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:00:04'),
(412, '💰', 'Fee structure saved', 'CSE216 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:00:36'),
(413, '💰', 'Fee structure saved', 'CSE217 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:01:26'),
(414, '💰', 'Fee structure saved', 'CSE218 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:01:59'),
(415, '💰', 'Fee structure saved', 'CSE219 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:02:30'),
(416, '💰', 'Fee structure saved', 'CSE220 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:03:00'),
(417, '💰', 'Fee structure saved', 'CSE221 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:03:32'),
(418, '💰', 'Fee structure saved', 'CSE222 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:04:06'),
(419, '💰', 'Fee structure saved', 'CSE223 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:04:30'),
(420, '💰', 'Fee structure saved', 'CSE224 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:05:05'),
(421, '💰', 'Fee structure saved', 'CSE225 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:05:30'),
(422, '💰', 'Fee structure saved', 'CSE226 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:05:52'),
(423, '💰', 'Fee structure saved', 'CSE227 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:06:28'),
(424, '💰', 'Fee structure saved', 'CSE228 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:06:54'),
(425, '💰', 'Fee structure saved', 'CSE229 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:07:33'),
(426, '💰', 'Fee structure saved', 'CSE230 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:08:08'),
(427, '💰', 'Fee structure saved', 'CSE231 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:08:34'),
(428, '💰', 'Fee structure saved', 'CSE232 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:09:12'),
(429, '💰', 'Fee structure saved', 'CSE233 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:09:39'),
(430, '💰', 'Fee structure saved', 'CSE234 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:10:17'),
(431, '💰', 'Fee structure saved', 'CSE235 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:10:40'),
(432, '💰', 'Fee structure saved', 'CSE236 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:11:09'),
(433, '💰', 'Fee structure saved', 'CSE237 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:11:32'),
(434, '💰', 'Fee structure saved', 'CSE238 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:12:00'),
(435, '💰', 'Fee structure saved', 'CSE239 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:12:22'),
(436, '💰', 'Fee structure saved', 'CSE240 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:12:56'),
(437, '💰', 'Fee structure saved', 'CSE241 — I YEAR', 'ADMIN', 'admin', '2026-07-30 11:13:42'),
(438, '💵', 'Fee payment recorded', 'CSE201 — ₹2000', 'ADMIN', 'admin', '2026-07-30 11:14:33'),
(439, '💵', 'Fee payment recorded', 'CSE201 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:15:40'),
(440, '💵', 'Fee payment recorded', 'CSE201 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:16:35'),
(441, '💵', 'Fee payment recorded', 'CSE201 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:17:53'),
(442, '💵', 'Fee payment recorded', 'CSE201 — ₹26100', 'ADMIN', 'admin', '2026-07-30 11:18:26'),
(443, '💵', 'Fee payment recorded', 'CSE202 — ₹8000', 'ADMIN', 'admin', '2026-07-30 11:19:42'),
(444, '💵', 'Fee payment recorded', 'CSE202 — ₹2500', 'ADMIN', 'admin', '2026-07-30 11:20:12'),
(445, '💵', 'Fee payment recorded', 'CSE202 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:20:39'),
(446, '💵', 'Fee payment recorded', 'CSE202 — ₹4000', 'ADMIN', 'admin', '2026-07-30 11:21:04'),
(447, '💵', 'Fee payment recorded', 'CSE203 — ₹2000', 'ADMIN', 'admin', '2026-07-30 11:21:49'),
(448, '💵', 'Fee payment recorded', 'CSE204 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:22:43'),
(449, '💵', 'Fee payment recorded', 'CSE204 — ₹8100', 'ADMIN', 'admin', '2026-07-30 11:23:16'),
(450, '💵', 'Fee payment recorded', 'CSE204 — ₹12000', 'ADMIN', 'admin', '2026-07-30 11:24:24'),
(451, '💵', 'Fee payment recorded', 'CSE204 — ₹1400', 'ADMIN', 'admin', '2026-07-30 11:24:51'),
(452, '💵', 'Fee payment recorded', 'CSE204 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:25:13'),
(453, '💵', 'Fee payment recorded', 'CSE205 — ₹500', 'ADMIN', 'admin', '2026-07-30 11:26:26'),
(454, '💵', 'Fee payment recorded', 'CSE205 — ₹10000', 'ADMIN', 'admin', '2026-07-30 11:27:16'),
(455, '💵', 'Fee payment recorded', 'CSE205 — ₹10000', 'ADMIN', 'admin', '2026-07-30 11:27:50'),
(456, '💵', 'Fee payment recorded', 'CSE205 — ₹5000', 'ADMIN', 'admin', '2026-07-30 11:28:49'),
(457, '💵', 'Fee payment recorded', 'CSE205 — ₹14800', 'ADMIN', 'admin', '2026-07-30 11:29:34'),
(458, '💰', 'Fee structure saved', 'CSE205 — II YEAR', 'ADMIN', 'admin', '2026-07-30 11:32:03'),
(459, '💵', 'Fee payment recorded', 'CSE205 — ₹10000', 'ADMIN', 'admin', '2026-07-30 11:32:38'),
(460, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 00:04:42'),
(461, '💵', 'Fee payment recorded', 'CSE216 — ₹3000', 'ADMIN', 'admin', '2026-07-30 00:11:15'),
(462, '💵', 'Fee payment recorded', 'CSE216 — ₹14000', 'ADMIN', 'admin', '2026-07-30 00:12:19'),
(463, '💵', 'Fee payment recorded', 'CSE216 — ₹21500', 'ADMIN', 'admin', '2026-07-30 00:12:52'),
(464, '💵', 'Fee payment recorded', 'CSE217 — ₹3000', 'ADMIN', 'admin', '2026-07-30 00:14:13'),
(465, '💵', 'Fee payment recorded', 'CSE217 — ₹5000', 'ADMIN', 'admin', '2026-07-30 00:14:41'),
(466, '💵', 'Fee payment recorded', 'CSE217 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:15:01'),
(467, '💵', 'Fee payment recorded', 'CSE217 — ₹3000', 'ADMIN', 'admin', '2026-07-30 00:15:27'),
(468, '💵', 'Fee payment recorded', 'CSE217 — ₹4000', 'ADMIN', 'admin', '2026-07-30 00:15:51'),
(469, '💵', 'Fee payment recorded', 'CSE217 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:19:19'),
(470, '💵', 'Fee payment recorded', 'CSE217 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:19:41'),
(471, '💵', 'Fee payment recorded', 'CSE217 — ₹3000', 'ADMIN', 'admin', '2026-07-30 00:20:09'),
(472, '💵', 'Fee payment recorded', 'CSE220 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:21:08'),
(473, '💵', 'Fee payment recorded', 'CSE221 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:21:39'),
(474, '💵', 'Fee payment recorded', 'CSE221 — ₹18000', 'ADMIN', 'admin', '2026-07-30 00:23:35'),
(475, '💵', 'Fee payment recorded', 'CSE221 — ₹16500', 'ADMIN', 'admin', '2026-07-30 00:24:01'),
(476, '💵', 'Fee payment recorded', 'CSE222 — ₹1000', 'ADMIN', 'admin', '2026-07-30 00:24:34'),
(477, '💵', 'Fee payment recorded', 'CSE222 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:25:07'),
(478, '💵', 'Fee payment recorded', 'CSE222 — ₹10000', 'ADMIN', 'admin', '2026-07-30 00:25:28'),
(479, '💵', 'Fee payment recorded', 'CSE222 — ₹9000', 'ADMIN', 'admin', '2026-07-30 00:25:58'),
(480, '💵', 'Fee payment recorded', 'CSE222 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:27:34'),
(481, '💵', 'Fee payment recorded', 'CSE223 — ₹2000', 'ADMIN', 'admin', '2026-07-30 00:28:13'),
(482, '💵', 'Fee payment recorded', 'CSE223 — ₹14000', 'ADMIN', 'admin', '2026-07-30 00:28:58'),
(483, '💵', 'Fee payment recorded', 'CSE223 — ₹20500', 'ADMIN', 'admin', '2026-07-30 00:29:19'),
(484, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 00:29:40'),
(485, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 00:30:10'),
(486, '👩‍🏫', 'Staff added', 'kamal — EMP001 (login: kamal)', 'ADMIN', 'admin', '2026-07-30 00:31:21'),
(487, '🔐', 'Signed in', 'kamal', 'STAFF', 'kamal', '2026-07-30 00:31:40'),
(488, '🔐', 'Signed in', 'kamal', 'STAFF', 'kamal', '2026-07-30 00:32:11'),
(489, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:33:53'),
(490, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:34:06'),
(491, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:34:39'),
(492, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:34:57'),
(493, '💵', 'Fee payment recorded', 'CSE224 — ₹1000', 'ADMIN', 'admin', '2026-07-30 01:35:56'),
(494, '💵', 'Fee payment recorded', 'CSE224 — ₹3000', 'ADMIN', 'admin', '2026-07-30 01:36:20'),
(495, '💵', 'Fee payment recorded', 'CSE224 — ₹10000', 'ADMIN', 'admin', '2026-07-30 01:36:40'),
(496, '💵', 'Fee payment recorded', 'CSE225 — ₹3000', 'ADMIN', 'admin', '2026-07-30 01:37:39'),
(497, '💵', 'Fee payment recorded', 'CSE225 — ₹5000', 'ADMIN', 'admin', '2026-07-30 01:37:57'),
(498, '💵', 'Fee payment recorded', 'CSE225 — ₹10000', 'ADMIN', 'admin', '2026-07-30 01:38:15'),
(499, '💵', 'Fee payment recorded', 'CSE225 — ₹8500', 'ADMIN', 'admin', '2026-07-30 01:38:37'),
(500, '💵', 'Fee payment recorded', 'CSE225 — ₹3000', 'ADMIN', 'admin', '2026-07-30 01:38:55'),
(501, '💵', 'Fee payment recorded', 'CSE226 — ₹2000', 'ADMIN', 'admin', '2026-07-30 01:39:40'),
(502, '💵', 'Fee payment recorded', 'CSE227 — ₹200000', 'ADMIN', 'admin', '2026-07-30 01:40:39'),
(503, '💵', 'Fee payment recorded', 'CSE227 — ₹20000', 'ADMIN', 'admin', '2026-07-30 01:41:33'),
(504, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:41:53'),
(505, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:42:43'),
(506, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:50:09'),
(507, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 01:50:13'),
(508, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 02:00:45'),
(509, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 02:06:36'),
(510, '🎓', 'Student added', 'ss — CSE340', 'ADMIN', 'admin', '2026-07-30 02:06:59'),
(511, '🗑️', 'Student deleted', 'CSE340', 'ADMIN', 'admin', '2026-07-30 02:07:37'),
(512, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 02:08:58'),
(513, '🎓', 'Student added', 'ss — CSE242', 'ADMIN', 'admin', '2026-07-30 02:09:14'),
(514, '🗑️', 'Student deleted', 'CSE242', 'ADMIN', 'admin', '2026-07-30 02:09:28'),
(515, '💵', 'Fee payment recorded', 'CSE227 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:11:52'),
(516, '💵', 'Fee payment recorded', 'CSE227 — ₹925', 'ADMIN', 'admin', '2026-07-30 02:12:19'),
(517, '💵', 'Fee payment recorded', 'CSE227 — ₹12675', 'ADMIN', 'admin', '2026-07-30 02:12:58'),
(518, '💵', 'Fee payment recorded', 'CSE227 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:13:27'),
(519, '💰', 'Fee structure saved', 'CSE227 — II YEAR', 'ADMIN', 'admin', '2026-07-30 02:17:03'),
(520, '💵', 'Fee payment recorded', 'CSE227 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:17:38'),
(521, '💰', 'Fee structure saved', 'CSE227 — II YEAR', 'ADMIN', 'admin', '2026-07-30 02:19:22'),
(522, '💵', 'Fee payment recorded', 'CSE227 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:22:14'),
(523, '💵', 'Fee payment recorded', 'CSE227 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:22:33'),
(524, '💵', 'Fee payment recorded', 'CSE228 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:23:24'),
(525, '💵', 'Fee payment recorded', 'CSE228 — ₹4000', 'ADMIN', 'admin', '2026-07-30 02:23:42'),
(526, '💵', 'Fee payment recorded', 'CSE228 — ₹4000', 'ADMIN', 'admin', '2026-07-30 02:23:58'),
(527, '💵', 'Fee payment recorded', 'CSE228 — ₹2500', 'ADMIN', 'admin', '2026-07-30 02:24:53'),
(528, '💵', 'Fee payment recorded', 'CSE228 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:25:07'),
(529, '💵', 'Fee payment recorded', 'CSE228 — ₹800', 'ADMIN', 'admin', '2026-07-30 02:25:20'),
(530, '💵', 'Fee payment recorded', 'CSE228 — ₹8000', 'ADMIN', 'admin', '2026-07-30 02:25:39'),
(531, '💵', 'Fee payment recorded', 'CSE229 — ₹8000', 'ADMIN', 'admin', '2026-07-30 02:26:13'),
(532, '💵', 'Fee payment recorded', 'CSE229 — ₹2500', 'ADMIN', 'admin', '2026-07-30 02:27:04'),
(533, '💵', 'Fee payment recorded', 'CSE229 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:30:08'),
(534, '💵', 'Fee payment recorded', 'CSE229 — ₹4000', 'ADMIN', 'admin', '2026-07-30 02:30:36'),
(535, '💵', 'Fee payment recorded', 'CSE230 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:31:25'),
(536, '💵', 'Fee payment recorded', 'CSE230 — ₹34500', 'ADMIN', 'admin', '2026-07-30 02:31:46'),
(537, '💵', 'Fee payment recorded', 'CSE231 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:33:02'),
(538, '💵', 'Fee payment recorded', 'CSE231 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:33:02'),
(539, '💵', 'Fee payment recorded', 'CSE231 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:33:25'),
(540, '💵', 'Fee payment recorded', 'CSE232 — ₹10000', 'ADMIN', 'admin', '2026-07-30 02:33:51'),
(541, '💵', 'Fee payment recorded', 'CSE232 — ₹15000', 'ADMIN', 'admin', '2026-07-30 02:34:09');
INSERT INTO `activity_log` (`id`, `icon`, `title`, `detail`, `by_role`, `username`, `created_at`) VALUES
(542, '💵', 'Fee payment recorded', 'CSE232 — ₹10000', 'ADMIN', 'admin', '2026-07-30 02:34:24'),
(543, '💵', 'Fee payment recorded', 'CSE233 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:34:55'),
(544, '💵', 'Fee payment recorded', 'CSE233 — ₹13000', 'ADMIN', 'admin', '2026-07-30 02:35:53'),
(545, '💵', 'Fee payment recorded', 'CSE233 — ₹21500', 'ADMIN', 'admin', '2026-07-30 02:36:08'),
(546, '💵', 'Fee payment recorded', 'CSE234 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:36:34'),
(547, '💵', 'Fee payment recorded', 'CSE234 — ₹3500', 'ADMIN', 'admin', '2026-07-30 02:36:53'),
(548, '💵', 'Fee payment recorded', 'CSE234 — ₹21000', 'ADMIN', 'admin', '2026-07-30 02:37:07'),
(549, '💵', 'Fee payment recorded', 'CSE235 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:37:31'),
(550, '💵', 'Fee payment recorded', 'CSE235 — ₹14000', 'ADMIN', 'admin', '2026-07-30 02:37:50'),
(551, '💵', 'Fee payment recorded', 'CSE236 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:38:18'),
(552, '💵', 'Fee payment recorded', 'CSE236 — ₹25000', 'ADMIN', 'admin', '2026-07-30 02:38:42'),
(553, '💰', 'Fee structure saved', 'CSE236 — II YEAR', 'ADMIN', 'admin', '2026-07-30 02:39:20'),
(554, '💵', 'Fee payment recorded', 'CSE236 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:39:36'),
(555, '💵', 'Fee payment recorded', 'CSE237 — ₹4500', 'ADMIN', 'admin', '2026-07-30 02:40:20'),
(556, '💵', 'Fee payment recorded', 'CSE237 — ₹10100', 'ADMIN', 'admin', '2026-07-30 02:40:38'),
(557, '💵', 'Fee payment recorded', 'CSE237 — ₹6900', 'ADMIN', 'admin', '2026-07-30 02:42:03'),
(558, '💵', 'Fee payment recorded', 'CSE237 — ₹5000', 'ADMIN', 'admin', '2026-07-30 02:42:21'),
(559, '💵', 'Fee payment recorded', 'CSE238 — ₹1000', 'ADMIN', 'admin', '2026-07-30 02:43:02'),
(560, '💵', 'Fee payment recorded', 'CSE238 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:43:22'),
(561, '💵', 'Fee payment recorded', 'CSE239 — ₹15000', 'ADMIN', 'admin', '2026-07-30 02:43:51'),
(562, '💵', 'Fee payment recorded', 'CSE239 — ₹21500', 'ADMIN', 'admin', '2026-07-30 02:44:09'),
(563, '💵', 'Fee payment recorded', 'CSE240 — ₹1000', 'ADMIN', 'admin', '2026-07-30 02:44:55'),
(564, '💵', 'Fee payment recorded', 'CSE241 — ₹2000', 'ADMIN', 'admin', '2026-07-30 02:45:28'),
(565, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 02:47:13'),
(566, '🗑️', 'Staff deleted', 'EMP001', 'ADMIN', 'admin', '2026-07-30 02:48:03'),
(567, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-07-30 02:58:43'),
(568, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-07 00:16:01'),
(569, '👩‍🏫', 'Staff added', 'kamalesh — EMP001 (login: CSE)', 'ADMIN', 'admin', '2026-08-07 00:21:19'),
(570, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-07 00:21:58'),
(571, '🔑', 'Password reset', 'Staff EMP001', 'ADMIN', 'admin', '2026-08-07 00:22:43'),
(572, '🔐', 'Signed in', 'kamalesh', 'STAFF', 'CSE', '2026-08-07 00:24:39'),
(573, '🔑', 'Password reset', 'Staff EMP001', 'STAFF', 'CSE', '2026-08-07 00:24:56'),
(574, '🔐', 'Signed in', 'kamalesh', 'STAFF', 'CSE', '2026-08-07 00:26:07'),
(575, '🗑️', 'Staff deleted', 'EMP001', 'STAFF', 'CSE', '2026-08-07 00:27:42'),
(576, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-07 00:27:51'),
(577, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-07 00:31:00'),
(578, '🚪', 'Gate pass issued', 'AABINA BEGAM S — GP0001', 'ADMIN', 'admin', '2026-08-07 00:42:09'),
(579, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-09 22:08:58'),
(580, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-10 21:53:21'),
(581, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-10 21:55:52'),
(582, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-11 21:49:24'),
(583, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 00:42:58'),
(584, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 01:33:12'),
(585, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 02:31:06'),
(586, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 02:32:02'),
(587, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 02:32:25'),
(588, '💰', 'Fee structure saved', 'CSE201 — II YEAR', 'ADMIN', 'admin', '2026-08-18 02:49:19'),
(589, '💰', 'Fee structure saved', 'CSE202 — II YEAR', 'ADMIN', 'admin', '2026-08-18 02:51:09'),
(590, '💰', 'Fee structure saved', 'CSE203 — II YEAR', 'ADMIN', 'admin', '2026-08-18 02:52:24'),
(591, '💰', 'Fee structure saved', 'CSE204 — II YEAR', 'ADMIN', 'admin', '2026-08-18 02:52:52'),
(592, '💰', 'Fee structure saved', 'CSE201 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:12:45'),
(593, '💰', 'Fee structure saved', 'CSE202 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:14:05'),
(594, '💰', 'Fee structure saved', 'CSE204 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:15:18'),
(595, '💰', 'Fee structure saved', 'CSE217 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:17:55'),
(596, '💰', 'Fee structure saved', 'CSE218 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:18:29'),
(597, '💰', 'Fee structure saved', 'CSE220 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:19:26'),
(598, '💰', 'Fee structure saved', 'CSE221 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:19:59'),
(599, '💰', 'Fee structure saved', 'CSE222 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:20:37'),
(600, '💰', 'Fee structure saved', 'CSE223 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:21:02'),
(601, '💰', 'Fee structure saved', 'CSE224 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:21:33'),
(602, '💰', 'Fee structure saved', 'CSE225 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:22:05'),
(603, '💰', 'Fee structure saved', 'CSE226 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:22:26'),
(604, '💰', 'Fee structure saved', 'CSE228 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:23:39'),
(605, '💰', 'Fee structure saved', 'CSE229 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:24:08'),
(606, '💰', 'Fee structure saved', 'CSE231 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:24:42'),
(607, '💰', 'Fee structure saved', 'CSE232 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:25:31'),
(608, '💰', 'Fee structure saved', 'CSE234 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:26:57'),
(609, '💰', 'Fee structure saved', 'CSE235 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:28:04'),
(610, '💰', 'Fee structure saved', 'CSE237 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:29:29'),
(611, '💰', 'Fee structure saved', 'CSE238 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:30:08'),
(612, '💰', 'Fee structure saved', 'CSE239 — II YEAR', 'ADMIN', 'admin', '2026-08-18 03:30:31'),
(613, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 03:46:15'),
(614, '💰', 'Fee structure saved', 'CSE301 — III YEAR', 'ADMIN', 'admin', '2026-08-18 03:47:26'),
(615, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-18 22:16:09'),
(616, '💰', 'Fee structure saved', 'CSE302 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:17:37'),
(617, '💰', 'Fee structure saved', 'CSE303 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:18:47'),
(618, '💰', 'Fee structure saved', 'CSE304 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:19:20'),
(619, '💰', 'Fee structure saved', 'CSE305 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:19:56'),
(620, '💰', 'Fee structure saved', 'CSE306 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:21:15'),
(621, '💰', 'Fee structure saved', 'CSE307 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:21:47'),
(622, '💰', 'Fee structure saved', 'CSE308 — III YEAR', 'ADMIN', 'admin', '2026-08-18 22:23:28'),
(623, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-19 00:34:14'),
(624, '🔐', 'Signed in', 'Administrator', 'ADMIN', 'admin', '2026-08-19 01:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_archive`
--

CREATE TABLE `alumni_archive` (
  `id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `roll` varchar(50) DEFAULT NULL,
  `reg_no` varchar(50) DEFAULT NULL,
  `final_batch` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `pphone` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `comm` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `addr` text DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `graduated_on` varchar(20) DEFAULT NULL,
  `photo` longblob DEFAULT NULL,
  `photo_mime` varchar(50) DEFAULT NULL,
  `fee_snapshot` longtext DEFAULT NULL,
  `att_snapshot` longtext DEFAULT NULL,
  `leave_snapshot` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_certificates`
--

CREATE TABLE `alumni_certificates` (
  `id` int(11) NOT NULL,
  `alumni_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cert_type` varchar(50) DEFAULT NULL,
  `cert_date` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mime` varchar(100) DEFAULT NULL,
  `file_data` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_documents`
--

CREATE TABLE `alumni_documents` (
  `id` int(11) NOT NULL,
  `alumni_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `doc_type` varchar(50) DEFAULT NULL,
  `doc_date` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mime` varchar(100) DEFAULT NULL,
  `file_data` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_config`
--

CREATE TABLE `batch_config` (
  `yr_key` varchar(10) NOT NULL,
  `yr_label` varchar(10) NOT NULL,
  `batch_label` varchar(20) NOT NULL,
  `reg_prefix` varchar(10) NOT NULL,
  `next_seq` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_config`
--

INSERT INTO `batch_config` (`yr_key`, `yr_label`, `batch_label`, `reg_prefix`, `next_seq`) VALUES
('yr1', '1st', '2026-29', '26', 2),
('yr2', '2nd', '2025-28', '25', 43),
('yr3', '3rd', '2024-27', '24', 41);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `owner_type` enum('student','staff') NOT NULL DEFAULT 'student',
  `owner_id` varchar(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cert_type` varchar(50) DEFAULT NULL,
  `cert_date` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mime` varchar(100) DEFAULT NULL,
  `file_data` longblob DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `owner_type` enum('student','staff') NOT NULL DEFAULT 'student',
  `owner_id` varchar(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `doc_type` varchar(50) DEFAULT NULL,
  `doc_date` varchar(20) DEFAULT NULL,
  `file_size` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mime` varchar(100) DEFAULT NULL,
  `file_data` longblob DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_structure`
--

CREATE TABLE `fee_structure` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `tuition` decimal(10,2) DEFAULT 0.00,
  `bus` decimal(10,2) DEFAULT 0.00,
  `hostel` decimal(10,2) DEFAULT 0.00,
  `other_json` text DEFAULT NULL,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid` decimal(10,2) DEFAULT 0.00,
  `balance` decimal(10,2) DEFAULT 0.00,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_structure`
--

INSERT INTO `fee_structure` (`id`, `stu_id`, `sem`, `tuition`, `bus`, `hostel`, `other_json`, `total`, `paid`, `balance`, `status`) VALUES
(1, 'CSE301', 'I YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 35000.00, 0.00, 'Paid'),
(2, 'CSE301', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 35000.00, 0.00, 'Paid'),
(4, 'CSE302', 'I YEAR', 24000.00, 13600.00, 0.00, '[]', 37600.00, 37600.00, 0.00, 'Paid'),
(5, 'CSE302', 'II YEAR', 24000.00, 13600.00, 0.00, '[]', 37600.00, 6400.00, 31200.00, 'Partial Paid'),
(6, 'CSE303', 'I YEAR', 24000.00, 6600.00, 0.00, '[]', 30600.00, 30600.00, 0.00, 'Paid'),
(7, 'CSE303', 'II YEAR', 24000.00, 6600.00, 0.00, '[]', 30600.00, 19700.00, 10900.00, 'Partial Paid'),
(8, 'CSE304', 'I YEAR', 30000.00, 7000.00, 0.00, '[]', 37000.00, 37000.00, 0.00, 'Paid'),
(9, 'CSE304', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 18500.00, 16500.00, 'Partial Paid'),
(10, 'CSE305', 'I YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 15000.00, 20000.00, 'Partial Paid'),
(11, 'CSE305', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(12, 'CSE306', 'I YEAR', 25000.00, 5600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 31800.00, 31800.00, 0.00, 'Paid'),
(13, 'CSE306', 'II YEAR', 24000.00, 5600.00, 0.00, '[]', 29600.00, 27500.00, 2100.00, 'Partial Paid'),
(14, 'CSE307', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(15, 'CSE307', 'II YEAR', 30000.00, 5600.00, 0.00, '[]', 35600.00, 32800.00, 2800.00, 'Partial Paid'),
(16, 'CSE308', 'I YEAR', 30000.00, 7200.00, 0.00, '[]', 37200.00, 37200.00, 0.00, 'Paid'),
(17, 'CSE308', 'II YEAR', 30000.00, 7200.00, 0.00, '[]', 37200.00, 36000.00, 1200.00, 'Partial Paid'),
(18, 'CSE309', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(19, 'CSE309', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 12800.00, 22200.00, 'Partial Paid'),
(20, 'CSE310', 'I YEAR', 30000.00, 15400.00, 0.00, '[]', 45400.00, 45400.00, 0.00, 'Paid'),
(21, 'CSE310', 'II YEAR', 29000.00, 15400.00, 0.00, '[]', 44400.00, 44400.00, 0.00, 'Paid'),
(22, 'CSE311', 'I YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 24000.00, 0.00, 'Paid'),
(23, 'CSE311', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 24000.00, 0.00, 'Paid'),
(24, 'CSE312', 'I YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 3000.00, 21000.00, 'Partial Paid'),
(25, 'CSE312', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(26, 'CSE313', 'I YEAR', 24000.00, 5100.00, 0.00, '[]', 29100.00, 29100.00, 0.00, 'Paid'),
(27, 'CSE313', 'II YEAR', 24000.00, 5100.00, 0.00, '[]', 29100.00, 29100.00, 0.00, 'Paid'),
(28, 'CSE314', 'I YEAR', 24000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":2200}]', 26200.00, 26200.00, 0.00, 'Paid'),
(29, 'CSE314', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 16800.00, 7200.00, 'Partial Paid'),
(31, 'CSE315', 'I YEAR', 30000.00, 15400.00, 0.00, '[]', 45400.00, 45400.00, 0.00, 'Paid'),
(32, 'CSE315', 'II YEAR', 29000.00, 15400.00, 0.00, '[]', 44400.00, 41400.00, 3000.00, 'Partial Paid'),
(35, 'CSE316', 'I YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 24000.00, 0.00, 'Paid'),
(36, 'CSE316', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 11000.00, 13000.00, 'Partial Paid'),
(37, 'CSE317', 'I YEAR', 24000.00, 7000.00, 0.00, '[]', 31000.00, 31000.00, 0.00, 'Paid'),
(38, 'CSE317', 'II YEAR', 24000.00, 7000.00, 0.00, '[]', 31000.00, 15000.00, 16000.00, 'Partial Paid'),
(40, 'CSE318', 'I YEAR', 24000.00, 20200.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":2200}]', 46400.00, 46400.00, 0.00, 'Paid'),
(41, 'CSE318', 'II YEAR', 24000.00, 20200.00, 0.00, '[]', 44200.00, 44200.00, 0.00, 'Paid'),
(42, 'CSE319', 'I YEAR', 24000.00, 25600.00, 0.00, '[]', 49600.00, 42500.00, 7100.00, 'Partial Paid'),
(43, 'CSE319', 'II YEAR', 24000.00, 20200.00, 0.00, '[]', 44200.00, 0.00, 44200.00, 'Pending'),
(44, 'CSE320', 'I YEAR', 30000.00, 13600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 44800.00, 44800.00, 0.00, 'Paid'),
(45, 'CSE320', 'II YEAR', 29000.00, 13600.00, 0.00, '[]', 42600.00, 39700.00, 2900.00, 'Partial Paid'),
(46, 'CSE321', 'I YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 24000.00, 0.00, 'Paid'),
(47, 'CSE321', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 24000.00, 0.00, 'Paid'),
(48, 'CSE321', 'III YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 5200.00, 18800.00, 'Partial Paid'),
(49, 'CSE322', 'I YEAR', 30000.00, 7000.00, 0.00, '[]', 37000.00, 37000.00, 0.00, 'Paid'),
(50, 'CSE322', 'II YEAR', 30000.00, 7000.00, 0.00, '[]', 37000.00, 37000.00, 0.00, 'Paid'),
(51, 'CSE323', 'I YEAR', 30000.00, 5000.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(52, 'CSE323', 'II YEAR', 30000.00, 5000.00, 0.00, '[]', 35000.00, 35000.00, 0.00, 'Paid'),
(53, 'CSE324', 'I YEAR', 30000.00, 0.00, 45000.00, '[]', 75000.00, 75000.00, 0.00, 'Paid'),
(54, 'CSE324', 'II YEAR', 30000.00, 5600.00, 0.00, '[]', 35600.00, 20000.00, 15600.00, 'Partial Paid'),
(55, 'CSE325', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 25000.00, 0.00, 'Paid'),
(56, 'CSE326', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 20500.00, 3500.00, 'Partial Paid'),
(57, 'CSE327', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 22000.00, 3000.00, 'Partial Paid'),
(58, 'CSE328', 'II  YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 15000.00, 10000.00, 'Partial Paid'),
(59, 'CSE329', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 25000.00, 0.00, 'Paid'),
(60, 'CSE331', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 35000.00, 0.00, 'Paid'),
(61, 'CSE332', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 2000.00, 33000.00, 'Partial Paid'),
(62, 'CSE333', 'II YEAR', 30000.00, 13600.00, 0.00, '[]', 43600.00, 37000.00, 6600.00, 'Partial Paid'),
(63, 'CSE334', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 2000.00, 33000.00, 'Partial Paid'),
(64, 'CSE335', 'II YEAR', 30000.00, 13600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 45100.00, 45100.00, 0.00, 'Paid'),
(65, 'CSE336', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 9000.00, 16000.00, 'Partial Paid'),
(66, 'CSE337', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 20000.00, 5000.00, 'Partial Paid'),
(67, 'CSE338', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 21500.00, 3500.00, 'Partial Paid'),
(68, 'CSE339', 'II YEAR', 25000.00, 0.00, 0.00, '[]', 25000.00, 13000.00, 12000.00, 'Partial Paid'),
(69, 'CSE201', 'I YEAR', 25000.00, 16600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 43100.00, 43100.00, 0.00, 'Paid'),
(70, 'CSE202', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 19500.00, 6700.00, 'Partial Paid'),
(71, 'CSE203', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 36500.00, 2000.00, 34500.00, 'Partial Paid'),
(72, 'CSE204', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 26500.00, 26500.00, 0.00, 'Paid'),
(73, 'CSE205', 'I YEAR', 24000.00, 13800.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":2500}]', 40300.00, 40300.00, 0.00, 'Paid'),
(74, 'CSE216', 'I YEAR', 30000.00, 7000.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 38500.00, 38500.00, 0.00, 'Paid'),
(75, 'CSE217', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 24000.00, 2200.00, 'Partial Paid'),
(76, 'CSE218', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 0.00, 36200.00, 'Pending'),
(77, 'CSE219', 'I YEAR', 30000.00, 6600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 37800.00, 0.00, 37800.00, 'Pending'),
(78, 'CSE220', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 2000.00, 34200.00, 'Partial Paid'),
(79, 'CSE221', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(80, 'CSE222', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 24000.00, 2200.00, 'Partial Paid'),
(81, 'CSE223', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(82, 'CSE224', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 14000.00, 12200.00, 'Partial Paid'),
(83, 'CSE225', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 26200.00, 0.00, 'Paid'),
(84, 'CSE226', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 2000.00, 34200.00, 'Partial Paid'),
(85, 'CSE227', 'I YEAR', 25000.00, 12400.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 38600.00, 38600.00, 0.00, 'Paid'),
(86, 'CSE228', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 26500.00, 26300.00, 200.00, 'Partial Paid'),
(87, 'CSE229', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 19500.00, 6700.00, 'Partial Paid'),
(88, 'CSE230', 'I YEAR', 30000.00, 6600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 37800.00, 36500.00, 1300.00, 'Partial Paid'),
(89, 'CSE231', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 12000.00, 14200.00, 'Partial Paid'),
(90, 'CSE232', 'I YEAR', 25000.00, 5600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 31800.00, 31800.00, 0.00, 'Paid'),
(91, 'CSE233', 'I YEAR', 30000.00, 6600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 37800.00, 36500.00, 1300.00, 'Partial Paid'),
(92, 'CSE234', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1500}]', 26500.00, 26500.00, 0.00, 'Paid'),
(93, 'CSE235', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 16000.00, 20200.00, 'Partial Paid'),
(94, 'CSE236', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 26200.00, 0.00, 'Paid'),
(95, 'CSE237', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 26200.00, 0.00, 'Paid'),
(96, 'CSE238', 'I YEAR', 25000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 26200.00, 3000.00, 23200.00, 'Partial Paid'),
(97, 'CSE239', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 36200.00, 0.00, 'Paid'),
(98, 'CSE240', 'I YEAR', 25000.00, 16600.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 42800.00, 1000.00, 41800.00, 'Partial Paid'),
(99, 'CSE241', 'I YEAR', 35000.00, 0.00, 0.00, '[{\"type\":\"Sports Fees\",\"amount\":1200}]', 36200.00, 2000.00, 34200.00, 'Partial Paid'),
(100, 'CSE205', 'II YEAR', 24000.00, 13800.00, 0.00, '[]', 37800.00, 10000.00, 27800.00, 'Partial Paid'),
(102, 'CSE227', 'II YEAR', 24000.00, 12400.00, 0.00, '[]', 36400.00, 10000.00, 26400.00, 'Partial Paid'),
(103, 'CSE236', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 5000.00, 19000.00, 'Partial Paid'),
(106, 'CSE203', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(108, 'CSE201', 'II YEAR', 24000.00, 16600.00, 0.00, '[]', 40600.00, 0.00, 40600.00, 'Pending'),
(109, 'CSE202', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(110, 'CSE204', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(111, 'CSE217', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(112, 'CSE218', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(113, 'CSE220', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(114, 'CSE221', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(115, 'CSE222', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(116, 'CSE223', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(117, 'CSE224', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(118, 'CSE225', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(119, 'CSE226', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(120, 'CSE228', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(121, 'CSE229', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(122, 'CSE231', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(123, 'CSE232', 'II YEAR', 24000.00, 5600.00, 0.00, '[]', 29600.00, 0.00, 29600.00, 'Pending'),
(124, 'CSE234', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(125, 'CSE235', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(126, 'CSE237', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(127, 'CSE238', 'II YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(128, 'CSE239', 'II YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(129, 'CSE301', 'III YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(130, 'CSE302', 'III YEAR', 24000.00, 13600.00, 0.00, '[]', 37600.00, 0.00, 37600.00, 'Pending'),
(131, 'CSE303', 'III YEAR', 24000.00, 6600.00, 0.00, '[]', 30600.00, 0.00, 30600.00, 'Pending'),
(132, 'CSE304', 'III YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(133, 'CSE305', 'III YEAR', 35000.00, 0.00, 0.00, '[]', 35000.00, 0.00, 35000.00, 'Pending'),
(134, 'CSE306', 'III YEAR', 24000.00, 0.00, 0.00, '[]', 24000.00, 0.00, 24000.00, 'Pending'),
(135, 'CSE307', 'III YEAR', 35600.00, 0.00, 0.00, '[]', 35600.00, 0.00, 35600.00, 'Pending'),
(136, 'CSE308', 'III YEAR', 30000.00, 7200.00, 0.00, '[]', 37200.00, 0.00, 37200.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `fee_summary`
--

CREATE TABLE `fee_summary` (
  `stu_id` varchar(20) NOT NULL,
  `total` decimal(12,2) DEFAULT 0.00,
  `paid` decimal(12,2) DEFAULT 0.00,
  `balance` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_summary`
--

INSERT INTO `fee_summary` (`stu_id`, `total`, `paid`, `balance`) VALUES
('CSE201', 83700.00, 43100.00, 40600.00),
('CSE202', 50200.00, 19500.00, 30700.00),
('CSE203', 71500.00, 2000.00, 69500.00),
('CSE204', 50500.00, 31500.00, 19000.00),
('CSE205', 78100.00, 50300.00, 27800.00),
('CSE216', 38500.00, 38500.00, 0.00),
('CSE217', 50200.00, 24000.00, 26200.00),
('CSE218', 71200.00, 0.00, 71200.00),
('CSE219', 37800.00, 0.00, 37800.00),
('CSE220', 71200.00, 2000.00, 69200.00),
('CSE221', 71200.00, 36500.00, 34700.00),
('CSE222', 50200.00, 24000.00, 26200.00),
('CSE223', 71200.00, 36500.00, 34700.00),
('CSE224', 50200.00, 14000.00, 36200.00),
('CSE225', 50200.00, 29500.00, 20700.00),
('CSE226', 71200.00, 2000.00, 69200.00),
('CSE227', 75000.00, 48600.00, 26400.00),
('CSE228', 50500.00, 25500.00, 25000.00),
('CSE229', 50200.00, 19500.00, 30700.00),
('CSE230', 37800.00, 36500.00, 1300.00),
('CSE231', 50200.00, 12000.00, 38200.00),
('CSE232', 61400.00, 35000.00, 26400.00),
('CSE233', 37800.00, 36500.00, 1300.00),
('CSE234', 50500.00, 26500.00, 24000.00),
('CSE235', 71200.00, 16000.00, 55200.00),
('CSE236', 50200.00, 32000.00, 18200.00),
('CSE237', 50200.00, 26500.00, 23700.00),
('CSE238', 50200.00, 3000.00, 47200.00),
('CSE239', 71200.00, 36500.00, 34700.00),
('CSE240', 42800.00, 1000.00, 41800.00),
('CSE241', 36200.00, 2000.00, 34200.00),
('CSE301', 105000.00, 70000.00, 35000.00),
('CSE302', 112800.00, 44000.00, 68800.00),
('CSE303', 91800.00, 50300.00, 41500.00),
('CSE304', 107000.00, 55500.00, 51500.00),
('CSE305', 105000.00, 15000.00, 90000.00),
('CSE306', 85400.00, 59300.00, 26100.00),
('CSE307', 107400.00, 69000.00, 38400.00),
('CSE308', 111600.00, 73200.00, 38400.00),
('CSE309', 71200.00, 49000.00, 22200.00),
('CSE310', 89800.00, 89800.00, 0.00),
('CSE311', 48000.00, 55200.00, -7200.00),
('CSE312', 48000.00, 3000.00, 45000.00),
('CSE313', 58200.00, 60300.00, -2100.00),
('CSE314', 50200.00, 43000.00, 7200.00),
('CSE315', 89800.00, 86800.00, 3000.00),
('CSE316', 48000.00, 35000.00, 13000.00),
('CSE317', 62000.00, 46000.00, 16000.00),
('CSE318', 90600.00, 100600.00, -10000.00),
('CSE319', 93800.00, 42500.00, 51300.00),
('CSE320', 87400.00, 84500.00, 2900.00),
('CSE321', 72000.00, 53200.00, 18800.00),
('CSE322', 74000.00, 79200.00, -5200.00),
('CSE323', 71200.00, 71200.00, 0.00),
('CSE324', 110600.00, 95000.00, 15600.00),
('CSE325', 25000.00, 25000.00, 0.00),
('CSE326', 24000.00, 20500.00, 3500.00),
('CSE327', 25000.00, 22000.00, 3000.00),
('CSE328', 25000.00, 15000.00, 10000.00),
('CSE329', 25000.00, 30000.00, -5000.00),
('CSE331', 35000.00, 37000.00, -2000.00),
('CSE332', 35000.00, 2000.00, 33000.00),
('CSE333', 43600.00, 37000.00, 6600.00),
('CSE334', 35000.00, 2000.00, 33000.00),
('CSE335', 45100.00, 45100.00, 0.00),
('CSE336', 25000.00, 9000.00, 16000.00),
('CSE337', 25000.00, 20000.00, 5000.00),
('CSE338', 25000.00, 21500.00, 3500.00),
('CSE339', 25000.00, 13000.00, 12000.00);

-- --------------------------------------------------------

--
-- Table structure for table `fee_transactions`
--

CREATE TABLE `fee_transactions` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `bill_no` varchar(20) DEFAULT NULL,
  `txn_date` varchar(20) DEFAULT NULL,
  `fee_type` varchar(50) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `scholarship` decimal(10,2) DEFAULT 0.00,
  `net` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_transactions`
--

INSERT INTO `fee_transactions` (`id`, `stu_id`, `bill_no`, `txn_date`, `fee_type`, `period`, `amount`, `scholarship`, `net`) VALUES
(1, 'CSE301', '17746', '15 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(2, 'CSE301', '18644', '21 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(3, 'CSE301', '19132', '21 Apr 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(4, 'CSE301', '19132', '21 Apr 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(5, 'CSE301', '19945', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 14000.00, 0.00, 14000.00),
(6, 'CSE301', '20230', '19 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 21000.00, 0.00, 21000.00),
(7, 'CSE302', '18047', '30 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(8, 'CSE302', '18255', '18 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(9, 'CSE302', '19872', '23 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(10, 'CSE302', '20115', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 12000.00, 0.00, 12000.00),
(11, 'CSE302', '37320', '28 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 7000.00, 0.00, 7000.00),
(12, 'CSE303', '17494', '13 May 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(13, 'CSE303', '17832', '24 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(14, 'CSE303', '18191', '07 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(15, 'CSE303', '18350', '11 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 3500.00, 0.00, 3500.00),
(16, 'CSE303', '18429', '02 Jan 2025', 'Balance / Arrear Fees', 'Semester 1', 2800.00, 0.00, 2800.00),
(17, 'CSE303', '18765', '05 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(18, 'CSE303', '19823', '17 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(19, 'CSE303', '20125', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(20, 'CSE303', '20504', '27 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(21, 'CSE303', '37230', '23 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(22, 'CSE304', '17576', '27 Jun 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(23, 'CSE304', '19938', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 31000.00, 0.00, 31000.00),
(24, 'CSE304', '20113', '17 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 22500.00, 0.00, 22500.00),
(25, 'CSE305', '18939', '21 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(26, 'CSE306', '17872', '01 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(27, 'CSE306', '18098', '16 Sept 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(28, 'CSE306', '18353', '11 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(29, 'CSE306', '18532', '30 Jan 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(30, 'CSE306', '18815', '07 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(31, 'CSE306', '18870', '14 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(32, 'CSE306', '19007', '28 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 4800.00, 0.00, 4800.00),
(33, 'CSE306', '19868', '23 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(34, 'CSE306', '19888', '26 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(35, 'CSE306', '20131', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 7500.00, 0.00, 7500.00),
(36, 'CSE306', '20565', '30 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(37, 'CSE306', '37227', '23 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(38, 'CSE306', '37261', '27 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(39, 'CSE306', '37645', '24 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(40, 'CSE307', '17606', '01 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(41, 'CSE307', '17792', '19 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(42, 'CSE307', '18578', '17 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(43, 'CSE307', '18931', '21 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(44, 'CSE307', '19927', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 14000.00, 0.00, 14000.00),
(45, 'CSE307', '20227', '19 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(46, 'CSE308', '17643', '03 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(47, 'CSE308', '18356', '11 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(48, 'CSE308', '18579', '17 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(49, 'CSE308', '18915', '19 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 22000.00, 0.00, 22000.00),
(50, 'CSE308', '19927', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(51, 'CSE308', '20209', '18 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 21200.00, 0.00, 21200.00),
(52, 'CSE309', '17893', '06 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(53, 'CSE309', '18641', '20 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(54, 'CSE309', '19944', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(55, 'CSE309', '20210', '18 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 21000.00, 0.00, 21000.00),
(56, 'CSE310', '17610', '01 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(57, 'CSE310', '19877', '23 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 43500.00, 0.00, 43500.00),
(58, 'CSE310', '19878', '23 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(59, 'CSE310', '19913', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 14000.00, 0.00, 14000.00),
(60, 'CSE310', '20232', '19 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 27000.00, 0.00, 27000.00),
(61, 'CSE310', '37197', '17 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 300.00, 0.00, 300.00),
(62, 'CSE311', '71868', '31 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(63, 'CSE311', '17873', '05 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(64, 'CSE311', '18143', '25 Sept 2024', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(65, 'CSE311', '18877', '14 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(66, 'CSE311', '18882', '14 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 1200.00, 0.00, 1200.00),
(67, 'CSE311', '19681', '13 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(68, 'CSE311', '19894', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(69, 'CSE311', '20108', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(70, 'CSE311', '20404', '07 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 12000.00, 0.00, 12000.00),
(71, 'CSE311', '37646', '24 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(72, 'CSE312', '17859', '30 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(73, 'CSE313', '17550', '19 Jun 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(74, 'CSE313', '18100', '16 Sept 2024', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(75, 'CSE313', '18805', '07 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(76, 'CSE313', '18872', '14 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 1200.00, 0.00, 1200.00),
(77, 'CSE313', '19701', '15 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(78, 'CSE313', '20127', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(79, 'CSE313', '20576', '02 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(80, 'CSE313', '37606', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 4100.00, 0.00, 4100.00),
(81, 'CSE314', '17871', '31 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(82, 'CSE314', '18192', '07 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(83, 'CSE314', '18280', '28 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(84, 'CSE314', '18864', '13 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(85, 'CSE314', '18928', '20 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(86, 'CSE314', '19018', '28 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 7000.00, 0.00, 7000.00),
(87, 'CSE314', '19821', '17 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(88, 'CSE314', '20128', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(89, 'CSE314', '20567', '30 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(90, 'CSE314', '37077', '16 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(91, 'CSE314', '37233', '23 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(92, 'CSE315', '17843', '25 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(93, 'CSE315', '18398', '18 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(94, 'CSE315', '18610', '17 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(95, 'CSE315', '18913', '19 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(96, 'CSE315', '18918', '19 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 22400.00, 0.00, 22400.00),
(97, 'CSE315', '19912', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(98, 'CSE315', '20231', '19 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 22500.00, 0.00, 22500.00),
(99, 'CSE315', '20463', '20 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(100, 'CSE315', '37263', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 2900.00, 0.00, 2900.00),
(106, 'CSE316', '17891', '06 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(107, 'CSE316', '18400', '18 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(108, 'CSE316', '18405', '20 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(109, 'CSE316', '19146', '22 Apr 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(110, 'CSE316', '19518', '12 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(111, 'CSE316', '19980', '09 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(112, 'CSE316', '20129', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(113, 'CSE317', '17504', '15 May 2024', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(114, 'CSE317', '18411', '25 Nov 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(115, 'CSE317', '18427', '02 Jan 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(116, 'CSE317', '18511', '28 Jan 2025', 'Balance / Arrear Fees', 'Semester 1', 17000.00, 0.00, 17000.00),
(117, 'CSE317', '19574', '22 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(118, 'CSE317', '20178', '16 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(119, 'CSE317', '37016', '06 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(120, 'CSE318', '17527', '29 May 2024', 'Balance / Arrear Fees', 'Semester 1', 500.00, 0.00, 500.00),
(121, 'CSE318', '17590', '27 Jun 2024', 'Balance / Arrear Fees', 'Semester 1', 1500.00, 0.00, 1500.00),
(122, 'CSE318', '18108', '20 Sept 2024', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(123, 'CSE318', '18580', '17 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 25000.00, 0.00, 25000.00),
(124, 'CSE318', '18642', '21 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(125, 'CSE318', '18926', '20 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 4400.00, 0.00, 4400.00),
(126, 'CSE318', '19754', '16 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 22100.00, 0.00, 22100.00),
(127, 'CSE318', '20545', '29 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 22100.00, 0.00, 22100.00),
(128, 'CSE318', '37605', '16 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(129, 'CSE319', '17520', '21 May 2024', 'Balance / Arrear Fees', 'Semester 1', 10500.00, 0.00, 10500.00),
(130, 'CSE319', '19023', '01 Apr 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(131, 'CSE319', '19863', '22 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 7000.00, 0.00, 7000.00),
(132, 'CSE319', '20177', '16 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(133, 'CSE319', '37232', '23 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(134, 'CSE320', '17642', '03 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(135, 'CSE320', '18566', '12 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(136, 'CSE320', '18938', '21 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 22500.00, 0.00, 22500.00),
(137, 'CSE320', '19935', '07 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(138, 'CSE320', '19631', '08 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(139, 'CSE321', '17575', '27 Jun 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(140, 'CSE321', '18042', '28 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(141, 'CSE321', '18103', '19 Sept 2024', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(142, 'CSE321', '18226', '14 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(143, 'CSE321', '18476', '22 Jan 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(144, 'CSE321', '18878', '14 Mar 2025', 'Balance / Arrear Fees (Bill 1 of 2)', 'Semester 1', 7000.00, 0.00, 7000.00),
(145, 'CSE321', '18880', '14 Mar 2025', 'Balance / Arrear Fees (Bill 2 of 2)', 'Semester 1', 1000.00, 0.00, 1000.00),
(146, 'CSE321', '18898', '17 Mar 2025', 'Balance / Arrear Fees', 'Semester 1', 200.00, 0.00, 200.00),
(147, 'CSE321', '19592', '25 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(148, 'CSE321', '20030', '27 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(149, 'CSE321', '20098', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(150, 'CSE321', '20154', '14 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(151, 'CSE321', '20466', '20 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(152, 'CSE321', '20511', '27 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(153, 'CSE321', '37177', '11 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(154, 'CSE321', '37370', '15 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(155, 'CSE321', '37560', '14 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(156, 'CSE320', '20268', '25 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 25000.00, 0.00, 25000.00),
(157, 'CSE322', '17525', '29 May 2024', 'Balance / Arrear Fees', 'Semester 1', 500.00, 0.00, 500.00),
(158, 'CSE322', '17605', '01 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(159, 'CSE322', '18598', '17 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(160, 'CSE322', '19917', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(161, 'CSE322', '37151', '23 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 42700.00, 0.00, 42700.00),
(162, 'CSE322', '37574', '14 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(163, 'CSE323', '17465', '24 Apr 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(164, 'CSE323', '17577', '27 Jun 2024', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(165, 'CSE323', '18560', '12 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(166, 'CSE323', '19476', '29 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 21200.00, 0.00, 21200.00),
(167, 'CSE323', '19971', '08 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(168, 'CSE323', '20194', '17 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(169, 'CSE324', '17786', '19 Jul 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(170, 'CSE324', '17997', '20 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(171, 'CSE324', '18033', '27 Aug 2024', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(172, 'CSE324', '18233', '15 Oct 2024', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(173, 'CSE324', '18563', '12 Feb 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(174, 'CSE324', '19196', '07 May 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(175, 'CSE324', '19488', '04 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(176, 'CSE324', '19914', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(177, 'CSE324', '20195', '17 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(178, 'CSE325', '20031', '27 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(179, 'CSE325', '37136', '20 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(180, 'CSE326', '19824', '16 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(181, 'CSE326', '19987', '10 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(182, 'CSE326', '37258', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(183, 'CSE326', '37357', '06 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 3500.00, 0.00, 3500.00),
(184, 'CSE327', '19473', '25 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(185, 'CSE327', '19867', '22 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(186, 'CSE327', '20130', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(187, 'CSE327', '37262', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(188, 'CSE328', '19534', '14 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(189, 'CSE328', '19859', '22 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(190, 'CSE328', '20121', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(191, 'CSE328', '20584', '02 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(192, 'CSE329', '19478', '30 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(193, 'CSE329', '19826', '17 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(194, 'CSE329', '20116', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(195, 'CSE329', '20510', '27 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(196, 'CSE329', '37319', '28 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(197, 'CSE329', '37543', '13 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(198, 'CSE331', '19502', '07 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2500.00, 0.00, 2500.00),
(199, 'CSE331', '20263', '24 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 12000.00, 0.00, 12000.00),
(200, 'CSE331', '37644', '23 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 22500.00, 0.00, 22500.00),
(201, 'CSE332', '19406', '25 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(202, 'CSE333', '19341', '05 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(203, 'CSE333', '37585', '15 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 35000.00, 0.00, 35000.00),
(204, 'CSE334', '19252', '20 May 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(205, 'CSE335', '19308', '30 May 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(206, 'CSE335', '20499', '23 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 17000.00, 0.00, 17000.00),
(207, 'CSE335', '37571', '14 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 26100.00, 0.00, 26100.00),
(208, 'CSE336', '19288', '28 May 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(209, 'CSE336', '20126', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 8000.00, 0.00, 8000.00),
(210, 'CSE337', '19446', '09 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(211, 'CSE337', '19981', '09 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(212, 'CSE337', '20114', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(213, 'CSE337', '37358', '06 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(214, 'CSE337', '37534', '13 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(215, 'CSE338', '19304', '29 May 2025', 'Balance / Arrear Fees', 'Semester 1', 500.00, 0.00, 500.00),
(216, 'CSE338', '19713', '15 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(217, 'CSE338', '20120', '06 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(218, 'CSE338', '20512', '27 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(219, 'CSE338', '37259', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(220, 'CSE339', '19343', '05 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(221, 'CSE339', '20105', '05 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 6000.00, 0.00, 6000.00),
(222, 'CSE339', '20179', '16 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(223, 'CSE201', '19541', '18 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(224, 'CSE201', '19996', '13 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(225, 'CSE201', '20285', '01 Dec 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(226, 'CSE201', '37326', '31 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(227, 'CSE201', '37621', '21 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 26100.00, 0.00, 26100.00),
(228, 'CSE202', '19952', '08 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 8000.00, 0.00, 8000.00),
(229, 'CSE202', '19578', '25 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2500.00, 0.00, 2500.00),
(230, 'CSE202', '37301', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(231, 'CSE202', '20427', '19 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(232, 'CSE203', '19472', '23 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(233, 'CSE204', '19533', '14 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(234, 'CSE204', '19803', '17 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 8100.00, 0.00, 8100.00),
(235, 'CSE204', '20502', '27 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 12000.00, 0.00, 12000.00),
(236, 'CSE204', '37327', '31 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 1400.00, 0.00, 1400.00),
(237, 'CSE204', '37582', '15 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(238, 'CSE205', '19511', '11 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 500.00, 0.00, 500.00),
(239, 'CSE205', '19758', '16 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(240, 'CSE205', '20284', '01 Dec 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(241, 'CSE205', '20475', '21 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(242, 'CSE205', '37277', '25 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 14800.00, 0.00, 14800.00),
(243, 'CSE205', '37613', '20 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(244, 'CSE216', '19481', '29 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(245, 'CSE216', '20543', '20 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 14000.00, 0.00, 14000.00),
(246, 'CSE216', '37572', '14 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 21500.00, 0.00, 21500.00),
(247, 'CSE217', '19475', '28 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(248, 'CSE217', '19604', '28 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(249, 'CSE217', '20422', '09 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(250, 'CSE217', '37113', '19 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(251, 'CSE217', '37178', '11 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(252, 'CSE217', '19676', '12 Sept 2025', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(253, 'CSE217', '37272', '25 Mar 2026', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(254, 'CSE217', '37584', '15 Jul 2026', 'Balance / Arrear Fees', 'Full Year', 3000.00, 0.00, 3000.00),
(255, 'CSE220', '19262', '22 May 2025', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(256, 'CSE221', '19376', '17 Jun 2025', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(257, 'CSE221', '20574', '31 Jan 2026', 'Balance / Arrear Fees', 'Full Year', 18000.00, 0.00, 18000.00),
(258, 'CSE221', '37184', '13 Mar 2026', 'Balance / Arrear Fees', 'Full Year', 16500.00, 0.00, 16500.00),
(259, 'CSE222', '18786', '06 Mar 2025', 'Balance / Arrear Fees', 'Full Year', 1000.00, 0.00, 1000.00),
(260, 'CSE222', '19696', '15 Sept 2025', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(261, 'CSE222', '20302', '21 Feb 2025', 'Balance / Arrear Fees', 'Full Year', 10000.00, 0.00, 10000.00),
(262, 'CSE222', '37304', '26 Mar 2026', 'Balance / Arrear Fees', 'Full Year', 9000.00, 0.00, 9000.00),
(263, 'CSE222', '37608', '17 Jul 2026', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(264, 'CSE223', '19458', '10 Jul 2025', 'Balance / Arrear Fees', 'Full Year', 2000.00, 0.00, 2000.00),
(265, 'CSE223', '20527', '27 Jan 2026', 'Balance / Arrear Fees', 'Full Year', 14000.00, 0.00, 14000.00),
(266, 'CSE223', '37360', '06 Apr 2026', 'Balance / Arrear Fees', 'Full Year', 20500.00, 0.00, 20500.00),
(267, 'CSE224', '19426', '07 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(268, 'CSE224', '19860', '22 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(269, 'CSE224', '37314', '27 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(270, 'CSE225', '19350', '06 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(271, 'CSE225', '20157', '14 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(272, 'CSE225', '37307', '27 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(273, 'CSE225', '37375', '16 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 8500.00, 0.00, 8500.00),
(274, 'CSE225', '37528', '13 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 3000.00, 0.00, 3000.00),
(275, 'CSE226', '19546', '19 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(277, 'CSE227', '19454', '10 Jul 2025', 'Balance / Arrear Fees', 'Semester 1', 20000.00, 0.00, 20000.00),
(278, 'CSE227', '20376', '24 Dec 2025', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(279, 'CSE227', '19780', '16 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 925.00, 0.00, 925.00),
(280, 'CSE227', '20578', '02 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 12675.00, 0.00, 12675.00),
(283, 'CSE227', '37493', '22 Jun 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(284, 'CSE227', '37581', '15 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(285, 'CSE228', '19403', '25 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(286, 'CSE228', '19737', '16 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(287, 'CSE228', '19919', '06 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(288, 'CSE228', '20421', '09 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 2500.00, 0.00, 2500.00),
(289, 'CSE228', '37294', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(291, 'CSE228', '37377', '16 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 8000.00, 0.00, 8000.00),
(292, 'CSE229', '19953', '08 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 8000.00, 0.00, 8000.00),
(293, 'CSE229', '19579', '25 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2500.00, 0.00, 2500.00),
(294, 'CSE229', '37300', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(295, 'CSE229', '20428', '19 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 4000.00, 0.00, 4000.00),
(296, 'CSE230', '19505', 'Invalid Date', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(297, 'CSE230', '37603', '16 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 34500.00, 0.00, 34500.00),
(298, 'CSE231', '19535', '14 Aug 2025', 'Balance / Arrear Fees (Bill 1 of 2)', 'Semester 1', 2000.00, 0.00, 2000.00),
(299, 'CSE231', '19535', '14 Aug 2025', 'Balance / Arrear Fees (Bill 2 of 2)', 'Semester 1', 5000.00, 0.00, 5000.00),
(300, 'CSE231', '37306', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(301, 'CSE232', '19197', '06 May 2025', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(302, 'CSE232', '37265', '24 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(303, 'CSE232', '37580', '15 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 10000.00, 0.00, 10000.00),
(304, 'CSE233', '19483', '04 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(305, 'CSE233', '37014', '05 Feb 2026', 'Balance / Arrear Fees', 'Semester 1', 13000.00, 0.00, 13000.00),
(306, 'CSE233', '37350', '04 Apr 2026', 'Balance / Arrear Fees', 'Semester 1', 21500.00, 0.00, 21500.00),
(307, 'CSE234', '19234', '16 May 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(308, 'CSE234', '19989', '10 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 3500.00, 0.00, 3500.00),
(309, 'CSE234', '37309', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 21000.00, 0.00, 21000.00),
(310, 'CSE235', '19486', '04 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(311, 'CSE235', '37611', '17 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 14000.00, 0.00, 14000.00),
(312, 'CSE236', '19491', '05 Aug 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(313, 'CSE236', '19862', '22 Sept 2025', 'Balance / Arrear Fees', 'Semester 1', 25000.00, 0.00, 25000.00),
(314, 'CSE236', '37489', '18 Jun 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(315, 'CSE237', '20011', '22 Oct 2025', 'Balance / Arrear Fees', 'Semester 1', 4500.00, 0.00, 4500.00),
(316, 'CSE237', '20202', '18 Nov 2025', 'Balance / Arrear Fees', 'Semester 1', 10100.00, 0.00, 10100.00),
(317, 'CSE237', '37299', '26 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 6900.00, 0.00, 6900.00),
(318, 'CSE237', '37318', '28 Mar 2026', 'Balance / Arrear Fees', 'Semester 1', 5000.00, 0.00, 5000.00),
(319, 'CSE238', '19391', '20 Jun 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(320, 'CSE238', '20395', '06 Jan 2026', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00),
(321, 'CSE239', '37483', '16 Jun 2026', 'Balance / Arrear Fees', 'Semester 1', 15000.00, 0.00, 15000.00),
(322, 'CSE239', '37552', '13 Jul 2026', 'Balance / Arrear Fees', 'Semester 1', 21500.00, 0.00, 21500.00),
(323, 'CSE240', '19292', '28 May 2025', 'Balance / Arrear Fees', 'Semester 1', 1000.00, 0.00, 1000.00),
(324, 'CSE241', '19239', '19 May 2025', 'Balance / Arrear Fees', 'Semester 1', 2000.00, 0.00, 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `gate_passes`
--

CREATE TABLE `gate_passes` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(20) DEFAULT NULL,
  `pass_no` varchar(20) DEFAULT NULL,
  `stu_name` varchar(150) DEFAULT NULL,
  `stu_yr` varchar(10) DEFAULT NULL,
  `pass_date` varchar(20) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `out_time` varchar(20) DEFAULT NULL,
  `in_time` varchar(20) DEFAULT NULL,
  `approver` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gate_passes`
--

INSERT INTO `gate_passes` (`id`, `stu_id`, `pass_no`, `stu_name`, `stu_yr`, `pass_date`, `reason`, `out_time`, `in_time`, `approver`, `status`) VALUES
(1, 'CSE201', 'GP0001', 'AABINA BEGAM S', '2nd', '2026-08-07', '—', '01:10', '01:20', 'babu kumar', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `h_date` varchar(20) NOT NULL,
  `title` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_permissions`
--

CREATE TABLE `leave_permissions` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `yr_key` varchar(10) NOT NULL,
  `att_year` int(11) NOT NULL,
  `att_month` int(11) NOT NULL,
  `att_day` int(11) NOT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `addr` text DEFAULT NULL,
  `photo` longblob DEFAULT NULL,
  `photo_mime` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `sys_role` varchar(20) DEFAULT 'staff',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `att_year` int(11) NOT NULL,
  `att_month` int(11) NOT NULL,
  `att_day` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` varchar(20) NOT NULL,
  `yr_key` varchar(10) NOT NULL,
  `yr_label` varchar(10) NOT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `roll` varchar(50) DEFAULT NULL,
  `reg_no` varchar(50) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `comm` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `pphone` varchar(20) DEFAULT NULL,
  `addr` text DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `att_pct` varchar(10) DEFAULT '0%',
  `fee_status` varchar(20) DEFAULT 'No Fees',
  `gate_used` int(11) DEFAULT 0,
  `photo` longblob DEFAULT NULL,
  `photo_mime` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_id`, `yr_key`, `yr_label`, `sem`, `name`, `roll`, `reg_no`, `batch`, `dob`, `comm`, `religion`, `phone`, `pphone`, `addr`, `job`, `att_pct`, `fee_status`, `gate_used`, `photo`, `photo_mime`, `created_at`, `updated_at`) VALUES
('CSE201', 'yr2', '2nd', 'Sem 3', 'AABINA BEGAM S', 'II-CSE-001', '26504352', '2025-27', '—', 'BCM', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 1, NULL, NULL, '2026-07-30 10:29:07', '2026-08-18 03:12:45'),
('CSE202', 'yr2', '2nd', 'Sem 3', 'AHAMED SHAJITH KHAN M', 'II-CSE-002', '26504353', '2025-27', '—', 'BCM', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:31:12', '2026-07-30 11:19:42'),
('CSE203', 'yr2', '2nd', 'Sem 3', 'BALAKRISHNAN S', 'II-CSE-003', '26504355', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:32:38', '2026-07-30 11:21:49'),
('CSE204', 'yr2', '2nd', 'Sem 3', 'BALA NANDHINI K', 'II-CSE-004', '26504356', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:33:10', '2026-08-18 03:15:18'),
('CSE205', 'yr2', '2nd', 'Sem 3', 'BHAVANI V', 'II-CSE-005', '26504357', '2025-27', '—', 'DNC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:33:45', '2026-07-30 11:32:03'),
('CSE216', 'yr2', '2nd', 'Sem 3', 'DARVIN S', 'II-CSE-016', '26504358', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-30 10:54:28', '2026-07-30 00:12:52'),
('CSE217', 'yr2', '2nd', 'Sem 3', 'DHANAPAL M', 'II-CSE-017', '26504359', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:28', '2026-07-30 00:14:13'),
('CSE218', 'yr2', '2nd', 'Sem 3', 'DHANUSH RAMAN K', 'II-CSE-018', '26504360', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Pending', 0, NULL, NULL, '2026-07-30 10:54:28', '2026-07-30 11:01:59'),
('CSE219', 'yr2', '2nd', 'Sem 3', 'GOPALAKRISHNAN S', 'II-CSE-019', '26504361', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Pending', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 11:02:30'),
('CSE220', 'yr2', '2nd', 'Sem 3', 'JAISHINGH DANIYEL L', 'II-CSE-020', '26504363', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 00:21:08'),
('CSE221', 'yr2', '2nd', 'Sem 3', 'JAJI KUMAR C', 'II-CSE-021', '26504364', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:19:59'),
('CSE222', 'yr2', '2nd', 'Sem 3', 'JEYASURYA T', 'II-CSE-022', '26504365', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 00:24:33'),
('CSE223', 'yr2', '2nd', 'Sem 3', 'KANAKA N', 'II-CSE-023', '26504366', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:21:02'),
('CSE224', 'yr2', '2nd', 'Sem 3', 'KARTHICK RAJA S', 'II-CSE-024', '26504367', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 01:35:56'),
('CSE225', 'yr2', '2nd', 'Sem 3', 'KISHORE AK', 'II-CSE-025', '26504368', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:22:05'),
('CSE226', 'yr2', '2nd', 'Sem 3', 'KUMARAPANDIAN S', 'II-CSE-026', '26504369', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 01:39:40'),
('CSE227', 'yr2', '2nd', 'Sem 3', 'LAKSHANA S', 'II-CSE-027', '26504370', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:19:22'),
('CSE228', 'yr2', '2nd', 'Sem 3', 'MANIVEL V', 'II-CSE-028', '26504371', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:23:24'),
('CSE229', 'yr2', '2nd', 'Sem 3', 'MOHAMED JAVEED KHAN M', 'II-CSE-029', '26504373', '2025-27', '—', 'BCM', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:26:13'),
('CSE230', 'yr2', '2nd', 'Sem 3', 'MUNEES G', 'II-CSE-030', '26504374', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:31:25'),
('CSE231', 'yr2', '2nd', 'Sem 3', 'NANDHA KISHORE S', 'II-CSE-031', '26504376', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:33:02'),
('CSE232', 'yr2', '2nd', 'Sem 3', 'NARESH', 'II-CSE-032', '26504377', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:25:31'),
('CSE233', 'yr2', '2nd', 'Sem 3', 'PUGAZHENDHI G', 'II-CSE-033', '26504378', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:34:55'),
('CSE234', 'yr2', '2nd', 'Sem 3', 'SABARISH KUMAR S', 'II-CSE-034', '26504380', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:26:57'),
('CSE235', 'yr2', '2nd', 'Sem 3', 'SANJAY KRISHNAN U', 'II-CSE-035', '26504381', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:37:31'),
('CSE236', 'yr2', '2nd', 'Sem 3', 'SIVASHANMUGAM S', 'II-CSE-036', '26504382', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:39:20'),
('CSE237', 'yr2', '2nd', 'Sem 3', 'THIRUPPATHY E', 'II-CSE-037', '26504383', '2025-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:29:29'),
('CSE238', 'yr2', '2nd', 'Sem 3', 'UMA MAHESHWARI G', 'II-CSE-038', '26504384', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:43:02'),
('CSE239', 'yr2', '2nd', 'Sem 3', 'VISHNU K', 'II-CSE-039', '26504385', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-08-18 03:30:31'),
('CSE240', 'yr2', '2nd', 'Sem 3', 'NANDHA GOPALAN S', 'II-CSE-040', '25050H040', '2025-27', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:44:55'),
('CSE241', 'yr2', '2nd', 'Sem 3', 'RAMYAKRISHNAN R', 'II-CSE-041', '25050H041', '2025-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-30 10:54:29', '2026-07-30 02:45:28'),
('CSE301', 'yr3', '3rd', 'Sem 5', 'ANITHA S', 'III-CSE-001', '25504786', '2024-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-24 15:39:12', '2026-08-18 03:47:26'),
('CSE302', 'yr3', '3rd', 'Sem 5', 'ANU PRIYA R', 'III-CSE-002', '25504787', '2024-27', '2007-02-08', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-24 15:45:14', '2026-07-24 15:49:33'),
('CSE303', 'yr3', '3rd', 'Sem 5', 'BHUVANESHWARI K', 'III-CSE-003', '25504788', '2024-27', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-24 15:53:50', '2026-07-24 15:55:24'),
('CSE304', 'yr3', '3rd', 'Sem 5', 'DINESH S', 'III-CSE-004', '25504789', '2024-27', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-24 16:05:36', '2026-07-24 16:09:04'),
('CSE305', 'yr3', '3rd', 'Sem 5', 'HARIPRADEEP S', 'III-CSE-005', '25504790', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 11:17:01', '2026-07-29 11:18:36'),
('CSE306', 'yr3', '3rd', 'Sem 5', 'JAI DHANUSH A', 'III-CSE-006', '25504791', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 11:19:20', '2026-07-29 11:24:11'),
('CSE307', 'yr3', '3rd', 'Sem 5', 'KARTHICK K', 'III-CSE-007', '25504793', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 11:30:59', '2026-07-29 11:32:45'),
('CSE308', 'yr3', '3rd', 'Sem 5', 'KISHORE M', 'III-CSE-008', '25504794', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 12:03:19', '2026-07-29 12:04:43'),
('CSE309', 'yr3', '3rd', 'Sem 5', 'MARUTHUPANDI P', 'III-CSE-009', '25504795', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 12:08:37', '2026-07-29 12:10:29'),
('CSE310', 'yr3', '3rd', 'Sem 5', 'MUNEESWARI P', 'III-CSE-010', '25504797', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 12:12:39', '2026-07-29 12:17:57'),
('CSE311', 'yr3', '3rd', 'Sem 5', 'NARESH KUMAR B', 'III-CSE-011', '25504799', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 12:19:02', '2026-07-29 12:29:37'),
('CSE312', 'yr3', '3rd', 'Sem 5', 'NARASIMHAN K', 'III-CSE-012', '25504798', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 12:31:37', '2026-07-29 12:34:07'),
('CSE313', 'yr3', '3rd', 'Sem 5', 'NISHITHA T', 'III-CSE-013', '25504807', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 12:37:34', '2026-07-29 12:44:34'),
('CSE314', 'yr3', '3rd', 'Sem 5', 'NITHISH C', 'III-CSE-014', '25504801', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 12:45:25', '2026-07-29 12:46:51'),
('CSE315', 'yr3', '3rd', 'Sem 5', 'NIVETHA M', 'III-CSE-015', '25504802', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 12:53:28', '2026-07-29 12:55:46'),
('CSE316', 'yr3', '3rd', 'Sem 5', 'PRADEEPA MARY S', 'III-CSE-016', '25504803', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 13:06:14', '2026-07-29 13:07:34'),
('CSE317', 'yr3', '3rd', 'Sem 5', 'PRINCI J', 'III-CSE-017', '25504805', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 13:11:01', '2026-07-29 13:12:18'),
('CSE318', 'yr3', '3rd', 'Sem 5', 'RAHUL K', 'III-CSE-018', '25504806', '2024-26', '2005-06-05', 'SC', 'Hindu', '9750806638', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 14:11:07', '2026-07-29 14:16:50'),
('CSE319', 'yr3', '3rd', 'Sem 5', 'SANTHOSH LADMAN N', 'III-CSE-019', '25504809', '2024-26', '2009-05-21', 'BC', 'Hindu', '9360779540', '9600720230', 'VAIGAI NAGAR,SAMAYANALLUR,MADURAI-625402', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 14:18:48', '2026-07-29 14:21:29'),
('CSE320', 'yr3', '3rd', 'Sem 5', 'SANTHOSH M', 'III-CSE-020', '25504810', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 14:26:10', '2026-07-29 14:28:10'),
('CSE321', 'yr3', '3rd', 'Sem 5', 'SARAVANAN S', 'III-CSE-021', '25504812', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 14:37:21', '2026-07-29 14:40:49'),
('CSE322', 'yr3', '3rd', 'Sem 5', 'SUDHAKAR S', 'III-CSE-022', '25504813', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 14:54:37', '2026-07-29 15:04:34'),
('CSE323', 'yr3', '3rd', 'Sem 5', 'VENKATESH S', 'III-CSE-023', '25504814', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 15:07:38', '2026-07-29 15:11:39'),
('CSE324', 'yr3', '3rd', 'Sem 5', 'VIGHNESHWARAN E', 'III-CSE-024', '25504815', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:13:04', '2026-07-29 15:14:27'),
('CSE325', 'yr3', '3rd', 'Sem 5', 'ABEL RAJA J', 'III-CSE-025', '24050H025', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 15:18:01', '2026-07-29 15:19:12'),
('CSE326', 'yr3', '3rd', 'Sem 5', 'DINESH HARI V', 'III-CSE-026', '24050H026', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:20:11', '2026-07-29 15:21:58'),
('CSE327', 'yr3', '3rd', 'Sem 5', 'GIRI R', 'III-CSE-027', '24050H027', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:24:15', '2026-07-29 15:25:00'),
('CSE328', 'yr3', '3rd', 'Sem 5', 'MADHAN KUMAR A', 'III-CSE-028', '24050H028', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:27:21', '2026-07-29 15:28:39'),
('CSE329', 'yr3', '3rd', 'Sem 5', 'KALAIYARASI P', 'III-CSE-029', '24050H029', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 15:30:55', '2026-07-29 15:34:07'),
('CSE331', 'yr3', '3rd', 'Sem 5', 'MANIKANDAN K', 'III-CSE-031', '24050H031', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 15:36:25', '2026-07-29 15:38:13'),
('CSE332', 'yr3', '3rd', 'Sem 5', 'MUTHULAKSHMI M', 'III-CSE-032', '24050H032', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:38:46', '2026-07-29 15:39:23'),
('CSE333', 'yr3', '3rd', 'Sem 5', 'NITHISH KUMAR N', 'III-CSE-033', '24050H033', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:39:57', '2026-07-29 15:40:45'),
('CSE334', 'yr3', '3rd', 'Sem 5', 'PRAKASH P', 'III-CSE-034', '24050H034', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:41:43', '2026-07-29 15:42:34'),
('CSE335', 'yr3', '3rd', 'Sem 5', 'RAGAVI SRI S', 'III-CSE-035', '24050H035', '2024-26', '—', 'SC', 'Hindu', '—', '—', '—', '—', '0%', 'Paid', 0, NULL, NULL, '2026-07-29 15:44:56', '2026-07-29 15:46:50'),
('CSE336', 'yr3', '3rd', 'Sem 5', 'SANKAR B', 'III-CSE-036', '24050H036', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:47:27', '2026-07-29 15:48:11'),
('CSE337', 'yr3', '3rd', 'Sem 5', 'SARAN KUMAR S', 'III-CSE-037', '24050H037', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:48:57', '2026-07-29 15:49:32'),
('CSE338', 'yr3', '3rd', 'Sem 5', 'SURYAPRAKASH G', 'III-CSE-038', '24050H038', '2024-26', '—', 'MBC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:52:35', '2026-07-29 15:53:17'),
('CSE339', 'yr3', '3rd', 'Sem 5', 'THILSON S', 'III-CSE-039', '24050H039', '2024-26', '—', 'BC', 'Hindu', '—', '—', '—', '—', '0%', 'Partial', 0, NULL, NULL, '2026-07-29 15:55:26', '2026-07-29 15:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `yr_key` varchar(10) NOT NULL,
  `att_year` int(11) NOT NULL,
  `att_month` int(11) NOT NULL,
  `att_day` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `full_name` varchar(150) DEFAULT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`, `full_name`, `staff_id`, `last_login`, `created_at`) VALUES
(1, 'admin', '$2b$10$PG6Qv/W0uxa9Q.NXsyMks.rmPOlvBOKt2jpObe3.jjXXoTE.1zzFK', 'admin', 'Admin', NULL, NULL, NOW());

-- --------------------------------------------------------

--
-- Table structure for table `working_saturdays`
--

CREATE TABLE `working_saturdays` (
  `id` int(11) NOT NULL,
  `s_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_saturdays`
--

INSERT INTO `working_saturdays` (`id`, `s_date`) VALUES
(1, '2026-07-04'),
(2, '2026-07-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `alumni_archive`
--
ALTER TABLE `alumni_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_group` (`group_id`);

--
-- Indexes for table `alumni_certificates`
--
ALTER TABLE `alumni_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `alumni_documents`
--
ALTER TABLE `alumni_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `batch_config`
--
ALTER TABLE `batch_config`
  ADD PRIMARY KEY (`yr_key`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner` (`owner_type`,`owner_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner` (`owner_type`,`owner_id`);

--
-- Indexes for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `fee_summary`
--
ALTER TABLE `fee_summary`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `fee_transactions`
--
ALTER TABLE `fee_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `gate_passes`
--
ALTER TABLE `gate_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_permissions`
--
ALTER TABLE `leave_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_leave` (`stu_id`,`att_year`,`att_month`,`att_day`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_satt` (`staff_id`,`att_year`,`att_month`,`att_day`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `idx_yr` (`yr_key`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_att` (`stu_id`,`att_year`,`att_month`,`att_day`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `working_saturdays`
--
ALTER TABLE `working_saturdays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT for table `alumni_archive`
--
ALTER TABLE `alumni_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_certificates`
--
ALTER TABLE `alumni_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_documents`
--
ALTER TABLE `alumni_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_structure`
--
ALTER TABLE `fee_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `fee_transactions`
--
ALTER TABLE `fee_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `gate_passes`
--
ALTER TABLE `gate_passes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_permissions`
--
ALTER TABLE `leave_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `working_saturdays`
--
ALTER TABLE `working_saturdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni_certificates`
--
ALTER TABLE `alumni_certificates`
  ADD CONSTRAINT `alumni_certificates_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni_archive` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_documents`
--
ALTER TABLE `alumni_documents`
  ADD CONSTRAINT `alumni_documents_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni_archive` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_structure`
--
ALTER TABLE `fee_structure`
  ADD CONSTRAINT `fee_structure_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `students` (`stu_id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_summary`
--
ALTER TABLE `fee_summary`
  ADD CONSTRAINT `fee_summary_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `students` (`stu_id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_transactions`
--
ALTER TABLE `fee_transactions`
  ADD CONSTRAINT `fee_transactions_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `students` (`stu_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
