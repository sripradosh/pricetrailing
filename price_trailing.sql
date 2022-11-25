-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2020 at 03:27 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `price_trailing`
--
CREATE DATABASE IF NOT EXISTS `price_trailing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `price_trailing`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add buyer_register', 7, 'add_buyer_register'),
(20, 'Can change buyer_register', 7, 'change_buyer_register'),
(21, 'Can delete buyer_register', 7, 'delete_buyer_register'),
(22, 'Can add buyer_reg', 7, 'add_buyer_reg'),
(23, 'Can change buyer_reg', 7, 'change_buyer_reg'),
(24, 'Can delete buyer_reg', 7, 'delete_buyer_reg'),
(25, 'Can add seller_reg', 8, 'add_seller_reg'),
(26, 'Can change seller_reg', 8, 'change_seller_reg'),
(27, 'Can delete seller_reg', 8, 'delete_seller_reg'),
(28, 'Can add property_upload', 9, 'add_property_upload'),
(29, 'Can change property_upload', 9, 'change_property_upload'),
(30, 'Can delete property_upload', 9, 'delete_property_upload'),
(31, 'Can add upload_proof1', 10, 'add_upload_proof1'),
(32, 'Can change upload_proof1', 10, 'change_upload_proof1'),
(33, 'Can delete upload_proof1', 10, 'delete_upload_proof1'),
(34, 'Can add family_details', 11, 'add_family_details'),
(35, 'Can change family_details', 11, 'change_family_details'),
(36, 'Can delete family_details', 11, 'delete_family_details'),
(37, 'Can add family_details1', 11, 'add_family_details1'),
(38, 'Can change family_details1', 11, 'change_family_details1'),
(39, 'Can delete family_details1', 11, 'delete_family_details1'),
(40, 'Can add payment', 12, 'add_payment'),
(41, 'Can change payment', 12, 'change_payment'),
(42, 'Can delete payment', 12, 'delete_payment'),
(43, 'Can add payment1', 12, 'add_payment1'),
(44, 'Can change payment1', 12, 'change_payment1'),
(45, 'Can delete payment1', 12, 'delete_payment1');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_buyer_reg`
--

CREATE TABLE IF NOT EXISTS `buyer_buyer_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `uname` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `buyer_buyer_reg`
--

INSERT INTO `buyer_buyer_reg` (`id`, `name`, `email`, `mobile`, `uname`, `password`) VALUES
(1, 'ramya', 'ramya@gmail.com', 8978787878, 'ramya', 'ramya'),
(2, 'sabari', 'sabari@gmail.com', 9878676767, 'sabari', 'sabari');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_payment1`
--

