-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2023 at 03:19 AM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atstlbzy_brigade`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add banner', 7, 'add_banner'),
(26, 'Can change banner', 7, 'change_banner'),
(27, 'Can delete banner', 7, 'delete_banner'),
(28, 'Can view banner', 7, 'view_banner'),
(29, 'Can add enquire_now', 8, 'add_enquire_now'),
(30, 'Can change enquire_now', 8, 'change_enquire_now'),
(31, 'Can delete enquire_now', 8, 'delete_enquire_now'),
(32, 'Can view enquire_now', 8, 'view_enquire_now'),
(33, 'Can add introduction', 9, 'add_introduction'),
(34, 'Can change introduction', 9, 'change_introduction'),
(35, 'Can delete introduction', 9, 'delete_introduction'),
(36, 'Can view introduction', 9, 'view_introduction'),
(37, 'Can add brochure', 10, 'add_brochure'),
(38, 'Can change brochure', 10, 'change_brochure'),
(39, 'Can delete brochure', 10, 'delete_brochure'),
(40, 'Can view brochure', 10, 'view_brochure'),
(41, 'Can add logo', 11, 'add_logo'),
(42, 'Can change logo', 11, 'change_logo'),
(43, 'Can delete logo', 11, 'delete_logo'),
(44, 'Can view logo', 11, 'view_logo'),
(45, 'Can add overview', 12, 'add_overview'),
(46, 'Can change overview', 12, 'change_overview'),
(47, 'Can delete overview', 12, 'delete_overview'),
(48, 'Can view overview', 12, 'view_overview'),
(49, 'Can add configuration', 13, 'add_configuration'),
(50, 'Can change configuration', 13, 'change_configuration'),
(51, 'Can delete configuration', 13, 'delete_configuration'),
(52, 'Can view configuration', 13, 'view_configuration'),
(53, 'Can add gallery', 14, 'add_gallery'),
(54, 'Can change gallery', 14, 'change_gallery'),
(55, 'Can delete gallery', 14, 'delete_gallery'),
(56, 'Can view gallery', 14, 'view_gallery'),
(57, 'Can add amenities', 15, 'add_amenities'),
(58, 'Can change amenities', 15, 'change_amenities'),
(59, 'Can delete amenities', 15, 'delete_amenities'),
(60, 'Can view amenities', 15, 'view_amenities'),
(61, 'Can add walkthrough', 16, 'add_walkthrough'),
(62, 'Can change walkthrough', 16, 'change_walkthrough'),
(63, 'Can delete walkthrough', 16, 'delete_walkthrough'),
(64, 'Can view walkthrough', 16, 'view_walkthrough'),
(65, 'Can add know_your_locality', 17, 'add_know_your_locality'),
(66, 'Can change know_your_locality', 17, 'change_know_your_locality'),
(67, 'Can delete know_your_locality', 17, 'delete_know_your_locality'),
(68, 'Can view know_your_locality', 17, 'view_know_your_locality'),
(69, 'Can add locality_map', 18, 'add_locality_map'),
(70, 'Can change locality_map', 18, 'change_locality_map'),
(71, 'Can delete locality_map', 18, 'delete_locality_map'),
(72, 'Can view locality_map', 18, 'view_locality_map'),
(73, 'Can add registration', 19, 'add_registration'),
(74, 'Can change registration', 19, 'change_registration'),
(75, 'Can delete registration', 19, 'delete_registration'),
(76, 'Can view registration', 19, 'view_registration');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$SQJkbqfv2f8ONz2ZDE2BOy$H5ni8NPlmXQWVy5Wju1CV7M+6CzAEoMIWRtCOkakY3k=', '2023-06-23 06:53:48.787604', 1, 'admin', '', '', 'admin@dotbotics.io', 1, 1, '2023-06-23 06:25:10.945610');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_amenities`
--

CREATE TABLE `Brigadeapp_amenities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_amenities`
--

