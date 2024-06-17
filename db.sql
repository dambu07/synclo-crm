-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2024 at 12:13 PM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theSynclo_newcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_aboutpageseo`
--

CREATE TABLE `aboutpage_aboutpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aboutpage_aboutpageseo`
--

INSERT INTO `aboutpage_aboutpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'About Us', 'The Synclo');

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_aboutsettings`
--

CREATE TABLE `aboutpage_aboutsettings` (
  `id` bigint(20) NOT NULL,
  `top_title` varchar(300) DEFAULT NULL,
  `top_description` varchar(300) DEFAULT NULL,
  `title_white` varchar(200) DEFAULT NULL,
  `title_red` varchar(200) DEFAULT NULL,
  `heading` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `count_title1` varchar(300) DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `count_title2` varchar(300) DEFAULT NULL,
  `project_delivered` int(11) DEFAULT NULL,
  `button_text` varchar(300) DEFAULT NULL,
  `button_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aboutpage_aboutsettings`
--

INSERT INTO `aboutpage_aboutsettings` (`id`, `top_title`, `top_description`, `title_white`, `title_red`, `heading`, `description`, `image`, `count_title1`, `years_of_experience`, `count_title2`, `project_delivered`, `button_text`, `button_url`) VALUES
(1, 'One of the fastest growing agency', 'We design and develop web and mobile applications for our clients worldwide.', 'Welcome to', 'The Synclo.', 'Building software for world changers', '<p>Whether you need a new logo, website, video, marketing campaign, or ebook created for your business, the key to making the project a success starts with having a well-thought-out creative brief.</p>\r\n\r\n<p>No coding skills required to create unique sites. Customize your site in real-time and see the results instantly.</p>', 'about/case-study-4.png', NULL, 3, NULL, 250, 'Contact us', '/contact-us');

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_clientssection`
--

CREATE TABLE `aboutpage_clientssection` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `company_url` varchar(500) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aboutpage_clientssection`
--

INSERT INTO `aboutpage_clientssection` (`id`, `company_name`, `slug`, `company_url`, `image`) VALUES
(1, 'Client 1', 'client-1', '#', 'clients/brand-1.png'),
(2, 'Client 2', 'client-2', '#', 'clients/brand-2.png'),
(3, 'Client 3', 'client-3', '#', 'clients/brand-3.png'),
(4, 'Client 4', 'client-4', '#', 'clients/brand-4.png'),
(5, 'Client 5', 'client-5', '#', 'clients/brand-5.png'),
(6, 'Client 6', 'client-6', '#', 'clients/brand-6.png'),
(7, 'Client 7', 'client-7', '#', 'clients/brand-7.png'),
(8, 'Client 8', 'client-8', '#', 'clients/brand-8.png');

-- --------------------------------------------------------

--
-- Table structure for table `aboutpage_teamsection`
--

CREATE TABLE `aboutpage_teamsection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aboutpage_teamsection`
--

INSERT INTO `aboutpage_teamsection` (`id`, `name`, `about`, `slug`, `position`, `facebook`, `twitter`, `linkedin`, `image`) VALUES
(1, 'Rakib Hasan', '\"The Synclo, led by Rakib Hasan, is a thriving community for coding enthusiasts. With Rakib\'s passion for technology, it\'s a place where innovation and learning thrive. Join us in shaping the future of coding and technology!', 'rakib-hasan', 'Founder & Director', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'team/rakib.png'),
(2, 'Azim Hossain Tuhin', 'Meet Azim Hossain Tuhin, a passionate [Interest or Field] enthusiast from [Hometown or Current Location]. Their [Highlight a Remarkable Skill or Trait] and dedication to [Relevant Field or Cause] are truly remarkable. Join us in welcoming [Member\'s Name] and sharing in their journey toward [Shared Goal or Vision]', 'azim-hossain-tuhin', 'Co Founder & CEO', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'team/Tuhin.png'),
(3, 'Thoren Okendhild', 'Meet  Thoren Okendhild, a passionate [Interest or Field] enthusiast from [Hometown or Current Location]. Their [Highlight a Remarkable Skill or Trait] and dedication to [Relevant Field or Cause] are truly remarkable. Join us in welcoming [Member\'s Name] and sharing in their journey toward [Shared Goal or Vision]', 'thoren-okendhild', 'Managing Director', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'team/team-1.jpg'),
(5, 'Adrian Eodri', 'Meet Adrian Eodri , a passionate [Interest or Field] enthusiast from [Hometown or Current Location]. Their [Highlight a Remarkable Skill or Trait] and dedication to [Relevant Field or Cause] are truly remarkable. Join us in welcoming [Member\'s Name] and sharing in their journey toward [Shared Goal or Vision]', 'adrian-eodri', 'Sales Executive', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'team/team-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ai_openaichatrecord`
--