CREATE TABLE IF NOT EXISTS `buyer_payment1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellerid` varchar(300) NOT NULL,
  `sellername` varchar(200) NOT NULL,
  `buyerid` varchar(200) NOT NULL,
  `buyername` varchar(300) NOT NULL,
  `pro_id` varchar(200) NOT NULL,
  `pr_size` varchar(200) NOT NULL,
  `pr_price` varchar(200) NOT NULL,
  `card_number` varchar(200) NOT NULL,
  `validity` varchar(200) NOT NULL,
  `cvv` varchar(200) NOT NULL,
  `holder_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `buyer_payment1`
--

INSERT INTO `buyer_payment1` (`id`, `sellerid`, `sellername`, `buyerid`, `buyername`, `pro_id`, `pr_size`, `pr_price`, `card_number`, `validity`, `cvv`, `holder_name`) VALUES
(1, '1', 'bhuvana', '1', 'ramya', '2', '1000', '0', '8767565656565', '20-09-2019', '786', 'ramya'),
(2, '4', 'lakshmana', '2', 'sabari', '15', '1000', '210000', '78675656568767', '20-04-2025', '786', 'sabari');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'buyer', 'buyer_reg'),
(12, 'buyer', 'payment1'),
(5, 'contenttypes', 'contenttype'),
(11, 'seller', 'family_details1'),
(9, 'seller', 'property_upload'),
(8, 'seller', 'seller_reg'),
(10, 'seller', 'upload_proof1'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-20 10:14:46.740806'),
(2, 'auth', '0001_initial', '2020-11-20 10:15:35.728608'),
(3, 'admin', '0001_initial', '2020-11-20 10:15:39.114801'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-20 10:15:39.184805'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-11-20 10:15:41.157918'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-11-20 10:15:42.749009'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-11-20 10:15:43.759067'),
(8, 'auth', '0004_alter_user_username_opts', '2020-11-20 10:15:43.856073'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-11-20 10:15:46.209207'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-11-20 10:15:46.260210'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-11-20 10:15:46.338215'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-11-20 10:15:47.317271'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-11-20 10:15:48.502338'),
(14, 'buyer', '0001_initial', '2020-11-20 10:15:49.047370'),
(15, 'sessions', '0001_initial', '2020-11-20 10:15:50.663462'),
(16, 'buyer', '0002_auto_20201120_1625', '2020-11-20 10:56:03.664478'),
(17, 'seller', '0001_initial', '2020-11-20 11:24:22.105623'),
(18, 'seller', '0002_property_upload', '2020-11-26 10:58:05.688888'),
(19, 'seller', '0003_upload_proof1', '2020-12-01 05:10:28.918381'),
(20, 'seller', '0004_auto_20201201_1559', '2020-12-01 10:29:21.255688'),
(21, 'seller', '0005_auto_20201202_1923', '2020-12-02 13:54:11.225317'),
(22, 'seller', '0006_auto_20201203_1052', '2020-12-03 05:22:48.912576'),
(23, 'seller', '0007_auto_20201203_1109', '2020-12-03 05:39:40.544438'),
(24, 'seller', '0008_family_details1_sellerid', '2020-12-03 08:06:32.345444'),
(25, 'buyer', '0003_payment', '2020-12-05 10:16:37.602320'),
(26, 'buyer', '0004_auto_20201205_1713', '2020-12-05 11:43:18.488793');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1s3swhhtcvchyzl8bkclz4l58mm1fwgs', 'OTAzYmFjOWVmZTA3MjY0MGY5MTYyMGJhYzRlNDBmODhmYzI5MjgwODp7Im5hbWUiOjEsInVzZXJpZCI6NSwiYnV5ZXJpZCI6MiwiYm5hbWUiOiJzYWJhcmkiLCJwcm9wZXJ0eWlkIjoxNX0=', '2020-12-19 13:38:49.525762');

-- --------------------------------------------------------

--
-- Table structure for table `seller_family_details1`
--

CREATE TABLE IF NOT EXISTS `seller_family_details1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unid2` varchar(300) NOT NULL,
  `uploadid1` varchar(300) NOT NULL,
  `seller_name` varchar(300) NOT NULL,
  `member_count` varchar(300) NOT NULL,
  `member1` varchar(300) NOT NULL,
  `member2` varchar(200) NOT NULL,
  `member1_phone` varchar(300) NOT NULL,
  `member2_phone` varchar(300) NOT NULL,
  `relation_name` varchar(300) NOT NULL,
  `relation_phone` varchar(300) NOT NULL,
  `sellerid` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `seller_family_details1`
--

INSERT INTO `seller_family_details1` (`id`, `unid2`, `uploadid1`, `seller_name`, `member_count`, `member1`, `member2`, `member1_phone`, `member2_phone`, `relation_name`, `relation_phone`, `sellerid`) VALUES
(1, '3', '14', 'deva', '3', 'raj', 'ravi', '9878676767', '9876343434', 'arjun', '8767564545', '3'),
(2, '4', '15', 'lakshmana', '2', 'raju', 'ravi', '9867565656', '9867454545', 'jegan', '8976565656', '4'),
(3, '5', '16', 'suba', '3', 'sankar', 'divya', '8767565656', '9878673434', 'jaya', '7867565656', '5');

-- --------------------------------------------------------

--
-- Table structure for table `seller_property_upload`
--

CREATE TABLE IF NOT EXISTS `seller_property_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellerid` varchar(300) NOT NULL,
  `seller_name` varchar(300) NOT NULL,
  `seller_phone` bigint(20) NOT NULL,
  `seller_email` varchar(200) NOT NULL,
  `property_size` varchar(300) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `near_school` varchar(200) NOT NULL,
  `near_busstop` varchar(200) NOT NULL,
  `near_supermarket` varchar(200) NOT NULL,
  `near_gym` varchar(200) NOT NULL,
  `property_price` bigint(20) NOT NULL,
  `property_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `seller_property_upload`
