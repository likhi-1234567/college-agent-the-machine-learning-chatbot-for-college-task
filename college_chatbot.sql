-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2023 at 10:16 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_chatbot`
--
CREATE DATABASE IF NOT EXISTS `college_chatbot` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college_chatbot`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

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
(25, 'Can add student model', 7, 'add_studentmodel'),
(26, 'Can change student model', 7, 'change_studentmodel'),
(27, 'Can delete student model', 7, 'delete_studentmodel'),
(28, 'Can view student model', 7, 'view_studentmodel'),
(29, 'Can add feedback model', 8, 'add_feedbackmodel'),
(30, 'Can change feedback model', 8, 'change_feedbackmodel'),
(31, 'Can delete feedback model', 8, 'delete_feedbackmodel'),
(32, 'Can view feedback model', 8, 'view_feedbackmodel'),
(33, 'Can add bot model', 9, 'add_botmodel'),
(34, 'Can change bot model', 9, 'change_botmodel'),
(35, 'Can delete bot model', 9, 'delete_botmodel'),
(36, 'Can view bot model', 9, 'view_botmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bot_interaction`
--

DROP TABLE IF EXISTS `bot_interaction`;
CREATE TABLE IF NOT EXISTS `bot_interaction` (
  `interaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime_interacted` datetime(6) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`interaction_id`),
  KEY `bot_interaction_student_id_fd325c30` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bot_interaction`
--

INSERT INTO `bot_interaction` (`interaction_id`, `datetime_interacted`, `student_id`) VALUES
(1, '2022-12-12 12:33:50.820569', 4),
(2, '2022-12-12 12:47:34.353728', 4),
(3, '2022-12-12 13:03:48.371504', 4),
(4, '2022-12-13 04:59:31.420372', 4),
(5, '2022-12-13 07:33:38.695850', 7),
(6, '2022-12-13 07:45:05.634963', 4),
(7, '2022-12-13 07:46:37.212206', 4),
(8, '2022-12-13 07:57:14.142924', 4),
(9, '2022-12-13 07:58:09.616438', 4),
(10, '2023-11-01 21:29:55.404208', 9),
(11, '2023-11-01 21:50:16.176187', 10),
(12, '2023-11-01 22:11:23.344195', 10);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
(7, 'adminapp', 'studentmodel'),
(8, 'userapp', 'feedbackmodel'),
(9, 'userapp', 'botmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-06 09:11:33.250124'),
(2, 'auth', '0001_initial', '2022-12-06 09:11:38.390829'),
(3, 'admin', '0001_initial', '2022-12-06 09:11:39.522788'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-06 09:11:39.619760'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-06 09:11:39.641758'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-06 09:11:40.473710'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-06 09:11:40.730695'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-06 09:11:41.047678'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-06 09:11:41.166671'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-06 09:11:41.413656'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-06 09:11:41.517650'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-06 09:11:41.734638'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-06 09:11:42.298605'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-06 09:11:42.647585'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-06 09:11:43.070562'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-06 09:11:43.156557'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-06 09:11:43.530534'),
(18, 'sessions', '0001_initial', '2022-12-06 09:11:44.072503'),
(19, 'adminapp', '0001_initial', '2022-12-08 06:10:10.716670'),
(20, 'adminapp', '0002_alter_studentmodel_student_year', '2022-12-08 06:16:41.099604'),
(21, 'adminapp', '0003_alter_studentmodel_student_password', '2022-12-08 06:28:21.786643'),
(22, 'userapp', '0001_initial', '2022-12-08 08:07:11.703809'),
(23, 'userapp', '0002_botmodel', '2022-12-12 12:29:41.734088');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gvi069asl52jt4tdlxxn7j4c8b9za9e1', 'eyJzdHVkZW50X2lkIjo0fQ:1p3Bl9:vlj5F9fANCVamDvVkGjwG3rdKhW2qicHTdVDS7zgwwo', '2022-12-22 07:55:59.109861'),
('j4scuyf31ne8s8odehis2j9jp7pbq26g', 'eyJzdHVkZW50X2lkIjo3fQ:1p50h7:czd0SUpJ9zvjLiL5hYzsCD_c6WpG83WLt7hIyJeD2gA', '2022-12-27 08:31:21.313759'),
('hj6mx64t58mjs8z3sqtrws3qc516eiap', 'eyJzdHVkZW50X2lkIjoxMH0:1qyJQf:NJ7FDrq9t20zL6gDjDYyqUwXOIWPcgwVc3F1JaCUMxI', '2023-11-15 22:11:13.869168');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
CREATE TABLE IF NOT EXISTS `student_details` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `college_id` varchar(100) NOT NULL,
  `student_branch` varchar(50) NOT NULL,
  `student_year` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_contact` bigint(20) NOT NULL,
  `student_city` varchar(50) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_photo` varchar(100) NOT NULL,
  `datetime_created` datetime(6) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `student_name`, `college_id`, `student_branch`, `student_year`, `student_email`, `student_contact`, `student_city`, `student_password`, `student_photo`, `datetime_created`) VALUES
(4, 'Mohd hashwar', '17q91a05f0', 'CSE', '4th', 'mohd.hashwar552@gmail.com', 7878787876, 'hyderabad', '1234', 'media/testimonial-2.jpg', '2022-12-08 12:24:30.243985'),
(5, 'Mohd ahmed', '17q91a05f1', 'MECH', '2nd', 'mohd.hashwar5522@gmail.com', 7878787877, 'hyderabad', 'TL71ilhD', 'media/team-1.jpg', '2022-12-09 17:35:24.941570'),
(6, 'asdasda', '17q91a05f6', 'MECH', '2nd', 'mohd.hashwar55211@gmail.com', 7878787876, 'asdasdasdasd', 'BqYto0oB', 'media/carousel-1.jpg', '2022-12-12 17:38:36.907210'),
(7, 'shivaji v', '8055', 'CSE', '4th', 'venkatashivaji979@gmail.com', 8686238308, 'Hyderabad', 'HhzS6GuN', 'media/team-3.jpg', '2022-12-13 12:52:12.616235'),
(9, 'asdasd', '17q91a05f8', 'MECH', '2nd', 'mohd.hashwar5521@gmail.com', 7878787876, 'hyderabad', 'G4DFwzeh', 'media/carousel-2_fARZfIK.jpg', '2022-12-13 14:15:47.139957'),
(10, 'fazal', '1212', 'CSE', '4th', 'fazalsirmail@gmail.com', 8555887986, 'Hyderabad', 'q6eyYgIM', 'media/face9.jpg', '2023-11-02 03:18:38.067305');

-- --------------------------------------------------------

--
-- Table structure for table `student_feedbacks`
--

DROP TABLE IF EXISTS `student_feedbacks`;
CREATE TABLE IF NOT EXISTS `student_feedbacks` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `sentiment` varchar(50) DEFAULT NULL,
  `datetime_reviewed` datetime(6) NOT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `student_feedbacks_reviewer_id_b1f67c73` (`reviewer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_feedbacks`
--

INSERT INTO `student_feedbacks` (`feedback_id`, `review`, `rating`, `sentiment`, `datetime_reviewed`, `reviewer_id`) VALUES
(1, 'not bad but still can improve a little', 3, 'positive', '2023-10-08 08:08:00.773627', 4),
(2, 'the bot ui is not that good', 4, 'negative', '2023-10-09 12:08:42.688061', 5),
(3, 'asdasd', 3, 'neutral', '2023-10-12 11:55:13.642308', 4),
(4, 'very nice service', 5, 'positive', '2023-11-01 21:57:45.676782', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