CREATE TABLE `ai_openaichatrecord` (
  `id` bigint(20) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `user_input` longtext NOT NULL,
  `bot_response` longtext NOT NULL,
  `timestamp` date NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytics_visitor`
--

CREATE TABLE `analytics_visitor` (
  `id` bigint(20) NOT NULL,
  `count` int(11) NOT NULL,
  `os` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `visited_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authapp_passwordresettoken`
--

CREATE TABLE `authapp_passwordresettoken` (
  `id` bigint(20) NOT NULL,
  `token` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expiration_time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authapp_user`
--

CREATE TABLE `authapp_user` (
  `id` bigint(20) NOT NULL,
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
  `is_verified` tinyint(1) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created` date NOT NULL,
  `is_Vrified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `authapp_user`
--

INSERT INTO `authapp_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_verified`, `role`, `created`, `is_Vrified`) VALUES
(1, 'pbkdf2_sha256$260000$cOGeD7zERbuYFuw8eiQwSQ$tJg8t9/lSKyQ0r9N/XNkrCO1tnryyrYpUt/UjbM+ems=', '2024-03-08 18:41:38.901651', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-09-27 20:39:55.000000', 1, 'Admin', '2023-09-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `authapp_userprofile`
--

CREATE TABLE `authapp_userprofile` (
  `id` bigint(20) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `job_type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `authapp_userprofile`
--

INSERT INTO `authapp_userprofile` (`id`, `profile_picture`, `name`, `slug`, `email`, `phone`, `address`, `city`, `state`, `country`, `zipcode`, `facebook`, `instagram`, `linkedin`, `branch_id`, `department_id`, `designation_id`, `job_type_id`, `user_id`) VALUES
(54, 'user_pictures/456322.jpg', 'Rakib Hasan', 'admin', 'admin@gmail.com', '01781313825', 'Gacha, Master Bari, Chowrasta', 'Gazipur', 'Dhaka', 'Bangladesh', '1000', 'https://facebook.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authapp_user_groups`
--

CREATE TABLE `authapp_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authapp_user_user_permissions`
--

CREATE TABLE `authapp_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add banner section', 6, 'add_bannersection'),
(22, 'Can change banner section', 6, 'change_bannersection'),
(23, 'Can delete banner section', 6, 'delete_bannersection'),
(24, 'Can view banner section', 6, 'view_bannersection'),
(25, 'Can add fun fact section', 7, 'add_funfactsection'),
(26, 'Can change fun fact section', 7, 'change_funfactsection'),
(27, 'Can delete fun fact section', 7, 'delete_funfactsection'),
(28, 'Can view fun fact section', 7, 'view_funfactsection'),
(29, 'Can add home page seo', 8, 'add_homepageseo'),
(30, 'Can change home page seo', 8, 'change_homepageseo'),
(31, 'Can delete home page seo', 8, 'delete_homepageseo'),
(32, 'Can view home page seo', 8, 'view_homepageseo'),
(33, 'Can add project category', 9, 'add_projectcategory'),
(34, 'Can change project category', 9, 'change_projectcategory'),
(35, 'Can delete project category', 9, 'delete_projectcategory'),
(36, 'Can view project category', 9, 'view_projectcategory'),
(37, 'Can add service section', 10, 'add_servicesection'),
(38, 'Can change service section', 10, 'change_servicesection'),
(39, 'Can delete service section', 10, 'delete_servicesection'),
(40, 'Can view service section', 10, 'view_servicesection'),
(41, 'Can add testimonials section', 11, 'add_testimonialssection'),
(42, 'Can change testimonials section', 11, 'change_testimonialssection'),
(43, 'Can delete testimonials section', 11, 'delete_testimonialssection'),
(44, 'Can view testimonials section', 11, 'view_testimonialssection'),
(45, 'Can add projects section', 12, 'add_projectssection'),
(46, 'Can change projects section', 12, 'change_projectssection'),
(47, 'Can delete projects section', 12, 'delete_projectssection'),
(48, 'Can view projects section', 12, 'view_projectssection'),
(49, 'Can add about page seo', 13, 'add_aboutpageseo'),
(50, 'Can change about page seo', 13, 'change_aboutpageseo'),
(51, 'Can delete about page seo', 13, 'delete_aboutpageseo'),
(52, 'Can view about page seo', 13, 'view_aboutpageseo'),
(53, 'Can add about settings', 14, 'add_aboutsettings'),
(54, 'Can change about settings', 14, 'change_aboutsettings'),
(55, 'Can delete about settings', 14, 'delete_aboutsettings'),
(56, 'Can view about settings', 14, 'view_aboutsettings'),
(57, 'Can add clients section', 15, 'add_clientssection'),
(58, 'Can change clients section', 15, 'change_clientssection'),
(59, 'Can delete clients section', 15, 'delete_clientssection'),
(60, 'Can view clients section', 15, 'view_clientssection'),
(61, 'Can add team section', 16, 'add_teamsection'),
(62, 'Can change team section', 16, 'change_teamsection'),
(63, 'Can delete team section', 16, 'delete_teamsection'),
(64, 'Can view team section', 16, 'view_teamsection'),
(65, 'Can add portfolio page seo', 17, 'add_portfoliopageseo'),
(66, 'Can change portfolio page seo', 17, 'change_portfoliopageseo'),
(67, 'Can delete portfolio page seo', 17, 'delete_portfoliopageseo'),
(68, 'Can view portfolio page seo', 17, 'view_portfoliopageseo'),
(69, 'Can add pricing', 18, 'add_pricing'),
(70, 'Can change pricing', 18, 'change_pricing'),
(71, 'Can delete pricing', 18, 'delete_pricing'),
(72, 'Can view pricing', 18, 'view_pricing'),
(73, 'Can add pricing page seo', 19, 'add_pricingpageseo'),
(74, 'Can change pricing page seo', 19, 'change_pricingpageseo'),
(75, 'Can delete pricing page seo', 19, 'delete_pricingpageseo'),
(76, 'Can view pricing page seo', 19, 'view_pricingpageseo'),
(77, 'Can add service page seo', 20, 'add_servicepageseo'),
(78, 'Can change service page seo', 20, 'change_servicepageseo'),
(79, 'Can delete service page seo', 20, 'delete_servicepageseo'),
(80, 'Can view service page seo', 20, 'view_servicepageseo'),
(81, 'Can add blog category', 21, 'add_blogcategory'),
(82, 'Can change blog category', 21, 'change_blogcategory'),
(83, 'Can delete blog category', 21, 'delete_blogcategory'),
(84, 'Can view blog category', 21, 'view_blogcategory'),
(85, 'Can add blogs', 22, 'add_blogs'),
(86, 'Can change blogs', 22, 'change_blogs'),
(87, 'Can delete blogs', 22, 'delete_blogs'),
(88, 'Can view blogs', 22, 'view_blogs'),
(89, 'Can add contact', 23, 'add_contact'),
(90, 'Can change contact', 23, 'change_contact'),
(91, 'Can delete contact', 23, 'delete_contact'),
(92, 'Can view contact', 23, 'view_contact'),
(93, 'Can add contact info', 24, 'add_contactinfo'),
(94, 'Can change contact info', 24, 'change_contactinfo'),
(95, 'Can delete contact info', 24, 'delete_contactinfo'),
(96, 'Can view contact info', 24, 'view_contactinfo'),
(97, 'Can add contact page seo', 25, 'add_contactpageseo'),
(98, 'Can change contact page seo', 25, 'change_contactpageseo'),
(99, 'Can delete contact page seo', 25, 'delete_contactpageseo'),
(100, 'Can view contact page seo', 25, 'view_contactpageseo'),
(101, 'Can add subscriber', 26, 'add_subscriber'),
(102, 'Can change subscriber', 26, 'change_subscriber'),
(103, 'Can delete subscriber', 26, 'delete_subscriber'),
(104, 'Can view subscriber', 26, 'view_subscriber'),
(105, 'Can add header footer', 27, 'add_headerfooter'),
(106, 'Can change header footer', 27, 'change_headerfooter'),
(107, 'Can delete header footer', 27, 'delete_headerfooter'),
(108, 'Can view header footer', 27, 'view_headerfooter'),
(109, 'Can add menu', 28, 'add_menu'),
(110, 'Can change menu', 28, 'change_menu'),
(111, 'Can delete menu', 28, 'delete_menu'),
(112, 'Can view menu', 28, 'view_menu'),
(113, 'Can add payment method', 29, 'add_paymentmethod'),
(114, 'Can change payment method', 29, 'change_paymentmethod'),
(115, 'Can delete payment method', 29, 'delete_paymentmethod'),
(116, 'Can view payment method', 29, 'view_paymentmethod'),
(117, 'Can add seo setting', 30, 'add_seosetting'),
(118, 'Can change seo setting', 30, 'change_seosetting'),
(119, 'Can delete seo setting', 30, 'delete_seosetting'),
(120, 'Can view seo setting', 30, 'view_seosetting'),
(121, 'Can add website setting', 31, 'add_websitesetting'),
(122, 'Can change website setting', 31, 'change_websitesetting'),
(123, 'Can delete website setting', 31, 'delete_websitesetting'),
(124, 'Can view website setting', 31, 'view_websitesetting'),
(125, 'Can add expense', 32, 'add_expense'),
(126, 'Can change expense', 32, 'change_expense'),
(127, 'Can delete expense', 32, 'delete_expense'),
(128, 'Can view expense', 32, 'view_expense'),
(129, 'Can add item category', 33, 'add_itemcategory'),
(130, 'Can change item category', 33, 'change_itemcategory'),
(131, 'Can delete item category', 33, 'delete_itemcategory'),
(132, 'Can view item category', 33, 'view_itemcategory'),
(133, 'Can add yearly payment statistics', 34, 'add_yearlypaymentstatistics'),
(134, 'Can change yearly payment statistics', 34, 'change_yearlypaymentstatistics'),
(135, 'Can delete yearly payment statistics', 34, 'delete_yearlypaymentstatistics'),
(136, 'Can view yearly payment statistics', 34, 'view_yearlypaymentstatistics'),
(137, 'Can add crm projects', 35, 'add_crmprojects'),
(138, 'Can change crm projects', 35, 'change_crmprojects'),
(139, 'Can delete crm projects', 35, 'delete_crmprojects'),
(140, 'Can view crm projects', 35, 'view_crmprojects'),
(141, 'Can add crm tasks', 36, 'add_crmtasks'),
(142, 'Can change crm tasks', 36, 'change_crmtasks'),
(143, 'Can delete crm tasks', 36, 'delete_crmtasks'),
(144, 'Can view crm tasks', 36, 'view_crmtasks'),
(145, 'Can add invoice', 37, 'add_invoice'),
(146, 'Can change invoice', 37, 'change_invoice'),
(147, 'Can delete invoice', 37, 'delete_invoice'),
(148, 'Can view invoice', 37, 'view_invoice'),
(149, 'Can add items', 38, 'add_items'),
(150, 'Can change items', 38, 'change_items'),
(151, 'Can delete items', 38, 'delete_items'),
(152, 'Can view items', 38, 'view_items'),
(153, 'Can add invoice item', 39, 'add_invoiceitem'),
(154, 'Can change invoice item', 39, 'change_invoiceitem'),
(155, 'Can delete invoice item', 39, 'delete_invoiceitem'),
(156, 'Can view invoice item', 39, 'view_invoiceitem'),
(157, 'Can add payments', 40, 'add_payments'),
(158, 'Can change payments', 40, 'change_payments'),
(159, 'Can delete payments', 40, 'delete_payments'),
(160, 'Can view payments', 40, 'view_payments'),
(161, 'Can add project file', 41, 'add_projectfile'),
(162, 'Can change project file', 41, 'change_projectfile'),
(163, 'Can delete project file', 41, 'delete_projectfile'),
(164, 'Can view project file', 41, 'view_projectfile'),
(165, 'Can add branch', 42, 'add_branch'),
(166, 'Can change branch', 42, 'change_branch'),
(167, 'Can delete branch', 42, 'delete_branch'),
(168, 'Can view branch', 42, 'view_branch'),
(169, 'Can add department', 43, 'add_department'),
(170, 'Can change department', 43, 'change_department'),
(171, 'Can delete department', 43, 'delete_department'),
(172, 'Can view department', 43, 'view_department'),
(173, 'Can add designation', 44, 'add_designation'),
(174, 'Can change designation', 44, 'change_designation'),
(175, 'Can delete designation', 44, 'delete_designation'),
(176, 'Can view designation', 44, 'view_designation'),
(177, 'Can add job type', 45, 'add_jobtype'),
(178, 'Can change job type', 45, 'change_jobtype'),
(179, 'Can delete job type', 45, 'delete_jobtype'),
(180, 'Can view job type', 45, 'view_jobtype'),
(181, 'Can add leave type', 46, 'add_leavetype'),
(182, 'Can change leave type', 46, 'change_leavetype'),
(183, 'Can delete leave type', 46, 'delete_leavetype'),
(184, 'Can view leave type', 46, 'view_leavetype'),
(185, 'Can add termination type', 47, 'add_terminationtype'),
(186, 'Can change termination type', 47, 'change_terminationtype'),
(187, 'Can delete termination type', 47, 'delete_terminationtype'),
(188, 'Can view termination type', 47, 'view_terminationtype'),
(189, 'Can add holiday', 48, 'add_holiday'),
(190, 'Can change holiday', 48, 'change_holiday'),
(191, 'Can delete holiday', 48, 'delete_holiday'),
(192, 'Can view holiday', 48, 'view_holiday'),
(193, 'Can add leave', 49, 'add_leave'),
(194, 'Can change leave', 49, 'change_leave'),
(195, 'Can delete leave', 49, 'delete_leave'),
(196, 'Can view leave', 49, 'view_leave'),
(197, 'Can add meeting', 50, 'add_meeting'),
(198, 'Can change meeting', 50, 'change_meeting'),
(199, 'Can delete meeting', 50, 'delete_meeting'),
(200, 'Can view meeting', 50, 'view_meeting'),
(201, 'Can add notice', 51, 'add_notice'),
(202, 'Can change notice', 51, 'change_notice'),
(203, 'Can delete notice', 51, 'delete_notice'),
(204, 'Can view notice', 51, 'view_notice'),
(205, 'Can add event', 52, 'add_event'),
(206, 'Can change event', 52, 'change_event'),
(207, 'Can delete event', 52, 'delete_event'),
(208, 'Can view event', 52, 'view_event'),
(209, 'Can add notification', 53, 'add_notification'),
(210, 'Can change notification', 53, 'change_notification'),
(211, 'Can delete notification', 53, 'delete_notification'),
(212, 'Can view notification', 53, 'view_notification'),
(213, 'Can add payroll', 54, 'add_payroll'),
(214, 'Can change payroll', 54, 'change_payroll'),
(215, 'Can delete payroll', 54, 'delete_payroll'),
(216, 'Can view payroll', 54, 'view_payroll'),
(217, 'Can add deduction', 55, 'add_deduction'),
(218, 'Can change deduction', 55, 'change_deduction'),
(219, 'Can delete deduction', 55, 'delete_deduction'),
(220, 'Can view deduction', 55, 'view_deduction'),
(221, 'Can add basic salary', 56, 'add_basicsalary'),
(222, 'Can change basic salary', 56, 'change_basicsalary'),
(223, 'Can delete basic salary', 56, 'delete_basicsalary'),
(224, 'Can view basic salary', 56, 'view_basicsalary'),
(225, 'Can add allowance', 57, 'add_allowance'),
(226, 'Can change allowance', 57, 'change_allowance'),
(227, 'Can delete allowance', 57, 'delete_allowance'),
(228, 'Can view allowance', 57, 'view_allowance'),
(229, 'Can add payslip', 58, 'add_payslip'),
(230, 'Can change payslip', 58, 'change_payslip'),
(231, 'Can delete payslip', 58, 'delete_payslip'),
(232, 'Can view payslip', 58, 'view_payslip'),
(233, 'Can add termination', 59, 'add_termination'),
(234, 'Can change termination', 59, 'change_termination'),
(235, 'Can delete termination', 59, 'delete_termination'),
(236, 'Can view termination', 59, 'view_termination'),
(237, 'Can add warning', 60, 'add_warning'),
(238, 'Can change warning', 60, 'change_warning'),
(239, 'Can delete warning', 60, 'delete_warning'),
(240, 'Can view warning', 60, 'view_warning'),
(241, 'Can add support ticket', 61, 'add_supportticket'),
(242, 'Can change support ticket', 61, 'change_supportticket'),
(243, 'Can delete support ticket', 61, 'delete_supportticket'),
(244, 'Can view support ticket', 61, 'view_supportticket'),
(245, 'Can add ticket reply', 62, 'add_ticketreply'),
(246, 'Can change ticket reply', 62, 'change_ticketreply'),
(247, 'Can delete ticket reply', 62, 'delete_ticketreply'),
(248, 'Can view ticket reply', 62, 'view_ticketreply'),
(249, 'Can add privacy policy page', 63, 'add_privacypolicypage'),
(250, 'Can change privacy policy page', 63, 'change_privacypolicypage'),
(251, 'Can delete privacy policy page', 63, 'delete_privacypolicypage'),
(252, 'Can view privacy policy page', 63, 'view_privacypolicypage'),
(253, 'Can add privacy policy page seo', 64, 'add_privacypolicypageseo'),
(254, 'Can change privacy policy page seo', 64, 'change_privacypolicypageseo'),
(255, 'Can delete privacy policy page seo', 64, 'delete_privacypolicypageseo'),
(256, 'Can view privacy policy page seo', 64, 'view_privacypolicypageseo'),
(257, 'Can add termsn condition page', 65, 'add_termsnconditionpage'),
(258, 'Can change termsn condition page', 65, 'change_termsnconditionpage'),
(259, 'Can delete termsn condition page', 65, 'delete_termsnconditionpage'),
(260, 'Can view termsn condition page', 65, 'view_termsnconditionpage'),
(261, 'Can add termsn condition page seo', 66, 'add_termsnconditionpageseo'),
(262, 'Can change termsn condition page seo', 66, 'change_termsnconditionpageseo'),
(263, 'Can delete termsn condition page seo', 66, 'delete_termsnconditionpageseo'),
(264, 'Can view termsn condition page seo', 66, 'view_termsnconditionpageseo'),
(265, 'Can add agreement', 67, 'add_agreement'),
(266, 'Can change agreement', 67, 'change_agreement'),
(267, 'Can delete agreement', 67, 'delete_agreement'),
(268, 'Can view agreement', 67, 'view_agreement'),
(269, 'Can add user profile', 68, 'add_userprofile'),
(270, 'Can change user profile', 68, 'change_userprofile'),
(271, 'Can delete user profile', 68, 'delete_userprofile'),
(272, 'Can view user profile', 68, 'view_userprofile'),
(273, 'Can add user', 69, 'add_user'),
(274, 'Can change user', 69, 'change_user'),
(275, 'Can delete user', 69, 'delete_user'),
(276, 'Can view user', 69, 'view_user'),
(277, 'Can add employee', 70, 'add_employee'),
(278, 'Can change employee', 70, 'change_employee'),
(279, 'Can delete employee', 70, 'delete_employee'),
(280, 'Can view employee', 70, 'view_employee'),
(281, 'Can add guser', 71, 'add_guser'),
(282, 'Can change guser', 71, 'change_guser'),
(283, 'Can delete guser', 71, 'delete_guser'),
(284, 'Can view guser', 71, 'view_guser'),
(285, 'Can add hr', 72, 'add_hr'),
(286, 'Can change hr', 72, 'change_hr'),
(287, 'Can delete hr', 72, 'delete_hr'),
(288, 'Can view hr', 72, 'view_hr'),
(289, 'Can add manager', 73, 'add_manager'),
(290, 'Can change manager', 73, 'change_manager'),
(291, 'Can delete manager', 73, 'delete_manager'),
(292, 'Can view manager', 73, 'view_manager'),
(293, 'Can add password reset token', 74, 'add_passwordresettoken'),
(294, 'Can change password reset token', 74, 'change_passwordresettoken'),
(295, 'Can delete password reset token', 74, 'delete_passwordresettoken'),
(296, 'Can view password reset token', 74, 'view_passwordresettoken'),
(297, 'Can add custom page', 75, 'add_custompage'),
(298, 'Can change custom page', 75, 'change_custompage'),
(299, 'Can delete custom page', 75, 'delete_custompage'),
(300, 'Can view custom page', 75, 'view_custompage'),
(301, 'Can add order', 76, 'add_order'),
(302, 'Can change order', 76, 'change_order'),
(303, 'Can delete order', 76, 'delete_order'),
(304, 'Can view order', 76, 'view_order'),
(305, 'Can add cart', 77, 'add_cart'),
(306, 'Can change cart', 77, 'change_cart'),
(307, 'Can delete cart', 77, 'delete_cart'),
(308, 'Can view cart', 77, 'view_cart'),
(309, 'Can add open ai chat record', 78, 'add_openaichatrecord'),
(310, 'Can change open ai chat record', 78, 'change_openaichatrecord'),
(311, 'Can delete open ai chat record', 78, 'delete_openaichatrecord'),
(312, 'Can view open ai chat record', 78, 'view_openaichatrecord'),
(313, 'Can add visitor', 79, 'add_visitor'),
(314, 'Can change visitor', 79, 'change_visitor'),
(315, 'Can delete visitor', 79, 'delete_visitor'),
(316, 'Can view visitor', 79, 'view_visitor');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE `blog_blogcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slug` varchar(350) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_blogcategory`
--

INSERT INTO `blog_blogcategory` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Business', 'business', '2023-10-02', '2023-10-02'),
(6, 'Education', 'education', '2023-10-02', '2023-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogs`
--

CREATE TABLE `blog_blogs` (
  `id` bigint(20) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` varchar(350) DEFAULT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_contact`
--

CREATE TABLE `contactpage_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` int(11) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactpage_contact`
--

INSERT INTO `contactpage_contact` (`id`, `name`, `email`, `phone`, `message`) VALUES
(6, 'Rakib Hasan', 'test@whmpress.com', 1781313825, 'This form is submitted from the get quote form'),
(7, 'Miako', 'miako@gmail.com', 96354215, 'This form is submitted from the get quote form'),
(8, 'ISTAR', 'letsbiketo@gmail.com', 2111122002, 'This form is submitted from the get quote form');

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_contactinfo`
--

CREATE TABLE `contactpage_contactinfo` (
  `id` bigint(20) NOT NULL,
  `box1_icon` varchar(500) DEFAULT NULL,
  `box1_title` varchar(250) DEFAULT NULL,
  `box1_description` longtext DEFAULT NULL,
  `box2_icon` varchar(500) DEFAULT NULL,
  `box2_title` varchar(250) DEFAULT NULL,
  `box2_description` longtext DEFAULT NULL,
  `box3_icon` varchar(500) DEFAULT NULL,
  `box3_title` varchar(250) DEFAULT NULL,
  `box3_description` longtext DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactpage_contactinfo`
--

INSERT INTO `contactpage_contactinfo` (`id`, `box1_icon`, `box1_title`, `box1_description`, `box2_icon`, `box2_title`, `box2_description`, `box3_icon`, `box3_title`, `box3_description`, `map_iframe`) VALUES
(1, 'fas fa-phone-volume', 'Call us today', '<p><a href=\"tel:+8801620673388\">+880 1620 673388</a></p>', 'fas fa-envelope', 'Our emails', '<p><a href=\"mailto:admin@theSynclo.net\">admin@theSynclo.net</a></p>', 'fas fa-map', 'Our address', '<p>NU, Gazipur-1704, Dhaka</p>', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3646.419641253625!2d90.38046731467298!3d23.94559668449348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c52979f8b7a5%3A0x78089acff1ed789f!2sThe%20Synclo!5e0!3m2!1sen!2sus!4v1674327029775!5m2!1sen!2sus\" width=\"100%\" height=\"450\" allowfullscreen=\"\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_contactpageseo`
--

CREATE TABLE `contactpage_contactpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactpage_contactpageseo`
--

INSERT INTO `contactpage_contactpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Contact Us', 'The Synclo');

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_subscriber`
--

CREATE TABLE `contactpage_subscriber` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subscribe_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactpage_subscriber`
--

INSERT INTO `contactpage_subscriber` (`id`, `email`, `subscribe_date`) VALUES
(4, 'krakib2002@gmail.com', '2023-09-30'),
(6, 'itsraakibhasan@gmail.com', '2023-09-30'),
(7, 'isratmourm@gmail.com', '2023-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `crm_crmprojects`
--

CREATE TABLE `crm_crmprojects` (
  `id` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `project_type` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_crmprojects_team`
--

CREATE TABLE `crm_crmprojects_team` (
  `id` bigint(20) NOT NULL,
  `crmprojects_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_crmtasks`
--

CREATE TABLE `crm_crmtasks` (
  `id` bigint(20) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_crmtasks_assigned_to`
--

CREATE TABLE `crm_crmtasks_assigned_to` (
  `id` bigint(20) NOT NULL,
  `crmtasks_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_expense`
--

CREATE TABLE `crm_expense` (
  `id` bigint(20) NOT NULL,
  `date_of_expense` date DEFAULT NULL,
  `category` varchar(300) DEFAULT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `amount` double NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_invoice`
--

CREATE TABLE `crm_invoice` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `billDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `discount_amount` double NOT NULL,
  `notes` longtext DEFAULT NULL,
  `uniqueId` varchar(100) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `other_fees_amount` double NOT NULL,
  `other_fees_name` varchar(300) DEFAULT NULL,
  `tax_amount` double NOT NULL,
  `sub_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_invoiceitem`
--

CREATE TABLE `crm_invoiceitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `sub_total` double NOT NULL,
  `unit_price` double NOT NULL,
  `unit_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_invoice_products`
--

CREATE TABLE `crm_invoice_products` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `items_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_itemcategory`
--

CREATE TABLE `crm_itemcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slug` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_items`
--

CREATE TABLE `crm_items` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slug` varchar(300) DEFAULT NULL,
  `description` longtext NOT NULL,
  `unit_type` varchar(100) NOT NULL,
  `rate` double DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `fake_sales` int(11) DEFAULT NULL,
  `fake_stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_payments`
--

CREATE TABLE `crm_payments` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `payment_method` varchar(300) DEFAULT NULL,
  `payment_ammount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_note` longtext DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_projectfile`
--

CREATE TABLE `crm_projectfile` (
  `id` bigint(20) NOT NULL,
  `upload_file` varchar(100) NOT NULL,
  `project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_yearlypaymentstatistics`
--

CREATE TABLE `crm_yearlypaymentstatistics` (
  `id` bigint(20) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL CHECK (`year` >= 0),
  `total_payment` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custompage_custompage`
--

CREATE TABLE `custompage_custompage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(12, '2023-10-01 19:40:49.110700', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Is Verified\"]}}]', 45, 1),
(13, '2024-03-09 00:43:25.535581', '7', 'hr', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Role\"]}}]', 69, 1),
(14, '2024-03-09 00:43:32.391412', '6', 'manger', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 69, 1),
(15, '2024-03-09 00:43:39.916966', '8', 'employee', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 69, 1),
(16, '2024-03-10 07:33:10.126494', '6', 'manager', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'aboutpage', 'aboutpageseo'),
(14, 'aboutpage', 'aboutsettings'),
(15, 'aboutpage', 'clientssection'),
(16, 'aboutpage', 'teamsection'),
(1, 'admin', 'logentry'),
(78, 'ai', 'openaichatrecord'),
(79, 'analytics', 'visitor'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(70, 'authapp', 'employee'),
(71, 'authapp', 'guser'),
(72, 'authapp', 'hr'),
(73, 'authapp', 'manager'),
(74, 'authapp', 'passwordresettoken'),
(69, 'authapp', 'user'),
(68, 'authapp', 'userprofile'),
(21, 'blog', 'blogcategory'),
(22, 'blog', 'blogs'),
(23, 'contactpage', 'contact'),
(24, 'contactpage', 'contactinfo'),
(25, 'contactpage', 'contactpageseo'),
(26, 'contactpage', 'subscriber'),
(4, 'contenttypes', 'contenttype'),
(35, 'crm', 'crmprojects'),
(36, 'crm', 'crmtasks'),
(32, 'crm', 'expense'),
(37, 'crm', 'invoice'),
(39, 'crm', 'invoiceitem'),
(33, 'crm', 'itemcategory'),
(38, 'crm', 'items'),
(40, 'crm', 'payments'),
(41, 'crm', 'projectfile'),
(34, 'crm', 'yearlypaymentstatistics'),
(75, 'custompage', 'custompage'),
(6, 'homepage', 'bannersection'),
(7, 'homepage', 'funfactsection'),
(8, 'homepage', 'homepageseo'),
(9, 'homepage', 'projectcategory'),
(12, 'homepage', 'projectssection'),
(10, 'homepage', 'servicesection'),
(11, 'homepage', 'testimonialssection'),
(57, 'hrm', 'allowance'),
(56, 'hrm', 'basicsalary'),
(42, 'hrm', 'branch'),
(55, 'hrm', 'deduction'),
(43, 'hrm', 'department'),
(44, 'hrm', 'designation'),
(52, 'hrm', 'event'),
(48, 'hrm', 'holiday'),
(45, 'hrm', 'jobtype'),
(49, 'hrm', 'leave'),
(46, 'hrm', 'leavetype'),
(50, 'hrm', 'meeting'),
(51, 'hrm', 'notice'),
(53, 'hrm', 'notification'),
(54, 'hrm', 'payroll'),
(58, 'hrm', 'payslip'),
(59, 'hrm', 'termination'),
(47, 'hrm', 'terminationtype'),
(60, 'hrm', 'warning'),
(67, 'legals', 'agreement'),
(63, 'legals', 'privacypolicypage'),
(64, 'legals', 'privacypolicypageseo'),
(65, 'legals', 'termsnconditionpage'),
(66, 'legals', 'termsnconditionpageseo'),
(77, 'order', 'cart'),
(76, 'order', 'order'),
(17, 'portfoliopage', 'portfoliopageseo'),
(18, 'pricingpage', 'pricing'),
(19, 'pricingpage', 'pricingpageseo'),
(20, 'servicepage', 'servicepageseo'),
(5, 'sessions', 'session'),
(27, 'settings', 'headerfooter'),
(28, 'settings', 'menu'),
(29, 'settings', 'paymentmethod'),
(30, 'settings', 'seosetting'),
(31, 'settings', 'websitesetting'),
(61, 'userapp', 'supportticket'),
(62, 'userapp', 'ticketreply');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'aboutpage', '0001_initial', '2024-03-08 16:32:54.730995'),
(2, 'contenttypes', '0001_initial', '2024-03-08 16:32:54.807265'),
(3, 'contenttypes', '0002_remove_content_type_name', '2024-03-08 16:32:54.847350'),
(4, 'auth', '0001_initial', '2024-03-08 16:32:55.108157'),
(5, 'auth', '0002_alter_permission_name_max_length', '2024-03-08 16:32:55.130067'),
(6, 'auth', '0003_alter_user_email_max_length', '2024-03-08 16:32:55.144584'),
(7, 'auth', '0004_alter_user_username_opts', '2024-03-08 16:32:55.153713'),
(8, 'auth', '0005_alter_user_last_login_null', '2024-03-08 16:32:55.165597'),
(9, 'auth', '0006_require_contenttypes_0002', '2024-03-08 16:32:55.176245'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2024-03-08 16:32:55.190667'),
(11, 'auth', '0008_alter_user_username_max_length', '2024-03-08 16:32:55.201388'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2024-03-08 16:32:55.212415'),
(13, 'auth', '0010_alter_group_name_max_length', '2024-03-08 16:32:55.230968'),
(14, 'auth', '0011_update_proxy_permissions', '2024-03-08 16:32:55.252929'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2024-03-08 16:32:55.262664'),
(16, 'authapp', '0001_initial', '2024-03-08 16:32:55.897798'),
(17, 'admin', '0001_initial', '2024-03-08 16:32:56.060347'),
(18, 'admin', '0002_logentry_remove_auto_add', '2024-03-08 16:32:56.079964'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-08 16:32:56.094234'),
(20, 'ai', '0001_initial', '2024-03-08 16:32:56.203858'),
(21, 'analytics', '0001_initial', '2024-03-08 16:32:56.278799'),
(22, 'hrm', '0001_initial', '2024-03-08 16:32:58.780417'),
(23, 'authapp', '0002_initial', '2024-03-08 16:32:59.133602'),
(24, 'blog', '0001_initial', '2024-03-08 16:32:59.405830'),
(25, 'contactpage', '0001_initial', '2024-03-08 16:32:59.728524'),
(26, 'crm', '0001_initial', '2024-03-08 16:33:01.776131'),
(27, 'custompage', '0001_initial', '2024-03-08 16:33:01.870235'),
(28, 'homepage', '0001_initial', '2024-03-08 16:33:02.537316'),
(29, 'legals', '0001_initial', '2024-03-08 16:33:02.888958'),
(30, 'order', '0001_initial', '2024-03-08 16:33:03.318491'),
(31, 'portfoliopage', '0001_initial', '2024-03-08 16:33:03.364317'),
(32, 'servicepage', '0001_initial', '2024-03-08 16:33:03.414991'),
(33, 'sessions', '0001_initial', '2024-03-08 16:33:03.476056'),
(34, 'settings', '0001_initial', '2024-03-08 16:33:04.450406'),
(35, 'userapp', '0001_initial', '2024-03-08 16:33:04.841487'),
(36, 'pricingpage', '0001_initial', '2024-03-08 18:37:20.145344');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('060ac63yvxh7ykq7xid8ulkantlq4hqm', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qroN3:0MxggOwzQ7qqxzAbPrJmyXhCSLCfZ-OYdY45sUL8sik', '2023-10-28 23:48:37.164768'),
('08fj580uwv8ecq0sbjq6b3ft0b28sinx', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj2UP:Sg2B_XH4t3o-Na_w37mn2xhJjzLlYcZLZJBdyKbCFpE', '2024-03-23 19:36:13.007889'),
('0fr09fn0kwudfik1rxclxl37oznwlmnk', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrOrA:Xp8WYyzX7guc-vSSo0HlaLTDkKgYLv3y3oL-p7yZcCE', '2023-10-27 20:34:00.774950'),
('0l7q5iac2k0wa2a5j3bpfkasc08c4g47', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj4DS:7zRib9DA-sqhKOCCU9yrMM4qIJgpRBTa_Jtde3aRfKo', '2024-03-23 21:26:50.296155'),
('0yf9wtrjlhx0k3yp0iw1m9d9e8eximwb', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoZQH:XVgYuwa43xYzo_toI43Mf-XHR4GT1fK7anlqv0rLVX0', '2023-10-20 01:14:33.521085'),
('10w4amy5rpwfl5g010l9l93fneydtmwg', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqNzt:vU7QxyRTKD9iUJrmNOb6JqSbDZRFVTN-kE3uBCj4jvE', '2023-10-25 01:26:49.586579'),
('1138wlday5n51ognje713t0h8lp5hr9z', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj16W:l64M3ghAQxSOrXUmjBYRUabPZU3KCqFAOWAS77QJ248', '2024-03-23 18:07:28.883535'),
('15zlpu5x0j4im3g9n2dm3zr3n7amm1se', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj2jl:c2X0UMik-p7wvstq8JN3i0jUe4-KT-6UGI2wnauylME', '2024-03-23 19:52:05.199761'),
('1b8hx0nubxg52x0g7loy2sv8in43km4u', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riqvC:h-MgpuVAL8VrZhCOWkdzA5UMaSu2u_QFDB8spoDGdGs', '2024-03-23 07:15:06.219643'),
('1j3to3lb8b1mzpm4jzqaqngkzh4kssz9', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIaTo:yEHG6zx14srl9Ra9Ga9Yfy4F9n6CZY6jUKhvNF0k8xU', '2024-01-10 20:26:16.071135'),
('1pv35b3ye5s9o710hch1bnketuvz9ygw', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrDMf:fqvLNuJDKvNYuhAR4PGCHkXtSd8YcIpl2fXwU0dtLb8', '2023-10-27 08:17:45.737907'),
('23wu4o6clha13ax6gmbtvz1hi419i7sg', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qno4c:7YBTRvbSNRAXUmUd5xLj-jPDVYYxLZWKn8SunhkCw6o', '2023-10-17 22:41:02.236328'),
('24e57a76k4d9w1srop83s9m6mqbra599', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rirMY:g4YjgBZI9eaxszfQcVAbm8HEH2dB2yqx8PRZ05B6Ki0', '2024-03-23 07:43:22.968531'),
('24npybzighc4uy45fdmiuv785akc6k3k', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riv9E:JnsAQM_1XeipFtJWUWhw4DChK8Pnppizp8-t9Fx7SXA', '2024-03-23 11:45:52.817506'),
('2ahtjlvfy22x3d4ivun4w8jmj5k8hwts', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnhrw:L3e_BGWXhLHqhzH5kP-sUfMvxLISros6qHWnipQWuJo', '2023-10-17 16:03:32.592721'),
('2o4tipiv6a41ropt5vjg7l2ao1navstx', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjGIf:oV7Ps9BtEcwkM7u0GzPACuRICHddfuEvYfjaLgopMJM', '2024-03-24 10:21:01.596995'),
('2zawcsi8lsbsgy56qoc9ut6cxu0zrqbq', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrPIT:ThQRosV_oStaXdBgfFeNQjEp3ZTa4JR8ts3G-HsI9Xo', '2023-10-27 21:02:13.927052'),
('32zvt0tf1qpoycottgsrwwxehlqkpssb', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpMow:ft6VYwDGBF7_fCM1p23Vd_VoNDLKZtqYfaqVLLfNCfw', '2023-10-22 05:59:18.728424'),
('335rtjckrnfed8hg0giz7nl5yjp44pij', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qqkiC:ikgCcKY8Jb5XdY_-Ej4JAXeMjJVMFTGLfMQVYrf6fno', '2023-10-26 01:42:04.659761'),
('35svw00wgzh8fl3ft2jdkp1zrt91aii1', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rimux:gwlZxLGW7y2F5cF0DVjuwP8H4yC7aS6TSG3KS1YDmoQ', '2024-03-23 02:58:35.114024'),
('37u5n5tcqyqi8hu6putz1dp3l9we9ikv', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qplSL:PZ6R5g8t9jTyBuhcaXSn6gQ4QY_Y4vR2DGU5k8EK-Ww', '2023-10-23 08:17:37.834095'),
('38lptzx94bquzmf7eihq2ba98va3zb5l', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qo1Cd:TOBkPdiOz4sjn4zNiAN41QKBODTzv0PIKTFnFT2jBxc', '2023-10-18 12:42:11.878462'),
('3br8kyqbxuurm3ilczc5qz74yswxj7j8', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIldZ:gLad-JzYc7UpspC9RUX__SEDP6hXpyfN5LJCnoKfDzI', '2024-01-11 08:21:05.258453'),
('3hrfx1pw553e8czzpj0imbuagrsxnjyf', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjEFQ:eK0a3Yz7Oy_ei--896N4cTf9lQGi1Ra526PBxAeMFKc', '2024-03-24 08:09:32.898313'),
('3o7zf44kchc74a38flddadebub10pghm', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoIoV:wyqLQrsGtHOp_9_gszXltbxoilRnFxJIX7aNw8TRKEE', '2023-10-19 07:30:27.513919'),
('3rb16pzlexislxlcw62xlp0y0gbruxs2', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qooKK:DJfa1h7Tn-ihkpHMipcslhX5KpPF6gRA5Ktaaodu_Dc', '2023-10-20 17:09:24.535384'),
('3wuyuswenl11epnmztins92ze3txamc4', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qr39D:DgJav7rV9UH_a1hKQif542COBc5DjdZs1VAwl7T8tRM', '2023-10-26 21:23:11.093179'),
('3x02370sq9yoo1zdvxfbf99zaxoaber8', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1r2nCo:hz7w-t9mv2yliLnnoCDoRBxbfwR2grgmFY01R4b9Sgg', '2023-11-28 06:47:26.586743'),
('3xy75rcxoduhscqlm1ooj3k36q9t84uj', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rLNfI:FZc9DTZwC3CFXVBlJjI7P9s-unygctYxocQb0cNIlPo', '2024-01-18 13:21:40.517490'),
('4m54knm3ervabba9b544l6agla6i4u72', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qq2Iu:ThLyyVZw3kZgzDhiXqy6tVgRizWEd7T-PnZZz44eiKE', '2023-10-24 02:17:00.941058'),
('4o5uozx8fffq39kol89i1z35hi304uf4', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rinYS:ONFMSM_FHX6PdwK_4hlmBdWj23cR1TkbkkjglcxfkLQ', '2024-03-23 03:39:24.950780'),
('4p3g9gegtsb4tln82wuemxru4fu769dw', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrvJX:OdYrRS3rGhZ3BhvS_0r81-XLrU0sTetwWQy9UVz_3r8', '2023-10-29 07:13:27.646376'),
('4r4r5iirena1yk9h4m7rqctg2k2qv3id', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnEJe:HVoAKBeaGqB3KJ1D2NN8szFE9E0Uaubk2Z3kqgnv6f0', '2023-10-16 08:30:10.896609'),
('4to34njunxhxwq1cgsm3y790jj650pa2', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnBzP:gMhZ33_TJdFuoWZgBEiVgD3WKLjskW_AHfc_FqQe6MQ', '2023-10-16 06:01:07.253886'),
('502na25hw4mo3iv3nua5qodhi05l0kj1', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpvty:yJNmcIM0YWoHX1eX66SlpTzthcCSVg406oyTSCQg-1M', '2023-10-23 19:26:50.952738'),
('55x1e0hsiqf2okhxszp29tb6tip4y0vw', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqkh0:97qnYU0YD5Gm8WTxmyFmsrS9PNjCSH25jIC1Z1mM0fc', '2023-10-26 01:40:50.178045'),
('56ca80nvn0upqkq9d97u6koqovikaqvn', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoLob:qhjd1mDh0KVV74Uw4Qnlu7__2_AyllzhqX0J5fBAqvk', '2023-10-19 10:42:45.796183'),
('5e4vbo2xwyr1zb0bwgon1yj6u635lnv1', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrioc:0NIx_p25i9g4CmBJZbS77O_07xhL4VQjoX2qZ3mRj3w', '2023-10-28 17:52:42.131771'),
('5qzapuu3sfd4k9ne5pwn63e19ydzjyqx', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qojpz:tOTbS8gbISdbgUpclnFa9c9Whj6gD91zjIZ7hCJrv0o', '2023-10-20 12:21:47.243244'),
('5rxlf1lpogag5fsolsumuaeaco7bcrd1', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrMkp:ax6kIhLDTcOIIT802hHzaGmUxOUCIp880SOCF3luaDI', '2023-10-27 18:19:19.406255'),
('5tvd3ioemkzxm00dbi9p21effa28daw1', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpWtz:XA4mEUCMZkVnvrKtLAejx4NO4ozyC0MzP1ydFaSgQ-g', '2023-10-22 16:45:11.487989'),
('615uo98levsv004ukawmnjvvf340lvgd', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qp3lP:9XLRFLfa-hrBf7LGLnE2TLVUksTRQpuIqJNHb5H9kFE', '2023-10-21 09:38:23.137222'),
('65hj7rh3yo5hxypw54rl4mw2dclbponq', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rimbc:ga9yOS0x9_ZRU8VQbJPz-LM6RJEGdYIDY2mIclx5q3k', '2024-03-23 02:38:36.987275'),
('6bkfozqxrxfybl1usdwd52tdi49g6q8j', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qrduu:8CoA1USs2XwcsGno_Da5W9K3mOwiM4ffaTJ1WQGTMvA', '2023-10-28 12:38:52.007516'),
('6dze7rf6px6o90k7qto0rovkwm8e5h10', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjLPT:OmcrIZrc1C0Rohm1E1EC4B-ApJW-CvVyQt0iNwesmFE', '2024-03-24 15:48:23.734359'),
('6xcdf9fboht9i9053gu3t33ehlipvc7j', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj7GM:Nh_wZ5Pl_c4BVo0Hwa1w9rqLRqLBUEM2QRoCpZZyREQ', '2024-03-24 00:42:02.121419'),
('760xi28b08cpsopcfiftzmse8dby4vep', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIQpn:dezLRSbQw1W0RHbBm9ZA3Mb5QX3i6s7n2wAz4KP84DI', '2024-01-10 10:08:19.423605'),
('7al1j61o0wat6dnlcmi5sklvnmemdc1c', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rikiF:W9zLfRwLmSBBQfCMADfguS1mpNs2i88FuKEPn2-mNq8', '2024-03-23 00:37:19.982142'),
('7nmlmnqyirczigvxbfs8v5iyf5wm9jjg', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riqv9:FohTf_4CjK6dNIgH4SGJyz9l9-XwzXz75aZcJ85g5e8', '2024-03-23 07:15:03.664843'),
('8a1r22b6y73xht1mwafd54yns60nqgob', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rLNPQ:yTv2N1FlYK9_qQuDLMS6iwEg170J5pfahYDPkX7bz58', '2024-01-18 13:05:16.864220'),
('8q5hlbjc5pvu857vk5bczfzqw8pksp2z', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rinfG:xjYbAIYxBXrYJCQT4MtgJ3NUb1wDFGud2fYnu0Mxchs', '2024-03-23 03:46:26.924264'),
('8qlsfsip8qzjoadfe37jf7sofrenujt5', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpVaa:_qVO40Jeh8yXAM0jC4yr7I5DcDvCAJS9lcrcnUrqclc', '2023-10-22 15:21:04.662976'),
('8ye5nvdpdtnj5p0xmexf9pgywrjhf2fk', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rifvy:pA7cRuyJzAa8UxZL-jbf8p0M-r370kHRwM3hzBBE4gA', '2024-03-22 19:31:10.572289'),
('967wgt8yroy6k87sgd2l406m8zuxruiz', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qq7NS:_g1wYBQ9aUYgZpVWZMeRFTjdIgrs-Gc4wVXcOab6iRw', '2023-10-24 07:42:02.308120'),
('9d0hgtpt0s5jy311sybgbq8lna6xh8er', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjLfe:txWffWl65PHDDzHDkQRPi_zen0y5R1qh0H4VenygiOA', '2024-03-24 16:05:06.801610'),
('9d0tbkap4s0ms0ucwu3xl9vj3pi38dw5', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIgjn:8DBUHy0NdqVJcE3kV9HmdzaHe0-x2QlWedOIvxrE7NQ', '2024-01-11 03:07:11.810474'),
('9j55rok3i38n13ujl3xzriw14ibewzjx', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qngH7:WD670sRsI10YvYCpjy4w2fHpKShq3puYc2jnQ0CMuBo', '2023-10-17 14:21:25.962497'),
('9si3ulsbmw48rii16ew5vb4pfs7pkvo2', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj7eg:jtdvDFSZbiLUVw1YuntCLwOsqE5qmlBQIQxxSfSQybo', '2024-03-24 01:07:10.178836'),
('9t2gp6m78glm2ptryu82i3nz3zzj1maq', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrj1y:cJg4e81us0WH1d0xOtLdHEUxSyP7-CuaOAvnsQ7DgI0', '2023-10-28 18:06:30.896567'),
('9ucm2m13vnjpfgpcj84gnzja5ohn41u8', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0xMC0wN1QyMDozODoyMi42ODY1MDQrMDA6MDAifQ:1qpE46:3ovSFOPPXZ69l2yzQtxB-t7Uv-wRwxMhw4Tvsrk7A3s', '2023-10-21 20:38:22.702496'),
('a0x1l6t4abp6s3tnry3tk4ehgefgx6rq', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoLoj:XVA_YyW6O1yHGh6TD6NbXQRn58cAlozHnesv-F5yI5c', '2023-10-19 10:42:53.895855'),
('aluygu5p5516nwxjp3d3q2mdxlzovl8t', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qp7ZE:Ed5gP1-tvaL3VUz9j-pWqIXku1fba9DlafT-ouME700', '2023-10-21 13:42:04.057638'),
('aubzge1ednwnr50dko2zp9jy0olaqp3b', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnOgW:isPAkjZEowPQFX7-x6yvX9sya7vXzakxt49_6GGDOvc', '2023-10-16 19:34:28.122264'),
('b5mezvgcrpe20s23p7logiflge5wpglj', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rix2A:3ACMou7PGyfCiTELF3tYNDwvXgY50s6pjrNx72jaA-c', '2024-03-23 13:46:42.364685'),
('bmvtieko1suoazy7n7tt881csby0vvmq', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0xMC0wM1QxNTo1NToxMi44NDQ0OTMrMDA6MDAifQ:1qnhjs:e_wrcAxTQDqbNbJ_YNod4lvQpQgxv_bDEYrPny_MhoQ', '2023-10-17 15:55:12.851298'),
('bote48mvkvh9k66br34b94lx5rfffai2', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qpxcj:RX9lJo466fb0uDd1vbYnl56uy1DGZ3Rh1mx5qLbGWzw', '2023-10-23 21:17:09.617163'),
('bpib9o6sn0ygqs2tbgmo37sj7to2b6e9', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qp0fQ:afptNmzXWGxvZ_XiGKsF4romKGqdj2aIwwApKIx_BUQ', '2023-10-21 06:20:00.691358'),
('ccq3ncauwtqv1835c010nmcazqncd87l', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj3UH:Mfg3r4npdk0nZG0JRp26nMfLISn3Ck0x8-cRbR9Prfk', '2024-03-23 20:40:09.170461'),
('ced06zm6jqt3h4tndy38abo4pkcl80fd', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qopqo:5LObN2xAMyrTJuEawj5EdqD2JstRMwxGJLv2nlcAQWA', '2023-10-20 18:47:02.795422'),
('cfq2i2w4eswse88q8xhi4k3evy4tl9yk', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqkda:mhqrJ7fiI6kfgdYIfk2MSXmtGqbFmkBY171kKAAAUBo', '2023-10-26 01:37:18.434053'),
('cq8memq5hmx0n36z9o1pvgvgy4kx4i9k', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIRC3:BiHCyh1SKTd0w49sr1PnHtvrbh-WPHiBR2B0hFw22II', '2024-01-10 10:31:19.550487'),
('cv6ov1mnslxeagmv6ge3liu435x8ird1', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1rKvir:NIXXpRuM0_cHeW9O_cgHbe0moyksdIsSHpEtBPWEmdA', '2024-01-17 07:31:29.342842'),
('cwk87gwkm66qhr1n6858b6xzw5x85oar', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjJQS:2EHGfeiCbGhh1F31Zan7Xwyraat2iLx0_N9HSQFr4fw', '2024-03-24 13:41:16.069773'),
('d28fump2eib20l7he7pt3vcnw4jsbba7', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpTlg:xBgglYp1IqS3LjrWqlBInXK4vEsKtDSZDUzzv3DwW6U', '2023-10-22 13:24:24.623178'),
('d7ojxiu7n49wn38ouf2guxc7t05eb6tx', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZIaHVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CnNiZOXb63QjjI7cdpDu2W-ext3WZie8KP-jg157y83K4fwcVR_3WPpJTYKOQ0RSYpJSZRHHWQdEGFQjShManIiZnSRX0NmYLWtucnAbD3h_XOTd3:1qnN6f:H53BIR0y7PFfZ7fqP9Odso99ZdfOoX3GWEpxOUrq1BA', '2023-10-16 17:53:21.580223'),
('dbh1o9r0t3yidoozkg1fb53vbjjx3lt6', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoRK0:Mg_fEczT1BakiC3vuuxfosycBmzc9jih4rqu9-eeWBI', '2023-10-19 16:35:32.489280'),
('e0wdw8cqwpxp2togaby752h31m8fquiu', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rJ1Qn:_agukJbYjZZ-yKv89DJkQNuV-u25qWd5ZtYgB9znVdo', '2024-01-12 01:12:57.230251'),
('e728yjphh5051rsghmw2e00ghcip61gb', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnAM6:tbcziMaVkn7zWb8Gdv-V2AaOxZ86Zz8XrcPpkqe4nr4', '2023-10-16 04:16:26.985396'),
('eerd2xxmqu1ts0juuq1bzzo3qqkad2gp', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIcHn:BoCC0p28Om-DKoLvY5HhtEAkl8LJzL3TXLcAeXEfG-k', '2024-01-10 22:21:59.498279'),
('ei8rv92wm5wqzpybn03lftqlgz2zin8n', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIPKx:Y7h0mcrj9gYaywte-CjzUTmQ2v0cxFY7jCPO0Hkb_JQ', '2024-01-10 08:32:23.768143'),
('ekkwvxnq00eknajjqxkday7qit2fin1o', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnhJH:uqB0k8NT2LH7lJLN6H5dUEiWIUmTuXrv2YpoXQoQqFY', '2023-10-17 15:27:43.664019'),
('emxt9k02qcmpmm6pyaqfhxq870d4tnoy', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qplBd:TFCDqLwHReuIk5vWf0298BouQcS25KwSuZ8KNNrjweo', '2023-10-23 08:00:21.774315'),
('eodqnwupzq1qon931953nh654m3g60tu', '.eJxVjDsOwjAQBe_iGln-4B8lfc5geb1rHEC2FCcV4u4QKQW0b2bei8W0rTVug5Y4I7swKdjpd4SUH9R2gvfUbp3n3tZlBr4r_KCDTx3peT3cv4OaRv3WTgJ5LRKaUqBonZEUWqXBhqw0CuFNwARgiiIqYF1R7myN92S9Dl6y9wco4Th2:1qp5W8:qc7hBs3aiK3RFBJisrwtCYCUB6UmIYuo_OyP5v1FN0k', '2023-10-21 11:30:44.971078'),
('fpylm6z27qm646qjsfdq1cfumcpckm8n', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rijff:WbBrzKMpKy2OH4qNCGdlggu3QihvO7FShk6pi-lNQDQ', '2024-03-22 23:30:35.981998'),
('fxq4jlgr3tcq79o0cxajhdtdjuo2vsuk', 'eyJ2aXNpdGVkIjp0cnVlfQ:1ripnL:rv6PUrv1cCcg2sK0V8TObb1HoKcHHEJB5CjtKFAw9cQ', '2024-03-23 06:02:55.745843'),
('g4fsyvht0i93kzaw2timvxuv71ku2vdm', '.eJxVjMsOgjAQRf-la9P0McNUl-75BtLODIIaSCisjP-uJCx0e88592W6vK1Dt1VdulHMxSRz-t1K5odOO5B7nm6z5Xlal7HYXbEHrbadRZ_Xw_07GHIdvnWjKD1R06MIxNQwBAWPKQRPUBQwCSG4wupSKJHgHJlS9IgMnl027w_P6zby:1qou2j:Mh5XLTq8FmT53Yw7VkYEOIfo9jSDci-f2q6RJFomqew', '2023-10-20 23:15:37.672807'),
('gassxaxte58oejoqk55b8rmb4lfjepzy', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIhY0:lbA4nRbs3PH20EGFHFqWsxKeo4KJvqVZEELkN5nI8MQ', '2024-01-11 03:59:04.209031'),
('gchdvjqbnjy3gsmg66outbumwggxfm0c', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrSyE:hEuiEsyfYcEGifRmY0Xc-sqjh1XdT6eP0rAiRm2ZK9M', '2023-10-28 00:57:34.125760'),
('ggfc8mbun1pwrzxmh47mfueay41708w8', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qs3hy:uhWvfKz0R-E84xEy2TSxpuaxP7X-RZGeRmNUrfcRgPc', '2023-10-29 16:11:14.100026'),
('gw0lxyon75xwuo0v8dxhgbfp1rjl18ki', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpM3l:85fA5Jr7jHMfE1CyejVbwxcUkXVHcwXz5r7umvhy_Kk', '2023-10-22 05:10:33.048294'),
('h4qmc2mnrxr155dzj2yxa0sr42c1b50z', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjGJA:9b5wSxYftGm43baKRBaJ6kCSECbCRWAOxgfoay-lCtY', '2024-03-24 10:21:32.330351'),
('h7vnmeaq4nvg6b1evnrztgm6vsryt7ll', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qq5rp:uQ1hDOBCGELMzzlssb0TQFIxjv5jTiGvJN9Z1-9octY', '2023-10-24 06:05:17.860740'),
('hhljf2g2eattk5b6omzvvzpjrhcw6jny', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjFGW:i5nOwhWgoqbJgRlT7s5pXNvgmAMULlKYY01ZzVxZoO8', '2024-03-24 09:14:44.727492'),
('hm5zhklksofcab3vj081zz3l3bwfuubq', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjLPR:U9QMvv6yVAjY0dKm-SG3Z1h-umj_84VCAAXhsg-XRPQ', '2024-03-24 15:48:21.045873'),
('hnrluhlga13ccaaird2wjtmt26qlv0q8', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpRBc:BiFCvHDsDWYhvLY8C4ZFHBCC3yrS8-fLJzYEpqgM5FU', '2023-10-22 10:39:00.593762'),
('hoit1zhfbefcno6644w60d72p77rxc7e', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrLlh:7E4d_sVc9Pt1lFYMIu8Wt6f_lAcKjVGc3SnbJj308GI', '2023-10-27 17:16:09.011041'),
('i1hl4u8xigpgyp4r4znxn1o3s90rapud', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rJSiL:VsrNv-_NUCcDwsebogM-7QduBjdBqBrTKPV3a6Q2IPs', '2024-01-13 06:20:53.156115'),
('i4gajnps6ou9zcategzlqg07lbl54e3x', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnM46:761eZvVkoAoMhwT2jAC8043Zv9rWY5KkAX4ZMvnqpQU', '2023-10-16 16:46:38.707267'),
('i4m24sywbdhe44yrwsvd8eqmx63vudqc', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyNC0wMS0wNVQxMzo0NjoyOS40MDI5ODUrMDA6MDAifQ:1rLkWr:zBYYycAtJ6oDm4r27tVcoSB_N5wohFOq8Al1HJQKVMk', '2024-01-19 13:46:29.417522'),
('ig10gqoxe18c7yei76pecqjcrwn8ud64', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnTCO:fpkpb3SR0bkmB6EPNM9_E4D9AYJCvgrbuws2DPUZXp4', '2023-10-17 00:23:40.873223'),
('ijnbtwgnn2v80sovg4xs4yuw88binqti', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjGIc:Oe6_MF52WRtLKhsaaurO2uvZM9ROVYWDWkcpgm1YEAw', '2024-03-24 10:20:58.649098'),
('iqi9dun3k29rcf8ies7kudvizbcdecba', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnym4:HFNEVhcobTwqd1fI2PyRUHJsDmNd5LLjM5fshW2_864', '2023-10-18 10:06:36.609322'),
('j0pywdve5621nkbeezskoxi7awvo89kp', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjFhl:KqlgjXte070am84Fas8d9ShpJm_j8-OxXH13Sz-2AXc', '2024-03-24 09:42:53.429336'),
('j42ptwi1zgka2q3zoxqpt253i19k58mk', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqDa1:9uNs7wKf9MITscCqsr1CULWbamd2yxpI-SfNAmEB3_Q', '2023-10-24 14:19:25.717035'),
('jq15lvdnssm2sruqhdrujjupq9iq93ct', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqCG2:O0mGzHihy3PvetsYo8zNzmWMv2R9OY9j-BprgpVaSc8', '2023-10-24 12:54:42.910754'),
('k1w6jrn666ef34hxb10r2fr456uw6sxx', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrcSs:7JgkCaDPQZXln-HFoh5XRARkONa2S_dqSPFS8hjMAa4', '2023-10-28 11:05:50.959300'),
('k55slzk9ru46q1ixh6xx0a2pm4jiohft', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrEEA:MUhvViZEhMkeKaJiOGosrXTncYhpEI3WAAOUKgPopwo', '2023-10-27 09:13:02.175996'),
('kb1eh2gedsh0mrvwgad4zd65xjzgv1h7', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj400:u8z20G3WX69TzkL9IeOM_2JWHCchHus4_GL1vt1seAk', '2024-03-23 21:12:56.972534'),
('kfc7mbiniasgnk55010veqlpvkz77wei', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIVuS:XyJcD1xyFr4PYT2l9aw2cttOi0UubUQtwvWQHK1fwcU', '2024-01-10 15:33:28.182916'),
('kp6livnx576r37acn16ourn6zpjqzqec', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riqsD:-SHra9qWEIT4UCSgYP1-YY8ELLE_yDW_3MctWgbHuUw', '2024-03-23 07:12:01.384611'),
('kqvduh5qk8xqoc8pp394xowroeptomgu', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIas8:p1BDt-OmhU0J9h_mzt7-itBFHvy06FcGR2NLv_PkCaw', '2024-01-10 20:51:24.244874'),
('ksczwyqnz3gjic4x1jnbrcdz6br0691k', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qnPZu:f1X_noRSXO2fNuiR3vwnXPPu4zby3a-Y1eCi_Lqhpoc', '2023-10-16 20:31:42.616729'),
('lf8dz2ep8g62dciytl3i6quiajb1pcht', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qr39C:uO5ruL0WIpMU_5GUzCOoY3M1KbfjmmzS5OoIq2JeRaU', '2023-10-26 21:23:10.621093'),
('lj5s9x3204p08gxfgljflvetwc110eus', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qn534:P7Pa3b1vzcfwT4BPd-XUW45oPD0bjNRXUtF2z24hJ2o', '2023-10-15 22:36:26.214648'),
('lnkstk3bsmslawv3uccwh7062kwm5nhw', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rifol:jMx4zky1jvFyt94xE5h9WFinALemKo8NEiYH1Ns4G7Y', '2024-03-22 19:23:43.802442'),
('lnuzamuokbxbznsdx1ar57nihxyl1cyd', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrPE3:meSNGCrXHrPaW9Kp7jXN9hPxZVKDS0JsZfygMMYZAfc', '2023-10-27 20:57:39.342945'),
('lsulkbwyk2trw1acl3d6e8gk3kxydi3u', '.eJxVjDkOwjAUBe_iGllecUxJnzNYfwsJIFvKUiHuDpFSQPtm5r1UgW0dy7bIXCZWFxXV6XdDoIfUHfAd6q1panWdJ9S7og-66L6xPK-H-3cwwjJ-64CBJZB3jAwEPpnsB-dh6GI4Z0POEorF1IHJzuVBkkvWps5KDGgY1PsD9wk38g:1qqVSs:lhooBbIrKfVa4T1yQKwUhVbw6ZPFivsNl_aGAaJCp7I', '2023-10-25 09:25:14.376767'),
('m3s44nry5zcs32ivy5t90yj0m4siqw5a', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpmML:SV0OfC7NVeY0iQTwZtnIgjWzOV-qacGyM-eRvHFzE6Y', '2023-10-23 09:15:29.968052'),
('mdjw33lrttnspcqoxi7akqlws9v0wdn3', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrPS4:k5sds5RDO9t616ySkDZy_pXTHkM3m0JuWLtVH3XxDxA', '2023-10-27 21:12:08.137544'),
('mnt5aymmu0ahz5u68kzg51acftlxx3st', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrIgA:udAbgz1C0FyziBg2XZaePKQGmmVOVkfB5H5fxaw5lGE', '2023-10-27 13:58:14.419309'),
('mua6605tt2um7zayqfcat6bqz9dihy49', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rifvy:pA7cRuyJzAa8UxZL-jbf8p0M-r370kHRwM3hzBBE4gA', '2024-03-22 19:31:10.176660'),
('n0beq6l4952esz45rjel3wlouxcsqd2p', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIj1z:_EjqOtRwAHfNmu3h4muXHRjkOfOUue04A7NWLIydqgc', '2024-01-11 05:34:07.246591'),
('n5qfdqwco5a8su8vg6tcn4wud337yw0b', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIlWG:UHJEZFZeX5BKFO6m30m0aslvHmqN2_M-AFACiwtwm70', '2024-01-11 08:13:32.440330'),
('ndn9rphaccgzit1z07x8kmncabjm1s09', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjAA4:AK-5MgRMRyZ7GZNU7Yahdt2l4woKuRW03URaANOcG9U', '2024-03-24 03:47:44.704567'),
('nehzb9hqkcww810ojv7iar466abajmin', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rinkQ:_-YDjJ4hcefPGOC_9834dWmqMY5TWuMH8B1KSGcw4wQ', '2024-03-23 03:51:46.051356'),
('njaoexesj6fsssdneghebhktl0oq70e6', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpByb:H5asa0zpDdafPsj5wkwu9nlDSjNOGTHlYBlieBK1HPs', '2023-10-21 18:24:33.210223'),
('nlptz0b0bycapv66e19vm9wdidep6r9k', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpxf8:mRj4GTPsxjdSLCSUVWJqGXimKB6xxNZ-vCxkJBQoM2w', '2023-10-23 21:19:38.168186'),
('nlud0pl1dhmjtd96fbkchpzc86f092hr', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qptKw:2g0EB3_RIxCjLOF9a6lT17Fo2K4_OvLjXxCBl-LKSys', '2023-10-23 16:42:30.824515'),
('nxh46jzpwg01koqk3nsva6fqff74phxp', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqGST:rxdbwN5V1bsZyOY3DN5GaL74hDtqG0pX4DHmR5IhZTU', '2023-10-24 17:23:49.184652'),
('o08xg23232p35mzekpzupgnsqtbckal0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rICc5:zHO5xA2uT1wxkZKSSbbTc2SPdo3UGPOA8QLZOX0k080', '2024-01-09 18:57:13.179410'),
('o30x75nk4q6j8pfsv5phho6ns54c5krk', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qqLaH:yu0rzDqRpMpEmuEt1zeT4I2F3Fz_ve3-UfN6I-w7Cj4', '2023-10-24 22:52:13.085022'),
('o44b7x92gj3kwhuf3e2j7zcjvp2eevg7', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riuxQ:47B5nNwElwaDWjAtmRAx32xh3Bmc-Z2ZHhgY1WXhgAU', '2024-03-23 11:33:40.166060'),
('o9akips9bvgluhckcnyhb5meawfjgoma', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqVOr:tVFl-WorBE4JkAsPAnrXKoBRCu9F_8ZjeNT-12AVSmY', '2023-10-25 09:21:05.342152'),
('ob469cqxiq1zkrezsqlweeoxx4f1w90q', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnHpj:5nQ65-3HwWOA8GxMipidV-tAj3YDHxH3W_ltUr_bT7s', '2023-10-16 12:15:31.574919'),
('ofegyy23womyd6vxt2qxa597xkkp1uc3', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqqfe:GGuWW6JNAwfusYSqCkVfSvB6ennajDNwb1ydkMJ4cSg', '2023-10-26 08:03:50.121724'),
('ohp939pl8plfdnvsa0qht3u5jvqofxil', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoaxg:Dw-FRe1Dju6PX5d5T06CWH79_HYJ7WF75xrI2wEbNiY', '2023-10-20 02:53:08.267110'),
('osc3kfe927ul9rttyqakuyucswj38ems', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0xMC0wMVQyMDozMzo0MS4wNzQzMjMrMDA6MDAifQ:1qn38H:R3_viuvbj2bF8Bvd_X1-W94A7ljj6ygrVRpZrZZq6j4', '2023-10-15 20:33:41.080100'),
('outm3hpf3zlfgpknqlnps4x60mpcjiny', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qomB6:_FjiinRJ8Lr6X3qDzza-sg9_qPxb4-PlRi2tu3rf3j0', '2023-10-20 14:51:44.998605'),
('oz6xuoi6sg7r8rk2676txvh5wguo8e9j', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1rLga8:X9cOEpZ_JIp1PGJW2WkxyT87BlkwlP_9J6Fxqlv-Zbo', '2024-01-19 09:33:36.357691'),
('p22m9daye1jed6v7vh40dh8pvqtxz3k6', '.eJxVjDkOwjAUBe_iGllecUxJnzNYfwsJIFvKUiHuDpFSQPtm5r1UgW0dy7bIXCZWFxXV6XdDoIfUHfAd6q1panWdJ9S7og-66L6xPK-H-3cwwjJ-64CBJZB3jAwEPpnsB-dh6GI4Z0POEorF1IHJzuVBkkvWps5KDGgY1PsD9wk38g:1qoJ0q:t1w8O1C5rx8IHMAExcfC4sbw_5JK8aHNyUVM_Qc79BM', '2023-10-19 07:43:12.586567'),
('p57kn8dh04b24bg83xn728gx63d0jojr', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qpxcj:RX9lJo466fb0uDd1vbYnl56uy1DGZ3Rh1mx5qLbGWzw', '2023-10-23 21:17:09.217119'),
('pac9mem4blxn3ig1n0ktg0wpyv5ywz2b', 'eyJ2aXNpdGVkIjp0cnVlfQ:1risnT:3fDEG-6lxfQU2l2tjV7xNnRlz6if3FuQ5X31Jj_2poA', '2024-03-23 09:15:15.116295'),
('q66rt5sr0jelxmqjv8ahzwuwut91bukg', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoRAD:h8xboH5yfGHeYmtQI1yE8ISA6KOqBYuUV_9FRPB0mn4', '2023-10-19 16:25:25.210436'),
('q8n6ttebnrym6ui5mkihcg5d2v71x3up', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrXBv:vZcGT0Ix5aI0JC47YkEt_i7M3KF65NpDOjELSK_b5ck', '2023-10-28 05:27:59.162156'),
('qk0f381i57f5n8nq79pv2hvzv1oy7lsp', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qna7C:jKsRbUpaHHG8VaQVnFTXzmDBk3M2nEAlTwJYJxFWDhs', '2023-10-17 07:46:46.099440'),
('qozabq2qucx2wikrj430x164hl9n0afd', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjItE:jrvcJ4rZvqKLn3726psohlOo8tCl_Z3LpCbaYErBpnU', '2024-03-24 13:06:56.958501'),
('qyfl1p9xz2to5o53z36oy9nznvikiirc', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rJ1Qn:_agukJbYjZZ-yKv89DJkQNuV-u25qWd5ZtYgB9znVdo', '2024-01-12 01:12:57.628876'),
('r2ca5tez8arwpjyuxwi5exgyepdqbi00', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjE20:lLrATXzcK6YrO2ux-u8WNJpPS4DNR0ZZgEZ0BLP4j8k', '2024-03-24 07:55:40.019196'),
('r7w8xnvrvkv2swt50evzh0tdzvz9hq31', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qrS7n:YTaY309b4SkjHf5xz4dqque6scPO1CnIR58WJZtu4xw', '2023-10-28 00:03:23.805006'),
('rgqvljohckw8rf6ovidr8nczatprjh30', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj6Qt:o4HyErK1m57FglPM1_dfj_OOesm_cW1f8X5DPSN8k4o', '2024-03-23 23:48:51.389410'),
('rlal4xergn9e2enta8mnfp026fhbrzt0', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rixRD:CxRiF2NSHcuy627sBNbsawHNAo8iD8MdzlDXZRwHyNs', '2024-03-23 14:12:35.688410'),
('rvmnkowh99sm3khz024q48w8kwrbhaed', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqBRG:vNTuuVXzHDfUUdwbcmrcKO3Xa4O2PMme_WIQsT_MPVg', '2023-10-24 12:02:14.433008'),
('rx57hnxwrz6mhuh0jqnrgr41n4f5zy28', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qqIRC:tqc7ZyMNl_Szes-bppoAZUUvaf4WQM0qtOxPLW2kWJg', '2023-10-24 19:30:38.755757'),
('s89x1ctow6068fyejjhsfoslbiaz6yk0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpnHp:teMh5XWx5ozM5JYr24G3a8gGE9x-tYLqNBYPP-fgKGI', '2023-10-23 10:14:53.489309'),
('sg7n7o1a8dgy6a371qoj7kc6tln716nc', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIG36:FMYcgrlBu7YqgonXgDzKhInD01ltTqWiYJK2EFndN-0', '2024-01-09 22:37:20.564206'),
('sq0ay9fx99tj3kp21pzsbveaaf0n3sfv', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qncVh:cndRfNtC-ApJh3KykfbwFFOGW64IDkNGUHNe-vipUYo', '2023-10-17 10:20:13.259448'),
('sthco3ou6694bxjp9be30sm7awr3zvkj', '.eJxVjDkOwjAUBe_iGllecUxJnzNYfwsJIFvKUiHuDpFSQPtm5r1UgW0dy7bIXCZWFxXV6XdDoIfUHfAd6q1panWdJ9S7og-66L6xPK-H-3cwwjJ-64CBJZB3jAwEPpnsB-dh6GI4Z0POEorF1IHJzuVBkkvWps5KDGgY1PsD9wk38g:1qpcEx:V5KvS28QkIIEIK_zNpsX0Xyaw_P-VAhJO1RX0VxM-Qw', '2023-10-22 22:27:11.779293'),
('swlbw7e5kvdqmxknlcfrnp1505zc7mma', '.eJxVjDkOwjAUBe_iGllecUxJnzNYfwsJIFvKUiHuDpFSQPtm5r1UgW0dy7bIXCZWFxXV6XdDoIfUHfAd6q1panWdJ9S7og-66L6xPK-H-3cwwjJ-64CBJZB3jAwEPpnsB-dh6GI4Z0POEorF1IHJzuVBkkvWps5KDGgY1PsD9wk38g:1qn2u4:KNAgSgTq6TR871hmCupaW6esIGjg8T0FzIZ2hdJG1-g', '2023-10-15 20:19:00.568922'),
('t00bt261gc5isnflvely9dzf8o46ndtk', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1rILrr:lou3ly_DhzpaQu0VXje3WYkJ5yIfPP9Otkxw8-3vxRQ', '2024-01-10 04:50:07.633836'),
('t9ct8v6j139hida55uoa9we7agsnqjeh', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qpCso:KS5N-aLbRnM1tFQomffNKB8jXdZ424a-mLnaEyw3qh0', '2023-10-21 19:22:38.180922'),
('tb69g3p9a29hk85ayfokb2ngq2sq9jnh', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qoUD5:8Q1taWcP8vzLuEA6Nn4rdWBcqbMpzYImsTsaqdOUpOE', '2023-10-19 19:40:35.066697'),
('tgv04rm33msmr18mb64k3k8kvnc9rii2', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjGIh:KgC1B4Dt1JKJfqu5KAxDkKrtFLljRq90s78wjil5uAU', '2024-03-24 10:21:03.532764'),
('trhnthr41gs44trwkywfnpcg05mzdgoo', '.eJxVjjsPwyAMhP8La1tkEh4lY_du3ZHB0NBHIhUyVf3vJVKWeDr5vrPvy15YqgvzVDFUVxb_zqXkeXI1vyMbWAedPIE4gbqJfpBmEJZrLZXpDgADADsyh0sd3VLix2VqEbHfeQzPOK0GPXC6z3x99smerwjf3MKvM8XXZWN3B0YsY0sjgPIWvdImCdNjiKlvqm-jkxdoKMmzTTJY6xMB6VbTdmiADEYixX5_sQJLjA:1rLkYH:nCUJUYLJB03DUj9azpj77TEYHYb1Z51oid79csxHwOk', '2024-01-19 13:47:57.778771'),
('u0p4qenjc234u0i2ig3o1yktufdnqfgb', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qneSu:aquGDd2JJj-tUZ0jIVBuWt87GAkqrZb3Q9MXKtraKgU', '2023-10-17 12:25:28.917369'),
('u8tc9hcmp919irdgzdg3zao4qdmnxs7v', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qp0f3:52fsQJH-dbpsnUUJkq3mKHPhiGTf681k4Q_j6vWx4GA', '2023-10-21 06:19:37.279347'),
('uo1oitqvh3r8m5zlx7igag4ew3js3ia4', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnrhS:ZvKPkPR76nA7D_pQJVIVLNeJvqHLsOMTvUsbKjiEJfE', '2023-10-18 02:33:22.204695'),
('up2kawlpvgxrkju4v0yegwxgzkb7koyy', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qo3ch:wfOOv7JZOUufPQx2oq9ZhXX4QyVDnOBL2w-brnw_fis', '2023-10-18 15:17:15.250200'),
('uperfepi2s39cimve94ocidx6ex6z2o4', '.eJxVTbtuwyAU_RfWxujyMASP2bt1Rxcu1DSOLQU8Rfn3YslDe6aj83wxj3ub_V7T0xdiExPs8lcLGO9pPQz6wfV743Fb27MEfkT46Vb-uVFabmf238CMde5tBBiDwzAam4VVGFNWnakOk4NAS1lfXdbRuZAJyBijnUQLZDERjX10wdr8cY-x-bqHR6m1bKtv5ZH6gwSpBiEHef0SbhJm0ooroZU2HwATAHv_AlUES4g:1rIvs3:hiELu4wRc27xTzhLPh-upKNDZgcwykELruHVv5HiwIM', '2024-01-11 19:16:43.315752'),
('uuvr55p38d3cv6z1wg4xoyxqny28f3xf', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj3AA:ZhhdTJSoLnx8F4Gs-T5YRBVL7iY0pUpWlDbhyXvogH8', '2024-03-23 20:19:22.698951'),
('v4080i1zf0swq57mdhccfv2z9b9sdw1l', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rifvx:0RF9j5pwK8VetggazDfKq3NrUTzk9NEolBVQdXdgdOY', '2024-03-22 19:31:09.800884'),
('v7qmp2e0zjbo7b4tsf9wdpknmkzmnnt0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qouJh:sT8ahnPGcDwbnnXlB_OpfE9vjW-0UCwaEES0UGo5l1I', '2023-10-20 23:33:09.690909'),
('vahdd2tr9dsug3pwsodje72piv005wt0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoOv8:dU8dSxANg-2ki8OlPShZdcB8x9P1XZ8HFKyzUUC5fxU', '2023-10-19 14:01:42.133298'),
('vch33u4no3twy6xezpytf0m0oxk7dtvs', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj3UH:Mfg3r4npdk0nZG0JRp26nMfLISn3Ck0x8-cRbR9Prfk', '2024-03-23 20:40:09.168765'),
('vga1kjyuanyrmczqv0g92serubmbl6lz', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rj5wb:oz7h-MA8jFNOl1MxwWrcvod0VI5b6Z3VP0verlppL9I', '2024-03-23 23:17:33.565364'),
('w1z87xxr6wi7ps8jhek1qindjm3esukl', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoNYi:fOlXYA_k-DTqKNlaoIudgv6wRIDuNnrQiu_TtBuJLsg', '2023-10-19 12:34:28.078838'),
('w5au2nncjyg7wb21jpnwwfd210p3a2m7', '.eJxVjDkOwjAUBe_iGllecUxJnzNYfwsJIFvKUiHuDpFSQPtm5r1UgW0dy7bIXCZWFxXV6XdDoIfUHfAd6q1panWdJ9S7og-66L6xPK-H-3cwwjJ-64CBJZB3jAwEPpnsB-dh6GI4Z0POEorF1IHJzuVBkkvWps5KDGgY1PsD9wk38g:1qn2iz:JmL2lmmfQvwOnYf_xq6nmxPb0XgeoO7qeNBfshNRzzM', '2023-10-15 20:07:33.055947'),
('wgvd558k5v6qoelrcei5f90miyfr5pce', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riug4:JBLPc6e8sHsOOE6BLWjcL_T6lxpQ3GoVlutq_JXwb2M', '2024-03-23 11:15:44.678107'),
('wlxsh7erqkcl8bg1749fw7j9fc1q5mb0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qnCig:-d8sdsNQYLj_R3YLiD69IlFINau_lwI8ptdwhUj5g3Y', '2023-10-16 06:47:54.330968'),
('wnnlv53ma73l81o3bfl4pnjbmmrl9non', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qnxld:liuCx2Lv-F2VHPQQJPleUiD52lvfJR6VR_VXDUA9fPM', '2023-10-18 09:02:05.227263'),
('wo5yfqm3l9z3p7hkwvp092jtdxl49rm0', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoA2n:n1AymrIWIjF3b83Rpg8SRZsxm_iQAjOSrX-LeeHSpqI', '2023-10-18 22:08:37.011190'),
('x56ysqdaiq61535abnwshjx86qhzf2of', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qoxzx:v_NAxeVzwE8-znBcs0w_gySEtuZP3fYCJIJB_HkJzco', '2023-10-21 03:29:01.557424'),
('xm7nhjnxpcnhyqk851x2npxjskeyrc7z', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qo3lm:QfHuHGMFqWp1pNpTTMCtoPxsU51iWhM9kQPCXRIM4JU', '2023-10-18 15:26:38.247632'),
('xoug6t07wz2srlfyg49qw7fc56qibd8p', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qoFah:seW-lIGCPYhc2qYUn7CEYT1mZrXvov-MaUuo-9X_rMI', '2023-10-19 04:03:59.060782'),
('xpx2d2aqw1sgfdbr6h4eoc877cqw6o3l', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIPVg:Tku2e7vNBHeXNPV3cX4KFaLRCoplpCQK6c0ktN06sbA', '2024-01-10 08:43:28.710073'),
('xwl2i7b13vp3ofl4pnibeh4bra5kk7om', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rI5W3:fvtyy7Y-Bgze-XXUhd95vt0nqb2yRM2EwvCKIVYzT1o', '2024-01-09 11:22:31.566776'),
('y9sjfvhdbyygzxn61pnjeq6cj6hpezet', 'eyJ2aXNpdGVkIjp0cnVlfQ:1rjA0R:E_4xNLSafL7VJyBhsFXniPYqR74c39Pm-zW6HYJEN9k', '2024-03-24 03:37:47.091535'),
('yxnhepz5hqslp3j0ere2os35kvai4lhy', 'eyJ2aXNpdGVkIjp0cnVlfQ:1riqo5:yePqzL8Zq-1k5U7Dk6Gizet2ipTchDDxcJqxJG9YK3w', '2024-03-23 07:07:45.960088'),
('yyb3ckqtqpaszrrsdc9rkm4jdaw271h0', '.eJxtjsEOgjAQRP-lZyWFQms5evcbmi27lSqCKcVIjP9uSTiIcU-bmTeTebGHH30kZHUME-2YgSm2ZhopGJ9ElrONZqG5Ur8YeIH-PGTN0MfgbbYg2eqO2WlA6o4ruyloYWxTGjivrAZbSeVyJaAhJ9In0klnc1DoyoN2ZaO1dchRSlnqAhRHBYRYpVLnu0iB0NzShNQpvqSZILC64EX5yxl63n2Y04TF3XOx55r9JP8y7w9u02I7:1rioBb:jysD_XMXNtNwa6Kd264ZzWr7hZ1AFCzWHYZotLMCkc4', '2024-03-23 04:19:51.104940'),
('yzs2ylv7j3h15m5cw9jpjnif4pxlfnr8', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rIORs:KmH52EeWMSfiIbRTOuAXPlI6zxNxOyh8IL4tpX13_mM', '2024-01-10 07:35:28.188581'),
('z5bhkrnh4kat9z846xtx0knj4mgdzudu', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1qr43E:3y0l_EhDD5bgwiFJzCINQkQhaarfxU-lcRd_IIJ0bZA', '2023-10-26 22:21:04.756467'),
('zax4bol9acc4x9ij150x40cf3a6m5e3e', '.eJxtjsEOgjAQRP-lZyWFQms5evcbmi27lSqCKcVIjP9uSTiIcU-bmTeTebGHH30kZHUME-2YgSm2ZhopGJ9ElrONZqG5Ur8YeIH-PGTN0MfgbbYg2eqO2WlA6o4ruyloYWxTGjivrAZbSeVyJaAhJ9In0klnc1DoyoN2ZaO1dchRSlnqAhRHBYRYpVLnu0iB0NzShNQpvqSZILC64EX5yxl63n2Y04TF3XOxzzn7Sf5l3h9thWIr:1rjDZ9:nV7ZjW033G2IQA4Nsa9HuTywk5VluJVHVnp4ALN5DC4', '2024-03-24 07:25:51.443330'),
('zjbsxr4nstyrce76ulzytv3t6kcg3qin', '.eJxVjDsOwjAQBe_iGlnx30tJnzNYtneNA8iR4qRC3J1ESgHtm5n3ZiFuaw1bpyVMyK7Ms8vvlmJ-UjsAPmK7zzzPbV2mxA-Fn7TzcUZ63U7376DGXvdaZSkwD7ZkYyLQIIV2yitwLpfkjSQjfFHCmR0nSgK1sA6kBozeagD2-QLPsjb-:1rjF5C:cYeYk9BwVTsPwStMXqpT2VsAzhePAdr2a2IYyFVFqJ8', '2024-03-24 09:03:02.145408'),
('zoiojtubrrs1hoev3olkzz2xmrulqo5p', '.eJxVjM0OwiAQhN-FsyEgf-LRe5-BLCwrVQNJaU_Gd5cmPeicJvPNzJsF2NYStp6XMCO7MslOv1mE9Mx1B_iAem88tbouc-R7hR-086lhft2O7t9BgV7GGoQw0UM01pF0ClImNZwashQlOCR98aST95FQoLVW-zM4gQ4yomGfL-7QOGw:1rKY5V:KrOD_8Kda3uZq5Bi7SFyBGab5fxlGiLxl4t8Vv4V5UM', '2024-01-16 06:17:17.294099'),
('ztniq8y7etc2nlq248knn9gqxzidip4c', '.eJxVjE0OwiAYBe_C2hBaoQWX7j0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qKsOv1uCPSU0gE_oNyrplq2dUHdFX3Qpm-V5XU93L-DDC33mhGNHxN5ZnYklobzTBBmY6yfyLGx4ASDIWKfwiQQvKfkzJAsjpLU5wsYSzks:1qqICx:_K8dachZi1X_E5PDQUM8m4CbMWaDRYbtlzGo-2_Ar2A', '2023-10-24 19:15:55.282250');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_bannersection`
--

CREATE TABLE `homepage_bannersection` (
  `id` bigint(20) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `button_text` varchar(200) DEFAULT NULL,
  `button_url` varchar(1000) DEFAULT NULL,
  `show_quote_form` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_bannersection`
--

INSERT INTO `homepage_bannersection` (`id`, `background_image`, `title`, `description`, `button_text`, `button_url`, `show_quote_form`) VALUES
(1, 'Home_images/banner-bg-1_RGprZkw.png', 'Welcome to The Synclo', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo quasi adipisci magni reprehenderit quidem perspiciatis ullam fugit optio eligendi deserunt.', 'View Projects', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_funfactsection`
--

CREATE TABLE `homepage_funfactsection` (
  `id` bigint(20) NOT NULL,
  `fact_count` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_funfactsection`
--

INSERT INTO `homepage_funfactsection` (`id`, `fact_count`, `title`, `slug`) VALUES
(2, 125, 'Happy Customers', 'happy-customers'),
(3, 208, 'Projects', 'projects'),
(4, 15, 'Running Project', 'running-project'),
(5, 100, 'Clients Satisfaction', 'clients-satisfaction');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_homepageseo`
--

CREATE TABLE `homepage_homepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_homepageseo`
--

INSERT INTO `homepage_homepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'The Synclo', 'Best Web & Application Developer in Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_projectcategory`
--

CREATE TABLE `homepage_projectcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_projectcategory`
--

INSERT INTO `homepage_projectcategory` (`id`, `title`, `slug`) VALUES
(1, 'eCommerce', 'ecommerce'),
(2, 'Lms', 'lms'),
(3, 'Magazine', 'magazine'),
(4, 'eLarning', 'elarning');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_projectssection`
--

CREATE TABLE `homepage_projectssection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `client` varchar(300) DEFAULT NULL,
  `duration` varchar(300) DEFAULT NULL,
  `button_text` varchar(200) DEFAULT NULL,
  `button_url` varchar(500) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_projectssection`
--

INSERT INTO `homepage_projectssection` (`id`, `image`, `title`, `slug`, `description`, `client`, `duration`, `button_text`, `button_url`, `category_id`) VALUES
(1, 'Home_images/1.jpg', 'Multivendor eCommerce', 'multivendor-ecommerce', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'Emart', '3 Days', 'View website', '#', 1),
(2, 'Home_images/2.png', 'Ultimate School Management', 'ultimate-school-management', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'MSHS', '3 Days', 'View website', '#', 2),
(3, 'Home_images/3.png', 'News Portal Magazine Web', 'news-portal-magazine-web', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'Metropolis', '3 Days', 'View website', '#', 3),
(4, 'Home_images/4.png', 'Ultimate POS ERP & Stock Management', 'ultimate-pos-erp-stock-management', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'Maraz Printing Press', '3 Days', 'View website', '#', 1),
(5, 'Home_images/5.png', 'Learn Management System', 'learn-management-system', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'BCS Confidence', '3 Days', 'View website', '#', 2),
(6, 'Home_images/Untitled_design.jpg', 'Multi vendor Ecommerce With POS', 'multi-vendor-ecommerce-with-pos', '<p><strong>Lorem ipsum dolor</strong></p>\r\n\r\n<p>sit amet consectetur, adipisicing elit. Rem earum magnam, non quos ipsum in tenetur doloremque maxime quam. Ipsum laboriosam molestiae eaque neque consequuntur molestias doloribus vitae? Sunt nesciunt officia iure quaerat animi nam minima placeat eius ea ab. Ab deserunt ipsa sit eaque esse necessitatibus porro nesciunt, sunt ratione tempora distinctio, facilis saepe modi enim illum, perspiciatis maxime laudantium excepturi dolores consequuntur facere ipsum ullam?</p>\r\n\r\n<p>Corporis, alias. Impedit eius quibusdam quos. Eos a consequatur saepe incidunt voluptate in consequuntur nobis repellendus dicta fuga? Beatae iste placeat, quo debitis officia culpa eveniet magnam magni animi facilis itaque temporibus dolorem!</p>', 'Craft Corner BD', '3 Days', 'View website', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_servicesection`
--

CREATE TABLE `homepage_servicesection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(220) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_servicesection`
--

INSERT INTO `homepage_servicesection` (`id`, `image`, `title`, `slug`, `description`) VALUES
(1, 'Home_images/icon-1.png', 'Web Development', 'web-development', '<p>Your design has to be as intuitive as it is helpful and insightful. In the dozen years, we&rsquo;ve been in this industry, we gathered an intimate understanding of the latest UI &amp; UX behaviors.</p>'),
(2, 'Home_images/icon-32.png', 'App development', 'app-development', '<p>Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.</p>'),
(3, 'Home_images/icon-34.png', 'SEO Solutions', 'seo-solutions', '<p>There&rsquo;s some SEO in everything you do online. But that doesn&rsquo;t mean everyone needs the same SEO services. Build your search engine optimization foundation with the trusted experts.</p>'),
(4, 'Home_images/icon-36.png', 'Online advertising', 'online-advertising', '<p>Online Advertising is the art of using the internet as a medium to deliver marketing messages to an identified and intended audience. We have the best prices in town!</p>'),
(5, 'Home_images/icon-33.png', 'eCommerce', 'ecommerce', '<p>We design professional looking yet Mobile Apps. Our designs are search engine and user friedly eCommerce solution</p>'),
(6, 'Home_images/icon-40.png', 'Business consulting', 'business-consulting', '<p>Management consulting is the practice of providing consulting services to organizations to improve their performance or in any way to assist in achieving organizational objectives.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_testimonialssection`
--

CREATE TABLE `homepage_testimonialssection` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `client_name` varchar(300) DEFAULT NULL,
  `client_designation` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `homepage_testimonialssection`
--

INSERT INTO `homepage_testimonialssection` (`id`, `title`, `slug`, `client_name`, `client_designation`, `description`) VALUES
(1, 'P Digital', 'p-digital', 'Shakib', 'CEO', 'They worked with me in two project one is for my agency another is for my eCommerce. Both are best what they given me.'),
(2, 'A Aromas', 'a-aromas', 'Kashif', 'CEO', 'They are soo good. The Synclo provided my project on time for my eCommerce website. Satisfied with their work.'),
(3, 'The ABS', 'the-abs', 'Mira Tabassum', 'CEO', 'The Synclo is a wonderful company. They always on time and pleasant and produces great work.'),
(4, 'Robax Org', 'robax-org', 'Sobuj Talukdar', 'CEO', 'Another great project completed with The Synclo! On time and on budget. I will definitely be back. Thank you'),
(5, 'Kalams Kitchen', 'kalams-kitchen', 'Miraz Uddin', 'Volunteer', 'The Synclo was great. He understood my requirements and delivered the results in a timely manner.');

-- --------------------------------------------------------

--
-- Table structure for table `hrm_allowance`
--

CREATE TABLE `hrm_allowance` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `created_at` date NOT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_basicsalary`
--

CREATE TABLE `hrm_basicsalary` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `created_at` date NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_branch`
--

CREATE TABLE `hrm_branch` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_deduction`
--

CREATE TABLE `hrm_deduction` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `created_at` date NOT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_department`
--

CREATE TABLE `hrm_department` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_designation`
--

CREATE TABLE `hrm_designation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_event`
--

CREATE TABLE `hrm_event` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `holiday_id` bigint(20) DEFAULT NULL,
  `meeting_id` bigint(20) DEFAULT NULL,
  `notice_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_holiday`
--

CREATE TABLE `hrm_holiday` (
  `id` bigint(20) NOT NULL,
  `occasion` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` date NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_jobtype`
--

CREATE TABLE `hrm_jobtype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_leave`
--

CREATE TABLE `hrm_leave` (
  `id` bigint(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `leave_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_leavetype`
--

CREATE TABLE `hrm_leavetype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_meeting`
--

CREATE TABLE `hrm_meeting` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` time(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `meeting_type` varchar(100) NOT NULL,
  `meeting_link` varchar(300) DEFAULT NULL,
  `created_at` date NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_notice`
--

CREATE TABLE `hrm_notice` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_notification`
--

CREATE TABLE `hrm_notification` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` date NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_notification_readed_by`
--

CREATE TABLE `hrm_notification_readed_by` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payroll`
--

CREATE TABLE `hrm_payroll` (
  `id` bigint(20) NOT NULL,
  `created_at` date NOT NULL,
  `employee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payslip`
--

CREATE TABLE `hrm_payslip` (
  `id` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `created_at` date NOT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_termination`
--

CREATE TABLE `hrm_termination` (
  `id` bigint(20) NOT NULL,
  `reason` longtext NOT NULL,
  `created_at` date NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `termination_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_terminationtype`
--

CREATE TABLE `hrm_terminationtype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_warning`
--

CREATE TABLE `hrm_warning` (
  `id` bigint(20) NOT NULL,
  `reason` longtext NOT NULL,
  `created_at` date NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals_agreement`
--

CREATE TABLE `legals_agreement` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` varchar(100) NOT NULL,
  `is_signed` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `singed_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals_privacypolicypage`
--

CREATE TABLE `legals_privacypolicypage` (
  `id` bigint(20) NOT NULL,
  `policy` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals_privacypolicypageseo`
--

CREATE TABLE `legals_privacypolicypageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(300) NOT NULL,
  `meta_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals_termsnconditionpage`
--

CREATE TABLE `legals_termsnconditionpage` (
  `id` bigint(20) NOT NULL,
  `terms` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legals_termsnconditionpageseo`
--

CREATE TABLE `legals_termsnconditionpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(300) NOT NULL,
  `meta_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_cart`
--

CREATE TABLE `order_cart` (
  `id` bigint(20) NOT NULL,
  `unit_type` varchar(100) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `unit_price` double NOT NULL,
  `subtotal` double NOT NULL,
  `created_at` date NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `id` bigint(20) NOT NULL,
  `total_amount` double NOT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `transaction_id` varchar(555) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `ordered_at` date NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_order_products`
--

CREATE TABLE `order_order_products` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `items_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfoliopage_portfoliopageseo`
--

CREATE TABLE `portfoliopage_portfoliopageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `portfoliopage_portfoliopageseo`
--

INSERT INTO `portfoliopage_portfoliopageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Projects', 'The Synclo');

-- --------------------------------------------------------

--
-- Table structure for table `pricingpage_pricing`
--

CREATE TABLE `pricingpage_pricing` (
  `id` bigint(20) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` varchar(300) DEFAULT NULL,
  `price` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `button_text` varchar(200) NOT NULL,
  `button_url` varchar(1000) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `featured_badge_title` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricingpage_pricingpageseo`
--

CREATE TABLE `pricingpage_pricingpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicepage_servicepageseo`
--

CREATE TABLE `servicepage_servicepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `servicepage_servicepageseo`
--

INSERT INTO `servicepage_servicepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Services', 'The Synclo');

-- --------------------------------------------------------

--
-- Table structure for table `settings_headerfooter`
--

CREATE TABLE `settings_headerfooter` (
  `id` bigint(20) NOT NULL,
  `footer_col1_subtitle` varchar(300) NOT NULL,
  `footer_col1_title` varchar(300) NOT NULL,
  `footer_col1_button` varchar(300) NOT NULL,
  `footer_col1_button_url` varchar(500) NOT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `linkedin` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `footer_col2_title1` varchar(300) NOT NULL,
  `footer_col2_description1` longtext NOT NULL,
  `footer_col2_title2` varchar(300) NOT NULL,
  `footer_col2_description2` longtext NOT NULL,
  `footer_copyright` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_headerfooter`
--

INSERT INTO `settings_headerfooter` (`id`, `footer_col1_subtitle`, `footer_col1_title`, `footer_col1_button`, `footer_col1_button_url`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `pinterest`, `footer_col2_title1`, `footer_col2_description1`, `footer_col2_title2`, `footer_col2_description2`, `footer_copyright`) VALUES
(1, 'READY TO DO THIS', 'Let\'s get to work', 'Get the offer', '/pricing', 'https://facebook.com', 'https://instagram.com', 'https://twitter.com', 'https://linkedin.com', 'https://youtube.com', 'https://pinterest.com', 'Resourses', '<ul>\r\n	<li><a href=\"/contact-us/\">Contact</a></li>\r\n	<li><a href=\"/privacy-policy/\">Privacy Policy</a></li>\r\n	<li><a href=\"/terms-conditions/\">Terms of Use</a></li>\r\n</ul>', 'Support', '<ul>\r\n	<li><a href=\"blog.html\">Blog</a></li>\r\n	<li><a href=\"case-study.html\">Case Studies</a></li>\r\n	<li><a href=\"portfolio.html\">Portfolio</a></li>\r\n</ul>', '© 2021. All rights reserved by The Synclo');

-- --------------------------------------------------------

--
-- Table structure for table `settings_menu`
--

CREATE TABLE `settings_menu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `url` varchar(500) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_menu`
--

INSERT INTO `settings_menu` (`id`, `name`, `slug`, `url`, `order`) VALUES
(1, 'Home', 'home', '/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings_paymentmethod`
--

CREATE TABLE `settings_paymentmethod` (
  `id` bigint(20) NOT NULL,
  `ssl_commerze_store_id` varchar(255) DEFAULT NULL,
  `ssl_commerze_store_pass` varchar(255) DEFAULT NULL,
  `ssl_commerze_is_sandbox` tinyint(1) NOT NULL,
  `ssl_commerze_is_active` tinyint(1) NOT NULL,
  `paypal_client_id` varchar(5000) DEFAULT NULL,
  `paypal_client_secret` varchar(5000) DEFAULT NULL,
  `paypal_is_sandbox` tinyint(1) NOT NULL,
  `paypal_is_active` tinyint(1) NOT NULL,
  `stripe_publish_key` varchar(5000) DEFAULT NULL,
  `stripe_secret_key` varchar(5000) DEFAULT NULL,
  `stripe_is_sandbox` tinyint(1) NOT NULL,
  `stripe_is_active` tinyint(1) NOT NULL,
  `instamojo_api_key` varchar(5000) DEFAULT NULL,
  `instamojo_auth_token` varchar(5000) DEFAULT NULL,
  `instamojo_is_sandbox` tinyint(1) NOT NULL,
  `instamojo_is_active` tinyint(1) NOT NULL,
  `razorpay_api_key` varchar(5000) DEFAULT NULL,
  `razorpay_api_secret` varchar(5000) DEFAULT NULL,
  `razorpay_is_active` tinyint(1) NOT NULL,
  `offline_payment_instruction` longtext NOT NULL,
  `offline_payment_is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings_seosetting`
--

CREATE TABLE `settings_seosetting` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `tag_line` varchar(600) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `seo_keywords` longtext DEFAULT NULL,
  `meta_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_seosetting`
--

INSERT INTO `settings_seosetting` (`id`, `meta_title`, `tag_line`, `meta_description`, `seo_keywords`, `meta_image`) VALUES
(1, 'The Synclo', NULL, 'Best Web & Application Developer In Bangladesh', 'tcgcrm, crm, django', 'app_config/Preview_X2dP094.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings_websitesetting`
--

CREATE TABLE `settings_websitesetting` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `logo_dark` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_width` int(11) DEFAULT NULL,
  `invoice_logo` varchar(100) DEFAULT NULL,
  `invoice_logo_width` int(11) DEFAULT NULL,
  `favicon` varchar(100) NOT NULL,
  `author` varchar(200) DEFAULT NULL,
  `email_address` varchar(500) DEFAULT NULL,
  `phone_or_whatsapp` varchar(20) DEFAULT NULL,
  `price_ragne` varchar(50) DEFAULT NULL,
  `country` varchar(300) DEFAULT NULL,
  `address` varchar(700) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `Zip` int(11) NOT NULL,
  `analytics_code` varchar(300) DEFAULT NULL,
  `facebook_pixel_code` longtext DEFAULT NULL,
  `facebook_chat_code` longtext DEFAULT NULL,
  `whatsapp_is_active` tinyint(1) NOT NULL,
  `messenger_is_active` tinyint(1) NOT NULL,
  `default_menu_is_active` tinyint(1) NOT NULL,
  `currency_name` varchar(100) NOT NULL,
  `currency_symbol` varchar(150) NOT NULL,
  `twilio_sid` varchar(500) DEFAULT NULL,
  `twilio_auth_token` varchar(500) DEFAULT NULL,
  `twilio_from_number` varchar(15) DEFAULT NULL,
  `openai_api` varchar(1000) DEFAULT NULL,
  `max_token` int(11) DEFAULT NULL,
  `is_enabled_for_user` tinyint(1) NOT NULL,
  `is_purchasing_enable` tinyint(1) NOT NULL,
  `is_auto_invoice_enable` tinyint(1) NOT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_websitesetting`
--

INSERT INTO `settings_websitesetting` (`id`, `name`, `logo_dark`, `logo`, `logo_width`, `invoice_logo`, `invoice_logo_width`, `favicon`, `author`, `email_address`, `phone_or_whatsapp`, `price_ragne`, `country`, `address`, `state`, `Zip`, `analytics_code`, `facebook_pixel_code`, `facebook_chat_code`, `whatsapp_is_active`, `messenger_is_active`, `default_menu_is_active`, `currency_name`, `currency_symbol`, `twilio_sid`, `twilio_auth_token`, `twilio_from_number`, `openai_api`, `max_token`, `is_enabled_for_user`, `is_purchasing_enable`, `is_auto_invoice_enable`, `custom_css`, `custom_js`) VALUES
(1, 'The Synclo', 'app_config/white.png', 'app_config/blue.png', NULL, '', NULL, 'app_config/favicon.jpg', 'The Synclo', 'test@gmail.com', '01234567890', '60$ to 7000$', 'Bangladesh', 'Gazipur', 'Dhaka', 1000, 'GA_MEASUREMENT_ID', '', '', 1, 1, 1, 'USD', '$', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_supportticket`
--

CREATE TABLE `userapp_supportticket` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `created_at` date NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userapp_ticketreply`
--

CREATE TABLE `userapp_ticketreply` (
  `id` bigint(20) NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` date NOT NULL,
  `ticket_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutpage_aboutpageseo`
--
ALTER TABLE `aboutpage_aboutpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutpage_aboutsettings`
--
ALTER TABLE `aboutpage_aboutsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutpage_clientssection`
--
ALTER TABLE `aboutpage_clientssection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aboutpage_clientssection_slug_7ab35564` (`slug`);

--
-- Indexes for table `aboutpage_teamsection`
--
ALTER TABLE `aboutpage_teamsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aboutpage_teamsection_slug_8443960d` (`slug`);

--
-- Indexes for table `ai_openaichatrecord`
--
ALTER TABLE `ai_openaichatrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_openaichatrecord_user_id_5d2442bd_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `analytics_visitor`
--
ALTER TABLE `analytics_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authapp_passwordresettoken`
--
ALTER TABLE `authapp_passwordresettoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `authapp_passwordresettoken_user_id_9936e1dd_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `authapp_user`
--
ALTER TABLE `authapp_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `authapp_userprofile`
--
ALTER TABLE `authapp_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `authapp_userprofile_slug_967c9c8a` (`slug`),
  ADD KEY `authapp_userprofile_branch_id_cf15c62b_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `authapp_userprofile_department_id_09c212c0_fk_hrm_department_id` (`department_id`),
  ADD KEY `authapp_userprofile_designation_id_862a3c17_fk_hrm_desig` (`designation_id`),
  ADD KEY `authapp_userprofile_job_type_id_aa02d131_fk_hrm_jobtype_id` (`job_type_id`);

--
-- Indexes for table `authapp_user_groups`
--
ALTER TABLE `authapp_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authapp_user_groups_user_id_group_id_532435ff_uniq` (`user_id`,`group_id`),
  ADD KEY `authapp_user_groups_group_id_361087d7_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `authapp_user_user_permissions`
--
ALTER TABLE `authapp_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authapp_user_user_permis_user_id_permission_id_d73ed934_uniq` (`user_id`,`permission_id`),
  ADD KEY `authapp_user_user_pe_permission_id_ea3ff82e_fk_auth_perm` (`permission_id`);

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
-- Indexes for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogcategory_slug_7996de7a` (`slug`);

--
-- Indexes for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogs_author_id_a7ca4a98_fk_authapp_userprofile_id` (`author_id`),
  ADD KEY `blog_blogs_category_id_e3e6d3cc_fk_blog_blogcategory_id` (`category_id`),
  ADD KEY `blog_blogs_slug_64335c5e` (`slug`);

--
-- Indexes for table `contactpage_contact`
--
ALTER TABLE `contactpage_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactpage_contactinfo`
--
ALTER TABLE `contactpage_contactinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactpage_contactpageseo`
--
ALTER TABLE `contactpage_contactpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactpage_subscriber`
--
ALTER TABLE `contactpage_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `crm_crmprojects`
--
ALTER TABLE `crm_crmprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_crmprojects_client_id_69a50261_fk_authapp_user_id` (`client_id`),
  ADD KEY `crm_crmprojects_slug_e2e16801` (`slug`);

--
-- Indexes for table `crm_crmprojects_team`
--
ALTER TABLE `crm_crmprojects_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_crmprojects_team_crmprojects_id_user_id_0f99e1c2_uniq` (`crmprojects_id`,`user_id`),
  ADD KEY `crm_crmprojects_team_user_id_b85fdedd_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `crm_crmtasks`
--
ALTER TABLE `crm_crmtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_crmtasks_project_id_12258220_fk_crm_crmprojects_id` (`project_id`),
  ADD KEY `crm_crmtasks_slug_b74f61af` (`slug`);

--
-- Indexes for table `crm_crmtasks_assigned_to`
--
ALTER TABLE `crm_crmtasks_assigned_to`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_crmtasks_assigned_to_crmtasks_id_user_id_55c0a454_uniq` (`crmtasks_id`,`user_id`),
  ADD KEY `crm_crmtasks_assigned_to_user_id_3e828222_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `crm_expense`
--
ALTER TABLE `crm_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_expense_slug_2530ec13` (`slug`);

--
-- Indexes for table `crm_invoice`
--
ALTER TABLE `crm_invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `crm_invoice_client_id_be8da085_fk_authapp_user_id` (`client_id`),
  ADD KEY `crm_invoice_project_id_54891b9d_fk_crm_crmprojects_id` (`project_id`);

--
-- Indexes for table `crm_invoiceitem`
--
ALTER TABLE `crm_invoiceitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_invoiceitem_item_id_545495ff_fk_crm_items_id` (`item_id`),
  ADD KEY `crm_invoiceitem_invoice_id_441542c3` (`invoice_id`);

--
-- Indexes for table `crm_invoice_products`
--
ALTER TABLE `crm_invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_invoice_products_invoice_id_items_id_1f4c0155_uniq` (`invoice_id`,`items_id`),
  ADD KEY `crm_invoice_products_items_id_9dbe5b5a_fk_crm_items_id` (`items_id`);

--
-- Indexes for table `crm_itemcategory`
--
ALTER TABLE `crm_itemcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_itemcategory_slug_f2ae55ec` (`slug`);

--
-- Indexes for table `crm_items`
--
ALTER TABLE `crm_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crm_items_slug_ea8c2274_uniq` (`slug`),
  ADD KEY `crm_items_category_id_c74e87a4_fk_crm_itemcategory_id` (`category_id`);

--
-- Indexes for table `crm_payments`
--
ALTER TABLE `crm_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_payments_invoice_id_8e1cc834_fk_crm_invoice_id` (`invoice_id`),
  ADD KEY `crm_payments_slug_58a3017b` (`slug`);

--
-- Indexes for table `crm_projectfile`
--
ALTER TABLE `crm_projectfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_projectfile_project_id_74e09da7_fk_crm_crmprojects_id` (`project_id`);

--
-- Indexes for table `crm_yearlypaymentstatistics`
--
ALTER TABLE `crm_yearlypaymentstatistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authapp_user_id` (`user_id`);

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
-- Indexes for table `homepage_bannersection`
--
ALTER TABLE `homepage_bannersection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_funfactsection`
--
ALTER TABLE `homepage_funfactsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_funfactsection_slug_6a0b8707` (`slug`);

--
-- Indexes for table `homepage_homepageseo`
--
ALTER TABLE `homepage_homepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_projectcategory`
--
ALTER TABLE `homepage_projectcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_projectcategory_slug_fa56e89e` (`slug`);

--
-- Indexes for table `homepage_projectssection`
--
ALTER TABLE `homepage_projectssection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_projectssec_category_id_bfde511f_fk_homepage_` (`category_id`),
  ADD KEY `homepage_projectssection_slug_4865758e` (`slug`);

--
-- Indexes for table `homepage_servicesection`
--
ALTER TABLE `homepage_servicesection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_servicesection_slug_a7b0d7d3` (`slug`);

--
-- Indexes for table `homepage_testimonialssection`
--
ALTER TABLE `homepage_testimonialssection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homepage_testimonialssection_slug_a8086c38` (`slug`);

--
-- Indexes for table `hrm_allowance`
--
ALTER TABLE `hrm_allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_allowance_payroll_id_4990a7cc_fk_hrm_payroll_id` (`payroll_id`);

--
-- Indexes for table `hrm_basicsalary`
--
ALTER TABLE `hrm_basicsalary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_basicsalary_created_by_id_e633d292_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_basicsalary_payroll_id_12c376f5_fk_hrm_payroll_id` (`payroll_id`);

--
-- Indexes for table `hrm_branch`
--
ALTER TABLE `hrm_branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_deduction`
--
ALTER TABLE `hrm_deduction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_deduction_payroll_id_9987436b_fk_hrm_payroll_id` (`payroll_id`);

--
-- Indexes for table `hrm_department`
--
ALTER TABLE `hrm_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_designation`
--
ALTER TABLE `hrm_designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_event`
--
ALTER TABLE `hrm_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_event_branch_id_a0f7c6c6_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `hrm_event_created_by_id_67cd9253_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_event_holiday_id_d139c0cc_fk_hrm_holiday_id` (`holiday_id`),
  ADD KEY `hrm_event_meeting_id_4a9bee49_fk_hrm_meeting_id` (`meeting_id`),
  ADD KEY `hrm_event_notice_id_c652228d_fk_hrm_notice_id` (`notice_id`);

--
-- Indexes for table `hrm_holiday`
--
ALTER TABLE `hrm_holiday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_holiday_branch_id_dc82af88_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `hrm_holiday_created_by_id_d0ea68e0_fk_authapp_user_id` (`created_by_id`);

--
-- Indexes for table `hrm_jobtype`
--
ALTER TABLE `hrm_jobtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_leave`
--
ALTER TABLE `hrm_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_leave_created_by_id_6fb12af5_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_leave_employee_id_46948426_fk_authapp_user_id` (`employee_id`),
  ADD KEY `hrm_leave_leave_type_id_0bde4e41_fk_hrm_leavetype_id` (`leave_type_id`);

--
-- Indexes for table `hrm_leavetype`
--
ALTER TABLE `hrm_leavetype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_meeting`
--
ALTER TABLE `hrm_meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_meeting_branch_id_ac71e48a_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `hrm_meeting_created_by_id_1e07b5ce_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_meeting_department_id_5bc3e8f9_fk_hrm_department_id` (`department_id`);

--
-- Indexes for table `hrm_notice`
--
ALTER TABLE `hrm_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_notice_branch_id_63781a79_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `hrm_notice_created_by_id_7015dd97_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_notice_department_id_de2d9e43_fk_hrm_department_id` (`department_id`);

--
-- Indexes for table `hrm_notification`
--
ALTER TABLE `hrm_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_notification_branch_id_66413191_fk_hrm_branch_id` (`branch_id`),
  ADD KEY `hrm_notification_department_id_3e8bf60a_fk_hrm_department_id` (`department_id`);

--
-- Indexes for table `hrm_notification_readed_by`
--
ALTER TABLE `hrm_notification_readed_by`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hrm_notification_readed_by_notification_id_user_id_1fc6efd7_uniq` (`notification_id`,`user_id`),
  ADD KEY `hrm_notification_readed_by_user_id_a468da48_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `hrm_payroll`
--
ALTER TABLE `hrm_payroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_payroll_employee_id_6f33cb4f_fk_authapp_user_id` (`employee_id`);

--
-- Indexes for table `hrm_payslip`
--
ALTER TABLE `hrm_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_payslip_payroll_id_11fa7ca7_fk_hrm_payroll_id` (`payroll_id`);

--
-- Indexes for table `hrm_termination`
--
ALTER TABLE `hrm_termination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_termination_created_by_id_0263abd6_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_termination_employee_id_f4c0b788_fk_authapp_user_id` (`employee_id`),
  ADD KEY `hrm_termination_termination_type_id_0e5bb884_fk_hrm_termi` (`termination_type_id`);

--
-- Indexes for table `hrm_terminationtype`
--
ALTER TABLE `hrm_terminationtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `hrm_warning`
--
ALTER TABLE `hrm_warning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_warning_created_by_id_9b19a777_fk_authapp_user_id` (`created_by_id`),
  ADD KEY `hrm_warning_employee_id_d9494cca_fk_authapp_user_id` (`employee_id`);

--
-- Indexes for table `legals_agreement`
--
ALTER TABLE `legals_agreement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legals_agreement_client_id_e12b426c_fk_authapp_user_id` (`client_id`),
  ADD KEY `legals_agreement_service_id_f0bd0dae_fk_pricingpage_pricing_id` (`service_id`);

--
-- Indexes for table `legals_privacypolicypage`
--
ALTER TABLE `legals_privacypolicypage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legals_privacypolicypageseo`
--
ALTER TABLE `legals_privacypolicypageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legals_termsnconditionpage`
--
ALTER TABLE `legals_termsnconditionpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legals_termsnconditionpageseo`
--
ALTER TABLE `legals_termsnconditionpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cart_order_id_93de4ce2_fk_order_order_id` (`order_id`),
  ADD KEY `order_cart_product_id_f972b785_fk_crm_items_id` (`product_id`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_order_user_id_7cf9bc2b_fk_authapp_user_id` (`user_id`);

--
-- Indexes for table `order_order_products`
--
ALTER TABLE `order_order_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_order_products_order_id_items_id_f4f4dbd0_uniq` (`order_id`,`items_id`),
  ADD KEY `order_order_products_items_id_0b1ef55d_fk_crm_items_id` (`items_id`);

--
-- Indexes for table `portfoliopage_portfoliopageseo`
--
ALTER TABLE `portfoliopage_portfoliopageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricingpage_pricing`
--
ALTER TABLE `pricingpage_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricingpage_pricing_slug_ed10df18` (`slug`);

--
-- Indexes for table `pricingpage_pricingpageseo`
--
ALTER TABLE `pricingpage_pricingpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicepage_servicepageseo`
--
ALTER TABLE `servicepage_servicepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_headerfooter`
--
ALTER TABLE `settings_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_menu`
--
ALTER TABLE `settings_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_menu_slug_6c42bc89` (`slug`);

--
-- Indexes for table `settings_paymentmethod`
--
ALTER TABLE `settings_paymentmethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userapp_supportticket`
--
ALTER TABLE `userapp_supportticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapp_supportticket_client_id_bbd7ea70_fk_authapp_user_id` (`client_id`),
  ADD KEY `userapp_supportticket_project_id_fe2f1389_fk_crm_crmprojects_id` (`project_id`);

--
-- Indexes for table `userapp_ticketreply`
--
ALTER TABLE `userapp_ticketreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapp_ticketreply_ticket_id_96e5cd96_fk_userapp_s` (`ticket_id`),
  ADD KEY `userapp_ticketreply_user_id_fbe3e55a_fk_authapp_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutpage_aboutpageseo`
--
ALTER TABLE `aboutpage_aboutpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aboutpage_aboutsettings`
--
ALTER TABLE `aboutpage_aboutsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aboutpage_clientssection`
--
ALTER TABLE `aboutpage_clientssection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aboutpage_teamsection`
--
ALTER TABLE `aboutpage_teamsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ai_openaichatrecord`
--
ALTER TABLE `ai_openaichatrecord`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics_visitor`
--
ALTER TABLE `analytics_visitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authapp_passwordresettoken`
--
ALTER TABLE `authapp_passwordresettoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authapp_user`
--
ALTER TABLE `authapp_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `authapp_userprofile`
--
ALTER TABLE `authapp_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `authapp_user_groups`
--
ALTER TABLE `authapp_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authapp_user_user_permissions`
--
ALTER TABLE `authapp_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactpage_contact`
--
ALTER TABLE `contactpage_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactpage_contactinfo`
--
ALTER TABLE `contactpage_contactinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactpage_contactpageseo`
--
ALTER TABLE `contactpage_contactpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactpage_subscriber`
--
ALTER TABLE `contactpage_subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crm_crmprojects`
--
ALTER TABLE `crm_crmprojects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_crmprojects_team`
--
ALTER TABLE `crm_crmprojects_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_crmtasks`
--
ALTER TABLE `crm_crmtasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_crmtasks_assigned_to`
--
ALTER TABLE `crm_crmtasks_assigned_to`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_expense`
--
ALTER TABLE `crm_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_invoice`
--
ALTER TABLE `crm_invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_invoiceitem`
--
ALTER TABLE `crm_invoiceitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_invoice_products`
--
ALTER TABLE `crm_invoice_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_itemcategory`
--
ALTER TABLE `crm_itemcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_items`
--
ALTER TABLE `crm_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_payments`
--
ALTER TABLE `crm_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_projectfile`
--
ALTER TABLE `crm_projectfile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_yearlypaymentstatistics`
--
ALTER TABLE `crm_yearlypaymentstatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `homepage_bannersection`
--
ALTER TABLE `homepage_bannersection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_funfactsection`
--
ALTER TABLE `homepage_funfactsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homepage_homepageseo`
--
ALTER TABLE `homepage_homepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_projectcategory`
--
ALTER TABLE `homepage_projectcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `homepage_projectssection`
--
ALTER TABLE `homepage_projectssection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homepage_servicesection`
--
ALTER TABLE `homepage_servicesection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homepage_testimonialssection`
--
ALTER TABLE `homepage_testimonialssection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hrm_allowance`
--
ALTER TABLE `hrm_allowance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_basicsalary`
--
ALTER TABLE `hrm_basicsalary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_branch`
--
ALTER TABLE `hrm_branch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_deduction`
--
ALTER TABLE `hrm_deduction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_department`
--
ALTER TABLE `hrm_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_designation`
--
ALTER TABLE `hrm_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_event`
--
ALTER TABLE `hrm_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_holiday`
--
ALTER TABLE `hrm_holiday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_jobtype`
--
ALTER TABLE `hrm_jobtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_leave`
--
ALTER TABLE `hrm_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_leavetype`
--
ALTER TABLE `hrm_leavetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_meeting`
--
ALTER TABLE `hrm_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_notice`
--
ALTER TABLE `hrm_notice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_notification`
--
ALTER TABLE `hrm_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_notification_readed_by`
--
ALTER TABLE `hrm_notification_readed_by`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_payroll`
--
ALTER TABLE `hrm_payroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_payslip`
--
ALTER TABLE `hrm_payslip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_termination`
--
ALTER TABLE `hrm_termination`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_terminationtype`
--
ALTER TABLE `hrm_terminationtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_warning`
--
ALTER TABLE `hrm_warning`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals_agreement`
--
ALTER TABLE `legals_agreement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `legals_privacypolicypage`
--
ALTER TABLE `legals_privacypolicypage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals_privacypolicypageseo`
--
ALTER TABLE `legals_privacypolicypageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals_termsnconditionpage`
--
ALTER TABLE `legals_termsnconditionpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legals_termsnconditionpageseo`
--
ALTER TABLE `legals_termsnconditionpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_order_products`
--
ALTER TABLE `order_order_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfoliopage_portfoliopageseo`
--
ALTER TABLE `portfoliopage_portfoliopageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pricingpage_pricing`
--
ALTER TABLE `pricingpage_pricing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricingpage_pricingpageseo`
--
ALTER TABLE `pricingpage_pricingpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicepage_servicepageseo`
--
ALTER TABLE `servicepage_servicepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_headerfooter`
--
ALTER TABLE `settings_headerfooter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_menu`
--
ALTER TABLE `settings_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_paymentmethod`
--
ALTER TABLE `settings_paymentmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userapp_supportticket`
--
ALTER TABLE `userapp_supportticket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userapp_ticketreply`
--
ALTER TABLE `userapp_ticketreply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_openaichatrecord`
--
ALTER TABLE `ai_openaichatrecord`
  ADD CONSTRAINT `ai_openaichatrecord_user_id_5d2442bd_fk_authapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `authapp_user` (`id`);

--
-- Constraints for table `authapp_passwordresettoken`
--
ALTER TABLE `authapp_passwordresettoken`
  ADD CONSTRAINT `authapp_passwordresettoken_user_id_9936e1dd_fk_authapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `authapp_user` (`id`);

--
-- Constraints for table `authapp_userprofile`
--
ALTER TABLE `authapp_userprofile`
  ADD CONSTRAINT `authapp_userprofile_branch_id_cf15c62b_fk_hrm_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `hrm_branch` (`id`),
  ADD CONSTRAINT `authapp_userprofile_department_id_09c212c0_fk_hrm_department_id` FOREIGN KEY (`department_id`) REFERENCES `hrm_department` (`id`),
  ADD CONSTRAINT `authapp_userprofile_designation_id_862a3c17_fk_hrm_desig` FOREIGN KEY (`designation_id`) REFERENCES `hrm_designation` (`id`),
  ADD CONSTRAINT `authapp_userprofile_job_type_id_aa02d131_fk_hrm_jobtype_id` FOREIGN KEY (`job_type_id`) REFERENCES `hrm_jobtype` (`id`),
  ADD CONSTRAINT `authapp_userprofile_user_id_4aaadabc_fk_authapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `authapp_user` (`id`);

--
-- Constraints for table `authapp_user_groups`
--
ALTER TABLE `authapp_user_groups`
  ADD CONSTRAINT `authapp_user_groups_group_id_361087d7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `authapp_user_groups_user_id_aad8a001_fk_authapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `authapp_user` (`id`);

--
-- Constraints for table `authapp_user_user_permissions`
--
ALTER TABLE `authapp_user_user_permissions`
  ADD CONSTRAINT `authapp_user_user_pe_permission_id_ea3ff82e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `authapp_user_user_pe_user_id_fb111ce4_fk_authapp_u` FOREIGN KEY (`user_id`) REFERENCES `authapp_user` (`id`);

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
-- Constraints for table `crm_crmprojects`
--
ALTER TABLE `crm_crmprojects`
  ADD CONSTRAINT `crm_crmprojects_client_id_69a50261_fk_authapp_user_id` FOREIGN KEY (`client_id`) REFERENCES `authapp_user` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
