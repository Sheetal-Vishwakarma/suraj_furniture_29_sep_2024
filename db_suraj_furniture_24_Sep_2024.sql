-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 24, 2024 at 03:18 PM
-- Server version: 10.5.26-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suraj_furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add contactus', 7, 'add_contactus'),
(26, 'Can change contactus', 7, 'change_contactus'),
(27, 'Can delete contactus', 7, 'delete_contactus'),
(28, 'Can view contactus', 7, 'view_contactus'),
(29, 'Can add newsletter', 8, 'add_newsletter'),
(30, 'Can change newsletter', 8, 'change_newsletter'),
(31, 'Can delete newsletter', 8, 'delete_newsletter'),
(32, 'Can view newsletter', 8, 'view_newsletter'),
(33, 'Can add gallery', 9, 'add_gallery'),
(34, 'Can change gallery', 9, 'change_gallery'),
(35, 'Can delete gallery', 9, 'delete_gallery'),
(36, 'Can view gallery', 9, 'view_gallery'),
(37, 'Can add testimonial', 10, 'add_testimonial'),
(38, 'Can change testimonial', 10, 'change_testimonial'),
(39, 'Can delete testimonial', 10, 'delete_testimonial'),
(40, 'Can view testimonial', 10, 'view_testimonial');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$FDa8W4lMLlZgYkyjG8ems9$3SVnBkBXM6/av9b5eeQUJqscqy8OQJUSAtowG5iyXP0=', '2024-09-23 05:44:23.112804', 1, 'sheetal.vishwakarma', '', '', 'sheetalvishwakarma106@gmail.com', 1, 1, '2024-09-23 05:44:16.478526');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-23 05:52:18.738092', '1', 'Gallery object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2024-09-23 05:56:17.942583', '2', 'Gallery object (2)', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-09-23 06:06:09.808867', '3', 'Gallery object (3)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-09-23 06:06:46.881902', '4', 'Gallery object (4)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-09-23 06:07:23.942178', '5', 'Gallery object (5)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-09-23 06:07:58.269155', '6', 'Gallery object (6)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-09-23 06:08:32.040550', '7', 'Gallery object (7)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-09-23 06:09:14.149644', '8', 'Gallery object (8)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-09-23 06:10:21.816220', '6', 'Gallery object (6)', 3, '', 9, 1),
(10, '2024-09-23 06:10:48.571889', '8', 'Gallery object (8)', 2, '[]', 9, 1),
(11, '2024-09-23 06:11:30.121172', '9', 'Gallery object (9)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-09-23 06:16:37.385635', '10', 'Gallery object (10)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2024-09-23 06:17:15.832649', '11', 'Gallery object (11)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2024-09-23 06:18:34.395784', '11', 'Gallery object (11)', 2, '[{\"changed\": {\"fields\": [\"Type\"]}}]', 9, 1),
(15, '2024-09-23 06:19:17.527178', '12', 'Gallery object (12)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2024-09-23 06:19:49.840988', '13', 'Gallery object (13)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-09-23 06:20:12.188497', '14', 'Gallery object (14)', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-09-23 06:20:40.501817', '15', 'Gallery object (15)', 1, '[{\"added\": {}}]', 9, 1),
(19, '2024-09-23 06:21:46.634961', '16', 'Gallery object (16)', 1, '[{\"added\": {}}]', 9, 1),
(20, '2024-09-23 06:22:51.766847', '17', 'Gallery object (17)', 1, '[{\"added\": {}}]', 9, 1),
(21, '2024-09-23 06:23:20.271675', '18', 'Gallery object (18)', 1, '[{\"added\": {}}]', 9, 1),
(22, '2024-09-23 06:24:12.074052', '19', 'Gallery object (19)', 1, '[{\"added\": {}}]', 9, 1),
(23, '2024-09-23 06:24:45.261978', '20', 'Gallery object (20)', 1, '[{\"added\": {}}]', 9, 1),
(24, '2024-09-23 06:25:50.143072', '21', 'Gallery object (21)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-09-23 06:26:16.553467', '22', 'Gallery object (22)', 1, '[{\"added\": {}}]', 9, 1),
(26, '2024-09-23 06:26:57.488088', '23', 'Gallery object (23)', 1, '[{\"added\": {}}]', 9, 1),
(27, '2024-09-24 13:07:41.977814', '1', 'Testimonial object (1)', 1, '[{\"added\": {}}]', 10, 1),
(28, '2024-09-24 13:08:18.773433', '1', 'Testimonial object (1)', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 10, 1),
(29, '2024-09-24 13:08:58.140339', '1', 'Testimonial object (1)', 2, '[{\"changed\": {\"fields\": [\"Profile image\"]}}]', 10, 1),
(30, '2024-09-24 13:09:58.639238', '2', 'Testimonial object (2)', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-09-24 13:11:45.099653', '3', 'Testimonial object (3)', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-09-24 13:17:13.809586', '4', 'Testimonial object (4)', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'contactus'),
(9, 'core', 'gallery'),
(8, 'core', 'newsletter'),
(10, 'core', 'testimonial'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-23 05:40:58.419128'),
(2, 'auth', '0001_initial', '2024-09-23 05:40:58.839135'),
(3, 'admin', '0001_initial', '2024-09-23 05:40:58.960291'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-23 05:40:58.972292'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-23 05:40:58.979618'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-23 05:40:59.043848'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-23 05:40:59.097235'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-23 05:40:59.125343'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-23 05:40:59.131934'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-23 05:40:59.183542'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-23 05:40:59.189944'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-23 05:40:59.206675'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-23 05:40:59.233071'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-23 05:40:59.266032'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-23 05:40:59.282418'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-23 05:40:59.300340'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-23 05:40:59.327300'),
(18, 'core', '0001_initial', '2024-09-23 05:40:59.348223'),
(19, 'core', '0002_newsletter', '2024-09-23 05:40:59.364819'),
(20, 'core', '0003_alter_newsletter_is_subscribed', '2024-09-23 05:40:59.408695'),
(21, 'core', '0004_gallery', '2024-09-23 05:40:59.431046'),
(22, 'core', '0005_gallery_title_alter_gallery_created_at_and_more', '2024-09-23 05:40:59.455886'),
(23, 'core', '0006_testimonial', '2024-09-23 05:40:59.480310'),
(24, 'sessions', '0001_initial', '2024-09-23 05:40:59.523257'),
(25, 'core', '0007_alter_gallery_type', '2024-09-23 05:50:14.878176');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('uqrjr76z18yy1a9upeetcylvopsner5i', '.eJxVjEEOwiAQRe_C2hCgTEGX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERWpx-t4j0SHUHfMd6a5JaXZc5yl2RB-1yapye18P9OyjYy7cGr8gmwIFzVjCckSKN1igGpRxxhJwsGGuyspoG75mcM-z0mLU2wCDeH-ZNN5E:1ssbrz:yt3y2rm4DR0E5C48SzGVaOn8g4lrpAY3AJ1NFCacXQ8', '2024-10-07 05:44:23.112804');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image_name` longtext DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `type`, `image_name`, `status`, `created_at`, `updated_at`, `title`) VALUES
(1, 'Sofa and Bed', 'bed1.jpg', 1, '2024-09-23 05:52:17.000000', NULL, 'Simple Comfy Bed'),
(2, 'Modular Kitchen', 'modular_kitchen1.jpg', 1, '2024-09-23 05:56:16.000000', NULL, 'Modular Kitchen'),
(3, 'Sofa and Bed', 'bed2.jpg', 1, '2024-09-23 06:06:08.000000', NULL, 'King Size Bed'),
(4, 'Sofa and Bed', 'bed3.jpg', 1, '2024-09-23 06:06:44.000000', NULL, 'Wooden textured style'),
(5, 'Sofa and Bed', 'bed4.jpg', 1, '2024-09-23 06:07:10.000000', NULL, 'Multi design'),
(7, 'Sofa and Bed', 'bed6.jpg', 1, '2024-09-23 06:08:30.000000', NULL, 'Hydrolic pump support'),
(8, 'Cupboard', 'cupboard1.jpg', 1, '2024-09-23 06:09:10.000000', NULL, 'Cross pattern'),
(9, 'Cupboard', 'cupboard2.jpg', 1, '2024-09-23 06:11:28.000000', NULL, 'Cupboard'),
(10, 'Cupboard', 'Cupboard-style-wardrobes-1.jpg', 1, '2024-09-23 06:16:35.000000', NULL, 'Cupboard style wardrobes'),
(11, 'Cupboard', 'sliding-doors-mob-cupboard.jpg', 1, '2024-09-23 06:17:14.000000', NULL, 'sliding doors mob cupboard'),
(12, 'Modular Kitchen', 'modular_kitchen_design.jpg', 1, NULL, NULL, 'modular kitchen design'),
(13, 'Modular Kitchen', 'modular_kitchen2.jpg', 1, NULL, NULL, 'Modular Kitchen'),
(14, 'Modular Kitchen', 'modular_kitchen3.jpg', 1, NULL, NULL, 'Modular Kitchen'),
(15, 'Modular Kitchen', 'modular_kitchen4.jpg', 1, '2024-09-23 06:20:39.000000', NULL, 'Modular Kitchen'),
(16, 'Modular Kitchen', 'modular-kitchen-with-teal-and-yellow-colour-combination.jpg', 1, NULL, NULL, 'modular kitchen with teal and yellow colour combination'),
(17, 'Sofa and Bed', 'sofa1.jpg', 1, NULL, NULL, 'Sofa'),
(18, 'Sofa and Bed', 'sofa2.jpg', 1, NULL, NULL, 'Sofa'),
(19, 'Table and Chairs', 'table_chair1.jpg', 1, '2024-09-23 06:24:10.000000', NULL, 'Dining Table'),
(20, 'Sofa and Bed', 'bed5.jpg', 1, NULL, NULL, 'Royal Bed'),
(21, 'Table and Chairs', 'table_chair2.jpg', 1, '2024-09-23 06:25:48.000000', NULL, 'Table and Chairs'),
(22, 'Table and Chairs', 'table_chair3.jpg', 1, '2024-09-23 06:26:15.000000', NULL, 'Table Chair'),
(23, 'Table and Chairs', 'table_chair4.jpg', 1, '2024-09-23 06:26:52.000000', NULL, 'Table and Chair');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_subscribed` varchar(5) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `is_subscribed`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '1', '2024-09-23 18:41:41.344508', '2024-09-23 18:41:41.344508');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `rating` smallint(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0:Inactive, 1:Active',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `profile_image`, `designation`, `rating`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Atul Sharma', 'men_testimonial.png', 'Store Owner', 4, 'We have been purchasing furniture from Suraj Furniture since the last 10 years. We appreciate their prompt service and so far we have faced no complaints with their furniture.', 1, NULL, NULL),
(2, 'Manoj Kumar', 'men_testimonial.png', 'Ceo & Founder', 4, 'Very satisfied with the work. Will work again in the future. Luxurious look and durability.', 1, '2024-09-24 13:09:56.000000', NULL),
(3, 'Hiral Valia', 'female_testimonial.png', 'Co. Director', 4, 'The office furniture is ergonomic in design, it is very comfortable to use for long hours in office. Be it design, comfort or the shopping experience, it ticks all the boxes for us.', 1, '2024-09-24 13:11:43.000000', NULL),
(4, 'Parikshit Pawar', 'men_testimonial.jpg', 'Professor', 4, 'Prompt delivery and great service. Staff at the store and manager are very friendly. I will buy only from Durian in the future', 1, '2024-09-24 13:17:12.000000', NULL);

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
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