--

INSERT INTO `seller_property_upload` (`id`, `sellerid`, `seller_name`, `seller_phone`, `seller_email`, `property_size`, `address`, `location`, `state`, `country`, `near_school`, `near_busstop`, `near_supermarket`, `near_gym`, `property_price`, `property_image`) VALUES
(9, '2', 'abirami', 8978676767, 'abirami@gmail.com', '500', 'tnagar', 'chennai', 'tamilnadu', 'india', 'yes', 'no', 'yes', 'yes', 13000, 'ser-pic2.jpg'),
(14, '3', 'deva', 9878676767, 'deva@gmail.com', '800', 'west mambalam', 'chennai', 'tamilnadu', 'india', 'yes', 'yes', 'yes', 'yes', 20000, 'ser-pic2_75zO1n5.jpg'),
(15, '4', 'lakshmana', 9878676767, 'lakshmana@gmail.com', '1000', 'west mambalam', 'Madurai', 'tamilnadu', 'india', 'yes', 'yes', 'no', 'no', 210000, 'property1.jpeg'),
(16, '5', 'suba', 9867565656, 'suba@gmail.com', '1200', 'murugan kovil street', 'madurai', 'tamilnadu', 'india', 'yes', 'yes', 'no', 'no', 250000, 'property2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seller_seller_reg`
--

CREATE TABLE IF NOT EXISTS `seller_seller_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `uname` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `seller_seller_reg`
--

INSERT INTO `seller_seller_reg` (`id`, `name`, `email`, `mobile`, `uname`, `password`) VALUES
(1, 'bhuvana', 'bhuvana@gmail.com', 8787673747, 'bhuvana', 'bhuvana'),
(2, 'abirami', 'abirami@gmail.com', 9878676767, 'abirami', 'abirami'),
(3, 'deva', 'deva@gmail.com', 8978675656, 'deva', 'deva'),
(4, 'lakshmana', 'lakshmana@gmail.com', 9878676767, 'lakshmana', 'lakshmana'),
(5, 'suba', 'suba@gmail.com', 8976565656, 'suba', 'suba');

-- --------------------------------------------------------

--
-- Table structure for table `seller_upload_proof1`
--

CREATE TABLE IF NOT EXISTS `seller_upload_proof1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellerid` varchar(300) NOT NULL,
  `aadhar_card` varchar(100) NOT NULL,
  `pan_card` varchar(100) NOT NULL,
  `voter_id` varchar(100) NOT NULL,
  `driving_licence` varchar(100) NOT NULL,
  `unid1` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `seller_upload_proof1`
--

INSERT INTO `seller_upload_proof1` (`id`, `sellerid`, `aadhar_card`, `pan_card`, `voter_id`, `driving_licence`, `unid1`) VALUES
(3, '3', 'abt-pic_B92pBXr.jpg', 'abt-pic_JcmyV7U_Leuibio.jpg', 'abt-pic_JcmyV7U_NRbnbFT_O85RTQE.jpg', 'abt-pic_rra5KWz_WQ7F001.jpg', '14'),
(4, '4', 'adhar1.jpg', 'pancard.jpg', 'voterid.jpg', 'adhar1_l6nmshK.jpg', '15'),
(5, '5', 'adhar1_cz8QARn.jpg', 'pancard_UxWXwYS.jpg', 'voterid_ZazsTUI.jpg', 'adhar1_7QXmJVf.jpg', '16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