INSERT INTO `Brigadeapp_amenities` (`id`, `name`, `image`) VALUES
(1, 'Banquet', 'amenities_images/gym.png'),
(2, 'Yoga', 'amenities_images/yoga.png'),
(3, 'Fitness Centre', 'amenities_images/gym_nDrwupJ.png'),
(4, 'Reflexology Area', 'amenities_images/inside.png'),
(5, 'Badminton Court', 'amenities_images/badminton.png'),
(6, 'Jacuzzi', 'amenities_images/store.png');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_banner`
--

CREATE TABLE `Brigadeapp_banner` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_banner`
--

INSERT INTO `Brigadeapp_banner` (`id`, `image`) VALUES
(1, 'WhatsApp_Image_2023-06-08_at_12-compressed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_brochure`
--

CREATE TABLE `Brigadeapp_brochure` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_brochure`
--

INSERT INTO `Brigadeapp_brochure` (`id`, `title`, `content`, `image`) VALUES
(1, 'Masterplan of Sobha Water Front', 'Don’t hesitate to download the brochure to know more details of this project.', '5-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_configuration`
--

CREATE TABLE `Brigadeapp_configuration` (
  `id` bigint(20) NOT NULL,
  `text` longtext NOT NULL,
  `title` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_configuration`
--

INSERT INTO `Brigadeapp_configuration` (`id`, `text`, `title`) VALUES
(1, '1948-2188', '3BHK'),
(2, '2690-2885', '3.5BHK'),
(3, '3045-3278', '4BHK');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_enquire_now`
--

CREATE TABLE `Brigadeapp_enquire_now` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `Mobile_number` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_enquire_now`
--

INSERT INTO `Brigadeapp_enquire_now` (`id`, `first_name`, `Last_name`, `Mobile_number`, `email`, `enquiry_type`) VALUES
(1, 'suraj', 'kumar', '9999999999', 'suraj@gmail.com', 'download-brochure'),
(2, 'suraj', 'kumar', '9898989898', 'suraj@gmail.com', 'Enquire_Now'),
(3, 'suraj', 'kumar', '9898989898', 'suraj@gmail.com', 'contact_details'),
(4, 'suraj', 'kumar', '9090909090', 'suraj@gmail.com', 'Enquire_Now'),
(5, 'suraj', 'kumar', '9090909090', 'suraj@gmail.com', 'pricing_details'),
(6, 'suraj', 'kumar', '9090909090', 'suraj@gmail.com', 'download-brochure'),
(7, 'suraj', 'kumar', '9898989898', 'suraj@gmail.com', 'Enquire_Now'),
(8, 'suraj', 'kumar', '9898989898', 'suraj@gmail.com', 'pricing_details');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_gallery`
--

CREATE TABLE `Brigadeapp_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_gallery`
--

INSERT INTO `Brigadeapp_gallery` (`id`, `name`, `image`) VALUES
(1, 'Artistic Images', 'gallery_images/2-01.jpg'),
(2, 'Artistic Images', 'gallery_images/3-01.jpg'),
(3, 'Artistic Images', 'gallery_images/4-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_introduction`
--

CREATE TABLE `Brigadeapp_introduction` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `text` longtext NOT NULL,
  `address` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_introduction`
--

INSERT INTO `Brigadeapp_introduction` (`id`, `title`, `text`, `address`) VALUES
(1, 'Sobha Water Front', 'Introducing Luxurious Premium 3, 3.5 & 4 BHK Homes', 'AT SOMAJIGUDA, HYDERABAD');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_know_your_locality`
--

CREATE TABLE `Brigadeapp_know_your_locality` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_know_your_locality`
--

INSERT INTO `Brigadeapp_know_your_locality` (`id`, `title`, `image`, `discription`) VALUES
(1, '300M', 'locality_images/store.png', 'Park Hotel'),
(2, '33KMS', 'locality_images/subway.png', 'International Airport'),
(3, '5KMS', 'locality_images/city-railway.png', 'Railway Station'),
(4, '7KMS', 'locality_images/subway_5JrMO72.png', 'Bus Station'),
(5, '4KMS', 'locality_images/school.png', 'Schools'),
(6, '2KMS', 'locality_images/hospita.png', 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_locality_map`
--

CREATE TABLE `Brigadeapp_locality_map` (
  `id` bigint(20) NOT NULL,
  `location` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_locality_map`
--

INSERT INTO `Brigadeapp_locality_map` (`id`, `location`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.6780126263643!2d78.45728407502949!3d17.427233301656273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb91de5e377923%3A0x944722f4a2607ded!2sSOBHA%20Waterfront!5e0!3m2!1sen!2sin!4v1687504021100!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_logo`
--

CREATE TABLE `Brigadeapp_logo` (
  `id` bigint(20) NOT NULL,
  `main_logo` varchar(100) NOT NULL,
  `secondary_logo` varchar(100) NOT NULL,
  `third_logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_logo`
--

INSERT INTO `Brigadeapp_logo` (`id`, `main_logo`, `secondary_logo`, `third_logo`) VALUES
(1, 'logo_images/WhatsApp_Image_2023-06-08_at_11.48.19_AM_0lEWebR.jpeg', 'logo_images/WhatsApp_Image_2023-06-08_at_11.48.19_AM_ur9LFdp.jpeg', 'logo_images/WhatsApp_Image_2023-06-08_at_11.48.19_AM_tY1Nd4X.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_overview`
--

CREATE TABLE `Brigadeapp_overview` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `png_image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_overview`
--

INSERT INTO `Brigadeapp_overview` (`id`, `title`, `content`, `png_image`) VALUES
(1, 'About Sobha Water Front', 'Sobha Water Front Hyderabad, Gated community Luxury Smart Homes by Sobha Limited, nestled in the lush green location. A wonderful enclave of exclusive homes. The perfect address for those who wish to beat the daily commute to work and yet be insulated from the bustle of urban life.', 'overview_images/1-01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_registration`
--

CREATE TABLE `Brigadeapp_registration` (
  `id` bigint(20) NOT NULL,
  `discription` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_registration`
--

INSERT INTO `Brigadeapp_registration` (`id`, `discription`) VALUES
(1, 'Ph-I TS RERA Registration No. P02200002237'),
(2, 'Ph-II TS RERA Registration No. P02200002392'),
(3, 'Ph-III TS RERA Registration No. P02200002548'),
(4, 'Ph-IV TS RERA Registration No. P02200004085');

-- --------------------------------------------------------

--
-- Table structure for table `Brigadeapp_walkthrough`
--

CREATE TABLE `Brigadeapp_walkthrough` (
  `id` bigint(20) NOT NULL,
  `video` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Brigadeapp_walkthrough`
--

INSERT INTO `Brigadeapp_walkthrough` (`id`, `video`) VALUES
(1, 'https://www.youtube.com/embed/nlaGXqUQ6-A');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-23 06:28:35.479975', '1', 'locality_map', 1, '[{\"added\": {}}]', 18, 1),
(2, '2023-06-23 06:55:15.674403', '1', 'Sobha Water Front', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-23 07:02:17.897414', '1', '3BHK', 1, '[{\"added\": {}}]', 13, 1),
(4, '2023-06-23 07:02:36.544303', '2', '3.5BHK', 1, '[{\"added\": {}}]', 13, 1),
(5, '2023-06-23 07:02:50.700530', '3', '4BHK', 1, '[{\"added\": {}}]', 13, 1),
(6, '2023-06-23 07:04:48.517364', '1', 'banner', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-06-23 07:07:57.239965', '1', 'locality_map', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 18, 1),
(8, '2023-06-23 07:11:04.355397', '1', 'Walkthrough', 1, '[{\"added\": {}}]', 16, 1),
(9, '2023-06-23 07:11:40.332594', '1', 'Registration', 1, '[{\"added\": {}}]', 19, 1),
(10, '2023-06-23 07:11:52.992285', '2', 'Registration', 1, '[{\"added\": {}}]', 19, 1),
(11, '2023-06-23 07:12:03.504497', '3', 'Registration', 1, '[{\"added\": {}}]', 19, 1),
(12, '2023-06-23 07:12:15.615317', '4', 'Registration', 1, '[{\"added\": {}}]', 19, 1),
(13, '2023-06-23 07:15:03.321467', '1', 'Logo', 1, '[{\"added\": {}}]', 11, 1),
(14, '2023-06-23 07:16:13.558193', '1', 'Logo', 2, '[]', 11, 1),
(15, '2023-06-23 07:17:38.948622', '1', 'Banquet', 1, '[{\"added\": {}}]', 15, 1),
(16, '2023-06-23 07:18:09.918872', '2', 'Yoga', 1, '[{\"added\": {}}]', 15, 1),
(17, '2023-06-23 07:18:53.269680', '3', 'Fitness Centre', 1, '[{\"added\": {}}]', 15, 1),
(18, '2023-06-23 07:19:09.616986', '4', 'Reflexology Area', 1, '[{\"added\": {}}]', 15, 1),
(19, '2023-06-23 07:19:26.571623', '5', 'Badminton Court', 1, '[{\"added\": {}}]', 15, 1),
(20, '2023-06-23 07:19:43.687892', '6', 'Jacuzzi', 1, '[{\"added\": {}}]', 15, 1),
(21, '2023-06-23 07:21:56.001412', '1', '300M', 1, '[{\"added\": {}}]', 17, 1),
(22, '2023-06-23 07:23:24.245632', '2', '33KMS', 1, '[{\"added\": {}}]', 17, 1),
(23, '2023-06-23 07:23:39.993650', '3', '5KMS', 1, '[{\"added\": {}}]', 17, 1),
(24, '2023-06-23 07:24:17.470243', '4', '7KMS', 1, '[{\"added\": {}}]', 17, 1),
(25, '2023-06-23 07:33:09.222776', '1', 'Artistic Images', 1, '[{\"added\": {}}]', 14, 1),
(26, '2023-06-23 07:33:29.056401', '2', 'Artistic Images', 1, '[{\"added\": {}}]', 14, 1),
(27, '2023-06-23 07:33:46.027906', '3', 'Artistic Images', 1, '[{\"added\": {}}]', 14, 1),
(28, '2023-06-23 07:34:28.385300', '1', 'About Sobha Water Front', 1, '[{\"added\": {}}]', 12, 1),
(29, '2023-06-23 07:35:51.751843', '5', '4KMS', 1, '[{\"added\": {}}]', 17, 1),
(30, '2023-06-23 07:36:16.071610', '6', '2KMS', 1, '[{\"added\": {}}]', 17, 1),
(31, '2023-06-23 07:43:19.739565', '1', 'Masterplan of Sobha Water Front', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Brigadeapp', 'banner'),
(8, 'Brigadeapp', 'enquire_now'),
(9, 'Brigadeapp', 'introduction'),
(10, 'Brigadeapp', 'brochure'),
(11, 'Brigadeapp', 'logo'),
(12, 'Brigadeapp', 'overview'),
(13, 'Brigadeapp', 'configuration'),
(14, 'Brigadeapp', 'gallery'),
(15, 'Brigadeapp', 'amenities'),
(16, 'Brigadeapp', 'walkthrough'),
(17, 'Brigadeapp', 'know_your_locality'),
(18, 'Brigadeapp', 'locality_map'),
(19, 'Brigadeapp', 'registration');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Brigadeapp', '0001_initial', '2023-06-16 10:06:17.122239'),
(2, 'Brigadeapp', '0002_amenities_configuration_gallery_overview_walkthrough', '2023-06-16 10:06:17.181503'),
(3, 'Brigadeapp', '0003_overview_image_alter_overview_content', '2023-06-16 10:06:17.206306'),
(4, 'Brigadeapp', '0004_alter_overview_content', '2023-06-16 10:06:17.211955'),
(5, 'Brigadeapp', '0005_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.216317'),
(6, 'Brigadeapp', '0006_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.220289'),
(7, 'Brigadeapp', '0007_know_your_locality_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.241110'),
(8, 'Brigadeapp', '0008_enquire_now_enquiry_type', '2023-06-16 10:06:17.258752'),
(9, 'Brigadeapp', '0009_alter_know_your_locality_image', '2023-06-16 10:06:17.262724'),
(10, 'Brigadeapp', '0010_alter_walkthrough_video', '2023-06-16 10:06:17.278926'),
(11, 'Brigadeapp', '0011_locality_map', '2023-06-16 10:06:17.290067'),
(12, 'Brigadeapp', '0012_remove_gallery_images_remove_overview_image_and_more', '2023-06-16 10:06:17.425422'),
(13, 'Brigadeapp', '0013_alter_amenities_images', '2023-06-16 10:06:17.432871'),
(14, 'Brigadeapp', '0014_rename_images_amenities_image', '2023-06-16 10:06:17.443965'),
(15, 'Brigadeapp', '0015_logos', '2023-06-16 10:06:17.453660'),
(16, 'Brigadeapp', '0016_rename_logos_logo', '2023-06-16 10:06:17.460234'),
(17, 'Brigadeapp', '0017_amenities_header_delete_amenities_and_more', '2023-06-16 10:06:17.485779'),
(18, 'Brigadeapp', '0018_amenities_delete_amenities_header', '2023-06-16 10:06:17.523681'),
(19, 'Brigadeapp', '0019_configuration', '2023-06-16 10:06:17.538149'),
(20, 'Brigadeapp', '0020_rename_number_of_bedrooms_configuration_text_and_more', '2023-06-16 10:06:17.569959'),
(21, 'Brigadeapp', '0021_configuration1', '2023-06-16 10:06:17.580680'),
(22, 'Brigadeapp', '0022_banner', '2023-06-16 10:06:17.595547'),
(23, 'Brigadeapp', '0023_introduction', '2023-06-16 10:06:17.611446'),
(24, 'Brigadeapp', '0024_alter_introduction_text', '2023-06-16 10:06:17.615851'),
(25, 'Brigadeapp', '0025_brochure', '2023-06-16 10:06:17.631804'),
(26, 'Brigadeapp', '0026_alter_banner_image', '2023-06-16 10:06:17.638398'),
(27, 'Brigadeapp', '0027_logo_third_logo', '2023-06-16 10:06:17.662412'),
(28, 'Brigadeapp', '0028_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.668123'),
(29, 'Brigadeapp', '0029_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.688618'),
(30, 'Brigadeapp', '0030_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.692820'),
(31, 'Brigadeapp', '0031_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.706114'),
(32, 'Brigadeapp', '0032_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.751280'),
(33, 'Brigadeapp', '0033_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.756778'),
(34, 'Brigadeapp', '0034_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.769757'),
(35, 'Brigadeapp', '0035_alter_enquire_now_mobile_number', '2023-06-16 10:06:17.790255'),
(36, 'Brigadeapp', '0036_alter_enquire_now_last_name_alter_enquire_now_email_and_more', '2023-06-16 10:06:17.870737'),
(37, 'Brigadeapp', '0037_registration', '2023-06-16 10:06:17.880796'),
(38, 'Brigadeapp', '0038_rename_phase1_registration_discription_and_more', '2023-06-16 10:06:17.906950'),
(39, 'Brigadeapp', '0039_remove_overview_webp_image', '2023-06-16 10:06:17.959174'),
(40, 'Brigadeapp', '0040_alter_overview_title', '2023-06-16 10:06:17.972886'),
(41, 'Brigadeapp', '0041_delete_configuration1', '2023-06-16 10:06:17.977643'),
(42, 'contenttypes', '0001_initial', '2023-06-16 10:06:18.001224'),
(43, 'auth', '0001_initial', '2023-06-16 10:06:18.479354'),
(44, 'admin', '0001_initial', '2023-06-16 10:06:18.719503'),
(45, 'admin', '0002_logentry_remove_auto_add', '2023-06-16 10:06:18.736671'),
(46, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-16 10:06:18.751156'),
(47, 'contenttypes', '0002_remove_content_type_name', '2023-06-16 10:06:18.842113'),
(48, 'auth', '0002_alter_permission_name_max_length', '2023-06-16 10:06:18.871442'),
(49, 'auth', '0003_alter_user_email_max_length', '2023-06-16 10:06:18.900954'),
(50, 'auth', '0004_alter_user_username_opts', '2023-06-16 10:06:18.915340'),
(51, 'auth', '0005_alter_user_last_login_null', '2023-06-16 10:06:18.963867'),
(52, 'auth', '0006_require_contenttypes_0002', '2023-06-16 10:06:18.968159'),
(53, 'auth', '0007_alter_validators_add_error_messages', '2023-06-16 10:06:18.995238'),
(54, 'auth', '0008_alter_user_username_max_length', '2023-06-16 10:06:19.020557'),
(55, 'auth', '0009_alter_user_last_name_max_length', '2023-06-16 10:06:19.048423'),
(56, 'auth', '0010_alter_group_name_max_length', '2023-06-16 10:06:19.073780'),
(57, 'auth', '0011_update_proxy_permissions', '2023-06-16 10:06:19.098633'),
(58, 'auth', '0012_alter_user_first_name_max_length', '2023-06-16 10:06:19.123903'),
(59, 'sessions', '0001_initial', '2023-06-16 10:06:19.154892');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r443da27r6u3dzi23pwx92pawp0nt90t', '.eJxVjMsOwiAQRf-FtSHyCAMu3fsNZJgBqRpISrsy_rtt0oVu7znnvkXEdalxHXmOE4uLUOL0uyWkZ2474Ae2e5fU2zJPSe6KPOiQt875dT3cv4OKo251MC6gUcgKLZ2zVhCMR1dCsVaDB2bIZKxjShZK3iiSBgJIzhTtg_h8Adk2N8I:1qCaHD:MPc0ktcMNbBh0hmoriF_SHRUDU4izbNjy89_UAb7f50', '2023-07-07 06:28:11.043696'),
('mzdnwx2qy3vu4rohk74jvwvsq85byy32', '.eJxVjMsOwiAQRf-FtSHyCAMu3fsNZJgBqRpISrsy_rtt0oVu7znnvkXEdalxHXmOE4uLUOL0uyWkZ2474Ae2e5fU2zJPSe6KPOiQt875dT3cv4OKo251MC6gUcgKLZ2zVhCMR1dCsVaDB2bIZKxjShZK3iiSBgJIzhTtg_h8Adk2N8I:1qCag0:WISzlBiDJS2Acn3pGEhwz9VJ9R-EMdyGLuZeQltk3DM', '2023-07-07 06:53:48.789856');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `Brigadeapp_amenities`
--
ALTER TABLE `Brigadeapp_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_banner`
--
ALTER TABLE `Brigadeapp_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_brochure`
--
ALTER TABLE `Brigadeapp_brochure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_configuration`
--
ALTER TABLE `Brigadeapp_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_enquire_now`
--
ALTER TABLE `Brigadeapp_enquire_now`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_gallery`
--
ALTER TABLE `Brigadeapp_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_introduction`
--
ALTER TABLE `Brigadeapp_introduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_know_your_locality`
--
ALTER TABLE `Brigadeapp_know_your_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_locality_map`
--
ALTER TABLE `Brigadeapp_locality_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_logo`
--
ALTER TABLE `Brigadeapp_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_overview`
--
ALTER TABLE `Brigadeapp_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_registration`
--
ALTER TABLE `Brigadeapp_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Brigadeapp_walkthrough`
--
ALTER TABLE `Brigadeapp_walkthrough`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Brigadeapp_amenities`
--
ALTER TABLE `Brigadeapp_amenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Brigadeapp_banner`
--
ALTER TABLE `Brigadeapp_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_brochure`
--
ALTER TABLE `Brigadeapp_brochure`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_configuration`
--
ALTER TABLE `Brigadeapp_configuration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Brigadeapp_enquire_now`
--
ALTER TABLE `Brigadeapp_enquire_now`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Brigadeapp_gallery`
--
ALTER TABLE `Brigadeapp_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Brigadeapp_introduction`
--
ALTER TABLE `Brigadeapp_introduction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_know_your_locality`
--
ALTER TABLE `Brigadeapp_know_your_locality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Brigadeapp_locality_map`
--
ALTER TABLE `Brigadeapp_locality_map`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_logo`
--
ALTER TABLE `Brigadeapp_logo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_overview`
--
ALTER TABLE `Brigadeapp_overview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Brigadeapp_registration`
--
ALTER TABLE `Brigadeapp_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Brigadeapp_walkthrough`
--
ALTER TABLE `Brigadeapp_walkthrough`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
