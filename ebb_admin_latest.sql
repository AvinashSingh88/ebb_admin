-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 07:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebb_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `address_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `house_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `first_name`, `last_name`, `pin`, `state`, `city`, `user_id`, `address_type`, `address`, `country_id`, `state_id`, `city_id`, `longitude`, `latitude`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`, `house_no`, `area`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 8, '', 'HN 60', 101, 13, 1096, NULL, NULL, '114455', '+919876543210', 0, '2022-04-16 07:51:06', '2022-04-16 07:51:06', NULL, NULL),
(3, 'Rana', 'Sharma', '854301', 'West Bengal', 'Siligudi', 27, 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, '9199758612', 0, '2022-06-15 11:44:06', '2022-06-15 14:57:18', '25', 'Srinagar Cooperative Bazar'),
(4, 'Avinash', 'Singh', '854301', 'Uttar Pradesh', 'Kanpur', 27, 'Office', NULL, NULL, 0, NULL, NULL, NULL, NULL, '8825171386', 0, '2022-06-15 12:17:42', '2022-06-15 12:17:42', '15', 'Janta Chowk');

-- --------------------------------------------------------

--
-- Table structure for table `app_translations`
--

CREATE TABLE `app_translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13'),
(3, 'Liter', '2022-04-12 01:01:16', '2022-04-12 01:01:16'),
(4, 'test', '2022-04-12 01:58:14', '2022-04-12 01:58:14'),
(5, 'meter', '2022-04-22 10:55:17', '2022-04-22 10:55:17'),
(6, 'Number', '2022-04-25 10:14:31', '2022-04-25 10:14:31'),
(7, 'Size (Inches)', '2022-06-08 06:07:26', '2022-06-08 06:07:26'),
(8, 'Height', '2022-06-08 06:23:34', '2022-06-08 06:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_category`
--

CREATE TABLE `attribute_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_category`
--

INSERT INTO `attribute_category` (`id`, `category_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(4, 2, 1, '2022-06-06 05:38:53', '2022-06-06 05:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Liter', 'en', '2022-04-12 01:01:16', '2022-04-12 01:01:16'),
(2, 4, 'test', 'en', '2022-04-12 01:58:14', '2022-04-12 01:58:14'),
(3, 5, 'meter', 'en', '2022-04-22 10:55:17', '2022-04-22 10:55:17'),
(4, 6, 'Number', 'en', '2022-04-25 10:14:31', '2022-04-25 10:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chiffon', NULL, '2022-04-12 00:43:33', '2022-04-12 00:43:33'),
(2, 2, 'Cotton', NULL, '2022-04-12 00:43:54', '2022-04-12 00:43:54'),
(3, 2, 'Crepe', NULL, '2022-04-12 00:44:06', '2022-04-12 00:44:06'),
(4, 2, 'Denim', NULL, '2022-04-12 00:45:57', '2022-04-12 00:45:57'),
(5, 1, 'S', NULL, '2022-04-12 01:00:11', '2022-04-12 01:00:11'),
(6, 1, 'M', NULL, '2022-04-12 01:00:17', '2022-04-12 01:00:17'),
(7, 1, 'L', NULL, '2022-04-12 01:00:21', '2022-04-12 01:00:21'),
(8, 1, 'XL', NULL, '2022-04-12 01:00:36', '2022-04-12 01:00:36'),
(9, 1, 'XXL', NULL, '2022-04-12 01:00:44', '2022-04-12 01:00:44'),
(10, 4, 'Attr1', NULL, '2022-04-12 01:58:26', '2022-04-12 01:58:26'),
(11, 4, 'Attr2', NULL, '2022-04-12 01:58:30', '2022-04-12 01:58:30'),
(12, 1, 'XXXL', NULL, '2022-04-12 01:58:52', '2022-04-12 01:58:52'),
(13, 5, '10 m', NULL, '2022-04-22 10:55:37', '2022-04-22 10:55:37'),
(14, 5, '20 m', NULL, '2022-04-22 10:55:42', '2022-04-22 10:55:42'),
(15, 5, '30 m', NULL, '2022-04-22 10:55:48', '2022-04-22 10:55:48'),
(16, 6, '6', NULL, '2022-04-25 10:17:44', '2022-04-25 10:17:44'),
(17, 6, '7', NULL, '2022-04-25 10:17:47', '2022-04-25 10:17:47'),
(18, 6, '8', NULL, '2022-04-25 10:17:50', '2022-04-25 10:17:50'),
(19, 7, 'Length', NULL, '2022-06-08 06:23:11', '2022-06-08 06:23:11'),
(20, 7, 'Height', NULL, '2022-06-08 06:23:51', '2022-06-08 06:23:51'),
(21, 7, 'Breadth', NULL, '2022-06-08 06:24:07', '2022-06-08 06:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ecommerce', 'Ecommerce', '2022-04-14 06:28:33', '2022-04-14 06:28:33', NULL),
(2, 'Demo Category', 'Demo-Category', '2022-04-14 06:28:47', '2022-04-14 06:28:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '5', 1, 'samsung', 'Samsung', NULL, '2019-03-12 06:05:56', '2022-04-12 00:37:59'),
(2, 'Voltas', '7', 1, 'voltas', 'voltas', NULL, '2019-03-12 06:06:13', '2022-04-12 00:38:36'),
(3, 'LLOYD', '6', 0, 'LLOYD-wfnaj', NULL, NULL, '2022-04-12 00:39:18', '2022-04-12 00:39:18'),
(4, 'Iphone', '8', 0, 'Iphone-LV7C4', NULL, NULL, '2022-04-12 00:42:10', '2022-04-12 00:42:10'),
(5, 'Symphony', '25', 0, 'Symphony-uihfN', NULL, NULL, '2022-04-22 10:54:45', '2022-04-22 10:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Samsung', 'en', '2022-04-12 00:37:59', '2022-04-12 00:37:59'),
(2, 2, 'Voltas', 'en', '2022-04-12 00:38:36', '2022-04-12 00:38:36'),
(3, 3, 'LLOYD', 'en', '2022-04-12 00:39:18', '2022-04-12 00:39:18'),
(4, 4, 'Iphone', 'en', '2022-04-12 00:42:10', '2022-04-12 00:42:10'),
(5, 5, 'Symphony', 'en', '2022-04-22 10:54:45', '2022-04-22 10:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '28', NULL, '2018-10-16 01:35:52', '2022-04-09 01:04:30'),
(2, 'system_default_currency', '28', NULL, '2018-10-16 01:36:58', '2022-04-09 01:04:30'),
(3, 'currency_format', '1', NULL, '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', NULL, '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', NULL, '2018-10-17 03:01:59', '2020-03-04 00:57:16'),
(6, 'product_activation', '1', NULL, '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '0', NULL, '2018-10-28 07:44:16', '2022-04-14 10:41:08'),
(8, 'show_vendors', '1', NULL, '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', NULL, '2018-10-28 07:45:16', '2019-01-31 05:09:10'),
(10, 'stripe_payment', '0', NULL, '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', NULL, '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', NULL, '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', NULL, '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', NULL, '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '0', NULL, '2019-01-16 12:44:18', '2022-04-11 23:17:36'),
(16, 'sslcommerz_payment', '0', NULL, '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '20', NULL, '2019-01-31 06:18:04', '2019-04-13 06:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]', NULL, '2019-02-03 11:36:58', '2019-02-16 06:14:42'),
(19, 'google_analytics', '0', NULL, '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '0', NULL, '2019-02-07 12:51:59', '2019-02-08 19:41:15'),
(21, 'google_login', '0', NULL, '2019-02-07 12:52:10', '2022-06-06 17:12:55'),
(22, 'twitter_login', '0', NULL, '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', NULL, '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '0', NULL, '2019-04-30 07:30:07', '2019-04-30 07:30:07'),
(38, 'wallet_system', '0', NULL, '2019-05-19 08:05:44', '2019-05-19 02:11:57'),
(39, 'coupon_system', '0', NULL, '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(40, 'current_version', 'Er. Avi Singh', NULL, '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', NULL, '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', NULL, '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', NULL, '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', NULL, '2019-10-17 11:51:04', '2022-06-06 17:12:39'),
(47, 'voguepay', '0', NULL, '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', NULL, '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', NULL, '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '0', NULL, '2020-01-21 07:23:21', '2022-04-14 10:43:29'),
(52, 'guest_checkout_active', '1', NULL, '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', NULL, '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '1', NULL, '2020-05-13 13:01:05', '2022-04-14 10:44:46'),
(56, 'pos_activation_for_seller', '1', NULL, '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'product_wise_shipping', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(58, 'flat_rate_shipping_cost', '0', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(59, 'shipping_cost_admin', '0', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(60, 'payhere_sandbox', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', NULL, '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', NULL, '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', '1', NULL, '2020-11-16 07:26:36', '2022-04-11 01:57:15'),
(65, 'show_language_switcher', 'on', NULL, '2020-11-16 07:26:36', '2022-04-13 03:23:14'),
(66, 'show_currency_switcher', NULL, NULL, '2020-11-16 07:26:36', '2022-04-11 01:57:15'),
(67, 'header_stikcy', 'on', NULL, '2020-11-16 07:26:36', '2022-04-13 03:23:14'),
(68, 'footer_logo', '2', NULL, '2020-11-16 07:26:36', '2022-04-12 00:27:21'),
(69, 'about_us_description', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(70, 'contact_address', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(71, 'contact_phone', '+91 9876543210', NULL, '2020-11-16 07:26:36', '2022-04-11 23:42:20'),
(72, 'contact_email', 'contact@shoppler.com', NULL, '2020-11-16 07:26:36', '2022-04-11 23:42:20'),
(73, 'widget_one_labels', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(74, 'widget_one_links', '[\"http:\\/\\/localhost\\/shoppler\",\"http:\\/\\/localhost\\/shoppler\\/blog\",\"http:\\/\\/localhost\\/shoppler\\/categories\",\"http:\\/\\/localhost\\/shoppler\\/flash-deals\"]', NULL, '2020-11-16 07:26:36', '2022-04-12 00:25:07'),
(75, 'widget_one', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(76, 'frontend_copyright_text', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(77, 'show_social_links', 'on', NULL, '2020-11-16 07:26:36', '2022-04-12 00:03:36'),
(78, 'facebook_link', 'https://www.facebook.com/', NULL, '2020-11-16 07:26:36', '2022-04-11 23:48:54'),
(79, 'twitter_link', 'https://twitter.com/', NULL, '2020-11-16 07:26:36', '2022-04-11 23:48:54'),
(80, 'instagram_link', 'https://instagram.com/', NULL, '2020-11-16 07:26:36', '2022-04-11 23:48:54'),
(81, 'youtube_link', 'https://www.youtube.com/', NULL, '2020-11-16 07:26:36', '2022-04-11 23:48:54'),
(82, 'linkedin_link', 'https://www.linkedin.com/', NULL, '2020-11-16 07:26:36', '2022-04-11 23:48:54'),
(83, 'payment_method_images', '12,13,14', NULL, '2020-11-16 07:26:36', '2022-04-12 01:49:34'),
(84, 'home_slider_images', NULL, NULL, '2020-11-16 07:26:36', '2022-06-23 07:23:50'),
(85, 'home_slider_links', NULL, NULL, '2020-11-16 07:26:36', '2022-06-23 07:23:50'),
(86, 'home_banner1_images', '[\"20\",\"19\"]', NULL, '2020-11-16 07:26:36', '2022-06-23 06:47:41'),
(87, 'home_banner1_links', '[null,null]', NULL, '2020-11-16 07:26:36', '2022-06-23 06:47:41'),
(88, 'home_banner2_images', '[\"20\"]', NULL, '2020-11-16 07:26:36', '2022-06-24 10:09:34'),
(89, 'home_banner2_links', '[null]', NULL, '2020-11-16 07:26:36', '2022-06-24 10:09:34'),
(90, 'home_categories', '[\"2\",\"3\"]', NULL, '2020-11-16 07:26:36', '2022-04-13 11:08:30'),
(91, 'top10_categories', '[\"1\",\"2\",\"3\"]', NULL, '2020-11-16 07:26:36', '2022-04-14 12:21:59'),
(92, 'top10_brands', '[\"1\",\"2\",\"3\",\"4\"]', NULL, '2020-11-16 07:26:36', '2022-04-14 12:16:50'),
(93, 'website_name', 'eBb', NULL, '2020-11-16 07:26:36', '2022-06-15 15:09:18'),
(94, 'site_motto', 'Best Ecommerce Website', NULL, '2020-11-16 07:26:36', '2022-04-11 23:39:47'),
(95, 'site_icon', '3', NULL, '2020-11-16 07:26:36', '2022-04-11 23:39:47'),
(96, 'base_color', '#ff5b08', NULL, '2020-11-16 07:26:36', '2022-04-11 23:39:47'),
(97, 'base_hov_color', '#ff5b08eb', NULL, '2020-11-16 07:26:36', '2022-04-11 23:39:47'),
(98, 'meta_title', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(99, 'meta_description', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(100, 'meta_keywords', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(101, 'meta_image', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(102, 'site_name', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(103, 'system_logo_white', '2', NULL, '2020-11-16 07:26:36', '2022-04-13 03:24:36'),
(104, 'system_logo_black', '1', NULL, '2020-11-16 07:26:36', '2022-04-13 03:24:36'),
(105, 'timezone', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(107, 'iyzico_sandbox', '0', NULL, '2020-12-30 16:45:56', '2022-04-11 23:17:47'),
(108, 'iyzico', '0', NULL, '2020-12-30 16:45:56', '2022-04-14 10:44:00'),
(109, 'decimal_separator', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(111, 'bkash', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(112, 'bkash_sandbox', '1', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'header_menu_labels', '[\"Electronics\",\"Flash Sale\",\"Blogs\",\"All Brands\",\"All Categories\"]', NULL, '2021-02-16 02:43:11', '2022-04-22 13:10:33'),
(114, 'header_menu_links', '[\"http:\\/\\/localhost\\/shoppler\\/category\\/Electronics-k0WkB\",\"http:\\/\\/localhost\\/shoppler\\/flash-deals\",\"http:\\/\\/localhost\\/shoppler\\/blog\",\"http:\\/\\/localhost\\/shoppler\\/brands\",\"http:\\/\\/localhost\\/shoppler\\/categories\"]', NULL, '2021-02-16 02:43:11', '2022-04-22 13:11:14'),
(115, 'proxypay', '0', NULL, '2021-06-20 11:25:42', '2022-04-14 10:44:03'),
(116, 'proxypay_sandbox', '1', NULL, '2021-06-20 11:25:42', '2021-06-20 11:25:42'),
(117, 'google_map', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(118, 'google_firebase', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(119, 'authorizenet_sandbox', '1', NULL, '2021-02-16 02:43:11', '2021-06-14 05:00:23'),
(120, 'topbar_banner', NULL, NULL, '2022-04-11 01:57:15', '2022-04-13 03:22:23'),
(121, 'topbar_banner_link', NULL, NULL, '2022-04-11 01:57:15', '2022-04-13 03:22:23'),
(122, 'helpline_number', '1800 1122 3344', NULL, '2022-04-11 01:57:15', '2022-04-11 01:57:15'),
(123, 'contact_address', 'Demo Address', 'en', '2022-04-11 07:01:30', '2022-04-11 23:42:20'),
(124, 'widget_one', 'Widget', 'en', '2022-04-11 23:44:39', '2022-04-11 23:44:39'),
(125, 'widget_one_labels', '[\"Home\",\"Blogs\",\"Category\",\"Flash Sale\"]', 'en', '2022-04-11 23:44:39', '2022-04-12 00:25:07'),
(126, 'frontend_copyright_text', '© eBB 2022', 'en', '2022-04-11 23:48:54', '2022-04-13 09:25:06'),
(127, 'about_us_description', 'THis is a simple text for footer', 'en', '2022-04-12 00:25:36', '2022-04-12 04:49:42'),
(128, 'play_store_link', 'https://play.google.com/store', NULL, '2022-04-12 00:25:37', '2022-04-12 00:26:53'),
(129, 'app_store_link', 'https://www.apple.com/in/app-store', NULL, '2022-04-12 00:25:37', '2022-04-12 00:26:53'),
(130, 'disable_image_optimization', '0', NULL, '2022-04-14 10:44:32', '2022-04-14 10:44:38'),
(131, 'color_filter_activation', '1', NULL, '2022-06-04 07:28:06', '2022-06-13 10:51:47'),
(140, 'home_categories2', '[\"10\",\"1\",\"2\"]', NULL, '2022-06-23 10:56:27', '2022-06-24 12:04:05'),
(141, 'home_categories2_images', '[\"20\",null,\"27\"]', NULL, '2022-06-23 10:56:27', '2022-06-23 10:58:10'),
(142, 'home_categories2_links', '[\"test\",null,\"hello\"]', NULL, '2022-06-23 10:56:27', '2022-06-23 10:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `temp_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT 0.00,
  `total_price` double(20,2) DEFAULT 0.00,
  `tax` double(20,2) DEFAULT 0.00,
  `shipping_cost` double(20,2) DEFAULT 0.00,
  `shipping_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pickup_point` int(11) DEFAULT NULL,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_applied` tinyint(4) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT 0,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_wise_banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `digital` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `short_description`, `page_wise_banner`, `home_image`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Structrual Material', 0, 0.00, 'this is a dummy text', '20', '28', '27', '29', 0, 0, 0, 'structrual-material-afb0a', 'Structrual Material', 'Structrual Material', '2022-06-23 11:22:03', '2022-06-23 11:22:03'),
(2, 0, 0, 'Electricals', 0, 0.00, NULL, NULL, NULL, '17', '30', 0, 0, 0, 'Electricals-PST36', 'Electricals', 'Electricals', '2022-06-10 07:41:41', '2022-06-10 07:41:41'),
(3, 0, 0, 'Computer', 0, 0.00, NULL, NULL, NULL, '21', '30', 0, 0, 0, 'Computer-LTgsF', 'Computer', 'Computer', '2022-06-06 05:46:31', '2022-06-06 05:46:31'),
(4, 0, 0, 'Plumbing', 0, 0.00, NULL, NULL, NULL, '18', '31', 0, 0, 0, 'Plumbing-me2uS', NULL, NULL, '2022-06-06 12:34:11', '2022-06-06 12:34:11'),
(5, 2, 1, 'Mobile', 0, 0.00, NULL, NULL, NULL, '21', NULL, 0, 0, 0, 'Mobile-Flyv7', NULL, NULL, '2022-06-06 12:35:28', '2022-06-06 12:35:28'),
(6, 5, 2, 'Smart Phones', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Smart-Phones-XSmGX', NULL, NULL, '2022-06-06 12:42:35', '2022-06-06 12:42:35'),
(7, 1, 1, 'Cements', 0, 0.00, NULL, NULL, NULL, NULL, '32', 0, 0, 0, 'cements-2mskw', NULL, NULL, '2022-06-07 06:59:43', '2022-06-07 06:59:43'),
(8, 7, 2, 'Bricks', 0, 0.00, NULL, NULL, NULL, NULL, '36', 0, 0, 0, 'bricks-zj1rs', NULL, NULL, '2022-06-10 07:12:43', '2022-06-10 07:12:43'),
(9, 1, 1, 'S Bricks', 0, 0.00, NULL, NULL, NULL, NULL, '33', 0, 0, 0, 's-bricks-6cgrt', NULL, NULL, '2022-06-07 06:58:52', '2022-06-07 06:58:52'),
(10, 0, 0, 'Sanitaryware & Bathrobes', 0, 0.00, NULL, NULL, NULL, NULL, '35', 0, 0, 0, 'Sanitaryware--Bathrobes-lugje', NULL, NULL, '2022-06-10 06:31:00', '2022-06-10 06:31:00'),
(11, 10, 1, 'Water Closets', 0, 0.00, 'This is a simple testing', NULL, '9', '20', NULL, 0, 0, 0, 'water-closets-gyvxl', NULL, NULL, '2022-06-24 12:17:46', '2022-06-24 12:17:46'),
(12, 10, 1, 'Wash Basin', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Wash-Basin-yXIp1', NULL, NULL, '2022-06-10 06:32:10', '2022-06-10 06:32:10'),
(13, 10, 1, 'Cisterns', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Cisterns-APALR', NULL, NULL, '2022-06-10 06:32:31', '2022-06-10 06:32:31'),
(14, 10, 1, 'Urnials & Squatting Pans', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Urnials--Squatting-Pans-lJeG8', NULL, NULL, '2022-06-10 06:33:16', '2022-06-10 06:33:16'),
(15, 11, 2, 'Intelligent Closets', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Intelligent-Closets-Eixm7', NULL, NULL, '2022-06-10 06:33:51', '2022-06-10 06:33:51'),
(16, 11, 2, 'Tankless Closets', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Tankless-Closets-MNxem', NULL, NULL, '2022-06-10 06:34:17', '2022-06-10 06:34:17'),
(17, 11, 2, 'Intelligent Closets', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'tochfree-Closets-Eixm7', NULL, NULL, '2022-06-10 06:37:28', '2022-06-10 06:33:51'),
(18, 11, 2, 'Over Counter Closets', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Overs-Closets-MNxem', NULL, NULL, '2022-06-10 06:37:22', '2022-06-10 06:34:17'),
(19, 12, 2, 'Over Counter Basin', 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'Over-Counter-Basin-UHmcR', NULL, NULL, '2022-06-10 06:38:41', '2022-06-10 06:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(2, 21, 'aggregate', 'en', '2022-06-22 10:30:17', '2022-06-22 10:30:17'),
(3, 1, 'Structrual Material', 'en', '2022-06-23 11:21:35', '2022-06-23 11:21:35'),
(4, 11, 'Water Closets', 'en', '2022-06-24 12:07:38', '2022-06-24 12:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_wise_brands`
--

CREATE TABLE `category_wise_brands` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_wise_brands`
--

INSERT INTO `category_wise_brands` (`id`, `category_id`, `brand_id`, `title`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'secod cate', '20', 'http://ranasharma.com', 0, '2022-06-18 14:28:20', '2022-06-18 14:28:20'),
(2, 2, 3, 'First Category', '19', 'http://ranasharma.com', 0, '2022-06-18 14:30:36', '2022-06-18 14:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `category_wise_offers`
--

CREATE TABLE `category_wise_offers` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `slug_url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_wise_offers`
--

INSERT INTO `category_wise_offers` (`id`, `category_id`, `banner`, `slug_url`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '41', 'http://localhost/ebb_admin/', 0, '2022-06-28 12:04:22', '2022-06-28 12:04:22'),
(3, 1, '42', 'http://localhost/ebb_admin/', 0, '2022-06-28 13:51:38', '2022-06-28 13:51:38'),
(4, 1, '40', 'http://localhost/ebb_admin/', 0, '2022-06-28 13:51:55', '2022-06-28 13:51:55'),
(5, 2, '44', 'http://localhost/ebb_admin/', 0, '2022-06-28 13:52:53', '2022-06-28 13:52:53'),
(6, 2, '43', 'http://localhost/ebb_admin/', 0, '2022-06-28 13:53:07', '2022-06-28 13:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `combined_orders`
--

CREATE TABLE `combined_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `combined_orders`
--

INSERT INTO `combined_orders` (`id`, `user_id`, `shipping_address`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 8, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"HN 60\",\"country\":\"India\",\"state\":\"Haryana\",\"city\":\"Ambala\",\"postal_code\":\"114455\",\"phone\":\"+919876543210\"}', 990.00, '2022-04-16 07:52:00', '2022-04-16 07:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', 0, '2021-04-06 01:06:30', '2021-10-11 00:34:13', NULL),
(2, 'AL', 'Albania', 0, '2021-04-06 01:06:30', NULL, NULL),
(3, 'DZ', 'Algeria', 0, '2021-04-06 01:06:30', NULL, NULL),
(4, 'AS', 'American Samoa', 0, '2021-04-06 01:06:30', NULL, NULL),
(5, 'AD', 'Andorra', 0, '2021-04-06 01:06:30', NULL, NULL),
(6, 'AO', 'Angola', 0, '2021-04-06 01:06:30', NULL, NULL),
(7, 'AI', 'Anguilla', 0, '2021-04-06 01:06:30', NULL, NULL),
(8, 'AQ', 'Antarctica', 0, '2021-04-06 01:06:30', NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', 0, '2021-04-06 01:06:30', NULL, NULL),
(10, 'AR', 'Argentina', 0, '2021-04-06 01:06:30', NULL, NULL),
(11, 'AM', 'Armenia', 0, '2021-04-06 01:06:30', NULL, NULL),
(12, 'AW', 'Aruba', 0, '2021-04-06 01:06:30', NULL, NULL),
(13, 'AU', 'Australia', 0, '2021-04-06 01:06:30', NULL, NULL),
(14, 'AT', 'Austria', 0, '2021-04-06 01:06:30', NULL, NULL),
(15, 'AZ', 'Azerbaijan', 0, '2021-04-06 01:06:30', NULL, NULL),
(16, 'BS', 'Bahamas The', 0, '2021-04-06 01:06:30', NULL, NULL),
(17, 'BH', 'Bahrain', 0, '2021-04-06 01:06:30', NULL, NULL),
(18, 'BD', 'Bangladesh', 0, '2021-04-06 01:06:30', NULL, NULL),
(19, 'BB', 'Barbados', 0, '2021-04-06 01:06:30', NULL, NULL),
(20, 'BY', 'Belarus', 0, '2021-04-06 01:06:30', NULL, NULL),
(21, 'BE', 'Belgium', 0, '2021-04-06 01:06:30', NULL, NULL),
(22, 'BZ', 'Belize', 0, '2021-04-06 01:06:30', NULL, NULL),
(23, 'BJ', 'Benin', 0, '2021-04-06 01:06:30', NULL, NULL),
(24, 'BM', 'Bermuda', 0, '2021-04-06 01:06:30', NULL, NULL),
(25, 'BT', 'Bhutan', 0, '2021-04-06 01:06:30', NULL, NULL),
(26, 'BO', 'Bolivia', 0, '2021-04-06 01:06:30', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 0, '2021-04-06 01:06:30', NULL, NULL),
(28, 'BW', 'Botswana', 0, '2021-04-06 01:06:30', NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, '2021-04-06 01:06:30', NULL, NULL),
(30, 'BR', 'Brazil', 0, '2021-04-06 01:06:30', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 0, '2021-04-06 01:06:30', NULL, NULL),
(32, 'BN', 'Brunei', 0, '2021-04-06 01:06:30', NULL, NULL),
(33, 'BG', 'Bulgaria', 0, '2021-04-06 01:06:30', NULL, NULL),
(34, 'BF', 'Burkina Faso', 0, '2021-04-06 01:06:30', NULL, NULL),
(35, 'BI', 'Burundi', 0, '2021-04-06 01:06:30', NULL, NULL),
(36, 'KH', 'Cambodia', 0, '2021-04-06 01:06:30', NULL, NULL),
(37, 'CM', 'Cameroon', 0, '2021-04-06 01:06:30', NULL, NULL),
(38, 'CA', 'Canada', 0, '2021-04-06 01:06:30', NULL, NULL),
(39, 'CV', 'Cape Verde', 0, '2021-04-06 01:06:30', NULL, NULL),
(40, 'KY', 'Cayman Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(41, 'CF', 'Central African Republic', 0, '2021-04-06 01:06:30', NULL, NULL),
(42, 'TD', 'Chad', 0, '2021-04-06 01:06:30', NULL, NULL),
(43, 'CL', 'Chile', 0, '2021-04-06 01:06:30', NULL, NULL),
(44, 'CN', 'China', 0, '2021-04-06 01:06:30', NULL, NULL),
(45, 'CX', 'Christmas Island', 0, '2021-04-06 01:06:30', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(47, 'CO', 'Colombia', 0, '2021-04-06 01:06:30', NULL, NULL),
(48, 'KM', 'Comoros', 0, '2021-04-06 01:06:30', NULL, NULL),
(49, 'CG', 'Republic Of The Congo', 0, '2021-04-06 01:06:30', NULL, NULL),
(50, 'CD', 'Democratic Republic Of The Congo', 0, '2021-04-06 01:06:30', NULL, NULL),
(51, 'CK', 'Cook Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(52, 'CR', 'Costa Rica', 0, '2021-04-06 01:06:30', NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 0, '2021-04-06 01:06:30', NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', 0, '2021-04-06 01:06:30', NULL, NULL),
(55, 'CU', 'Cuba', 0, '2021-04-06 01:06:30', NULL, NULL),
(56, 'CY', 'Cyprus', 0, '2021-04-06 01:06:30', NULL, NULL),
(57, 'CZ', 'Czech Republic', 0, '2021-04-06 01:06:30', NULL, NULL),
(58, 'DK', 'Denmark', 0, '2021-04-06 01:06:30', NULL, NULL),
(59, 'DJ', 'Djibouti', 0, '2021-04-06 01:06:30', NULL, NULL),
(60, 'DM', 'Dominica', 0, '2021-04-06 01:06:30', NULL, NULL),
(61, 'DO', 'Dominican Republic', 0, '2021-04-06 01:06:30', NULL, NULL),
(62, 'TP', 'East Timor', 0, '2021-04-06 01:06:30', NULL, NULL),
(63, 'EC', 'Ecuador', 0, '2021-04-06 01:06:30', NULL, NULL),
(64, 'EG', 'Egypt', 0, '2021-04-06 01:06:30', NULL, NULL),
(65, 'SV', 'El Salvador', 0, '2021-04-06 01:06:30', NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', 0, '2021-04-06 01:06:30', NULL, NULL),
(67, 'ER', 'Eritrea', 0, '2021-04-06 01:06:30', NULL, NULL),
(68, 'EE', 'Estonia', 0, '2021-04-06 01:06:30', NULL, NULL),
(69, 'ET', 'Ethiopia', 0, '2021-04-06 01:06:30', NULL, NULL),
(70, 'XA', 'External Territories of Australia', 0, '2021-04-06 01:06:30', NULL, NULL),
(71, 'FK', 'Falkland Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(72, 'FO', 'Faroe Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(73, 'FJ', 'Fiji Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(74, 'FI', 'Finland', 0, '2021-04-06 01:06:30', NULL, NULL),
(75, 'FR', 'France', 0, '2021-04-06 01:06:30', NULL, NULL),
(76, 'GF', 'French Guiana', 0, '2021-04-06 01:06:30', NULL, NULL),
(77, 'PF', 'French Polynesia', 0, '2021-04-06 01:06:30', NULL, NULL),
(78, 'TF', 'French Southern Territories', 0, '2021-04-06 01:06:30', NULL, NULL),
(79, 'GA', 'Gabon', 0, '2021-04-06 01:06:30', NULL, NULL),
(80, 'GM', 'Gambia The', 0, '2021-04-06 01:06:30', NULL, NULL),
(81, 'GE', 'Georgia', 0, '2021-04-06 01:06:30', NULL, NULL),
(82, 'DE', 'Germany', 0, '2021-04-06 01:06:30', NULL, NULL),
(83, 'GH', 'Ghana', 0, '2021-04-06 01:06:30', NULL, NULL),
(84, 'GI', 'Gibraltar', 0, '2021-04-06 01:06:30', NULL, NULL),
(85, 'GR', 'Greece', 0, '2021-04-06 01:06:30', NULL, NULL),
(86, 'GL', 'Greenland', 0, '2021-04-06 01:06:30', NULL, NULL),
(87, 'GD', 'Grenada', 0, '2021-04-06 01:06:30', NULL, NULL),
(88, 'GP', 'Guadeloupe', 0, '2021-04-06 01:06:30', NULL, NULL),
(89, 'GU', 'Guam', 0, '2021-04-06 01:06:30', NULL, NULL),
(90, 'GT', 'Guatemala', 0, '2021-04-06 01:06:30', NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', 0, '2021-04-06 01:06:30', NULL, NULL),
(92, 'GN', 'Guinea', 0, '2021-04-06 01:06:30', NULL, NULL),
(93, 'GW', 'Guinea-Bissau', 0, '2021-04-06 01:06:30', NULL, NULL),
(94, 'GY', 'Guyana', 0, '2021-04-06 01:06:30', NULL, NULL),
(95, 'HT', 'Haiti', 0, '2021-04-06 01:06:30', NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(97, 'HN', 'Honduras', 0, '2021-04-06 01:06:30', NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', 0, '2021-04-06 01:06:30', NULL, NULL),
(99, 'HU', 'Hungary', 0, '2021-04-06 01:06:30', NULL, NULL),
(100, 'IS', 'Iceland', 0, '2021-04-06 01:06:30', NULL, NULL),
(101, 'IN', 'India', 1, '2021-04-06 01:06:30', '2022-04-14 11:18:49', NULL),
(102, 'ID', 'Indonesia', 0, '2021-04-06 01:06:30', NULL, NULL),
(103, 'IR', 'Iran', 0, '2021-04-06 01:06:30', NULL, NULL),
(104, 'IQ', 'Iraq', 0, '2021-04-06 01:06:30', NULL, NULL),
(105, 'IE', 'Ireland', 0, '2021-04-06 01:06:30', NULL, NULL),
(106, 'IL', 'Israel', 0, '2021-04-06 01:06:30', NULL, NULL),
(107, 'IT', 'Italy', 0, '2021-04-06 01:06:30', NULL, NULL),
(108, 'JM', 'Jamaica', 0, '2021-04-06 01:06:30', NULL, NULL),
(109, 'JP', 'Japan', 0, '2021-04-06 01:06:30', NULL, NULL),
(110, 'XJ', 'Jersey', 0, '2021-04-06 01:06:30', NULL, NULL),
(111, 'JO', 'Jordan', 0, '2021-04-06 01:06:30', NULL, NULL),
(112, 'KZ', 'Kazakhstan', 0, '2021-04-06 01:06:30', NULL, NULL),
(113, 'KE', 'Kenya', 0, '2021-04-06 01:06:30', NULL, NULL),
(114, 'KI', 'Kiribati', 0, '2021-04-06 01:06:30', NULL, NULL),
(115, 'KP', 'Korea North', 0, '2021-04-06 01:06:30', NULL, NULL),
(116, 'KR', 'Korea South', 0, '2021-04-06 01:06:30', NULL, NULL),
(117, 'KW', 'Kuwait', 0, '2021-04-06 01:06:30', NULL, NULL),
(118, 'KG', 'Kyrgyzstan', 0, '2021-04-06 01:06:30', NULL, NULL),
(119, 'LA', 'Laos', 0, '2021-04-06 01:06:30', NULL, NULL),
(120, 'LV', 'Latvia', 0, '2021-04-06 01:06:30', NULL, NULL),
(121, 'LB', 'Lebanon', 0, '2021-04-06 01:06:30', NULL, NULL),
(122, 'LS', 'Lesotho', 0, '2021-04-06 01:06:30', NULL, NULL),
(123, 'LR', 'Liberia', 0, '2021-04-06 01:06:30', NULL, NULL),
(124, 'LY', 'Libya', 0, '2021-04-06 01:06:30', NULL, NULL),
(125, 'LI', 'Liechtenstein', 0, '2021-04-06 01:06:30', NULL, NULL),
(126, 'LT', 'Lithuania', 0, '2021-04-06 01:06:30', NULL, NULL),
(127, 'LU', 'Luxembourg', 0, '2021-04-06 01:06:30', NULL, NULL),
(128, 'MO', 'Macau S.A.R.', 0, '2021-04-06 01:06:30', NULL, NULL),
(129, 'MK', 'Macedonia', 0, '2021-04-06 01:06:30', NULL, NULL),
(130, 'MG', 'Madagascar', 0, '2021-04-06 01:06:30', NULL, NULL),
(131, 'MW', 'Malawi', 0, '2021-04-06 01:06:30', NULL, NULL),
(132, 'MY', 'Malaysia', 0, '2021-04-06 01:06:30', NULL, NULL),
(133, 'MV', 'Maldives', 0, '2021-04-06 01:06:30', NULL, NULL),
(134, 'ML', 'Mali', 0, '2021-04-06 01:06:30', NULL, NULL),
(135, 'MT', 'Malta', 0, '2021-04-06 01:06:30', NULL, NULL),
(136, 'XM', 'Man (Isle of)', 0, '2021-04-06 01:06:30', NULL, NULL),
(137, 'MH', 'Marshall Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(138, 'MQ', 'Martinique', 0, '2021-04-06 01:06:30', NULL, NULL),
(139, 'MR', 'Mauritania', 0, '2021-04-06 01:06:30', NULL, NULL),
(140, 'MU', 'Mauritius', 0, '2021-04-06 01:06:30', NULL, NULL),
(141, 'YT', 'Mayotte', 0, '2021-04-06 01:06:30', NULL, NULL),
(142, 'MX', 'Mexico', 0, '2021-04-06 01:06:30', NULL, NULL),
(143, 'FM', 'Micronesia', 0, '2021-04-06 01:06:30', NULL, NULL),
(144, 'MD', 'Moldova', 0, '2021-04-06 01:06:30', NULL, NULL),
(145, 'MC', 'Monaco', 0, '2021-04-06 01:06:30', NULL, NULL),
(146, 'MN', 'Mongolia', 0, '2021-04-06 01:06:30', NULL, NULL),
(147, 'MS', 'Montserrat', 0, '2021-04-06 01:06:30', NULL, NULL),
(148, 'MA', 'Morocco', 0, '2021-04-06 01:06:30', NULL, NULL),
(149, 'MZ', 'Mozambique', 0, '2021-04-06 01:06:30', NULL, NULL),
(150, 'MM', 'Myanmar', 0, '2021-04-06 01:06:30', NULL, NULL),
(151, 'NA', 'Namibia', 0, '2021-04-06 01:06:30', NULL, NULL),
(152, 'NR', 'Nauru', 0, '2021-04-06 01:06:30', NULL, NULL),
(153, 'NP', 'Nepal', 0, '2021-04-06 01:06:30', NULL, NULL),
(154, 'AN', 'Netherlands Antilles', 0, '2021-04-06 01:06:30', NULL, NULL),
(155, 'NL', 'Netherlands The', 0, '2021-04-06 01:06:30', NULL, NULL),
(156, 'NC', 'New Caledonia', 0, '2021-04-06 01:06:30', NULL, NULL),
(157, 'NZ', 'New Zealand', 0, '2021-04-06 01:06:30', NULL, NULL),
(158, 'NI', 'Nicaragua', 0, '2021-04-06 01:06:30', NULL, NULL),
(159, 'NE', 'Niger', 0, '2021-04-06 01:06:30', NULL, NULL),
(160, 'NG', 'Nigeria', 0, '2021-04-06 01:06:30', NULL, NULL),
(161, 'NU', 'Niue', 0, '2021-04-06 01:06:30', NULL, NULL),
(162, 'NF', 'Norfolk Island', 0, '2021-04-06 01:06:30', NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(164, 'NO', 'Norway', 0, '2021-04-06 01:06:30', NULL, NULL),
(165, 'OM', 'Oman', 0, '2021-04-06 01:06:30', NULL, NULL),
(166, 'PK', 'Pakistan', 0, '2021-04-06 01:06:30', NULL, NULL),
(167, 'PW', 'Palau', 0, '2021-04-06 01:06:30', NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', 0, '2021-04-06 01:06:30', NULL, NULL),
(169, 'PA', 'Panama', 0, '2021-04-06 01:06:30', NULL, NULL),
(170, 'PG', 'Papua new Guinea', 0, '2021-04-06 01:06:30', NULL, NULL),
(171, 'PY', 'Paraguay', 0, '2021-04-06 01:06:30', NULL, NULL),
(172, 'PE', 'Peru', 0, '2021-04-06 01:06:30', NULL, NULL),
(173, 'PH', 'Philippines', 0, '2021-04-06 01:06:30', NULL, NULL),
(174, 'PN', 'Pitcairn Island', 0, '2021-04-06 01:06:30', NULL, NULL),
(175, 'PL', 'Poland', 0, '2021-04-06 01:06:30', NULL, NULL),
(176, 'PT', 'Portugal', 0, '2021-04-06 01:06:30', NULL, NULL),
(177, 'PR', 'Puerto Rico', 0, '2021-04-06 01:06:30', NULL, NULL),
(178, 'QA', 'Qatar', 0, '2021-04-06 01:06:30', NULL, NULL),
(179, 'RE', 'Reunion', 0, '2021-04-06 01:06:30', NULL, NULL),
(180, 'RO', 'Romania', 0, '2021-04-06 01:06:30', NULL, NULL),
(181, 'RU', 'Russia', 0, '2021-04-06 01:06:30', NULL, NULL),
(182, 'RW', 'Rwanda', 0, '2021-04-06 01:06:30', NULL, NULL),
(183, 'SH', 'Saint Helena', 0, '2021-04-06 01:06:30', NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', 0, '2021-04-06 01:06:30', NULL, NULL),
(185, 'LC', 'Saint Lucia', 0, '2021-04-06 01:06:30', NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', 0, '2021-04-06 01:06:30', NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', 0, '2021-04-06 01:06:30', NULL, NULL),
(188, 'WS', 'Samoa', 0, '2021-04-06 01:06:30', NULL, NULL),
(189, 'SM', 'San Marino', 0, '2021-04-06 01:06:30', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', 0, '2021-04-06 01:06:30', NULL, NULL),
(191, 'SA', 'Saudi Arabia', 0, '2021-04-06 01:06:30', NULL, NULL),
(192, 'SN', 'Senegal', 0, '2021-04-06 01:06:30', NULL, NULL),
(193, 'RS', 'Serbia', 0, '2021-04-06 01:06:30', NULL, NULL),
(194, 'SC', 'Seychelles', 0, '2021-04-06 01:06:30', NULL, NULL),
(195, 'SL', 'Sierra Leone', 0, '2021-04-06 01:06:30', NULL, NULL),
(196, 'SG', 'Singapore', 0, '2021-04-06 01:06:30', NULL, NULL),
(197, 'SK', 'Slovakia', 0, '2021-04-06 01:06:30', NULL, NULL),
(198, 'SI', 'Slovenia', 0, '2021-04-06 01:06:30', NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', 0, '2021-04-06 01:06:30', NULL, NULL),
(200, 'SB', 'Solomon Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(201, 'SO', 'Somalia', 0, '2021-04-06 01:06:30', NULL, NULL),
(202, 'ZA', 'South Africa', 0, '2021-04-06 01:06:30', NULL, NULL),
(203, 'GS', 'South Georgia', 0, '2021-04-06 01:06:30', NULL, NULL),
(204, 'SS', 'South Sudan', 0, '2021-04-06 01:06:30', NULL, NULL),
(205, 'ES', 'Spain', 0, '2021-04-06 01:06:30', NULL, NULL),
(206, 'LK', 'Sri Lanka', 0, '2021-04-06 01:06:30', NULL, NULL),
(207, 'SD', 'Sudan', 0, '2021-04-06 01:06:30', NULL, NULL),
(208, 'SR', 'Suriname', 0, '2021-04-06 01:06:30', NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(210, 'SZ', 'Swaziland', 0, '2021-04-06 01:06:30', NULL, NULL),
(211, 'SE', 'Sweden', 0, '2021-04-06 01:06:30', NULL, NULL),
(212, 'CH', 'Switzerland', 0, '2021-04-06 01:06:30', NULL, NULL),
(213, 'SY', 'Syria', 0, '2021-04-06 01:06:30', NULL, NULL),
(214, 'TW', 'Taiwan', 0, '2021-04-06 01:06:30', NULL, NULL),
(215, 'TJ', 'Tajikistan', 0, '2021-04-06 01:06:30', NULL, NULL),
(216, 'TZ', 'Tanzania', 0, '2021-04-06 01:06:30', NULL, NULL),
(217, 'TH', 'Thailand', 0, '2021-04-06 01:06:30', NULL, NULL),
(218, 'TG', 'Togo', 0, '2021-04-06 01:06:30', NULL, NULL),
(219, 'TK', 'Tokelau', 0, '2021-04-06 01:06:30', NULL, NULL),
(220, 'TO', 'Tonga', 0, '2021-04-06 01:06:30', NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', 0, '2021-04-06 01:06:30', NULL, NULL),
(222, 'TN', 'Tunisia', 0, '2021-04-06 01:06:30', NULL, NULL),
(223, 'TR', 'Turkey', 0, '2021-04-06 01:06:30', NULL, NULL),
(224, 'TM', 'Turkmenistan', 0, '2021-04-06 01:06:30', NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(226, 'TV', 'Tuvalu', 0, '2021-04-06 01:06:30', NULL, NULL),
(227, 'UG', 'Uganda', 0, '2021-04-06 01:06:30', NULL, NULL),
(228, 'UA', 'Ukraine', 0, '2021-04-06 01:06:30', NULL, NULL),
(229, 'AE', 'United Arab Emirates', 0, '2021-04-06 01:06:30', NULL, NULL),
(230, 'GB', 'United Kingdom', 0, '2021-04-06 01:06:30', NULL, NULL),
(231, 'US', 'United States', 0, '2021-04-06 01:06:30', NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(233, 'UY', 'Uruguay', 0, '2021-04-06 01:06:30', NULL, NULL),
(234, 'UZ', 'Uzbekistan', 0, '2021-04-06 01:06:30', NULL, NULL),
(235, 'VU', 'Vanuatu', 0, '2021-04-06 01:06:30', NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', 0, '2021-04-06 01:06:30', NULL, NULL),
(237, 'VE', 'Venezuela', 0, '2021-04-06 01:06:30', NULL, NULL),
(238, 'VN', 'Vietnam', 0, '2021-04-06 01:06:30', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 0, '2021-04-06 01:06:30', NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', 0, '2021-04-06 01:06:30', NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', 0, '2021-04-06 01:06:30', NULL, NULL),
(242, 'EH', 'Western Sahara', 0, '2021-04-06 01:06:30', NULL, NULL),
(243, 'YE', 'Yemen', 0, '2021-04-06 01:06:30', NULL, NULL),
(244, 'YU', 'Yugoslavia', 0, '2021-04-06 01:06:30', NULL, NULL),
(245, 'ZM', 'Zambia', 0, '2021-04-06 01:06:30', NULL, NULL),
(246, 'ZW', 'Zimbabwe', 0, '2021-04-06 01:06:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `user_id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 9, 'product_base', 'PRODUCT100', '[{\"product_id\":\"1\"}]', 100.00, 'amount', 1649874600, 1649874600, '2022-04-14 11:00:54', '2022-04-14 11:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(28, 'Indian Rupee', 'Rs', 1.00000, 1, 'Rupee', '2019-07-07 10:33:46', '2019-07-07 10:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09'),
(5, 10, '2022-04-12 04:25:55', '2022-04-12 04:25:55'),
(6, 11, '2022-06-09 08:32:18', '2022-06-09 08:32:18'),
(7, 12, '2022-06-09 09:00:59', '2022-06-09 09:00:59'),
(8, 13, '2022-06-09 09:08:33', '2022-06-09 09:08:33'),
(9, 14, '2022-06-09 09:12:55', '2022-06-09 09:12:55'),
(10, 15, '2022-06-09 10:44:17', '2022-06-09 10:44:17'),
(11, 16, '2022-06-09 10:46:16', '2022-06-09 10:46:16'),
(12, 17, '2022-06-09 10:49:38', '2022-06-09 10:49:38'),
(13, 18, '2022-06-09 11:39:50', '2022-06-09 11:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_packages`
--

INSERT INTO `customer_packages` (`id`, `name`, `amount`, `product_upload`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'sds', 1222.00, 2223, NULL, '2022-05-27 11:16:58', '2022-05-27 11:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_translations`
--

CREATE TABLE `customer_package_translations` (
  `id` bigint(20) NOT NULL,
  `customer_package_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_package_translations`
--

INSERT INTO `customer_package_translations` (`id`, `customer_package_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'sds', 'en', '2022-05-27 11:16:58', '2022-05-27 11:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_cards`
--

CREATE TABLE `customer_payment_cards` (
  `id` int(11) NOT NULL,
  `credit_debit` varchar(100) NOT NULL,
  `card_no` varchar(100) NOT NULL,
  `expiry_month` varchar(100) NOT NULL,
  `expiry_year` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_payment_cards`
--

INSERT INTO `customer_payment_cards` (`id`, `credit_debit`, `card_no`, `expiry_month`, `expiry_year`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Debit Card', '6075320105897010', '8', '2038', 27, '2022-06-16 12:30:56', '2022-06-16 12:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(20,2) DEFAULT 0.00,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_translations`
--

CREATE TABLE `customer_product_translations` (
  `id` bigint(20) NOT NULL,
  `customer_product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `phone`, `email`, `message`, `user_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'rana', '8825171386', 'iamranasharma@gmail.com', 'Hello, I am interested in [Modern Apartment]', 'agent', 0, '2022-06-21 13:57:34', '2022-06-21 13:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `firebase_notifications`
--

CREATE TABLE `firebase_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `item_type` varchar(255) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_home` int(11) DEFAULT 0,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `is_home`, `type`, `heading`, `sub_heading`) VALUES
(1, 'Summer Flash Deal', 1654021800, 1659292140, 1, 0, '#000', 'dark', '19', 'summer-flash-deal-hefpx', '2022-04-15 08:47:12', '2022-06-22 11:27:33', 1, 'small_comodity_section', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(20,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(54, 1, 1, 0.00, NULL, '2022-06-22 11:27:34', '2022-06-22 11:27:34'),
(55, 1, 3, 0.00, NULL, '2022-06-22 11:27:34', '2022-06-22 11:27:34'),
(56, 1, 4, 0.00, NULL, '2022-06-22 11:27:34', '2022-06-22 11:27:34'),
(57, 1, 6, 0.00, NULL, '2022-06-22 11:27:34', '2022-06-22 11:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_translations`
--

CREATE TABLE `flash_deal_translations` (
  `id` bigint(20) NOT NULL,
  `flash_deal_id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_translations`
--

INSERT INTO `flash_deal_translations` (`id`, `flash_deal_id`, `title`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Summer Flash Deal', 'en', '2022-04-15 08:47:12', '2022-04-15 08:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_lang_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  `rtl` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `app_lang_code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('5822a6ec-f16e-4080-9932-6c16817edd0d', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 9, '{\"order_id\":1,\"order_code\":\"20220416-13220048\",\"user_id\":8,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2022-04-16 07:52:10', '2022-04-16 07:52:10'),
('a3bc8c69-1241-470b-b255-62fa6a0efee8', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 8, '{\"order_id\":1,\"order_code\":\"20220416-13220048\",\"user_id\":8,\"seller_id\":9,\"status\":\"placed\"}', NULL, '2022-04-16 07:52:10', '2022-04-16 07:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `combined_order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `delivery_viewed` int(1) NOT NULL DEFAULT 1,
  `payment_status_viewed` int(1) DEFAULT 1,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `combined_order_id`, `user_id`, `address_id`, `guest_id`, `seller_id`, `shipping_address`, `delivery_status`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `tracking_code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 4, NULL, 9, '{\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\",\"address\":\"HN 60\",\"country\":\"India\",\"state\":\"Haryana\",\"city\":\"Ambala\",\"postal_code\":\"114455\",\"phone\":\"+919876543210\"}', 'pending', 'cash_on_delivery', 'unpaid', NULL, 990.00, 0.00, '20220416-13220048', NULL, 1650095520, 0, 1, 1, 0, '2022-04-16 07:52:00', '2022-04-16 09:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 'Black-S', 900.00, 90.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2022-04-16 07:52:00', '2022-04-16 07:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20'),
(2, 'seller_policy_page', 'Seller Policy Pages', 'sellerpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 12:19:30'),
(3, 'return_policy_page', 'Return Policy Page', 'returnpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 10:14:41'),
(4, 'support_policy_page', 'Support Policy Page', 'supportpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2020-11-04 10:15:29'),
(6, 'privacy_policy_page', 'Privacy Policy Page', 'privacypolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:55', '2020-11-04 10:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_payments`
--

CREATE TABLE `payku_payments` (
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_4_digits` int(10) UNSIGNED DEFAULT NULL,
  `installments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_parameters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_transactions`
--

CREATE TABLE `payku_transactions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `notified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point_translations`
--

CREATE TABLE `pickup_point_translations` (
  `id` bigint(20) NOT NULL,
  `pickup_point_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `variant_product` int(1) NOT NULL DEFAULT 0,
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `approved` tinyint(1) NOT NULL DEFAULT 1,
  `stock_visibility_state` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = On, 0 = Off',
  `featured` int(11) NOT NULL DEFAULT 0,
  `seller_featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `low_stock_quantity` int(11) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_start_date` int(11) DEFAULT NULL,
  `discount_end_date` int(11) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'flat_rate',
  `shipping_cost` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_quantity_multiplied` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Mutiplied with shipping cost',
  `est_shipping_days` int(11) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT 0,
  `auction_product` int(1) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_link_btn` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Buy Now',
  `wholesale_product` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `overview`, `warranty`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `approved`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `auction_product`, `file_name`, `file_path`, `external_link`, `external_link_btn`, `wholesale_product`, `created_at`, `updated_at`) VALUES
(1, 'BT7118 Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys Analog Watch - For Men', 'admin', 9, 7, 1, '9,10', '11', 'youtube', NULL, 'Watch', '<p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys</span></p><p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Water Resistance : Yes</span></p><p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Occasion : Casual<br></span><br></p>', '', '', 1000.00, NULL, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\"]}]', '[\"#000000\"]', NULL, 1, 1, 1, 'quantity', 1, 1, 0, 0, 'Pc', 1, 5, 100.00, 'amount', 1654021800, 1659292140, NULL, NULL, 'free', '0', 0, 10, 1, 'BT7118 Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys Analog Watch - For Men', 'Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for BoysWater Resistance : YesOccasion : Casual', '11', NULL, 'bt7118-mesh-strap-all-black-smiley-multicolor-dial-quartz-mechanism-sports-water-resistant-watch-for-boys-analog-watch---for-men', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-04-12 01:32:39', '2022-06-22 06:07:28'),
(3, '253L Convertible Freezer Double Door Refrigerator RT28T3922R8', 'admin', 9, 7, 1, '28,26,27', '27', 'youtube', NULL, 'fridge,samsung,doorfridge', '<p>This is a dummy description.</p><p><b>Model : </b>modelxyz</p><p><b>Accesories : </b>sdjhgfsdg</p>', '', '', 10000.00, NULL, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\"]}]', '[\"#000000\",\"#FFEBCD\",\"#A52A2A\",\"#FF7F50\",\"#6495ED\",\"#006400\"]', NULL, 0, 1, 1, 'quantity', 1, 0, 0, 0, '10', 1, 9, 5.00, 'amount', 1654021800, 1659292140, NULL, NULL, 'flat_rate', '100', 0, NULL, 0, '253L Convertible Freezer Double Door Refrigerator RT28T3922R8', 'This is a dummy description.Model : modelxyzAccesories : sdjhgfsdg', '27', NULL, '253l-convertible-freezer-double-door-refrigerator-rt28t3922r8-xzsa3', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-05-20 09:16:59', '2022-06-22 06:07:29'),
(4, 'Bharti Cements', 'admin', 9, 7, 1, '34', '34', 'youtube', NULL, 'cements', '<span style=\"color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">CPVC SDR 11 CPVC Pipes 40 mm 1.50inch</span><p><br></p>', '', '', 215.00, NULL, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 'quantity', 1, 1, 0, 0, '5', 5, 1, 3.00, 'percent', 1654021800, 1659292140, NULL, NULL, 'free', '0', 0, NULL, 0, 'Bharti Cements', 'CPVC SDR 11 CPVC Pipes 40 mm 1.50inch', '34', NULL, 'bharti-cements', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-06-07 08:41:34', '2022-06-22 06:07:29'),
(5, 'Indian Cements', 'admin', 9, 7, 2, '34', '34', 'youtube', NULL, 'cements', '<span style=\"color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">CPVC SDR 11 CPVC Pipes 40 mm 1.50inch</span><p><br></p>', '', '', 450.00, NULL, 1, '[\"1\",\"7\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\"]},{\"attribute_id\":\"7\",\"values\":[\"Length\",\"Height\"]}]', '[]', NULL, 1, 1, 1, 'quantity', 1, 1, 0, 0, '5', 5, 1, 5.00, 'percent', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'Indian Cements', 'CPVC SDR 11 CPVC Pipes 40 mm 1.50inch', '34', NULL, 'indian-cements', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-06-07 08:55:40', '2022-06-08 09:39:59'),
(6, 'White Cements', 'admin', 9, 7, 1, '34', '34', 'youtube', NULL, 'cements', '<span style=\"color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">CPVC SDR 11 CPVC Pipes 40 mm 1.50inch</span><p><br></p>', '', '', 215.00, NULL, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 'quantity', 1, 1, 0, 0, '5', 5, 1, 3.00, 'percent', 1654021800, 1659292140, NULL, NULL, 'free', '0', 0, NULL, 0, 'Bharti Cements', 'CPVC SDR 11 CPVC Pipes 40 mm 1.50inch', '34', NULL, 'bharti-cements', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-06-07 08:41:34', '2022-06-22 06:07:29'),
(7, 'Black Cements', 'admin', 9, 7, 2, '34', '34', 'youtube', NULL, 'cements', '<span style=\"color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13px;\">CPVC SDR 11 CPVC Pipes 40 mm 1.50inch</span><p><br></p>', '', '', 450.00, NULL, 1, '[\"1\",\"7\"]', '[{\"attribute_id\":\"1\",\"values\":[\"S\",\"M\",\"L\"]},{\"attribute_id\":\"7\",\"values\":[\"Length\",\"Height\"]}]', '[]', NULL, 1, 1, 1, 'quantity', 1, 1, 0, 0, '5', 5, 1, 5.00, 'percent', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'Indian Cements', 'CPVC SDR 11 CPVC Pipes 40 mm 1.50inch', '34', NULL, 'indian-cements', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-06-07 08:55:40', '2022-06-08 09:39:59'),
(8, 'aggregate product', 'admin', 9, 21, 2, NULL, '11', 'youtube', NULL, 'aggregate', NULL, '', '', 0.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 1, 0, 0, 0, '10', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'aggregate product', '', '11', NULL, 'aggregate-product', 0.00, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2022-06-22 10:35:23', '2022-06-22 10:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Black-S', NULL, 1000.00, 9, NULL, '2022-04-12 01:32:39', '2022-04-16 07:52:00'),
(2, 1, 'Black-M', NULL, 1050.00, 10, NULL, '2022-04-12 01:32:40', '2022-04-12 01:32:40'),
(3, 1, 'Black-L', NULL, 1150.00, 10, NULL, '2022-04-12 01:32:40', '2022-04-12 01:32:40'),
(43, 4, '', 'bxcbcxb', 215.00, 10, NULL, '2022-06-07 08:41:34', '2022-06-07 08:41:34'),
(53, 3, 'Black-S', NULL, 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(54, 3, 'Black-M', NULL, 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(55, 3, 'BlanchedAlmond-S', 'BlanchedAlmond-S', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(56, 3, 'BlanchedAlmond-M', 'BlanchedAlmond-M', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(57, 3, 'Brown-S', NULL, 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(58, 3, 'Brown-M', NULL, 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(59, 3, 'Coral-S', 'Coral-S', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(60, 3, 'Coral-M', 'Coral-M', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(61, 3, 'CornflowerBlue-S', 'CornflowerBlue-S', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(62, 3, 'CornflowerBlue-M', 'CornflowerBlue-M', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(63, 3, 'DarkGreen-S', 'DarkGreen-S', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(64, 3, 'DarkGreen-M', 'DarkGreen-M', 10000.00, 10, NULL, '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(71, 5, 'S-Length', 'S-Length', 550.00, 10, 18, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(72, 5, 'S-Height', 'S-Height', 560.00, 10, 31, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(73, 5, 'M-Length', 'M-Length', 570.00, 10, NULL, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(74, 5, 'M-Height', 'M-Height', 580.00, 10, 16, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(75, 5, 'L-Length', 'L-Length', 590.00, 10, NULL, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(76, 5, 'L-Height', 'L-Height', 600.00, 10, 26, '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(77, 8, '', NULL, 0.00, 0, NULL, '2022-06-22 10:35:23', '2022-06-22 10:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0.00, 'amount', '2022-04-12 01:32:39', '2022-04-12 01:32:39'),
(2, 1, 4, 5.00, 'percent', '2022-04-12 01:32:39', '2022-04-12 01:32:39'),
(3, 1, 5, 5.00, 'percent', '2022-04-12 01:32:39', '2022-04-12 01:32:39'),
(16, 2, 3, 0.00, 'amount', '2022-04-22 11:52:03', '2022-04-22 11:52:03'),
(17, 2, 4, 10.00, 'percent', '2022-04-22 11:52:03', '2022-04-22 11:52:03'),
(18, 2, 5, 10.00, 'percent', '2022-04-22 11:52:03', '2022-04-22 11:52:03'),
(19, 4, 3, 0.00, 'amount', '2022-06-07 08:41:34', '2022-06-07 08:41:34'),
(20, 4, 4, 0.00, 'amount', '2022-06-07 08:41:34', '2022-06-07 08:41:34'),
(21, 4, 5, 0.00, 'amount', '2022-06-07 08:41:34', '2022-06-07 08:41:34'),
(22, 4, 6, 0.00, 'amount', '2022-06-07 08:41:34', '2022-06-07 08:41:34'),
(39, 3, 3, 0.00, 'amount', '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(40, 3, 4, 0.00, 'amount', '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(41, 3, 5, 0.00, 'amount', '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(42, 3, 6, 0.00, 'amount', '2022-06-08 08:18:36', '2022-06-08 08:18:36'),
(47, 5, 3, 0.00, 'amount', '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(48, 5, 4, 0.00, 'amount', '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(49, 5, 5, 0.00, 'amount', '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(50, 5, 6, 0.00, 'amount', '2022-06-10 07:41:13', '2022-06-10 07:41:13'),
(51, 8, 3, 0.00, 'amount', '2022-06-22 10:35:23', '2022-06-22 10:35:23'),
(52, 8, 4, 0.00, 'amount', '2022-06-22 10:35:23', '2022-06-22 10:35:23'),
(53, 8, 5, 0.00, 'amount', '2022-06-22 10:35:23', '2022-06-22 10:35:23'),
(54, 8, 6, 0.00, 'amount', '2022-06-22 10:35:23', '2022-06-22 10:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'BT7118 Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys Analog Watch - For Men', 'Pc', '<p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys</span></p><p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Water Resistance : Yes</span></p><p><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Occasion : Casual<br></span><br></p>', 'en', '2022-04-12 01:32:40', '2022-04-12 01:32:40'),
(3, 8, 'aggregate product', '10', NULL, 'en', '2022-06-22 10:35:23', '2022-06-22 10:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `proxypay_payments`
--

CREATE TABLE `proxypay_payments` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(25,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 04:39:47', '2018-10-10 04:51:37'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, 'sffgg', 1, '2022-04-16 09:24:03', '2022-04-16 09:24:03'),
(5, 'BT7118 Mesh Strap All Black Smiley Multicolor Dial Quartz Mechanism Sports Water Resistant Watch for Boys Analog Watch - For Men', 1, '2022-04-16 09:24:34', '2022-04-16 09:24:34'),
(6, 'BT7118 Mesh Strap', 1, '2022-04-16 09:24:49', '2022-04-16 09:24:49'),
(7, 'gbfdhh', 1, '2022-04-16 10:20:10', '2022-04-16 10:20:10'),
(8, 'dshvygdiug', 1, '2022-04-18 07:45:48', '2022-04-18 07:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` double(3,2) NOT NULL DEFAULT 0.00,
  `num_of_reviews` int(11) NOT NULL DEFAULT 0,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `admin_to_pay` double(20,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `rating`, `num_of_reviews`, `num_of_sale`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 0.00, 0, 0, 1, '[{\"type\":\"text\",\"label\":\"Name\",\"value\":\"Mr. Seller\"},{\"type\":\"select\",\"label\":\"Marital Status\",\"value\":\"Married\"},{\"type\":\"multi_select\",\"label\":\"Company\",\"value\":\"[\\\"Company\\\"]\"},{\"type\":\"select\",\"label\":\"Gender\",\"value\":\"Male\"},{\"type\":\"file\",\"label\":\"Image\",\"value\":\"uploads\\/verification_form\\/CRWqFifcbKqibNzllBhEyUSkV6m1viknGXMEhtiW.png\"}]', 1, 78.40, NULL, NULL, NULL, NULL, 0, '2018-10-07 04:42:57', '2020-01-26 04:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `delivery_pickup_latitude` float DEFAULT NULL,
  `delivery_pickup_longitude` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `phone`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `delivery_pickup_latitude`, `delivery_pickup_longitude`, `created_at`, `updated_at`) VALUES
(1, 3, 'Demo Seller Shop', NULL, NULL, NULL, 'House : Demo, Road : Demo, Section : Demo', 'www.facebook.com', 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', 'Demo Seller Shop Title', 'Demo description', NULL, 0.00, NULL, NULL, '2018-11-27 10:23:13', '2019-08-06 06:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'vikash18mca@gmail.com', '2022-04-16 10:55:54', '2022-04-16 10:55:54'),
(2, 'admin@example.com', '2022-04-16 11:44:14', '2022-04-16 11:44:14'),
(3, 'vikas@gmail.com', '2022-04-22 13:13:46', '2022-04-22 13:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `tax_status`, `created_at`, `updated_at`) VALUES
(3, 'TAX', 1, '2021-03-07 11:45:33', '2022-04-22 13:03:00'),
(4, 'CGST', 1, '2022-04-11 23:14:10', '2022-04-22 13:02:51'),
(5, 'SGST', 1, '2022-04-11 23:14:37', '2022-04-22 13:02:52'),
(6, 'IGST', 1, '2022-04-22 13:02:48', '2022-04-22 13:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT 0,
  `client_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `additional_content` text DEFAULT NULL,
  `mpesa_request` varchar(255) DEFAULT NULL,
  `mpesa_receipt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3, 'en', 'all_category', 'All Category', '2020-11-02 07:40:38', '2021-09-20 07:29:07'),
(4, 'en', 'all', 'All', '2020-11-02 07:40:38', '2021-09-20 07:29:07'),
(5, 'en', 'flash_sale', 'Flash Sale', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(6, 'en', 'view_more', 'View More', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(7, 'en', 'add_to_wishlist', 'Add to wishlist', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(8, 'en', 'add_to_compare', 'Add to compare', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(9, 'en', 'add_to_cart', 'Add to cart', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(10, 'en', 'club_point', 'Club Point', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(11, 'en', 'classified_ads', 'Classified Ads', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(13, 'en', 'used', 'Used', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(14, 'en', 'top_10_categories', 'Top 10 Categories', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(15, 'en', 'view_all_categories', 'View All Categories', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(16, 'en', 'top_10_brands', 'Top 10 Brands', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(17, 'en', 'view_all_brands', 'View All Brands', '2020-11-02 07:40:40', '2021-09-20 07:29:07'),
(43, 'en', 'terms__conditions', 'Terms & conditions', '2020-11-02 07:40:41', '2021-09-20 07:29:07'),
(51, 'en', 'best_selling', 'Best Selling', '2020-11-02 07:40:42', '2021-09-20 07:29:07'),
(53, 'en', 'top_20', 'Top 20', '2020-11-02 07:40:42', '2021-09-20 07:29:07'),
(55, 'en', 'featured_products', 'Featured Products', '2020-11-02 07:40:42', '2021-09-20 07:29:07'),
(56, 'en', 'best_sellers', 'Best Sellers', '2020-11-02 07:40:43', '2021-09-20 07:29:07'),
(57, 'en', 'visit_store', 'Visit Store', '2020-11-02 07:40:43', '2021-09-20 07:29:07'),
(58, 'en', 'popular_suggestions', 'Popular Suggestions', '2020-11-02 07:46:59', '2021-09-20 07:29:07'),
(59, 'en', 'category_suggestions', 'Category Suggestions', '2020-11-02 07:46:59', '2021-09-20 07:29:07'),
(62, 'en', 'automobile__motorcycle', 'Automobile & Motorcycle', '2020-11-02 07:47:01', '2021-09-20 07:29:07'),
(63, 'en', 'price_range', 'Price range', '2020-11-02 07:47:01', '2021-09-20 07:29:07'),
(64, 'en', 'filter_by_color', 'Filter by color', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(65, 'en', 'home', 'Home', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(67, 'en', 'newest', 'Newest', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(68, 'en', 'oldest', 'Oldest', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(69, 'en', 'price_low_to_high', 'Price low to high', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(70, 'en', 'price_high_to_low', 'Price high to low', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(71, 'en', 'brands', 'Brands', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(72, 'en', 'all_brands', 'All Brands', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(74, 'en', 'all_sellers', 'All Sellers', '2020-11-02 07:47:02', '2021-09-20 07:29:07'),
(78, 'en', 'inhouse_product', 'Inhouse product', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(79, 'en', 'message_seller', 'Message Seller', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(80, 'en', 'price', 'Price', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(81, 'en', 'discount_price', 'Discount Price', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(82, 'en', 'color', 'Color', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(83, 'en', 'quantity', 'Quantity', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(84, 'en', 'available', 'available', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(85, 'en', 'total_price', 'Total Price', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(86, 'en', 'out_of_stock', 'Out of Stock', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(87, 'en', 'refund', 'Refund', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(88, 'en', 'share', 'Share', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(89, 'en', 'sold_by', 'Sold By', '2020-11-02 08:18:03', '2021-09-20 07:36:54'),
(90, 'en', 'customer_reviews', 'customer reviews', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(91, 'en', 'top_selling_products', 'Top Selling Products', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(92, 'en', 'description', 'Description', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(93, 'en', 'video', 'Video', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(94, 'en', 'reviews', 'Reviews', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(95, 'en', 'download', 'Download', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(96, 'en', 'there_have_been_no_reviews_for_this_product_yet', 'There have been no reviews for this product yet.', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(97, 'en', 'related_products', 'Related products', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(98, 'en', 'any_query_about_this_product', 'Any query about this product', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(99, 'en', 'product_name', 'Product Name', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(100, 'en', 'your_question', 'Your Question', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(101, 'en', 'send', 'Send', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(103, 'en', 'use_country_code_before_number', 'Use country code before number', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(105, 'en', 'remember_me', 'Remember Me', '2020-11-02 08:18:03', '2021-09-20 07:29:07'),
(107, 'en', 'dont_have_an_account', 'Dont have an account?', '2020-11-02 08:18:04', '2021-09-20 07:29:07'),
(108, 'en', 'register_now', 'Register Now', '2020-11-02 08:18:04', '2021-09-20 07:29:07'),
(109, 'en', 'or_login_with', 'Or Login With', '2020-11-02 08:18:04', '2021-09-20 07:29:07'),
(110, 'en', 'oops', 'oops..', '2020-11-02 10:29:04', '2021-09-20 07:29:07'),
(111, 'en', 'this_item_is_out_of_stock', 'This item is out of stock!', '2020-11-02 10:29:04', '2021-09-20 07:29:07'),
(112, 'en', 'back_to_shopping', 'Back to shopping', '2020-11-02 10:29:04', '2021-09-20 07:29:07'),
(113, 'en', 'login_to_your_account', 'Login to your account.', '2020-11-02 11:27:41', '2021-09-20 07:29:07'),
(115, 'en', 'purchase_history', 'Purchase History', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(116, 'en', 'new', 'New', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(117, 'en', 'downloads', 'Downloads', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(118, 'en', 'sent_refund_request', 'Sent Refund Request', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(119, 'en', 'product_bulk_upload', 'Product Bulk Upload', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(123, 'en', 'orders', 'Orders', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(124, 'en', 'recieved_refund_request', 'Recieved Refund Request', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(126, 'en', 'shop_setting', 'Shop Setting', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(127, 'en', 'payment_history', 'Payment History', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(128, 'en', 'money_withdraw', 'Money Withdraw', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(129, 'en', 'conversations', 'Conversations', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(130, 'en', 'my_wallet', 'My Wallet', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(131, 'en', 'earning_points', 'Earning Points', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(132, 'en', 'support_ticket', 'Support Ticket', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(133, 'en', 'manage_profile', 'Manage Profile', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(134, 'en', 'sold_amount', 'Sold Amount', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(135, 'en', 'your_sold_amount_current_month', 'Your sold amount (current month)', '2020-11-02 11:27:53', '2021-09-20 07:29:07'),
(136, 'en', 'total_sold', 'Total Sold', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(137, 'en', 'last_month_sold', 'Last Month Sold', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(138, 'en', 'total_sale', 'Total sale', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(139, 'en', 'total_earnings', 'Total earnings', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(140, 'en', 'successful_orders', 'Successful orders', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(141, 'en', 'total_orders', 'Total orders', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(142, 'en', 'pending_orders', 'Pending orders', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(143, 'en', 'cancelled_orders', 'Cancelled orders', '2020-11-02 11:27:54', '2021-09-20 07:29:07'),
(145, 'en', 'product', 'Product', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(147, 'en', 'purchased_package', 'Purchased Package', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(148, 'en', 'package_not_found', 'Package Not Found', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(149, 'en', 'upgrade_package', 'Upgrade Package', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(150, 'en', 'shop', 'Shop', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(151, 'en', 'manage__organize_your_shop', 'Manage & organize your shop', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(152, 'en', 'go_to_setting', 'Go to setting', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(153, 'en', 'payment', 'Payment', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(154, 'en', 'configure_your_payment_method', 'Configure your payment method', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(156, 'en', 'my_panel', 'My Panel', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(158, 'en', 'item_has_been_added_to_wishlist', 'Item has been added to wishlist', '2020-11-02 11:27:55', '2021-09-20 07:29:07'),
(159, 'en', 'my_points', 'My Points', '2020-11-02 11:28:15', '2021-09-20 07:29:07'),
(160, 'en', '_points', 'Points', '2020-11-02 11:28:15', '2021-09-20 07:29:07'),
(161, 'en', 'wallet_money', 'Wallet Money', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(162, 'en', 'exchange_rate', 'Exchange Rate', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(163, 'en', 'point_earning_history', 'Point Earning history', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(164, 'en', 'date', 'Date', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(165, 'en', 'points', 'Points', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(166, 'en', 'converted', 'Converted', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(167, 'en', 'action', 'Action', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(168, 'en', 'no_history_found', 'No history found.', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(169, 'en', 'convert_has_been_done_successfully_check_your_wallets', 'Convert has been done successfully Check your Wallets', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(170, 'en', 'something_went_wrong', 'Something went wrong', '2020-11-02 11:28:16', '2021-09-20 07:29:07'),
(171, 'en', 'remaining_uploads', 'Remaining Uploads', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(172, 'en', 'no_package_found', 'No Package Found', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(173, 'en', 'search_product', 'Search product', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(174, 'en', 'name', 'Name', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(176, 'en', 'current_qty', 'Current Qty', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(177, 'en', 'base_price', 'Base Price', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(178, 'en', 'published', 'Published', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(179, 'en', 'featured', 'Featured', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(180, 'en', 'options', 'Options', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(181, 'en', 'edit', 'Edit', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(182, 'en', 'duplicate', 'Duplicate', '2020-11-02 11:37:13', '2021-09-20 07:29:07'),
(184, 'en', '1_download_the_skeleton_file_and_fill_it_with_data', '1. Download the skeleton file and fill it with data.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(185, 'en', '2_you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', '2. You can download the example file to understand how the data must be filled.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(186, 'en', '3_once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(187, 'en', '4_after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', '4. After uploading products you need to edit them and set products images and choices.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(188, 'en', 'download_csv', 'Download CSV', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(189, 'en', '1_categorysub_categorysub_sub_category_and_brand_should_be_in_numerical_ids', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(190, 'en', '2_you_can_download_the_pdf_to_get_categorysub_categorysub_sub_category_and_brand_id', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(191, 'en', 'download_category', 'Download Category', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(192, 'en', 'download_sub_category', 'Download Sub category', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(193, 'en', 'download_sub_sub_category', 'Download Sub Sub category', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(194, 'en', 'download_brand', 'Download Brand', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(195, 'en', 'upload_csv_file', 'Upload CSV File', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(196, 'en', 'csv', 'CSV', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(197, 'en', 'choose_csv_file', 'Choose CSV File', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(198, 'en', 'upload', 'Upload', '2020-11-02 11:37:20', '2021-09-20 07:29:07'),
(199, 'en', 'add_new_digital_product', 'Add New Digital Product', '2020-11-02 11:37:25', '2021-09-20 07:29:07'),
(200, 'en', 'available_status', 'Available Status', '2020-11-02 11:37:29', '2021-09-20 07:29:07'),
(201, 'en', 'admin_status', 'Admin Status', '2020-11-02 11:37:29', '2021-09-20 07:29:07'),
(202, 'en', 'pending_balance', 'Pending Balance', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(203, 'en', 'send_withdraw_request', 'Send Withdraw Request', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(204, 'en', 'withdraw_request_history', 'Withdraw Request history', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(205, 'en', 'amount', 'Amount', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(206, 'en', 'status', 'Status', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(207, 'en', 'message', 'Message', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(208, 'en', 'send_a_withdraw_request', 'Send A Withdraw Request', '2020-11-02 11:38:07', '2021-09-20 07:29:07'),
(209, 'en', 'basic_info', 'Basic Info', '2020-11-02 11:38:13', '2021-09-20 07:29:07'),
(211, 'en', 'your_phone', 'Your Phone', '2020-11-02 11:38:13', '2021-09-20 07:29:07'),
(212, 'en', 'photo', 'Photo', '2020-11-02 11:38:13', '2021-09-20 07:29:07'),
(213, 'en', 'browse', 'Browse', '2020-11-02 11:38:13', '2021-09-20 07:29:07'),
(215, 'en', 'your_password', 'Your Password', '2020-11-02 11:38:13', '2021-09-20 07:29:07'),
(216, 'en', 'new_password', 'New Password', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(217, 'en', 'confirm_password', 'Confirm Password', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(218, 'en', 'add_new_address', 'Add New Address', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(219, 'en', 'payment_setting', 'Payment Setting', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(220, 'en', 'cash_payment', 'Cash Payment', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(221, 'en', 'bank_payment', 'Bank Payment', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(222, 'en', 'bank_name', 'Bank Name', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(223, 'en', 'bank_account_name', 'Bank Account Name', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(224, 'en', 'bank_account_number', 'Bank Account Number', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(225, 'en', 'bank_routing_number', 'Bank Routing Number', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(226, 'en', 'update_profile', 'Update Profile', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(227, 'en', 'change_your_email', 'Change your email', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(228, 'en', 'your_email', 'Your Email', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(229, 'en', 'sending_email', 'Sending Email...', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(230, 'en', 'verify', 'Verify', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(231, 'en', 'update_email', 'Update Email', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(232, 'en', 'new_address', 'New Address', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(233, 'en', 'your_address', 'Your Address', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(234, 'en', 'country', 'Country', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(235, 'en', 'select_your_country', 'Select your country', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(236, 'en', 'city', 'City', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(237, 'en', 'your_city', 'Your City', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(239, 'en', 'your_postal_code', 'Your Postal Code', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(240, 'en', '880', '+880', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(241, 'en', 'save', 'Save', '2020-11-02 11:38:14', '2021-09-20 07:29:07'),
(242, 'en', 'received_refund_request', 'Received Refund Request', '2020-11-02 11:56:20', '2021-09-20 07:29:07'),
(244, 'en', 'delete_confirmation', 'Delete Confirmation', '2020-11-02 11:56:20', '2021-09-20 07:29:07'),
(245, 'en', 'are_you_sure_to_delete_this', 'Are you sure to delete this?', '2020-11-02 11:56:21', '2021-09-20 07:29:07'),
(246, 'en', 'premium_packages_for_sellers', 'Premium Packages for Sellers', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(247, 'en', 'product_upload', 'Product Upload', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(248, 'en', 'digital_product_upload', 'Digital Product Upload', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(250, 'en', 'purchase_package', 'Purchase Package', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(251, 'en', 'select_payment_type', 'Select Payment Type', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(252, 'en', 'payment_type', 'Payment Type', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(253, 'en', 'select_one', 'Select One', '2020-11-02 11:57:36', '2021-09-20 07:29:07'),
(254, 'en', 'online_payment', 'Online payment', '2020-11-02 11:57:37', '2021-09-20 07:29:07'),
(255, 'en', 'offline_payment', 'Offline payment', '2020-11-02 11:57:37', '2021-09-20 07:29:07'),
(256, 'en', 'purchase_your_package', 'Purchase Your Package', '2020-11-02 11:57:37', '2021-09-20 07:29:07'),
(258, 'en', 'paypal', 'Paypal', '2020-11-02 11:57:37', '2021-09-20 07:29:07'),
(259, 'en', 'stripe', 'Stripe', '2020-11-02 11:57:37', '2021-09-20 07:29:07'),
(260, 'en', 'sslcommerz', 'sslcommerz', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(265, 'en', 'confirm', 'Confirm', '2020-11-02 11:57:37', '2021-09-20 07:29:08'),
(266, 'en', 'offline_package_payment', 'Offline Package Payment', '2020-11-02 11:57:37', '2021-09-20 07:29:08'),
(267, 'en', 'transaction_id', 'Transaction ID', '2020-11-02 12:30:12', '2021-09-20 07:29:08'),
(268, 'en', 'choose_image', 'Choose image', '2020-11-02 12:30:12', '2021-09-20 07:29:08'),
(269, 'en', 'code', 'Code', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(270, 'en', 'delivery_status', 'Delivery Status', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(271, 'en', 'payment_status', 'Payment Status', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(272, 'en', 'paid', 'Paid', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(273, 'en', 'order_details', 'Order Details', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(274, 'en', 'download_invoice', 'Download Invoice', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(275, 'en', 'unpaid', 'Unpaid', '2020-11-02 12:42:00', '2021-09-20 07:29:08'),
(277, 'en', 'order_placed', 'Order placed', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(278, 'en', 'confirmed', 'Confirmed', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(279, 'en', 'on_delivery', 'On delivery', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(280, 'en', 'delivered', 'Delivered', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(281, 'en', 'order_summary', 'Order Summary', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(282, 'en', 'order_code', 'Order Code', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(283, 'en', 'customer', 'Customer', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(287, 'en', 'total_order_amount', 'Total order amount', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(288, 'en', 'shipping_metdod', 'Shipping metdod', '2020-11-02 12:43:59', '2021-09-20 07:29:08'),
(289, 'en', 'flat_shipping_rate', 'Flat shipping rate', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(290, 'en', 'payment_metdod', 'Payment metdod', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(291, 'en', 'variation', 'Variation', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(292, 'en', 'delivery_type', 'Delivery Type', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(293, 'en', 'home_delivery', 'Home Delivery', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(294, 'en', 'order_ammount', 'Order Ammount', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(295, 'en', 'subtotal', 'Subtotal', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(296, 'en', 'shipping', 'Shipping', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(298, 'en', 'coupon_discount', 'Coupon Discount', '2020-11-02 12:44:00', '2021-09-20 07:29:08'),
(300, 'en', 'na', 'N/A', '2020-11-02 12:44:20', '2021-09-20 07:29:08'),
(301, 'en', 'in_stock', 'In stock', '2020-11-02 12:54:52', '2021-09-20 07:29:08'),
(302, 'en', 'buy_now', 'Buy Now', '2020-11-02 12:54:52', '2021-09-20 07:29:08'),
(303, 'en', 'item_added_to_your_cart', 'Item added to your cart!', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(304, 'en', 'proceed_to_checkout', 'Proceed to Checkout', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(305, 'en', 'cart_items', 'Cart Items', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(306, 'en', '1_my_cart', '1. My Cart', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(307, 'en', 'view_cart', 'View cart', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(308, 'en', '2_shipping_info', '2. Shipping info', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(309, 'en', 'checkout', 'Checkout', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(310, 'en', '3_delivery_info', '3. Delivery info', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(311, 'en', '4_payment', '4. Payment', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(312, 'en', '5_confirmation', '5. Confirmation', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(313, 'en', 'remove', 'Remove', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(314, 'en', 'return_to_shop', 'Return to shop', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(315, 'en', 'continue_to_shipping', 'Continue to Shipping', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(316, 'en', 'or', 'Or', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(317, 'en', 'guest_checkout', 'Guest Checkout', '2020-11-02 12:56:46', '2021-09-20 07:29:08'),
(318, 'en', 'continue_to_delivery_info', 'Continue to Delivery Info', '2020-11-02 12:57:44', '2021-09-20 07:29:08'),
(319, 'en', 'postal_code', 'Postal Code', '2020-11-02 13:01:01', '2021-09-20 07:29:08'),
(320, 'en', 'choose_delivery_type', 'Choose Delivery Type', '2020-11-02 13:01:04', '2021-09-20 07:29:08'),
(321, 'en', 'local_pickup', 'Local Pickup', '2020-11-02 13:01:04', '2021-09-20 07:29:08'),
(322, 'en', 'select_your_nearest_pickup_point', 'Select your nearest pickup point', '2020-11-02 13:01:04', '2021-09-20 07:29:08'),
(323, 'en', 'continue_to_payment', 'Continue to Payment', '2020-11-02 13:01:04', '2021-09-20 07:29:08'),
(324, 'en', 'select_a_payment_option', 'Select a payment option', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(325, 'en', 'razorpay', 'Razorpay', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(326, 'en', 'paystack', 'Paystack', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(327, 'en', 'voguepay', 'VoguePay', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(328, 'en', 'payhere', 'payhere', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(329, 'en', 'ngenius', 'ngenius', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(330, 'en', 'paytm', 'Paytm', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(331, 'en', 'cash_on_delivery', 'Cash on Delivery', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(332, 'en', 'your_wallet_balance_', 'Your wallet balance :', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(333, 'en', 'insufficient_balance', 'Insufficient balance', '2020-11-02 13:01:13', '2021-09-20 07:29:08'),
(334, 'en', 'i_agree_to_the', 'I agree to the', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(338, 'en', 'complete_order', 'Complete Order', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(339, 'en', 'summary', 'Summary', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(340, 'en', 'items', 'Items', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(341, 'en', 'total_club_point', 'Total Club point', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(342, 'en', 'total_shipping', 'Total Shipping', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(343, 'en', 'have_coupon_code_enter_here', 'Have coupon code? Enter here', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(344, 'en', 'apply', 'Apply', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(345, 'en', 'you_need_to_agree_with_our_policies', 'You need to agree with our policies', '2020-11-02 13:01:14', '2021-09-20 07:29:08'),
(346, 'en', 'forgot_password', 'Forgot password', '2020-11-02 13:01:25', '2021-09-20 07:29:08'),
(469, 'en', 'seo_setting', 'SEO Setting', '2020-11-02 13:01:33', '2021-09-20 07:29:08'),
(474, 'en', 'system_update', 'System Update', '2020-11-02 13:01:34', '2021-09-20 07:29:08'),
(480, 'en', 'add_new_payment_method', 'Add New Payment Method', '2020-11-02 13:01:38', '2021-09-20 07:29:08'),
(481, 'en', 'manual_payment_method', 'Manual Payment Method', '2020-11-02 13:01:38', '2021-09-20 07:29:08'),
(482, 'en', 'heading', 'Heading', '2020-11-02 13:01:38', '2021-09-20 07:29:08'),
(483, 'en', 'logo', 'Logo', '2020-11-02 13:01:38', '2021-09-20 07:29:08'),
(484, 'en', 'manual_payment_information', 'Manual Payment Information', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(485, 'en', 'type', 'Type', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(486, 'en', 'custom_payment', 'Custom Payment', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(487, 'en', 'check_payment', 'Check Payment', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(488, 'en', 'checkout_thumbnail', 'Checkout Thumbnail', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(489, 'en', 'payment_instruction', 'Payment Instruction', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(490, 'en', 'bank_information', 'Bank Information', '2020-11-02 13:01:42', '2021-09-20 07:29:08'),
(491, 'en', 'select_file', 'Select File', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(492, 'en', 'upload_new', 'Upload New', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(493, 'en', 'sort_by_newest', 'Sort by newest', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(494, 'en', 'sort_by_oldest', 'Sort by oldest', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(495, 'en', 'sort_by_smallest', 'Sort by smallest', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(496, 'en', 'sort_by_largest', 'Sort by largest', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(497, 'en', 'selected_only', 'Selected Only', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(498, 'en', 'no_files_found', 'No files found', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(499, 'en', '0_file_selected', '0 File selected', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(500, 'en', 'clear', 'Clear', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(501, 'en', 'prev', 'Prev', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(502, 'en', 'next', 'Next', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(503, 'en', 'add_files', 'Add Files', '2020-11-02 13:01:53', '2021-09-20 07:29:08'),
(504, 'en', 'method_has_been_inserted_successfully', 'Method has been inserted successfully', '2020-11-02 13:02:03', '2021-09-20 07:29:08'),
(506, 'en', 'order_date', 'Order Date', '2020-11-02 13:02:42', '2021-09-20 07:29:08'),
(507, 'en', 'bill_to', 'Bill to', '2020-11-02 13:02:42', '2021-09-20 07:29:08'),
(510, 'en', 'sub_total', 'Sub Total', '2020-11-02 13:02:42', '2021-09-20 07:29:08'),
(512, 'en', 'total_tax', 'Total Tax', '2020-11-02 13:02:42', '2021-09-20 07:29:08'),
(513, 'en', 'grand_total', 'Grand Total', '2020-11-02 13:02:42', '2021-09-20 07:29:08'),
(514, 'en', 'your_order_has_been_placed_successfully_please_submit_payment_information_from_purchase_history', 'Your order has been placed successfully. Please submit payment information from purchase history', '2020-11-02 13:02:47', '2021-09-20 07:29:08'),
(515, 'en', 'thank_you_for_your_order', 'Thank You for Your Order!', '2020-11-02 13:02:48', '2021-09-20 07:29:08'),
(516, 'en', 'order_code', 'Order Code:', '2020-11-02 13:02:48', '2021-09-20 07:29:08'),
(517, 'en', 'a_copy_or_your_order_summary_has_been_sent_to', 'A copy or your order summary has been sent to', '2020-11-02 13:02:48', '2021-09-20 07:29:08'),
(518, 'en', 'make_payment', 'Make Payment', '2020-11-02 13:03:26', '2021-09-20 07:29:08'),
(519, 'en', 'payment_screenshot', 'Payment screenshot', '2020-11-02 13:03:29', '2021-09-20 07:29:08'),
(520, 'en', 'paypal_credential', 'Paypal Credential', '2020-11-02 13:12:20', '2021-09-20 07:29:08'),
(522, 'en', 'paypal_client_id', 'Paypal Client ID', '2020-11-02 13:12:20', '2021-09-20 07:29:08'),
(523, 'en', 'paypal_client_secret', 'Paypal Client Secret', '2020-11-02 13:12:20', '2021-09-20 07:29:08'),
(524, 'en', 'paypal_sandbox_mode', 'Paypal Sandbox Mode', '2020-11-02 13:12:20', '2021-09-20 07:29:08'),
(525, 'en', 'sslcommerz_credential', 'Sslcommerz Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(526, 'en', 'sslcz_store_id', 'Sslcz Store Id', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(527, 'en', 'sslcz_store_password', 'Sslcz store password', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(528, 'en', 'sslcommerz_sandbox_mode', 'Sslcommerz Sandbox Mode', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(529, 'en', 'stripe_credential', 'Stripe Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(531, 'en', 'stripe_key', 'STRIPE KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(533, 'en', 'stripe_secret', 'STRIPE SECRET', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(534, 'en', 'razorpay_credential', 'RazorPay Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(535, 'en', 'razor_key', 'RAZOR KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(536, 'en', 'razor_secret', 'RAZOR SECRET', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(537, 'en', 'instamojo_credential', 'Instamojo Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(538, 'en', 'api_key', 'API KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(539, 'en', 'im_api_key', 'IM API KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(540, 'en', 'auth_token', 'AUTH TOKEN', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(541, 'en', 'im_auth_token', 'IM AUTH TOKEN', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(542, 'en', 'instamojo_sandbox_mode', 'Instamojo Sandbox Mode', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(543, 'en', 'paystack_credential', 'PayStack Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(544, 'en', 'public_key', 'PUBLIC KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(545, 'en', 'secret_key', 'SECRET KEY', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(546, 'en', 'merchant_email', 'MERCHANT EMAIL', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(547, 'en', 'voguepay_credential', 'VoguePay Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(548, 'en', 'merchant_id', 'MERCHANT ID', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(549, 'en', 'sandbox_mode', 'Sandbox Mode', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(550, 'en', 'payhere_credential', 'Payhere Credential', '2020-11-02 13:12:21', '2021-09-20 07:29:08'),
(551, 'en', 'payhere_merchant_id', 'PAYHERE MERCHANT ID', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(552, 'en', 'payhere_secret', 'PAYHERE SECRET', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(553, 'en', 'payhere_currency', 'PAYHERE CURRENCY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(554, 'en', 'payhere_sandbox_mode', 'Payhere Sandbox Mode', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(555, 'en', 'ngenius_credential', 'Ngenius Credential', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(556, 'en', 'ngenius_outlet_id', 'NGENIUS OUTLET ID', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(557, 'en', 'ngenius_api_key', 'NGENIUS API KEY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(558, 'en', 'ngenius_currency', 'NGENIUS CURRENCY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(559, 'en', 'mpesa_credential', 'Mpesa Credential', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(560, 'en', 'mpesa_consumer_key', 'MPESA CONSUMER KEY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(561, 'en', 'mpesa_consumer_key', 'MPESA_CONSUMER_KEY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(562, 'en', 'mpesa_consumer_secret', 'MPESA CONSUMER SECRET', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(563, 'en', 'mpesa_consumer_secret', 'MPESA_CONSUMER_SECRET', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(564, 'en', 'mpesa_short_code', 'MPESA SHORT CODE', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(565, 'en', 'mpesa_short_code', 'MPESA_SHORT_CODE', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(566, 'en', 'mpesa_sandbox_activation', 'MPESA SANDBOX ACTIVATION', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(567, 'en', 'flutterwave_credential', 'Flutterwave Credential', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(568, 'en', 'rave_public_key', 'RAVE_PUBLIC_KEY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(569, 'en', 'rave_secret_key', 'RAVE_SECRET_KEY', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(570, 'en', 'rave_title', 'RAVE_TITLE', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(571, 'en', 'stagin_activation', 'STAGIN ACTIVATION', '2020-11-02 13:12:22', '2021-09-20 07:29:08'),
(573, 'en', 'all_product', 'All Product', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(574, 'en', 'sort_by', 'Sort By', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(575, 'en', 'rating_high__low', 'Rating (High > Low)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(576, 'en', 'rating_low__high', 'Rating (Low > High)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(577, 'en', 'num_of_sale_high__low', 'Num of Sale (High > Low)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(578, 'en', 'num_of_sale_low__high', 'Num of Sale (Low > High)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(579, 'en', 'base_price_high__low', 'Base Price (High > Low)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(580, 'en', 'base_price_low__high', 'Base Price (Low > High)', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(581, 'en', 'type__enter', 'Type & Enter', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(582, 'en', 'added_by', 'Added By', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(583, 'en', 'num_of_sale', 'Num of Sale', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(584, 'en', 'total_stock', 'Total Stock', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(585, 'en', 'todays_deal', 'Todays Deal', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(586, 'en', 'rating', 'Rating', '2020-11-02 13:15:01', '2021-09-20 07:29:08'),
(587, 'en', 'times', 'times', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(588, 'en', 'add_nerw_product', 'Add Nerw Product', '2020-11-02 13:15:02', '2021-09-20 07:29:08'),
(589, 'en', 'product_information', 'Product Information', '2020-11-02 13:15:02', '2021-09-20 07:29:08'),
(590, 'en', 'unit', 'Unit', '2020-11-02 13:15:02', '2021-09-20 07:29:08'),
(591, 'en', 'unit_eg_kg_pc_etc', 'Unit (e.g. KG, Pc etc)', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(592, 'en', 'minimum_qty', 'Minimum Qty', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(593, 'en', 'tags', 'Tags', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(594, 'en', 'type_and_hit_enter_to_add_a_tag', 'Type and hit enter to add a tag', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(595, 'en', 'barcode', 'Barcode', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(596, 'en', 'refundable', 'Refundable', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(597, 'en', 'product_images', 'Product Images', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(598, 'en', 'gallery_images', 'Gallery Images', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(599, 'en', 'todays_deal_updated_successfully', 'Todays Deal updated successfully', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(600, 'en', 'published_products_updated_successfully', 'Published products updated successfully', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(601, 'en', 'thumbnail_image', 'Thumbnail Image', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(602, 'en', 'featured_products_updated_successfully', 'Featured products updated successfully', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(603, 'en', 'product_videos', 'Product Videos', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(604, 'en', 'video_provider', 'Video Provider', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(605, 'en', 'youtube', 'Youtube', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(606, 'en', 'dailymotion', 'Dailymotion', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(607, 'en', 'vimeo', 'Vimeo', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(608, 'en', 'video_link', 'Video Link', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(609, 'en', 'product_variation', 'Product Variation', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(610, 'en', 'colors', 'Colors', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(611, 'en', 'attributes', 'Attributes', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(612, 'en', 'choose_attributes', 'Choose Attributes', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(613, 'en', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'Choose the attributes of this product and then input values of each attribute', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(614, 'en', 'product_price__stock', 'Product price + stock', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(616, 'en', 'unit_price', 'Unit price', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(617, 'en', 'purchase_price', 'Purchase price', '2020-11-02 13:15:03', '2021-09-20 07:29:08'),
(618, 'en', 'flat', 'Flat', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(619, 'en', 'percent', 'Percent', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(620, 'en', 'discount', 'Discount', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(621, 'en', 'product_description', 'Product Description', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(622, 'en', 'product_shipping_cost', 'Product Shipping Cost', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(623, 'en', 'free_shipping', 'Free Shipping', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(624, 'en', 'flat_rate', 'Flat Rate', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(625, 'en', 'shipping_cost', 'Shipping cost', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(626, 'en', 'pdf_specification', 'PDF Specification', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(627, 'en', 'seo_meta_tags', 'SEO Meta Tags', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(628, 'en', 'meta_title', 'Meta Title', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(629, 'en', 'meta_image', 'Meta Image', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(630, 'en', 'choice_title', 'Choice Title', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(631, 'en', 'enter_choice_values', 'Enter choice values', '2020-11-02 13:15:04', '2021-09-20 07:29:08'),
(632, 'en', 'all_categories', 'All categories A', '2020-11-03 07:12:19', '2021-09-20 07:40:46'),
(633, 'en', 'add_new_category', 'Add New category', '2020-11-03 07:12:19', '2021-09-20 07:29:08'),
(634, 'en', 'type_name__enter', 'Type name & Enter', '2020-11-03 07:12:19', '2021-09-20 07:29:08'),
(635, 'en', 'banner', 'Banner', '2020-11-03 07:12:19', '2021-09-20 07:29:08'),
(637, 'en', 'commission', 'Commission', '2020-11-03 07:12:19', '2021-09-20 07:29:08'),
(638, 'en', 'icon', 'icon', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(639, 'en', 'featured_categories_updated_successfully', 'Featured categories updated successfully', '2020-11-03 07:12:20', '2021-09-20 07:29:08'),
(640, 'en', 'hot', 'Hot', '2020-11-03 07:13:12', '2021-09-20 07:29:08'),
(641, 'en', 'filter_by_payment_status', 'Filter by Payment Status', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(642, 'en', 'unpaid', 'Un-Paid', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(643, 'en', 'filter_by_deliver_status', 'Filter by Deliver Status', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(644, 'en', 'pending', 'Pending', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(645, 'en', 'type_order_code__hit_enter', 'Type Order code & hit Enter', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(646, 'en', 'num_of_products', 'Num. of Products', '2020-11-03 07:15:15', '2021-09-20 07:29:08'),
(647, 'en', 'walk_in_customer', 'Walk In Customer', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(648, 'en', 'qty', 'QTY', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(649, 'en', 'without_shipping_charge', 'Without Shipping Charge', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(650, 'en', 'with_shipping_charge', 'With Shipping Charge', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(651, 'en', 'pay_with_cash', 'Pay With Cash', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(652, 'en', 'shipping_address', 'Shipping Address', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(653, 'en', 'close', 'Close', '2020-11-03 10:03:20', '2021-09-20 07:29:08'),
(654, 'en', 'select_country', 'Select country', '2020-11-03 10:03:21', '2021-09-20 07:29:08'),
(655, 'en', 'order_confirmation', 'Order Confirmation', '2020-11-03 10:03:21', '2021-09-20 07:29:08'),
(656, 'en', 'are_you_sure_to_confirm_this_order', 'Are you sure to confirm this order?', '2020-11-03 10:03:21', '2021-09-20 07:29:08'),
(657, 'en', 'comfirm_order', 'Comfirm Order', '2020-11-03 10:03:21', '2021-09-20 07:29:08'),
(659, 'en', 'personal_info', 'Personal Info', '2020-11-03 11:38:15', '2021-09-20 07:29:08'),
(660, 'en', 'repeat_password', 'Repeat Password', '2020-11-03 11:38:15', '2021-09-20 07:29:08'),
(661, 'en', 'shop_name', 'Shop Name', '2020-11-03 11:38:15', '2021-09-20 07:29:08'),
(662, 'en', 'register_your_shop', 'Register Your Shop', '2020-11-03 11:38:15', '2021-09-20 07:29:08'),
(663, 'en', 'affiliate_informations', 'Affiliate Informations', '2020-11-03 11:39:06', '2021-09-20 07:29:08'),
(664, 'en', 'affiliate', 'Affiliate', '2020-11-03 11:39:06', '2021-09-20 07:29:08'),
(665, 'en', 'user_info', 'User Info', '2020-11-03 11:39:06', '2021-09-20 07:29:08'),
(667, 'en', 'installed_addon', 'Installed Addon', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(668, 'en', 'available_addon', 'Available Addon', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(669, 'en', 'install_new_addon', 'Install New Addon', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(670, 'en', 'version', 'Version', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(671, 'en', 'activated', 'Activated', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(672, 'en', 'deactivated', 'Deactivated', '2020-11-03 11:48:13', '2021-09-20 07:29:08'),
(673, 'en', 'activate_otp', 'Activate OTP', '2020-11-03 11:48:20', '2021-09-20 07:29:08'),
(674, 'en', 'otp_will_be_used_for', 'OTP will be Used For', '2020-11-03 11:48:20', '2021-09-20 07:29:08'),
(675, 'en', 'settings_updated_successfully', 'Settings updated successfully', '2020-11-03 11:48:20', '2021-09-20 07:29:08'),
(676, 'en', 'product_owner', 'Product Owner', '2020-11-03 11:48:46', '2021-09-20 07:29:08'),
(677, 'en', 'point', 'Point', '2020-11-03 11:48:46', '2021-09-20 07:29:08'),
(678, 'en', 'set_point_for_product_within_a_range', 'Set Point for Product Within a Range', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(679, 'en', 'set_point_for_multiple_products', 'Set Point for multiple products', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(680, 'en', 'min_price', 'Min Price', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(681, 'en', 'max_price', 'Max Price', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(682, 'en', 'set_point_for_all_products', 'Set Point for all Products', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(683, 'en', 'set_point_for_', 'Set Point For', '2020-11-03 11:48:47', '2021-09-20 07:29:08'),
(684, 'en', 'convert_status', 'Convert Status', '2020-11-03 11:48:58', '2021-09-20 07:29:08'),
(685, 'en', 'earned_at', 'Earned At', '2020-11-03 11:48:59', '2021-09-20 07:29:08'),
(686, 'en', 'seller_based_selling_report', 'Seller Based Selling Report', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(687, 'en', 'sort_by_verificarion_status', 'Sort by verificarion status', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(688, 'en', 'approved', 'Approved', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(689, 'en', 'non_approved', 'Non Approved', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(690, 'en', 'filter', 'Filter', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(691, 'en', 'seller_name', 'Seller Name', '2020-11-03 11:49:35', '2021-09-20 07:29:08'),
(692, 'en', 'number_of_product_sale', 'Number of Product Sale', '2020-11-03 11:49:36', '2021-09-20 07:29:08'),
(693, 'en', 'order_amount', 'Order Amount', '2020-11-03 11:49:36', '2021-09-20 07:29:08'),
(694, 'en', 'facebook_chat_setting', 'Facebook Chat Setting', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(695, 'en', 'facebook_page_id', 'Facebook Page ID', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(696, 'en', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(697, 'en', 'login_into_your_facebook_page', 'Login into your facebook page', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(698, 'en', 'find_the_about_option_of_your_facebook_page', 'Find the About option of your facebook page', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(699, 'en', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(700, 'en', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(701, 'en', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(702, 'en', 'set_your_website_domain_name', 'Set your website domain name', '2020-11-03 11:51:14', '2021-09-20 07:29:08'),
(703, 'en', 'google_recaptcha_setting', 'Google reCAPTCHA Setting', '2020-11-03 11:51:25', '2021-09-20 07:29:08'),
(704, 'en', 'site_key', 'Site KEY', '2020-11-03 11:51:25', '2021-09-20 07:29:08'),
(705, 'en', 'select_shipping_method', 'Select Shipping Method', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(706, 'en', 'product_wise_shipping_cost', 'Product Wise Shipping Cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(707, 'en', 'flat_rate_shipping_cost', 'Flat Rate Shipping Cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(708, 'en', 'seller_wise_flat_shipping_cost', 'Seller Wise Flat Shipping Cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(709, 'en', 'note', 'Note', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(710, 'en', 'product_wise_shipping_cost_calulation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(711, 'en', 'flat_rate_shipping_cost_calulation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(712, 'en', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_a_customer_purchase_2_product_from_two_seller_shipping_cost_is_calculate_by_addition_of_each_seller_flat_shipping_cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(713, 'en', 'flat_rate_cost', 'Flat Rate Cost', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(714, 'en', 'shipping_cost_for_admin_products', 'Shipping Cost for Admin Products', '2020-11-03 11:51:32', '2021-09-20 07:29:08'),
(715, 'en', 'countries', 'Countries', '2020-11-03 11:52:02', '2021-09-20 07:29:08'),
(716, 'en', 'showhide', 'Show/Hide', '2020-11-03 11:52:02', '2021-09-20 07:29:08'),
(717, 'en', 'country_status_updated_successfully', 'Country status updated successfully', '2020-11-03 11:52:02', '2021-09-20 07:29:08'),
(718, 'en', 'all_subcategories', 'All Subcategories', '2020-11-03 12:27:55', '2021-09-20 07:29:08'),
(719, 'en', 'add_new_subcategory', 'Add New Subcategory', '2020-11-03 12:27:55', '2021-09-20 07:29:08'),
(720, 'en', 'subcategories', 'Sub-Categories', '2020-11-03 12:27:55', '2021-09-20 07:29:08'),
(721, 'en', 'sub_category_information', 'Sub Category Information', '2020-11-03 12:28:07', '2021-09-20 07:29:08'),
(723, 'en', 'slug', 'Slug', '2020-11-03 12:28:07', '2021-09-20 07:29:08'),
(724, 'en', 'all_sub_subcategories', 'All Sub Subcategories', '2020-11-03 12:29:12', '2021-09-20 07:29:08'),
(725, 'en', 'add_new_sub_subcategory', 'Add New Sub Subcategory', '2020-11-03 12:29:12', '2021-09-20 07:29:08'),
(726, 'en', 'subsubcategories', 'Sub-Sub-categories', '2020-11-03 12:29:12', '2021-09-20 07:29:08'),
(727, 'en', 'make_this_default', 'Make This Default', '2020-11-04 08:24:24', '2021-09-20 07:29:08'),
(728, 'en', 'shops', 'Shops', '2020-11-04 11:17:10', '2021-09-20 07:29:08');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(729, 'en', 'women_clothing__fashion', 'Women Clothing & Fashion', '2020-11-04 11:23:12', '2021-09-20 07:29:08'),
(730, 'en', 'cellphones__tabs', 'Cellphones & Tabs', '2020-11-04 12:10:41', '2021-09-20 07:29:08'),
(731, 'en', 'welcome_to', 'Welcome to', '2020-11-07 07:14:43', '2021-09-20 07:29:08'),
(732, 'en', 'create_a_new_account', 'Create a New Account', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(733, 'en', 'full_name', 'Full Name', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(734, 'en', 'password', 'password', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(735, 'en', 'confrim_password', 'Confrim Password', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(736, 'en', 'i_agree_with_the', 'I agree with the', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(737, 'en', 'terms_and_conditions', 'Terms and Conditions', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(738, 'en', 'register', 'Register', '2020-11-07 07:32:15', '2021-09-20 07:29:08'),
(739, 'en', 'already_have_an_account', 'Already have an account', '2020-11-07 07:32:16', '2021-09-20 07:29:08'),
(741, 'en', 'sign_up_with', 'Sign Up with', '2020-11-07 07:32:16', '2021-09-20 07:29:08'),
(742, 'en', 'i_agree_with_the_terms_and_conditions', 'I agree with the Terms and Conditions', '2020-11-07 07:34:49', '2021-09-20 07:29:08'),
(745, 'en', 'all_role', 'All Role', '2020-11-07 07:44:28', '2021-09-20 07:29:08'),
(746, 'en', 'add_new_role', 'Add New Role', '2020-11-07 07:44:28', '2021-09-20 07:29:08'),
(747, 'en', 'roles', 'Roles', '2020-11-07 07:44:28', '2021-09-20 07:29:08'),
(749, 'en', 'add_new_staffs', 'Add New Staffs', '2020-11-07 07:44:36', '2021-09-20 07:29:08'),
(750, 'en', 'role', 'Role', '2020-11-07 07:44:36', '2021-09-20 07:29:08'),
(751, 'en', 'frontend_website_name', 'Frontend Website Name', '2020-11-07 07:44:59', '2021-09-20 07:29:08'),
(752, 'en', 'website_name', 'Website Name', '2020-11-07 07:44:59', '2021-09-20 07:29:08'),
(753, 'en', 'site_motto', 'Site Motto', '2020-11-07 07:44:59', '2021-09-20 07:29:08'),
(754, 'en', 'best_ecommerce_website', 'Best eCommerce Website', '2020-11-07 07:44:59', '2021-09-20 07:29:08'),
(755, 'en', 'site_icon', 'Site Icon', '2020-11-07 07:44:59', '2021-09-20 07:29:09'),
(756, 'en', 'website_favicon_32x32_png', 'Website favicon. 32x32 .png', '2020-11-07 07:44:59', '2021-09-20 07:29:09'),
(757, 'en', 'website_base_color', 'Website Base Color', '2020-11-07 07:44:59', '2021-09-20 07:29:09'),
(758, 'en', 'hex_color_code', 'Hex Color Code', '2020-11-07 07:44:59', '2021-09-20 07:29:09'),
(759, 'en', 'website_base_hover_color', 'Website Base Hover Color', '2020-11-07 07:44:59', '2021-09-20 07:29:09'),
(760, 'en', 'update', 'Update', '2020-11-07 07:45:00', '2021-09-20 07:29:09'),
(761, 'en', 'global_seo', 'Global Seo', '2020-11-07 07:45:00', '2021-09-20 07:29:09'),
(762, 'en', 'meta_description', 'Meta description', '2020-11-07 07:45:00', '2021-09-20 07:29:09'),
(763, 'en', 'keywords', 'Keywords', '2020-11-07 07:45:00', '2021-09-20 07:29:09'),
(764, 'en', 'separate_with_coma', 'Separate with coma', '2020-11-07 07:45:00', '2021-09-20 07:29:09'),
(765, 'en', 'website_pages', 'Website Pages', '2020-11-07 07:49:04', '2021-09-20 07:29:09'),
(766, 'en', 'all_pages', 'All Pages', '2020-11-07 07:49:04', '2021-09-20 07:29:09'),
(767, 'en', 'add_new_page', 'Add New Page', '2020-11-07 07:49:04', '2021-09-20 07:29:09'),
(768, 'en', 'url', 'URL', '2020-11-07 07:49:04', '2021-09-20 07:29:09'),
(769, 'en', 'actions', 'Actions', '2020-11-07 07:49:04', '2021-09-20 07:29:09'),
(770, 'en', 'edit_page_information', 'Edit Page Information', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(771, 'en', 'page_content', 'Page Content', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(772, 'en', 'title', 'Title', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(773, 'en', 'link', 'Link', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(774, 'en', 'use_character_number_hypen_only', 'Use character, number, hypen only', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(775, 'en', 'add_content', 'Add Content', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(776, 'en', 'seo_fields', 'Seo Fields', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(777, 'en', 'update_page', 'Update Page', '2020-11-07 07:49:22', '2021-09-20 07:29:09'),
(778, 'en', 'default_language', 'Default Language', '2020-11-07 07:50:09', '2021-09-20 07:29:09'),
(779, 'en', 'add_new_language', 'Add New Language', '2020-11-07 07:50:09', '2021-09-20 07:29:09'),
(780, 'en', 'rtl', 'RTL', '2020-11-07 07:50:09', '2021-09-20 07:29:09'),
(781, 'en', 'translation', 'Translation', '2020-11-07 07:50:09', '2021-09-20 07:29:09'),
(782, 'en', 'language_information', 'Language Information', '2020-11-07 07:50:23', '2021-09-20 07:29:09'),
(783, 'en', 'save_page', 'Save Page', '2020-11-07 07:51:27', '2021-09-20 07:29:09'),
(784, 'en', 'home_page_settings', 'Home Page Settings', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(785, 'en', 'home_slider', 'Home Slider', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(786, 'en', 'photos__links', 'Photos & Links', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(787, 'en', 'add_new', 'Add New', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(788, 'en', 'home_categories', 'Home Categories', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(789, 'en', 'home_banner_1_max_3', 'Home Banner 1 (Max 3)', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(790, 'en', 'banner__links', 'Banner & Links', '2020-11-07 07:51:35', '2021-09-20 07:29:09'),
(791, 'en', 'home_banner_2_max_3', 'Home Banner 2 (Max 3)', '2020-11-07 07:51:36', '2021-09-20 07:29:09'),
(792, 'en', 'top_10', 'Top 10', '2020-11-07 07:51:36', '2021-09-20 07:29:09'),
(793, 'en', 'top_categories_max_10', 'Top Categories (Max 10)', '2020-11-07 07:51:36', '2021-09-20 07:29:09'),
(794, 'en', 'top_brands_max_10', 'Top Brands (Max 10)', '2020-11-07 07:51:36', '2021-09-20 07:29:09'),
(795, 'en', 'system_name', 'System Name', '2020-11-07 07:54:22', '2021-09-20 07:29:09'),
(796, 'en', 'system_logo__white', 'System Logo - White', '2020-11-07 07:54:22', '2021-09-20 07:29:09'),
(797, 'en', 'choose_files', 'Choose Files', '2020-11-07 07:54:22', '2021-09-20 07:29:09'),
(798, 'en', 'will_be_used_in_admin_panel_side_menu', 'Will be used in admin panel side menu', '2020-11-07 07:54:23', '2021-09-20 07:29:09'),
(799, 'en', 'system_logo__black', 'System Logo - Black', '2020-11-07 07:54:23', '2021-09-20 07:29:09'),
(800, 'en', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'Will be used in admin panel topbar in mobile + Admin login page', '2020-11-07 07:54:23', '2021-09-20 07:29:09'),
(801, 'en', 'system_timezone', 'System Timezone', '2020-11-07 07:54:23', '2021-09-20 07:29:09'),
(802, 'en', 'admin_login_page_background', 'Admin login page background', '2020-11-07 07:54:23', '2021-09-20 07:29:09'),
(803, 'en', 'website_header', 'Website Header', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(804, 'en', 'header_setting', 'Header Setting', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(805, 'en', 'header_logo', 'Header Logo', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(806, 'en', 'show_language_switcher', 'Show Language Switcher?', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(807, 'en', 'show_currency_switcher', 'Show Currency Switcher?', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(808, 'en', 'enable_stikcy_header', 'Enable stikcy header?', '2020-11-07 08:21:36', '2021-09-20 07:29:09'),
(809, 'en', 'website_footer', 'Website Footer', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(810, 'en', 'footer_widget', 'Footer Widget', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(811, 'en', 'about_widget', 'About Widget', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(812, 'en', 'footer_logo', 'Footer Logo', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(813, 'en', 'about_description', 'About description', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(814, 'en', 'contact_info_widget', 'Contact Info Widget', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(815, 'en', 'footer_contact_address', 'Footer contact address', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(816, 'en', 'footer_contact_phone', 'Footer contact phone', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(817, 'en', 'footer_contact_email', 'Footer contact email', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(818, 'en', 'link_widget_one', 'Link Widget One', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(819, 'en', 'links', 'Links', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(820, 'en', 'footer_bottom', 'Footer Bottom', '2020-11-07 08:21:56', '2021-09-20 07:29:09'),
(821, 'en', 'copyright_widget_', 'Copyright Widget', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(822, 'en', 'copyright_text', 'Copyright Text', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(823, 'en', 'social_link_widget_', 'Social Link Widget', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(824, 'en', 'show_social_links', 'Show Social Links?', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(825, 'en', 'social_links', 'Social Links', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(826, 'en', 'payment_methods_widget_', 'Payment Methods Widget', '2020-11-07 08:21:57', '2021-09-20 07:29:09'),
(827, 'en', 'rtl_status_updated_successfully', 'RTL status updated successfully', '2020-11-07 08:36:11', '2021-09-20 07:29:09'),
(828, 'en', 'language_changed_to_', 'Language changed to', '2020-11-07 08:36:27', '2021-09-20 07:29:09'),
(829, 'en', 'inhouse_product_sale_report', 'Inhouse Product sale report', '2020-11-07 09:30:25', '2021-09-20 07:29:09'),
(830, 'en', 'sort_by_category', 'Sort by Category', '2020-11-07 09:30:25', '2021-09-20 07:29:09'),
(831, 'en', 'product_wise_stock_report', 'Product wise stock report', '2020-11-07 09:31:02', '2021-09-20 07:29:09'),
(832, 'en', 'currency_changed_to_', 'Currency changed to', '2020-11-07 12:36:28', '2021-09-20 07:29:09'),
(833, 'en', 'avatar', 'Avatar', '2020-11-08 09:32:35', '2021-09-20 07:29:09'),
(834, 'en', 'copy', 'Copy', '2020-11-08 10:03:42', '2021-09-20 07:29:09'),
(835, 'en', 'variant', 'Variant', '2020-11-08 10:43:02', '2021-09-20 07:29:09'),
(836, 'en', 'variant_price', 'Variant Price', '2020-11-08 10:43:03', '2021-09-20 07:29:09'),
(837, 'en', 'sku', 'SKU', '2020-11-08 10:43:03', '2021-09-20 07:29:09'),
(838, 'en', 'key', 'Key', '2020-11-08 12:35:09', '2021-09-20 07:29:09'),
(839, 'en', 'value', 'Value', '2020-11-08 12:35:09', '2021-09-20 07:29:09'),
(840, 'en', 'copy_translations', 'Copy Translations', '2020-11-08 12:35:10', '2021-09-20 07:29:09'),
(841, 'en', 'all_pickup_points', 'All Pick-up Points', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(842, 'en', 'add_new_pickup_point', 'Add New Pick-up Point', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(843, 'en', 'manager', 'Manager', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(844, 'en', 'location', 'Location', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(845, 'en', 'pickup_station_contact', 'Pickup Station Contact', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(846, 'en', 'open', 'Open', '2020-11-08 12:35:43', '2021-09-20 07:29:09'),
(847, 'en', 'pos_activation_for_seller', 'POS Activation for Seller', '2020-11-08 12:35:55', '2021-09-20 07:29:09'),
(848, 'en', 'order_completed_successfully', 'Order Completed Successfully.', '2020-11-08 12:36:02', '2021-09-20 07:29:09'),
(849, 'en', 'text_input', 'Text Input', '2020-11-08 12:38:40', '2021-09-20 07:29:09'),
(850, 'en', 'select', 'Select', '2020-11-08 12:38:40', '2021-09-20 07:29:09'),
(851, 'en', 'multiple_select', 'Multiple Select', '2020-11-08 12:38:40', '2021-09-20 07:29:09'),
(852, 'en', 'radio', 'Radio', '2020-11-08 12:38:40', '2021-09-20 07:29:09'),
(853, 'en', 'file', 'File', '2020-11-08 12:38:40', '2021-09-20 07:29:09'),
(854, 'en', 'email_address', 'Email Address', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(855, 'en', 'verification_info', 'Verification Info', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(856, 'en', 'approval', 'Approval', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(857, 'en', 'due_amount', 'Due Amount', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(858, 'en', 'show', 'Show', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(859, 'en', 'pay_now', 'Pay Now', '2020-11-08 12:39:32', '2021-09-20 07:29:09'),
(860, 'en', 'affiliate_user_verification', 'Affiliate User Verification', '2020-11-08 12:40:01', '2021-09-20 07:29:09'),
(861, 'en', 'reject', 'Reject', '2020-11-08 12:40:01', '2021-09-20 07:29:09'),
(862, 'en', 'accept', 'Accept', '2020-11-08 12:40:01', '2021-09-20 07:29:09'),
(863, 'en', 'beauty_health__hair', 'Beauty, Health & Hair', '2020-11-08 12:54:17', '2021-09-20 07:29:09'),
(864, 'en', 'comparison', 'Comparison', '2020-11-08 12:54:33', '2021-09-20 07:29:09'),
(865, 'en', 'reset_compare_list', 'Reset Compare List', '2020-11-08 12:54:33', '2021-09-20 07:29:09'),
(866, 'en', 'your_comparison_list_is_empty', 'Your comparison list is empty', '2020-11-08 12:54:33', '2021-09-20 07:29:09'),
(867, 'en', 'convert_point_to_wallet', 'Convert Point To Wallet', '2020-11-08 13:04:42', '2021-09-20 07:29:09'),
(868, 'en', 'note_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'Note: You need to activate wallet option first before using club point addon.', '2020-11-08 13:04:43', '2021-09-20 07:29:09'),
(869, 'en', 'create_an_account', 'Create an account.', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(870, 'en', 'use_email_instead', 'Use Email Instead', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(871, 'en', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'By signing up you agree to our terms and conditions.', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(872, 'en', 'create_account', 'Create Account', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(873, 'en', 'or_join_with', 'Or Join With', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(874, 'en', 'already_have_an_account', 'Already have an account?', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(875, 'en', 'log_in', 'Log In', '2020-11-09 06:17:11', '2021-09-20 07:29:09'),
(876, 'en', 'computer__accessories', 'Computer & Accessories', '2020-11-09 07:52:05', '2021-09-20 07:29:09'),
(878, 'en', 'products', 'Product(s)', '2020-11-09 07:52:23', '2021-09-20 07:29:09'),
(879, 'en', 'in_your_cart', 'in your cart', '2020-11-09 07:52:23', '2021-09-20 07:29:09'),
(880, 'en', 'in_your_wishlist', 'in your wishlist', '2020-11-09 07:52:23', '2021-09-20 07:29:09'),
(881, 'en', 'you_ordered', 'you ordered', '2020-11-09 07:52:24', '2021-09-20 07:29:09'),
(882, 'en', 'default_shipping_address', 'Default Shipping Address', '2020-11-09 07:52:24', '2021-09-20 07:29:09'),
(883, 'en', 'sports__outdoor', 'Sports & outdoor', '2020-11-09 07:53:32', '2021-09-20 07:29:09'),
(884, 'en', 'copied', 'Copied', '2020-11-09 07:54:19', '2021-09-20 07:29:09'),
(885, 'en', 'copy_the_promote_link', 'Copy the Promote Link', '2020-11-09 07:54:19', '2021-09-20 07:29:09'),
(886, 'en', 'write_a_review', 'Write a review', '2020-11-09 07:54:20', '2021-09-20 07:29:09'),
(887, 'en', 'your_name', 'Your name', '2020-11-09 07:54:20', '2021-09-20 07:29:09'),
(888, 'en', 'comment', 'Comment', '2020-11-09 07:54:20', '2021-09-20 07:29:09'),
(889, 'en', 'your_review', 'Your review', '2020-11-09 07:54:20', '2021-09-20 07:29:09'),
(890, 'en', 'submit_review', 'Submit review', '2020-11-09 07:54:20', '2021-09-20 07:29:09'),
(891, 'en', 'claire_willis', 'Claire Willis', '2020-11-09 08:05:00', '2021-09-20 07:29:09'),
(892, 'en', 'germaine_greene', 'Germaine Greene', '2020-11-09 08:05:00', '2021-09-20 07:29:09'),
(893, 'en', 'product_file', 'Product File', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(894, 'en', 'choose_file', 'Choose file', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(895, 'en', 'type_to_add_a_tag', 'Type to add a tag', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(896, 'en', 'images', 'Images', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(897, 'en', 'main_images', 'Main Images', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(898, 'en', 'meta_tags', 'Meta Tags', '2020-11-09 08:07:08', '2021-09-20 07:29:09'),
(899, 'en', 'digital_product_has_been_inserted_successfully', 'Digital Product has been inserted successfully', '2020-11-09 08:14:25', '2021-09-20 07:29:09'),
(900, 'en', 'edit_digital_product', 'Edit Digital Product', '2020-11-09 08:14:34', '2021-09-20 07:29:09'),
(901, 'en', 'select_an_option', 'Select an option', '2020-11-09 08:14:34', '2021-09-20 07:29:09'),
(902, 'en', 'tax', 'Tax', '2020-11-09 08:14:35', '2021-02-11 04:15:27'),
(903, 'en', 'any_question_about_this_product', 'Any question about this product?', '2020-11-09 08:15:11', '2021-09-20 07:29:09'),
(904, 'en', 'sign_in', 'Sign in', '2020-11-09 08:15:11', '2021-09-20 07:29:09'),
(905, 'en', 'login_with_google', 'Login with Google', '2020-11-09 08:15:11', '2021-09-20 07:29:09'),
(906, 'en', 'login_with_facebook', 'Login with Facebook', '2020-11-09 08:15:11', '2021-09-20 07:29:09'),
(907, 'en', 'login_with_twitter', 'Login with Twitter', '2020-11-09 08:15:11', '2021-09-20 07:29:09'),
(908, 'en', 'click_to_show_phone_number', 'Click to show phone number', '2020-11-09 08:15:51', '2021-09-20 07:29:09'),
(909, 'en', 'other_ads_of', 'Other Ads of', '2020-11-09 08:15:52', '2021-09-20 07:29:09'),
(910, 'en', 'store_home', 'Store Home', '2020-11-09 08:54:23', '2021-09-20 07:29:09'),
(911, 'en', 'top_selling', 'Top Selling', '2020-11-09 08:54:23', '2021-09-20 07:29:09'),
(912, 'en', 'shop_settings', 'Shop Settings', '2020-11-09 08:55:38', '2021-09-20 07:29:09'),
(913, 'en', 'visit_shop', 'Visit Shop', '2020-11-09 08:55:38', '2021-09-20 07:29:09'),
(914, 'en', 'pickup_points', 'Pickup Points', '2020-11-09 08:55:38', '2021-09-20 07:29:09'),
(915, 'en', 'select_pickup_point', 'Select Pickup Point', '2020-11-09 08:55:38', '2021-09-20 07:29:09'),
(916, 'en', 'slider_settings', 'Slider Settings', '2020-11-09 08:55:39', '2021-09-20 07:29:09'),
(917, 'en', 'social_media_link', 'Social Media Link', '2020-11-09 08:55:39', '2021-09-20 07:29:09'),
(918, 'en', 'facebook', 'Facebook', '2020-11-09 08:55:39', '2021-09-20 07:29:09'),
(919, 'en', 'twitter', 'Twitter', '2020-11-09 08:55:39', '2021-09-20 07:29:09'),
(920, 'en', 'google', 'Google', '2020-11-09 08:55:39', '2021-09-20 07:29:09'),
(921, 'en', 'new_arrival_products', 'New Arrival Products', '2020-11-09 08:56:26', '2021-09-20 07:29:09'),
(922, 'en', 'check_your_order_status', 'Check Your Order Status', '2020-11-09 09:23:32', '2021-09-20 07:29:09'),
(923, 'en', 'shipping_method', 'Shipping method', '2020-11-09 09:27:40', '2021-09-20 07:29:09'),
(924, 'en', 'shipped_by', 'Shipped By', '2020-11-09 09:27:41', '2021-09-20 07:29:09'),
(925, 'en', 'image', 'Image', '2020-11-09 09:29:37', '2021-09-20 07:29:09'),
(926, 'en', 'sub_sub_category', 'Sub Sub Category', '2020-11-09 09:29:37', '2021-09-20 07:29:09'),
(927, 'en', 'inhouse_products', 'Inhouse Products', '2020-11-09 10:22:32', '2021-09-20 07:29:09'),
(928, 'en', 'forgot_password', 'Forgot Password?', '2020-11-09 10:33:21', '2021-09-20 07:29:09'),
(929, 'en', 'enter_your_email_address_to_recover_your_password', 'Enter your email address to recover your password.', '2020-11-09 10:33:21', '2021-09-20 07:29:09'),
(930, 'en', 'email_or_phone', 'Email or Phone', '2020-11-09 10:33:21', '2021-09-20 07:29:09'),
(931, 'en', 'send_password_reset_link', 'Send Password Reset Link', '2020-11-09 10:33:21', '2021-09-20 07:29:09'),
(932, 'en', 'back_to_login', 'Back to Login', '2020-11-09 10:33:21', '2021-09-20 07:29:09'),
(933, 'en', 'index', 'index', '2020-11-09 10:35:29', '2021-02-09 06:52:51'),
(934, 'en', 'download_your_product', 'Download Your Product', '2020-11-09 10:35:30', '2021-09-20 07:29:09'),
(935, 'en', 'option', 'Option', '2020-11-09 10:35:30', '2021-09-20 07:29:09'),
(936, 'en', 'applied_refund_request', 'Applied Refund Request', '2020-11-09 10:35:39', '2021-09-20 07:29:09'),
(937, 'en', 'item_has_been_renoved_from_wishlist', 'Item has been renoved from wishlist', '2020-11-09 10:36:04', '2021-09-20 07:29:09'),
(938, 'en', 'bulk_products_upload', 'Bulk Products Upload', '2020-11-09 10:39:24', '2021-09-20 07:29:09'),
(939, 'en', 'upload_csv', 'Upload CSV', '2020-11-09 10:39:25', '2021-09-20 07:29:09'),
(940, 'en', 'create_a_ticket', 'Create a Ticket', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(941, 'en', 'tickets', 'Tickets', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(942, 'en', 'ticket_id', 'Ticket ID', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(943, 'en', 'sending_date', 'Sending Date', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(944, 'en', 'subject', 'Subject', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(945, 'en', 'view_details', 'View Details', '2020-11-09 10:40:25', '2021-09-20 07:29:09'),
(946, 'en', 'provide_a_detailed_description', 'Provide a detailed description', '2020-11-09 10:40:26', '2021-09-20 07:29:09'),
(947, 'en', 'type_your_reply', 'Type your reply', '2020-11-09 10:40:26', '2021-09-20 07:29:09'),
(948, 'en', 'send_ticket', 'Send Ticket', '2020-11-09 10:40:26', '2021-09-20 07:29:09'),
(949, 'en', 'load_more', 'Load More', '2020-11-09 10:40:57', '2021-09-20 07:29:09'),
(950, 'en', 'jewelry__watches', 'Jewelry & Watches', '2020-11-09 10:47:38', '2021-09-20 07:29:09'),
(951, 'en', 'filters', 'Filters', '2020-11-09 10:53:54', '2021-09-20 07:29:09'),
(952, 'en', 'contact_address', 'Contact address', '2020-11-09 10:58:46', '2021-09-20 07:29:09'),
(953, 'en', 'contact_phone', 'Contact phone', '2020-11-09 10:58:47', '2021-09-20 07:29:09'),
(954, 'en', 'contact_email', 'Contact email', '2020-11-09 10:58:47', '2021-09-20 07:29:09'),
(955, 'en', 'filter_by', 'Filter by', '2020-11-09 11:00:03', '2021-09-20 07:29:09'),
(956, 'en', 'condition', 'Condition', '2020-11-09 11:56:13', '2021-09-20 07:29:09'),
(957, 'en', 'all_type', 'All Type', '2020-11-09 11:56:13', '2021-09-20 07:29:09'),
(960, 'en', 'pay_with_wallet', 'Pay with wallet', '2020-11-09 12:56:34', '2021-09-20 07:29:09'),
(961, 'en', 'select_variation', 'Select variation', '2020-11-10 07:54:29', '2021-09-20 07:29:09'),
(962, 'en', 'no_product_added', 'No Product Added', '2020-11-10 08:07:53', '2021-09-20 07:29:09'),
(963, 'en', 'status_has_been_updated_successfully', 'Status has been updated successfully', '2020-11-10 08:41:23', '2021-09-20 07:29:09'),
(964, 'en', 'all_seller_packages', 'All Seller Packages', '2020-11-10 09:14:10', '2021-09-20 07:29:09'),
(965, 'en', 'add_new_package', 'Add New Package', '2020-11-10 09:14:10', '2021-09-20 07:29:09'),
(966, 'en', 'package_logo', 'Package Logo', '2020-11-10 09:14:10', '2021-09-20 07:29:09'),
(967, 'en', 'days', 'days', '2020-11-10 09:14:10', '2021-02-09 06:52:51'),
(968, 'en', 'create_new_seller_package', 'Create New Seller Package', '2020-11-10 09:14:31', '2021-09-20 07:29:09'),
(969, 'en', 'package_name', 'Package Name', '2020-11-10 09:14:31', '2021-09-20 07:29:09'),
(970, 'en', 'duration', 'Duration', '2020-11-10 09:14:31', '2021-09-20 07:29:09'),
(971, 'en', 'validity_in_number_of_days', 'Validity in number of days', '2020-11-10 09:14:31', '2021-09-20 07:29:09'),
(972, 'en', 'update_package_information', 'Update Package Information', '2020-11-10 09:14:59', '2021-09-20 07:29:09'),
(973, 'en', 'package_has_been_inserted_successfully', 'Package has been inserted successfully', '2020-11-10 09:15:14', '2021-09-20 07:29:09'),
(974, 'en', 'refund_request', 'Refund Request', '2020-11-10 09:17:25', '2021-09-20 07:29:09'),
(975, 'en', 'reason', 'Reason', '2020-11-10 09:17:25', '2021-09-20 07:29:09'),
(976, 'en', 'label', 'Label', '2020-11-10 09:20:13', '2021-09-20 07:29:09'),
(977, 'en', 'select_label', 'Select Label', '2020-11-10 09:20:13', '2021-09-20 07:29:09'),
(978, 'en', 'multiple_select_label', 'Multiple Select Label', '2020-11-10 09:20:13', '2021-09-20 07:29:09'),
(979, 'en', 'radio_label', 'Radio Label', '2020-11-10 09:20:13', '2021-09-20 07:29:09'),
(980, 'en', 'pickup_point_orders', 'Pickup Point Orders', '2020-11-10 09:25:40', '2021-09-20 07:29:09'),
(981, 'en', 'view', 'View', '2020-11-10 09:25:40', '2021-09-20 07:29:09'),
(982, 'en', 'order_', 'Order #', '2020-11-10 09:25:48', '2021-09-20 07:29:09'),
(983, 'en', 'order_status', 'Order Status', '2020-11-10 09:25:48', '2021-09-20 07:29:09'),
(984, 'en', 'total_amount', 'Total amount', '2020-11-10 09:25:48', '2021-09-20 07:29:09'),
(986, 'en', 'total', 'TOTAL', '2020-11-10 09:25:49', '2021-09-20 07:29:09'),
(987, 'en', 'delivery_status_has_been_updated', 'Delivery status has been updated', '2020-11-10 09:25:49', '2021-09-20 07:29:09'),
(988, 'en', 'payment_status_has_been_updated', 'Payment status has been updated', '2020-11-10 09:25:49', '2021-09-20 07:29:09'),
(989, 'en', 'invoice', 'INVOICE', '2020-11-10 09:25:58', '2021-09-20 07:29:09'),
(990, 'en', 'set_refund_time', 'Set Refund Time', '2020-11-10 09:34:04', '2021-09-20 07:29:09'),
(991, 'en', 'set_time_for_sending_refund_request', 'Set Time for sending Refund Request', '2020-11-10 09:34:04', '2021-09-20 07:29:09'),
(992, 'en', 'set_refund_sticker', 'Set Refund Sticker', '2020-11-10 09:34:05', '2021-09-20 07:29:09'),
(993, 'en', 'sticker', 'Sticker', '2020-11-10 09:34:05', '2021-09-20 07:29:09'),
(994, 'en', 'refund_request_all', 'Refund Request All', '2020-11-10 09:34:12', '2021-09-20 07:29:09'),
(995, 'en', 'order_id', 'Order Id', '2020-11-10 09:34:12', '2021-09-20 07:29:09'),
(996, 'en', 'seller_approval', 'Seller Approval', '2020-11-10 09:34:12', '2021-09-20 07:29:09'),
(997, 'en', 'admin_approval', 'Admin Approval', '2020-11-10 09:34:12', '2021-09-20 07:29:09'),
(998, 'en', 'refund_status', 'Refund Status', '2020-11-10 09:34:12', '2021-09-20 07:29:09'),
(1000, 'en', 'no_refund', 'No Refund', '2020-11-10 09:35:27', '2021-09-20 07:29:09'),
(1001, 'en', 'status_updated_successfully', 'Status updated successfully', '2020-11-10 09:54:20', '2021-09-20 07:29:09'),
(1002, 'en', 'user_search_report', 'User Search Report', '2020-11-11 06:43:24', '2021-09-20 07:29:09'),
(1003, 'en', 'search_by', 'Search By', '2020-11-11 06:43:24', '2021-09-20 07:29:09'),
(1004, 'en', 'number_searches', 'Number searches', '2020-11-11 06:43:24', '2021-09-20 07:29:09'),
(1005, 'en', 'sender', 'Sender', '2020-11-11 06:51:49', '2021-09-20 07:29:09'),
(1006, 'en', 'receiver', 'Receiver', '2020-11-11 06:51:49', '2021-09-20 07:29:09'),
(1007, 'en', 'verification_form_updated_successfully', 'Verification form updated successfully', '2020-11-11 06:53:29', '2021-09-20 07:29:09'),
(1008, 'en', 'invalid_email_or_password', 'Invalid email or password', '2020-11-11 07:07:49', '2021-09-20 07:29:09'),
(1009, 'en', 'all_coupons', 'All Coupons', '2020-11-11 07:14:04', '2021-09-20 07:29:09'),
(1010, 'en', 'add_new_coupon', 'Add New Coupon', '2020-11-11 07:14:04', '2021-09-20 07:29:09'),
(1011, 'en', 'coupon_information', 'Coupon Information', '2020-11-11 07:14:04', '2021-09-20 07:29:09'),
(1012, 'en', 'start_date', 'Start Date', '2020-11-11 07:14:04', '2021-09-20 07:29:09'),
(1013, 'en', 'end_date', 'End Date', '2020-11-11 07:14:05', '2021-09-20 07:29:09'),
(1014, 'en', 'product_base', 'Product Base', '2020-11-11 07:14:05', '2021-09-20 07:29:09'),
(1015, 'en', 'send_newsletter', 'Send Newsletter', '2020-11-11 07:14:10', '2021-09-20 07:29:09'),
(1016, 'en', 'mobile_users', 'Mobile Users', '2020-11-11 07:14:10', '2021-09-20 07:29:09'),
(1017, 'en', 'sms_subject', 'SMS subject', '2020-11-11 07:14:10', '2021-09-20 07:29:09'),
(1018, 'en', 'sms_content', 'SMS content', '2020-11-11 07:14:10', '2021-09-20 07:29:09'),
(1019, 'en', 'all_flash_delas', 'All Flash Delas', '2020-11-11 07:16:06', '2021-09-20 07:29:09'),
(1020, 'en', 'create_new_flash_dela', 'Create New Flash Dela', '2020-11-11 07:16:06', '2021-09-20 07:29:09'),
(1022, 'en', 'page_link', 'Page Link', '2020-11-11 07:16:06', '2021-09-20 07:29:09'),
(1023, 'en', 'flash_deal_information', 'Flash Deal Information', '2020-11-11 07:16:14', '2021-09-20 07:29:09'),
(1024, 'en', 'background_color', 'Background Color', '2020-11-11 07:16:14', '2021-09-20 07:29:09'),
(1025, 'en', '0000ff', '#0000ff', '2020-11-11 07:16:14', '2021-09-20 07:29:09'),
(1026, 'en', 'text_color', 'Text Color', '2020-11-11 07:16:14', '2021-09-20 07:29:09'),
(1027, 'en', 'white', 'White', '2020-11-11 07:16:14', '2021-09-20 07:29:09'),
(1028, 'en', 'dark', 'Dark', '2020-11-11 07:16:15', '2021-09-20 07:29:09'),
(1029, 'en', 'choose_products', 'Choose Products', '2020-11-11 07:16:15', '2021-09-20 07:29:09'),
(1030, 'en', 'discounts', 'Discounts', '2020-11-11 07:16:20', '2021-09-20 07:29:09'),
(1031, 'en', 'discount_type', 'Discount Type', '2020-11-11 07:16:20', '2021-09-20 07:29:09'),
(1032, 'en', 'twillo_credential', 'Twillo Credential', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1033, 'en', 'twilio_sid', 'TWILIO SID', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1034, 'en', 'twilio_auth_token', 'TWILIO AUTH TOKEN', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1035, 'en', 'twilio_verify_sid', 'TWILIO VERIFY SID', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1036, 'en', 'valid_twillo_number', 'VALID TWILLO NUMBER', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1037, 'en', 'nexmo_credential', 'Nexmo Credential', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1038, 'en', 'nexmo_key', 'NEXMO KEY', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1039, 'en', 'nexmo_secret', 'NEXMO SECRET', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1040, 'en', 'ssl_wireless_credential', 'SSL Wireless Credential', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1041, 'en', 'ssl_sms_api_token', 'SSL SMS API TOKEN', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1042, 'en', 'ssl_sms_sid', 'SSL SMS SID', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1043, 'en', 'ssl_sms_url', 'SSL SMS URL', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1044, 'en', 'fast2sms_credential', 'Fast2SMS Credential', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1045, 'en', 'auth_key', 'AUTH KEY', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1046, 'en', 'route', 'ROUTE', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1047, 'en', 'promotional_use', 'Promotional Use', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1048, 'en', 'transactional_use', 'Transactional Use', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1050, 'en', 'sender_id', 'SENDER ID', '2020-11-11 07:17:35', '2021-09-20 07:29:09'),
(1051, 'en', 'nexmo_otp', 'Nexmo OTP', '2020-11-11 07:17:42', '2021-09-20 07:29:09'),
(1052, 'en', 'twillo_otp', 'Twillo OTP', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1053, 'en', 'ssl_wireless_otp', 'SSL Wireless OTP', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1054, 'en', 'fast2sms_otp', 'Fast2SMS OTP', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1055, 'en', 'order_placement', 'Order Placement', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1056, 'en', 'delivery_status_changing_time', 'Delivery Status Changing Time', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1057, 'en', 'paid_status_changing_time', 'Paid Status Changing Time', '2020-11-11 07:17:43', '2021-09-20 07:29:09'),
(1058, 'en', 'send_bulk_sms', 'Send Bulk SMS', '2020-11-11 07:19:14', '2021-09-20 07:29:09'),
(1059, 'en', 'all_subscribers', 'All Subscribers', '2020-11-11 07:21:51', '2021-09-20 07:29:09'),
(1060, 'en', 'coupon_information_adding', 'Coupon Information Adding', '2020-11-11 07:22:25', '2021-09-20 07:29:09'),
(1061, 'en', 'coupon_type', 'Coupon Type', '2020-11-11 07:22:25', '2021-09-20 07:29:09'),
(1062, 'en', 'for_products', 'For Products', '2020-11-11 07:22:25', '2021-09-20 07:29:09'),
(1063, 'en', 'for_total_orders', 'For Total Orders', '2020-11-11 07:22:25', '2021-09-20 07:29:09'),
(1064, 'en', 'add_your_product_base_coupon', 'Add Your Product Base Coupon', '2020-11-11 07:22:42', '2021-09-20 07:29:09'),
(1065, 'en', 'coupon_code', 'Coupon code', '2020-11-11 07:22:42', '2021-09-20 07:29:09'),
(1066, 'en', 'sub_category', 'Sub Category', '2020-11-11 07:22:42', '2021-09-20 07:29:09'),
(1067, 'en', 'add_more', 'Add More', '2020-11-11 07:22:43', '2021-09-20 07:29:09'),
(1068, 'en', 'add_your_cart_base_coupon', 'Add Your Cart Base Coupon', '2020-11-11 07:29:40', '2021-09-20 07:29:09'),
(1069, 'en', 'minimum_shopping', 'Minimum Shopping', '2020-11-11 07:29:40', '2021-09-20 07:29:09'),
(1070, 'en', 'maximum_discount_amount', 'Maximum Discount Amount', '2020-11-11 07:29:41', '2021-09-20 07:29:09'),
(1071, 'en', 'coupon_information_update', 'Coupon Information Update', '2020-11-11 08:18:34', '2021-09-20 07:29:09'),
(1073, 'en', 'please_configure_smtp_setting_to_work_all_email_sending_funtionality', 'Please Configure SMTP Setting to work all email sending funtionality', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1074, 'en', 'configure_now', 'Configure Now', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1076, 'en', 'total_published_products', 'Total published products', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1077, 'en', 'total_sellers_products', 'Total sellers products', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1078, 'en', 'total_admin_products', 'Total admin products', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1079, 'en', 'manage_products', 'Manage Products', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1080, 'en', 'total_product_category', 'Total product category', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1081, 'en', 'create_category', 'Create Category', '2020-11-11 13:10:18', '2021-09-20 07:29:09'),
(1082, 'en', 'total_product_sub_sub_category', 'Total product sub sub category', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1083, 'en', 'create_sub_sub_category', 'Create Sub Sub Category', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1084, 'en', 'total_product_sub_category', 'Total product sub category', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1085, 'en', 'create_sub_category', 'Create Sub Category', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1086, 'en', 'total_product_brand', 'Total product brand', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1087, 'en', 'create_brand', 'Create Brand', '2020-11-11 13:10:18', '2021-09-20 07:29:10'),
(1089, 'en', 'total_sellers', 'Total sellers', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1091, 'en', 'total_approved_sellers', 'Total approved sellers', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1093, 'en', 'total_pending_sellers', 'Total pending sellers', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1094, 'en', 'manage_sellers', 'Manage Sellers', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1095, 'en', 'category_wise_product_sale', 'Category wise product sale', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1097, 'en', 'sale', 'Sale', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1098, 'en', 'category_wise_product_stock', 'Category wise product stock', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1099, 'en', 'category_name', 'Category Name', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1100, 'en', 'stock', 'Stock', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1101, 'en', 'frontend', 'Frontend', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1103, 'en', 'home_page', 'Home page', '2020-11-11 13:10:19', '2021-09-20 07:29:10'),
(1104, 'en', 'setting', 'setting', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1106, 'en', 'policy_page', 'Policy page', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1107, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1109, 'en', 'general', 'General', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1110, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1111, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1112, 'en', 'useful_link', 'Useful link', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1113, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1114, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1115, 'en', 'activation', 'Activation', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1116, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1117, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1118, 'en', 'smtp', 'SMTP', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1119, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1120, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1121, 'en', 'payment_method', 'Payment method', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1122, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1123, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1124, 'en', 'social_media', 'Social media', '2020-11-11 13:10:20', '2021-09-20 07:29:10'),
(1125, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1126, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1127, 'en', 'business', 'Business', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1128, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1130, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1131, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1132, 'en', 'seller_verification', 'Seller verification', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1133, 'en', 'form_setting', 'form setting', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1134, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1135, 'en', 'language', 'Language', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1136, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1137, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1139, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1140, 'en', 'click_here', 'Click Here', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1141, 'en', 'dashboard', 'Dashboard', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1142, 'en', 'pos_system', 'POS System', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1143, 'en', 'pos_manager', 'POS Manager', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1144, 'en', 'pos_configuration', 'POS Configuration', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1145, 'en', 'products', 'Products', '2020-11-11 13:10:21', '2021-09-20 07:29:10'),
(1146, 'en', 'add_new_product', 'Add New product', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1147, 'en', 'all_products', 'All Products', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1148, 'en', 'in_house_products', 'In House Products', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1149, 'en', 'seller_products', 'Seller Products', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1150, 'en', 'digital_products', 'Digital Products', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1151, 'en', 'bulk_import', 'Bulk Import', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1152, 'en', 'bulk_export', 'Bulk Export', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1153, 'en', 'category', 'Category', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1154, 'en', 'subcategory', 'Subcategory', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1155, 'en', 'sub_subcategory', 'Sub Subcategory', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1156, 'en', 'brand', 'Brand', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1157, 'en', 'attribute', 'Attribute', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1158, 'en', 'product_reviews', 'Product Reviews', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1159, 'en', 'sales', 'Sales', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1160, 'en', 'all_orders', 'All Orders', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1161, 'en', 'inhouse_orders', 'Inhouse orders', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1162, 'en', 'seller_orders', 'Seller Orders', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1163, 'en', 'pickup_point_order', 'Pick-up Point Order', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1164, 'en', 'refunds', 'Refunds', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1165, 'en', 'refund_requests', 'Refund Requests', '2020-11-11 13:10:22', '2021-09-20 07:29:10'),
(1166, 'en', 'approved_refund', 'Approved Refund', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1167, 'en', 'refund_configuration', 'Refund Configuration', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1168, 'en', 'customers', 'Customers', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1169, 'en', 'customer_list', 'Customer list', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1170, 'en', 'classified_products', 'Classified Products', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1171, 'en', 'classified_packages', 'Classified Packages', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1172, 'en', 'sellers', 'Sellers', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1173, 'en', 'all_seller', 'All Seller', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1174, 'en', 'payouts', 'Payouts', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1175, 'en', 'payout_requests', 'Payout Requests', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1176, 'en', 'seller_commission', 'Seller Commission', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1177, 'en', 'seller_packages', 'Seller Packages', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1178, 'en', 'seller_verification_form', 'Seller Verification Form', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1179, 'en', 'reports', 'Reports', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1180, 'en', 'in_house_product_sale', 'In House Product Sale', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1181, 'en', 'seller_products_sale', 'Seller Products Sale', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1182, 'en', 'products_stock', 'Products Stock', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1183, 'en', 'products_wishlist', 'Products wishlist', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1184, 'en', 'user_searches', 'User Searches', '2020-11-11 13:10:23', '2021-09-20 07:29:10'),
(1185, 'en', 'marketing', 'Marketing', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1186, 'en', 'flash_deals', 'Flash deals', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1187, 'en', 'newsletters', 'Newsletters', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1188, 'en', 'bulk_sms', 'Bulk SMS', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1189, 'en', 'subscribers', 'Subscribers', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1190, 'en', 'coupon', 'Coupon', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1191, 'en', 'support', 'Support', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1192, 'en', 'ticket', 'Ticket', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1193, 'en', 'product_queries', 'Product Queries', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1194, 'en', 'website_setup', 'Website Setup', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1195, 'en', 'header', 'Header', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1196, 'en', 'footer', 'Footer', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1197, 'en', 'pages', 'Pages', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1198, 'en', 'appearance', 'Appearance', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1199, 'en', 'setup__configurations', 'Setup & Configurations', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1200, 'en', 'general_settings', 'General Settings', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1201, 'en', 'features_activation', 'Features activation', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1202, 'en', 'languages', 'Languages', '2020-11-11 13:10:24', '2021-09-20 07:29:10'),
(1203, 'en', 'currency', 'Currency', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1204, 'en', 'pickup_point', 'Pickup point', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1205, 'en', 'smtp_settings', 'SMTP Settings', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1206, 'en', 'payment_methods', 'Payment Methods', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1207, 'en', 'file_system_configuration', 'File System Configuration', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1208, 'en', 'social_media_logins', 'Social media Logins', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1209, 'en', 'analytics_tools', 'Analytics Tools', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1210, 'en', 'facebook_chat', 'Facebook Chat', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1211, 'en', 'google_recaptcha', 'Google reCAPTCHA', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1212, 'en', 'shipping_configuration', 'Shipping Configuration', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1213, 'en', 'shipping_countries', 'Shipping Countries', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1214, 'en', 'affiliate_system', 'Affiliate System', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1215, 'en', 'affiliate_registration_form', 'Affiliate Registration Form', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1216, 'en', 'affiliate_configurations', 'Affiliate Configurations', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1217, 'en', 'affiliate_users', 'Affiliate Users', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1218, 'en', 'referral_users', 'Referral Users', '2020-11-11 13:10:25', '2021-09-20 07:29:10'),
(1219, 'en', 'affiliate_withdraw_requests', 'Affiliate Withdraw Requests', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1220, 'en', 'offline_payment_system', 'Offline Payment System', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1221, 'en', 'manual_payment_methods', 'Manual Payment Methods', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1222, 'en', 'offline_wallet_recharge', 'Offline Wallet Recharge', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1223, 'en', 'offline_customer_package_payments', 'Offline Customer Package Payments', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1224, 'en', 'offline_seller_package_payments', 'Offline Seller Package Payments', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1225, 'en', 'paytm_payment_gateway', 'Paytm Payment Gateway', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1226, 'en', 'set_paytm_credentials', 'Set Paytm Credentials', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1227, 'en', 'club_point_system', 'Club Point System', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1228, 'en', 'club_point_configurations', 'Club Point Configurations', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1229, 'en', 'set_product_point', 'Set Product Point', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1230, 'en', 'user_points', 'User Points', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1231, 'en', 'otp_system', 'OTP System', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1232, 'en', 'otp_configurations', 'OTP Configurations', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1233, 'en', 'set_otp_credentials', 'Set OTP Credentials', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1234, 'en', 'staffs', 'Staffs', '2020-11-11 13:10:26', '2021-09-20 07:29:10'),
(1235, 'en', 'all_staffs', 'All staffs', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1236, 'en', 'staff_permissions', 'Staff permissions', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1237, 'en', 'addon_manager', 'Addon Manager', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1238, 'en', 'browse_website', 'Browse Website', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1239, 'en', 'pos', 'POS', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1240, 'en', 'notifications', 'Notifications', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1241, 'en', 'new_orders', 'new orders', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1242, 'en', 'userimage', 'user-image', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1243, 'en', 'profile', 'Profile', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1244, 'en', 'logout', 'Logout', '2020-11-11 13:10:27', '2021-09-20 07:29:10'),
(1247, 'en', 'page_not_found', 'Page Not Found!', '2020-11-11 13:10:28', '2021-09-20 07:29:10'),
(1249, 'en', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'The page you are looking for has not been found on our server.', '2020-11-11 13:10:28', '2021-09-20 07:29:10'),
(1253, 'en', 'registration', 'Registration', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1255, 'en', 'i_am_shopping_for', 'I am shopping for...', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1257, 'en', 'compare', 'Compare', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1259, 'en', 'wishlist', 'Wishlist', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1261, 'en', 'cart', 'Cart', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1263, 'en', 'your_cart_is_empty', 'Your Cart is empty', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1265, 'en', 'categories', 'Categories', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1267, 'en', 'see_all', 'See All', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1269, 'en', 'seller_policy', 'Seller Policy', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1271, 'en', 'return_policy', 'Return Policy', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1273, 'en', 'support_policy', 'Support Policy', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1275, 'en', 'privacy_policy', 'Privacy Policy', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1277, 'en', 'your_email_address', 'Your Email Address', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1279, 'en', 'subscribe', 'Subscribe', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1281, 'en', 'contact_info', 'Contact Info', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1283, 'en', 'address', 'Address', '2020-11-11 13:10:29', '2021-09-20 07:29:10'),
(1285, 'en', 'phone', 'Phone', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1287, 'en', 'email', 'Email', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1288, 'en', 'login', 'Login', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1289, 'en', 'my_account', 'My Account', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1291, 'en', 'login', 'Login', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1293, 'en', 'order_history', 'Order History', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1295, 'en', 'my_wishlist', 'My Wishlist', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1297, 'en', 'track_order', 'Track Order', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1299, 'en', 'be_an_affiliate_partner', 'Be an affiliate partner', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1301, 'en', 'be_a_seller', 'Be a Seller', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1303, 'en', 'apply_now', 'Apply Now', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1305, 'en', 'confirmation', 'Confirmation', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1307, 'en', 'delete_confirmation_message', 'Delete confirmation message', '2020-11-11 13:10:30', '2021-09-20 07:29:10');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1309, 'en', 'cancel', 'Cancel', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1312, 'en', 'delete', 'Delete', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1313, 'en', 'item_has_been_added_to_compare_list', 'Item has been added to compare list', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1314, 'en', 'please_login_first', 'Please login first', '2020-11-11 13:10:30', '2021-09-20 07:29:10'),
(1315, 'en', 'total_earnings_from', 'Total Earnings From', '2020-11-12 08:01:11', '2021-09-20 07:29:10'),
(1316, 'en', 'client_subscription', 'Client Subscription', '2020-11-12 08:01:12', '2021-09-20 07:29:10'),
(1317, 'en', 'product_category', 'Product category', '2020-11-12 08:03:46', '2021-09-20 07:29:10'),
(1318, 'en', 'product_sub_sub_category', 'Product sub sub category', '2020-11-12 08:03:46', '2021-09-20 07:29:10'),
(1319, 'en', 'product_sub_category', 'Product sub category', '2020-11-12 08:03:46', '2021-09-20 07:29:10'),
(1320, 'en', 'product_brand', 'Product brand', '2020-11-12 08:03:46', '2021-09-20 07:29:10'),
(1321, 'en', 'top_client_packages', 'Top Client Packages', '2020-11-12 08:05:21', '2021-09-20 07:29:10'),
(1322, 'en', 'top_freelancer_packages', 'Top Freelancer Packages', '2020-11-12 08:05:21', '2021-09-20 07:29:10'),
(1323, 'en', 'number_of_sale', 'Number of sale', '2020-11-12 09:13:09', '2021-09-20 07:29:10'),
(1324, 'en', 'number_of_stock', 'Number of Stock', '2020-11-12 09:16:02', '2021-09-20 07:29:10'),
(1325, 'en', 'top_10_products', 'Top 10 Products', '2020-11-12 10:02:29', '2021-09-20 07:29:10'),
(1326, 'en', 'top_12_products', 'Top 12 Products', '2020-11-12 10:02:39', '2021-09-20 07:29:10'),
(1327, 'en', 'admin_can_not_be_a_seller', 'Admin can not be a seller', '2020-11-12 11:30:19', '2021-09-20 07:29:10'),
(1328, 'en', 'filter_by_rating', 'Filter by Rating', '2020-11-15 08:01:15', '2021-09-20 07:29:10'),
(1329, 'en', 'published_reviews_updated_successfully', 'Published reviews updated successfully', '2020-11-15 08:01:15', '2021-09-20 07:29:10'),
(1330, 'en', 'refund_sticker_has_been_updated_successfully', 'Refund Sticker has been updated successfully', '2020-11-15 08:17:12', '2021-09-20 07:29:10'),
(1331, 'en', 'edit_product', 'Edit Product', '2020-11-15 10:31:54', '2021-09-20 07:29:10'),
(1332, 'en', 'meta_images', 'Meta Images', '2020-11-15 10:32:12', '2021-09-20 07:29:10'),
(1333, 'en', 'update_product', 'Update Product', '2020-11-15 10:32:12', '2021-09-20 07:29:10'),
(1334, 'en', 'product_has_been_deleted_successfully', 'Product has been deleted successfully', '2020-11-15 10:32:57', '2021-09-20 07:29:10'),
(1335, 'en', 'your_profile_has_been_updated_successfully', 'Your Profile has been updated successfully!', '2020-11-15 11:10:42', '2021-09-20 07:29:10'),
(1336, 'en', 'upload_limit_has_been_reached_please_upgrade_your_package', 'Upload limit has been reached. Please upgrade your package.', '2020-11-15 11:13:45', '2021-09-20 07:29:10'),
(1337, 'en', 'add_your_product', 'Add Your Product', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1338, 'en', 'select_a_category', 'Select a category', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1339, 'en', 'select_a_brand', 'Select a brand', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1340, 'en', 'product_unit', 'Product Unit', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1341, 'en', 'minimum_qty', 'Minimum Qty.', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1342, 'en', 'product_tag', 'Product Tag', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1343, 'en', 'type__hit_enter', 'Type & hit enter', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1344, 'en', 'videos', 'Videos', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1345, 'en', 'video_from', 'Video From', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1346, 'en', 'video_url', 'Video URL', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1347, 'en', 'customer_choice', 'Customer Choice', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1348, 'en', 'pdf', 'PDF', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1349, 'en', 'choose_pdf', 'Choose PDF', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1350, 'en', 'select_category', 'Select Category', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1351, 'en', 'target_category', 'Target Category', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1352, 'en', 'subsubcategory', 'subsubcategory', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1353, 'en', 'search_category', 'Search Category', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1354, 'en', 'search_subcategory', 'Search SubCategory', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1355, 'en', 'search_subsubcategory', 'Search SubSubCategory', '2020-11-15 11:17:56', '2021-09-20 07:29:10'),
(1356, 'en', 'update_your_product', 'Update your product', '2020-11-15 11:39:14', '2021-09-20 07:29:10'),
(1357, 'en', 'product_has_been_updated_successfully', 'Product has been updated successfully', '2020-11-15 11:51:36', '2021-09-20 07:29:10'),
(1358, 'en', 'add_your_digital_product', 'Add Your Digital Product', '2020-11-15 12:24:21', '2021-09-20 07:29:10'),
(1359, 'en', 'active_ecommerce_cms_update_process', 'Active eCommerce CMS Update Process', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1361, 'en', 'codecanyon_purchase_code', 'Codecanyon purchase code', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1362, 'en', 'database_name', 'Database Name', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1363, 'en', 'database_username', 'Database Username', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1364, 'en', 'database_password', 'Database Password', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1365, 'en', 'database_hostname', 'Database Hostname', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1366, 'en', 'update_now', 'Update Now', '2020-11-16 07:53:31', '2021-09-20 07:29:10'),
(1368, 'en', 'congratulations', 'Congratulations', '2020-11-16 07:55:14', '2021-09-20 07:29:10'),
(1369, 'en', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'You have successfully completed the updating process. Please Login to continue', '2020-11-16 07:55:14', '2021-09-20 07:29:10'),
(1370, 'en', 'go_to_home', 'Go to Home', '2020-11-16 07:55:14', '2021-09-20 07:29:10'),
(1371, 'en', 'login_to_admin_panel', 'Login to Admin panel', '2020-11-16 07:55:14', '2021-09-20 07:29:10'),
(1372, 'en', 's3_file_system_credentials', 'S3 File System Credentials', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1373, 'en', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1374, 'en', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1375, 'en', 'aws_default_region', 'AWS_DEFAULT_REGION', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1376, 'en', 'aws_bucket', 'AWS_BUCKET', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1377, 'en', 'aws_url', 'AWS_URL', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1378, 'en', 's3_file_system_activation', 'S3 File System Activation', '2020-11-16 12:59:57', '2021-09-20 07:29:10'),
(1379, 'en', 'your_phone_number', 'Your phone number', '2020-11-17 05:50:10', '2021-09-20 07:29:10'),
(1380, 'en', 'zip_file', 'Zip File', '2020-11-17 06:58:45', '2021-09-20 07:29:10'),
(1381, 'en', 'install', 'Install', '2020-11-17 06:58:45', '2021-09-20 07:29:10'),
(1382, 'en', 'this_version_is_not_capable_of_installing_addons_please_update', 'This version is not capable of installing Addons, Please update.', '2020-11-17 06:59:11', '2021-09-20 07:29:10'),
(1559, 'en', 'search_in_menu', 'Search in menu', '2021-02-03 03:55:48', '2021-09-20 07:29:11'),
(1560, 'en', 'uploaded_files', 'Uploaded Files', '2021-02-03 03:55:48', '2021-09-20 07:29:11'),
(1561, 'en', 'shipping_cities', 'Shipping Cities', '2021-02-03 03:55:48', '2021-09-20 07:29:11'),
(1562, 'en', 'system', 'System', '2021-02-03 03:55:49', '2021-09-20 07:29:11'),
(1563, 'en', 'server_status', 'Server status', '2021-02-03 03:55:49', '2021-09-20 07:29:11'),
(1564, 'en', 'nothing_found', 'Nothing Found', '2021-02-03 03:55:49', '2021-09-20 07:29:11'),
(1565, 'en', 'parent_category', 'Parent Category', '2021-02-03 03:58:00', '2021-09-20 07:29:11'),
(1566, 'en', 'level', 'Level', '2021-02-03 03:58:00', '2021-09-20 07:29:11'),
(1567, 'en', 'category_information', 'Category Information', '2021-02-03 03:58:12', '2021-09-20 07:29:11'),
(1568, 'en', 'translatable', 'Translatable', '2021-02-03 03:58:12', '2021-09-20 07:29:11'),
(1569, 'en', 'no_parent', 'No Parent', '2021-02-03 03:58:12', '2021-09-20 07:29:11'),
(1570, 'en', 'physical', 'Physical', '2021-02-03 03:58:13', '2021-09-20 07:29:11'),
(1571, 'en', 'digital', 'Digital', '2021-02-03 03:58:13', '2021-09-20 07:29:11'),
(1572, 'en', '200x200', '200x200', '2021-02-03 03:58:13', '2021-02-03 03:58:13'),
(1573, 'en', '32x32', '32x32', '2021-02-03 03:58:13', '2021-02-03 03:58:13'),
(1574, 'en', 'search_your_files', 'Search your files', '2021-02-03 03:58:15', '2021-09-20 07:29:11'),
(1575, 'en', 'category_has_been_updated_successfully', 'Category has been updated successfully', '2021-02-03 04:47:29', '2021-09-20 07:29:11'),
(1576, 'en', 'all_uploaded_files', 'All uploaded files', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1577, 'en', 'upload_new_file', 'Upload New File', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1578, 'en', 'all_files', 'All files', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1579, 'en', 'search', 'Search', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1580, 'en', 'details_info', 'Details Info', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1581, 'en', 'copy_link', 'Copy Link', '2021-02-03 06:25:30', '2021-09-20 07:29:11'),
(1582, 'en', 'are_you_sure_to_delete_this_file', 'Are you sure to delete this file?', '2021-02-03 06:25:31', '2021-09-20 07:29:11'),
(1583, 'en', 'file_info', 'File Info', '2021-02-03 06:25:31', '2021-09-20 07:29:11'),
(1584, 'en', 'link_copied_to_clipboard', 'Link copied to clipboard', '2021-02-03 06:25:31', '2021-09-20 07:29:11'),
(1585, 'en', 'oops_unable_to_copy', 'Oops, unable to copy', '2021-02-03 06:25:31', '2021-09-20 07:29:11'),
(1586, 'en', 'file_deleted_successfully', 'File deleted successfully', '2021-02-03 06:26:02', '2021-09-20 07:29:11'),
(1587, 'en', 'add_new_brand', 'Add New Brand', '2021-02-03 07:04:22', '2021-09-20 07:29:11'),
(1588, 'en', '120x80', '120x80', '2021-02-03 07:04:22', '2021-02-03 07:04:22'),
(1589, 'en', 'brand_information', 'Brand Information', '2021-02-03 07:04:29', '2021-09-20 07:29:11'),
(1590, 'en', 'brand_has_been_updated_successfully', 'Brand has been updated successfully', '2021-02-03 07:06:52', '2021-09-20 07:29:11'),
(1591, 'en', 'brand_has_been_deleted_successfully', 'Brand has been deleted successfully', '2021-02-03 07:07:54', '2021-09-20 07:29:11'),
(1592, 'en', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'This is used for search. Input those words by which cutomer can find this product.', '2021-02-04 03:11:06', '2021-09-20 07:29:11'),
(1593, 'en', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-02-04 03:11:06', '2021-09-20 07:29:11'),
(1594, 'en', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-02-04 03:11:06', '2021-09-20 07:29:11'),
(1595, 'en', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-02-04 03:11:06', '2021-09-20 07:29:11'),
(1596, 'en', 'save_product', 'Save Product', '2021-02-04 03:11:07', '2021-09-20 07:29:11'),
(1597, 'en', 'product_has_been_inserted_successfully', 'Product has been inserted successfully', '2021-02-04 03:29:35', '2021-09-20 07:29:11'),
(1598, 'en', 'something_went_wrong', 'Something went wrong!', '2021-02-04 04:32:50', '2021-09-20 07:29:11'),
(1599, 'en', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Sorry for the inconvenience, but we\'re working on it.', '2021-02-04 04:32:50', '2021-09-20 07:29:11'),
(1600, 'en', 'error_code', 'Error code', '2021-02-04 04:32:50', '2021-09-20 07:29:11'),
(1601, 'en', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-02-04 04:33:06', '2021-09-20 07:29:11'),
(1602, 'en', 'order', 'Order', '2021-02-04 04:33:06', '2021-09-20 07:29:11'),
(1603, 'en', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-02-04 06:10:35', '2021-09-20 07:29:11'),
(1604, 'en', 'home_banner_3_max_3', 'Home Banner 3 (Max 3)', '2021-02-04 06:10:36', '2021-09-20 07:29:11'),
(1605, 'en', 'add_new_seller', 'Add New Seller', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1606, 'en', 'filter_by_approval', 'Filter by Approval', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1607, 'en', 'nonapproved', 'Non-Approved', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1608, 'en', 'type_name_or_email__enter', 'Type name or email & Enter', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1609, 'en', 'due_to_seller', 'Due to seller', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1610, 'en', 'log_in_as_this_seller', 'Log in as this Seller', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1611, 'en', 'go_to_payment', 'Go to Payment', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1612, 'en', 'ban_this_seller', 'Ban this seller', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1613, 'en', 'do_you_really_want_to_ban_this_seller', 'Do you really want to ban this seller?', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1614, 'en', 'proceed', 'Proceed!', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1615, 'en', 'approved_sellers_updated_successfully', 'Approved sellers updated successfully', '2021-02-04 07:28:20', '2021-09-20 07:29:11'),
(1616, 'en', 'seller_has_been_deleted_successfully', 'Seller has been deleted successfully', '2021-02-04 07:28:26', '2021-09-20 07:29:11'),
(1617, 'en', 'seller_information', 'Seller Information', '2021-02-04 07:29:05', '2021-09-20 07:29:11'),
(1618, 'en', 'seller_has_been_inserted_successfully', 'Seller has been inserted successfully', '2021-02-04 07:35:31', '2021-09-20 07:29:11'),
(1619, 'en', 'email_already_exists', 'Email already exists!', '2021-02-04 07:38:36', '2021-09-20 07:29:11'),
(1620, 'en', 'verify_your_email_address', 'Verify Your Email Address', '2021-02-04 07:40:03', '2021-09-20 07:29:11'),
(1621, 'en', 'before_proceeding_please_check_your_email_for_a_verification_link', 'Before proceeding, please check your email for a verification link.', '2021-02-04 07:40:03', '2021-09-20 07:29:11'),
(1622, 'en', 'if_you_did_not_receive_the_email', 'If you did not receive the email.', '2021-02-04 07:40:03', '2021-09-20 07:29:11'),
(1623, 'en', 'click_here_to_request_another', 'Click here to request another', '2021-02-04 07:40:03', '2021-09-20 07:29:11'),
(1624, 'en', 'email_verification', 'Email Verification', '2021-02-04 07:40:09', '2021-09-20 07:29:11'),
(1625, 'en', 'email_verification__', 'Email Verification -', '2021-02-04 07:40:09', '2021-09-20 07:29:11'),
(1626, 'en', 'https_activation', 'HTTPS Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1627, 'en', 'maintenance_mode', 'Maintenance Mode', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1628, 'en', 'maintenance_mode_activation', 'Maintenance Mode Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1629, 'en', 'classified_product_activate', 'Classified Product Activate', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1630, 'en', 'classified_product', 'Classified Product', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1631, 'en', 'business_related', 'Business Related', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1632, 'en', 'vendor_system_activation', 'Vendor System Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1633, 'en', 'wallet_system_activation', 'Wallet System Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1634, 'en', 'coupon_system_activation', 'Coupon System Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1635, 'en', 'pickup_point_activation', 'Pickup Point Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1636, 'en', 'conversation_activation', 'Conversation Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1637, 'en', 'guest_checkout_activation', 'Guest Checkout Activation', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1638, 'en', 'categorybased_commission', 'Category-based Commission', '2021-02-04 07:43:50', '2021-09-20 07:29:11'),
(1639, 'en', 'after_activate_this_option_seller_commision_will_be_disabled_and_you_need_to_set_commission_on_each_category_otherwise_admin_will_not_get_any_commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1640, 'en', 'set_commisssion_now', 'Set Commisssion Now', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1641, 'en', 'payment_related', 'Payment Related', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1642, 'en', 'paypal_payment_activation', 'Paypal Payment Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1643, 'en', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'You need to configure Paypal correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1644, 'en', 'stripe_payment_activation', 'Stripe Payment Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1645, 'en', 'sslcommerz_activation', 'SSlCommerz Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1646, 'en', 'instamojo_payment_activation', 'Instamojo Payment Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1647, 'en', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1648, 'en', 'razor_pay_activation', 'Razor Pay Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1649, 'en', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'You need to configure Razor correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1650, 'en', 'paystack_activation', 'PayStack Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1651, 'en', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'You need to configure PayStack correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1652, 'en', 'voguepay_activation', 'VoguePay Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1653, 'en', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'You need to configure VoguePay correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1654, 'en', 'payhere_activation', 'Payhere Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1655, 'en', 'ngenius_activation', 'Ngenius Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1656, 'en', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'You need to configure Ngenius correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1657, 'en', 'iyzico_activation', 'Iyzico Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1658, 'en', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'You need to configure iyzico correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1659, 'en', 'bkash_activation', 'Bkash Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1660, 'en', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'You need to configure bkash correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1661, 'en', 'nagad_activation', 'Nagad Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1662, 'en', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'You need to configure nagad correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1663, 'en', 'cash_payment_activation', 'Cash Payment Activation', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1664, 'en', 'social_media_login', 'Social Media Login', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1665, 'en', 'facebook_login', 'Facebook login', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1666, 'en', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1667, 'en', 'google_login', 'Google login', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1668, 'en', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'You need to configure Google Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1669, 'en', 'twitter_login', 'Twitter login', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1670, 'en', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-09-20 07:29:11'),
(1671, 'en', 'shop_logo', 'Shop Logo', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1672, 'en', 'shop_address', 'Shop Address', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1673, 'en', 'banner_settings', 'Banner Settings', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1674, 'en', 'banners', 'Banners', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1675, 'en', 'we_had_to_limit_height_to_maintian_consistancy_in_some_device_both_side_of_the_banner_might_be_cropped_for_height_limitation', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1676, 'en', 'insert_link_with_https_', 'Insert link with https', '2021-02-04 07:45:53', '2021-09-20 07:29:11'),
(1677, 'en', 'your_shop_has_been_updated_successfully', 'Your Shop has been updated successfully!', '2021-02-04 07:49:29', '2021-09-20 07:29:11'),
(1678, 'en', 'support_ticket', 'Support Ticket', '2021-02-04 14:25:45', '2021-09-20 07:29:11'),
(1679, 'en', 'delete', 'Delete', '2021-02-05 03:06:35', '2021-09-20 07:29:11'),
(1680, 'en', 'search_result_for_', 'Search result for', '2021-02-05 03:15:40', '2021-09-20 07:29:11'),
(1681, 'en', 'brand_has_been_inserted_successfully', 'Brand has been inserted successfully', '2021-02-05 07:27:04', '2021-09-20 07:29:11'),
(1682, 'en', 'about', 'About', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1683, 'en', 'payout_info', 'Payout Info', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1684, 'en', 'bank_acc_name', 'Bank Acc Name', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1685, 'en', 'bank_acc_number', 'Bank Acc Number', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1686, 'en', 'total_products', 'Total Products', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1687, 'en', 'total_sold_amount', 'Total Sold Amount', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1688, 'en', 'wallet_balance', 'Wallet Balance', '2021-02-07 02:26:32', '2021-09-20 07:29:11'),
(1689, 'en', 'cookies_agreement', 'Cookies Agreement', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1690, 'en', 'cookies_agreement_text', 'Cookies Agreement Text', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1691, 'en', 'show_cookies_agreement', 'Show Cookies Agreement?', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1692, 'en', 'custom_script', 'Custom Script', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1693, 'en', 'header_custom_script__before_head', 'Header custom script - before </head>', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1694, 'en', 'write_script_with_script_tag', 'Write script with <script> tag', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1695, 'en', 'footer_custom_script__before_body', 'Footer custom script - before </body>', '2021-02-07 03:50:48', '2021-09-20 07:29:11'),
(1696, 'en', 'category_has_been_inserted_successfully', 'Category has been inserted successfully', '2021-02-07 04:00:49', '2021-09-20 07:29:11'),
(1697, 'en', 'all_flash_deals', 'All Flash Deals', '2021-02-07 07:05:16', '2021-09-20 07:29:11'),
(1698, 'en', 'create_new_flash_deal', 'Create New Flash Deal', '2021-02-07 07:05:16', '2021-09-20 07:29:11'),
(1699, 'en', 'ffffff', '#FFFFFF', '2021-02-07 07:05:19', '2021-09-20 07:29:11'),
(1700, 'en', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'This image is shown as cover banner in flash deal details page.', '2021-02-07 07:05:19', '2021-09-20 07:29:11'),
(1701, 'en', 'flash_deal_has_been_inserted_successfully', 'Flash Deal has been inserted successfully', '2021-02-07 07:07:14', '2021-09-20 07:29:11'),
(1702, 'en', 'flash_deal_status_updated_successfully', 'Flash deal status updated successfully', '2021-02-07 07:07:32', '2021-09-20 07:29:11'),
(1703, 'en', 'flash_deal_has_been_updated_successfully', 'Flash Deal has been updated successfully', '2021-02-08 06:22:46', '2021-09-20 07:29:11'),
(1704, 'en', 'update_language_info', 'update Language Info', '2021-02-09 06:28:04', '2021-09-20 07:29:11'),
(1705, 'en', 'language_has_been_updated_successfully', 'Language has been updated successfully', '2021-02-09 06:28:10', '2021-09-20 07:29:11'),
(1706, 'en', 'type_key__enter', 'Type key & Enter', '2021-02-09 06:29:56', '2021-09-20 07:29:11'),
(1707, 'en', 'translations_updated_for_', 'Translations updated for', '2021-02-09 06:31:12', '2021-09-20 07:29:11'),
(2936, 'en', 'language_has_been_inserted_successfully', 'Language has been inserted successfully', '2021-02-09 06:54:07', '2021-09-20 07:29:15'),
(2937, 'es', 'all_category', 'Todas las categorías', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2938, 'es', 'all', 'Todos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2939, 'es', 'flash_sale', 'Venta express', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2940, 'es', 'view_more', 'Ver más', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2941, 'es', 'add_to_wishlist', 'Añadir a la lista de deseos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2942, 'es', 'add_to_compare', 'Añadir a comparar', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2943, 'es', 'add_to_cart', 'Añadir a la cesta', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2944, 'es', 'club_point', 'Punto Club', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2945, 'es', 'classified_ads', 'Anuncios clasificados', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2946, 'es', 'used', 'Usado', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2947, 'es', 'top_10_categories', '10 categorías principales', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2948, 'es', 'view_all_categories', 'Ver todas las categorías', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2949, 'es', 'top_10_brands', 'Las 10 mejores marcas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2950, 'es', 'view_all_brands', 'Ver todas las marcas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2951, 'es', 'terms__conditions', 'Términos y condiciones', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2952, 'es', 'best_selling', 'Más vendido', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2953, 'es', 'top_20', 'Top 20', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2954, 'es', 'featured_products', 'Productos Destacados', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2955, 'es', 'best_sellers', 'Más vendidos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2956, 'es', 'visit_store', 'Visita la tienda', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2957, 'es', 'popular_suggestions', 'Sugerencias populares', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2958, 'es', 'category_suggestions', 'Sugerencias de categoría', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2959, 'es', 'automobile__motorcycle', 'Automóvil y motocicleta', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2960, 'es', 'price_range', 'Rango de precios', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2961, 'es', 'filter_by_color', 'Filtrar por color', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2962, 'es', 'home', 'Hogar', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2963, 'es', 'newest', 'El más nuevo', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2964, 'es', 'oldest', 'Más antiguo', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2965, 'es', 'price_low_to_high', 'Precios de barato a caro', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2966, 'es', 'price_high_to_low', 'Precio de mayor a menor', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2967, 'es', 'brands', 'Marcas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2968, 'es', 'all_brands', 'Todas las marcas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2969, 'es', 'all_sellers', 'Todos los vendedores', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2970, 'es', 'inhouse_product', 'Producto interno', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2971, 'es', 'message_seller', 'Vendedor de mensajes', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2972, 'es', 'price', 'Precio', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2973, 'es', 'discount_price', 'Precio de descuento', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2974, 'es', 'color', 'Color', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2975, 'es', 'quantity', 'Cantidad', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2976, 'es', 'available', 'disponible', '2021-02-09 06:55:44', '2021-02-09 06:55:44'),
(2977, 'es', 'total_price', 'Precio total', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2978, 'es', 'out_of_stock', 'Agotado', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2979, 'es', 'refund', 'Reembolso', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2980, 'es', 'share', 'Compartir', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2981, 'es', 'sold_by', 'Vendido por', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2982, 'es', 'customer_reviews', 'Valoración de los clientes', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2983, 'es', 'top_selling_products', 'Productos más vendidos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2984, 'es', 'description', 'Descripción', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2985, 'es', 'video', 'Vídeo', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2986, 'es', 'reviews', 'Reseñas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2987, 'es', 'download', 'Descargar', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2988, 'es', 'there_have_been_no_reviews_for_this_product_yet', 'Todavía no ha habido reseñas para este producto.', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2989, 'es', 'related_products', 'Productos relacionados', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2990, 'es', 'any_query_about_this_product', 'Cualquier consulta sobre este producto', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2991, 'es', 'product_name', 'nombre del producto', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2992, 'es', 'your_question', 'Tu pregunta', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2993, 'es', 'send', 'Enviar', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2994, 'es', 'use_country_code_before_number', 'Use el código de país antes del número', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2995, 'es', 'remember_me', 'Recuérdame', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2996, 'es', 'dont_have_an_account', '¿No tienes una cuenta?', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2997, 'es', 'register_now', 'Regístrate ahora', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2998, 'es', 'or_login_with', 'O inicie sesión con', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(2999, 'es', 'oops', 'Ups ..', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3000, 'es', 'this_item_is_out_of_stock', '¡Este artículo no está en inventario!', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3001, 'es', 'back_to_shopping', 'De vuelta a las compras', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3002, 'es', 'login_to_your_account', 'Ingrese a su cuenta.', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3003, 'es', 'purchase_history', 'Historial de compras', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3004, 'es', 'new', 'Nuevo', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3005, 'es', 'downloads', 'Descargas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3006, 'es', 'sent_refund_request', 'Solicitud de reembolso enviada', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3007, 'es', 'product_bulk_upload', 'Carga masiva de productos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3008, 'es', 'orders', 'Pedidos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3009, 'es', 'recieved_refund_request', 'Solicitud de reembolso recibida', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3010, 'es', 'shop_setting', 'Configuración de la tienda', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3011, 'es', 'payment_history', 'historial de pagos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3012, 'es', 'money_withdraw', 'Retirar dinero', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3013, 'es', 'conversations', 'Conversaciones', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3014, 'es', 'my_wallet', 'Mi billetera', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3015, 'es', 'earning_points', 'Ganar puntos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3016, 'es', 'support_ticket', 'Ticket de soporte', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3017, 'es', 'manage_profile', 'Administrar perfil', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3018, 'es', 'sold_amount', 'Cantidad vendida', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3019, 'es', 'your_sold_amount_current_month', 'Su cantidad vendida (mes actual)', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3020, 'es', 'total_sold', 'Total vendido', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3021, 'es', 'last_month_sold', 'Último mes vendido', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3022, 'es', 'total_sale', 'Venta total', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3023, 'es', 'total_earnings', 'Ganancias Totales', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3024, 'es', 'successful_orders', 'Órdenes exitosas', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3025, 'es', 'total_orders', 'Pedidos totales', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3026, 'es', 'pending_orders', 'Ordenes pendientes', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3027, 'es', 'cancelled_orders', 'Pedidos cancelados', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3028, 'es', 'product', 'Producto', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3029, 'es', 'purchased_package', 'Paquete comprado', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3030, 'es', 'package_not_found', 'Paquete no encontrado', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3031, 'es', 'upgrade_package', 'Paquete de actualización', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3032, 'es', 'shop', 'tienda', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3033, 'es', 'manage__organize_your_shop', 'Administra y organiza tu tienda', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3034, 'es', 'go_to_setting', 'Ir a configuración', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3035, 'es', 'payment', 'Pago', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3036, 'es', 'configure_your_payment_method', 'Configura tu método de pago', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3037, 'es', 'my_panel', 'Mi panel', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3038, 'es', 'item_has_been_added_to_wishlist', 'El artículo ha sido agregado a la lista de deseos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3039, 'es', 'my_points', 'Mis puntos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3040, 'es', '_points', 'Puntos', '2021-02-09 06:55:44', '2021-09-20 07:29:15'),
(3041, 'es', 'wallet_money', 'Monedero de dinero', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3042, 'es', 'exchange_rate', 'Tipo de cambio', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3043, 'es', 'point_earning_history', 'Historial de obtención de puntos', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3044, 'es', 'date', 'Fecha', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3045, 'es', 'points', 'Puntos', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3046, 'es', 'converted', 'Convertido', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3047, 'es', 'action', 'Acción', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3048, 'es', 'no_history_found', 'No se encontró historial.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3049, 'es', 'convert_has_been_done_successfully_check_your_wallets', 'La conversión se ha realizado correctamente. Compruebe sus carteras.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3050, 'es', 'something_went_wrong', 'Algo salió mal', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3051, 'es', 'remaining_uploads', 'Cargas restantes', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3052, 'es', 'no_package_found', 'Ningún paquete encontrado', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3053, 'es', 'search_product', 'Buscar producto', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3054, 'es', 'name', 'Nombre', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3055, 'es', 'current_qty', 'Cantidad actual', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3056, 'es', 'base_price', 'Precio base', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3057, 'es', 'published', 'Publicado', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3058, 'es', 'featured', 'Destacados', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3059, 'es', 'options', 'Opciones', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3060, 'es', 'edit', 'Editar', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3061, 'es', 'duplicate', 'Duplicar', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3062, 'es', '1_download_the_skeleton_file_and_fill_it_with_data', '1. Descargue el archivo esqueleto y rellénelo con datos.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3063, 'es', '2_you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', '2. Puede descargar el archivo de ejemplo para comprender cómo se deben completar los datos.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3064, 'es', '3_once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', '3. Una vez que haya descargado y llenado el archivo esqueleto, cárguelo en el formulario a continuación y envíelo.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3065, 'es', '4_after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', '4. Después de cargar productos, debe editarlos y establecer imágenes y opciones de productos.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3066, 'es', 'download_csv', 'Descarga CSV', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3067, 'es', '1_categorysub_categorysub_sub_category_and_brand_should_be_in_numerical_ids', '1. La categoría, subcategoría, sub subcategoría y marca deben estar en ID numéricos.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3068, 'es', '2_you_can_download_the_pdf_to_get_categorysub_categorysub_sub_category_and_brand_id', '2. Puede descargar el pdf para obtener Categoría, Subcategoría, Sub Subcategoría y Identificación de marca.', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3069, 'es', 'download_category', 'Categoría de descarga', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3070, 'es', 'download_sub_category', 'Descargar subcategoría', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3071, 'es', 'download_sub_sub_category', 'Descargar sub categoría', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3072, 'es', 'download_brand', 'Descargar marca', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3073, 'es', 'upload_csv_file', 'Subir archivo CSV', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3074, 'es', 'csv', 'CSV', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3075, 'es', 'choose_csv_file', 'Elija archivo CSV', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3076, 'es', 'upload', 'Subir', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3077, 'es', 'add_new_digital_product', 'Agregar nuevo producto digital', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3078, 'es', 'available_status', 'Estado disponible', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3079, 'es', 'admin_status', 'Estado de administrador', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3080, 'es', 'pending_balance', 'Balance pendiente', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3081, 'es', 'send_withdraw_request', 'Enviar solicitud de retiro', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3082, 'es', 'withdraw_request_history', 'Retirar historial de solicitudes', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3083, 'es', 'amount', 'Cantidad', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3084, 'es', 'status', 'Estado', '2021-02-09 06:55:45', '2021-09-20 07:29:15'),
(3085, 'es', 'message', 'Mensaje', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3086, 'es', 'send_a_withdraw_request', 'Enviar una solicitud de retiro', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3087, 'es', 'basic_info', 'Información básica', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3088, 'es', 'your_phone', 'Su teléfono', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3089, 'es', 'photo', 'Foto', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3090, 'es', 'browse', 'Vistazo', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3091, 'es', 'your_password', 'Tu contraseña', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3092, 'es', 'new_password', 'Nueva contraseña', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3093, 'es', 'confirm_password', 'confirmar Contraseña', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3094, 'es', 'add_new_address', 'Agregar nueva dirección', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3095, 'es', 'payment_setting', 'Configuración de pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3096, 'es', 'cash_payment', 'Pago en efectivo', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3097, 'es', 'bank_payment', 'Pago bancario', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3098, 'es', 'bank_name', 'Nombre del banco', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3099, 'es', 'bank_account_name', 'Nombre de la cuenta bancaria', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3100, 'es', 'bank_account_number', 'Número de cuenta bancaria', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3101, 'es', 'bank_routing_number', 'Número de ruta bancaria', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3102, 'es', 'update_profile', 'Actualización del perfil', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3103, 'es', 'change_your_email', 'Cambia tu correo electrónico', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3104, 'es', 'your_email', 'Tu correo electrónico', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3105, 'es', 'sending_email', 'Enviando correo electrónico ...', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3106, 'es', 'verify', 'Verificar', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3107, 'es', 'update_email', 'Actualizar correo electrónico', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3108, 'es', 'new_address', 'Nueva direccion', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3109, 'es', 'your_address', 'Su dirección', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3110, 'es', 'country', 'País', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3111, 'es', 'select_your_country', 'Selecciona tu pais', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3112, 'es', 'city', 'Ciudad', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3113, 'es', 'your_city', 'Tu ciudad', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3114, 'es', 'your_postal_code', 'Tu código postal', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3115, 'es', '880', '+880', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3116, 'es', 'save', 'Salvar', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3117, 'es', 'received_refund_request', 'Solicitud de reembolso recibida', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3118, 'es', 'delete_confirmation', 'Eliminar confirmación', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3119, 'es', 'are_you_sure_to_delete_this', '¿Estás seguro de eliminar esto?', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3120, 'es', 'premium_packages_for_sellers', 'Paquetes premium para vendedores', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3121, 'es', 'product_upload', 'Carga de producto', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3122, 'es', 'digital_product_upload', 'Carga de productos digitales', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3123, 'es', 'purchase_package', 'Paquete de compra', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3124, 'es', 'select_payment_type', 'Seleccione el tipo de pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3125, 'es', 'payment_type', 'Tipo de pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3126, 'es', 'select_one', 'Seleccione uno', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3127, 'es', 'online_payment', 'Pago en línea', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3128, 'es', 'offline_payment', 'Pago fuera de línea', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3129, 'es', 'purchase_your_package', 'Compra tu paquete', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3130, 'es', 'paypal', 'Paypal', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3131, 'es', 'stripe', 'Raya', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3132, 'es', 'sslcommerz', 'sslcommerz', '2021-02-09 06:55:45', '2021-02-09 06:55:45'),
(3133, 'es', 'confirm', 'Confirmar', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3134, 'es', 'offline_package_payment', 'Pago del paquete sin conexión', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3135, 'es', 'transaction_id', 'ID de transacción', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3136, 'es', 'choose_image', 'Elegir imagen', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3137, 'es', 'code', 'Código', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3138, 'es', 'delivery_status', 'Estado de entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3139, 'es', 'payment_status', 'Estado de pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3140, 'es', 'paid', 'Pagado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3141, 'es', 'order_details', 'Detalles del pedido', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3142, 'es', 'download_invoice', 'Descargar factura', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3143, 'es', 'unpaid', 'No pagado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3144, 'es', 'order_placed', 'Pedido realizado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3145, 'es', 'confirmed', 'Confirmado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3146, 'es', 'on_delivery', 'En la entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3147, 'es', 'delivered', 'Entregado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3148, 'es', 'order_summary', 'Resumen del pedido', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3149, 'es', 'order_code', 'Código de orden', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3150, 'es', 'customer', 'Cliente', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3151, 'es', 'total_order_amount', 'Importe total del pedido', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3152, 'es', 'shipping_metdod', 'Envío metdod', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3153, 'es', 'flat_shipping_rate', 'Cargo de envío fijo', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3154, 'es', 'payment_metdod', 'Pago metdod', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3155, 'es', 'variation', 'Variación', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3156, 'es', 'delivery_type', 'tipo de entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3157, 'es', 'home_delivery', 'Entrega a domicilio', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3158, 'es', 'order_ammount', 'Orden Ammount', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3159, 'es', 'subtotal', 'Total parcial', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3160, 'es', 'shipping', 'Envío', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3161, 'es', 'coupon_discount', 'Cupón de descuento', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3162, 'es', 'na', 'N / A', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3163, 'es', 'in_stock', 'En stock', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3164, 'es', 'buy_now', 'Compra ahora', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3165, 'es', 'item_added_to_your_cart', 'Artículo añadido a tu carrito!', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3166, 'es', 'proceed_to_checkout', 'Pasar por la caja', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3167, 'es', 'cart_items', 'Artículos del carrito', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3168, 'es', '1_my_cart', '1. Mi carrito', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3169, 'es', 'view_cart', 'Ver carrito', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3170, 'es', '2_shipping_info', '2. Información de envío', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3171, 'es', 'checkout', 'Echa un vistazo', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3172, 'es', '3_delivery_info', '3. Información de entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3173, 'es', '4_payment', '4. Pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3174, 'es', '5_confirmation', '5. Confirmación', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3175, 'es', 'remove', 'Eliminar', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3176, 'es', 'return_to_shop', 'Volver a la tienda', '2021-02-09 06:55:45', '2021-09-20 07:29:16');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3177, 'es', 'continue_to_shipping', 'Continuar con el envío', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3178, 'es', 'or', 'O', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3179, 'es', 'guest_checkout', 'Pago como invitado', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3180, 'es', 'continue_to_delivery_info', 'Continuar con la información de entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3181, 'es', 'postal_code', 'Código postal', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3182, 'es', 'choose_delivery_type', 'Elija el tipo de entrega', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3183, 'es', 'local_pickup', 'Recogida local', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3184, 'es', 'select_your_nearest_pickup_point', 'Seleccione su punto de recogida más cercano', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3185, 'es', 'continue_to_payment', 'Continuar con el pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3186, 'es', 'select_a_payment_option', 'Seleccione una opción de pago', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3187, 'es', 'razorpay', 'Razorpay', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3188, 'es', 'paystack', 'Pila de pagos', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3189, 'es', 'voguepay', 'VoguePay', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3190, 'es', 'payhere', 'Pague aquí', '2021-02-09 06:55:45', '2021-02-09 06:55:45'),
(3191, 'es', 'ngenius', 'genio', '2021-02-09 06:55:45', '2021-02-09 06:55:45'),
(3192, 'es', 'paytm', 'Paytm', '2021-02-09 06:55:45', '2021-09-20 07:29:16'),
(3193, 'es', 'cash_on_delivery', 'Contra reembolso', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3194, 'es', 'your_wallet_balance_', 'El saldo de su billetera:', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3195, 'es', 'insufficient_balance', 'Saldo insuficiente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3196, 'es', 'i_agree_to_the', 'Estoy de acuerdo con la', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3197, 'es', 'complete_order', 'Orden completa', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3198, 'es', 'summary', 'Resumen', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3199, 'es', 'items', 'Artículos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3200, 'es', 'total_club_point', 'Puntos totales del club', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3201, 'es', 'total_shipping', 'Envío total', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3202, 'es', 'have_coupon_code_enter_here', '¿Tiene un código de cupón? Entre aquí', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3203, 'es', 'apply', 'Aplicar', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3204, 'es', 'you_need_to_agree_with_our_policies', 'Debes estar de acuerdo con nuestras políticas', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3205, 'es', 'forgot_password', 'Se te olvidó tu contraseña', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3206, 'es', 'seo_setting', 'Configuración de SEO', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3207, 'es', 'system_update', 'Actualizacion del sistema', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3208, 'es', 'add_new_payment_method', 'Agregar nuevo método de pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3209, 'es', 'manual_payment_method', 'Método de pago manual', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3210, 'es', 'heading', 'Bóveda', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3211, 'es', 'logo', 'Logo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3212, 'es', 'manual_payment_information', 'Información de pago manual', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3213, 'es', 'type', 'Tipo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3214, 'es', 'custom_payment', 'Pago personalizado', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3215, 'es', 'check_payment', 'Pago con cheque', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3216, 'es', 'checkout_thumbnail', 'Miniatura de pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3217, 'es', 'payment_instruction', 'Instrucciones de pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3218, 'es', 'bank_information', 'Información bancaria', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3219, 'es', 'select_file', 'Seleccione Archivo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3220, 'es', 'upload_new', 'Subir nuevo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3221, 'es', 'sort_by_newest', 'Ordenar por más reciente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3222, 'es', 'sort_by_oldest', 'Ordenar por más antiguo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3223, 'es', 'sort_by_smallest', 'Ordenar por más pequeño', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3224, 'es', 'sort_by_largest', 'Ordenar por mayor', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3225, 'es', 'selected_only', 'Solo seleccionado', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3226, 'es', 'no_files_found', 'No se encontraron archivos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3227, 'es', '0_file_selected', '0 Archivo seleccionado', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3228, 'es', 'clear', 'Claro', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3229, 'es', 'prev', 'Anterior', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3230, 'es', 'next', 'Siguiente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3231, 'es', 'add_files', 'Agregar archivos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3232, 'es', 'method_has_been_inserted_successfully', 'El método se ha insertado correctamente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3233, 'es', 'order_date', 'Fecha de orden', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3234, 'es', 'bill_to', 'Cobrar a', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3235, 'es', 'sub_total', 'Sub total', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3236, 'es', 'total_tax', 'Total impuestos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3237, 'es', 'grand_total', 'Gran total', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3238, 'es', 'your_order_has_been_placed_successfully_please_submit_payment_information_from_purchase_history', 'Su pedido se ha realizado correctamente. Envíe la información de pago del historial de compras', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3239, 'es', 'thank_you_for_your_order', '¡Gracias por su orden!', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3240, 'es', 'order_code', 'Código de orden:', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3241, 'es', 'a_copy_or_your_order_summary_has_been_sent_to', 'Se ha enviado una copia o el resumen de su pedido a', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3242, 'es', 'make_payment', 'Hacer el pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3243, 'es', 'payment_screenshot', 'Captura de pantalla de pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3244, 'es', 'paypal_credential', 'Credencial Paypal', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3245, 'es', 'paypal_client_id', 'Identificación de cliente de Paypal', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3246, 'es', 'paypal_client_secret', 'Secreto del cliente de Paypal', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3247, 'es', 'paypal_sandbox_mode', 'Modo de caja de arena de Paypal', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3248, 'es', 'sslcommerz_credential', 'Credencial Sslcommerz', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3249, 'es', 'sslcz_store_id', 'ID de tienda Sslcz', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3250, 'es', 'sslcz_store_password', 'Contraseña de la tienda sslcz', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3251, 'es', 'sslcommerz_sandbox_mode', 'Modo Sandbox de Sslcommerz', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3252, 'es', 'stripe_credential', 'Credencial de banda', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3253, 'es', 'stripe_key', 'LLAVE RAYA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3254, 'es', 'stripe_secret', 'SECRETO DE RAYAS', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3255, 'es', 'razorpay_credential', 'Credencial RazorPay', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3256, 'es', 'razor_key', 'LLAVE DE RAZOR', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3257, 'es', 'razor_secret', 'EL SECRETO DE LA NAVAJA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3258, 'es', 'instamojo_credential', 'Credencial de Instamojo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3259, 'es', 'api_key', 'CLAVE API', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3260, 'es', 'im_api_key', 'CLAVE API IM', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3261, 'es', 'auth_token', 'AUTH TOKEN', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3262, 'es', 'im_auth_token', 'SOY FICHA AUTOMÁTICA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3263, 'es', 'instamojo_sandbox_mode', 'Modo Sandbox de Instamojo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3264, 'es', 'paystack_credential', 'Credencial PayStack', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3265, 'es', 'public_key', 'LLAVE PÚBLICA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3266, 'es', 'secret_key', 'LLAVE SECRETA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3267, 'es', 'merchant_email', 'CORREO ELECTRÓNICO DEL COMERCIANTE', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3268, 'es', 'voguepay_credential', 'Credencial de VoguePay', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3269, 'es', 'merchant_id', 'IDENTIFICACIÓN DEL COMERCIANTE', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3270, 'es', 'sandbox_mode', 'modo sandbox', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3271, 'es', 'payhere_credential', 'Credencial Payhere', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3272, 'es', 'payhere_merchant_id', 'ID DE COMERCIANTE DE PAYHERE', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3273, 'es', 'payhere_secret', 'PAYHERE SECRET', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3274, 'es', 'payhere_currency', 'PAYHERE MONEDA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3275, 'es', 'payhere_sandbox_mode', 'Modo Sandbox de Payhere', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3276, 'es', 'ngenius_credential', 'Credencial Ngenius', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3277, 'es', 'ngenius_outlet_id', 'ID DE SALIDA NGENIUS', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3278, 'es', 'ngenius_api_key', 'CLAVE API NGENIUS', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3279, 'es', 'ngenius_currency', 'MONEDA NGENIUS', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3280, 'es', 'mpesa_credential', 'Credencial Mpesa', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3281, 'es', 'mpesa_consumer_key', 'CLAVE DE CONSUMIDOR MPESA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3282, 'es', 'mpesa_consumer_key', 'MPESA_CONSUMER_KEY', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3283, 'es', 'mpesa_consumer_secret', 'SECRETO DEL CONSUMIDOR DE MPESA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3284, 'es', 'mpesa_consumer_secret', 'MPESA_CONSUMER_SECRET', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3285, 'es', 'mpesa_short_code', 'CÓDIGO CORTO MPESA', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3286, 'es', 'mpesa_short_code', 'MPESA_SHORT_CODE', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3287, 'es', 'mpesa_sandbox_activation', 'ACTIVACIÓN MPESA SANDBOX', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3288, 'es', 'flutterwave_credential', 'Credencial de Flutterwave', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3289, 'es', 'rave_public_key', 'RAVE_PUBLIC_KEY', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3290, 'es', 'rave_secret_key', 'RAVE_SECRET_KEY', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3291, 'es', 'rave_title', 'RAVE_TITLE', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3292, 'es', 'stagin_activation', 'ACTIVACIÓN DE STAGIN', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3293, 'es', 'all_product', 'Todo el producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3294, 'es', 'sort_by', 'Ordenar por', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3295, 'es', 'rating_high__low', 'Calificación (alta> baja)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3296, 'es', 'rating_low__high', 'Calificación (baja> alta)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3297, 'es', 'num_of_sale_high__low', 'Número de venta (alto> bajo)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3298, 'es', 'num_of_sale_low__high', 'Número de venta (bajo> alto)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3299, 'es', 'base_price_high__low', 'Precio base (alto> bajo)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3300, 'es', 'base_price_low__high', 'Precio base (bajo> alto)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3301, 'es', 'type__enter', 'Escriba e ingrese', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3302, 'es', 'added_by', 'Añadido por', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3303, 'es', 'num_of_sale', 'Número de venta', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3304, 'es', 'total_stock', 'Stock total', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3305, 'es', 'todays_deal', 'Oferta de hoy', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3306, 'es', 'rating', 'Clasificación', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3307, 'es', 'times', 'veces', '2021-02-09 06:55:46', '2021-02-09 06:55:46'),
(3308, 'es', 'add_nerw_product', 'Agregar producto Nerw', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3309, 'es', 'product_information', 'Información del Producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3310, 'es', 'unit', 'Unidad', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3311, 'es', 'unit_eg_kg_pc_etc', 'Unidad (por ejemplo, KG, Pc, etc.)', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3312, 'es', 'minimum_qty', 'Cantidad mínima', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3313, 'es', 'tags', 'Etiquetas', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3314, 'es', 'type_and_hit_enter_to_add_a_tag', 'Escriba y presione enter para agregar una etiqueta', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3315, 'es', 'barcode', 'Código de barras', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3316, 'es', 'refundable', 'Reintegrable', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3317, 'es', 'product_images', 'Imágenes del producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3318, 'es', 'gallery_images', 'Galería de imágenes', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3319, 'es', 'todays_deal_updated_successfully', 'Oferta de hoy actualizada correctamente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3320, 'es', 'published_products_updated_successfully', 'Productos publicados actualizados con éxito', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3321, 'es', 'thumbnail_image', 'Imagen en miniatura', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3322, 'es', 'featured_products_updated_successfully', 'Productos destacados actualizados con éxito', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3323, 'es', 'product_videos', 'Vídeos de productos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3324, 'es', 'video_provider', 'Proveedor de video', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3325, 'es', 'youtube', 'Youtube', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3326, 'es', 'dailymotion', 'Dailymotion', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3327, 'es', 'vimeo', 'Vimeo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3328, 'es', 'video_link', 'Enlace de video', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3329, 'es', 'product_variation', 'Variación de producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3330, 'es', 'colors', 'Colores', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3331, 'es', 'attributes', 'Atributos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3332, 'es', 'choose_attributes', 'Elija atributos', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3333, 'es', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'Elija los atributos de este producto y luego ingrese los valores de cada atributo', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3334, 'es', 'product_price__stock', 'Precio del producto + stock', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3335, 'es', 'unit_price', 'Precio unitario', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3336, 'es', 'purchase_price', 'Precio de compra', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3337, 'es', 'flat', 'Plano', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3338, 'es', 'percent', 'Por ciento', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3339, 'es', 'discount', 'Descuento', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3340, 'es', 'product_description', 'Descripción del producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3341, 'es', 'product_shipping_cost', 'Costo de envío del producto', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3342, 'es', 'free_shipping', 'Envío gratis', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3343, 'es', 'flat_rate', 'Tarifa plana', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3344, 'es', 'shipping_cost', 'Costo de envío', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3345, 'es', 'pdf_specification', 'Especificación PDF', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3346, 'es', 'seo_meta_tags', 'Metaetiquetas SEO', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3347, 'es', 'meta_title', 'Meta título', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3348, 'es', 'meta_image', 'Meta imagen', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3349, 'es', 'choice_title', 'Título de elección', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3350, 'es', 'enter_choice_values', 'Ingrese valores de elección', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3351, 'es', 'all_categories', 'Todas las categorias', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3352, 'es', 'add_new_category', 'Añadir nueva categoria', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3353, 'es', 'type_name__enter', 'Escriba el nombre e ingrese', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3354, 'es', 'banner', 'Bandera', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3355, 'es', 'commission', 'Comisión', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3356, 'es', 'icon', 'icono', '2021-02-09 06:55:46', '2021-02-09 06:55:46'),
(3357, 'es', 'featured_categories_updated_successfully', 'Categorías destacadas actualizadas con éxito', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3358, 'es', 'hot', 'Caliente', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3359, 'es', 'filter_by_payment_status', 'Filtrar por estado de pago', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3360, 'es', 'unpaid', 'No pagado', '2021-02-09 06:55:46', '2021-09-20 07:29:16'),
(3361, 'es', 'filter_by_deliver_status', 'Filtrar por estado de entrega', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3362, 'es', 'pending', 'Pendiente', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3363, 'es', 'type_order_code__hit_enter', 'Escriba el código de pedido y presione Enter', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3364, 'es', 'num_of_products', 'Num. de productos', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3365, 'es', 'walk_in_customer', 'Cliente sin cita', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3366, 'es', 'qty', 'CANTIDAD', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3367, 'es', 'without_shipping_charge', 'Sin gastos de envío', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3368, 'es', 'with_shipping_charge', 'Con cargo de envío', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3369, 'es', 'pay_with_cash', 'Pagar en efectivo', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3370, 'es', 'shipping_address', 'Dirección de Envío', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3371, 'es', 'close', 'Cerrar', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3372, 'es', 'select_country', 'Seleccionar país', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3373, 'es', 'order_confirmation', 'Confirmación del pedido', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3374, 'es', 'are_you_sure_to_confirm_this_order', '¿Está seguro de confirmar este pedido?', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3375, 'es', 'comfirm_order', 'Confirmar orden', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3376, 'es', 'personal_info', 'Información personal', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3377, 'es', 'repeat_password', 'Repita la contraseña', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3378, 'es', 'shop_name', 'Nombre de tienda', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3379, 'es', 'register_your_shop', 'Registre su tienda', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3380, 'es', 'affiliate_informations', 'Información de afiliados', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3381, 'es', 'affiliate', 'Afiliado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3382, 'es', 'user_info', 'Información de usuario', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3383, 'es', 'installed_addon', 'Complemento instalado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3384, 'es', 'available_addon', 'Complemento disponible', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3385, 'es', 'install_new_addon', 'Instalar nuevo complemento', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3386, 'es', 'version', 'Versión', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3387, 'es', 'activated', 'Activado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3388, 'es', 'deactivated', 'Desactivado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3389, 'es', 'activate_otp', 'Activar OTP', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3390, 'es', 'otp_will_be_used_for', 'OTP se utilizará para', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3391, 'es', 'settings_updated_successfully', 'Configuración actualizada correctamente', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3392, 'es', 'product_owner', 'Dueño del producto', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3393, 'es', 'point', 'Punto', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3394, 'es', 'set_point_for_product_within_a_range', 'Punto de ajuste para producto dentro de un rango', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3395, 'es', 'set_point_for_multiple_products', 'Punto de ajuste para varios productos', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3396, 'es', 'min_price', 'Precio min', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3397, 'es', 'max_price', 'Precio máximo', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3398, 'es', 'set_point_for_all_products', 'Punto de ajuste para todos los productos', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3399, 'es', 'set_point_for_', 'Punto de ajuste para', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3400, 'es', 'convert_status', 'Convertir estado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3401, 'es', 'earned_at', 'Ganado en', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3402, 'es', 'seller_based_selling_report', 'Informe de ventas basado en el vendedor', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3403, 'es', 'sort_by_verificarion_status', 'Ordenar por estado de verificación', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3404, 'es', 'approved', 'Aprobado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3405, 'es', 'non_approved', 'No aprovado', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3406, 'es', 'filter', 'Filtrar', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3407, 'es', 'seller_name', 'Nombre del vendedor', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3408, 'es', 'number_of_product_sale', 'Número de venta de productos', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3409, 'es', 'order_amount', 'Total de la orden', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3410, 'es', 'facebook_chat_setting', 'Configuración de chat de Facebook', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3411, 'es', 'facebook_page_id', 'ID de página de Facebook', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3412, 'es', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Tenga cuidado al configurar el chat de Facebook. Para una configuración incorrecta, no obtendrá el icono de Messenger en su sitio de usuario final.', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3413, 'es', 'login_into_your_facebook_page', 'Inicie sesión en su página de Facebook', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3414, 'es', 'find_the_about_option_of_your_facebook_page', 'Encuentra la opción Acerca de en tu página de Facebook.', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3415, 'es', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'En la parte inferior, puede encontrar el \\ \"ID de página de Facebook \\\"', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3416, 'es', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Vaya a Configuración de su página y busque la opción de \\ \"Mensajería avanzada \\\"', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3417, 'es', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Desplácese hacia abajo en esa página y obtendrá \\ \"dominio en la lista blanca \\\"', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3418, 'es', 'set_your_website_domain_name', 'Configure el nombre de dominio de su sitio web', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3419, 'es', 'google_recaptcha_setting', 'Configuración de reCAPTCHA de Google', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3420, 'es', 'site_key', 'Clave del sitio', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3421, 'es', 'select_shipping_method', 'Seleccione el método de envío', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3422, 'es', 'product_wise_shipping_cost', 'Costo de envío inteligente del producto', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3423, 'es', 'flat_rate_shipping_cost', 'Costo de envío de tarifa plana', '2021-02-09 06:55:47', '2021-09-20 07:29:16'),
(3424, 'es', 'seller_wise_flat_shipping_cost', 'Costo de envío plano sabio del vendedor', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3425, 'es', 'note', 'Nota', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3426, 'es', 'product_wise_shipping_cost_calulation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'Cálculo inteligente del costo de envío del producto: el costo de envío se calcula sumando el costo de envío de cada producto', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3427, 'es', 'flat_rate_shipping_cost_calulation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'Cálculo del costo de envío de tarifa plana: la cantidad de productos que compra un cliente, no importa. El costo de envío es fijo', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3428, 'es', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_a_customer_purchase_2_product_from_two_seller_shipping_cost_is_calculate_by_addition_of_each_seller_flat_shipping_cost', 'Cálculo del costo de envío fijo para el vendedor: Tarifa fija para cada vendedor. Si un cliente compra 2 productos de dos vendedores, el costo de envío se calcula sumando el costo de envío fijo de cada vendedor', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3429, 'es', 'flat_rate_cost', 'Costo de tarifa plana', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3430, 'es', 'shipping_cost_for_admin_products', 'Costo de envío para productos de administración', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3431, 'es', 'countries', 'Países', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3432, 'es', 'showhide', 'Mostrar ocultar', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3433, 'es', 'country_status_updated_successfully', 'El estado del país se actualizó correctamente', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3434, 'es', 'all_subcategories', 'Todas las subcategorías', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3435, 'es', 'add_new_subcategory', 'Agregar nueva subcategoría', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3436, 'es', 'subcategories', 'Subcategorías', '2021-02-09 06:55:47', '2021-09-20 07:29:17'),
(3437, 'es', 'sub_category_information', 'Información de la subcategoría', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3438, 'es', 'slug', 'Babosa', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3439, 'es', 'all_sub_subcategories', 'Todas las subcategorías', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3440, 'es', 'add_new_sub_subcategory', 'Agregar nueva subcategoría', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3441, 'es', 'subsubcategories', 'Sub-subcategorías', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3442, 'es', 'make_this_default', 'Hacer esto predeterminado', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3443, 'es', 'shops', 'Tiendas', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3444, 'es', 'women_clothing__fashion', 'Ropa de mujer y moda', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3445, 'es', 'cellphones__tabs', 'Teléfonos móviles y pestañas', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3446, 'es', 'welcome_to', 'Bienvenido a', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3447, 'es', 'create_a_new_account', 'Crea una cuenta nueva', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3448, 'es', 'full_name', 'Nombre completo', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3449, 'es', 'password', 'contraseña', '2021-02-09 06:56:37', '2021-02-09 06:56:37'),
(3450, 'es', 'confrim_password', 'Confirmar contraseña', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3451, 'es', 'i_agree_with_the', 'Estoy de acuerdo con el', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3452, 'es', 'terms_and_conditions', 'Términos y condiciones', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3453, 'es', 'register', 'Registrarse', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3454, 'es', 'already_have_an_account', 'Ya tienes una cuenta', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3455, 'es', 'sign_up_with', 'Registrarte con', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3456, 'es', 'i_agree_with_the_terms_and_conditions', 'Estoy de acuerdo con los términos y condiciones', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3457, 'es', 'all_role', 'Todo Rol', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3458, 'es', 'add_new_role', 'Agregar nuevo rol', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3459, 'es', 'roles', 'Roles', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3460, 'es', 'add_new_staffs', 'Agregar personal nuevo', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3461, 'es', 'role', 'Papel', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3462, 'es', 'frontend_website_name', 'Nombre del sitio web de la interfaz', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3463, 'es', 'website_name', 'Nombre del Sitio Web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3464, 'es', 'site_motto', 'Lema del sitio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3465, 'es', 'best_ecommerce_website', 'Mejor sitio web de comercio electrónico', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3466, 'es', 'site_icon', 'Icono del sitio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3467, 'es', 'website_favicon_32x32_png', 'Favicon del sitio web. 32x32 .png', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3468, 'es', 'website_base_color', 'Color base del sitio web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3469, 'es', 'hex_color_code', 'Código de color hexagonal', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3470, 'es', 'website_base_hover_color', 'Color de desplazamiento base del sitio web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3471, 'es', 'update', 'Actualizar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3472, 'es', 'global_seo', 'Global Seo', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3473, 'es', 'meta_description', 'Metadescripción', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3474, 'es', 'keywords', 'Palabras clave', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3475, 'es', 'separate_with_coma', 'Separado con coma', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3476, 'es', 'website_pages', 'Páginas del sitio web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3477, 'es', 'all_pages', 'Todas las páginas', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3478, 'es', 'add_new_page', 'Agregar nueva página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3479, 'es', 'url', 'URL', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3480, 'es', 'actions', 'Comportamiento', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3481, 'es', 'edit_page_information', 'Editar información de la página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3482, 'es', 'page_content', 'Contenido de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3483, 'es', 'title', 'Título', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3484, 'es', 'link', 'Enlace', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3485, 'es', 'use_character_number_hypen_only', 'Utilice solo carácter, número, guión', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3486, 'es', 'add_content', 'Agregar contenido', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3487, 'es', 'seo_fields', 'Seo Fields', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3488, 'es', 'update_page', 'Actualizar página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3489, 'es', 'default_language', 'Idioma predeterminado', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3490, 'es', 'add_new_language', 'Agregar nuevo idioma', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3491, 'es', 'rtl', 'RTL', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3492, 'es', 'translation', 'Traducción', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3493, 'es', 'language_information', 'Información del idioma', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3494, 'es', 'save_page', 'Guardar página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3495, 'es', 'home_page_settings', 'Configuración de la página de inicio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3496, 'es', 'home_slider', 'Control deslizante de inicio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3497, 'es', 'photos__links', 'Fotos y enlaces', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3498, 'es', 'add_new', 'Agregar nuevo', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3499, 'es', 'home_categories', 'Categorías de inicio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3500, 'es', 'home_banner_1_max_3', 'Banner de inicio 1 (máximo 3)', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3501, 'es', 'banner__links', 'Banner y enlaces', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3502, 'es', 'home_banner_2_max_3', 'Banner de inicio 2 (máximo 3)', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3503, 'es', 'top_10', 'Top 10', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3504, 'es', 'top_categories_max_10', 'Categorías principales (máximo 10)', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3505, 'es', 'top_brands_max_10', 'Mejores marcas (máximo 10)', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3506, 'es', 'system_name', 'Nombre del sistema', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3507, 'es', 'system_logo__white', 'Logotipo del sistema - Blanco', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3508, 'es', 'choose_files', 'Seleccionar archivos', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3509, 'es', 'will_be_used_in_admin_panel_side_menu', 'Se utilizará en el menú lateral del panel de administración.', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3510, 'es', 'system_logo__black', 'Logotipo del sistema - Negro', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3511, 'es', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'Se utilizará en la barra superior del panel de administración en la página de inicio de sesión del administrador + móvil', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3512, 'es', 'system_timezone', 'Zona horaria del sistema', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3513, 'es', 'admin_login_page_background', 'Fondo de la página de inicio de sesión del administrador', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3514, 'es', 'website_header', 'Encabezado del sitio web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3515, 'es', 'header_setting', 'Configuración de encabezado', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3516, 'es', 'header_logo', 'El logotipo de cabecera', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3517, 'es', 'show_language_switcher', '¿Mostrar selector de idioma?', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3518, 'es', 'show_currency_switcher', '¿Mostrar cambio de moneda?', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3519, 'es', 'enable_stikcy_header', '¿Habilitar encabezado de stikcy?', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3520, 'es', 'website_footer', 'Pie de página del sitio web', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3521, 'es', 'footer_widget', 'Widget de pie de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3522, 'es', 'about_widget', 'Acerca del widget', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3523, 'es', 'footer_logo', 'Logotipo de pie de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3524, 'es', 'about_description', 'Acerca de la descripción', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3525, 'es', 'contact_info_widget', 'Widget de información de contacto', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3526, 'es', 'footer_contact_address', 'Dirección de contacto del pie de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3527, 'es', 'footer_contact_phone', 'Teléfono de contacto de pie de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3528, 'es', 'footer_contact_email', 'Correo electrónico de contacto de pie de página', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3529, 'es', 'link_widget_one', 'Enlace Widget Uno', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3530, 'es', 'links', 'Enlaces', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3531, 'es', 'footer_bottom', 'Pie de página inferior', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3532, 'es', 'copyright_widget_', 'Widget de derechos de autor', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3533, 'es', 'copyright_text', 'Texto de copyright', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3534, 'es', 'social_link_widget_', 'Widget de enlace social', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3535, 'es', 'show_social_links', '¿Mostrar enlaces sociales?', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3536, 'es', 'social_links', 'vínculos sociales', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3537, 'es', 'payment_methods_widget_', 'Widget de métodos de pago', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3538, 'es', 'rtl_status_updated_successfully', 'El estado de RTL se actualizó correctamente', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3539, 'es', 'language_changed_to_', 'Idioma cambiado a', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3540, 'es', 'inhouse_product_sale_report', 'Informe de venta de productos internos', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3541, 'es', 'sort_by_category', 'Ordenar por categoría', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3542, 'es', 'product_wise_stock_report', 'Informe de stock de producto', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3543, 'es', 'currency_changed_to_', 'Moneda cambiada a', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3544, 'es', 'avatar', 'Avatar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3545, 'es', 'copy', 'Copiar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3546, 'es', 'variant', 'Variante', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3547, 'es', 'variant_price', 'Precio Variante', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3548, 'es', 'sku', 'SKU', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3549, 'es', 'key', 'Llave', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3550, 'es', 'value', 'Valor', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3551, 'es', 'copy_translations', 'Copiar traducciones', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3552, 'es', 'all_pickup_points', 'Todos los puntos de recogida', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3553, 'es', 'add_new_pickup_point', 'Agregar nuevo punto de recogida', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3554, 'es', 'manager', 'Gerente', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3555, 'es', 'location', 'Ubicación', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3556, 'es', 'pickup_station_contact', 'Contacto de la estación de recogida', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3557, 'es', 'open', 'Abierto', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3558, 'es', 'pos_activation_for_seller', 'Activación de POS para vendedor', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3559, 'es', 'order_completed_successfully', 'Pedido completado con éxito.', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3560, 'es', 'text_input', 'Entrada de texto', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3561, 'es', 'select', 'Seleccione', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3562, 'es', 'multiple_select', 'Selección múltiple', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3563, 'es', 'radio', 'Radio', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3564, 'es', 'file', 'Archivo', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3565, 'es', 'email_address', 'Dirección de correo electrónico', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3566, 'es', 'verification_info', 'Información de verificación', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3567, 'es', 'approval', 'Aprobación', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3568, 'es', 'due_amount', 'Cantidad debida', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3569, 'es', 'show', 'mostrar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3570, 'es', 'pay_now', 'Pagar ahora', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3571, 'es', 'affiliate_user_verification', 'Verificación de usuario afiliado', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3572, 'es', 'reject', 'Rechazar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3573, 'es', 'accept', 'Aceptar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3574, 'es', 'beauty_health__hair', 'Belleza, salud y cabello', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3575, 'es', 'comparison', 'Comparación', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3576, 'es', 'reset_compare_list', 'Restablecer lista de comparación', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3577, 'es', 'your_comparison_list_is_empty', 'Tu lista de comparación está vacía', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3578, 'es', 'convert_point_to_wallet', 'Convertir punto en billetera', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3579, 'es', 'note_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'Nota: Primero debe activar la opción de billetera antes de usar el complemento de puntos del club.', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3580, 'es', 'create_an_account', 'Crea una cuenta.', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3581, 'es', 'use_email_instead', 'Utilice el correo electrónico en su lugar', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3582, 'es', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'Al registrarse, acepta nuestros términos y condiciones.', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3583, 'es', 'create_account', 'Crear una cuenta', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3584, 'es', 'or_join_with', 'O únete con', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3585, 'es', 'already_have_an_account', '¿Ya tienes una cuenta?', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3586, 'es', 'log_in', 'Iniciar sesión', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3587, 'es', 'computer__accessories', 'Accesorios de computador', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3588, 'es', 'products', 'Producto (s)', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3589, 'es', 'in_your_cart', 'en tu carrito', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3590, 'es', 'in_your_wishlist', 'en tu lista de deseos', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3591, 'es', 'you_ordered', 'usted ordeno', '2021-02-09 06:56:37', '2021-09-20 07:29:17'),
(3592, 'es', 'default_shipping_address', 'Dirección de entrega por defecto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3593, 'es', 'sports__outdoor', 'Deportes y aire libre', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3594, 'es', 'copied', 'Copiado', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3595, 'es', 'copy_the_promote_link', 'Copiar el enlace de promoción', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3596, 'es', 'write_a_review', 'Escribe una reseña', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3597, 'es', 'your_name', 'Tu nombre', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3598, 'es', 'comment', 'Comentario', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3599, 'es', 'your_review', 'Tu reseña', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3600, 'es', 'submit_review', 'Enviar opinión', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3601, 'es', 'claire_willis', 'Claire Willis', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3602, 'es', 'germaine_greene', 'Germaine Greene', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3603, 'es', 'product_file', 'Archivo de producto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3604, 'es', 'choose_file', 'Elija el archivo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3605, 'es', 'type_to_add_a_tag', 'Escribe para agregar una etiqueta', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3606, 'es', 'images', 'Imagenes', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3607, 'es', 'main_images', 'Imágenes principales', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3608, 'es', 'meta_tags', 'Meta etiquetas', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3609, 'es', 'digital_product_has_been_inserted_successfully', 'El producto digital se ha insertado correctamente', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3610, 'es', 'edit_digital_product', 'Editar producto digital', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3611, 'es', 'select_an_option', 'Seleccione una opción', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3612, 'es', 'tax', 'impuesto', '2021-02-09 06:56:38', '2021-02-09 06:56:38'),
(3613, 'es', 'any_question_about_this_product', '¿Alguna pregunta sobre este producto?', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3614, 'es', 'sign_in', 'Registrarse', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3615, 'es', 'login_with_google', 'Iniciar sesión con Google', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3616, 'es', 'login_with_facebook', 'Iniciar sesión con Facebook', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3617, 'es', 'login_with_twitter', 'Iniciar sesión con Twitter', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3618, 'es', 'click_to_show_phone_number', 'Haga clic para mostrar el número de teléfono', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3619, 'es', 'other_ads_of', 'Otros anuncios de', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3620, 'es', 'store_home', 'Tienda del hogar', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3621, 'es', 'top_selling', 'Más vendidos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3622, 'es', 'shop_settings', 'Configuración de la tienda', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3623, 'es', 'visit_shop', 'Visitar tienda', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3624, 'es', 'pickup_points', 'Puntos de recogida', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3625, 'es', 'select_pickup_point', 'Seleccionar punto de recogida', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3626, 'es', 'slider_settings', 'Configuración del control deslizante', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3627, 'es', 'social_media_link', 'Enlace de redes sociales', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3628, 'es', 'facebook', 'Facebook', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3629, 'es', 'twitter', 'Gorjeo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3630, 'es', 'google', 'Google', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3631, 'es', 'new_arrival_products', 'Nuevos productos de llegada', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3632, 'es', 'check_your_order_status', 'Verifique el estado de su pedido', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3633, 'es', 'shipping_method', 'Método de envío', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3634, 'es', 'shipped_by', 'Enviado por', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3635, 'es', 'image', 'Imagen', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3636, 'es', 'sub_sub_category', 'Sub Subcategoría', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3637, 'es', 'inhouse_products', 'Productos internos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3638, 'es', 'forgot_password', '¿Has olvidado tu contraseña?', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3639, 'es', 'enter_your_email_address_to_recover_your_password', 'Ingrese su dirección de correo electrónico para recuperar su contraseña.', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3640, 'es', 'email_or_phone', 'Email o teléfono', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3641, 'es', 'send_password_reset_link', 'Enviar enlace de restablecimiento de contraseña', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3642, 'es', 'back_to_login', 'Atrás para iniciar sesión', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3643, 'es', 'index', 'índice', '2021-02-09 06:56:38', '2021-02-09 06:56:38'),
(3644, 'es', 'download_your_product', 'Descargue su producto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3645, 'es', 'option', 'Opción', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3646, 'es', 'applied_refund_request', 'Solicitud de reembolso aplicada', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3647, 'es', 'item_has_been_renoved_from_wishlist', 'El artículo ha sido renovado de la lista de deseos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3648, 'es', 'bulk_products_upload', 'Carga masiva de productos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3649, 'es', 'upload_csv', 'Subir CSV', '2021-02-09 06:56:38', '2021-09-20 07:29:17');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3650, 'es', 'create_a_ticket', 'Crear un ticket', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3651, 'es', 'tickets', 'Entradas', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3652, 'es', 'ticket_id', 'Identificación de entradas', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3653, 'es', 'sending_date', 'Fecha de envío', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3654, 'es', 'subject', 'Tema', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3655, 'es', 'view_details', 'Ver detalles', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3656, 'es', 'provide_a_detailed_description', 'Proporcione una descripción detallada', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3657, 'es', 'type_your_reply', 'Escriba su respuesta', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3658, 'es', 'send_ticket', 'Enviar ticket', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3659, 'es', 'load_more', 'Carga más', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3660, 'es', 'jewelry__watches', 'joyas y relojes', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3661, 'es', 'filters', 'Filtros', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3662, 'es', 'contact_address', 'Dirección de contacto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3663, 'es', 'contact_phone', 'Teléfono de contacto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3664, 'es', 'contact_email', 'Email de contacto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3665, 'es', 'filter_by', 'Filtrado por', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3666, 'es', 'condition', 'Condición', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3667, 'es', 'all_type', 'Todo tipo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3668, 'es', 'pay_with_wallet', 'Paga con billetera', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3669, 'es', 'select_variation', 'Seleccionar variación', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3670, 'es', 'no_product_added', 'Ningún producto añadido', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3671, 'es', 'status_has_been_updated_successfully', 'El estado se ha actualizado correctamente', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3672, 'es', 'all_seller_packages', 'Todos los paquetes del vendedor', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3673, 'es', 'add_new_package', 'Agregar nuevo paquete', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3674, 'es', 'package_logo', 'Logotipo del paquete', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3675, 'es', 'days', 'dias', '2021-02-09 06:56:38', '2021-02-09 06:56:38'),
(3676, 'es', 'create_new_seller_package', 'Crear nuevo paquete de vendedor', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3677, 'es', 'package_name', 'Nombre del paquete', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3678, 'es', 'duration', 'Duración', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3679, 'es', 'validity_in_number_of_days', 'Validez en número de días', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3680, 'es', 'update_package_information', 'Actualizar la información del paquete', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3681, 'es', 'package_has_been_inserted_successfully', 'El paquete se ha insertado correctamente', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3682, 'es', 'refund_request', 'Petición para reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3683, 'es', 'reason', 'Razón', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3684, 'es', 'label', 'Etiqueta', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3685, 'es', 'select_label', 'Seleccionar etiqueta', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3686, 'es', 'multiple_select_label', 'Etiqueta de selección múltiple', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3687, 'es', 'radio_label', 'Etiqueta de radio', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3688, 'es', 'pickup_point_orders', 'Órdenes de puntos de recogida', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3689, 'es', 'view', 'Ver', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3690, 'es', 'order_', 'Orden #', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3691, 'es', 'order_status', 'Estado del pedido', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3692, 'es', 'total_amount', 'Cantidad total', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3693, 'es', 'total', 'TOTAL', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3694, 'es', 'delivery_status_has_been_updated', 'El estado de entrega se ha actualizado', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3695, 'es', 'payment_status_has_been_updated', 'El estado del pago se ha actualizado', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3696, 'es', 'invoice', 'FACTURA', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3697, 'es', 'set_refund_time', 'Establecer hora de reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3698, 'es', 'set_time_for_sending_refund_request', 'Establecer hora para enviar la solicitud de reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3699, 'es', 'set_refund_sticker', 'Establecer etiqueta de reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3700, 'es', 'sticker', 'Pegatina', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3701, 'es', 'refund_request_all', 'Solicitud de reembolso todo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3702, 'es', 'order_id', 'Solicitar ID', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3703, 'es', 'seller_approval', 'Aprobación del vendedor', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3704, 'es', 'admin_approval', 'Aprobación del administrador', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3705, 'es', 'refund_status', 'Estado de reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3706, 'es', 'no_refund', 'No hay reembolso', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3707, 'es', 'status_updated_successfully', 'Estado actualizado con éxito', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3708, 'es', 'user_search_report', 'Informe de búsqueda de usuarios', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3709, 'es', 'search_by', 'Búsqueda por', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3710, 'es', 'number_searches', 'Búsquedas de números', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3711, 'es', 'sender', 'Remitente', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3712, 'es', 'receiver', 'Receptor', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3713, 'es', 'verification_form_updated_successfully', 'Formulario de verificación actualizado correctamente', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3714, 'es', 'invalid_email_or_password', 'Correo electrónico o contraseña inválidos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3715, 'es', 'all_coupons', 'Todos los cupones', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3716, 'es', 'add_new_coupon', 'Agregar nuevo cupón', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3717, 'es', 'coupon_information', 'Información del cupón', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3718, 'es', 'start_date', 'Fecha de inicio', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3719, 'es', 'end_date', 'Fecha final', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3720, 'es', 'product_base', 'Base de productos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3721, 'es', 'send_newsletter', 'Enviar Newsletter', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3722, 'es', 'mobile_users', 'Usuarios móviles', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3723, 'es', 'sms_subject', 'Asunto del SMS', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3724, 'es', 'sms_content', 'Contenido de SMS', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3725, 'es', 'all_flash_delas', 'Todos Flash Delas', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3726, 'es', 'create_new_flash_dela', 'Crear nuevo Flash Dela', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3727, 'es', 'page_link', 'Enlace de página', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3728, 'es', 'flash_deal_information', 'Información de oferta flash', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3729, 'es', 'background_color', 'Color de fondo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3730, 'es', '0000ff', '# 0000ff', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3731, 'es', 'text_color', 'Color de texto', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3732, 'es', 'white', 'Blanco', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3733, 'es', 'dark', 'Oscuro', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3734, 'es', 'choose_products', 'Elija productos', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3735, 'es', 'discounts', 'Descuentos.', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3736, 'es', 'discount_type', 'Tipo de descuento', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3737, 'es', 'twillo_credential', 'Credencial Twillo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3738, 'es', 'twilio_sid', 'TWILIO SID', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3739, 'es', 'twilio_auth_token', 'TOKEN DE AUTOR DE TWILIO', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3740, 'es', 'twilio_verify_sid', 'TWILIO VERIFICAR SID', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3741, 'es', 'valid_twillo_number', 'NÚMERO VÁLIDO DE TWILLO', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3742, 'es', 'nexmo_credential', 'Credencial Nexmo', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3743, 'es', 'nexmo_key', 'LLAVE NEXMO', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3744, 'es', 'nexmo_secret', 'NEXMO SECRETO', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3745, 'es', 'ssl_wireless_credential', 'Credencial inalámbrica SSL', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3746, 'es', 'ssl_sms_api_token', 'TOKEN API SSL SMS', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3747, 'es', 'ssl_sms_sid', 'SSL SMS SID', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3748, 'es', 'ssl_sms_url', 'URL de SMS SSL', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3749, 'es', 'fast2sms_credential', 'Credencial Fast2SMS', '2021-02-09 06:56:38', '2021-09-20 07:29:17'),
(3750, 'es', 'auth_key', 'CLAVE DE AUTENTICACIÓN', '2021-02-09 06:56:38', '2021-09-20 07:29:18'),
(3751, 'es', 'route', 'RUTA', '2021-02-09 06:56:38', '2021-09-20 07:29:18'),
(3752, 'es', 'promotional_use', 'Uso promocional', '2021-02-09 06:56:38', '2021-09-20 07:29:18'),
(3753, 'es', 'transactional_use', 'Uso transaccional', '2021-02-09 06:56:38', '2021-09-20 07:29:18'),
(3754, 'es', 'sender_id', 'IDENTIFICACIÓN DEL REMITENTE', '2021-02-09 06:56:38', '2021-09-20 07:29:18'),
(3755, 'es', 'nexmo_otp', 'Nexmo OTP', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3756, 'es', 'twillo_otp', 'Twillo OTP', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3757, 'es', 'ssl_wireless_otp', 'SSL OTP inalámbrico', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3758, 'es', 'fast2sms_otp', 'Fast2SMS OTP', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3759, 'es', 'order_placement', 'Colocación de la orden', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3760, 'es', 'delivery_status_changing_time', 'Tiempo de cambio de estado de entrega', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3761, 'es', 'paid_status_changing_time', 'Tiempo de cambio de estado pagado', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3762, 'es', 'send_bulk_sms', 'Enviar SMS masivos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3763, 'es', 'all_subscribers', 'Todos los suscriptores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3764, 'es', 'coupon_information_adding', 'Adición de información del cupón', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3765, 'es', 'coupon_type', 'Tipo de cupón', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3766, 'es', 'for_products', 'Para productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3767, 'es', 'for_total_orders', 'Para pedidos totales', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3768, 'es', 'add_your_product_base_coupon', 'Agregue su cupón base de producto', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3769, 'es', 'coupon_code', 'Código promocional', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3770, 'es', 'sub_category', 'Subcategoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3771, 'es', 'add_more', 'Añadir más', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3772, 'es', 'add_your_cart_base_coupon', 'Agregue el cupón base de su carrito', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3773, 'es', 'minimum_shopping', 'Compras mínimas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3774, 'es', 'maximum_discount_amount', 'Cantidad máxima de descuento', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3775, 'es', 'coupon_information_update', 'Actualización de la información del cupón', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3776, 'es', 'please_configure_smtp_setting_to_work_all_email_sending_funtionality', 'Configure la configuración SMTP para que funcione con todas las funciones de envío de correo electrónico', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3777, 'es', 'configure_now', 'Configurar ahora', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3778, 'es', 'total_published_products', 'Total de productos publicados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3779, 'es', 'total_sellers_products', 'Total de productos de los vendedores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3780, 'es', 'total_admin_products', 'Productos de administración totales', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3781, 'es', 'manage_products', 'Gestionar productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3782, 'es', 'total_product_category', 'Categoría de producto total', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3783, 'es', 'create_category', 'Crear categoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3784, 'es', 'total_product_sub_sub_category', 'Subcategoría total de productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3785, 'es', 'create_sub_sub_category', 'Crear subcategoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3786, 'es', 'total_product_sub_category', 'Subcategoría de producto total', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3787, 'es', 'create_sub_category', 'Crear subcategoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3788, 'es', 'total_product_brand', 'Marca de producto total', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3789, 'es', 'create_brand', 'Crear marca', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3790, 'es', 'total_sellers', 'Vendedores totales', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3791, 'es', 'total_approved_sellers', 'Total de vendedores aprobados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3792, 'es', 'total_pending_sellers', 'Total de vendedores pendientes', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3793, 'es', 'manage_sellers', 'Administrar vendedores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3794, 'es', 'category_wise_product_sale', 'Venta de productos por categoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3795, 'es', 'sale', 'Rebaja', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3796, 'es', 'category_wise_product_stock', 'Stock de productos por categoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3797, 'es', 'category_name', 'nombre de la categoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3798, 'es', 'stock', 'Valores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3799, 'es', 'frontend', 'Interfaz', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3800, 'es', 'home_page', 'Página de inicio', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3801, 'es', 'setting', 'ajuste', '2021-02-09 06:56:39', '2021-02-09 06:56:39'),
(3802, 'es', 'policy_page', 'Página de políticas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3803, 'es', 'general', 'General', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3804, 'es', 'click_here', 'Haga clic aquí', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3805, 'es', 'useful_link', 'Enlace útil', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3806, 'es', 'activation', 'Activación', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3807, 'es', 'smtp', 'SMTP', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3808, 'es', 'payment_method', 'Método de pago', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3809, 'es', 'social_media', 'Social media', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3810, 'es', 'business', 'Negocio', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3811, 'es', 'seller_verification', 'Verificación del vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3812, 'es', 'form_setting', 'configuración de formulario', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3813, 'es', 'language', 'Idioma', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3814, 'es', 'dashboard', 'Tablero', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3815, 'es', 'pos_system', 'Sistema POS', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3816, 'es', 'pos_manager', 'Gerente POS', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3817, 'es', 'pos_configuration', 'Configuración POS', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3818, 'es', 'products', 'Productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3819, 'es', 'add_new_product', 'Agregar nuevo producto', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3820, 'es', 'all_products', 'Todos los productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3821, 'es', 'in_house_products', 'Productos internos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3822, 'es', 'seller_products', 'Productos del vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3823, 'es', 'digital_products', 'Productos digitales', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3824, 'es', 'bulk_import', 'Importación masiva', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3825, 'es', 'bulk_export', 'Exportación masiva', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3826, 'es', 'category', 'Categoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3827, 'es', 'subcategory', 'Subcategoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3828, 'es', 'sub_subcategory', 'Sub-subcategoría', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3829, 'es', 'brand', 'Marca', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3830, 'es', 'attribute', 'Atributo', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3831, 'es', 'product_reviews', 'Reseñas de productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3832, 'es', 'sales', 'Ventas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3833, 'es', 'all_orders', 'Todas las órdenes', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3834, 'es', 'inhouse_orders', 'Pedidos internos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3835, 'es', 'seller_orders', 'Pedidos del vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3836, 'es', 'pickup_point_order', 'Orden de punto de recogida', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3837, 'es', 'refunds', 'Reembolsos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3838, 'es', 'refund_requests', 'Solicitudes de reembolso', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3839, 'es', 'approved_refund', 'Reembolso aprobado', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3840, 'es', 'refund_configuration', 'Configuración de reembolso', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3841, 'es', 'customers', 'Clientes', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3842, 'es', 'customer_list', 'Lista de clientes', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3843, 'es', 'classified_products', 'Productos clasificados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3844, 'es', 'classified_packages', 'Paquetes clasificados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3845, 'es', 'sellers', 'Vendedores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3846, 'es', 'all_seller', 'Todo vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3847, 'es', 'payouts', 'Pagos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3848, 'es', 'payout_requests', 'Solicitudes de pago', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3849, 'es', 'seller_commission', 'Comisión de vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3850, 'es', 'seller_packages', 'Paquetes de vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3851, 'es', 'seller_verification_form', 'Formulario de verificación del vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3852, 'es', 'reports', 'Informes', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3853, 'es', 'in_house_product_sale', 'Venta de productos internos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3854, 'es', 'seller_products_sale', 'Venta de productos del vendedor', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3855, 'es', 'products_stock', 'Stock de productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3856, 'es', 'products_wishlist', 'Lista de deseos de productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3857, 'es', 'user_searches', 'Búsquedas de usuario', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3858, 'es', 'marketing', 'Márketing', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3859, 'es', 'flash_deals', 'Ofertas flash', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3860, 'es', 'newsletters', 'Boletines', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3861, 'es', 'bulk_sms', 'SMS masivos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3862, 'es', 'subscribers', 'Suscriptores', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3863, 'es', 'coupon', 'Cupón', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3864, 'es', 'support', 'Apoyo', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3865, 'es', 'ticket', 'Boleto', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3866, 'es', 'product_queries', 'Consultas sobre productos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3867, 'es', 'website_setup', 'Configuración del sitio web', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3868, 'es', 'header', 'Encabezamiento', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3869, 'es', 'footer', 'Pie de página', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3870, 'es', 'pages', 'Páginas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3871, 'es', 'appearance', 'Apariencia', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3872, 'es', 'setup__configurations', 'Instalación y configuraciones', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3873, 'es', 'general_settings', 'Configuración general', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3874, 'es', 'features_activation', 'Activación de funciones', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3875, 'es', 'languages', 'Idiomas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3876, 'es', 'currency', 'Moneda', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3877, 'es', 'pickup_point', 'Punto de recogida', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3878, 'es', 'smtp_settings', 'Configuración de SMTP', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3879, 'es', 'payment_methods', 'Métodos de pago', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3880, 'es', 'file_system_configuration', 'Configuración del sistema de archivos', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3881, 'es', 'social_media_logins', 'Inicios de sesión en redes sociales', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3882, 'es', 'analytics_tools', 'Herramientas analíticas', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3883, 'es', 'facebook_chat', 'El chat de Facebook', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3884, 'es', 'google_recaptcha', 'Google reCAPTCHA', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3885, 'es', 'shipping_configuration', 'Configuración de envío', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3886, 'es', 'shipping_countries', 'Países de envío', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3887, 'es', 'affiliate_system', 'Sistema de afiliados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3888, 'es', 'affiliate_registration_form', 'Formulario de registro de afiliados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3889, 'es', 'affiliate_configurations', 'Configuraciones de afiliados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3890, 'es', 'affiliate_users', 'Usuarios afiliados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3891, 'es', 'referral_users', 'Usuarios de referencia', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3892, 'es', 'affiliate_withdraw_requests', 'Solicitudes de retiro de afiliados', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3893, 'es', 'offline_payment_system', 'Sistema de pago fuera de línea', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3894, 'es', 'manual_payment_methods', 'Métodos de pago manual', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3895, 'es', 'offline_wallet_recharge', 'Recarga de billetera sin conexión', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3896, 'es', 'offline_customer_package_payments', 'Pagos de paquetes de clientes fuera de línea', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3897, 'es', 'offline_seller_package_payments', 'Pagos del paquete del vendedor fuera de línea', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3898, 'es', 'paytm_payment_gateway', 'Pasarela de pago Paytm', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3899, 'es', 'set_paytm_credentials', 'Establecer credenciales de Paytm', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3900, 'es', 'club_point_system', 'Sistema de puntos de club', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3901, 'es', 'club_point_configurations', 'Configuraciones de puntos de club', '2021-02-09 06:56:39', '2021-09-20 07:29:18'),
(3902, 'es', 'set_product_point', 'Establecer punto de producto', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3903, 'es', 'user_points', 'Puntos de usuario', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3904, 'es', 'otp_system', 'Sistema OTP', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3905, 'es', 'otp_configurations', 'Configuraciones de OTP', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3906, 'es', 'set_otp_credentials', 'Establecer credenciales de OTP', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3907, 'es', 'staffs', 'Personal', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3908, 'es', 'all_staffs', 'Todo el personal', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3909, 'es', 'staff_permissions', 'Permisos del personal', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3910, 'es', 'addon_manager', 'Administrador de complementos', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3911, 'es', 'browse_website', 'Navegar por el sitio web', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3912, 'es', 'pos', 'POS', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3913, 'es', 'notifications', 'Notificaciones', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3914, 'es', 'new_orders', 'Nuevos pedidos', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3915, 'es', 'userimage', 'imagen de usuario', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3916, 'es', 'profile', 'Perfil', '2021-02-09 06:56:40', '2021-09-20 07:29:18'),
(3917, 'es', 'logout', 'Cerrar sesión', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3918, 'es', 'page_not_found', '¡Página no encontrada!', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3919, 'es', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'La página que busca no se ha encontrado en nuestro servidor.', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3920, 'es', 'registration', 'Registro', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3921, 'es', 'i_am_shopping_for', 'Estoy comprando ...', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3922, 'es', 'compare', 'Comparar', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3923, 'es', 'wishlist', 'Lista de deseos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3924, 'es', 'cart', 'Carro', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3925, 'es', 'your_cart_is_empty', 'Tu carrito esta vacío', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3926, 'es', 'categories', 'Categorías', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3927, 'es', 'see_all', 'Ver todo', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3928, 'es', 'seller_policy', 'Política del vendedor', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3929, 'es', 'return_policy', 'Política de devoluciones', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3930, 'es', 'support_policy', 'Política de soporte', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3931, 'es', 'privacy_policy', 'Política de privacidad', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3932, 'es', 'your_email_address', 'Su dirección de correo electrónico', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3933, 'es', 'subscribe', 'Suscribir', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3934, 'es', 'contact_info', 'Datos de contacto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3935, 'es', 'address', 'Habla a', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3936, 'es', 'phone', 'Teléfono', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3937, 'es', 'email', 'Email', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3938, 'es', 'login', 'Iniciar sesión', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3939, 'es', 'my_account', 'Mi cuenta', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3940, 'es', 'order_history', 'Historial de pedidos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3941, 'es', 'my_wishlist', 'mi lista de deseos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3942, 'es', 'track_order', 'Orden de pista', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3943, 'es', 'be_an_affiliate_partner', 'Sea un socio afiliado', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3944, 'es', 'be_a_seller', 'Ser vendedor', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3945, 'es', 'apply_now', 'Aplica ya', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3946, 'es', 'confirmation', 'Confirmación', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3947, 'es', 'delete_confirmation_message', 'Eliminar mensaje de confirmación', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3948, 'es', 'cancel', 'Cancelar', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3949, 'es', 'delete', 'Eliminar', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3950, 'es', 'item_has_been_added_to_compare_list', 'El artículo se ha agregado a la lista de comparación', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3951, 'es', 'please_login_first', 'Por favor ingresa primero', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3952, 'es', 'total_earnings_from', 'Ganancias totales de', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3953, 'es', 'client_subscription', 'Suscripción de cliente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3954, 'es', 'product_category', 'Categoria de producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3955, 'es', 'product_sub_sub_category', 'Subcategoría de producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3956, 'es', 'product_sub_category', 'Subcategoría de producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3957, 'es', 'product_brand', 'Producto de marca', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3958, 'es', 'top_client_packages', 'Paquetes de clientes principales', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3959, 'es', 'top_freelancer_packages', 'Los mejores paquetes para autónomos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3960, 'es', 'number_of_sale', 'Numero de venta', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3961, 'es', 'number_of_stock', 'Número de stock', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3962, 'es', 'top_10_products', 'Los 10 mejores productos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3963, 'es', 'top_12_products', 'Los 12 mejores productos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3964, 'es', 'admin_can_not_be_a_seller', 'El administrador no puede ser vendedor', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3965, 'es', 'filter_by_rating', 'Filtrar por calificación', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3966, 'es', 'published_reviews_updated_successfully', 'Reseñas publicadas actualizadas correctamente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3967, 'es', 'refund_sticker_has_been_updated_successfully', 'La etiqueta de reembolso se ha actualizado correctamente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3968, 'es', 'edit_product', 'Editar producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3969, 'es', 'meta_images', 'Meta imágenes', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3970, 'es', 'update_product', 'Actualizar producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3971, 'es', 'product_has_been_deleted_successfully', 'El producto se ha eliminado correctamente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3972, 'es', 'your_profile_has_been_updated_successfully', '¡Tu perfil ha sido actualizado exitosamente!', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3973, 'es', 'upload_limit_has_been_reached_please_upgrade_your_package', 'Se alcanzó el límite de carga. Actualice su paquete.', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3974, 'es', 'add_your_product', 'Agregue su producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3975, 'es', 'select_a_category', 'Seleccione una categoría', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3976, 'es', 'select_a_brand', 'Seleccione una marca', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3977, 'es', 'product_unit', 'Unidad de producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3978, 'es', 'minimum_qty', 'Cant. Mínima', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3979, 'es', 'product_tag', 'Etiqueta de producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3980, 'es', 'type__hit_enter', 'Escribe y presiona enter', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3981, 'es', 'videos', 'Videos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3982, 'es', 'video_from', 'Video de', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3983, 'es', 'video_url', 'URL del vídeo', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3984, 'es', 'customer_choice', 'Elección del cliente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3985, 'es', 'pdf', 'PDF', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3986, 'es', 'choose_pdf', 'Elija PDF', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3987, 'es', 'select_category', 'selecciona una categoría', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3988, 'es', 'target_category', 'Categoría de destino', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3989, 'es', 'subsubcategory', 'subcategoría', '2021-02-09 06:57:08', '2021-02-09 06:57:08'),
(3990, 'es', 'search_category', 'Categoría de búsqueda', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3991, 'es', 'search_subcategory', 'Subcategoría de búsqueda', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3992, 'es', 'search_subsubcategory', 'Buscar SubSubCategory', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3993, 'es', 'update_your_product', 'Actualiza tu producto', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3994, 'es', 'product_has_been_updated_successfully', 'El producto se ha actualizado correctamente', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3995, 'es', 'add_your_digital_product', 'Agregue su producto digital', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3996, 'es', 'active_ecommerce_cms_update_process', 'Proceso de actualización de CMS de comercio electrónico activo', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3997, 'es', 'codecanyon_purchase_code', 'Código de compra de Codecanyon', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3998, 'es', 'database_name', 'Nombre de la base de datos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(3999, 'es', 'database_username', 'Nombre de usuario de la base de datos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4000, 'es', 'database_password', 'Contraseña de la base de datos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4001, 'es', 'database_hostname', 'Nombre de host de la base de datos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4002, 'es', 'update_now', 'Actualizar ahora', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4003, 'es', 'congratulations', 'Felicidades', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4004, 'es', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'Ha completado con éxito el proceso de actualización. Por favor inicie sesión para continuar', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4005, 'es', 'go_to_home', 'Ir a casa', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4006, 'es', 'login_to_admin_panel', 'Iniciar sesión en el panel de administración', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4007, 'es', 's3_file_system_credentials', 'Credenciales del sistema de archivos S3', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4008, 'es', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4009, 'es', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4010, 'es', 'aws_default_region', 'AWS_DEFAULT_REGION', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4011, 'es', 'aws_bucket', 'AWS_BUCKET', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4012, 'es', 'aws_url', 'AWS_URL', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4013, 'es', 's3_file_system_activation', 'Activación del sistema de archivos S3', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4014, 'es', 'your_phone_number', 'Su número de teléfono', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4015, 'es', 'zip_file', 'Archivo zip', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4016, 'es', 'install', 'Instalar en pc', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4017, 'es', 'this_version_is_not_capable_of_installing_addons_please_update', 'Esta versión no es capaz de instalar complementos, actualice.', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4018, 'es', 'search_in_menu', 'Buscar en el menú', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4019, 'es', 'uploaded_files', 'Archivos subidos', '2021-02-09 06:57:08', '2021-09-20 07:29:18'),
(4020, 'es', 'shipping_cities', 'Ciudades de envío', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4021, 'es', 'system', 'Sistema', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4022, 'es', 'server_status', 'El estado del servidor', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4023, 'es', 'nothing_found', 'Nada Encontrado', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4024, 'es', 'parent_category', 'Categoría principal', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4025, 'es', 'level', 'Nivel', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4026, 'es', 'category_information', 'Información de categoría', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4027, 'es', 'translatable', 'Traducible', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4028, 'es', 'no_parent', 'Sin padre', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4029, 'es', 'physical', 'Físico', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4030, 'es', 'digital', 'Digital', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4031, 'es', '200x200', '200x200', '2021-02-09 06:57:09', '2021-02-09 06:57:09'),
(4032, 'es', '32x32', '32x32', '2021-02-09 06:57:09', '2021-02-09 06:57:09'),
(4033, 'es', 'search_your_files', 'Busca tus archivos', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4034, 'es', 'category_has_been_updated_successfully', 'La categoría se ha actualizado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4035, 'es', 'all_uploaded_files', 'Todos los archivos cargados', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4036, 'es', 'upload_new_file', 'Subir archivo nuevo', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4037, 'es', 'all_files', 'Todos los archivos', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4038, 'es', 'search', 'Buscar', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4039, 'es', 'details_info', 'Información de detalles', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4040, 'es', 'copy_link', 'Copiar link', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4041, 'es', 'are_you_sure_to_delete_this_file', '¿Está seguro de eliminar este archivo?', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4042, 'es', 'file_info', 'Información del archivo', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4043, 'es', 'link_copied_to_clipboard', 'link copiado al portapapeles', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4044, 'es', 'oops_unable_to_copy', 'Vaya, no se puede copiar', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4045, 'es', 'file_deleted_successfully', 'Archivo eliminado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4046, 'es', 'add_new_brand', 'Agregar nueva marca', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4047, 'es', '120x80', '120 x 80', '2021-02-09 06:57:09', '2021-02-09 06:57:09'),
(4048, 'es', 'brand_information', 'Información de marca', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4049, 'es', 'brand_has_been_updated_successfully', 'La marca se ha actualizado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4050, 'es', 'brand_has_been_deleted_successfully', 'La marca se ha eliminado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4051, 'es', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'Esto se usa para la búsqueda. Introduzca las palabras con las que cutomer puede encontrar este producto.', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4052, 'es', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'Estas imágenes son visibles en la galería de la página de detalles del producto. Utilice imágenes de tamaño 600x600.', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4053, 'es', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'Esta imagen es visible en todas las cajas de productos. Utilice una imagen de 300x300 tamaños. Mantenga un espacio en blanco alrededor del objeto principal de su imagen, ya que tuvimos que recortar algunos bordes en diferentes dispositivos para que responda.', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4054, 'es', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'Utilice el enlace adecuado sin un parámetro adicional. No use un enlace de compartir corto / código de iframe incrustado.', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4055, 'es', 'save_product', 'Guardar producto', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4056, 'es', 'product_has_been_inserted_successfully', 'El producto se ha insertado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4057, 'es', 'something_went_wrong', '¡Algo salió mal!', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4058, 'es', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Disculpe las molestias, pero estamos trabajando en ello.', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4059, 'es', 'error_code', 'Código de error', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4060, 'es', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Configure la configuración SMTP para que funcione con todas las funciones de envío de correo electrónico', '2021-02-09 06:57:09', '2021-09-20 07:29:18'),
(4061, 'es', 'order', 'Orden', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4062, 'es', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'Tenemos una altura de banner limitada para mantener la interfaz de usuario. Tuvimos que recortar desde el lado izquierdo y derecho a la vista para diferentes dispositivos para que respondiera. Antes de diseñar un banner, tenga en cuenta estos puntos.', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4063, 'es', 'home_banner_3_max_3', 'Banner de inicio 3 (máximo 3)', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4064, 'es', 'add_new_seller', 'Agregar nuevo vendedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4065, 'es', 'filter_by_approval', 'Filtrar por aprobación', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4066, 'es', 'nonapproved', 'No aprovado', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4067, 'es', 'type_name_or_email__enter', 'Escriba su nombre o correo electrónico e ingrese', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4068, 'es', 'due_to_seller', 'Debido al vendedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4069, 'es', 'log_in_as_this_seller', 'Inicie sesión como este vendedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4070, 'es', 'go_to_payment', 'Ir a Pago', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4071, 'es', 'ban_this_seller', 'Prohibir este vendedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4072, 'es', 'do_you_really_want_to_ban_this_seller', '¿De verdad quieres prohibir a este vendedor?', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4073, 'es', 'proceed', '¡Continuar!', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4074, 'es', 'approved_sellers_updated_successfully', 'Los vendedores aprobados se actualizaron correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4075, 'es', 'seller_has_been_deleted_successfully', 'El vendedor se ha eliminado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4076, 'es', 'seller_information', 'Información del vendedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4077, 'es', 'seller_has_been_inserted_successfully', 'El vendedor se ha insertado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4078, 'es', 'email_already_exists', '¡El Email ya existe!', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4079, 'es', 'verify_your_email_address', 'Verifique su dirección de correo electrónico', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4080, 'es', 'before_proceeding_please_check_your_email_for_a_verification_link', 'Antes de continuar, consulte su correo electrónico para ver si hay un enlace de verificación.', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4081, 'es', 'if_you_did_not_receive_the_email', 'Si no recibió el correo electrónico.', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4082, 'es', 'click_here_to_request_another', 'Haga clic aquí para solicitar otro', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4083, 'es', 'email_verification', 'verificacion de email', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4084, 'es', 'email_verification__', 'Verificacion de email -', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4085, 'es', 'https_activation', 'Activación HTTPS', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4086, 'es', 'maintenance_mode', 'Modo de mantenimiento', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4087, 'es', 'maintenance_mode_activation', 'Activación del modo de mantenimiento', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4088, 'es', 'classified_product_activate', 'Producto clasificado Activar', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4089, 'es', 'classified_product', 'Producto clasificado', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4090, 'es', 'business_related', 'Relacionado al negocio', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4091, 'es', 'vendor_system_activation', 'Activación del sistema de proveedor', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4092, 'es', 'wallet_system_activation', 'Activación del sistema de billetera', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4093, 'es', 'coupon_system_activation', 'Activación del sistema de cupones', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4094, 'es', 'pickup_point_activation', 'Activación del punto de recogida', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4095, 'es', 'conversation_activation', 'Activación de conversación', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4096, 'es', 'guest_checkout_activation', 'Activación de pago como invitado', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4097, 'es', 'categorybased_commission', 'Comisión basada en categorías', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4098, 'es', 'after_activate_this_option_seller_commision_will_be_disabled_and_you_need_to_set_commission_on_each_category_otherwise_admin_will_not_get_any_commision', 'Después de activar esta opción, la comisión del vendedor se desactivará y deberá establecer una comisión en cada categoría; de lo contrario, el administrador no recibirá ninguna comisión.', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4099, 'es', 'set_commisssion_now', 'Establecer comisión ahora', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4100, 'es', 'payment_related', 'Relacionados con el pago', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4101, 'es', 'paypal_payment_activation', 'Activación de pago de Paypal', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4102, 'es', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'Debes configurar Paypal correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4103, 'es', 'stripe_payment_activation', 'Activación de pago de Stripe', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4104, 'es', 'sslcommerz_activation', 'Activación SSlCommerz', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4105, 'es', 'instamojo_payment_activation', 'Activación de pago de Instamojo', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4106, 'es', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'Debe configurar Instamojo Payment correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4107, 'es', 'razor_pay_activation', 'Activación de Razor Pay', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4108, 'es', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'Necesita configurar Razor correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4109, 'es', 'paystack_activation', 'Activación PayStack', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4110, 'es', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'Necesita configurar PayStack correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4111, 'es', 'voguepay_activation', 'Activación de VoguePay', '2021-02-09 06:57:09', '2021-09-20 07:29:19');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(4112, 'es', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'Debes configurar VoguePay correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4113, 'es', 'payhere_activation', 'Activación de Payhere', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4114, 'es', 'ngenius_activation', 'Activación Ngenius', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4115, 'es', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'Necesita configurar Ngenius correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4116, 'es', 'iyzico_activation', 'Activación de Iyzico', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4117, 'es', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'Debe configurar iyzico correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4118, 'es', 'bkash_activation', 'Activación Bkash', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4119, 'es', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'Debes configurar bkash correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4120, 'es', 'nagad_activation', 'Activación de Nagad', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4121, 'es', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'Debes configurar nagad correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4122, 'es', 'cash_payment_activation', 'Activación de pago en efectivo', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4123, 'es', 'social_media_login', 'Inicio de sesión en redes sociales', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4124, 'es', 'facebook_login', 'Iniciar sesión en Facebook', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4125, 'es', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'Debe configurar el cliente de Facebook correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4126, 'es', 'google_login', 'Inicio de sesión de Google', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4127, 'es', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'Debe configurar Google Client correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4128, 'es', 'twitter_login', 'Iniciar sesión en Twitter', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4129, 'es', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'Debe configurar el cliente de Twitter correctamente para habilitar esta función', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4130, 'es', 'shop_logo', 'Logotipo de la tienda', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4131, 'es', 'shop_address', 'Dirección de la tienda', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4132, 'es', 'banner_settings', 'Configuración de banner', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4133, 'es', 'banners', 'Banners', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4134, 'es', 'we_had_to_limit_height_to_maintian_consistancy_in_some_device_both_side_of_the_banner_might_be_cropped_for_height_limitation', 'Tuvimos que limitar la altura a la consistencia de mantenimiento. En algunos dispositivos, ambos lados del banner se pueden recortar para limitar la altura.', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4135, 'es', 'insert_link_with_https_', 'Insertar enlace con https', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4136, 'es', 'your_shop_has_been_updated_successfully', '¡Tu tienda se ha actualizado correctamente!', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4137, 'es', 'search_result_for_', 'Resultado de búsqueda para', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4138, 'es', 'brand_has_been_inserted_successfully', 'La marca se ha insertado correctamente', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4139, 'es', 'about', 'Acerca de', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4140, 'es', 'payout_info', 'Información de pago', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4141, 'es', 'bank_acc_name', 'Nombre de cuenta bancaria', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4142, 'es', 'bank_acc_number', 'Número de cuenta bancaria', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4143, 'es', 'total_products', 'Productos totales', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4144, 'es', 'total_sold_amount', 'Monto total vendido', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4145, 'es', 'wallet_balance', 'Saldo de Wallet', '2021-02-09 06:57:09', '2021-09-20 07:29:19'),
(4146, 'es', 'cookies_agreement', 'Acuerdo de cookies', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4147, 'es', 'cookies_agreement_text', 'Texto del acuerdo de cookies', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4148, 'es', 'show_cookies_agreement', '¿Mostrar acuerdo de cookies?', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4149, 'es', 'custom_script', 'Script personalizado', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4150, 'es', 'header_custom_script__before_head', 'Secuencia de comandos personalizada de encabezado: antes de </head>', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4151, 'es', 'write_script_with_script_tag', 'Escribir script con etiqueta <script>', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4152, 'es', 'footer_custom_script__before_body', 'Secuencia de comandos personalizada de pie de página: antes de </body>', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4153, 'es', 'category_has_been_inserted_successfully', 'La categoría se ha insertado correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4154, 'es', 'all_flash_deals', 'Todas las ofertas flash', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4155, 'es', 'create_new_flash_deal', 'Crear nueva oferta flash', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4156, 'es', 'ffffff', '#FFFFFF', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4157, 'es', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'Esta imagen se muestra como banner de portada en la página de detalles de la oferta flash.', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4158, 'es', 'flash_deal_has_been_inserted_successfully', 'La oferta flash se ha insertado correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4159, 'es', 'flash_deal_status_updated_successfully', 'El estado de la oferta flash se actualizó correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4160, 'es', 'flash_deal_has_been_updated_successfully', 'La oferta flash se ha actualizado correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4161, 'es', 'update_language_info', 'actualizar la información del idioma', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4162, 'es', 'language_has_been_updated_successfully', 'El idioma se ha actualizado correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4163, 'es', 'type_key__enter', 'Escriba la tecla e introduzca', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4164, 'es', 'translations_updated_for_', 'Traducciones actualizadas para', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(4165, 'es', 'language_has_been_inserted_successfully', 'El idioma se ha insertado correctamente', '2021-02-09 06:57:10', '2021-09-20 07:29:19'),
(5395, 'fr', 'all_category', 'Toutes les catégories', '2021-02-09 07:04:02', '2021-09-20 07:29:22'),
(5396, 'fr', 'all', 'Tout', '2021-02-09 07:04:02', '2021-09-20 07:29:22'),
(5397, 'fr', 'flash_sale', 'Vente flash', '2021-02-09 07:04:02', '2021-09-20 07:29:22'),
(5398, 'fr', 'view_more', 'Voir plus', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5399, 'fr', 'add_to_wishlist', 'Ajouter à la liste de souhaits', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5400, 'fr', 'add_to_compare', 'Ajouter pour comparer', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5401, 'fr', 'add_to_cart', 'Ajouter au panier', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5402, 'fr', 'club_point', 'Point Club', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5403, 'fr', 'classified_ads', 'Petites annonces', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5404, 'fr', 'used', 'Utilisé', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5405, 'fr', 'top_10_categories', 'Top 10 des catégories', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5406, 'fr', 'view_all_categories', 'Voir toutes les catégories', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5407, 'fr', 'top_10_brands', 'Top 10 des marques', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5408, 'fr', 'view_all_brands', 'Voir toutes les marques', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5409, 'fr', 'terms__conditions', 'Termes et conditions', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5410, 'fr', 'best_selling', 'Meilleure vente', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5411, 'fr', 'top_20', 'Top 20', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5412, 'fr', 'featured_products', 'Produits populaires', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5413, 'fr', 'best_sellers', 'Meilleurs vendeurs', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5414, 'fr', 'visit_store', 'Visiter le magasin', '2021-02-09 07:04:02', '2021-09-20 07:29:23'),
(5415, 'fr', 'popular_suggestions', 'Suggestions populaires', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5416, 'fr', 'category_suggestions', 'Suggestions de catégories', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5417, 'fr', 'automobile__motorcycle', 'Automobile et moto', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5418, 'fr', 'price_range', 'Échelle des prix', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5419, 'fr', 'filter_by_color', 'Filtrer par couleur', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5420, 'fr', 'home', 'Accueil', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5421, 'fr', 'newest', 'Plus récent', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5422, 'fr', 'oldest', 'Le plus ancien', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5423, 'fr', 'price_low_to_high', 'Prix ​​croissant', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5424, 'fr', 'price_high_to_low', 'Prix ​​décroissant', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5425, 'fr', 'brands', 'Marques', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5426, 'fr', 'all_brands', 'Toutes les marques', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5427, 'fr', 'all_sellers', 'Tous les vendeurs', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5428, 'fr', 'inhouse_product', 'Produit en interne', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5429, 'fr', 'message_seller', 'Message au vendeur', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5430, 'fr', 'price', 'Prix', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5431, 'fr', 'discount_price', 'Prix ​​bas', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5432, 'fr', 'color', 'Couleur', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5433, 'fr', 'quantity', 'Quantité', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5434, 'fr', 'available', 'disponible', '2021-02-09 07:04:03', '2021-02-09 07:04:03'),
(5435, 'fr', 'total_price', 'Prix ​​total', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5436, 'fr', 'out_of_stock', 'En rupture de stock', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5437, 'fr', 'refund', 'Rembourser', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5438, 'fr', 'share', 'Partager', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5439, 'fr', 'sold_by', 'Vendu par', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5440, 'fr', 'customer_reviews', 'Avis des clients', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5441, 'fr', 'top_selling_products', 'Produits les plus vendus', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5442, 'fr', 'description', 'La description', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5443, 'fr', 'video', 'Vidéo', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5444, 'fr', 'reviews', 'Commentaires', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5445, 'fr', 'download', 'Télécharger', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5446, 'fr', 'there_have_been_no_reviews_for_this_product_yet', 'Il n\'y a pas encore d\'avis sur ce produit.', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5447, 'fr', 'related_products', 'Produits connexes', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5448, 'fr', 'any_query_about_this_product', 'Toute question concernant ce produit', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5449, 'fr', 'product_name', 'Nom du produit', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5450, 'fr', 'your_question', 'Ta question', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5451, 'fr', 'send', 'Envoyer', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5452, 'fr', 'use_country_code_before_number', 'Utilisez le code du pays avant le numéro', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5453, 'fr', 'remember_me', 'Souviens-toi de moi', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5454, 'fr', 'dont_have_an_account', 'Vous n\'avez pas de compte?', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5455, 'fr', 'register_now', 'S\'inscrire maintenant', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5456, 'fr', 'or_login_with', 'Ou connectez-vous avec', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5457, 'fr', 'oops', 'Oops..', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5458, 'fr', 'this_item_is_out_of_stock', 'L\'article n\'est plus en stock!', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5459, 'fr', 'back_to_shopping', 'Retour aux achats', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5460, 'fr', 'login_to_your_account', 'Connectez-vous à votre compte.', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5461, 'fr', 'purchase_history', 'Historique d\'achat', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5462, 'fr', 'new', 'Nouveau', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5463, 'fr', 'downloads', 'Téléchargements', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5464, 'fr', 'sent_refund_request', 'Demande de remboursement envoyée', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5465, 'fr', 'product_bulk_upload', 'Téléchargement groupé de produits', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5466, 'fr', 'orders', 'Ordres', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5467, 'fr', 'recieved_refund_request', 'Demande de remboursement reçue', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5468, 'fr', 'shop_setting', 'Cadre de la boutique', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5469, 'fr', 'payment_history', 'historique de paiement', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5470, 'fr', 'money_withdraw', 'Retrait d\'argent', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5471, 'fr', 'conversations', 'Des conversations', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5472, 'fr', 'my_wallet', 'Mon portefeuille', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5473, 'fr', 'earning_points', 'Gagner des points', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5474, 'fr', 'support_ticket', 'Ticket de support', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5475, 'fr', 'manage_profile', 'Gérer le profil', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5476, 'fr', 'sold_amount', 'Montant vendu', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5477, 'fr', 'your_sold_amount_current_month', 'Votre montant vendu (mois en cours)', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5478, 'fr', 'total_sold', 'Total vendu', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5479, 'fr', 'last_month_sold', 'Vendu le mois dernier', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5480, 'fr', 'total_sale', 'Vente totale', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5481, 'fr', 'total_earnings', 'Total des gains', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5482, 'fr', 'successful_orders', 'Commandes réussies', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5483, 'fr', 'total_orders', 'Total des commandes', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5484, 'fr', 'pending_orders', 'Les ordres en attente', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5485, 'fr', 'cancelled_orders', 'Commandes annulées', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5486, 'fr', 'product', 'Produit', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5487, 'fr', 'purchased_package', 'Paquet acheté', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5488, 'fr', 'package_not_found', 'Paquet introuvable', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5489, 'fr', 'upgrade_package', 'Package de mise à niveau', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5490, 'fr', 'shop', 'Boutique', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5491, 'fr', 'manage__organize_your_shop', 'Gérez et organisez votre boutique', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5492, 'fr', 'go_to_setting', 'Aller au réglage', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5493, 'fr', 'payment', 'Paiement', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5494, 'fr', 'configure_your_payment_method', 'Configurez votre mode de paiement', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5495, 'fr', 'my_panel', 'Mon panneau', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5496, 'fr', 'item_has_been_added_to_wishlist', 'L\'article a été ajouté à la liste de souhaits', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5497, 'fr', 'my_points', 'Mes points', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5498, 'fr', '_points', 'Points', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5499, 'fr', 'wallet_money', 'Argent portefeuille', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5500, 'fr', 'exchange_rate', 'Taux de change', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5501, 'fr', 'point_earning_history', 'Historique des gains de points', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5502, 'fr', 'date', 'Date', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5503, 'fr', 'points', 'Points', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5504, 'fr', 'converted', 'Converti', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5505, 'fr', 'action', 'action', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5506, 'fr', 'no_history_found', 'Aucune histoire trouvée.', '2021-02-09 07:04:03', '2021-09-20 07:29:23'),
(5507, 'fr', 'convert_has_been_done_successfully_check_your_wallets', 'La conversion a été effectuée avec succès Vérifiez vos portefeuilles', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5508, 'fr', 'something_went_wrong', 'Un problème est survenu', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5509, 'fr', 'remaining_uploads', 'Téléchargements restants', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5510, 'fr', 'no_package_found', 'Aucun package trouvé', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5511, 'fr', 'search_product', 'Rechercher un produit', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5512, 'fr', 'name', 'Nom', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5513, 'fr', 'current_qty', 'Qté actuelle', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5514, 'fr', 'base_price', 'Prix ​​de base', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5515, 'fr', 'published', 'Publié', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5516, 'fr', 'featured', 'En vedette', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5517, 'fr', 'options', 'Options', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5518, 'fr', 'edit', 'Éditer', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5519, 'fr', 'duplicate', 'Dupliquer', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5520, 'fr', '1_download_the_skeleton_file_and_fill_it_with_data', '1. Téléchargez le fichier squelette et remplissez-le de données.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5521, 'fr', '2_you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', '2. Vous pouvez télécharger le fichier d\'exemple pour comprendre comment les données doivent être remplies.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5522, 'fr', '3_once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', '3. Une fois que vous avez téléchargé et rempli le fichier squelette, téléchargez-le dans le formulaire ci-dessous et soumettez-le.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5523, 'fr', '4_after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', '4. Après avoir téléchargé les produits, vous devez les modifier et définir des images et des choix de produits.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5524, 'fr', 'download_csv', 'Télécharger CSV', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5525, 'fr', '1_categorysub_categorysub_sub_category_and_brand_should_be_in_numerical_ids', '1. La catégorie, la sous-catégorie, la sous-sous-catégorie et la marque doivent figurer dans des identifiants numériques.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5526, 'fr', '2_you_can_download_the_pdf_to_get_categorysub_categorysub_sub_category_and_brand_id', '2. Vous pouvez télécharger le pdf pour obtenir la catégorie, la sous-catégorie, la sous-catégorie et l\'identifiant de la marque.', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5527, 'fr', 'download_category', 'Télécharger la catégorie', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5528, 'fr', 'download_sub_category', 'Télécharger la sous-catégorie', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5529, 'fr', 'download_sub_sub_category', 'Télécharger la sous-catégorie', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5530, 'fr', 'download_brand', 'Télécharger la marque', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5531, 'fr', 'upload_csv_file', 'Télécharger un fichier CSV', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5532, 'fr', 'csv', 'CSV', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5533, 'fr', 'choose_csv_file', 'Choisissez un fichier CSV', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5534, 'fr', 'upload', 'Télécharger', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5535, 'fr', 'add_new_digital_product', 'Ajouter un nouveau produit numérique', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5536, 'fr', 'available_status', 'Statut disponible', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5537, 'fr', 'admin_status', 'Statut administrateur', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5538, 'fr', 'pending_balance', 'Solde en attente', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5539, 'fr', 'send_withdraw_request', 'Envoyer une demande de retrait', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5540, 'fr', 'withdraw_request_history', 'Historique des demandes de retrait', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5541, 'fr', 'amount', 'Montant', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5542, 'fr', 'status', 'Statut', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5543, 'fr', 'message', 'Message', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5544, 'fr', 'send_a_withdraw_request', 'Envoyer une demande de retrait', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5545, 'fr', 'basic_info', 'Informations de base', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5546, 'fr', 'your_phone', 'Ton téléphone', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5547, 'fr', 'photo', 'Photo', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5548, 'fr', 'browse', 'Feuilleter', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5549, 'fr', 'your_password', 'Votre mot de passe', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5550, 'fr', 'new_password', 'nouveau mot de passe', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5551, 'fr', 'confirm_password', 'Confirmez le mot de passe', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5552, 'fr', 'add_new_address', 'Ajouter une nouvelle adresse', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5553, 'fr', 'payment_setting', 'Paramètre de paiement', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5554, 'fr', 'cash_payment', 'Paiement en espèces', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5555, 'fr', 'bank_payment', 'Paiement bancaire', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5556, 'fr', 'bank_name', 'Nom de banque', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5557, 'fr', 'bank_account_name', 'Nom du compte bancaire', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5558, 'fr', 'bank_account_number', 'Numéro de compte bancaire', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5559, 'fr', 'bank_routing_number', 'Numéro d\'acheminement bancaire', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5560, 'fr', 'update_profile', 'Mettre à jour le profil', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5561, 'fr', 'change_your_email', 'Changez votre email', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5562, 'fr', 'your_email', 'Votre e-mail', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5563, 'fr', 'sending_email', 'Envoi d\'un e-mail ...', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5564, 'fr', 'verify', 'Vérifier', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5565, 'fr', 'update_email', 'Mettre à jour l\'e-mail', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5566, 'fr', 'new_address', 'Nouvelle adresse', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5567, 'fr', 'your_address', 'Votre adresse', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5568, 'fr', 'country', 'Pays', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5569, 'fr', 'select_your_country', 'Sélectionnez votre pays', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5570, 'fr', 'city', 'Ville', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5571, 'fr', 'your_city', 'Ta ville', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5572, 'fr', 'your_postal_code', 'Votre code postal', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5573, 'fr', '880', '+880', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5574, 'fr', 'save', 'sauver', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5575, 'fr', 'received_refund_request', 'Demande de remboursement reçue', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5576, 'fr', 'delete_confirmation', 'Confirmation de suppression', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5577, 'fr', 'are_you_sure_to_delete_this', 'Êtes-vous sûr de vouloir le supprimer?', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5578, 'fr', 'premium_packages_for_sellers', 'Forfaits premium pour les vendeurs', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5579, 'fr', 'product_upload', 'Téléchargement de produit', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5580, 'fr', 'digital_product_upload', 'Téléchargement de produit numérique', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5581, 'fr', 'purchase_package', 'Acheter un package', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5582, 'fr', 'select_payment_type', 'Sélectionnez le type de paiement', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5583, 'fr', 'payment_type', 'Type de paiement', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5584, 'fr', 'select_one', 'Sélectionnez-en un', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5585, 'fr', 'online_payment', 'Paiement en ligne', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5586, 'fr', 'offline_payment', 'Paiement hors ligne', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5587, 'fr', 'purchase_your_package', 'Achetez votre forfait', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5588, 'fr', 'paypal', 'Pay Pal', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5589, 'fr', 'stripe', 'Bande', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5590, 'fr', 'sslcommerz', 'sslcommerz', '2021-02-09 07:04:04', '2021-02-09 07:04:04'),
(5591, 'fr', 'confirm', 'Confirmer', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5592, 'fr', 'offline_package_payment', 'Paiement hors ligne du forfait', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5593, 'fr', 'transaction_id', 'identifiant de transaction', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5594, 'fr', 'choose_image', 'Choisissez une image', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5595, 'fr', 'code', 'Code', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5596, 'fr', 'delivery_status', 'Statut de livraison', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5597, 'fr', 'payment_status', 'Statut de paiement', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5598, 'fr', 'paid', 'Payé', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5599, 'fr', 'order_details', 'détails de la commande', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5600, 'fr', 'download_invoice', 'Télécharger la facture', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5601, 'fr', 'unpaid', 'Non payé', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5602, 'fr', 'order_placed', 'Commande passée', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5603, 'fr', 'confirmed', 'Confirmé', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5604, 'fr', 'on_delivery', 'À la livraison', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5605, 'fr', 'delivered', 'Livré', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5606, 'fr', 'order_summary', 'Récapitulatif de la commande', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5607, 'fr', 'order_code', 'Code de commande', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5608, 'fr', 'customer', 'Client', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5609, 'fr', 'total_order_amount', 'Montant total de la commande', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5610, 'fr', 'shipping_metdod', 'Expédition metdod', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5611, 'fr', 'flat_shipping_rate', 'Tarif d\'expédition fixe', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5612, 'fr', 'payment_metdod', 'Paiement metdod', '2021-02-09 07:04:04', '2021-09-20 07:29:23'),
(5613, 'fr', 'variation', 'Variation', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5614, 'fr', 'delivery_type', 'type de livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5615, 'fr', 'home_delivery', 'Livraison à domicile', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5616, 'fr', 'order_ammount', 'Montant de la commande', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5617, 'fr', 'subtotal', 'Total', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5618, 'fr', 'shipping', 'livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5619, 'fr', 'coupon_discount', 'Remise de coupon', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5620, 'fr', 'na', 'N / A', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5621, 'fr', 'in_stock', 'En stock', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5622, 'fr', 'buy_now', 'Acheter maintenant', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5623, 'fr', 'item_added_to_your_cart', 'Article ajouté à votre panier!', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5624, 'fr', 'proceed_to_checkout', 'Passer à la caisse', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5625, 'fr', 'cart_items', 'Articles du panier', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5626, 'fr', '1_my_cart', '1. Mon panier', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5627, 'fr', 'view_cart', 'Voir le panier', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5628, 'fr', '2_shipping_info', '2. Informations d\'expédition', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5629, 'fr', 'checkout', 'Check-out', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5630, 'fr', '3_delivery_info', '3. Informations de livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5631, 'fr', '4_payment', '4. Paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5632, 'fr', '5_confirmation', '5. Confirmation', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5633, 'fr', 'remove', 'Retirer', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5634, 'fr', 'return_to_shop', 'Retour à la boutique', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5635, 'fr', 'continue_to_shipping', 'Continuer vers l\'expédition', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5636, 'fr', 'or', 'Ou', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5637, 'fr', 'guest_checkout', 'Vérification des invités', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5638, 'fr', 'continue_to_delivery_info', 'Continuer vers les informations de livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5639, 'fr', 'postal_code', 'code postal', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5640, 'fr', 'choose_delivery_type', 'Choisissez le type de livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5641, 'fr', 'local_pickup', 'Collecte locale', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5642, 'fr', 'select_your_nearest_pickup_point', 'Sélectionnez votre point de ramassage le plus proche', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5643, 'fr', 'continue_to_payment', 'Continuer au paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5644, 'fr', 'select_a_payment_option', 'Sélectionnez une option de paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5645, 'fr', 'razorpay', 'Razorpay', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5646, 'fr', 'paystack', 'Paystack', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5647, 'fr', 'voguepay', 'VoguePay', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5648, 'fr', 'payhere', 'Payez ici', '2021-02-09 07:04:05', '2021-02-09 07:04:05'),
(5649, 'fr', 'ngenius', 'ngenius', '2021-02-09 07:04:05', '2021-02-09 07:04:05'),
(5650, 'fr', 'paytm', 'Paytm', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5651, 'fr', 'cash_on_delivery', 'Paiement à la livraison', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5652, 'fr', 'your_wallet_balance_', 'Votre solde de portefeuille:', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5653, 'fr', 'insufficient_balance', 'Solde insuffisant', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5654, 'fr', 'i_agree_to_the', 'je suis d\'accord avec le', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5655, 'fr', 'complete_order', 'Complétez la commande', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5656, 'fr', 'summary', 'Sommaire', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5657, 'fr', 'items', 'Articles', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5658, 'fr', 'total_club_point', 'Total de points Club', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5659, 'fr', 'total_shipping', 'Expédition totale', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5660, 'fr', 'have_coupon_code_enter_here', 'Vous avez un code promo? Entrer ici', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5661, 'fr', 'apply', 'Appliquer', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5662, 'fr', 'you_need_to_agree_with_our_policies', 'Vous devez accepter nos politiques', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5663, 'fr', 'forgot_password', 'Mot de passe oublié', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5664, 'fr', 'seo_setting', 'Paramètre SEO', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5665, 'fr', 'system_update', 'Mise à jour du système', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5666, 'fr', 'add_new_payment_method', 'Ajouter un nouveau mode de paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5667, 'fr', 'manual_payment_method', 'Mode de paiement manuel', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5668, 'fr', 'heading', 'Titre', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5669, 'fr', 'logo', 'Logo', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5670, 'fr', 'manual_payment_information', 'Informations de paiement manuel', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5671, 'fr', 'type', 'Type', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5672, 'fr', 'custom_payment', 'Paiement personnalisé', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5673, 'fr', 'check_payment', 'Paiement par chèque', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5674, 'fr', 'checkout_thumbnail', 'Vignette de paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5675, 'fr', 'payment_instruction', 'Instruction de paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5676, 'fr', 'bank_information', 'Information bancaire', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5677, 'fr', 'select_file', 'Choisir le dossier', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5678, 'fr', 'upload_new', 'Télécharger nouveau', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5679, 'fr', 'sort_by_newest', 'Trier par plus récent', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5680, 'fr', 'sort_by_oldest', 'Trier par plus ancien', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5681, 'fr', 'sort_by_smallest', 'Trier par plus petit', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5682, 'fr', 'sort_by_largest', 'Trier par plus grand', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5683, 'fr', 'selected_only', 'Sélectionné seulement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5684, 'fr', 'no_files_found', 'Aucun fichier trouvé', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5685, 'fr', '0_file_selected', '0 Fichier sélectionné', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5686, 'fr', 'clear', 'Clair', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5687, 'fr', 'prev', 'Précédente', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5688, 'fr', 'next', 'Suivant', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5689, 'fr', 'add_files', 'Ajouter des fichiers', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5690, 'fr', 'method_has_been_inserted_successfully', 'La méthode a été insérée avec succès', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5691, 'fr', 'order_date', 'Date de commande', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5692, 'fr', 'bill_to', 'facturer', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5693, 'fr', 'sub_total', 'Sous-total', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5694, 'fr', 'total_tax', 'Taxe total', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5695, 'fr', 'grand_total', 'Total', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5696, 'fr', 'your_order_has_been_placed_successfully_please_submit_payment_information_from_purchase_history', 'Votre commande a été passée avec succès. Veuillez soumettre les informations de paiement à partir de l\'historique des achats', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5697, 'fr', 'thank_you_for_your_order', 'Nous vous remercions de votre commande!', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5698, 'fr', 'order_code', 'Code de commande:', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5699, 'fr', 'a_copy_or_your_order_summary_has_been_sent_to', 'Une copie ou le récapitulatif de votre commande a été envoyé à', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5700, 'fr', 'make_payment', 'Effectuer le paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5701, 'fr', 'payment_screenshot', 'Capture d\'écran du paiement', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5702, 'fr', 'paypal_credential', 'Identifiant Paypal', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5703, 'fr', 'paypal_client_id', 'Identifiant client Paypal', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5704, 'fr', 'paypal_client_secret', 'Secret du client Paypal', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5705, 'fr', 'paypal_sandbox_mode', 'Mode bac à sable Paypal', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5706, 'fr', 'sslcommerz_credential', 'Identifiant Sslcommerz', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5707, 'fr', 'sslcz_store_id', 'Identifiant de magasin Sslcz', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5708, 'fr', 'sslcz_store_password', 'Mot de passe du magasin SSLCZ', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5709, 'fr', 'sslcommerz_sandbox_mode', 'Mode bac à sable Sslcommerz', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5710, 'fr', 'stripe_credential', 'Identifiant Stripe', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5711, 'fr', 'stripe_key', 'CLÉ DE RAYURE', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5712, 'fr', 'stripe_secret', 'STRIPE SECRET', '2021-02-09 07:04:05', '2021-09-20 07:29:23'),
(5713, 'fr', 'razorpay_credential', 'Informations d\'identification RazorPay', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5714, 'fr', 'razor_key', 'CLÉ DE RASOIR', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5715, 'fr', 'razor_secret', 'SECRET DE RASOIR', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5716, 'fr', 'instamojo_credential', 'Identifiant Instamojo', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5717, 'fr', 'api_key', 'CLÉ API', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5718, 'fr', 'im_api_key', 'CLÉ API IM', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5719, 'fr', 'auth_token', 'JETON AUTH', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5720, 'fr', 'im_auth_token', 'JETON IM AUTH', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5721, 'fr', 'instamojo_sandbox_mode', 'Mode bac à sable Instamojo', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5722, 'fr', 'paystack_credential', 'Identifiant PayStack', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5723, 'fr', 'public_key', 'CLÉ PUBLIQUE', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5724, 'fr', 'secret_key', 'CLEF SECRÈTE', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5725, 'fr', 'merchant_email', 'COURRIEL DU MARCHAND', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5726, 'fr', 'voguepay_credential', 'Identifiant VoguePay', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5727, 'fr', 'merchant_id', 'ID MARCHAND', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5728, 'fr', 'sandbox_mode', 'Mode bac à sable', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5729, 'fr', 'payhere_credential', 'Identifiant Payhere', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5730, 'fr', 'payhere_merchant_id', 'ID MARCHAND PAYHERE', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5731, 'fr', 'payhere_secret', 'PAYHERE SECRET', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5732, 'fr', 'payhere_currency', 'MONNAIE PAYHERE', '2021-02-09 07:04:06', '2021-09-20 07:29:23'),
(5733, 'fr', 'payhere_sandbox_mode', 'Mode bac à sable Payhere', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5734, 'fr', 'ngenius_credential', 'Identifiant Ngenius', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5735, 'fr', 'ngenius_outlet_id', 'ID DE SORTIE NGENIUS', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5736, 'fr', 'ngenius_api_key', 'CLÉ D\'API NGENIUS', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5737, 'fr', 'ngenius_currency', 'MONNAIE NGENIUS', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5738, 'fr', 'mpesa_credential', 'Diplôme Mpesa', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5739, 'fr', 'mpesa_consumer_key', 'CLÉ DE CONSOMMATION MPESA', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5740, 'fr', 'mpesa_consumer_key', 'MPESA_CONSUMER_KEY', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5741, 'fr', 'mpesa_consumer_secret', 'SECRET DU CONSOMMATEUR MPESA', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5742, 'fr', 'mpesa_consumer_secret', 'MPESA_CONSUMER_SECRET', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5743, 'fr', 'mpesa_short_code', 'CODE ABRÉGÉ MPESA', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5744, 'fr', 'mpesa_short_code', 'MPESA_SHORT_CODE', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5745, 'fr', 'mpesa_sandbox_activation', 'ACTIVATION DE LA SANDBOX MPESA', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5746, 'fr', 'flutterwave_credential', 'Identifiant Flutterwave', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5747, 'fr', 'rave_public_key', 'RAVE_PUBLIC_KEY', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5748, 'fr', 'rave_secret_key', 'RAVE_SECRET_KEY', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5749, 'fr', 'rave_title', 'RAVE_TITLE', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5750, 'fr', 'stagin_activation', 'ACTIVATION DU STAGIN', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5751, 'fr', 'all_product', 'Tous les produits', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5752, 'fr', 'sort_by', 'Trier par', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5753, 'fr', 'rating_high__low', 'Note (élevée> faible)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5754, 'fr', 'rating_low__high', 'Note (faible> élevée)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5755, 'fr', 'num_of_sale_high__low', 'Nombre de ventes (haut> bas)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5756, 'fr', 'num_of_sale_low__high', 'Nombre de ventes (faible> élevé)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5757, 'fr', 'base_price_high__low', 'Prix ​​de base (haut> bas)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5758, 'fr', 'base_price_low__high', 'Prix ​​de base (bas> haut)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5759, 'fr', 'type__enter', 'Tapez et entrez', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5760, 'fr', 'added_by', 'Ajouté par', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5761, 'fr', 'num_of_sale', 'Nombre de vente', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5762, 'fr', 'total_stock', 'Stock total', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5763, 'fr', 'todays_deal', 'Offre d\'aujourd\'hui', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5764, 'fr', 'rating', 'Évaluation', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5765, 'fr', 'times', 'fois', '2021-02-09 07:04:06', '2021-02-09 07:04:06'),
(5766, 'fr', 'add_nerw_product', 'Ajouter un produit Nerw', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5767, 'fr', 'product_information', 'Information produit', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5768, 'fr', 'unit', 'Unité', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5769, 'fr', 'unit_eg_kg_pc_etc', 'Unité (par exemple KG, Pc, etc.)', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5770, 'fr', 'minimum_qty', 'Qté minimum', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5771, 'fr', 'tags', 'Mots clés', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5772, 'fr', 'type_and_hit_enter_to_add_a_tag', 'Tapez et appuyez sur Entrée pour ajouter une balise', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5773, 'fr', 'barcode', 'code à barre', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5774, 'fr', 'refundable', 'Remboursable', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5775, 'fr', 'product_images', 'Images du produit', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5776, 'fr', 'gallery_images', 'Images de la galerie', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5777, 'fr', 'todays_deal_updated_successfully', 'L\'offre du jour a bien été mise à jour', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5778, 'fr', 'published_products_updated_successfully', 'Produits publiés mis à jour avec succès', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5779, 'fr', 'thumbnail_image', 'Image miniature', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5780, 'fr', 'featured_products_updated_successfully', 'Produits en vedette mis à jour avec succès', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5781, 'fr', 'product_videos', 'Vidéos produits', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5782, 'fr', 'video_provider', 'Fournisseur vidéo', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5783, 'fr', 'youtube', 'Youtube', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5784, 'fr', 'dailymotion', 'Dailymotion', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5785, 'fr', 'vimeo', 'Vimeo', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5786, 'fr', 'video_link', 'Lien vidéo', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5787, 'fr', 'product_variation', 'Variation de produit', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5788, 'fr', 'colors', 'Couleurs', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5789, 'fr', 'attributes', 'Les attributs', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5790, 'fr', 'choose_attributes', 'Choisissez les attributs', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5791, 'fr', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'Choisissez les attributs de ce produit, puis saisissez les valeurs de chaque attribut', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5792, 'fr', 'product_price__stock', 'Prix ​​du produit + stock', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5793, 'fr', 'unit_price', 'Prix ​​unitaire', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5794, 'fr', 'purchase_price', 'Prix ​​d\'achat', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5795, 'fr', 'flat', 'Plat', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5796, 'fr', 'percent', 'Pour cent', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5797, 'fr', 'discount', 'Remise', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5798, 'fr', 'product_description', 'Description du produit', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5799, 'fr', 'product_shipping_cost', 'Frais d\'expédition du produit', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5800, 'fr', 'free_shipping', 'Livraison gratuite', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5801, 'fr', 'flat_rate', 'Forfait', '2021-02-09 07:04:06', '2021-09-20 07:29:24'),
(5802, 'fr', 'shipping_cost', 'Frais de port', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5803, 'fr', 'pdf_specification', 'Spécification PDF', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5804, 'fr', 'seo_meta_tags', 'Balises Meta SEO', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5805, 'fr', 'meta_title', 'Meta Title', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5806, 'fr', 'meta_image', 'Meta Image', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5807, 'fr', 'choice_title', 'Titre de choix', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5808, 'fr', 'enter_choice_values', 'Entrez les valeurs de choix', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5809, 'fr', 'all_categories', 'Toutes catégories', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5810, 'fr', 'add_new_category', 'Ajouter une nouvelle catégorie', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5811, 'fr', 'type_name__enter', 'Tapez le nom et entrez', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5812, 'fr', 'banner', 'Bannière', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5813, 'fr', 'commission', 'Commission', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5814, 'fr', 'icon', 'icône', '2021-02-09 07:04:07', '2021-02-09 07:04:07'),
(5815, 'fr', 'featured_categories_updated_successfully', 'Catégories en vedette mises à jour avec succès', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5816, 'fr', 'hot', 'Chaud', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5817, 'fr', 'filter_by_payment_status', 'Filtrer par statut de paiement', '2021-02-09 07:04:07', '2021-09-20 07:29:24');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(5818, 'fr', 'unpaid', 'Non payé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5819, 'fr', 'filter_by_deliver_status', 'Filtrer par statut de livraison', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5820, 'fr', 'pending', 'En attente', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5821, 'fr', 'type_order_code__hit_enter', 'Tapez le code de commande et appuyez sur Entrée', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5822, 'fr', 'num_of_products', 'Num. de produits', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5823, 'fr', 'walk_in_customer', 'Marcher dans le client', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5824, 'fr', 'qty', 'QTÉ', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5825, 'fr', 'without_shipping_charge', 'Sans frais d\'expédition', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5826, 'fr', 'with_shipping_charge', 'Avec frais d\'expédition', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5827, 'fr', 'pay_with_cash', 'Payer en espèces', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5828, 'fr', 'shipping_address', 'Adresse de livraison', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5829, 'fr', 'close', 'proche', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5830, 'fr', 'select_country', 'Choisissez le pays', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5831, 'fr', 'order_confirmation', 'Confirmation de commande', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5832, 'fr', 'are_you_sure_to_confirm_this_order', 'Êtes-vous sûr de confirmer cette commande?', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5833, 'fr', 'comfirm_order', 'Commande de confirmation', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5834, 'fr', 'personal_info', 'Informations personnelles', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5835, 'fr', 'repeat_password', 'Répéter le mot de passe', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5836, 'fr', 'shop_name', 'Nom de la boutique', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5837, 'fr', 'register_your_shop', 'Enregistrez votre boutique', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5838, 'fr', 'affiliate_informations', 'Informations sur les affiliés', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5839, 'fr', 'affiliate', 'Affilier', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5840, 'fr', 'user_info', 'informations utilisateur', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5841, 'fr', 'installed_addon', 'Addon installé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5842, 'fr', 'available_addon', 'Addon disponible', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5843, 'fr', 'install_new_addon', 'Installer un nouvel addon', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5844, 'fr', 'version', 'Version', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5845, 'fr', 'activated', 'Activé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5846, 'fr', 'deactivated', 'Désactivé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5847, 'fr', 'activate_otp', 'Activer OTP', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5848, 'fr', 'otp_will_be_used_for', 'OTP sera utilisé pour', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5849, 'fr', 'settings_updated_successfully', 'Paramètres mis à jour avec succès', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5850, 'fr', 'product_owner', 'Propriétaire du produit', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5851, 'fr', 'point', 'Point', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5852, 'fr', 'set_point_for_product_within_a_range', 'Point de consigne pour le produit dans une plage', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5853, 'fr', 'set_point_for_multiple_products', 'Point de consigne pour plusieurs produits', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5854, 'fr', 'min_price', 'Prix ​​min', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5855, 'fr', 'max_price', 'Prix ​​maximum', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5856, 'fr', 'set_point_for_all_products', 'Point de consigne pour tous les produits', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5857, 'fr', 'set_point_for_', 'Point de consigne pour', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5858, 'fr', 'convert_status', 'Convertir le statut', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5859, 'fr', 'earned_at', 'Gagné à', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5860, 'fr', 'seller_based_selling_report', 'Rapport de vente basé sur le vendeur', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5861, 'fr', 'sort_by_verificarion_status', 'Trier par statut de vérification', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5862, 'fr', 'approved', 'Approuvé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5863, 'fr', 'non_approved', 'Non approuvé', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5864, 'fr', 'filter', 'Filtre', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5865, 'fr', 'seller_name', 'Nom du Vendeur', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5866, 'fr', 'number_of_product_sale', 'Nombre de produits vendus', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5867, 'fr', 'order_amount', 'Montant de la commande', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5868, 'fr', 'facebook_chat_setting', 'Paramètres de chat Facebook', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5869, 'fr', 'facebook_page_id', 'ID de page Facebook', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5870, 'fr', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Soyez prudent lorsque vous configurez le chat Facebook. Pour une configuration incorrecte, vous n\'obtiendrez pas d\'icône de messagerie sur votre site utilisateur.', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5871, 'fr', 'login_into_your_facebook_page', 'Connectez-vous à votre page facebook', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5872, 'fr', 'find_the_about_option_of_your_facebook_page', 'Trouvez l\'option À propos de votre page Facebook', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5873, 'fr', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'Tout en bas, vous pouvez trouver l \'\\ \"ID de page Facebook \\\"', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5874, 'fr', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Accédez aux paramètres de votre page et recherchez l\'option \\ \"Messagerie avancée \\\"', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5875, 'fr', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Faites défiler cette page et vous obtiendrez \\ \"domaine sur la liste blanche \\\"', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5876, 'fr', 'set_your_website_domain_name', 'Définissez le nom de domaine de votre site Web', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5877, 'fr', 'google_recaptcha_setting', 'Paramètre Google reCAPTCHA', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5878, 'fr', 'site_key', 'Clé du site', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5879, 'fr', 'select_shipping_method', 'Sélectionnez le mode de livraison', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5880, 'fr', 'product_wise_shipping_cost', 'Coût d\'expédition sage du produit', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5881, 'fr', 'flat_rate_shipping_cost', 'Frais d\'expédition forfaitaires', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5882, 'fr', 'seller_wise_flat_shipping_cost', 'Vendeur Wise Flat Shipping Cost', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5883, 'fr', 'note', 'Remarque', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5884, 'fr', 'product_wise_shipping_cost_calulation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'Calcul des frais de port pour le produit: les frais de port sont calculés en ajoutant les frais de port de chaque produit', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5885, 'fr', 'flat_rate_shipping_cost_calulation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'Calcul des frais d\'expédition forfaitaires: le nombre de produits achetés par un client n\'a pas d\'importance. Les frais d\'expédition sont fixes', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5886, 'fr', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_a_customer_purchase_2_product_from_two_seller_shipping_cost_is_calculate_by_addition_of_each_seller_flat_shipping_cost', 'Calcul des frais d\'expédition fixes du vendeur: Taux fixe pour chaque vendeur. Si un client achète 2 produits auprès de deux vendeurs, les frais d\'expédition sont calculés en ajoutant les frais d\'expédition forfaitaires de chaque vendeur', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5887, 'fr', 'flat_rate_cost', 'Coût forfaitaire', '2021-02-09 07:04:07', '2021-09-20 07:29:24'),
(5888, 'fr', 'shipping_cost_for_admin_products', 'Frais d\'expédition pour les produits d\'administration', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5889, 'fr', 'countries', 'Des pays', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5890, 'fr', 'showhide', 'Afficher / Masquer', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5891, 'fr', 'country_status_updated_successfully', 'Statut du pays mis à jour avec succès', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5892, 'fr', 'all_subcategories', 'Toutes les sous-catégories', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5893, 'fr', 'add_new_subcategory', 'Ajouter une nouvelle sous-catégorie', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5894, 'fr', 'subcategories', 'Sous-catégories', '2021-02-09 07:04:08', '2021-09-20 07:29:24'),
(5895, 'fr', 'sub_category_information', 'Informations sur la sous-catégorie', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5896, 'fr', 'slug', 'Limace', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5897, 'fr', 'all_sub_subcategories', 'Toutes les sous-catégories', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5898, 'fr', 'add_new_sub_subcategory', 'Ajouter une nouvelle sous-catégorie', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5899, 'fr', 'subsubcategories', 'Sous-sous-catégories', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5900, 'fr', 'make_this_default', 'Définir cette valeur par défaut', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5901, 'fr', 'shops', 'Magasins', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5902, 'fr', 'women_clothing__fashion', 'Vêtements et mode pour femmes', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5903, 'fr', 'cellphones__tabs', 'Téléphones portables et onglets', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5904, 'fr', 'welcome_to', 'Bienvenue à', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5905, 'fr', 'create_a_new_account', 'Créer un nouveau compte', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5906, 'fr', 'full_name', 'Nom et prénom', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5907, 'fr', 'password', 'mot de passe', '2021-02-09 07:04:50', '2021-02-09 07:04:50'),
(5908, 'fr', 'confrim_password', 'Confirmer le mot de passe', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5909, 'fr', 'i_agree_with_the', 'Je suis d\'accord avec le', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5910, 'fr', 'terms_and_conditions', 'Termes et conditions', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5911, 'fr', 'register', 'S\'inscrire', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5912, 'fr', 'already_have_an_account', 'Vous avez déjà un compte', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5913, 'fr', 'sign_up_with', 'Se connecter avec', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5914, 'fr', 'i_agree_with_the_terms_and_conditions', 'J\'accepte les termes et conditions', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5915, 'fr', 'all_role', 'Tous les rôles', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5916, 'fr', 'add_new_role', 'Ajouter un nouveau rôle', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5917, 'fr', 'roles', 'Les rôles', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5918, 'fr', 'add_new_staffs', 'Ajouter de nouveaux personnels', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5919, 'fr', 'role', 'Rôle', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5920, 'fr', 'frontend_website_name', 'Nom du site Web frontal', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5921, 'fr', 'website_name', 'Nom du site Web', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5922, 'fr', 'site_motto', 'Devise du site', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5923, 'fr', 'best_ecommerce_website', 'Meilleur site de commerce électronique', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5924, 'fr', 'site_icon', 'Icône du site', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5925, 'fr', 'website_favicon_32x32_png', 'Favicon du site Web. 32x32 .png', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5926, 'fr', 'website_base_color', 'Couleur de base du site Web', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5927, 'fr', 'hex_color_code', 'Code couleur hexadécimal', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5928, 'fr', 'website_base_hover_color', 'Couleur de survol de base du site Web', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5929, 'fr', 'update', 'Mise à jour', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5930, 'fr', 'global_seo', 'Global SEO', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5931, 'fr', 'meta_description', 'Meta Description', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5932, 'fr', 'keywords', 'Mots clés', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5933, 'fr', 'separate_with_coma', 'Séparez avec le coma', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5934, 'fr', 'website_pages', 'Pages du site Web', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5935, 'fr', 'all_pages', 'Toutes les pages', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5936, 'fr', 'add_new_page', 'Ajouter une nouvelle page', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5937, 'fr', 'url', 'URL', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5938, 'fr', 'actions', 'Actions', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5939, 'fr', 'edit_page_information', 'Modifier les informations de la page', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5940, 'fr', 'page_content', 'Contenu de la page', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5941, 'fr', 'title', 'Titre', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5942, 'fr', 'link', 'Lien', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5943, 'fr', 'use_character_number_hypen_only', 'Utilisez uniquement des caractères, des nombres et des hypen', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5944, 'fr', 'add_content', 'Ajouter du contenu', '2021-02-09 07:04:50', '2021-09-20 07:29:24'),
(5945, 'fr', 'seo_fields', 'Champs de référencement', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5946, 'fr', 'update_page', 'Mettre à jour la page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5947, 'fr', 'default_language', 'Langage par défaut', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5948, 'fr', 'add_new_language', 'Ajouter une nouvelle langue', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5949, 'fr', 'rtl', 'RTL', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5950, 'fr', 'translation', 'Traduction', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5951, 'fr', 'language_information', 'Informations sur la langue', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5952, 'fr', 'save_page', 'Sauvegarder la page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5953, 'fr', 'home_page_settings', 'Paramètres de la page d\'accueil', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5954, 'fr', 'home_slider', 'Curseur d\'accueil', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5955, 'fr', 'photos__links', 'Photos et liens', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5956, 'fr', 'add_new', 'Ajouter nouveau', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5957, 'fr', 'home_categories', 'Accueil Catégories', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5958, 'fr', 'home_banner_1_max_3', 'Bannière d\'accueil 1 (max 3)', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5959, 'fr', 'banner__links', 'Bannière et liens', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5960, 'fr', 'home_banner_2_max_3', 'Bannière d\'accueil 2 (max 3)', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5961, 'fr', 'top_10', 'Top 10', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5962, 'fr', 'top_categories_max_10', 'Top Catégories (Max 10)', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5963, 'fr', 'top_brands_max_10', 'Top Marques (Max 10)', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5964, 'fr', 'system_name', 'Nom du système', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5965, 'fr', 'system_logo__white', 'Logo du système - Blanc', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5966, 'fr', 'choose_files', 'Choisir des fichiers', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5967, 'fr', 'will_be_used_in_admin_panel_side_menu', 'Sera utilisé dans le menu latéral du panneau d\'administration', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5968, 'fr', 'system_logo__black', 'Logo du système - Noir', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5969, 'fr', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'Sera utilisé dans la barre supérieure du panneau d\'administration de la page de connexion mobile + administrateur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5970, 'fr', 'system_timezone', 'Fuseau horaire du système', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5971, 'fr', 'admin_login_page_background', 'Arrière-plan de la page de connexion administrateur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5972, 'fr', 'website_header', 'En-tête de site Web', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5973, 'fr', 'header_setting', 'Paramètre d\'en-tête', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5974, 'fr', 'header_logo', 'Logo d\'en-tête', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5975, 'fr', 'show_language_switcher', 'Afficher le sélecteur de langue?', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5976, 'fr', 'show_currency_switcher', 'Afficher le sélecteur de devises?', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5977, 'fr', 'enable_stikcy_header', 'Activer l\'en-tête stikcy?', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5978, 'fr', 'website_footer', 'Pied de page du site Web', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5979, 'fr', 'footer_widget', 'Widget de pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5980, 'fr', 'about_widget', 'À propos du widget', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5981, 'fr', 'footer_logo', 'Logo du pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5982, 'fr', 'about_description', 'À propos de la description', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5983, 'fr', 'contact_info_widget', 'Widget d\'informations de contact', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5984, 'fr', 'footer_contact_address', 'Adresse de contact du pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5985, 'fr', 'footer_contact_phone', 'Téléphone de contact de pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5986, 'fr', 'footer_contact_email', 'Adresse e-mail de contact de pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5987, 'fr', 'link_widget_one', 'Lier le widget un', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5988, 'fr', 'links', 'Liens', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5989, 'fr', 'footer_bottom', 'Bas de pied de page', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5990, 'fr', 'copyright_widget_', 'Widget de droits d\'auteur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5991, 'fr', 'copyright_text', 'Texte du droit d\'auteur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5992, 'fr', 'social_link_widget_', 'Widget de lien social', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5993, 'fr', 'show_social_links', 'Afficher les liens sociaux?', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5994, 'fr', 'social_links', 'Liens sociaux', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5995, 'fr', 'payment_methods_widget_', 'Widget des méthodes de paiement', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5996, 'fr', 'rtl_status_updated_successfully', 'Statut RTL mis à jour avec succès', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5997, 'fr', 'language_changed_to_', 'Langue remplacée par', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5998, 'fr', 'inhouse_product_sale_report', 'Rapport de vente de produits en interne', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(5999, 'fr', 'sort_by_category', 'Trier par catégorie', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6000, 'fr', 'product_wise_stock_report', 'Rapport de stock par produit', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6001, 'fr', 'currency_changed_to_', 'Devise remplacée par', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6002, 'fr', 'avatar', 'Avatar', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6003, 'fr', 'copy', 'Copie', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6004, 'fr', 'variant', 'Une variante', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6005, 'fr', 'variant_price', 'Prix ​​de la variante', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6006, 'fr', 'sku', 'SKU', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6007, 'fr', 'key', 'Clé', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6008, 'fr', 'value', 'Valeur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6009, 'fr', 'copy_translations', 'Copier les traductions', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6010, 'fr', 'all_pickup_points', 'Tous les points de ramassage', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6011, 'fr', 'add_new_pickup_point', 'Ajouter un nouveau point de ramassage', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6012, 'fr', 'manager', 'Directeur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6013, 'fr', 'location', 'Emplacement', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6014, 'fr', 'pickup_station_contact', 'Contact de la station de ramassage', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6015, 'fr', 'open', 'Ouvert', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6016, 'fr', 'pos_activation_for_seller', 'Activation POS pour le vendeur', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6017, 'fr', 'order_completed_successfully', 'Commande terminée avec succès.', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6018, 'fr', 'text_input', 'Saisie de texte', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6019, 'fr', 'select', 'Sélectionner', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6020, 'fr', 'multiple_select', 'Sélection multiple', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6021, 'fr', 'radio', 'Radio', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6022, 'fr', 'file', 'Fichier', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6023, 'fr', 'email_address', 'Adresse e-mail', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6024, 'fr', 'verification_info', 'Informations de vérification', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6025, 'fr', 'approval', 'Approbation', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6026, 'fr', 'due_amount', 'Montant dû', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6027, 'fr', 'show', 'Montrer', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6028, 'fr', 'pay_now', 'Payez maintenant', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6029, 'fr', 'affiliate_user_verification', 'Vérification de l\'utilisateur affilié', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6030, 'fr', 'reject', 'Rejeter', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6031, 'fr', 'accept', 'J\'accepte', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6032, 'fr', 'beauty_health__hair', 'Beauté, santé et cheveux', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6033, 'fr', 'comparison', 'Comparaison', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6034, 'fr', 'reset_compare_list', 'Réinitialiser la liste de comparaison', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6035, 'fr', 'your_comparison_list_is_empty', 'Votre liste de comparaison est vide', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6036, 'fr', 'convert_point_to_wallet', 'Convertir un point en portefeuille', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6037, 'fr', 'note_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'Remarque: vous devez d\'abord activer l\'option portefeuille avant d\'utiliser l\'addon Club Point.', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6038, 'fr', 'create_an_account', 'Créer un compte.', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6039, 'fr', 'use_email_instead', 'Utilisez plutôt le courrier électronique', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6040, 'fr', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'En vous inscrivant, vous acceptez nos termes et conditions.', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6041, 'fr', 'create_account', 'Créer un compte', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6042, 'fr', 'or_join_with', 'Ou rejoindre avec', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6043, 'fr', 'already_have_an_account', 'Vous avez déjà un compte?', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6044, 'fr', 'log_in', 'S\'identifier', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6045, 'fr', 'computer__accessories', 'Accessoires informatiques', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6046, 'fr', 'products', 'Des produits)', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6047, 'fr', 'in_your_cart', 'dans votre panier', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6048, 'fr', 'in_your_wishlist', 'dans votre liste de souhaits', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6049, 'fr', 'you_ordered', 'vous avez commandé', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6050, 'fr', 'default_shipping_address', 'Adresse de livraison par défaut', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6051, 'fr', 'sports__outdoor', 'Sports et plein air', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6052, 'fr', 'copied', 'Copié', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6053, 'fr', 'copy_the_promote_link', 'Copier le lien de promotion', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6054, 'fr', 'write_a_review', 'Écrire une critique', '2021-02-09 07:04:51', '2021-09-20 07:29:24'),
(6055, 'fr', 'your_name', 'Votre nom', '2021-02-09 07:04:51', '2021-09-20 07:29:25'),
(6056, 'fr', 'comment', 'Commentaire', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6057, 'fr', 'your_review', 'Votre avis', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6058, 'fr', 'submit_review', 'Poster le commentaire', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6059, 'fr', 'claire_willis', 'Claire Willis', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6060, 'fr', 'germaine_greene', 'Germaine Greene', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6061, 'fr', 'product_file', 'Fiche produit', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6062, 'fr', 'choose_file', 'Choisir le fichier', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6063, 'fr', 'type_to_add_a_tag', 'Tapez pour ajouter une balise', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6064, 'fr', 'images', 'Images', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6065, 'fr', 'main_images', 'Main Images', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6066, 'fr', 'meta_tags', 'Balises Meta', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6067, 'fr', 'digital_product_has_been_inserted_successfully', 'Le produit numérique a été inséré avec succès', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6068, 'fr', 'edit_digital_product', 'Modifier le produit numérique', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6069, 'fr', 'select_an_option', 'Sélectionner une option', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6070, 'fr', 'tax', 'impôt', '2021-02-09 07:04:52', '2021-02-09 07:04:52'),
(6071, 'fr', 'any_question_about_this_product', 'Une question sur ce produit?', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6072, 'fr', 'sign_in', 'se connecter', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6073, 'fr', 'login_with_google', 'Connectez-vous avec Google', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6074, 'fr', 'login_with_facebook', 'Se connecter avec Facebook', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6075, 'fr', 'login_with_twitter', 'Connectez-vous avec Twitter', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6076, 'fr', 'click_to_show_phone_number', 'Cliquez pour afficher le numéro de téléphone', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6077, 'fr', 'other_ads_of', 'Autres annonces de', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6078, 'fr', 'store_home', 'Accueil du magasin', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6079, 'fr', 'top_selling', 'Meilleures ventes', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6080, 'fr', 'shop_settings', 'Paramètres de la boutique', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6081, 'fr', 'visit_shop', 'Visiter la boutique', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6082, 'fr', 'pickup_points', 'Points de ramassage', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6083, 'fr', 'select_pickup_point', 'Sélectionnez le point de ramassage', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6084, 'fr', 'slider_settings', 'Paramètres du curseur', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6085, 'fr', 'social_media_link', 'Lien de médias sociaux', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6086, 'fr', 'facebook', 'Facebook', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6087, 'fr', 'twitter', 'Twitter', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6088, 'fr', 'google', 'Google', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6089, 'fr', 'new_arrival_products', 'Nouveaux produits d\'arrivée', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6090, 'fr', 'check_your_order_status', 'Vérifiez l\'état de votre commande', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6091, 'fr', 'shipping_method', 'Mode de livraison', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6092, 'fr', 'shipped_by', 'Expédié par', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6093, 'fr', 'image', 'Image', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6094, 'fr', 'sub_sub_category', 'Sous sous-catégorie', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6095, 'fr', 'inhouse_products', 'Produits internes', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6096, 'fr', 'forgot_password', 'Mot de passe oublié?', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6097, 'fr', 'enter_your_email_address_to_recover_your_password', 'Entrez votre adresse e-mail pour récupérer votre mot de passe.', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6098, 'fr', 'email_or_phone', 'Email ou téléphone', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6099, 'fr', 'send_password_reset_link', 'Envoyer le lien de réinitialisation du mot de passe', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6100, 'fr', 'back_to_login', 'Retour connexion', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6101, 'fr', 'index', 'indice', '2021-02-09 07:04:52', '2021-02-09 07:04:52'),
(6102, 'fr', 'download_your_product', 'Téléchargez votre produit', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6103, 'fr', 'option', 'Option', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6104, 'fr', 'applied_refund_request', 'Demande de remboursement appliquée', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6105, 'fr', 'item_has_been_renoved_from_wishlist', 'L\'article a été retiré de la liste de souhaits', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6106, 'fr', 'bulk_products_upload', 'Téléchargement de produits en masse', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6107, 'fr', 'upload_csv', 'Télécharger CSV', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6108, 'fr', 'create_a_ticket', 'Créer un ticket', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6109, 'fr', 'tickets', 'Des billets', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6110, 'fr', 'ticket_id', 'ID de billets', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6111, 'fr', 'sending_date', 'Date d\'envoi', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6112, 'fr', 'subject', 'Matière', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6113, 'fr', 'view_details', 'Voir les détails', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6114, 'fr', 'provide_a_detailed_description', 'Fournissez une description détaillée', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6115, 'fr', 'type_your_reply', 'Tapez votre réponse', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6116, 'fr', 'send_ticket', 'Envoyer un ticket', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6117, 'fr', 'load_more', 'Charger plus', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6118, 'fr', 'jewelry__watches', 'Bijoux & Montres', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6119, 'fr', 'filters', 'Filtres', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6120, 'fr', 'contact_address', 'Adresse de contact', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6121, 'fr', 'contact_phone', 'Numéro du contact', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6122, 'fr', 'contact_email', 'Email du contact', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6123, 'fr', 'filter_by', 'Filtrer par', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6124, 'fr', 'condition', 'État', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6125, 'fr', 'all_type', 'Tous les types', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6126, 'fr', 'pay_with_wallet', 'Payer avec portefeuille', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6127, 'fr', 'select_variation', 'Sélectionnez une variante', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6128, 'fr', 'no_product_added', 'Aucun produit ajouté', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6129, 'fr', 'status_has_been_updated_successfully', 'Le statut a été mis à jour avec succès', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6130, 'fr', 'all_seller_packages', 'Tous les packages du vendeur', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6131, 'fr', 'add_new_package', 'Ajouter un nouveau package', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6132, 'fr', 'package_logo', 'Logo du paquet', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6133, 'fr', 'days', 'journées', '2021-02-09 07:04:52', '2021-02-09 07:04:52'),
(6134, 'fr', 'create_new_seller_package', 'Créer un nouveau package vendeur', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6135, 'fr', 'package_name', 'Nom du paquet', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6136, 'fr', 'duration', 'Durée', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6137, 'fr', 'validity_in_number_of_days', 'Validité en nombre de jours', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6138, 'fr', 'update_package_information', 'Mettre à jour les informations du package', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6139, 'fr', 'package_has_been_inserted_successfully', 'Le package a été inséré avec succès', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6140, 'fr', 'refund_request', 'Demande de remboursement', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6141, 'fr', 'reason', 'Raison', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6142, 'fr', 'label', 'Étiquette', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6143, 'fr', 'select_label', 'Sélectionnez l\'étiquette', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6144, 'fr', 'multiple_select_label', 'Étiquette de sélection multiple', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6145, 'fr', 'radio_label', 'Étiquette radio', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6146, 'fr', 'pickup_point_orders', 'Commandes au point de ramassage', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6147, 'fr', 'view', 'Vue', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6148, 'fr', 'order_', 'Ordre #', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6149, 'fr', 'order_status', 'Statut de la commande', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6150, 'fr', 'total_amount', 'Montant total', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6151, 'fr', 'total', 'TOTAL', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6152, 'fr', 'delivery_status_has_been_updated', 'Le statut de livraison a été mis à jour', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6153, 'fr', 'payment_status_has_been_updated', 'Le statut du paiement a été mis à jour', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6154, 'fr', 'invoice', 'FACTURE D\'ACHAT', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6155, 'fr', 'set_refund_time', 'Définir l\'heure de remboursement', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6156, 'fr', 'set_time_for_sending_refund_request', 'Définir l\'heure d\'envoi de la demande de remboursement', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6157, 'fr', 'set_refund_sticker', 'Définir l\'autocollant de remboursement', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6158, 'fr', 'sticker', 'Autocollant', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6159, 'fr', 'refund_request_all', 'Demande de remboursement Tous', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6160, 'fr', 'order_id', 'Numéro de commande', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6161, 'fr', 'seller_approval', 'Approbation du vendeur', '2021-02-09 07:04:52', '2021-09-20 07:29:25'),
(6162, 'fr', 'admin_approval', 'Approbation de l\'administrateur', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6163, 'fr', 'refund_status', 'Statut de remboursement', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6164, 'fr', 'no_refund', 'Aucun remboursement', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6165, 'fr', 'status_updated_successfully', 'Statut mis à jour avec succès', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6166, 'fr', 'user_search_report', 'Rapport de recherche d\'utilisateurs', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6167, 'fr', 'search_by', 'Recherché par', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6168, 'fr', 'number_searches', 'Recherches numériques', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6169, 'fr', 'sender', 'Expéditeur', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6170, 'fr', 'receiver', 'Destinataire', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6171, 'fr', 'verification_form_updated_successfully', 'Formulaire de vérification mis à jour avec succès', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6172, 'fr', 'invalid_email_or_password', 'email ou mot de passe invalide', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6173, 'fr', 'all_coupons', 'Tous les coupons', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6174, 'fr', 'add_new_coupon', 'Ajouter un nouveau coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6175, 'fr', 'coupon_information', 'Informations sur le coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6176, 'fr', 'start_date', 'Date de début', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6177, 'fr', 'end_date', 'Date de fin', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6178, 'fr', 'product_base', 'Base de produit', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6179, 'fr', 'send_newsletter', 'Envoyer la newsletter', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6180, 'fr', 'mobile_users', 'Utilisateurs mobiles', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6181, 'fr', 'sms_subject', 'Objet du SMS', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6182, 'fr', 'sms_content', 'Contenu SMS', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6183, 'fr', 'all_flash_delas', 'Tous Flash Delas', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6184, 'fr', 'create_new_flash_dela', 'Créer un nouveau Flash Dela', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6185, 'fr', 'page_link', 'Lien de page', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6186, 'fr', 'flash_deal_information', 'Informations sur l\'offre Flash', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6187, 'fr', 'background_color', 'Couleur de l\'arrière plan', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6188, 'fr', '0000ff', '# 0000ff', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6189, 'fr', 'text_color', 'Couleur du texte', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6190, 'fr', 'white', 'blanc', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6191, 'fr', 'dark', 'Foncé', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6192, 'fr', 'choose_products', 'Choisissez des produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6193, 'fr', 'discounts', 'Réductions', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6194, 'fr', 'discount_type', 'Type de remise', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6195, 'fr', 'twillo_credential', 'Titres d\'identité Twillo', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6196, 'fr', 'twilio_sid', 'TWILIO SID', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6197, 'fr', 'twilio_auth_token', 'JETON D\'AUTH TWILIO', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6198, 'fr', 'twilio_verify_sid', 'TWILIO VERIFY SID', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6199, 'fr', 'valid_twillo_number', 'NUMÉRO DE TWILLO VALIDE', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6200, 'fr', 'nexmo_credential', 'Identifiant Nexmo', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6201, 'fr', 'nexmo_key', 'CLÉ NEXMO', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6202, 'fr', 'nexmo_secret', 'NEXMO SECRET', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6203, 'fr', 'ssl_wireless_credential', 'Identifiant sans fil SSL', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6204, 'fr', 'ssl_sms_api_token', 'TOKEN API SMS SSL', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6205, 'fr', 'ssl_sms_sid', 'SID SMS SSL', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6206, 'fr', 'ssl_sms_url', 'URL SMS SSL', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6207, 'fr', 'fast2sms_credential', 'Informations d\'identification Fast2SMS', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6208, 'fr', 'auth_key', 'CLÉ D\'AUTHENTIFICATION', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6209, 'fr', 'route', 'ROUTE', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6210, 'fr', 'promotional_use', 'Utilisation promotionnelle', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6211, 'fr', 'transactional_use', 'Utilisation transactionnelle', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6212, 'fr', 'sender_id', 'ID de l\'expéditeur', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6213, 'fr', 'nexmo_otp', 'Nexmo OTP', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6214, 'fr', 'twillo_otp', 'Twillo OTP', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6215, 'fr', 'ssl_wireless_otp', 'OTP sans fil SSL', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6216, 'fr', 'fast2sms_otp', 'Fast2SMS OTP', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6217, 'fr', 'order_placement', 'Placement de commande', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6218, 'fr', 'delivery_status_changing_time', 'Heure de changement du statut de livraison', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6219, 'fr', 'paid_status_changing_time', 'Temps de changement de statut payé', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6220, 'fr', 'send_bulk_sms', 'Envoyer des SMS en masse', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6221, 'fr', 'all_subscribers', 'Tous les abonnés', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6222, 'fr', 'coupon_information_adding', 'Ajout d\'informations sur le coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6223, 'fr', 'coupon_type', 'Type de coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6224, 'fr', 'for_products', 'Pour les produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6225, 'fr', 'for_total_orders', 'Pour le total des commandes', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6226, 'fr', 'add_your_product_base_coupon', 'Ajouter votre coupon de base de produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6227, 'fr', 'coupon_code', 'Code de coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6228, 'fr', 'sub_category', 'Sous-catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6229, 'fr', 'add_more', 'Ajouter plus de', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6230, 'fr', 'add_your_cart_base_coupon', 'Ajouter votre coupon de base de panier', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6231, 'fr', 'minimum_shopping', 'Achat minimum', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6232, 'fr', 'maximum_discount_amount', 'Montant maximum de la remise', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6233, 'fr', 'coupon_information_update', 'Mise à jour des informations sur le coupon', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6234, 'fr', 'please_configure_smtp_setting_to_work_all_email_sending_funtionality', 'Veuillez configurer le paramètre SMTP pour qu\'il fonctionne avec toutes les fonctionnalités d\'envoi d\'e-mails', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6235, 'fr', 'configure_now', 'Configurer maintenant', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6236, 'fr', 'total_published_products', 'Total des produits publiés', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6237, 'fr', 'total_sellers_products', 'Total des produits vendeurs', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6238, 'fr', 'total_admin_products', 'Total des produits d\'administration', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6239, 'fr', 'manage_products', 'Gérer les produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6240, 'fr', 'total_product_category', 'Catégorie de produit totale', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6241, 'fr', 'create_category', 'Créer une catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6242, 'fr', 'total_product_sub_sub_category', 'Sous-catégorie totale de produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6243, 'fr', 'create_sub_sub_category', 'Créer une sous-sous-catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6244, 'fr', 'total_product_sub_category', 'Sous-catégorie totale de produits', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6245, 'fr', 'create_sub_category', 'Créer une sous-catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6246, 'fr', 'total_product_brand', 'Marque totale du produit', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6247, 'fr', 'create_brand', 'Créer une marque', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6248, 'fr', 'total_sellers', 'Total vendeurs', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6249, 'fr', 'total_approved_sellers', 'Nombre total de vendeurs approuvés', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6250, 'fr', 'total_pending_sellers', 'Total des vendeurs en attente', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6251, 'fr', 'manage_sellers', 'Gérer les vendeurs', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6252, 'fr', 'category_wise_product_sale', 'Vente de produits par catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6253, 'fr', 'sale', 'Vente', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6254, 'fr', 'category_wise_product_stock', 'Stock de produits par catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6255, 'fr', 'category_name', 'Nom de catégorie', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6256, 'fr', 'stock', 'Stock', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6257, 'fr', 'frontend', 'L\'extrémité avant', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6258, 'fr', 'home_page', 'Page d\'accueil', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6259, 'fr', 'setting', 'réglage', '2021-02-09 07:04:53', '2021-02-09 07:04:53'),
(6260, 'fr', 'policy_page', 'Page de politique', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6261, 'fr', 'general', 'Général', '2021-02-09 07:04:53', '2021-09-20 07:29:25'),
(6262, 'fr', 'click_here', 'Cliquez ici', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6263, 'fr', 'useful_link', 'Lien utile', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6264, 'fr', 'activation', 'Activation', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6265, 'fr', 'smtp', 'SMTP', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6266, 'fr', 'payment_method', 'Mode de paiement', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6267, 'fr', 'social_media', 'Des médias sociaux', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6268, 'fr', 'business', 'Entreprise', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6269, 'fr', 'seller_verification', 'Vérification du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6270, 'fr', 'form_setting', 'paramètre de formulaire', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6271, 'fr', 'language', 'Langue', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6272, 'fr', 'dashboard', 'Tableau de bord', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6273, 'fr', 'pos_system', 'Système de point de vente', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6274, 'fr', 'pos_manager', 'Gestionnaire de point de vente', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6275, 'fr', 'pos_configuration', 'Configuration du point de vente', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6276, 'fr', 'products', 'Des produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6277, 'fr', 'add_new_product', 'Ajouter un nouveau produit', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6278, 'fr', 'all_products', 'Tous les produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6279, 'fr', 'in_house_products', 'Produits maison', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6280, 'fr', 'seller_products', 'Produits du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6281, 'fr', 'digital_products', 'Produits numériques', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6282, 'fr', 'bulk_import', 'Importation en masse', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6283, 'fr', 'bulk_export', 'Exportation en masse', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6284, 'fr', 'category', 'Catégorie', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6285, 'fr', 'subcategory', 'Sous-catégorie', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6286, 'fr', 'sub_subcategory', 'Sous sous-catégorie', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6287, 'fr', 'brand', 'Marque', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6288, 'fr', 'attribute', 'Attribut', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6289, 'fr', 'product_reviews', 'Avis sur les produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(6290, 'fr', 'sales', 'Ventes', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6291, 'fr', 'all_orders', 'Tous les ordres', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6292, 'fr', 'inhouse_orders', 'Commandes internes', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6293, 'fr', 'seller_orders', 'Commandes du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6294, 'fr', 'pickup_point_order', 'Commande au point de ramassage', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6295, 'fr', 'refunds', 'Remboursements', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6296, 'fr', 'refund_requests', 'Demandes de remboursement', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6297, 'fr', 'approved_refund', 'Remboursement approuvé', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6298, 'fr', 'refund_configuration', 'Configuration du remboursement', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6299, 'fr', 'customers', 'Les clients', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6300, 'fr', 'customer_list', 'Liste de clients', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6301, 'fr', 'classified_products', 'Produits classés', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6302, 'fr', 'classified_packages', 'Forfaits classifiés', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6303, 'fr', 'sellers', 'Les vendeurs', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6304, 'fr', 'all_seller', 'Tous les vendeurs', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6305, 'fr', 'payouts', 'Paiements', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6306, 'fr', 'payout_requests', 'Demandes de paiement', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6307, 'fr', 'seller_commission', 'Commission du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6308, 'fr', 'seller_packages', 'Packages du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6309, 'fr', 'seller_verification_form', 'Formulaire de vérification du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6310, 'fr', 'reports', 'Rapports', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6311, 'fr', 'in_house_product_sale', 'Vente de produits en interne', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6312, 'fr', 'seller_products_sale', 'Vente de produits du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6313, 'fr', 'products_stock', 'Stock de produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6314, 'fr', 'products_wishlist', 'Liste de souhaits de produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6315, 'fr', 'user_searches', 'Recherches d\'utilisateurs', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6316, 'fr', 'marketing', 'Commercialisation', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6317, 'fr', 'flash_deals', 'Offres Flash', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6318, 'fr', 'newsletters', 'Bulletins', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6319, 'fr', 'bulk_sms', 'SMS en masse', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6320, 'fr', 'subscribers', 'Les abonnés', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6321, 'fr', 'coupon', 'Coupon', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6322, 'fr', 'support', 'Soutien', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6323, 'fr', 'ticket', 'Billet', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6324, 'fr', 'product_queries', 'Requêtes sur les produits', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6325, 'fr', 'website_setup', 'Configuration du site Web', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6326, 'fr', 'header', 'Entête', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6327, 'fr', 'footer', 'Bas de page', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6328, 'fr', 'pages', 'Des pages', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6329, 'fr', 'appearance', 'Apparence', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6330, 'fr', 'setup__configurations', 'Installation et configurations', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6331, 'fr', 'general_settings', 'réglages généraux', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6332, 'fr', 'features_activation', 'Activation des fonctionnalités', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6333, 'fr', 'languages', 'Langues', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6334, 'fr', 'currency', 'Devise', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6335, 'fr', 'pickup_point', 'Point de ramassage', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6336, 'fr', 'smtp_settings', 'Paramètres SMTP', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6337, 'fr', 'payment_methods', 'méthodes de payement', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6338, 'fr', 'file_system_configuration', 'Configuration du système de fichiers', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6339, 'fr', 'social_media_logins', 'Connexions aux réseaux sociaux', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6340, 'fr', 'analytics_tools', 'Outils d\'analyse', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6341, 'fr', 'facebook_chat', 'Chat Facebook', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6342, 'fr', 'google_recaptcha', 'Google reCAPTCHA', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6343, 'fr', 'shipping_configuration', 'Configuration d\'expédition', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6344, 'fr', 'shipping_countries', 'Pays d\'expédition', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6345, 'fr', 'affiliate_system', 'Système d\'affiliation', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6346, 'fr', 'affiliate_registration_form', 'Formulaire d\'inscription d\'affilié', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6347, 'fr', 'affiliate_configurations', 'Configurations d\'affiliation', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6348, 'fr', 'affiliate_users', 'Utilisateurs affiliés', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6349, 'fr', 'referral_users', 'Utilisateurs référents', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6350, 'fr', 'affiliate_withdraw_requests', 'Demandes de retrait des affiliés', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6351, 'fr', 'offline_payment_system', 'Système de paiement hors ligne', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6352, 'fr', 'manual_payment_methods', 'Modes de paiement manuels', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6353, 'fr', 'offline_wallet_recharge', 'Recharge de portefeuille hors ligne', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6354, 'fr', 'offline_customer_package_payments', 'Paiements de forfait client hors ligne', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6355, 'fr', 'offline_seller_package_payments', 'Paiements hors ligne du package du vendeur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6356, 'fr', 'paytm_payment_gateway', 'Passerelle de paiement Paytm', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6357, 'fr', 'set_paytm_credentials', 'Définir les informations d\'identification Paytm', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6358, 'fr', 'club_point_system', 'Système de points Club', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6359, 'fr', 'club_point_configurations', 'Configurations des points Club', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6360, 'fr', 'set_product_point', 'Définir le point de produit', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6361, 'fr', 'user_points', 'Points utilisateur', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6362, 'fr', 'otp_system', 'Système OTP', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6363, 'fr', 'otp_configurations', 'Configurations OTP', '2021-02-09 07:04:54', '2021-09-20 07:29:25'),
(6364, 'fr', 'set_otp_credentials', 'Définir les informations d\'identification OTP', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6365, 'fr', 'staffs', 'Personnel', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6366, 'fr', 'all_staffs', 'Tous les états-majors', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6367, 'fr', 'staff_permissions', 'Autorisations du personnel', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6368, 'fr', 'addon_manager', 'Gestionnaire de modules complémentaires', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6369, 'fr', 'browse_website', 'Parcourir le site Web', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6370, 'fr', 'pos', 'POS', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6371, 'fr', 'notifications', 'Notifications', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6372, 'fr', 'new_orders', 'nouvelles commandes', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6373, 'fr', 'userimage', 'image-utilisateur', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6374, 'fr', 'profile', 'Profil', '2021-02-09 07:04:55', '2021-09-20 07:29:25'),
(6375, 'fr', 'logout', 'Se déconnecter', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6376, 'fr', 'page_not_found', 'Page non trouvée!', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6377, 'fr', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'La page que vous recherchez n\'a pas été trouvée sur notre serveur.', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6378, 'fr', 'registration', 'enregistrement', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6379, 'fr', 'i_am_shopping_for', 'Je fais des achats pour...', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6380, 'fr', 'compare', 'Comparer', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6381, 'fr', 'wishlist', 'Liste de souhaits', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6382, 'fr', 'cart', 'Chariot', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6383, 'fr', 'your_cart_is_empty', 'Votre panier est vide', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6384, 'fr', 'categories', 'Catégories', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6385, 'fr', 'see_all', 'Voir tout', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6386, 'fr', 'seller_policy', 'Politique du vendeur', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6387, 'fr', 'return_policy', 'Politique de retour', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6388, 'fr', 'support_policy', 'Politique d\'assistance', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6389, 'fr', 'privacy_policy', 'Politique de confidentialité', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6390, 'fr', 'your_email_address', 'Votre adresse email', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6391, 'fr', 'subscribe', 'Souscrire', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6392, 'fr', 'contact_info', 'Informations de contact', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6393, 'fr', 'address', 'Adresse', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6394, 'fr', 'phone', 'Téléphone', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6395, 'fr', 'email', 'Email', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6396, 'fr', 'login', 'S\'identifier', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6397, 'fr', 'my_account', 'Mon compte', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6398, 'fr', 'order_history', 'Historique des commandes', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6399, 'fr', 'my_wishlist', 'Ma liste d\'envies', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6400, 'fr', 'track_order', 'Suivi de commande', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6401, 'fr', 'be_an_affiliate_partner', 'Soyez un partenaire affilié', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6402, 'fr', 'be_a_seller', 'Soyez vendeur', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6403, 'fr', 'apply_now', 'Appliquer maintenant', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6404, 'fr', 'confirmation', 'Confirmation', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6405, 'fr', 'delete_confirmation_message', 'Supprimer le message de confirmation', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6406, 'fr', 'cancel', 'Annuler', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6407, 'fr', 'delete', 'Effacer', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6408, 'fr', 'item_has_been_added_to_compare_list', 'L\'article a été ajouté à la liste de comparaison', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6409, 'fr', 'please_login_first', 'S\'il vous plait Connectez-vous d\'abord', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6410, 'fr', 'total_earnings_from', 'Total des revenus de', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6411, 'fr', 'client_subscription', 'Abonnement client', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6412, 'fr', 'product_category', 'Catégorie de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6413, 'fr', 'product_sub_sub_category', 'Sous-catégorie de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6414, 'fr', 'product_sub_category', 'Sous-catégorie de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6415, 'fr', 'product_brand', 'Marque de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6416, 'fr', 'top_client_packages', 'Meilleurs packages clients', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6417, 'fr', 'top_freelancer_packages', 'Meilleurs forfaits Freelancer', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6418, 'fr', 'number_of_sale', 'Numéro de vente', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6419, 'fr', 'number_of_stock', 'Nombre de stock', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6420, 'fr', 'top_10_products', 'Top 10 des produits', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6421, 'fr', 'top_12_products', 'Top 12 des produits', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6422, 'fr', 'admin_can_not_be_a_seller', 'L\'administrateur ne peut pas être un vendeur', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6423, 'fr', 'filter_by_rating', 'Filtrer par note', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6424, 'fr', 'published_reviews_updated_successfully', 'Avis publiés mis à jour avec succès', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6425, 'fr', 'refund_sticker_has_been_updated_successfully', 'L\'autocollant de remboursement a été mis à jour avec succès', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6426, 'fr', 'edit_product', 'Modifier le produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6427, 'fr', 'meta_images', 'Images méta', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6428, 'fr', 'update_product', 'Mettre à jour le produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6429, 'fr', 'product_has_been_deleted_successfully', 'Le produit a été supprimé avec succès', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6430, 'fr', 'your_profile_has_been_updated_successfully', 'Votre profil a été mis à jour avec succés!', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6431, 'fr', 'upload_limit_has_been_reached_please_upgrade_your_package', 'La limite de téléchargement a été atteinte. Veuillez mettre à jour votre package.', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6432, 'fr', 'add_your_product', 'Ajoutez votre produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6433, 'fr', 'select_a_category', 'choisissez une catégorie', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6434, 'fr', 'select_a_brand', 'Sélectionnez une marque', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6435, 'fr', 'product_unit', 'Unité de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6436, 'fr', 'minimum_qty', 'Qté minimum.', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6437, 'fr', 'product_tag', 'Étiquette de produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6438, 'fr', 'type__hit_enter', 'Tapez et appuyez sur Entrée', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6439, 'fr', 'videos', 'Vidéos', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6440, 'fr', 'video_from', 'Vidéo de', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6441, 'fr', 'video_url', 'URL de la vidéo', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6442, 'fr', 'customer_choice', 'Choix du client', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6443, 'fr', 'pdf', 'PDF', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6444, 'fr', 'choose_pdf', 'Choisissez PDF', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6445, 'fr', 'select_category', 'Choisir une catégorie', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6446, 'fr', 'target_category', 'Catégorie cible', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6447, 'fr', 'subsubcategory', 'sous-sous-catégorie', '2021-02-09 07:05:23', '2021-02-09 07:05:23'),
(6448, 'fr', 'search_category', 'Rechercher une catégorie', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6449, 'fr', 'search_subcategory', 'Rechercher une sous-catégorie', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6450, 'fr', 'search_subsubcategory', 'Rechercher une sous-sous-catégorie', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6451, 'fr', 'update_your_product', 'Mettez à jour votre produit', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6452, 'fr', 'product_has_been_updated_successfully', 'Le produit a été mis à jour avec succès', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6453, 'fr', 'add_your_digital_product', 'Ajoutez votre produit numérique', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6454, 'fr', 'active_ecommerce_cms_update_process', 'Processus de mise à jour du CMS de commerce électronique actif', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6455, 'fr', 'codecanyon_purchase_code', 'Code d\'achat Codecanyon', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6456, 'fr', 'database_name', 'Nom de la base de données', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6457, 'fr', 'database_username', 'Nom d\'utilisateur de la base de données', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6458, 'fr', 'database_password', 'Mot de passe de la base de données', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6459, 'fr', 'database_hostname', 'Nom d\'hôte de la base de données', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6460, 'fr', 'update_now', 'Mettez à jour maintenant', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6461, 'fr', 'congratulations', 'Toutes nos félicitations', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6462, 'fr', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'Vous avez terminé avec succès le processus de mise à jour. Veuillez vous connecter pour continuer', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6463, 'fr', 'go_to_home', 'Aller à la maison', '2021-02-09 07:05:23', '2021-09-20 07:29:26'),
(6464, 'fr', 'login_to_admin_panel', 'Connectez-vous au panneau d\'administration', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6465, 'fr', 's3_file_system_credentials', 'Informations d\'identification du système de fichiers S3', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6466, 'fr', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6467, 'fr', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6468, 'fr', 'aws_default_region', 'AWS_DEFAULT_REGION', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6469, 'fr', 'aws_bucket', 'AWS_BUCKET', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6470, 'fr', 'aws_url', 'AWS_URL', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6471, 'fr', 's3_file_system_activation', 'Activation du système de fichiers S3', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6472, 'fr', 'your_phone_number', 'Votre numéro de téléphone', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6473, 'fr', 'zip_file', 'Fichier zip', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6474, 'fr', 'install', 'Installer', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6475, 'fr', 'this_version_is_not_capable_of_installing_addons_please_update', 'Cette version n\'est pas capable d\'installer des addons, veuillez mettre à jour.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6476, 'fr', 'search_in_menu', 'Rechercher dans le menu', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6477, 'fr', 'uploaded_files', 'Fichiers téléchargés', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6478, 'fr', 'shipping_cities', 'Villes d\'expédition', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6479, 'fr', 'system', 'Système', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6480, 'fr', 'server_status', 'État du serveur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6481, 'fr', 'nothing_found', 'rien n\'a été trouvé', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6482, 'fr', 'parent_category', 'Catégorie Parentale', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6483, 'fr', 'level', 'Niveau', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6484, 'fr', 'category_information', 'Information sur la catégorie', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6485, 'fr', 'translatable', 'Traduisible', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6486, 'fr', 'no_parent', 'Aucun parent', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6487, 'fr', 'physical', 'Physique', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6488, 'fr', 'digital', 'Numérique', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6489, 'fr', '200x200', '200 x 200', '2021-02-09 07:05:24', '2021-02-09 07:05:24'),
(6490, 'fr', '32x32', '32 x 32', '2021-02-09 07:05:24', '2021-02-09 07:05:24'),
(6491, 'fr', 'search_your_files', 'Recherchez vos fichiers', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6492, 'fr', 'category_has_been_updated_successfully', 'La catégorie a été mise à jour avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6493, 'fr', 'all_uploaded_files', 'Tous les fichiers téléchargés', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6494, 'fr', 'upload_new_file', 'Télécharger un nouveau fichier', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6495, 'fr', 'all_files', 'Tous les fichiers', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6496, 'fr', 'search', 'Chercher', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6497, 'fr', 'details_info', 'Détails Info', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6498, 'fr', 'copy_link', 'Copier le lien', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6499, 'fr', 'are_you_sure_to_delete_this_file', 'Êtes-vous sûr de vouloir supprimer ce fichier?', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6500, 'fr', 'file_info', 'Informations sur le fichier', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6501, 'fr', 'link_copied_to_clipboard', 'Lien copié dans le presse-papiers', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6502, 'fr', 'oops_unable_to_copy', 'Oups, impossible de copier', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6503, 'fr', 'file_deleted_successfully', 'Fichier supprimé avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6504, 'fr', 'add_new_brand', 'Ajouter une nouvelle marque', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6505, 'fr', '120x80', '120 x 80', '2021-02-09 07:05:24', '2021-02-09 07:05:24'),
(6506, 'fr', 'brand_information', 'Information sur la marque', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6507, 'fr', 'brand_has_been_updated_successfully', 'La marque a été mise à jour avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6508, 'fr', 'brand_has_been_deleted_successfully', 'La marque a été supprimée avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6509, 'fr', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'Ceci est utilisé pour la recherche. Saisissez les mots par lesquels le client peut trouver ce produit.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6510, 'fr', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'Ces images sont visibles dans la galerie de pages de détails du produit. Utilisez des images de taille 600x600.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6511, 'fr', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'Cette image est visible dans toutes les boîtes de produits. Utilisez une image de tailles 300x300. Gardez un espace vide autour de l\'objet principal de votre image car nous avons dû recadrer certains bords dans différents appareils pour le rendre réactif.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6512, 'fr', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'Utilisez le lien approprié sans paramètre supplémentaire. N\'utilisez pas de lien de partage court / de code iframe intégré.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6513, 'fr', 'save_product', 'Enregistrer le produit', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6514, 'fr', 'product_has_been_inserted_successfully', 'Le produit a été inséré avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6515, 'fr', 'something_went_wrong', 'Un problème est survenu!', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6516, 'fr', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Désolé pour le désagrément, mais nous y travaillons.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6517, 'fr', 'error_code', 'Code d\'erreur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6518, 'fr', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Veuillez configurer les paramètres SMTP pour que toutes les fonctionnalités d\'envoi d\'e-mails fonctionnent', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6519, 'fr', 'order', 'Ordre', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6520, 'fr', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'Nous avons une hauteur de bannière limitée pour maintenir l\'interface utilisateur. Nous avons dû recadrer à la fois du côté gauche et du côté droit en vue de différents appareils pour le rendre réactif. Avant de concevoir une bannière, gardez ces points à l\'esprit.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6521, 'fr', 'home_banner_3_max_3', 'Bannière d\'accueil 3 (Max 3)', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6522, 'fr', 'add_new_seller', 'Ajouter un nouveau vendeur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6523, 'fr', 'filter_by_approval', 'Filtrer par approbation', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6524, 'fr', 'nonapproved', 'Non approuvé', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6525, 'fr', 'type_name_or_email__enter', 'Tapez le nom ou l\'e-mail et entrez', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6526, 'fr', 'due_to_seller', 'Dû au vendeur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6527, 'fr', 'log_in_as_this_seller', 'Connectez-vous en tant que vendeur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6528, 'fr', 'go_to_payment', 'Aller au paiement', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6529, 'fr', 'ban_this_seller', 'Interdire ce vendeur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6530, 'fr', 'do_you_really_want_to_ban_this_seller', 'Voulez-vous vraiment interdire ce vendeur?', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6531, 'fr', 'proceed', 'Procéder!', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6532, 'fr', 'approved_sellers_updated_successfully', 'Vendeurs approuvés mis à jour avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6533, 'fr', 'seller_has_been_deleted_successfully', 'Le vendeur a été supprimé avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6534, 'fr', 'seller_information', 'Information du vendeur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6535, 'fr', 'seller_has_been_inserted_successfully', 'Le vendeur a été inséré avec succès', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6536, 'fr', 'email_already_exists', 'L\'email existe déjà!', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6537, 'fr', 'verify_your_email_address', 'Vérifiez votre adresse e-mail', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6538, 'fr', 'before_proceeding_please_check_your_email_for_a_verification_link', 'Avant de continuer, veuillez vérifier votre messagerie pour un lien de vérification.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6539, 'fr', 'if_you_did_not_receive_the_email', 'Si vous n\'avez pas reçu l\'e-mail.', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6540, 'fr', 'click_here_to_request_another', 'Cliquez ici pour en demander un autre', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6541, 'fr', 'email_verification', 'vérification de l\'E-mail', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6542, 'fr', 'email_verification__', 'Vérification de l\'E-mail -', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6543, 'fr', 'https_activation', 'Activation HTTPS', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6544, 'fr', 'maintenance_mode', 'Maintenance Mode', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6545, 'fr', 'maintenance_mode_activation', 'Activation du mode de maintenance', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6546, 'fr', 'classified_product_activate', 'Activation du produit classifié', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6547, 'fr', 'classified_product', 'Produit classé', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6548, 'fr', 'business_related', 'Lié aux affaires', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6549, 'fr', 'vendor_system_activation', 'Activation du système du fournisseur', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6550, 'fr', 'wallet_system_activation', 'Activation du système de portefeuille', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6551, 'fr', 'coupon_system_activation', 'Activation du système de coupons', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6552, 'fr', 'pickup_point_activation', 'Activation du point de ramassage', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6553, 'fr', 'conversation_activation', 'Activation de la conversation', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6554, 'fr', 'guest_checkout_activation', 'Activation de la vérification des invités', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6555, 'fr', 'categorybased_commission', 'Commission par catégorie', '2021-02-09 07:05:24', '2021-09-20 07:29:26'),
(6556, 'fr', 'after_activate_this_option_seller_commision_will_be_disabled_and_you_need_to_set_commission_on_each_category_otherwise_admin_will_not_get_any_commision', 'Après avoir activé cette option, la commission du vendeur sera désactivée et vous devez définir une commission sur chaque catégorie, sinon l\'administrateur ne recevra aucune commission.', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6557, 'fr', 'set_commisssion_now', 'Définir la commission maintenant', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6558, 'fr', 'payment_related', 'Lié au paiement', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6559, 'fr', 'paypal_payment_activation', 'Activation du paiement Paypal', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6560, 'fr', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'Vous devez configurer Paypal correctement pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6561, 'fr', 'stripe_payment_activation', 'Activation du paiement Stripe', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6562, 'fr', 'sslcommerz_activation', 'Activation de SSlCommerz', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6563, 'fr', 'instamojo_payment_activation', 'Activation du paiement Instamojo', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6564, 'fr', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'Vous devez configurer correctement le paiement Instamojo pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6565, 'fr', 'razor_pay_activation', 'Activation de Razor Pay', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6566, 'fr', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'Vous devez configurer Razor correctement pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6567, 'fr', 'paystack_activation', 'Activation PayStack', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6568, 'fr', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'Vous devez configurer PayStack correctement pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6569, 'fr', 'voguepay_activation', 'Activation de VoguePay', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6570, 'fr', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'Vous devez configurer correctement VoguePay pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6571, 'fr', 'payhere_activation', 'Activation Payhere', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6572, 'fr', 'ngenius_activation', 'Activation de Ngenius', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6573, 'fr', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'Vous devez configurer correctement Ngenius pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6574, 'fr', 'iyzico_activation', 'Activation d\'Iyzico', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6575, 'fr', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'Vous devez configurer correctement iyzico pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6576, 'fr', 'bkash_activation', 'Activation Bkash', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6577, 'fr', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'Vous devez configurer correctement bkash pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6578, 'fr', 'nagad_activation', 'Activation de Nagad', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6579, 'fr', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'Vous devez configurer correctement nagad pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6580, 'fr', 'cash_payment_activation', 'Activation du paiement en espèces', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6581, 'fr', 'social_media_login', 'Connexion aux médias sociaux', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6582, 'fr', 'facebook_login', 'Identifiant Facebook', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6583, 'fr', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'Vous devez configurer correctement le client Facebook pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6584, 'fr', 'google_login', 'Connexion Google', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6585, 'fr', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'Vous devez configurer correctement Google Client pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6586, 'fr', 'twitter_login', 'Connexion Twitter', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6587, 'fr', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'Vous devez configurer correctement le client Twitter pour activer cette fonctionnalité', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6588, 'fr', 'shop_logo', 'Logo de la boutique', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6589, 'fr', 'shop_address', 'Adresse de la boutique', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6590, 'fr', 'banner_settings', 'Paramètres de la bannière', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6591, 'fr', 'banners', 'Bannières', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6592, 'fr', 'we_had_to_limit_height_to_maintian_consistancy_in_some_device_both_side_of_the_banner_might_be_cropped_for_height_limitation', 'Nous avons dû limiter la hauteur à la cohérence du maintien. Sur certains appareils, les deux côtés de la bannière peuvent être rognés pour limiter la hauteur.', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6593, 'fr', 'insert_link_with_https_', 'Insérer un lien avec https', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6594, 'fr', 'your_shop_has_been_updated_successfully', 'Votre boutique a été mise à jour avec succès!', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6595, 'fr', 'search_result_for_', 'Résultat de la recherche pour', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6596, 'fr', 'brand_has_been_inserted_successfully', 'La marque a été insérée avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6597, 'fr', 'about', 'À propos de', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6598, 'fr', 'payout_info', 'Informations de paiement', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6599, 'fr', 'bank_acc_name', 'Nom de la banque', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6600, 'fr', 'bank_acc_number', 'Numéro d\'accès bancaire', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6601, 'fr', 'total_products', 'Total produits', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6602, 'fr', 'total_sold_amount', 'Montant total vendu', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6603, 'fr', 'wallet_balance', 'Solde Google Wallet', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6604, 'fr', 'cookies_agreement', 'Accord de cookies', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6605, 'fr', 'cookies_agreement_text', 'Texte de l\'accord sur les cookies', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6606, 'fr', 'show_cookies_agreement', 'Afficher l\'accord de cookies?', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6607, 'fr', 'custom_script', 'Script personnalisé', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6608, 'fr', 'header_custom_script__before_head', 'Script personnalisé d\'en-tête - avant </head>', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6609, 'fr', 'write_script_with_script_tag', 'Ecrire un script avec la balise <script>', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6610, 'fr', 'footer_custom_script__before_body', 'Script personnalisé de pied de page - avant </body>', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6611, 'fr', 'category_has_been_inserted_successfully', 'La catégorie a été insérée avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6612, 'fr', 'all_flash_deals', 'Toutes les offres Flash', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6613, 'fr', 'create_new_flash_deal', 'Créer une nouvelle offre Flash', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6614, 'fr', 'ffffff', '#FFFFFF', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6615, 'fr', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'Cette image est affichée comme bannière de couverture dans la page de détails de l\'offre flash.', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6616, 'fr', 'flash_deal_has_been_inserted_successfully', 'L\'offre Flash a été insérée avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6617, 'fr', 'flash_deal_status_updated_successfully', 'État de l\'accord Flash mis à jour avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6618, 'fr', 'flash_deal_has_been_updated_successfully', 'L\'offre Flash a été mise à jour avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6619, 'fr', 'update_language_info', 'mettre à jour les informations sur la langue', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6620, 'fr', 'language_has_been_updated_successfully', 'La langue a été mise à jour avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6621, 'fr', 'type_key__enter', 'Tapez la clé et entrez', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6622, 'fr', 'translations_updated_for_', 'Traductions mises à jour pour', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6623, 'fr', 'language_has_been_inserted_successfully', 'La langue a été insérée avec succès', '2021-02-09 07:05:25', '2021-09-20 07:29:26'),
(6624, 'in', 'all_category', 'सभी श्रेणी', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6625, 'in', 'all', 'सब', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6626, 'in', 'flash_sale', 'तेज़ बिक्री', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6627, 'in', 'view_more', 'और देखो', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6628, 'in', 'add_to_wishlist', 'इच्छा सूची में जोड़ें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6629, 'in', 'add_to_compare', 'तुलना करने के लिए जोड़ें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6630, 'in', 'add_to_cart', 'कार्ट में जोड़ें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6631, 'in', 'club_point', 'क्लब प्वाइंट', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6632, 'in', 'classified_ads', 'वर्गीकृत विज्ञापन', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6633, 'in', 'used', 'उपयोग किया गया', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6634, 'in', 'top_10_categories', 'शीर्ष 10 श्रेणियाँ', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6635, 'in', 'view_all_categories', 'सभी श्रेणियाँ देखें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6636, 'in', 'top_10_brands', 'शीर्ष 10 ब्रांड', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6637, 'in', 'view_all_brands', 'सभी ब्रांड देखें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6638, 'in', 'terms__conditions', 'नियम एवं शर्तें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6639, 'in', 'best_selling', 'सर्वश्रेष्ठ बिक्री', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6640, 'in', 'top_20', 'शीर्ष 20', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6641, 'in', 'featured_products', 'विशेष रुप से प्रदर्शित प्रोडक्टस', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6642, 'in', 'best_sellers', 'सर्वाधिक बिकाऊ', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6643, 'in', 'visit_store', 'स्टोर पर जाये', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6644, 'in', 'popular_suggestions', 'लोकप्रिय सुझाव', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6645, 'in', 'category_suggestions', 'श्रेणी सुझाव', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6646, 'in', 'automobile__motorcycle', 'ऑटोमोबाइल और मोटरसाइकिल', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6647, 'in', 'price_range', 'मूल्य सीमा', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6648, 'in', 'filter_by_color', 'रंग से छान लें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6649, 'in', 'home', 'घर', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6650, 'in', 'newest', 'सबसे नया', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6651, 'in', 'oldest', 'सबसे पुराना', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6652, 'in', 'price_low_to_high', 'कीमतों का उतार - चढ़ाव', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6653, 'in', 'price_high_to_low', 'कीमत ऊंची से नीची', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6654, 'in', 'brands', 'ब्रांड', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6655, 'in', 'all_brands', 'सभी ब्रांडों', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6656, 'in', 'all_sellers', 'सभी विक्रेता', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6657, 'in', 'inhouse_product', 'इनहाउस उत्पाद', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6658, 'in', 'message_seller', 'संदेश विक्रेता', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6659, 'in', 'price', 'कीमत', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6660, 'in', 'discount_price', 'डिस्काउंट कीमत', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6661, 'in', 'color', 'रंग', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6662, 'in', 'quantity', 'मात्रा', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6663, 'in', 'available', 'उपलब्ध', '2021-02-09 07:07:17', '2021-02-09 07:07:17'),
(6664, 'in', 'total_price', 'कुल कीमत', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6665, 'in', 'out_of_stock', 'स्टॉक ख़त्म', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6666, 'in', 'refund', 'वापसी', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6667, 'in', 'share', 'साझा करें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6668, 'in', 'sold_by', 'द्वारा बेचा', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6669, 'in', 'customer_reviews', 'ग्राहक समीक्षा', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6670, 'in', 'top_selling_products', 'शीर्ष बेचना उत्पाद', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6671, 'in', 'description', 'विवरण', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6672, 'in', 'video', 'वीडियो', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6673, 'in', 'reviews', 'समीक्षा', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6674, 'in', 'download', 'डाउनलोड', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6675, 'in', 'there_have_been_no_reviews_for_this_product_yet', 'इस उत्पाद के लिए अभी तक कोई समीक्षा नहीं हुई है।', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6676, 'in', 'related_products', 'संबंधित उत्पाद', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6677, 'in', 'any_query_about_this_product', 'इस उत्पाद के बारे में कोई भी प्रश्न', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6678, 'in', 'product_name', 'प्रोडक्ट का नाम', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6679, 'in', 'your_question', 'आपका प्रश्न', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6680, 'in', 'send', 'भेज दो', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6681, 'in', 'use_country_code_before_number', 'संख्या से पहले देश कोड का उपयोग करें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6682, 'in', 'remember_me', 'मुझे याद रखें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6683, 'in', 'dont_have_an_account', 'खाता नहीं है?', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6684, 'in', 'register_now', 'अभी पंजीकरण करें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6685, 'in', 'or_login_with', 'या लॉगिन करें', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6686, 'in', 'oops', 'उफ़ ..', '2021-02-09 07:07:17', '2021-09-20 07:29:26'),
(6687, 'in', 'this_item_is_out_of_stock', 'यह आइटम स्टॉक में नहीं है!', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6688, 'in', 'back_to_shopping', 'वापस खरीदारी के लिए', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6689, 'in', 'login_to_your_account', 'अपने अकाउंट में लॉग इन करें।', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6690, 'in', 'purchase_history', 'खरीद इतिहास', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6691, 'in', 'new', 'नया', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6692, 'in', 'downloads', 'डाउनलोड', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6693, 'in', 'sent_refund_request', 'भेजा गया रिफंड अनुरोध', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6694, 'in', 'product_bulk_upload', 'उत्पाद थोक अपलोड', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6695, 'in', 'orders', 'आदेश', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6696, 'in', 'recieved_refund_request', 'रिफ़ंड का अनुरोध', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6697, 'in', 'shop_setting', 'दुकान की स्थापना', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6698, 'in', 'payment_history', 'भुगतान इतिहास', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6699, 'in', 'money_withdraw', 'पैसे की निकासी', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6700, 'in', 'conversations', 'बात चिट', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6701, 'in', 'my_wallet', 'मेरा बटुआ', '2021-02-09 07:07:18', '2021-09-20 07:29:26'),
(6702, 'in', 'earning_points', 'कमाई के अंक', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6703, 'in', 'support_ticket', 'समर्थन टिकट', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6704, 'in', 'manage_profile', 'प्रोफ़ाइल प्रबंधित करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6705, 'in', 'sold_amount', 'बेची गई राशि', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6706, 'in', 'your_sold_amount_current_month', 'आपकी बेची गई राशि (चालू माह)', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6707, 'in', 'total_sold', 'कुल बिक गया', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6708, 'in', 'last_month_sold', 'पिछले महीने बेच दिया', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6709, 'in', 'total_sale', 'कुल बिक्री', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6710, 'in', 'total_earnings', 'कुल आय', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6711, 'in', 'successful_orders', 'सफल आदेश', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6712, 'in', 'total_orders', 'कुल आदेश', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6713, 'in', 'pending_orders', 'लंबित ऑर्डर', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6714, 'in', 'cancelled_orders', 'रद्द किए गए आदेश', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6715, 'in', 'product', 'उत्पाद', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6716, 'in', 'purchased_package', 'खरीदा हुआ पैकेज', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6717, 'in', 'package_not_found', 'पैकेज नहीं मिला', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6718, 'in', 'upgrade_package', 'अपग्रेड पैकेज', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6719, 'in', 'shop', 'दुकान', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6720, 'in', 'manage__organize_your_shop', 'अपनी दुकान को प्रबंधित और व्यवस्थित करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6721, 'in', 'go_to_setting', 'सेटिंग पर जाएं', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6722, 'in', 'payment', 'भुगतान', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6723, 'in', 'configure_your_payment_method', 'अपनी भुगतान विधि कॉन्फ़िगर करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6724, 'in', 'my_panel', 'मेरा पैनल', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6725, 'in', 'item_has_been_added_to_wishlist', 'आइटम को इच्छा-सूची में जोड़ा गया है', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6726, 'in', 'my_points', 'मेरे अंक', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6727, 'in', '_points', 'अंक', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6728, 'in', 'wallet_money', 'वॉलेट मनी', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6729, 'in', 'exchange_rate', 'विनिमय दर', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6730, 'in', 'point_earning_history', 'बिंदु कमाई का इतिहास', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6731, 'in', 'date', 'तारीख', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6732, 'in', 'points', 'अंक', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6733, 'in', 'converted', 'रूपांतरित किया हुआ', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6734, 'in', 'action', 'क्रिया', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6735, 'in', 'no_history_found', 'कोई इतिहास नहीं मिला।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6736, 'in', 'convert_has_been_done_successfully_check_your_wallets', 'कनवर्ट किया गया है सफलतापूर्वक अपने वॉलेट की जाँच करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6737, 'in', 'something_went_wrong', 'कुछ गलत हो गया', '2021-02-09 07:07:18', '2021-09-20 07:29:27');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(6738, 'in', 'remaining_uploads', 'शेष अपलोड', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6739, 'in', 'no_package_found', 'कोई पैकेज नहीं मिला', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6740, 'in', 'search_product', 'खोज उत्पाद', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6741, 'in', 'name', 'नाम', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6742, 'in', 'current_qty', 'वर्तमान मात्रा', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6743, 'in', 'base_price', 'आधार मूल्य', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6744, 'in', 'published', 'प्रकाशित किया गया', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6745, 'in', 'featured', 'विशेष रुप से प्रदर्शित', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6746, 'in', 'options', 'विकल्प', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6747, 'in', 'edit', 'संपादित करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6748, 'in', 'duplicate', 'डुप्लिकेट', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6749, 'in', '1_download_the_skeleton_file_and_fill_it_with_data', '1. कंकाल फ़ाइल डाउनलोड करें और इसे डेटा के साथ भरें।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6750, 'in', '2_you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', '2. डेटा को कैसे भरना चाहिए, यह समझने के लिए आप उदाहरण फ़ाइल डाउनलोड कर सकते हैं।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6751, 'in', '3_once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', '3. एक बार जब आप कंकाल फ़ाइल को डाउनलोड और भर लें, तो नीचे दिए गए फॉर्म में अपलोड करें और सबमिट करें।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6752, 'in', '4_after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', '4. उत्पादों को अपलोड करने के बाद आपको उन्हें संपादित करने और उत्पादों की छवियों और विकल्पों को सेट करने की आवश्यकता है।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6753, 'in', 'download_csv', 'CSV डाउनलोड करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6754, 'in', '1_categorysub_categorysub_sub_category_and_brand_should_be_in_numerical_ids', '1. श्रेणी, उप श्रेणी, उप उप श्रेणी और ब्रांड संख्यात्मक आईडी में होनी चाहिए।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6755, 'in', '2_you_can_download_the_pdf_to_get_categorysub_categorysub_sub_category_and_brand_id', '2. आप श्रेणी, उप श्रेणी, उप उप श्रेणी और ब्रांड आईडी प्राप्त करने के लिए पीडीएफ डाउनलोड कर सकते हैं।', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6756, 'in', 'download_category', 'डाउनलोड श्रेणी', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6757, 'in', 'download_sub_category', 'उप श्रेणी डाउनलोड करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6758, 'in', 'download_sub_sub_category', 'उप सब कैटेगरी डाउनलोड करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6759, 'in', 'download_brand', 'ब्रांड डाउनलोड करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6760, 'in', 'upload_csv_file', 'CSV फ़ाइल अपलोड करें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6761, 'in', 'csv', 'सीएसवी', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6762, 'in', 'choose_csv_file', 'CSV फ़ाइल चुनें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6763, 'in', 'upload', 'डालना', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6764, 'in', 'add_new_digital_product', 'नया डिजिटल उत्पाद जोड़ें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6765, 'in', 'available_status', 'उपलब्ध स्थिति', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6766, 'in', 'admin_status', 'व्यवस्थापक की स्थिति', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6767, 'in', 'pending_balance', 'बकाया राशि', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6768, 'in', 'send_withdraw_request', 'विदड्रॉ रिक्वेस्ट भेजें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6769, 'in', 'withdraw_request_history', 'इतिहास वापस लेना', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6770, 'in', 'amount', 'रकम', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6771, 'in', 'status', 'स्थिति', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6772, 'in', 'message', 'संदेश', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6773, 'in', 'send_a_withdraw_request', 'एक निकासी अनुरोध भेजें', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6774, 'in', 'basic_info', 'बुनियादी जानकारी', '2021-02-09 07:07:18', '2021-09-20 07:29:27'),
(6775, 'in', 'your_phone', 'अपने फोन को', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6776, 'in', 'photo', 'तस्वीर', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6777, 'in', 'browse', 'ब्राउज़ करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6778, 'in', 'your_password', 'आपका पासवर्ड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6779, 'in', 'new_password', 'नया पासवर्ड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6780, 'in', 'confirm_password', 'पासवर्ड की पुष्टि कीजिये', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6781, 'in', 'add_new_address', 'नया पता जोड़ें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6782, 'in', 'payment_setting', 'भुगतान सेटिंग', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6783, 'in', 'cash_payment', 'नकद भुगतान', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6784, 'in', 'bank_payment', 'बैंक भुगतान', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6785, 'in', 'bank_name', 'बैंक का नाम', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6786, 'in', 'bank_account_name', 'बैंक खाते का नाम', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6787, 'in', 'bank_account_number', 'बैंक खाता संख्या', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6788, 'in', 'bank_routing_number', 'अधिकोष क्रम संख्या', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6789, 'in', 'update_profile', 'प्रोफ़ाइल अपडेट करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6790, 'in', 'change_your_email', 'अपना ईमेल बदलें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6791, 'in', 'your_email', 'आपका ईमेल', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6792, 'in', 'sending_email', 'ईमेल भेज रहा हूं...', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6793, 'in', 'verify', 'सत्यापित करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6794, 'in', 'update_email', 'ईमेल अपडेट करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6795, 'in', 'new_address', 'नया पता', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6796, 'in', 'your_address', 'तुम्हारा पता', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6797, 'in', 'country', 'देश', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6798, 'in', 'select_your_country', 'अपने देश का चयन करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6799, 'in', 'city', 'Faridabad', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6800, 'in', 'your_city', 'आपके शहर', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6801, 'in', 'your_postal_code', 'आपका डाक पिन', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6802, 'in', '880', '+880', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6803, 'in', 'save', 'सहेजें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6804, 'in', 'received_refund_request', 'रिफ़ंड रिक्वेस्ट मिली', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6805, 'in', 'delete_confirmation', 'पुष्टिकरण हटाएं', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6806, 'in', 'are_you_sure_to_delete_this', 'क्या आप इसे हटाना सुनिश्चित कर रहे हैं?', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6807, 'in', 'premium_packages_for_sellers', 'विक्रेताओं के लिए प्रीमियम पैकेज', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6808, 'in', 'product_upload', 'उत्पाद अपलोड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6809, 'in', 'digital_product_upload', 'डिजिटल उत्पाद अपलोड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6810, 'in', 'purchase_package', 'खरीद पैकेज', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6811, 'in', 'select_payment_type', 'भुगतान प्रकार चुनें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6812, 'in', 'payment_type', 'भुगतान प्रकार', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6813, 'in', 'select_one', 'एक चुनो', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6814, 'in', 'online_payment', 'ऑनलाइन भुगतान', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6815, 'in', 'offline_payment', 'ऑफ़लाइन भुगतान', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6816, 'in', 'purchase_your_package', 'आपका पैकेज खरीदें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6817, 'in', 'paypal', 'पेपैल', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6818, 'in', 'stripe', 'धारी', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6819, 'in', 'sslcommerz', 'sslcommerz', '2021-02-09 07:07:19', '2021-02-09 07:07:19'),
(6820, 'in', 'confirm', 'पुष्टि करें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6821, 'in', 'offline_package_payment', 'ऑफलाइन पैकेज भुगतान', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6822, 'in', 'transaction_id', 'लेनदेन आईडी', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6823, 'in', 'choose_image', 'छवि चुनें', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6824, 'in', 'code', 'कोड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6825, 'in', 'delivery_status', 'वितरण की स्थिति', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6826, 'in', 'payment_status', 'भुगतान की स्थिति', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6827, 'in', 'paid', 'भुगतान किया', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6828, 'in', 'order_details', 'ऑर्डर का विवरण', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6829, 'in', 'download_invoice', 'इनवाइस को डाउनलोड करो', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6830, 'in', 'unpaid', 'अवैतनिक', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6831, 'in', 'order_placed', 'आदेश रखा', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6832, 'in', 'confirmed', 'की पुष्टि की', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6833, 'in', 'on_delivery', 'डिलीवरी पर', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6834, 'in', 'delivered', 'पहुंचा दिया', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6835, 'in', 'order_summary', 'आदेश सारांश', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6836, 'in', 'order_code', 'आदेश कोड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6837, 'in', 'customer', 'ग्राहक', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6838, 'in', 'total_order_amount', 'कुल आदेश राशि', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6839, 'in', 'shipping_metdod', 'शिपिंग मेटडॉड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6840, 'in', 'flat_shipping_rate', 'फ्लैट नौवहन दर', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6841, 'in', 'payment_metdod', 'भुगतान मेटॉडोड', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6842, 'in', 'variation', 'भिन्नता', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6843, 'in', 'delivery_type', 'वितरण के प्रकार', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6844, 'in', 'home_delivery', 'घर पहुँचाना', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6845, 'in', 'order_ammount', 'आदेश अमाउंट', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6846, 'in', 'subtotal', 'उप-योग', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6847, 'in', 'shipping', 'शिपिंग', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6848, 'in', 'coupon_discount', 'कूपन छूट', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6849, 'in', 'na', 'एन / ए', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6850, 'in', 'in_stock', 'स्टॉक में', '2021-02-09 07:07:19', '2021-09-20 07:29:27'),
(6851, 'in', 'buy_now', 'अभी खरीदें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6852, 'in', 'item_added_to_your_cart', 'आइटम को आपके कार्ट में शामिल किया गया!', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6853, 'in', 'proceed_to_checkout', 'चेक आउट करने के लिए आगे बढ़ें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6854, 'in', 'cart_items', 'कार्ट आइटम', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6855, 'in', '1_my_cart', '1. मेरी गाड़ी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6856, 'in', 'view_cart', 'गाडी देंखे', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6857, 'in', '2_shipping_info', '2. शिपिंग जानकारी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6858, 'in', 'checkout', 'चेक आउट', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6859, 'in', '3_delivery_info', '3. डिलीवरी की जानकारी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6860, 'in', '4_payment', '4. भुगतान', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6861, 'in', '5_confirmation', '5. पुष्टि', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6862, 'in', 'remove', 'हटाना', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6863, 'in', 'return_to_shop', 'खरीदारी करने के लिए वापस लौटें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6864, 'in', 'continue_to_shipping', 'शिपिंग के लिए जारी रखें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6865, 'in', 'or', 'या', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6866, 'in', 'guest_checkout', 'अतिथि के होटल छोड़ने का समय', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6867, 'in', 'continue_to_delivery_info', 'डिलीवरी की जानकारी जारी रखें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6868, 'in', 'postal_code', 'डाक कोड', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6869, 'in', 'choose_delivery_type', 'वितरण प्रकार चुनें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6870, 'in', 'local_pickup', 'खुद जाकर ले आना', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6871, 'in', 'select_your_nearest_pickup_point', 'अपने निकटतम पिकअप बिंदु का चयन करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6872, 'in', 'continue_to_payment', 'भुगतान जारी रखें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6873, 'in', 'select_a_payment_option', 'एक भुगतान विकल्प चुनें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6874, 'in', 'razorpay', 'रज्जोर्पाय', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6875, 'in', 'paystack', 'तनख्वाह', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6876, 'in', 'voguepay', 'वोगपाय', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6877, 'in', 'payhere', 'यहां भुगतान करें', '2021-02-09 07:07:20', '2021-02-09 07:07:20'),
(6878, 'in', 'ngenius', 'जन्मजात', '2021-02-09 07:07:20', '2021-02-09 07:07:20'),
(6879, 'in', 'paytm', 'पेटीएम', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6880, 'in', 'cash_on_delivery', 'डिलवरी पर नकदी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6881, 'in', 'your_wallet_balance_', 'आपका बटुआ संतुलन:', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6882, 'in', 'insufficient_balance', 'अपर्याप्त शेषराशि', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6883, 'in', 'i_agree_to_the', 'मैं करने के लिए सहमत हूं', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6884, 'in', 'complete_order', 'आदेश पूरा', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6885, 'in', 'summary', 'सारांश', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6886, 'in', 'items', 'आइटम', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6887, 'in', 'total_club_point', 'कुल क्लब बिंदु', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6888, 'in', 'total_shipping', 'कुल शिपिंग', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6889, 'in', 'have_coupon_code_enter_here', 'कूपन कोड है? यहाँ से प्रवेश करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6890, 'in', 'apply', 'लागू', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6891, 'in', 'you_need_to_agree_with_our_policies', 'आपको हमारी नीतियों से सहमत होने की आवश्यकता है', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6892, 'in', 'forgot_password', 'पासवर्ड भूल गए', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6893, 'in', 'seo_setting', 'एसईओ सेटिंग', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6894, 'in', 'system_update', 'सिस्टम अद्यतन', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6895, 'in', 'add_new_payment_method', 'नई भुगतान विधि जोड़ें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6896, 'in', 'manual_payment_method', 'मैनुअल भुगतान विधि', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6897, 'in', 'heading', 'हेडिंग', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6898, 'in', 'logo', 'प्रतीक चिन्ह', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6899, 'in', 'manual_payment_information', 'मैनुअल भुगतान जानकारी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6900, 'in', 'type', 'प्रकार', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6901, 'in', 'custom_payment', 'कस्टम भुगतान', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6902, 'in', 'check_payment', 'भुगतान की जाँच करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6903, 'in', 'checkout_thumbnail', 'चेकआउट थंबनेल', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6904, 'in', 'payment_instruction', 'भुगतान अनुदेश', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6905, 'in', 'bank_information', 'बैंक संबंधी जानकारी', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6906, 'in', 'select_file', 'फ़ाइल का चयन करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6907, 'in', 'upload_new', 'नया अपलोड करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6908, 'in', 'sort_by_newest', 'नए द्वारा क्रमबद्ध करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6909, 'in', 'sort_by_oldest', 'सबसे पुराने द्वारा क्रमबद्ध करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6910, 'in', 'sort_by_smallest', 'सबसे छोटे द्वारा क्रमबद्ध करें', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6911, 'in', 'sort_by_largest', 'सबसे बड़ा छाँटकर', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6912, 'in', 'selected_only', 'केवल चयनित', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6913, 'in', 'no_files_found', 'कोई फाईल नहीं मिली', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6914, 'in', '0_file_selected', '0 फ़ाइल चयनित', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6915, 'in', 'clear', 'स्पष्ट', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6916, 'in', 'prev', 'प्रीव', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6917, 'in', 'next', 'अगला', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6918, 'in', 'add_files', 'फाइलें जोड़ो', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6919, 'in', 'method_has_been_inserted_successfully', 'विधि सफलतापूर्वक डाली गई है', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6920, 'in', 'order_date', 'आदेश की तारीख', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6921, 'in', 'bill_to', 'बिल प्राप्तकर्ता', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6922, 'in', 'sub_total', 'उप कुल', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6923, 'in', 'total_tax', 'कुल कर', '2021-02-09 07:07:20', '2021-09-20 07:29:27'),
(6924, 'in', 'grand_total', 'कुल योग', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6925, 'in', 'your_order_has_been_placed_successfully_please_submit_payment_information_from_purchase_history', 'आपका आदेश सफलतापूर्वक रखा गया है। कृपया खरीद इतिहास से भुगतान जानकारी सबमिट करें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6926, 'in', 'thank_you_for_your_order', 'आपके क्रय आदेश के लिए धन्यवाद!', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6927, 'in', 'order_code', 'आदेश कोड:', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6928, 'in', 'a_copy_or_your_order_summary_has_been_sent_to', 'एक प्रतिलिपि या आपका आदेश सारांश भेजा गया है', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6929, 'in', 'make_payment', 'भुगतान करें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6930, 'in', 'payment_screenshot', 'भुगतान स्क्रीनशॉट', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6931, 'in', 'paypal_credential', 'पेपैल क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6932, 'in', 'paypal_client_id', 'पेपैल ग्राहक आईडी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6933, 'in', 'paypal_client_secret', 'पेपैल ग्राहक गुप्त', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6934, 'in', 'paypal_sandbox_mode', 'पेपैल सैंडबॉक्स मोड', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6935, 'in', 'sslcommerz_credential', 'Sslcommerz क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6936, 'in', 'sslcz_store_id', 'Sslcz Store Id', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6937, 'in', 'sslcz_store_password', 'Sslcz स्टोर पासवर्ड', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6938, 'in', 'sslcommerz_sandbox_mode', 'Sslcommerz Sandbox मोड', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6939, 'in', 'stripe_credential', 'धारी साख', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6940, 'in', 'stripe_key', 'स्ट्रिप कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6941, 'in', 'stripe_secret', 'स्ट्रिप सिक्रेट', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6942, 'in', 'razorpay_credential', 'रज़ोरपे क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6943, 'in', 'razor_key', 'रेजर कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6944, 'in', 'razor_secret', 'RAZOR SECRET', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6945, 'in', 'instamojo_credential', 'Instamojo क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6946, 'in', 'api_key', 'एपीआई कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6947, 'in', 'im_api_key', 'आईएम एपीआई कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6948, 'in', 'auth_token', 'ऑटो टोकेन', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6949, 'in', 'im_auth_token', 'आईएम ऑटो टोकन', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6950, 'in', 'instamojo_sandbox_mode', 'Instamojo Sandbox मोड', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6951, 'in', 'paystack_credential', 'PayStack क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6952, 'in', 'public_key', 'सार्वजनिक कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6953, 'in', 'secret_key', 'गुप्त कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6954, 'in', 'merchant_email', 'मर्चेंट ईमेल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6955, 'in', 'voguepay_credential', 'VoguePay क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6956, 'in', 'merchant_id', 'व्यापारी आइडी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6957, 'in', 'sandbox_mode', 'सैंडबॉक्स मोड', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6958, 'in', 'payhere_credential', 'श्रेय देना', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6959, 'in', 'payhere_merchant_id', 'PAYHERE MERCHANT ID', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6960, 'in', 'payhere_secret', 'PAYHERE SECRET', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6961, 'in', 'payhere_currency', 'PAYHERE CURRENCY', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6962, 'in', 'payhere_sandbox_mode', 'सैंडबॉक्स मोड का भुगतान करें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6963, 'in', 'ngenius_credential', 'Ngenius क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6964, 'in', 'ngenius_outlet_id', 'NGENIUS OUTLET ID', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6965, 'in', 'ngenius_api_key', 'NGENIUS API कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6966, 'in', 'ngenius_currency', 'NGENIUS CURRENCY', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6967, 'in', 'mpesa_credential', 'Mpesa क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6968, 'in', 'mpesa_consumer_key', 'MPESA उपभोक्ता कुंजी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6969, 'in', 'mpesa_consumer_key', 'MPESA_CONSUMER_KEY', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6970, 'in', 'mpesa_consumer_secret', 'MPESA उपभोक्ता SECRET', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6971, 'in', 'mpesa_consumer_secret', 'MPESA_CONSUMER_SECRET', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6972, 'in', 'mpesa_short_code', 'MPESA SHORT CODE', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6973, 'in', 'mpesa_short_code', 'MPESA_SHORT_CODE', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6974, 'in', 'mpesa_sandbox_activation', 'MPESA SANDBOX गतिविधि', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6975, 'in', 'flutterwave_credential', 'फ्लटरवेट क्रेडेंशियल', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6976, 'in', 'rave_public_key', 'RAVE_PUBLIC_KEY', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6977, 'in', 'rave_secret_key', 'RAVE_SECRET_KEY', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6978, 'in', 'rave_title', 'RAVE_TITLE', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6979, 'in', 'stagin_activation', 'स्थिर गतिविधि', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6980, 'in', 'all_product', 'सभी उत्पाद', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6981, 'in', 'sort_by', 'इसके अनुसार क्रमबद्ध करें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6982, 'in', 'rating_high__low', 'रेटिंग (उच्च> निम्न)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6983, 'in', 'rating_low__high', 'रेटिंग (निम्न> उच्च)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6984, 'in', 'num_of_sale_high__low', 'बिक्री की संख्या (उच्च> कम)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6985, 'in', 'num_of_sale_low__high', 'बिक्री की संख्या (कम> उच्च)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6986, 'in', 'base_price_high__low', 'आधार मूल्य (उच्च> कम)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6987, 'in', 'base_price_low__high', 'आधार मूल्य (कम> उच्च)', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6988, 'in', 'type__enter', 'टाइप करें और एंटर करें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6989, 'in', 'added_by', 'द्वारा जोड़ा', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6990, 'in', 'num_of_sale', 'बिक्री की संख्या', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6991, 'in', 'total_stock', 'कुल स्टॉक', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6992, 'in', 'todays_deal', 'टोड्स डील', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6993, 'in', 'rating', 'रेटिंग', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6994, 'in', 'times', 'समय', '2021-02-09 07:07:21', '2021-02-09 07:07:21'),
(6995, 'in', 'add_nerw_product', 'Nerw उत्पाद जोड़ें', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6996, 'in', 'product_information', 'उत्पाद की जानकारी', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6997, 'in', 'unit', 'इकाई', '2021-02-09 07:07:21', '2021-09-20 07:29:27'),
(6998, 'in', 'unit_eg_kg_pc_etc', 'इकाई (उदाहरण केजी, पीसी आदि)', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(6999, 'in', 'minimum_qty', 'न्यूनतम मात्रा', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7000, 'in', 'tags', 'टैग', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7001, 'in', 'type_and_hit_enter_to_add_a_tag', 'टैग जोड़ने के लिए टाइप और हिट दर्ज करें', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7002, 'in', 'barcode', 'बारकोड', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7003, 'in', 'refundable', 'वापसी योग्य', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7004, 'in', 'product_images', 'उत्पाद छवियाँ', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7005, 'in', 'gallery_images', 'गैलरी छवियाँ', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7006, 'in', 'todays_deal_updated_successfully', 'टोड्स डील सफलतापूर्वक अपडेट की गई', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7007, 'in', 'published_products_updated_successfully', 'प्रकाशित उत्पाद सफलतापूर्वक अपडेट किए गए', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7008, 'in', 'thumbnail_image', 'थंबनेल छवि', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7009, 'in', 'featured_products_updated_successfully', 'विशेष रुप से प्रदर्शित उत्पाद सफलतापूर्वक अपडेट किए गए', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7010, 'in', 'product_videos', 'उत्पाद वीडियो', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7011, 'in', 'video_provider', 'वीडियो प्रदाता', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7012, 'in', 'youtube', 'यूट्यूब', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7013, 'in', 'dailymotion', 'डेलीमोशन', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7014, 'in', 'vimeo', 'Vimeo', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7015, 'in', 'video_link', 'वीडियो लिंक', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7016, 'in', 'product_variation', 'उत्पाद विविधता', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7017, 'in', 'colors', 'रंग की', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7018, 'in', 'attributes', 'विशेषताएँ', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7019, 'in', 'choose_attributes', 'विशेषताएँ चुनें', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7020, 'in', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'इस उत्पाद की विशेषताओं को चुनें और फिर प्रत्येक विशेषता के इनपुट मानों को', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7021, 'in', 'product_price__stock', 'उत्पाद की कीमत + स्टॉक', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7022, 'in', 'unit_price', 'यूनिट मूल्य', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7023, 'in', 'purchase_price', 'खरीद मूल्य', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7024, 'in', 'flat', 'समतल', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7025, 'in', 'percent', 'प्रतिशत है', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7026, 'in', 'discount', 'छूट', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7027, 'in', 'product_description', 'उत्पाद वर्णन', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7028, 'in', 'product_shipping_cost', 'उत्पाद शिपिंग लागत', '2021-02-09 07:07:22', '2021-09-20 07:29:27'),
(7029, 'in', 'free_shipping', 'मुफ़्त शिपिंग', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7030, 'in', 'flat_rate', 'फ्लैट रेट', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7031, 'in', 'shipping_cost', 'शिपिंग लागत', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7032, 'in', 'pdf_specification', 'पीडीएफ विशिष्टता', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7033, 'in', 'seo_meta_tags', 'एसईओ मेटा टैग', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7034, 'in', 'meta_title', 'मेटा शीर्षक', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7035, 'in', 'meta_image', 'मेटा इमेज', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7036, 'in', 'choice_title', 'पसंद का शीर्षक', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7037, 'in', 'enter_choice_values', 'पसंद मान दर्ज करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7038, 'in', 'all_categories', 'सब वर्ग', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7039, 'in', 'add_new_category', 'नई श्रेणी जोड़ें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7040, 'in', 'type_name__enter', 'नाम टाइप करें और दर्ज करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7041, 'in', 'banner', 'बैनर', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7042, 'in', 'commission', 'आयोग', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7043, 'in', 'icon', 'आइकन', '2021-02-09 07:07:22', '2021-02-09 07:07:22'),
(7044, 'in', 'featured_categories_updated_successfully', 'विशेष रूप से अपडेट की गई श्रेणियां', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7045, 'in', 'hot', 'गरम', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7046, 'in', 'filter_by_payment_status', 'भुगतान स्थिति द्वारा फ़िल्टर करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7047, 'in', 'unpaid', 'अन-पेड', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7048, 'in', 'filter_by_deliver_status', 'डेलीवर स्थिति के अनुसार फ़िल्टर करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7049, 'in', 'pending', 'लंबित है', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7050, 'in', 'type_order_code__hit_enter', 'ऑर्डर कोड टाइप करें और एंटर दबाएं', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7051, 'in', 'num_of_products', 'अंक। उत्पादों की', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7052, 'in', 'walk_in_customer', 'ग्राहक में चलो', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7053, 'in', 'qty', 'मात्रा', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7054, 'in', 'without_shipping_charge', 'बिना शिपिंग चार्ज', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7055, 'in', 'with_shipping_charge', 'शिपिंग चार्ज के साथ', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7056, 'in', 'pay_with_cash', 'नकद के साथ भुगतान करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7057, 'in', 'shipping_address', 'शिपिंग पता', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7058, 'in', 'close', 'बंद करे', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7059, 'in', 'select_country', 'देश चुनें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7060, 'in', 'order_confirmation', 'आदेश की पुष्टि', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7061, 'in', 'are_you_sure_to_confirm_this_order', 'क्या आप इस आदेश की पुष्टि करना सुनिश्चित करते हैं?', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7062, 'in', 'comfirm_order', 'Comfirm आदेश', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7063, 'in', 'personal_info', 'व्यक्तिगत जानकारी', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7064, 'in', 'repeat_password', 'पासवर्ड दोहराएं', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7065, 'in', 'shop_name', 'दुकान का नाम', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7066, 'in', 'register_your_shop', 'अपनी दुकान पंजीकृत करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7067, 'in', 'affiliate_informations', 'संबद्ध जानकारी', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7068, 'in', 'affiliate', 'संबद्ध करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7069, 'in', 'user_info', 'उपयोगकर्ता जानकारी', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7070, 'in', 'installed_addon', 'एडऑन स्थापित किया', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7071, 'in', 'available_addon', 'उपलब्ध एडऑन', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7072, 'in', 'install_new_addon', 'नया Addon स्थापित करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7073, 'in', 'version', 'संस्करण', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7074, 'in', 'activated', 'सक्रिय किया हुआ', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7075, 'in', 'deactivated', 'निष्क्रिय कर दिया', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7076, 'in', 'activate_otp', 'OTP को सक्रिय करें', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7077, 'in', 'otp_will_be_used_for', 'OTP का उपयोग किया जाएगा', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7078, 'in', 'settings_updated_successfully', 'सेटिंग्स सफलतापूर्वक अपडेट की गईं', '2021-02-09 07:07:22', '2021-09-20 07:29:28'),
(7079, 'in', 'product_owner', 'उत्पाद स्वामी', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7080, 'in', 'point', 'बिंदु', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7081, 'in', 'set_point_for_product_within_a_range', 'एक सीमा के भीतर उत्पाद के लिए बिंदु निर्धारित करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7082, 'in', 'set_point_for_multiple_products', 'कई उत्पादों के लिए प्वाइंट सेट करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7083, 'in', 'min_price', 'न्यूनतम मूल्य', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7084, 'in', 'max_price', 'अधिकतम मूल्य', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7085, 'in', 'set_point_for_all_products', 'सभी उत्पादों के लिए बिंदु निर्धारित करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7086, 'in', 'set_point_for_', 'के लिए बिंदु निर्धारित करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7087, 'in', 'convert_status', 'स्थिति बदलें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7088, 'in', 'earned_at', 'पर अर्जित किया', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7089, 'in', 'seller_based_selling_report', 'विक्रेता आधारित विक्रय रिपोर्ट', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7090, 'in', 'sort_by_verificarion_status', 'क्रमानुसार स्थिति के अनुसार क्रमबद्ध करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7091, 'in', 'approved', 'मंजूर की', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7092, 'in', 'non_approved', 'गैर अनुमोदित', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7093, 'in', 'filter', 'फ़िल्टर करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7094, 'in', 'seller_name', 'विक्रेता का नाम', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7095, 'in', 'number_of_product_sale', 'उत्पाद बिक्री की संख्या', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7096, 'in', 'order_amount', 'ऑर्डर करने की राशि', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7097, 'in', 'facebook_chat_setting', 'फेसबुक चैट सेटिंग', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7098, 'in', 'facebook_page_id', 'फेसबुक पेज आईडी', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7099, 'in', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'कृपया सावधान रहें जब आप फेसबुक चैट को कॉन्फ़िगर कर रहे हैं। गलत कॉन्फ़िगरेशन के लिए आपको अपने यूज़र-एंड साइट पर मैसेंजर आइकन नहीं मिलेगा।', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7100, 'in', 'login_into_your_facebook_page', 'अपने फेसबुक पेज में लॉगिन करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7101, 'in', 'find_the_about_option_of_your_facebook_page', 'अपने फेसबुक पेज के बारे में विकल्प खोजें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7102, 'in', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'सबसे नीचे, आप \\ \"फेसबुक पेज आईडी \\\" पा सकते हैं', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7103, 'in', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'अपने पृष्ठ की सेटिंग में जाएं और \\ \"एडवांस मैसेजिंग \\\" का विकल्प खोजें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7104, 'in', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'उस पृष्ठ को नीचे स्क्रॉल करें और आपको \"सफेद सूचीबद्ध डोमेन\" मिल जाएगा', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7105, 'in', 'set_your_website_domain_name', 'अपना वेबसाइट डोमेन नाम सेट करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7106, 'in', 'google_recaptcha_setting', 'Google reCAPTCHA सेटिंग', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7107, 'in', 'site_key', 'कार्यस्थल की कुंजी', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7108, 'in', 'select_shipping_method', 'जलयात्रा पद्धति का चयन करें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7109, 'in', 'product_wise_shipping_cost', 'उत्पाद वार शिपिंग लागत', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7110, 'in', 'flat_rate_shipping_cost', 'फ्लैट दर शिपिंग लागत', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7111, 'in', 'seller_wise_flat_shipping_cost', 'विक्रेता बुद्धिमान फ्लैट शिपिंग लागत', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7112, 'in', 'note', 'ध्यान दें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7113, 'in', 'product_wise_shipping_cost_calulation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'उत्पाद वार शिपिंग लागत की गणना: शिपिंग लागत की गणना प्रत्येक उत्पाद शिपिंग लागत के अलावा की जाती है', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7114, 'in', 'flat_rate_shipping_cost_calulation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'फ़्लैट रेट शिपिंग कॉस्ट केल्युलेशन: ग्राहक द्वारा कितने उत्पादों की खरीद, कोई फर्क नहीं पड़ता। शिपिंग लागत तय है', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7115, 'in', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_a_customer_purchase_2_product_from_two_seller_shipping_cost_is_calculate_by_addition_of_each_seller_flat_shipping_cost', 'विक्रेता वार फ्लैट शिपिंग लागत की समाप्ति: प्रत्येक विक्रेता के लिए निश्चित दर। यदि कोई ग्राहक दो विक्रेता शिपिंग लागत से 2 उत्पाद खरीदता है, तो प्रत्येक विक्रेता फ्लैट शिपिंग लागत को जोड़कर गणना की जाती है', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7116, 'in', 'flat_rate_cost', 'फ्लैट दर लागत', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7117, 'in', 'shipping_cost_for_admin_products', 'व्यवस्थापक उत्पादों के लिए शिपिंग लागत', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7118, 'in', 'countries', 'देश', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7119, 'in', 'showhide', 'दिखाओ छुपाओ', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7120, 'in', 'country_status_updated_successfully', 'देश की स्थिति सफलतापूर्वक अपडेट की गई', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7121, 'in', 'all_subcategories', 'सभी उपश्रेणियाँ', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7122, 'in', 'add_new_subcategory', 'नई उपश्रेणी जोड़ें', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7123, 'in', 'subcategories', 'उप-श्रेणियाँ', '2021-02-09 07:07:23', '2021-09-20 07:29:28'),
(7124, 'in', 'sub_category_information', 'उप श्रेणी जानकारी', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7125, 'in', 'slug', 'स्लग', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7126, 'in', 'all_sub_subcategories', 'सभी उप उपश्रेणियाँ', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7127, 'in', 'add_new_sub_subcategory', 'नई उप उपश्रेणी जोड़ें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7128, 'in', 'subsubcategories', 'उप-उप-श्रेणियां', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7129, 'in', 'make_this_default', 'इसे डिफ़ॉल्ट बनाएं', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7130, 'in', 'shops', 'दुकानें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7131, 'in', 'women_clothing__fashion', 'महिला वस्त्र और फैशन', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7132, 'in', 'cellphones__tabs', 'सेलफोन और टैब', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7133, 'in', 'welcome_to', 'में स्वागत', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7134, 'in', 'create_a_new_account', 'एक नया खाता बनाएं', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7135, 'in', 'full_name', 'पूरा नाम', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7136, 'in', 'password', 'पारण शब्द', '2021-02-09 07:08:11', '2021-02-09 07:08:11'),
(7137, 'in', 'confrim_password', 'पासवर्ड की पुष्टि करें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7138, 'in', 'i_agree_with_the', 'मैं इससे सहमत हूं', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7139, 'in', 'terms_and_conditions', 'नियम और शर्तें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7140, 'in', 'register', 'रजिस्टर करें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7141, 'in', 'already_have_an_account', 'क्या आपके पास पहले से एक खाता मौजूद है', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7142, 'in', 'sign_up_with', 'इसके साथ साइन अप करें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7143, 'in', 'i_agree_with_the_terms_and_conditions', 'मैं नियम और शर्तों से सहमत हूं', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7144, 'in', 'all_role', 'सभी भूमिका', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7145, 'in', 'add_new_role', 'नई भूमिका जोड़ें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7146, 'in', 'roles', 'रोल्स', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7147, 'in', 'add_new_staffs', 'नए कर्मचारी जोड़ें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7148, 'in', 'role', 'भूमिका', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7149, 'in', 'frontend_website_name', 'फ्रंटेंड वेबसाइट का नाम', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7150, 'in', 'website_name', 'वेबसाइट का नाम', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7151, 'in', 'site_motto', 'साइट का आदर्श वाक्य', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7152, 'in', 'best_ecommerce_website', 'सर्वश्रेष्ठ ईकामर्स वेबसाइट', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7153, 'in', 'site_icon', 'साइट आइकन', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7154, 'in', 'website_favicon_32x32_png', 'वेबसाइट favicon। 32x32 .png', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7155, 'in', 'website_base_color', 'वेबसाइट का आधार रंग', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7156, 'in', 'hex_color_code', 'हेक्स रंग कोड', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7157, 'in', 'website_base_hover_color', 'वेबसाइट बेस हॉवर कलर', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7158, 'in', 'update', 'अपडेट करें', '2021-02-09 07:08:11', '2021-09-20 07:29:28'),
(7159, 'in', 'global_seo', 'ग्लोबल एसईओ', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7160, 'in', 'meta_description', 'मेटा विवरण', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7161, 'in', 'keywords', 'कीवर्ड', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7162, 'in', 'separate_with_coma', 'कोमा से अलग', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7163, 'in', 'website_pages', 'वेबसाइट के पेज', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7164, 'in', 'all_pages', 'सभी पेज', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7165, 'in', 'add_new_page', 'नया पेज जोड़ें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7166, 'in', 'url', 'URL', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7167, 'in', 'actions', 'क्रिया', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7168, 'in', 'edit_page_information', 'पृष्ठ जानकारी संपादित करें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7169, 'in', 'page_content', 'पृष्ठ सामग्री', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7170, 'in', 'title', 'शीर्षक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7171, 'in', 'link', 'संपर्क', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7172, 'in', 'use_character_number_hypen_only', 'चरित्र, संख्या, सम्मोहन का ही उपयोग करें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7173, 'in', 'add_content', 'सामग्री जोड़ें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7174, 'in', 'seo_fields', 'एसईओ फील्ड्स', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7175, 'in', 'update_page', 'अद्यतन पृष्ठ', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7176, 'in', 'default_language', 'डिफ़ॉल्ट भाषा', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7177, 'in', 'add_new_language', 'नई भाषा जोड़ें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7178, 'in', 'rtl', 'आरटीएल', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7179, 'in', 'translation', 'अनुवाद', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7180, 'in', 'language_information', 'भाषा की जानकारी', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7181, 'in', 'save_page', 'पेज सुरक्षित करें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7182, 'in', 'home_page_settings', 'मुख पृष्ठ सेटिंग्स', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7183, 'in', 'home_slider', 'होम स्लाइडर', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7184, 'in', 'photos__links', 'तस्वीरें और लिंक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7185, 'in', 'add_new', 'नया जोड़ो', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7186, 'in', 'home_categories', 'घर श्रेणियाँ', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7187, 'in', 'home_banner_1_max_3', 'होम बैनर 1 (अधिकतम 3)', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7188, 'in', 'banner__links', 'बैनर और लिंक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7189, 'in', 'home_banner_2_max_3', 'होम बैनर 2 (अधिकतम 3)', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7190, 'in', 'top_10', 'सर्वोत्तम 10', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7191, 'in', 'top_categories_max_10', 'शीर्ष श्रेणियां (अधिकतम 10)', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7192, 'in', 'top_brands_max_10', 'शीर्ष ब्रांड (अधिकतम 10)', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7193, 'in', 'system_name', 'सिस्टम का नाम', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7194, 'in', 'system_logo__white', 'सिस्टम लोगो - सफेद', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7195, 'in', 'choose_files', 'फ़ाइलों का चयन करें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7196, 'in', 'will_be_used_in_admin_panel_side_menu', 'व्यवस्थापक पैनल साइड मेनू में उपयोग किया जाएगा', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7197, 'in', 'system_logo__black', 'सिस्टम लोगो - काला', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7198, 'in', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'मोबाइल + व्यवस्थापक लॉगिन पृष्ठ में व्यवस्थापक पैनल टॉपबार में उपयोग किया जाएगा', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7199, 'in', 'system_timezone', 'सिस्टम टाइमज़ोन', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7200, 'in', 'admin_login_page_background', 'व्यवस्थापक लॉगिन पृष्ठ की पृष्ठभूमि', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7201, 'in', 'website_header', 'वेबसाइट हैडर', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7202, 'in', 'header_setting', 'हैडर सेटिंग', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7203, 'in', 'header_logo', 'शीर्षलेख का लोगो', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7204, 'in', 'show_language_switcher', 'भाषा स्विचर दिखाएँ?', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7205, 'in', 'show_currency_switcher', 'करेंसी स्विचर दिखाओ?', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7206, 'in', 'enable_stikcy_header', 'स्टिकसी हेडर सक्षम करें?', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7207, 'in', 'website_footer', 'वेबसाइट पाद', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7208, 'in', 'footer_widget', 'पाद विजेट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7209, 'in', 'about_widget', 'विजेट के बारे में', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7210, 'in', 'footer_logo', 'पाद लोगो', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7211, 'in', 'about_description', 'विवरण के बारे में', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7212, 'in', 'contact_info_widget', 'संपर्क जानकारी विजेट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7213, 'in', 'footer_contact_address', 'पाद संपर्क संपर्क पता', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7214, 'in', 'footer_contact_phone', 'पाद संपर्क फोन', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7215, 'in', 'footer_contact_email', 'पाद संपर्क ईमेल', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7216, 'in', 'link_widget_one', 'लिंक विजेट एक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7217, 'in', 'links', 'लिंक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7218, 'in', 'footer_bottom', 'पाद नीचे', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7219, 'in', 'copyright_widget_', 'कॉपीराइट विजेट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7220, 'in', 'copyright_text', 'कॉपीराइट पाठ', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7221, 'in', 'social_link_widget_', 'सामाजिक लिंक विजेट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7222, 'in', 'show_social_links', 'सामाजिक लिंक दिखाएं?', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7223, 'in', 'social_links', 'सामाजिक लिंक', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7224, 'in', 'payment_methods_widget_', 'भुगतान के तरीके विजेट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7225, 'in', 'rtl_status_updated_successfully', 'RTL स्थिति सफलतापूर्वक अपडेट की गई', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7226, 'in', 'language_changed_to_', 'भाषा बदल गई', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7227, 'in', 'inhouse_product_sale_report', 'इनहाउस उत्पाद बिक्री रिपोर्ट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7228, 'in', 'sort_by_category', 'श्रेणी के आधार पर छाँटें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7229, 'in', 'product_wise_stock_report', 'उत्पाद वार स्टॉक रिपोर्ट', '2021-02-09 07:08:12', '2021-09-20 07:29:28');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(7230, 'in', 'currency_changed_to_', 'मुद्रा में बदल गया', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7231, 'in', 'avatar', 'अवतार', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7232, 'in', 'copy', 'कॉपी करें', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7233, 'in', 'variant', 'वेरिएंट', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7234, 'in', 'variant_price', 'भिन्न मूल्य', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7235, 'in', 'sku', 'SKU', '2021-02-09 07:08:12', '2021-09-20 07:29:28'),
(7236, 'in', 'key', 'चाभी', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7237, 'in', 'value', 'मान', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7238, 'in', 'copy_translations', 'अनुवाद की प्रतिलिपि बनाएँ', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7239, 'in', 'all_pickup_points', 'सभी पिक-अप अंक', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7240, 'in', 'add_new_pickup_point', 'नया पिक-अप पॉइंट जोड़ें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7241, 'in', 'manager', 'प्रबंधक', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7242, 'in', 'location', 'स्थान', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7243, 'in', 'pickup_station_contact', 'पिकअप स्टेशन संपर्क', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7244, 'in', 'open', 'खुला हुआ', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7245, 'in', 'pos_activation_for_seller', 'विक्रेता के लिए POS सक्रियण', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7246, 'in', 'order_completed_successfully', 'आदेश सफलतापूर्वक पूरा हुआ।', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7247, 'in', 'text_input', 'पाठ इनपुट', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7248, 'in', 'select', 'चुनते हैं', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7249, 'in', 'multiple_select', 'एकाधिक चयन करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7250, 'in', 'radio', 'रेडियो', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7251, 'in', 'file', 'फ़ाइल', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7252, 'in', 'email_address', 'ईमेल पता', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7253, 'in', 'verification_info', 'सत्यापन की जानकारी', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7254, 'in', 'approval', 'अनुमोदन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7255, 'in', 'due_amount', 'बकाया राशि', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7256, 'in', 'show', 'प्रदर्शन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7257, 'in', 'pay_now', 'अब भुगतान करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7258, 'in', 'affiliate_user_verification', 'संबद्ध उपयोगकर्ता सत्यापन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7259, 'in', 'reject', 'अस्वीकार', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7260, 'in', 'accept', 'स्वीकार करना', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7261, 'in', 'beauty_health__hair', 'सौंदर्य, स्वास्थ्य और बाल', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7262, 'in', 'comparison', 'तुलना', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7263, 'in', 'reset_compare_list', 'रीसेट सूची की तुलना करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7264, 'in', 'your_comparison_list_is_empty', 'आपकी तुलना सूची खाली है', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7265, 'in', 'convert_point_to_wallet', 'Convert Point to Wallet', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7266, 'in', 'note_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'नोट: आपको क्लब पॉइंट एडऑन का उपयोग करने से पहले पहले वॉलेट विकल्प को सक्रिय करना होगा।', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7267, 'in', 'create_an_account', 'खाता बनाएं।', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7268, 'in', 'use_email_instead', 'इसके बजाय ईमेल का उपयोग करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7269, 'in', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'साइन अप करके आप हमारे नियमों और शर्तों से सहमत हैं।', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7270, 'in', 'create_account', 'खाता बनाएं', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7271, 'in', 'or_join_with', 'या के साथ जुड़ें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7272, 'in', 'already_have_an_account', 'क्या आपके पास पहले से एक खाता मौजूद है?', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7273, 'in', 'log_in', 'लॉग इन करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7274, 'in', 'computer__accessories', 'कंप्यूटर के सहायक उपकरण', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7275, 'in', 'products', 'उत्पाद', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7276, 'in', 'in_your_cart', 'आपकी गाड़ी में', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7277, 'in', 'in_your_wishlist', 'आपकी इच्छा सूची में', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7278, 'in', 'you_ordered', 'आपने ऑर्डर किया', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7279, 'in', 'default_shipping_address', 'सामान भेजने के लिए मूल पता', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7280, 'in', 'sports__outdoor', 'खेल और आउटडोर', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7281, 'in', 'copied', 'नकल की गई', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7282, 'in', 'copy_the_promote_link', 'प्रचार लिंक की प्रतिलिपि बनाएँ', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7283, 'in', 'write_a_review', 'एक समीक्षा लिखे', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7284, 'in', 'your_name', 'तुम्हारा नाम', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7285, 'in', 'comment', 'टिप्पणी', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7286, 'in', 'your_review', 'आपकी समीक्षा', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7287, 'in', 'submit_review', 'समीक्षा जमा करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7288, 'in', 'claire_willis', 'क्लेयर विलिस', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7289, 'in', 'germaine_greene', 'जर्मेन ग्रीन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7290, 'in', 'product_file', 'उत्पाद फ़ाइल', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7291, 'in', 'choose_file', 'फ़ाइल का चयन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7292, 'in', 'type_to_add_a_tag', 'एक टैग जोड़ने के लिए टाइप करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7293, 'in', 'images', 'इमेजिस', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7294, 'in', 'main_images', 'मुख्य चित्र', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7295, 'in', 'meta_tags', 'मेटा टैग', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7296, 'in', 'digital_product_has_been_inserted_successfully', 'डिजिटल उत्पाद सफलतापूर्वक डाला गया है', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7297, 'in', 'edit_digital_product', 'डिजिटल उत्पाद संपादित करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7298, 'in', 'select_an_option', 'कोई विकल्प चुनें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7299, 'in', 'tax', 'कर', '2021-02-09 07:08:13', '2021-02-09 07:08:13'),
(7300, 'in', 'any_question_about_this_product', 'इस उत्पाद के बारे में कोई प्रश्न?', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7301, 'in', 'sign_in', 'साइन इन करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7302, 'in', 'login_with_google', 'Google के साथ लॉगिन करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7303, 'in', 'login_with_facebook', 'फेसबुक में जाये', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7304, 'in', 'login_with_twitter', 'ट्विटर से लॉगिन करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7305, 'in', 'click_to_show_phone_number', 'फ़ोन नंबर दिखाने के लिए क्लिक करें', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7306, 'in', 'other_ads_of', 'के अन्य विज्ञापन', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7307, 'in', 'store_home', 'भंडार घर', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7308, 'in', 'top_selling', 'शीर्ष विक्रय', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7309, 'in', 'shop_settings', 'दुकान सेटिंग्स', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7310, 'in', 'visit_shop', 'दुकान पर जाएँ', '2021-02-09 07:08:13', '2021-09-20 07:29:28'),
(7311, 'in', 'pickup_points', 'पिकअप अंक', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7312, 'in', 'select_pickup_point', 'पिकअप प्वाइंट का चयन करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7313, 'in', 'slider_settings', 'स्लाइडर सेटिंग्स', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7314, 'in', 'social_media_link', 'सोशल मीडिया लिंक', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7315, 'in', 'facebook', 'फेसबुक', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7316, 'in', 'twitter', 'ट्विटर', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7317, 'in', 'google', 'गूगल', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7318, 'in', 'new_arrival_products', 'नए आगमन उत्पाद', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7319, 'in', 'check_your_order_status', 'अपने ऑर्डर की स्थिति जांचें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7320, 'in', 'shipping_method', 'शिपिंग का तरीका', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7321, 'in', 'shipped_by', 'द्वारा भेजा गया', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7322, 'in', 'image', 'छवि', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7323, 'in', 'sub_sub_category', 'उप उप श्रेणी', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7324, 'in', 'inhouse_products', 'इनहाउस उत्पाद', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7325, 'in', 'forgot_password', 'पासवर्ड भूल गए?', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7326, 'in', 'enter_your_email_address_to_recover_your_password', 'अपना पासवर्ड पुनर्प्राप्त करने के लिए अपना ईमेल पता दर्ज करें।', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7327, 'in', 'email_or_phone', 'ईमेल या फोन', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7328, 'in', 'send_password_reset_link', 'पासवर्ड रीसेट लिंक भेजें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7329, 'in', 'back_to_login', 'लॉगिन पर वापस जाएं', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7330, 'in', 'index', 'सूचकांक', '2021-02-09 07:08:14', '2021-02-09 07:08:14'),
(7331, 'in', 'download_your_product', 'अपने उत्पाद को डाउनलोड करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7332, 'in', 'option', 'विकल्प', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7333, 'in', 'applied_refund_request', 'एप्लाइड रिफंड अनुरोध', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7334, 'in', 'item_has_been_renoved_from_wishlist', 'आइटम को विशलिस्ट से बदल दिया गया है', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7335, 'in', 'bulk_products_upload', 'थोक उत्पाद अपलोड करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7336, 'in', 'upload_csv', 'CSV अपलोड करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7337, 'in', 'create_a_ticket', 'एक टिकट बनाएँ', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7338, 'in', 'tickets', 'टिकट', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7339, 'in', 'ticket_id', 'टिकट आईडी', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7340, 'in', 'sending_date', 'भेजने की तिथि', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7341, 'in', 'subject', 'विषय', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7342, 'in', 'view_details', 'विवरण देखें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7343, 'in', 'provide_a_detailed_description', 'विस्तृत विवरण प्रदान करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7344, 'in', 'type_your_reply', 'अपना उत्तर लिखें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7345, 'in', 'send_ticket', 'टिकट भेजें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7346, 'in', 'load_more', 'और लोड करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7347, 'in', 'jewelry__watches', 'गहने और घड़ियाँ', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7348, 'in', 'filters', 'फिल्टर करता है', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7349, 'in', 'contact_address', 'संपर्क पता', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7350, 'in', 'contact_phone', 'संपर्क फ़ोन', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7351, 'in', 'contact_email', 'ई - मेल से संपर्क करे', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7352, 'in', 'filter_by', 'के द्वारा छनित', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7353, 'in', 'condition', 'स्थिति', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7354, 'in', 'all_type', 'हर तरह के', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7355, 'in', 'pay_with_wallet', 'बटुए के साथ भुगतान करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7356, 'in', 'select_variation', 'भिन्नता का चयन करें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7357, 'in', 'no_product_added', 'कोई उत्पाद नहीं जोड़ा गया', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7358, 'in', 'status_has_been_updated_successfully', 'स्थिति सफलतापूर्वक अपडेट कर दी गई है', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7359, 'in', 'all_seller_packages', 'सभी विक्रेता पैकेज', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7360, 'in', 'add_new_package', 'नया पैकेज जोड़ें', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7361, 'in', 'package_logo', 'पैकेज लोगो', '2021-02-09 07:08:14', '2021-09-20 07:29:28'),
(7362, 'in', 'days', 'दिन', '2021-02-09 07:08:14', '2021-02-09 07:08:14'),
(7363, 'in', 'create_new_seller_package', 'नया विक्रेता पैकेज बनाएँ', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7364, 'in', 'package_name', 'पैकेज का नाम', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7365, 'in', 'duration', 'अवधि', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7366, 'in', 'validity_in_number_of_days', 'दिनों की संख्या में वैधता', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7367, 'in', 'update_package_information', 'अद्यतन पैकेज जानकारी', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7368, 'in', 'package_has_been_inserted_successfully', 'पैकेज सफलतापूर्वक डाला गया है', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7369, 'in', 'refund_request', 'धन वापस करने का अनुरोध', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7370, 'in', 'reason', 'कारण', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7371, 'in', 'label', 'लेबल', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7372, 'in', 'select_label', 'लेबल का चयन करें', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7373, 'in', 'multiple_select_label', 'एकाधिक चयन लेबल', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7374, 'in', 'radio_label', 'रेडियो लेबल', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7375, 'in', 'pickup_point_orders', 'पिकअप प्वाइंट आदेश', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7376, 'in', 'view', 'राय', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7377, 'in', 'order_', 'गण #', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7378, 'in', 'order_status', 'आदेश की स्थिति', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7379, 'in', 'total_amount', 'कुल रकम', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7380, 'in', 'total', 'कुल', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7381, 'in', 'delivery_status_has_been_updated', 'वितरण की स्थिति अपडेट कर दी गई है', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7382, 'in', 'payment_status_has_been_updated', 'भुगतान की स्थिति अपडेट कर दी गई है', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7383, 'in', 'invoice', 'चालान', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7384, 'in', 'set_refund_time', 'रिफंड समय निर्धारित करें', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7385, 'in', 'set_time_for_sending_refund_request', 'धनवापसी अनुरोध भेजने का समय निर्धारित करें', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7386, 'in', 'set_refund_sticker', 'रिफ़ंड स्टिकर सेट करें', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7387, 'in', 'sticker', 'स्टिकर', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7388, 'in', 'refund_request_all', 'वापसी का अनुरोध सभी', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7389, 'in', 'order_id', 'आदेश ID', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7390, 'in', 'seller_approval', 'विक्रेता अनुमोदन', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7391, 'in', 'admin_approval', 'व्यवस्थापक अनुमोदन', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7392, 'in', 'refund_status', 'वापसी की स्थिति', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7393, 'in', 'no_refund', 'कोई प्रतिदाय नहीं', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7394, 'in', 'status_updated_successfully', 'स्थिति सफलतापूर्वक अपडेट की गई', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7395, 'in', 'user_search_report', 'उपयोगकर्ता खोज रिपोर्ट', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7396, 'in', 'search_by', 'द्वारा खोज', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7397, 'in', 'number_searches', 'नंबर खोजता है', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7398, 'in', 'sender', 'प्रेषक', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7399, 'in', 'receiver', 'प्राप्त करने वाला', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7400, 'in', 'verification_form_updated_successfully', 'सत्यापन फ़ॉर्म सफलतापूर्वक अपडेट किया गया', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7401, 'in', 'invalid_email_or_password', 'अमान्य ईमेल या पासवर्ड', '2021-02-09 07:08:14', '2021-09-20 07:29:29'),
(7402, 'in', 'all_coupons', 'सभी कूपन', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7403, 'in', 'add_new_coupon', 'नया कूपन जोड़ें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7404, 'in', 'coupon_information', 'कूपन जानकारी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7405, 'in', 'start_date', 'आरंभ करने की तिथि', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7406, 'in', 'end_date', 'समाप्ति तिथि', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7407, 'in', 'product_base', 'उत्पाद का आधार', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7408, 'in', 'send_newsletter', 'न्यूज़लेटर भेजें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7409, 'in', 'mobile_users', 'मोबाइल उपयोगकर्ता', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7410, 'in', 'sms_subject', 'एसएमएस विषय', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7411, 'in', 'sms_content', 'एसएमएस सामग्री', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7412, 'in', 'all_flash_delas', 'सभी फ्लैश डेल्स', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7413, 'in', 'create_new_flash_dela', 'नई फ्लैश Dela बनाएँ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7414, 'in', 'page_link', 'पेज लिंक', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7415, 'in', 'flash_deal_information', 'फ्लैश डील की जानकारी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7416, 'in', 'background_color', 'पीछे का रंग', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7417, 'in', '0000ff', '# 0000ff', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7418, 'in', 'text_color', 'लिखावट का रंग', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7419, 'in', 'white', 'सफेद', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7420, 'in', 'dark', 'अंधेरा', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7421, 'in', 'choose_products', 'उत्पाद चुनें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7422, 'in', 'discounts', 'छूट देता है', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7423, 'in', 'discount_type', 'डिस्काउंट प्रकार', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7424, 'in', 'twillo_credential', 'ट्विल्लो क्रेडेंशियल', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7425, 'in', 'twilio_sid', 'TWILIO SID', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7426, 'in', 'twilio_auth_token', 'TWILIO ऑटो टोकन', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7427, 'in', 'twilio_verify_sid', 'TWILIO VERIFY SID', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7428, 'in', 'valid_twillo_number', 'वैध दो नंबर', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7429, 'in', 'nexmo_credential', 'नेक्समो क्रेडेंशियल', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7430, 'in', 'nexmo_key', 'NEXMO कुंजी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7431, 'in', 'nexmo_secret', 'NEXMO SECRET', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7432, 'in', 'ssl_wireless_credential', 'एसएसएल वायरलेस क्रेडेंशियल', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7433, 'in', 'ssl_sms_api_token', 'एसएसएल एसएमएस एपीआई टोकन', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7434, 'in', 'ssl_sms_sid', 'एसएसएल एसएमएस एसआईडी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7435, 'in', 'ssl_sms_url', 'एसएसएल एसएमएस यूआरएल', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7436, 'in', 'fast2sms_credential', 'Fast2SMS क्रेडेंशियल', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7437, 'in', 'auth_key', 'प्रमाणन कुंजी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7438, 'in', 'route', 'मार्ग', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7439, 'in', 'promotional_use', 'प्रचारक उपयोग', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7440, 'in', 'transactional_use', 'लेन-देन का उपयोग', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7441, 'in', 'sender_id', 'प्रेषक आईडी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7442, 'in', 'nexmo_otp', 'नेक्समो ओटीपी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7443, 'in', 'twillo_otp', 'ट्विलो ओटीपी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7444, 'in', 'ssl_wireless_otp', 'एसएसएल वायरलेस ओटीपी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7445, 'in', 'fast2sms_otp', 'Fast2SMS OTP', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7446, 'in', 'order_placement', 'ऑर्डर देना', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7447, 'in', 'delivery_status_changing_time', 'डिलीवरी की स्थिति बदलने का समय', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7448, 'in', 'paid_status_changing_time', 'पेड स्टेटस चेंजिंग टाइम', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7449, 'in', 'send_bulk_sms', 'थोक एसएमएस भेजें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7450, 'in', 'all_subscribers', 'सभी सदस्य', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7451, 'in', 'coupon_information_adding', 'कूपन जानकारी जोड़ना', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7452, 'in', 'coupon_type', 'कूपन प्रकार', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7453, 'in', 'for_products', 'उत्पादों के लिए', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7454, 'in', 'for_total_orders', 'कुल आदेशों के लिए', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7455, 'in', 'add_your_product_base_coupon', 'अपना उत्पाद आधार कूपन जोड़ें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7456, 'in', 'coupon_code', 'कूपन कोड', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7457, 'in', 'sub_category', 'उप श्रेणी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7458, 'in', 'add_more', 'अधिक जोड़ें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7459, 'in', 'add_your_cart_base_coupon', 'अपनी गाड़ी का आधार कूपन जोड़ें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7460, 'in', 'minimum_shopping', 'न्यूनतम खरीदारी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7461, 'in', 'maximum_discount_amount', 'अधिकतम छूट राशि', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7462, 'in', 'coupon_information_update', 'कूपन सूचना अद्यतन', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7463, 'in', 'please_configure_smtp_setting_to_work_all_email_sending_funtionality', 'कृपया सभी ईमेल भेजने के लिए SMTP सेटिंग कॉन्फ़िगर करें, जो फ़ंक्शनलिटी भेज रही है', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7464, 'in', 'configure_now', 'अब कॉन्फ़िगर करें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7465, 'in', 'total_published_products', 'कुल प्रकाशित उत्पाद', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7466, 'in', 'total_sellers_products', 'कुल विक्रेता उत्पाद', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7467, 'in', 'total_admin_products', 'कुल व्यवस्थापक उत्पाद', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7468, 'in', 'manage_products', 'उत्पाद प्रबंधित करें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7469, 'in', 'total_product_category', 'कुल उत्पाद श्रेणी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7470, 'in', 'create_category', 'श्रेणी बनाएँ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7471, 'in', 'total_product_sub_sub_category', 'कुल उत्पाद उप उप श्रेणी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7472, 'in', 'create_sub_sub_category', 'उप सब कैटेगरी बनाएँ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7473, 'in', 'total_product_sub_category', 'कुल उत्पाद उप श्रेणी', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7474, 'in', 'create_sub_category', 'उप श्रेणी बनाएँ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7475, 'in', 'total_product_brand', 'कुल उत्पाद ब्रांड', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7476, 'in', 'create_brand', 'ब्रांड बनाएँ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7477, 'in', 'total_sellers', 'कुल विक्रेता', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7478, 'in', 'total_approved_sellers', 'कुल अनुमोदित विक्रेता', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7479, 'in', 'total_pending_sellers', 'कुल लंबित विक्रेता', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7480, 'in', 'manage_sellers', 'विक्रेताओं को प्रबंधित करें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7481, 'in', 'category_wise_product_sale', 'श्रेणी वार उत्पाद बिक्री', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7482, 'in', 'sale', 'बिक्री', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7483, 'in', 'category_wise_product_stock', 'श्रेणी वार उत्पाद स्टॉक', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7484, 'in', 'category_name', 'श्रेणी नाम', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7485, 'in', 'stock', 'भण्डार', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7486, 'in', 'frontend', 'फ़्रंट एंड', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7487, 'in', 'home_page', 'मुख पृष्ठ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7488, 'in', 'setting', 'स्थापना', '2021-02-09 07:08:15', '2021-02-09 07:08:15'),
(7489, 'in', 'policy_page', 'नीति पृष्ठ', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7490, 'in', 'general', 'सामान्य', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7491, 'in', 'click_here', 'यहां क्लिक करें', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7492, 'in', 'useful_link', 'उपयोगी लिंक', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7493, 'in', 'activation', 'सक्रियण', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7494, 'in', 'smtp', 'SMTP', '2021-02-09 07:08:15', '2021-09-20 07:29:29'),
(7495, 'in', 'payment_method', 'भुगतान विधि', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7496, 'in', 'social_media', 'सामाजिक मीडिया', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7497, 'in', 'business', 'व्यापार', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7498, 'in', 'seller_verification', 'विक्रेता सत्यापन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7499, 'in', 'form_setting', 'फार्म सेटिंग', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7500, 'in', 'language', 'भाषा: हिन्दी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7501, 'in', 'dashboard', 'डैशबोर्ड', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7502, 'in', 'pos_system', 'पीओएस सिस्टम', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7503, 'in', 'pos_manager', 'पीओएस मैनेजर', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7504, 'in', 'pos_configuration', 'पीओएस कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7505, 'in', 'products', 'उत्पाद', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7506, 'in', 'add_new_product', 'नया उत्पाद जोड़ें', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7507, 'in', 'all_products', 'सभी प्रोडक्ट', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7508, 'in', 'in_house_products', 'हाउस प्रोडक्ट्स में', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7509, 'in', 'seller_products', 'विक्रेता उत्पाद', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7510, 'in', 'digital_products', 'डिजिटल उत्पाद', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7511, 'in', 'bulk_import', 'थोक आयात', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7512, 'in', 'bulk_export', 'थोक निर्यात', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7513, 'in', 'category', 'वर्ग', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7514, 'in', 'subcategory', 'उपश्रेणी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7515, 'in', 'sub_subcategory', 'उप उपश्रेणी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7516, 'in', 'brand', 'ब्रांड', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7517, 'in', 'attribute', 'विशेषता', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7518, 'in', 'product_reviews', 'उत्पाद की समीक्षा', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7519, 'in', 'sales', 'बिक्री', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7520, 'in', 'all_orders', 'सभी आदेश', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7521, 'in', 'inhouse_orders', 'इनहाउस आदेश', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7522, 'in', 'seller_orders', 'विक्रेता आदेश', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7523, 'in', 'pickup_point_order', 'पिक-अप पॉइंट ऑर्डर', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7524, 'in', 'refunds', 'धन वापसी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7525, 'in', 'refund_requests', 'वापसी का अनुरोध', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7526, 'in', 'approved_refund', 'स्वीकृत धन वापसी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7527, 'in', 'refund_configuration', 'रिफंड कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7528, 'in', 'customers', 'ग्राहक', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7529, 'in', 'customer_list', 'ग्राहकू सूची', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7530, 'in', 'classified_products', 'वर्गीकृत उत्पाद', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7531, 'in', 'classified_packages', 'वर्गीकृत पैकेज', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7532, 'in', 'sellers', 'बेचने वाला', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7533, 'in', 'all_seller', 'सभी विक्रेता', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7534, 'in', 'payouts', 'भुगतान करता है', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7535, 'in', 'payout_requests', 'भुगतान अनुरोध', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7536, 'in', 'seller_commission', 'विक्रेता आयोग', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7537, 'in', 'seller_packages', 'विक्रेता संकुल', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7538, 'in', 'seller_verification_form', 'विक्रेता सत्यापन प्रपत्र', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7539, 'in', 'reports', 'रिपोर्ट', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7540, 'in', 'in_house_product_sale', 'हाउस प्रोडक्ट सेल में', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7541, 'in', 'seller_products_sale', 'विक्रेता उत्पाद बिक्री', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7542, 'in', 'products_stock', 'उत्पाद स्टॉक', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7543, 'in', 'products_wishlist', 'उत्पाद इच्छा सूची', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7544, 'in', 'user_searches', 'उपयोगकर्ता खोजें', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7545, 'in', 'marketing', 'विपणन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7546, 'in', 'flash_deals', 'फ्लैश सौदों', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7547, 'in', 'newsletters', 'समाचारपत्रिकाएँ', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7548, 'in', 'bulk_sms', 'बड़ी संख्या में एसएमएस', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7549, 'in', 'subscribers', 'सदस्य', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7550, 'in', 'coupon', 'कूपन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7551, 'in', 'support', 'सहयोग', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7552, 'in', 'ticket', 'टिकट', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7553, 'in', 'product_queries', 'उत्पाद क्वेरी', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7554, 'in', 'website_setup', 'वेबसाइट सेटअप', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7555, 'in', 'header', 'हेडर', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7556, 'in', 'footer', 'फुटर', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7557, 'in', 'pages', 'पेज', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7558, 'in', 'appearance', 'रूप', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7559, 'in', 'setup__configurations', 'सेटअप और कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7560, 'in', 'general_settings', 'सामान्य सेटिंग्स', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7561, 'in', 'features_activation', 'सक्रियण सुविधाएँ', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7562, 'in', 'languages', 'भाषाएँ', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7563, 'in', 'currency', 'मुद्रा', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7564, 'in', 'pickup_point', 'पिक अप बिंदु', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7565, 'in', 'smtp_settings', 'SMTP सेटिंग्स', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7566, 'in', 'payment_methods', 'भुगतान की विधि', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7567, 'in', 'file_system_configuration', 'फ़ाइल सिस्टम कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7568, 'in', 'social_media_logins', 'सोशल मीडिया लॉगिन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7569, 'in', 'analytics_tools', 'विश्लेषिकी उपकरण', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7570, 'in', 'facebook_chat', 'फेसबुक लिखचित', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7571, 'in', 'google_recaptcha', 'Google reCAPTCHA', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7572, 'in', 'shipping_configuration', 'शिपिंग कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7573, 'in', 'shipping_countries', 'नौवहन देश', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7574, 'in', 'affiliate_system', 'संबद्ध प्रणाली', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7575, 'in', 'affiliate_registration_form', 'संबद्ध पंजीकरण फॉर्म', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7576, 'in', 'affiliate_configurations', 'संबद्ध कॉन्फ़िगरेशन', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7577, 'in', 'affiliate_users', 'संबद्ध उपयोगकर्ता', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7578, 'in', 'referral_users', 'रेफरल उपयोगकर्ता', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7579, 'in', 'affiliate_withdraw_requests', 'संबद्ध निकासी अनुरोध', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7580, 'in', 'offline_payment_system', 'ऑफलाइन भुगतान प्रणाली', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7581, 'in', 'manual_payment_methods', 'मैनुअल भुगतान के तरीके', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7582, 'in', 'offline_wallet_recharge', 'ऑफलाइन वॉलेट रिचार्ज', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7583, 'in', 'offline_customer_package_payments', 'ऑफलाइन ग्राहक पैकेज भुगतान', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7584, 'in', 'offline_seller_package_payments', 'ऑफलाइन विक्रेता पैकेज भुगतान', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7585, 'in', 'paytm_payment_gateway', 'पेटीएम पेमेंट गेटवे', '2021-02-09 07:08:16', '2021-09-20 07:29:29'),
(7586, 'in', 'set_paytm_credentials', 'पेटीएम क्रेडेंशियल सेट करें', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7587, 'in', 'club_point_system', 'क्लब प्वाइंट सिस्टम', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7588, 'in', 'club_point_configurations', 'क्लब प्वाइंट कॉन्फ़िगरेशन', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7589, 'in', 'set_product_point', 'उत्पाद बिंदु सेट करें', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7590, 'in', 'user_points', 'उपयोगकर्ता अंक', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7591, 'in', 'otp_system', 'ओटीपी सिस्टम', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7592, 'in', 'otp_configurations', 'OTP कॉन्फ़िगरेशन', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7593, 'in', 'set_otp_credentials', 'OTP क्रेडेंशियल सेट करें', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7594, 'in', 'staffs', 'कर्मचारी', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7595, 'in', 'all_staffs', 'सभी कर्मचारी', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7596, 'in', 'staff_permissions', 'स्टाफ की अनुमति', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7597, 'in', 'addon_manager', 'एडऑन मैनेजर', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7598, 'in', 'browse_website', 'वेबसाइट ब्राउज़ करें', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7599, 'in', 'pos', 'पीओएस', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7600, 'in', 'notifications', 'सूचनाएं', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7601, 'in', 'new_orders', 'नए आदेश', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7602, 'in', 'userimage', 'उपयोगकर्ता-छवि', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7603, 'in', 'profile', 'प्रोफाइल', '2021-02-09 07:08:17', '2021-09-20 07:29:29'),
(7604, 'in', 'logout', 'लॉग आउट', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7605, 'in', 'page_not_found', 'पृष्ठ नहीं मिला!', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7606, 'in', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'जो पृष्ठ आप खोज रहे हैं, वह हमारे सर्वर पर नहीं मिला है।', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7607, 'in', 'registration', 'पंजीकरण', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7608, 'in', 'i_am_shopping_for', 'मेरी खरीदारी है किसलिए...', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7609, 'in', 'compare', 'तुलना कीजिए', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7610, 'in', 'wishlist', 'विशलिस्ट', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7611, 'in', 'cart', 'गाड़ी', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7612, 'in', 'your_cart_is_empty', 'आपकी गाड़ी खाली है', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7613, 'in', 'categories', 'श्रेणियाँ', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7614, 'in', 'see_all', 'सभी देखें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7615, 'in', 'seller_policy', 'विक्रेता नीति', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7616, 'in', 'return_policy', 'वापसी नीति', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7617, 'in', 'support_policy', 'समर्थन नीति', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7618, 'in', 'privacy_policy', 'गोपनीयता नीति', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7619, 'in', 'your_email_address', 'आपका ईमेल पता', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7620, 'in', 'subscribe', 'सदस्यता लें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7621, 'in', 'contact_info', 'संपर्क सूचना', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7622, 'in', 'address', 'पता', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7623, 'in', 'phone', 'फ़ोन', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7624, 'in', 'email', 'ईमेल', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7625, 'in', 'login', 'लॉग इन करें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7626, 'in', 'my_account', 'मेरा खाता', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7627, 'in', 'order_history', 'आदेश इतिहास', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7628, 'in', 'my_wishlist', 'मेरी इच्छा सूची', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7629, 'in', 'track_order', 'ऑर्डर पर नज़र रखना', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7630, 'in', 'be_an_affiliate_partner', 'सहयोगी बनो', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7631, 'in', 'be_a_seller', 'एक विक्रेता बनो', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7632, 'in', 'apply_now', 'अभी अप्लाई करें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7633, 'in', 'confirmation', 'पुष्टि', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7634, 'in', 'delete_confirmation_message', 'पुष्टिकरण संदेश हटाएं', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7635, 'in', 'cancel', 'रद्द करना', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7636, 'in', 'delete', 'हटा दें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7637, 'in', 'item_has_been_added_to_compare_list', 'सूची की तुलना करने के लिए आइटम जोड़ा गया है', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7638, 'in', 'please_login_first', 'पहले प्रवेश करें', '2021-02-09 07:08:44', '2021-09-20 07:29:29'),
(7639, 'in', 'total_earnings_from', 'से कुल कमाई', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7640, 'in', 'client_subscription', 'ग्राहक सदस्यता', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7641, 'in', 'product_category', 'उत्पाद श्रेणी', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7642, 'in', 'product_sub_sub_category', 'उत्पाद उप उप श्रेणी', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7643, 'in', 'product_sub_category', 'उत्पाद उप श्रेणी', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7644, 'in', 'product_brand', 'उत्पाद का ब्रांड', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7645, 'in', 'top_client_packages', 'शीर्ष ग्राहक पैकेज', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7646, 'in', 'top_freelancer_packages', 'शीर्ष फ्रीलांसर पैकेज', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7647, 'in', 'number_of_sale', 'बिक्री की संख्या', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7648, 'in', 'number_of_stock', 'स्टॉक की संख्या', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7649, 'in', 'top_10_products', 'शीर्ष 10 उत्पाद', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7650, 'in', 'top_12_products', 'शीर्ष 12 उत्पाद', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7651, 'in', 'admin_can_not_be_a_seller', 'व्यवस्थापक विक्रेता नहीं हो सकता', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7652, 'in', 'filter_by_rating', 'फ़िल्टर रेटिंग द्वारा', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7653, 'in', 'published_reviews_updated_successfully', 'प्रकाशित समीक्षाएँ सफलतापूर्वक अपडेट की गईं', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7654, 'in', 'refund_sticker_has_been_updated_successfully', 'रिफंड स्टिकर को सफलतापूर्वक अपडेट किया गया है', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7655, 'in', 'edit_product', 'उत्पाद संपादित करें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7656, 'in', 'meta_images', 'मेटा छवियाँ', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7657, 'in', 'update_product', 'अद्यतन उत्पाद', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7658, 'in', 'product_has_been_deleted_successfully', 'उत्पाद सफलतापूर्वक हटा दिया गया है', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7659, 'in', 'your_profile_has_been_updated_successfully', 'आपकी प्रोफ़ाइल सफलतापूर्वक अद्यतन किया गया है!', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7660, 'in', 'upload_limit_has_been_reached_please_upgrade_your_package', 'अपलोड सीमा समाप्त हो गई है। कृपया अपना पैकेज अपग्रेड करें।', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7661, 'in', 'add_your_product', 'अपने उत्पाद जोड़ें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7662, 'in', 'select_a_category', 'एक श्रेणी चुनें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7663, 'in', 'select_a_brand', 'एक ब्रांड का चयन करें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7664, 'in', 'product_unit', 'उत्पाद इकाई', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7665, 'in', 'minimum_qty', 'न्यूनतम मात्रा।', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7666, 'in', 'product_tag', 'उत्पाद टैग', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7667, 'in', 'type__hit_enter', 'टाइप करें और एंटर करें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7668, 'in', 'videos', 'वीडियो', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7669, 'in', 'video_from', 'वीडियो से', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7670, 'in', 'video_url', 'वीडियो यूआरएल', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7671, 'in', 'customer_choice', 'ग्राहक की पसंद', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7672, 'in', 'pdf', 'पीडीएफ', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7673, 'in', 'choose_pdf', 'पीडीएफ चुनें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7674, 'in', 'select_category', 'श्रेणी चुनना', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7675, 'in', 'target_category', 'लक्ष्य श्रेणी', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7676, 'in', 'subsubcategory', 'उप-वर्ग', '2021-02-09 07:08:45', '2021-02-09 07:08:45'),
(7677, 'in', 'search_category', 'श्रेणी खोजें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7678, 'in', 'search_subcategory', 'उपश्रेणी खोजें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7679, 'in', 'search_subsubcategory', 'SubSubCategory खोजें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7680, 'in', 'update_your_product', 'अपने उत्पाद को अपडेट करें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7681, 'in', 'product_has_been_updated_successfully', 'उत्पाद सफलतापूर्वक अपडेट किया गया है', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7682, 'in', 'add_your_digital_product', 'अपने डिजिटल उत्पाद जोड़ें', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7683, 'in', 'active_ecommerce_cms_update_process', 'सक्रिय ईकामर्स सीएमएस अपडेट प्रक्रिया', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7684, 'in', 'codecanyon_purchase_code', 'कोडेकनयन खरीद कोड', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7685, 'in', 'database_name', 'डेटाबेस का नाम', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7686, 'in', 'database_username', 'डेटाबेस उपयोगकर्ता नाम', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7687, 'in', 'database_password', 'डेटाबेस पासवर्ड', '2021-02-09 07:08:45', '2021-09-20 07:29:29'),
(7688, 'in', 'database_hostname', 'डेटाबेस होस्टनाम', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7689, 'in', 'update_now', 'अभी अद्यतन करें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7690, 'in', 'congratulations', 'बधाई हो', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7691, 'in', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'आपने अद्यतन प्रक्रिया सफलतापूर्वक पूरी कर ली है। जारी रखने के लिए लॉग इन करें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7692, 'in', 'go_to_home', 'घर जाओ', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7693, 'in', 'login_to_admin_panel', 'व्यवस्थापक पैनल में लॉगिन करें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7694, 'in', 's3_file_system_credentials', 'S3 फ़ाइल सिस्टम क्रेडेंशियल', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7695, 'in', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7696, 'in', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7697, 'in', 'aws_default_region', 'AWS_DEFAULT_REGION', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7698, 'in', 'aws_bucket', 'AWS_BUCKET', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7699, 'in', 'aws_url', 'AWS_URL', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7700, 'in', 's3_file_system_activation', 'S3 फ़ाइल सिस्टम सक्रियण', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7701, 'in', 'your_phone_number', 'आपका फोन नंबर', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7702, 'in', 'zip_file', 'ज़िप फ़ाइल', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7703, 'in', 'install', 'इंस्टॉल', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7704, 'in', 'this_version_is_not_capable_of_installing_addons_please_update', 'यह संस्करण Addons स्थापित करने में सक्षम नहीं है, कृपया अपडेट करें।', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7705, 'in', 'search_in_menu', 'मेनू में खोजें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7706, 'in', 'uploaded_files', 'अपलोड की गई फाइलें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7707, 'in', 'shipping_cities', 'शिपिंग शहर', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7708, 'in', 'system', 'प्रणाली', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7709, 'in', 'server_status', 'सर्वर की स्थिति', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7710, 'in', 'nothing_found', 'कुछ नहीं मिला', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7711, 'in', 'parent_category', 'अभिभावक श्रेणी', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7712, 'in', 'level', 'स्तर', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7713, 'in', 'category_information', 'श्रेणी की जानकारी', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7714, 'in', 'translatable', 'अनुवाद करने योग्य', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7715, 'in', 'no_parent', 'कोई जनक नहीं', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7716, 'in', 'physical', 'शारीरिक', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7717, 'in', 'digital', 'डिजिटल', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7718, 'in', '200x200', '200x200', '2021-02-09 07:08:45', '2021-02-09 07:08:45'),
(7719, 'in', '32x32', '32x32', '2021-02-09 07:08:45', '2021-02-09 07:08:45'),
(7720, 'in', 'search_your_files', 'अपनी फ़ाइलें खोजें', '2021-02-09 07:08:45', '2021-09-20 07:29:30'),
(7721, 'in', 'category_has_been_updated_successfully', 'श्रेणी को सफलतापूर्वक अपडेट कर दिया गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7722, 'in', 'all_uploaded_files', 'सभी अपलोड की गई फ़ाइलें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7723, 'in', 'upload_new_file', 'नई फ़ाइल अपलोड करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7724, 'in', 'all_files', 'सारे दस्तावेज', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7725, 'in', 'search', 'खोज', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7726, 'in', 'details_info', 'विवरण जानकारी', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7727, 'in', 'copy_link', 'लिंक की प्रतिलिपि करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7728, 'in', 'are_you_sure_to_delete_this_file', 'क्या आप इस फ़ाइल को हटाना सुनिश्चित कर रहे हैं?', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7729, 'in', 'file_info', 'फाइल के बारे में', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7730, 'in', 'link_copied_to_clipboard', 'लिंक को क्लिपबोर्ड पर कॉपी किया गया', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7731, 'in', 'oops_unable_to_copy', 'ओह, कॉपी करने में असमर्थ', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7732, 'in', 'file_deleted_successfully', 'फ़ाइल सफलतापूर्वक हटा दी गई', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7733, 'in', 'add_new_brand', 'नया ब्रांड जोड़ें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7734, 'in', '120x80', '120x80', '2021-02-09 07:08:46', '2021-02-09 07:08:46'),
(7735, 'in', 'brand_information', 'ब्रांड जानकारी', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7736, 'in', 'brand_has_been_updated_successfully', 'ब्रांड को सफलतापूर्वक अपडेट कर दिया गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7737, 'in', 'brand_has_been_deleted_successfully', 'ब्रांड को सफलतापूर्वक हटा दिया गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7738, 'in', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'यह खोज के लिए उपयोग किया जाता है। उन शब्दों को इनपुट करें जिनके द्वारा कटर इस उत्पाद को पा सकते हैं।', '2021-02-09 07:08:46', '2021-09-20 07:29:30');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(7739, 'in', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'ये चित्र उत्पाद विवरण पृष्ठ गैलरी में दिखाई देते हैं। 600x600 आकारों की छवियों का उपयोग करें।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7740, 'in', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'यह छवि सभी उत्पाद बॉक्स में दिखाई देती है। 300x300 आकार की छवि का उपयोग करें। अपनी छवि के मुख्य ऑब्जेक्ट के चारों ओर कुछ खाली जगह रखें क्योंकि हमें इसे उत्तरदायी बनाने के लिए विभिन्न उपकरणों में कुछ किनारे लगाने थे।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7741, 'in', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'अतिरिक्त पैरामीटर के बिना उचित लिंक का उपयोग करें। शॉर्ट शेयर लिंक / एंबेडेड iframe कोड का उपयोग न करें।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7742, 'in', 'save_product', 'उत्पाद सहेजें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7743, 'in', 'product_has_been_inserted_successfully', 'उत्पाद सफलतापूर्वक डाला गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7744, 'in', 'something_went_wrong', 'कुछ गलत हो गया!', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7745, 'in', 'sorry_for_the_inconvenience_but_were_working_on_it', 'असुविधा के लिए खेद है, लेकिन हम इस पर काम कर रहे हैं।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7746, 'in', 'error_code', 'एरर कोड', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7747, 'in', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'कृपया कार्यक्षमता भेजने वाले सभी ईमेल को काम करने के लिए SMTP सेटिंग कॉन्फ़िगर करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7748, 'in', 'order', 'गण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7749, 'in', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'UI को बनाए रखने के लिए हमारे पास सीमित बैनर ऊंचाई है। हमें अलग-अलग उपकरणों के लिए इसे संवेदनशील बनाने के लिए बाईं और दाईं ओर से फ़सल करनी थी। बैनर डिजाइन करने से पहले इन बिंदुओं को ध्यान में रखें।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7750, 'in', 'home_banner_3_max_3', 'होम बैनर 3 (अधिकतम 3)', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7751, 'in', 'add_new_seller', 'नया विक्रेता जोड़ें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7752, 'in', 'filter_by_approval', 'स्वीकृति द्वारा फ़िल्टर करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7753, 'in', 'nonapproved', 'गैर-स्वीकृत', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7754, 'in', 'type_name_or_email__enter', 'नाम या ईमेल लिखें और दर्ज करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7755, 'in', 'due_to_seller', 'विक्रेता के कारण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7756, 'in', 'log_in_as_this_seller', 'इस विक्रेता के रूप में लॉग इन करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7757, 'in', 'go_to_payment', 'पेमेंट पर जाएं', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7758, 'in', 'ban_this_seller', 'इस विक्रेता को प्रतिबंधित करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7759, 'in', 'do_you_really_want_to_ban_this_seller', 'क्या आप वास्तव में इस विक्रेता को प्रतिबंधित करना चाहते हैं?', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7760, 'in', 'proceed', 'आगे बढ़ें!', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7761, 'in', 'approved_sellers_updated_successfully', 'स्वीकृत विक्रेता सफलतापूर्वक अपडेट किए गए', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7762, 'in', 'seller_has_been_deleted_successfully', 'विक्रेता को सफलतापूर्वक हटा दिया गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7763, 'in', 'seller_information', 'विक्रेता जानकारी', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7764, 'in', 'seller_has_been_inserted_successfully', 'विक्रेता को सफलतापूर्वक डाला गया है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7765, 'in', 'email_already_exists', 'ईमेल पहले से ही मौजूद है!', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7766, 'in', 'verify_your_email_address', 'अपने ईमेल पते की पुष्टि करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7767, 'in', 'before_proceeding_please_check_your_email_for_a_verification_link', 'आगे बढ़ने से पहले, सत्यापन लिंक के लिए कृपया अपना ईमेल देखें।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7768, 'in', 'if_you_did_not_receive_the_email', 'यदि आपको ईमेल प्राप्त नहीं हुआ है।', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7769, 'in', 'click_here_to_request_another', 'दूसरा अनुरोध करने के लिए यहां क्लिक करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7770, 'in', 'email_verification', 'ई - मेल सत्यापन', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7771, 'in', 'email_verification__', 'ई - मेल सत्यापन -', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7772, 'in', 'https_activation', 'HTTPS एक्टिवेशन', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7773, 'in', 'maintenance_mode', 'रखरखाव मोड', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7774, 'in', 'maintenance_mode_activation', 'रखरखाव मोड सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7775, 'in', 'classified_product_activate', 'वर्गीकृत उत्पाद सक्रिय करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7776, 'in', 'classified_product', 'वर्गीकृत उत्पाद', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7777, 'in', 'business_related', 'कारोबार से जुड़ा हुआ', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7778, 'in', 'vendor_system_activation', 'विक्रेता प्रणाली सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7779, 'in', 'wallet_system_activation', 'वॉलेट सिस्टम सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7780, 'in', 'coupon_system_activation', 'कूपन प्रणाली सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7781, 'in', 'pickup_point_activation', 'पिकअप प्वाइंट सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7782, 'in', 'conversation_activation', 'वार्तालाप सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7783, 'in', 'guest_checkout_activation', 'अतिथि चेकआउट सक्रियकरण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7784, 'in', 'categorybased_commission', 'श्रेणी-आधारित आयोग', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7785, 'in', 'after_activate_this_option_seller_commision_will_be_disabled_and_you_need_to_set_commission_on_each_category_otherwise_admin_will_not_get_any_commision', 'इस विकल्प को सक्रिय करने के बाद सेलर कमिशन डिसेबल हो जाएगा और आपको प्रत्येक श्रेणी पर कमीशन सेट करना होगा अन्यथा एडमिन को कोई भी कमिशन नहीं मिलेगा', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7786, 'in', 'set_commisssion_now', 'अब कमिशन सेट करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7787, 'in', 'payment_related', 'भुगतान संबंधी', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7788, 'in', 'paypal_payment_activation', 'पेपैल भुगतान सक्रियकरण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7789, 'in', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको पेपैल को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7790, 'in', 'stripe_payment_activation', 'धारी भुगतान सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7791, 'in', 'sslcommerz_activation', 'SSlCommerz सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7792, 'in', 'instamojo_payment_activation', 'Instamojo Payment एक्टिवेशन', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7793, 'in', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको Instamojo Payment को सही तरीके से कॉन्फ़िगर करना होगा', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7794, 'in', 'razor_pay_activation', 'रेजर पे एक्टिवेशन', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7795, 'in', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको रेजर को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7796, 'in', 'paystack_activation', 'PayStack सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7797, 'in', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको PayStack को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7798, 'in', 'voguepay_activation', 'VoguePay सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7799, 'in', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको VoguePay को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7800, 'in', 'payhere_activation', 'सक्रियता का भुगतान करें', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7801, 'in', 'ngenius_activation', 'Ngenius सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7802, 'in', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको Ngenius को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7803, 'in', 'iyzico_activation', 'इज़िको सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7804, 'in', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको iyzico को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7805, 'in', 'bkash_activation', 'Bkash सक्रियण', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7806, 'in', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको bkash को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7807, 'in', 'nagad_activation', 'नागद सक्रियता', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7808, 'in', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको सही ढंग से नगाड को कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:46', '2021-09-20 07:29:30'),
(7809, 'in', 'cash_payment_activation', 'नकद भुगतान सक्रियकरण', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7810, 'in', 'social_media_login', 'सोशल मीडिया लॉगिन', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7811, 'in', 'facebook_login', 'फेसबुक लॉग इन', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7812, 'in', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको फेसबुक क्लाइंट को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7813, 'in', 'google_login', 'Google लॉगिन', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7814, 'in', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको Google क्लाइंट को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7815, 'in', 'twitter_login', 'ट्विटर लॉगिन', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7816, 'in', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'इस सुविधा को सक्षम करने के लिए आपको ट्विटर क्लाइंट को सही ढंग से कॉन्फ़िगर करने की आवश्यकता है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7817, 'in', 'shop_logo', 'दुकान का लोगो', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7818, 'in', 'shop_address', 'दुकान का पता', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7819, 'in', 'banner_settings', 'बैनर सेटिंग्स', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7820, 'in', 'banners', 'बैनर', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7821, 'in', 'we_had_to_limit_height_to_maintian_consistancy_in_some_device_both_side_of_the_banner_might_be_cropped_for_height_limitation', 'हमें मुख्य स्थिरता से ऊंचाई को सीमित करना था। कुछ डिवाइस में बैनर के दोनों तरफ ऊंचाई सीमा के लिए फसली हो सकती है।', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7822, 'in', 'insert_link_with_https_', 'Https के साथ लिंक डालें', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7823, 'in', 'your_shop_has_been_updated_successfully', 'आपकी दुकान सफलतापूर्वक अपडेट हो गई है!', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7824, 'in', 'search_result_for_', 'के लिए खोज परिणाम', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7825, 'in', 'brand_has_been_inserted_successfully', 'ब्रांड को सफलतापूर्वक डाला गया है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7826, 'in', 'about', 'के बारे में', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7827, 'in', 'payout_info', 'पेआउट जानकारी', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7828, 'in', 'bank_acc_name', 'बैंक Acc नाम', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7829, 'in', 'bank_acc_number', 'बैंक Acc नंबर', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7830, 'in', 'total_products', 'कुल उत्पाद', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7831, 'in', 'total_sold_amount', 'कुल बेची गई राशि', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7832, 'in', 'wallet_balance', 'बटुआ संतुलन', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7833, 'in', 'cookies_agreement', 'कुकीज़ समझौता', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7834, 'in', 'cookies_agreement_text', 'कुकीज़ समझौता पाठ', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7835, 'in', 'show_cookies_agreement', 'कुकीज़ समझौता दिखाएँ?', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7836, 'in', 'custom_script', 'कस्टम स्क्रिप्ट', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7837, 'in', 'header_custom_script__before_head', 'हेडर कस्टम स्क्रिप्ट - </ head> से पहले', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7838, 'in', 'write_script_with_script_tag', '<Script> टैग के साथ स्क्रिप्ट लिखें', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7839, 'in', 'footer_custom_script__before_body', 'पाद कस्टम स्क्रिप्ट - </ body> से पहले', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7840, 'in', 'category_has_been_inserted_successfully', 'श्रेणी को सफलतापूर्वक डाला गया है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7841, 'in', 'all_flash_deals', 'सभी फ्लैश डील', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7842, 'in', 'create_new_flash_deal', 'नई फ्लैश डील बनाएं', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7843, 'in', 'ffffff', '# फाफ', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7844, 'in', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'यह चित्र फ्लैश डील विवरण पृष्ठ में कवर बैनर के रूप में दिखाया गया है।', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7845, 'in', 'flash_deal_has_been_inserted_successfully', 'फ्लैश डील सफलतापूर्वक डाली गई है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7846, 'in', 'flash_deal_status_updated_successfully', 'फ़्लैश सौदा स्थिति सफलतापूर्वक अपडेट की गई', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7847, 'in', 'flash_deal_has_been_updated_successfully', 'फ्लैश डील को सफलतापूर्वक अपडेट किया गया है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7848, 'in', 'update_language_info', 'अद्यतन भाषा की जानकारी', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7849, 'in', 'language_has_been_updated_successfully', 'भाषा को सफलतापूर्वक अपडेट कर दिया गया है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7850, 'in', 'type_key__enter', 'कुंजी टाइप करें और दर्ज करें', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7851, 'in', 'translations_updated_for_', 'अनुवाद के लिए अद्यतन किया गया', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(7852, 'in', 'language_has_been_inserted_successfully', 'भाषा को सफलतापूर्वक डाला गया है', '2021-02-09 07:08:47', '2021-09-20 07:29:30'),
(12769, 'ie', 'all_category', 'Gach Catagóir', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12770, 'ie', 'all', 'Gach', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12771, 'ie', 'flash_sale', 'Díol Flash', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12772, 'ie', 'view_more', 'Féach Tuilleadh', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12773, 'ie', 'add_to_wishlist', 'Cuir an liosta a ghuí', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12774, 'ie', 'add_to_compare', 'Cuir le comparáid a dhéanamh', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12775, 'ie', 'add_to_cart', 'Cuir le cart', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12776, 'ie', 'club_point', 'Pointe an Chlub', '2021-02-09 07:34:00', '2021-09-20 07:29:45'),
(12777, 'ie', 'classified_ads', 'Fógraí Rangaithe', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12778, 'ie', 'used', 'Úsáidtear', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12779, 'ie', 'top_10_categories', 'Na 10 gCatagóir is Fearr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12780, 'ie', 'view_all_categories', 'Féach ar na Catagóirí Uile', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12781, 'ie', 'top_10_brands', 'Na 10 mBranda is Fearr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12782, 'ie', 'view_all_brands', 'Féach ar na Brandaí Uile', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12783, 'ie', 'terms__conditions', 'Téarmaí ⁊ Coinníollacha', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12784, 'ie', 'best_selling', 'Díol is Fearr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12785, 'ie', 'top_20', '20 barr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12786, 'ie', 'featured_products', 'Táirgí Réadmhaoin', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12787, 'ie', 'best_sellers', 'Díoltóirí is fearr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12788, 'ie', 'visit_store', 'Tabhair cuairt ar Store', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12789, 'ie', 'popular_suggestions', 'Moltaí Coitianta', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12790, 'ie', 'category_suggestions', 'Moltaí Catagóir', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12791, 'ie', 'automobile__motorcycle', 'Gluaisteán & Gluaisrothar', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12792, 'ie', 'price_range', 'Raon praghsanna', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12793, 'ie', 'filter_by_color', 'Scagaire de réir datha', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12794, 'ie', 'home', 'Baile', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12795, 'ie', 'newest', 'Is nua', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12796, 'ie', 'oldest', 'Is sine', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12797, 'ie', 'price_low_to_high', 'Praghas íseal go hard', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12798, 'ie', 'price_high_to_low', 'Praghas ard go híseal', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12799, 'ie', 'brands', 'Brandaí', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12800, 'ie', 'all_brands', 'Gach Brand', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12801, 'ie', 'all_sellers', 'Gach Díoltóir', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12802, 'ie', 'inhouse_product', 'Táirge intí', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12803, 'ie', 'message_seller', 'Díoltóir Teachtaireachta', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12804, 'ie', 'price', 'Praghas', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12805, 'ie', 'discount_price', 'Praghas Lascaine', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12806, 'ie', 'color', 'Dath', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12807, 'ie', 'quantity', 'Cainníocht', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12808, 'ie', 'available', 'ar fáil', '2021-02-09 07:34:01', '2021-02-09 07:34:01'),
(12809, 'ie', 'total_price', 'Praghas iomlán', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12810, 'ie', 'out_of_stock', 'As stoc', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12811, 'ie', 'refund', 'Aisíocaíocht', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12812, 'ie', 'share', 'Comhroinn', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12813, 'ie', 'sold_by', 'Díolta ag', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12814, 'ie', 'customer_reviews', 'athbhreithnithe ar chustaiméirí', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12815, 'ie', 'top_selling_products', 'Táirgí Díol Barr', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12816, 'ie', 'description', 'Cur síos', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12817, 'ie', 'video', 'Físeán', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12818, 'ie', 'reviews', 'Léirmheasanna', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12819, 'ie', 'download', 'Íoslódáil', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12820, 'ie', 'there_have_been_no_reviews_for_this_product_yet', 'Ní dhearnadh aon athbhreithnithe ar an táirge seo go fóill.', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12821, 'ie', 'related_products', 'Táirgí gaolmhara', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12822, 'ie', 'any_query_about_this_product', 'Aon cheist faoin táirge seo', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12823, 'ie', 'product_name', 'Ainm Táirge', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12824, 'ie', 'your_question', 'Do cheist', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12825, 'ie', 'send', 'Seol', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12826, 'ie', 'use_country_code_before_number', 'Úsáid cód tíre roimh an uimhir', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12827, 'ie', 'remember_me', 'Cuimhnigh Mise', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12828, 'ie', 'dont_have_an_account', 'Nach bhfuil cuntas agat?', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12829, 'ie', 'register_now', 'Cláraigh anois', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12830, 'ie', 'or_login_with', 'Nó Logáil Isteach Le', '2021-02-09 07:34:01', '2021-09-20 07:29:45'),
(12831, 'ie', 'oops', 'oops ..', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12832, 'ie', 'this_item_is_out_of_stock', 'Tá an t-earra seo as stoc!', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12833, 'ie', 'back_to_shopping', 'Ar ais ag siopadóireacht', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12834, 'ie', 'login_to_your_account', 'Logáil isteach i do chuntas.', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12835, 'ie', 'purchase_history', 'Stair Ceannaigh', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12836, 'ie', 'new', 'Nua', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12837, 'ie', 'downloads', 'Íoslódálacha', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12838, 'ie', 'sent_refund_request', 'Iarratas ar Aisíocaíocht Seolta', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12839, 'ie', 'product_bulk_upload', 'Uaslódáil Bulc Táirgí', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12840, 'ie', 'orders', 'Orduithe', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12841, 'ie', 'recieved_refund_request', 'Iarratas ar Aisíocaíocht Faighte', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12842, 'ie', 'shop_setting', 'Suíomh Siopa', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12843, 'ie', 'payment_history', 'Stair Íocaíochta', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12844, 'ie', 'money_withdraw', 'Aistarraingt Airgid', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12845, 'ie', 'conversations', 'Comhráite', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12846, 'ie', 'my_wallet', 'Mo Sparán', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12847, 'ie', 'earning_points', 'Pointí Tuilleamh', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12848, 'ie', 'support_ticket', 'Ticéad Tacaíochta', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12849, 'ie', 'manage_profile', 'Bainistigh Próifíl', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12850, 'ie', 'sold_amount', 'Méid Díolta', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12851, 'ie', 'your_sold_amount_current_month', 'Do mhéid díolta (an mhí reatha)', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12852, 'ie', 'total_sold', 'Iomlán Díolta', '2021-02-09 07:34:02', '2021-09-20 07:29:45'),
(12853, 'ie', 'last_month_sold', 'An mhí seo caite a díoladh', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12854, 'ie', 'total_sale', 'Díol iomlán', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12855, 'ie', 'total_earnings', 'Tuilleamh iomlán', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12856, 'ie', 'successful_orders', 'Orduithe rathúla', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12857, 'ie', 'total_orders', 'Orduithe iomlána', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12858, 'ie', 'pending_orders', 'Orduithe ar feitheamh', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12859, 'ie', 'cancelled_orders', 'Orduithe curtha ar ceal', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12860, 'ie', 'product', 'Táirge', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12861, 'ie', 'purchased_package', 'Pacáiste Ceannaithe', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12862, 'ie', 'package_not_found', 'Pacáiste Gan Aimsiú', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12863, 'ie', 'upgrade_package', 'Pacáiste Uasghrádaithe', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12864, 'ie', 'shop', 'Siopa', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12865, 'ie', 'manage__organize_your_shop', 'Bainistigh agus eagraigh do shiopa', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12866, 'ie', 'go_to_setting', 'Téigh go suíomh', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12867, 'ie', 'payment', 'Íocaíocht', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12868, 'ie', 'configure_your_payment_method', 'Cumraigh do mhodh íocaíochta', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12869, 'ie', 'my_panel', 'Mo Phainéal', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12870, 'ie', 'item_has_been_added_to_wishlist', 'Tá mír curtha leis an liosta mian', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12871, 'ie', 'my_points', 'Mo Phointí', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12872, 'ie', '_points', 'Pointí', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12873, 'ie', 'wallet_money', 'Airgead Sparán', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12874, 'ie', 'exchange_rate', 'Ráta malairte', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12875, 'ie', 'point_earning_history', 'Stair Tuilleamh Pointe', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12876, 'ie', 'date', 'Dáta', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12877, 'ie', 'points', 'Pointí', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12878, 'ie', 'converted', 'Tiontaithe', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12879, 'ie', 'action', 'Gníomh', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12880, 'ie', 'no_history_found', 'Níor aimsíodh aon stair.', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12881, 'ie', 'convert_has_been_done_successfully_check_your_wallets', 'Tá tiontú déanta go rathúil Seiceáil do Sparán', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12882, 'ie', 'something_went_wrong', 'Chuaigh rud eigin mícheart', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12883, 'ie', 'remaining_uploads', 'Uaslódáil atá fágtha', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12884, 'ie', 'no_package_found', 'Níor aimsíodh aon phacáiste', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12885, 'ie', 'search_product', 'Cuardaigh táirge', '2021-02-09 07:34:02', '2021-09-20 07:29:46'),
(12886, 'ie', 'name', 'Ainm', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12887, 'ie', 'current_qty', 'Qty Reatha', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12888, 'ie', 'base_price', 'Bunphraghas', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12889, 'ie', 'published', 'Foilsithe', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12890, 'ie', 'featured', 'Réadmhaoin', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12891, 'ie', 'options', 'Roghanna', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12892, 'ie', 'edit', 'Cuir in Eagar', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12893, 'ie', 'duplicate', 'Dúblach', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12894, 'ie', '1_download_the_skeleton_file_and_fill_it_with_data', '1. Íoslódáil an comhad cnámharlaigh agus líon isteach é le sonraí.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12895, 'ie', '2_you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', '2. Is féidir leat an comhad samplach a íoslódáil chun tuiscint a fháil ar an gcaoi a gcaithfear na sonraí a líonadh.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12896, 'ie', '3_once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', '3. Nuair a bheidh an comhad cnámharlaigh íoslódáilte agus líonta agat, uaslódáil é san fhoirm thíos agus cuir isteach é.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12897, 'ie', '4_after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', '4. Tar éis duit táirgí a uaslódáil ní mór duit iad a chur in eagar agus íomhánna agus roghanna táirgí a shocrú.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12898, 'ie', 'download_csv', 'Íoslódáil CSV', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12899, 'ie', '1_categorysub_categorysub_sub_category_and_brand_should_be_in_numerical_ids', '1. Ba chóir go mbeadh Catagóir, Fo-chatagóir, Fo-chatagóir agus Branda in áiseanna uimhriúla.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12900, 'ie', '2_you_can_download_the_pdf_to_get_categorysub_categorysub_sub_category_and_brand_id', '2. Is féidir leat an pdf a íoslódáil chun Catagóir, Fo-chatagóir, Fo-chatagóir agus id Branda a fháil.', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12901, 'ie', 'download_category', 'Íoslódáil Catagóir', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12902, 'ie', 'download_sub_category', 'Íoslódáil Fo-chatagóir', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12903, 'ie', 'download_sub_sub_category', 'Íoslódáil Fo-chatagóir', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12904, 'ie', 'download_brand', 'Íoslódáil Branda', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12905, 'ie', 'upload_csv_file', 'Uaslódáil Comhad CSV', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12906, 'ie', 'csv', 'CSV', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12907, 'ie', 'choose_csv_file', 'Roghnaigh Comhad CSV', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12908, 'ie', 'upload', 'Uaslódáil', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12909, 'ie', 'add_new_digital_product', 'Cuir Táirge Digiteach Nua leis', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12910, 'ie', 'available_status', 'Stádas ar Fáil', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12911, 'ie', 'admin_status', 'Stádas Riaracháin', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12912, 'ie', 'pending_balance', 'Iarmhéid ar feitheamh', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12913, 'ie', 'send_withdraw_request', 'Seol Iarratas Aistarraingthe', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12914, 'ie', 'withdraw_request_history', 'Stair Iarraidh a Tharraingt Siar', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12915, 'ie', 'amount', 'Méid', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12916, 'ie', 'status', 'Stádas', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12917, 'ie', 'message', 'Teachtaireacht', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12918, 'ie', 'send_a_withdraw_request', 'Seol Iarratas Aistarraingthe', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12919, 'ie', 'basic_info', 'Eolas Bunúsach', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12920, 'ie', 'your_phone', 'Do ghuthán', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12921, 'ie', 'photo', 'grianghraf', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12922, 'ie', 'browse', 'Brabhsáil', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12923, 'ie', 'your_password', 'Do Pasfhocal', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12924, 'ie', 'new_password', 'Focal Faire Nua', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12925, 'ie', 'confirm_password', 'Deimhnigh Pasfhocal', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12926, 'ie', 'add_new_address', 'Cuir Seoladh Nua leis', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12927, 'ie', 'payment_setting', 'Socrú Íocaíochta', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12928, 'ie', 'cash_payment', 'Íocaíocht Airgid Thirim', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12929, 'ie', 'bank_payment', 'Íocaíocht Bainc', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12930, 'ie', 'bank_name', 'Ainm Bainc', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12931, 'ie', 'bank_account_name', 'Ainm an Chuntais Bhainc', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12932, 'ie', 'bank_account_number', 'Uimhir Chuntais Bhainc', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12933, 'ie', 'bank_routing_number', 'Uimhir Ródúcháin Bainc', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12934, 'ie', 'update_profile', 'Próifíl Nuashonraithe', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12935, 'ie', 'change_your_email', 'Athraigh do r-phost', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12936, 'ie', 'your_email', 'Do r-phost', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12937, 'ie', 'sending_email', 'Ríomhphost a sheoladh ...', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12938, 'ie', 'verify', 'Fíoraigh', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12939, 'ie', 'update_email', 'Ríomhphost a Nuashonrú', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12940, 'ie', 'new_address', 'Seoladh Nua', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12941, 'ie', 'your_address', 'Do sheoladh', '2021-02-09 07:34:03', '2021-09-20 07:29:46'),
(12942, 'ie', 'country', 'Tír', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12943, 'ie', 'select_your_country', 'Roghnaigh do thír féin', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12944, 'ie', 'city', 'Cathair', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12945, 'ie', 'your_city', 'Do Chathair', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12946, 'ie', 'your_postal_code', 'Do Chód Poist', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12947, 'ie', '880', '+880', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12948, 'ie', 'save', 'Sábháil', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12949, 'ie', 'received_refund_request', 'Iarratas ar Aisíocaíocht Faighte', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12950, 'ie', 'delete_confirmation', 'Scrios Deimhniú', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12951, 'ie', 'are_you_sure_to_delete_this', 'An bhfuil tú cinnte é seo a scriosadh?', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12952, 'ie', 'premium_packages_for_sellers', 'Pacáistí Préimhe do Dhíoltóirí', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12953, 'ie', 'product_upload', 'Uaslódáil Táirgí', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12954, 'ie', 'digital_product_upload', 'Uaslódáil Táirgí Digiteacha', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12955, 'ie', 'purchase_package', 'Pacáiste Ceannaigh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12956, 'ie', 'select_payment_type', 'Roghnaigh Cineál Íocaíochta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12957, 'ie', 'payment_type', 'Cineál Íocaíochta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12958, 'ie', 'select_one', 'Pioc ceann', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12959, 'ie', 'online_payment', 'Íocaíocht ar líne', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12960, 'ie', 'offline_payment', 'Íocaíocht as líne', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12961, 'ie', 'purchase_your_package', 'Ceannaigh Do Phacáiste', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12962, 'ie', 'paypal', 'Paypal', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12963, 'ie', 'stripe', 'Stripe', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12964, 'ie', 'sslcommerz', 'sslcommerz', '2021-02-09 07:34:04', '2021-02-09 07:34:04'),
(12965, 'ie', 'confirm', 'Deimhnigh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12966, 'ie', 'offline_package_payment', 'Íocaíocht Pacáiste As Líne', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12967, 'ie', 'transaction_id', 'Aitheantas Idirbheart', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12968, 'ie', 'choose_image', 'Roghnaigh íomhá', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12969, 'ie', 'code', 'Cód', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12970, 'ie', 'delivery_status', 'Stádas Seachadta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12971, 'ie', 'payment_status', 'Stádas Íocaíochta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12972, 'ie', 'paid', 'Íoctha', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12973, 'ie', 'order_details', 'Sonraí Ordaithe', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12974, 'ie', 'download_invoice', 'Íoslódáil Sonrasc', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12975, 'ie', 'unpaid', 'Gan phá', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12976, 'ie', 'order_placed', 'Ordú curtha', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12977, 'ie', 'confirmed', 'Deimhnithe', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12978, 'ie', 'on_delivery', 'Ar sheachadadh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12979, 'ie', 'delivered', 'Seachadadh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12980, 'ie', 'order_summary', 'Achoimre ar an Ordú', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12981, 'ie', 'order_code', 'Cód Ordaithe', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12982, 'ie', 'customer', 'Custaiméir', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12983, 'ie', 'total_order_amount', 'Méid iomlán an ordaithe', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12984, 'ie', 'shipping_metdod', 'Metdod loingseoireachta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12985, 'ie', 'flat_shipping_rate', 'Ráta loingseoireachta comhréidh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12986, 'ie', 'payment_metdod', 'Metdod íocaíochta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12987, 'ie', 'variation', 'Athrú', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12988, 'ie', 'delivery_type', 'Cineál Seachadta', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12989, 'ie', 'home_delivery', 'Seachadadh Baile', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12990, 'ie', 'order_ammount', 'Ordú Méid', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12991, 'ie', 'subtotal', 'Fo-iomlán', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12992, 'ie', 'shipping', 'Á sheoladh', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12993, 'ie', 'coupon_discount', 'Lascaine Cúpón', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12994, 'ie', 'na', 'N / A', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12995, 'ie', 'in_stock', 'I stoc', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12996, 'ie', 'buy_now', 'Ceannaigh Anois', '2021-02-09 07:34:04', '2021-09-20 07:29:46'),
(12997, 'ie', 'item_added_to_your_cart', 'Mír curtha le do cart!', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(12998, 'ie', 'proceed_to_checkout', 'Dul ar aghaidh chun Seiceáil', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(12999, 'ie', 'cart_items', 'Míreanna Cart', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13000, 'ie', '1_my_cart', '1. Mo Chairt', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13001, 'ie', 'view_cart', 'Féach ar chairt', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13002, 'ie', '2_shipping_info', '2. Eolas loingseoireachta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13003, 'ie', 'checkout', 'Seiceáil', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13004, 'ie', '3_delivery_info', '3. Eolas seachadta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13005, 'ie', '4_payment', '4. Íocaíocht', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13006, 'ie', '5_confirmation', '5. Daingniú', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13007, 'ie', 'remove', 'Bain', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13008, 'ie', 'return_to_shop', 'Fill ar ais ar an siopa', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13009, 'ie', 'continue_to_shipping', 'Lean ar aghaidh le Loingseoireacht', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13010, 'ie', 'or', 'Nó', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13011, 'ie', 'guest_checkout', 'Seiceáil Aoi', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13012, 'ie', 'continue_to_delivery_info', 'Lean ar aghaidh le Faisnéis Seachadta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13013, 'ie', 'postal_code', 'Cód Poist', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13014, 'ie', 'choose_delivery_type', 'Roghnaigh Cineál Seachadta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13015, 'ie', 'local_pickup', 'Piocadh Áitiúil', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13016, 'ie', 'select_your_nearest_pickup_point', 'Roghnaigh an pointe pioctha is gaire duit', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13017, 'ie', 'continue_to_payment', 'Lean ar aghaidh leis an Íocaíocht', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13018, 'ie', 'select_a_payment_option', 'Roghnaigh rogha íocaíochta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13019, 'ie', 'razorpay', 'Razorpay', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13020, 'ie', 'paystack', 'Stác Pá', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13021, 'ie', 'voguepay', 'VoguePay', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13022, 'ie', 'payhere', 'payhere', '2021-02-09 07:34:05', '2021-02-09 07:34:05'),
(13023, 'ie', 'ngenius', 'ngenius', '2021-02-09 07:34:05', '2021-02-09 07:34:05'),
(13024, 'ie', 'paytm', 'Paytm', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13025, 'ie', 'cash_on_delivery', 'Íoc ar sheachadadh', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13026, 'ie', 'your_wallet_balance_', 'Iarmhéid do sparán:', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13027, 'ie', 'insufficient_balance', 'Cothromaíocht neamhleor', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13028, 'ie', 'i_agree_to_the', 'Aontaím leis an', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13029, 'ie', 'complete_order', 'Ordú Comhlánaithe', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13030, 'ie', 'summary', 'Achoimre', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13031, 'ie', 'items', 'Míreanna', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13032, 'ie', 'total_club_point', 'Pointe Iomlán an Chlub', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13033, 'ie', 'total_shipping', 'Loingseoireacht Iomlán', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13034, 'ie', 'have_coupon_code_enter_here', 'An bhfuil cód cúpón agat? Iontráil anseo', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13035, 'ie', 'apply', 'Cuir iarratas isteach', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13036, 'ie', 'you_need_to_agree_with_our_policies', 'Caithfidh tú aontú lenár bpolasaithe', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13037, 'ie', 'forgot_password', 'Dearmad ar pasfhocal', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13038, 'ie', 'seo_setting', 'Suíomh SEO', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13039, 'ie', 'system_update', 'Nuashonrú Córais', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13040, 'ie', 'add_new_payment_method', 'Cuir Modh Íocaíochta Nua leis', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13041, 'ie', 'manual_payment_method', 'Modh Íocaíochta Láimhe', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13042, 'ie', 'heading', 'Ceannteideal', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13043, 'ie', 'logo', 'Lógó', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13044, 'ie', 'manual_payment_information', 'Faisnéis Íocaíochta Láimhe', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13045, 'ie', 'type', 'Cineál', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13046, 'ie', 'custom_payment', 'Íocaíocht Chustaim', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13047, 'ie', 'check_payment', 'Seiceáil Íocaíocht', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13048, 'ie', 'checkout_thumbnail', 'Mionsamhail Seiceáil', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13049, 'ie', 'payment_instruction', 'Treoir Íocaíochta', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13050, 'ie', 'bank_information', 'Faisnéis Bainc', '2021-02-09 07:34:05', '2021-09-20 07:29:46'),
(13051, 'ie', 'select_file', 'Roghnaigh Comhad', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13052, 'ie', 'upload_new', 'Uaslódáil Nua', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13053, 'ie', 'sort_by_newest', 'Sórtáil de réir is nua', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13054, 'ie', 'sort_by_oldest', 'Sórtáil de réir an duine is sine', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13055, 'ie', 'sort_by_smallest', 'Sórtáil de réir an méid is lú', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13056, 'ie', 'sort_by_largest', 'Sórtáil de réir is mó', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13057, 'ie', 'selected_only', 'Roghnaithe Amháin', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13058, 'ie', 'no_files_found', 'Níor aimsíodh aon chomhaid', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13059, 'ie', '0_file_selected', '0 Comhad roghnaithe', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13060, 'ie', 'clear', 'Glan', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13061, 'ie', 'prev', 'Roimhe seo', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13062, 'ie', 'next', 'Ar Aghaidh', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13063, 'ie', 'add_files', 'Cuir Comhaid leis', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13064, 'ie', 'method_has_been_inserted_successfully', 'Cuireadh an modh isteach go rathúil', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13065, 'ie', 'order_date', 'Dáta Ordaithe', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13066, 'ie', 'bill_to', 'Bille', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13067, 'ie', 'sub_total', 'Fo-Iomlán', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13068, 'ie', 'total_tax', 'Cáin Iomlán', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13069, 'ie', 'grand_total', 'Iomlán mhór', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13070, 'ie', 'your_order_has_been_placed_successfully_please_submit_payment_information_from_purchase_history', 'Cuireadh d’ordú go rathúil. Cuir isteach faisnéis íocaíochta ó stair an cheannaigh le do thoil', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13071, 'ie', 'thank_you_for_your_order', 'Go raibh maith agat as d\'Ordú!', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13072, 'ie', 'order_code', 'Cód Ordaithe:', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13073, 'ie', 'a_copy_or_your_order_summary_has_been_sent_to', 'Tá cóip nó achoimre d’ordú seolta chuig', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13074, 'ie', 'make_payment', 'Déan Íocaíocht', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13075, 'ie', 'payment_screenshot', 'Scáileán íocaíochta', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13076, 'ie', 'paypal_credential', 'Dintiúr Paypal', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13077, 'ie', 'paypal_client_id', 'Aitheantas Cliant Paypal', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13078, 'ie', 'paypal_client_secret', 'Rúnda Cliant Paypal', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13079, 'ie', 'paypal_sandbox_mode', 'Mód Bosca Gaineamh Paypal', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13080, 'ie', 'sslcommerz_credential', 'Dintiúr Sslcommerz', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13081, 'ie', 'sslcz_store_id', 'Sslcz Store Id', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13082, 'ie', 'sslcz_store_password', 'Pasfhocal stór Sslcz', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13083, 'ie', 'sslcommerz_sandbox_mode', 'Mód Bosca Gaineamh Sslcommerz', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13084, 'ie', 'stripe_credential', 'Dintiúr Stripe', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13085, 'ie', 'stripe_key', 'EOCHAIR STRIPE', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13086, 'ie', 'stripe_secret', 'RÚNAÍ STRIPE', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13087, 'ie', 'razorpay_credential', 'Dintiúr RazorPay', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13088, 'ie', 'razor_key', 'EOCHAIR RAZOR', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13089, 'ie', 'razor_secret', 'RÚNAÍ RAZOR', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13090, 'ie', 'instamojo_credential', 'Dintiúr Instamojo', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13091, 'ie', 'api_key', 'EOCHAIR API', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13092, 'ie', 'im_api_key', 'EOCHAIR IM API', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13093, 'ie', 'auth_token', 'BREITHIÚNAS TOKEN', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13094, 'ie', 'im_auth_token', 'IM AUTH TOKEN', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13095, 'ie', 'instamojo_sandbox_mode', 'Mód Bosca Gaineamh Instamojo', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13096, 'ie', 'paystack_credential', 'Dintiúr PayStack', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13097, 'ie', 'public_key', 'EOCHAIR PHOIBLÍ', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13098, 'ie', 'secret_key', 'EOCHAIR-RÚNAÍ', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13099, 'ie', 'merchant_email', 'EMAIL MERCHANT', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13100, 'ie', 'voguepay_credential', 'Dintiúr VoguePay', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13101, 'ie', 'merchant_id', 'ID MERCHANT', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13102, 'ie', 'sandbox_mode', 'Mód Bosca Gaineamh', '2021-02-09 07:34:06', '2021-09-20 07:29:46'),
(13103, 'ie', 'payhere_credential', 'Dintiúr Payhere', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13104, 'ie', 'payhere_merchant_id', 'PAYHERE MERCHANT ID', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13105, 'ie', 'payhere_secret', 'RÚNAÍ ÍMAT', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13106, 'ie', 'payhere_currency', 'CURRENCY PAYHERE', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13107, 'ie', 'payhere_sandbox_mode', 'Mód Bosca Gaineamh Payhere', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13108, 'ie', 'ngenius_credential', 'Dintiúr Ngenius', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13109, 'ie', 'ngenius_outlet_id', 'ID NGENIUS OUTLET', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13110, 'ie', 'ngenius_api_key', 'EOCHAIR API NGENIUS', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13111, 'ie', 'ngenius_currency', 'CURRENCY NGENIUS', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13112, 'ie', 'mpesa_credential', 'Dintiúr Mpesa', '2021-02-09 07:34:07', '2021-09-20 07:29:46');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(13113, 'ie', 'mpesa_consumer_key', 'EOCHAIR TOMHALTÓIR MPESA', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13114, 'ie', 'mpesa_consumer_key', 'MPESA_CONSUMER_KEY', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13115, 'ie', 'mpesa_consumer_secret', 'RÚNAÍ TOMHALTÓIR MPESA', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13116, 'ie', 'mpesa_consumer_secret', 'MPESA_CONSUMER_SECRET', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13117, 'ie', 'mpesa_short_code', 'CÓD GORM MPESA', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13118, 'ie', 'mpesa_short_code', 'MPESA_SHORT_CODE', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13119, 'ie', 'mpesa_sandbox_activation', 'GNÍOMHAÍOCHT MPESA SANDBOX', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13120, 'ie', 'flutterwave_credential', 'Dintiúr Flutterwave', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13121, 'ie', 'rave_public_key', 'RAVE_PUBLIC_KEY', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13122, 'ie', 'rave_secret_key', 'RAVE_SECRET_KEY', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13123, 'ie', 'rave_title', 'RAVE_TITLE', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13124, 'ie', 'stagin_activation', 'GNÍOMHAÍOCHT STAGIN', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13125, 'ie', 'all_product', 'Gach Táirge', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13126, 'ie', 'sort_by', 'Sórtáil de réir', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13127, 'ie', 'rating_high__low', 'Rátáil (Ard> Íseal)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13128, 'ie', 'rating_low__high', 'Rátáil (Íseal> Ard)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13129, 'ie', 'num_of_sale_high__low', 'Líon an Díolacháin (Ard> Íseal)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13130, 'ie', 'num_of_sale_low__high', 'Líon an Díolacháin (Íseal> Ard)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13131, 'ie', 'base_price_high__low', 'Bunphraghas (Ard> Íseal)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13132, 'ie', 'base_price_low__high', 'Bunphraghas (Íseal> Ard)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13133, 'ie', 'type__enter', 'Cineál & Iontráil', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13134, 'ie', 'added_by', 'Arna chur leis', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13135, 'ie', 'num_of_sale', 'Líon Díola', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13136, 'ie', 'total_stock', 'Stoc Iomlán', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13137, 'ie', 'todays_deal', 'Déileáil an Lae Inniu', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13138, 'ie', 'rating', 'Rátáil', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13139, 'ie', 'times', 'uaireanta', '2021-02-09 07:34:07', '2021-02-09 07:34:07'),
(13140, 'ie', 'add_nerw_product', 'Cuir Táirge Nerw leis', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13141, 'ie', 'product_information', 'Faisnéis faoi Tháirgí', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13142, 'ie', 'unit', 'Aonad', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13143, 'ie', 'unit_eg_kg_pc_etc', 'Aonad (m.sh. KG, ríomhaire srl)', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13144, 'ie', 'minimum_qty', 'Qty Íosta', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13145, 'ie', 'tags', 'Clibeanna', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13146, 'ie', 'type_and_hit_enter_to_add_a_tag', 'Clóscríobh agus bhuail Iontráil chun clib a chur leis', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13147, 'ie', 'barcode', 'Barrachód', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13148, 'ie', 'refundable', 'In-aisíoctha', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13149, 'ie', 'product_images', 'Íomhánna Táirgí', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13150, 'ie', 'gallery_images', 'Íomhánna Gailearaí', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13151, 'ie', 'todays_deal_updated_successfully', 'Nuashonraíodh Déileáil an lae inniu go rathúil', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13152, 'ie', 'published_products_updated_successfully', 'Nuashonraíodh táirgí foilsithe go rathúil', '2021-02-09 07:34:07', '2021-09-20 07:29:46'),
(13153, 'ie', 'thumbnail_image', 'Íomhá Mionsamhail', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13154, 'ie', 'featured_products_updated_successfully', 'Nuashonraíodh táirgí mór le rá go rathúil', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13155, 'ie', 'product_videos', 'Físeáin Táirgí', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13156, 'ie', 'video_provider', 'Soláthraí Físe', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13157, 'ie', 'youtube', 'Youtube', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13158, 'ie', 'dailymotion', 'Dailymotion', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13159, 'ie', 'vimeo', 'Vimeo', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13160, 'ie', 'video_link', 'Nasc Físe', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13161, 'ie', 'product_variation', 'Athrú Táirgí', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13162, 'ie', 'colors', 'Dathanna', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13163, 'ie', 'attributes', 'Tréithe', '2021-02-09 07:34:08', '2021-09-20 07:29:46'),
(13164, 'ie', 'choose_attributes', 'Roghnaigh Tréithe', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13165, 'ie', 'choose_the_attributes_of_this_product_and_then_input_values_of_each_attribute', 'Roghnaigh tréithe an táirge seo agus ansin luachanna ionchuir gach tréithe', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13166, 'ie', 'product_price__stock', 'Praghas táirge + stoc', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13167, 'ie', 'unit_price', 'Praghas aonaid', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13168, 'ie', 'purchase_price', 'Praghas ceannaigh', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13169, 'ie', 'flat', 'Maol', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13170, 'ie', 'percent', 'Céatadán', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13171, 'ie', 'discount', 'Lascaine', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13172, 'ie', 'product_description', 'Cur síos ar an Táirge', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13173, 'ie', 'product_shipping_cost', 'Costas Loingseoireachta Táirgí', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13174, 'ie', 'free_shipping', 'Loingeas SAOR IN AISCE', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13175, 'ie', 'flat_rate', 'Ráta comhréidh', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13176, 'ie', 'shipping_cost', 'Costas loingseoireachta', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13177, 'ie', 'pdf_specification', 'Sonraíocht PDF', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13178, 'ie', 'seo_meta_tags', 'Clibeanna Meta Sinsearach', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13179, 'ie', 'meta_title', 'Teideal Meiteashonraí', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13180, 'ie', 'meta_image', 'Íomhá meta', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13181, 'ie', 'choice_title', 'Teideal Rogha', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13182, 'ie', 'enter_choice_values', 'Iontráil luachanna rogha', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13183, 'ie', 'all_categories', 'Gach catagóir', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13184, 'ie', 'add_new_category', 'Cuir catagóir Nua leis', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13185, 'ie', 'type_name__enter', 'Cineál ainm & Iontráil', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13186, 'ie', 'banner', 'Meirge', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13187, 'ie', 'commission', 'Coimisiún', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13188, 'ie', 'icon', 'deilbhín', '2021-02-09 07:34:08', '2021-02-09 07:34:08'),
(13189, 'ie', 'featured_categories_updated_successfully', 'Nuashonraíodh na catagóirí mór le rá go rathúil', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13190, 'ie', 'hot', 'Te', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13191, 'ie', 'filter_by_payment_status', 'Scagaire de réir Stádas Íocaíochta', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13192, 'ie', 'unpaid', 'Neamhíoctha', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13193, 'ie', 'filter_by_deliver_status', 'Scagaire de réir Stádas Seachadta', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13194, 'ie', 'pending', 'Ar feitheamh', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13195, 'ie', 'type_order_code__hit_enter', 'Cineál Ordú cód & bhuail Iontráil', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13196, 'ie', 'num_of_products', 'Num. Táirgí', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13197, 'ie', 'walk_in_customer', 'Custaiméir Siúil Isteach', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13198, 'ie', 'qty', 'QTY', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13199, 'ie', 'without_shipping_charge', 'Gan Muirear Loingis', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13200, 'ie', 'with_shipping_charge', 'Le Muirear Loingis', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13201, 'ie', 'pay_with_cash', 'Íoc le hAirgead Tirim', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13202, 'ie', 'shipping_address', 'Seoladh Loingseoireacht', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13203, 'ie', 'close', 'Dún', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13204, 'ie', 'select_country', 'Roghnaigh tír', '2021-02-09 07:34:08', '2021-09-20 07:29:47'),
(13205, 'ie', 'order_confirmation', 'Daingniú Ordaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13206, 'ie', 'are_you_sure_to_confirm_this_order', 'An bhfuil tú cinnte an t-ordú seo a dhearbhú?', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13207, 'ie', 'comfirm_order', 'Ordú Daingnithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13208, 'ie', 'personal_info', 'Eolas Pearsanta', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13209, 'ie', 'repeat_password', 'Athscríobh an Pasfhocal', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13210, 'ie', 'shop_name', 'Ainm Siopa', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13211, 'ie', 'register_your_shop', 'Cláraigh Do Siopa', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13212, 'ie', 'affiliate_informations', 'Faisnéis Affiliate', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13213, 'ie', 'affiliate', 'Cleamhnaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13214, 'ie', 'user_info', 'Faisnéis Úsáideora', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13215, 'ie', 'installed_addon', 'Suiteáilte Addon', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13216, 'ie', 'available_addon', 'Addon ar fáil', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13217, 'ie', 'install_new_addon', 'Suiteáil Addon Nua', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13218, 'ie', 'version', 'Leagan', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13219, 'ie', 'activated', 'Gníomhachtaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13220, 'ie', 'deactivated', 'Díghníomhachtaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13221, 'ie', 'activate_otp', 'Gníomhachtú OTP', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13222, 'ie', 'otp_will_be_used_for', 'Úsáidfear OTP', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13223, 'ie', 'settings_updated_successfully', 'Nuashonraíodh na socruithe go rathúil', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13224, 'ie', 'product_owner', 'Úinéir Táirgí', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13225, 'ie', 'point', 'Pointe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13226, 'ie', 'set_point_for_product_within_a_range', 'Pointe Socraithe don Táirge Laistigh de Raon', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13227, 'ie', 'set_point_for_multiple_products', 'Pointe Socraithe do tháirgí iolracha', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13228, 'ie', 'min_price', 'Praghas Min', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13229, 'ie', 'max_price', 'Max Price', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13230, 'ie', 'set_point_for_all_products', 'Pointe Socraithe do na Táirgí go léir', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13231, 'ie', 'set_point_for_', 'Pointe Socraithe Do.', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13232, 'ie', 'convert_status', 'Stádas Tiontaigh', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13233, 'ie', 'earned_at', 'Thuilltear At', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13234, 'ie', 'seller_based_selling_report', 'Tuarascáil Díol Bunaithe ar Dhíoltóirí', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13235, 'ie', 'sort_by_verificarion_status', 'Sórtáil de réir stádas fíoraithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13236, 'ie', 'approved', 'Ceadaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13237, 'ie', 'non_approved', 'Neamhcheadaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13238, 'ie', 'filter', 'Scagaire', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13239, 'ie', 'seller_name', 'Ainm an Díoltóra', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13240, 'ie', 'number_of_product_sale', 'Líon na nDíolachán Táirgí', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13241, 'ie', 'order_amount', 'Méid Ordaithe', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13242, 'ie', 'facebook_chat_setting', 'Socrú Comhrá Facebook', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13243, 'ie', 'facebook_page_id', 'Aitheantas Leathanach Facebook', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13244, 'ie', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Bí cúramach le do thoil agus tú ag cumrú comhrá Facebook. Maidir le cumraíocht mhícheart ní bhfaighidh tú deilbhín teachtaire ar do shuíomh deireadh úsáideora.', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13245, 'ie', 'login_into_your_facebook_page', 'Logáil isteach i do leathanach facebook', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13246, 'ie', 'find_the_about_option_of_your_facebook_page', 'Faigh an rogha About de do leathanach facebook', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13247, 'ie', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'Ag bun an leathanaigh, is féidir leat an \\ “ID Leathanach Facebook \\” a fháil', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13248, 'ie', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Téigh go Socruithe do leathanaigh agus faigh an rogha \\ \"Réamhtheachtaireachtaí \\\"', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13249, 'ie', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Scrollaigh síos an leathanach sin agus gheobhaidh tú \\ \"fearann ​​liostaithe bán \\\"', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13250, 'ie', 'set_your_website_domain_name', 'Socraigh ainm fearainn do shuíomh Gréasáin', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13251, 'ie', 'google_recaptcha_setting', 'Socrú reCAPTCHA Google', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13252, 'ie', 'site_key', 'Suíomh EOCHAIR', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13253, 'ie', 'select_shipping_method', 'Roghnaigh Modh Loingseoireachta', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13254, 'ie', 'product_wise_shipping_cost', 'Costas Loingseoireachta Wise Táirgí', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13255, 'ie', 'flat_rate_shipping_cost', 'Costas Loingseoireachta Ráta Comhréidh', '2021-02-09 07:34:09', '2021-09-20 07:29:47'),
(13256, 'ie', 'seller_wise_flat_shipping_cost', 'Costas Loingseoireachta Cliste Maith', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13257, 'ie', 'note', 'Nóta', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13258, 'ie', 'product_wise_shipping_cost_calulation_shipping_cost_is_calculate_by_addition_of_each_product_shipping_cost', 'Loingseoireacht Shoiléir Táirgí Calaíocht costais: Ríomhtar costas loingseoireachta trí gach costas seolta táirge a chur leis', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13259, 'ie', 'flat_rate_shipping_cost_calulation_how_many_products_a_customer_purchase_doesnt_matter_shipping_cost_is_fixed', 'Loingseoireacht Ráta Comhréidh Calaíocht costais: Cé mhéad táirge a cheannaíonn custaiméir, is cuma. Tá costas loingseoireachta socraithe', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13260, 'ie', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_a_customer_purchase_2_product_from_two_seller_shipping_cost_is_calculate_by_addition_of_each_seller_flat_shipping_cost', 'Loingseoireacht Shoiléir Wise Maolú Costas: Ráta seasta do gach díoltóir. Má cheannaíonn custaiméir 2 tháirge ó dhá chostas seolta díoltóra, ríomhtar é trí chostas seolta cothrom gach díoltóra a chur leis', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13261, 'ie', 'flat_rate_cost', 'Costas Ráta Comhréidh', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13262, 'ie', 'shipping_cost_for_admin_products', 'Costas Loingseoireachta do Tháirgí Riaracháin', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13263, 'ie', 'countries', 'Tíortha', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13264, 'ie', 'showhide', 'Taispeáin / Folaigh', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13265, 'ie', 'country_status_updated_successfully', 'Nuashonraíodh stádas tíre go rathúil', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13266, 'ie', 'all_subcategories', 'Gach Fochatagóir', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13267, 'ie', 'add_new_subcategory', 'Cuir Fochatagóir Nua leis', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13268, 'ie', 'subcategories', 'Fo-chatagóirí', '2021-02-09 07:34:10', '2021-09-20 07:29:47'),
(13269, 'ie', 'sub_category_information', 'Faisnéis faoin bhFochatagóir', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13270, 'ie', 'slug', 'Seilide', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13271, 'ie', 'all_sub_subcategories', 'Gach Fo-chatagóir', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13272, 'ie', 'add_new_sub_subcategory', 'Cuir Fochatagóir Nua leis', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13273, 'ie', 'subsubcategories', 'Fo-fho-chatagóirí', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13274, 'ie', 'make_this_default', 'Déan an Réamhshocrú seo', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13275, 'ie', 'shops', 'Siopaí', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13276, 'ie', 'women_clothing__fashion', 'Éadaí & Faisean na mBan', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13277, 'ie', 'cellphones__tabs', 'Fóin phóca & Cluaisíní', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13278, 'ie', 'welcome_to', 'Fáilte go', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13279, 'ie', 'create_a_new_account', 'Cruthaigh Cuntas Nua', '2021-02-09 07:35:00', '2021-09-20 07:29:47'),
(13280, 'ie', 'full_name', 'Ainm iomlán', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13281, 'ie', 'password', 'pasfhocal', '2021-02-09 07:35:01', '2021-02-09 07:35:01'),
(13282, 'ie', 'confrim_password', 'Pasfhocal Confrim', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13283, 'ie', 'i_agree_with_the', 'Aontaím leis an', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13284, 'ie', 'terms_and_conditions', 'Téarmaí agus Coinníollacha', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13285, 'ie', 'register', 'Cláraigh', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13286, 'ie', 'already_have_an_account', 'Cheana féin tá cuntas agat', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13287, 'ie', 'sign_up_with', 'Cláraigh le', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13288, 'ie', 'i_agree_with_the_terms_and_conditions', 'Aontaím leis na Téarmaí agus Coinníollacha', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13289, 'ie', 'all_role', 'Ról Uile', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13290, 'ie', 'add_new_role', 'Cuir Ról Nua leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13291, 'ie', 'roles', 'Róil', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13292, 'ie', 'add_new_staffs', 'Cuir Foirne Nua leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13293, 'ie', 'role', 'Ról', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13294, 'ie', 'frontend_website_name', 'Ainm Suíomh Gréasáin Frontend', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13295, 'ie', 'website_name', 'Ainm Suíomh Gréasáin', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13296, 'ie', 'site_motto', 'Mana an tSuímh', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13297, 'ie', 'best_ecommerce_website', 'Suíomh Gréasáin Ríomhthráchtála is Fearr', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13298, 'ie', 'site_icon', 'Deilbhín Láithreáin', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13299, 'ie', 'website_favicon_32x32_png', 'Fabhar an láithreáin ghréasáin. 32x32 .png', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13300, 'ie', 'website_base_color', 'Dath Bonn an Láithreáin Gréasáin', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13301, 'ie', 'hex_color_code', 'Cód Dath Heics', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13302, 'ie', 'website_base_hover_color', 'Suíomh Gréasáin Base Hover Colour', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13303, 'ie', 'update', 'Nuashonrú', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13304, 'ie', 'global_seo', 'Domhanda Seo', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13305, 'ie', 'meta_description', 'Tuairisc meta', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13306, 'ie', 'keywords', 'Keywords', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13307, 'ie', 'separate_with_coma', 'Ar leithligh le Bheirnicé', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13308, 'ie', 'website_pages', 'Leathanaigh Suíomh Gréasáin', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13309, 'ie', 'all_pages', 'Gach Leathanach', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13310, 'ie', 'add_new_page', 'Cuir Leathanach Nua leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13311, 'ie', 'url', 'URL', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13312, 'ie', 'actions', 'Caingne', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13313, 'ie', 'edit_page_information', 'Cuir Eolas Leathanach in Eagar', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13314, 'ie', 'page_content', 'Ábhar Leathanach', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13315, 'ie', 'title', 'Teideal', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13316, 'ie', 'link', 'Nasc', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13317, 'ie', 'use_character_number_hypen_only', 'Bain úsáid as carachtar, uimhir, hypen amháin', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13318, 'ie', 'add_content', 'Cuir Ábhar leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13319, 'ie', 'seo_fields', 'Seo Réimsí', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13320, 'ie', 'update_page', 'Leathanach Nuashonraithe', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13321, 'ie', 'default_language', 'Teanga Réamhshocraithe', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13322, 'ie', 'add_new_language', 'Cuir Teanga Nua leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13323, 'ie', 'rtl', 'RTL', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13324, 'ie', 'translation', 'Aistriúchán', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13325, 'ie', 'language_information', 'Eolas Teanga', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13326, 'ie', 'save_page', 'Sábháil Leathanach', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13327, 'ie', 'home_page_settings', 'Socruithe Leathanach Baile', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13328, 'ie', 'home_slider', 'Sleamhnán Baile', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13329, 'ie', 'photos__links', 'Grianghraif & Naisc', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13330, 'ie', 'add_new', 'Cuir Nua leis', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13331, 'ie', 'home_categories', 'Catagóirí Baile', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13332, 'ie', 'home_banner_1_max_3', 'Meirge Baile 1 (Uasmhéid 3)', '2021-02-09 07:35:01', '2021-09-20 07:29:47'),
(13333, 'ie', 'banner__links', 'Meirge & Naisc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13334, 'ie', 'home_banner_2_max_3', 'Meirge Baile 2 (Uasmhéid 3)', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13335, 'ie', 'top_10', 'Na 10 barr', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13336, 'ie', 'top_categories_max_10', 'Na Catagóirí is Fearr (Uasmhéid 10)', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13337, 'ie', 'top_brands_max_10', 'Brandaí Barr (Uasmhéid 10)', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13338, 'ie', 'system_name', 'Ainm an Chórais', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13339, 'ie', 'system_logo__white', 'Lógó an Chórais - Bán', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13340, 'ie', 'choose_files', 'Roghnaigh Comhaid', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13341, 'ie', 'will_be_used_in_admin_panel_side_menu', 'Úsáidfear é i roghchlár taobh an phainéil riaracháin', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13342, 'ie', 'system_logo__black', 'Lógó an Chórais - Dubh', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13343, 'ie', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'Úsáidfear é i mbarra barr an phainéil riaracháin ar leathanach logála isteach soghluaiste + Riaracháin', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13344, 'ie', 'system_timezone', 'Crios Ama an Chórais', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13345, 'ie', 'admin_login_page_background', 'Cúlra leathanach logála isteach riaracháin', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13346, 'ie', 'website_header', 'Ceanntásc Suíomh Gréasáin', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13347, 'ie', 'header_setting', 'Socrú Ceanntásca', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13348, 'ie', 'header_logo', 'Lógó Ceanntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13349, 'ie', 'show_language_switcher', 'Taispeáin Switcher Teanga?', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13350, 'ie', 'show_currency_switcher', 'Taispeáin Switcher Airgeadra?', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13351, 'ie', 'enable_stikcy_header', 'Cumasaigh ceanntásc stikcy?', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13352, 'ie', 'website_footer', 'Buntásc Suíomh Gréasáin', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13353, 'ie', 'footer_widget', 'Giuirléid Buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13354, 'ie', 'about_widget', 'Maidir le Giuirléid', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13355, 'ie', 'footer_logo', 'Lógó Buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13356, 'ie', 'about_description', 'Maidir leis an gcur síos', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13357, 'ie', 'contact_info_widget', 'Déan teagmháil le Giuirléid Faisnéise', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13358, 'ie', 'footer_contact_address', 'Seoladh teagmhála buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13359, 'ie', 'footer_contact_phone', 'Fón teagmhála buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13360, 'ie', 'footer_contact_email', 'R-phost teagmhála buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13361, 'ie', 'link_widget_one', 'Nasc Giuirléid a hAon', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13362, 'ie', 'links', 'Naisc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13363, 'ie', 'footer_bottom', 'Bun Buntásc', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13364, 'ie', 'copyright_widget_', 'Giuirléid Cóipchirt', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13365, 'ie', 'copyright_text', 'Téacs Cóipchirt', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13366, 'ie', 'social_link_widget_', 'Giuirléid Nasc Sóisialta', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13367, 'ie', 'show_social_links', 'Taispeáin Naisc Shóisialta?', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13368, 'ie', 'social_links', 'Naisc Shóisialta', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13369, 'ie', 'payment_methods_widget_', 'Giuirléid Modhanna Íocaíochta', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13370, 'ie', 'rtl_status_updated_successfully', 'Nuashonraíodh stádas RTL go rathúil', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13371, 'ie', 'language_changed_to_', 'Athraíodh an teanga go', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13372, 'ie', 'inhouse_product_sale_report', 'Tuarascáil ar dhíol Táirgí Intí', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13373, 'ie', 'sort_by_category', 'Sórtáil de réir Catagóire', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13374, 'ie', 'product_wise_stock_report', 'Tuarascáil stoic ciallmhar táirge', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13375, 'ie', 'currency_changed_to_', 'Athraíodh airgeadra go', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13376, 'ie', 'avatar', 'Avatar', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13377, 'ie', 'copy', 'Cóip', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13378, 'ie', 'variant', 'Leagan', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13379, 'ie', 'variant_price', 'Praghas Athraitheach', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13380, 'ie', 'sku', 'SKU', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13381, 'ie', 'key', 'Eochair', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13382, 'ie', 'value', 'Luach', '2021-02-09 07:35:02', '2021-09-20 07:29:47'),
(13383, 'ie', 'copy_translations', 'Cóipeáil Aistriúcháin', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13384, 'ie', 'all_pickup_points', 'Gach Pointe Pioc suas', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13385, 'ie', 'add_new_pickup_point', 'Cuir Pointe Pioc Nua leis', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13386, 'ie', 'manager', 'Bainisteoir', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13387, 'ie', 'location', 'Suíomh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13388, 'ie', 'pickup_station_contact', 'Teagmhálaí Stáisiúin Pickup', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13389, 'ie', 'open', 'Oscail', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13390, 'ie', 'pos_activation_for_seller', 'Gníomhachtú POS don Díoltóir', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13391, 'ie', 'order_completed_successfully', 'Ordú Críochnaithe go rathúil.', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13392, 'ie', 'text_input', 'Ionchur Téacs', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13393, 'ie', 'select', 'Roghnaigh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13394, 'ie', 'multiple_select', 'Roghnaigh Il', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13395, 'ie', 'radio', 'Raidió', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13396, 'ie', 'file', 'Comhad', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13397, 'ie', 'email_address', 'Seoladh ríomhphoist', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13398, 'ie', 'verification_info', 'Eolas Fíoraithe', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13399, 'ie', 'approval', 'Ceadú', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13400, 'ie', 'due_amount', 'Méid Dlite', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13401, 'ie', 'show', 'Taispeáin', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13402, 'ie', 'pay_now', 'Íoc anois', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13403, 'ie', 'affiliate_user_verification', 'Fíorú Úsáideora Affiliate', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13404, 'ie', 'reject', 'Diúltaigh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13405, 'ie', 'accept', 'Glac', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13406, 'ie', 'beauty_health__hair', 'Áilleacht, Sláinte & Gruaige', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13407, 'ie', 'comparison', 'Comparáid', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13408, 'ie', 'reset_compare_list', 'Athshocraigh Liosta Déan comparáid idir', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13409, 'ie', 'your_comparison_list_is_empty', 'Tá do liosta comparáide folamh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13410, 'ie', 'convert_point_to_wallet', 'Tiontaigh Pointe go Sparán', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13411, 'ie', 'note_you_need_to_activate_wallet_option_first_before_using_club_point_addon', 'Nóta: Ní mór duit an rogha sparán a ghníomhachtú ar dtús sula n-úsáideann tú addon pointe club.', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13412, 'ie', 'create_an_account', 'Cruthaigh cuntas.', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13413, 'ie', 'use_email_instead', 'Úsáid Ríomhphost ina áit', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13414, 'ie', 'by_signing_up_you_agree_to_our_terms_and_conditions', 'Nuair a chláraíonn tú aontaíonn tú lenár dtéarmaí agus coinníollacha.', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13415, 'ie', 'create_account', 'Cruthaigh Cuntas', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13416, 'ie', 'or_join_with', 'Nó Bí páirteach', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13417, 'ie', 'already_have_an_account', 'An bhfuil cuntas agat cheana?', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13418, 'ie', 'log_in', 'Logáil isteach', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13419, 'ie', 'computer__accessories', 'Ríomhaire & Gabhálais', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13420, 'ie', 'products', 'Táirge (í)', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13421, 'ie', 'in_your_cart', 'i do cart', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13422, 'ie', 'in_your_wishlist', 'i do liosta mian', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13423, 'ie', 'you_ordered', 'd\'ordaigh tú', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13424, 'ie', 'default_shipping_address', 'Seoladh Réamhshocraithe Loingseoireachta', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13425, 'ie', 'sports__outdoor', 'Spóirt & lasmuigh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13426, 'ie', 'copied', 'Cóipeáladh', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13427, 'ie', 'copy_the_promote_link', 'Cóipeáil an Nasc Chun Cinn', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13428, 'ie', 'write_a_review', 'Scríobh léirmheas', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13429, 'ie', 'your_name', 'Do ainm', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13430, 'ie', 'comment', 'Tráchtaireacht', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13431, 'ie', 'your_review', 'Do léirmheas', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13432, 'ie', 'submit_review', 'Cuir isteach athbhreithniú', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13433, 'ie', 'claire_willis', 'Claire Willis', '2021-02-09 07:35:03', '2021-09-20 07:29:47'),
(13434, 'ie', 'germaine_greene', 'Germaine Greene', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13435, 'ie', 'product_file', 'Comhad Táirgí', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13436, 'ie', 'choose_file', 'Roghnaigh comhad', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13437, 'ie', 'type_to_add_a_tag', 'Clóscríobh chun clib a chur leis', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13438, 'ie', 'images', 'Íomhánna', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13439, 'ie', 'main_images', 'Príomhíomhánna', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13440, 'ie', 'meta_tags', 'Clibeanna meta', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13441, 'ie', 'digital_product_has_been_inserted_successfully', 'Cuireadh Táirge Digiteach isteach go rathúil', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13442, 'ie', 'edit_digital_product', 'Cuir Táirge Digiteach in Eagar', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13443, 'ie', 'select_an_option', 'Roghnaigh rogha', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13444, 'ie', 'tax', 'cáin', '2021-02-09 07:35:04', '2021-02-09 07:35:04'),
(13445, 'ie', 'any_question_about_this_product', 'Aon cheist faoin táirge seo?', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13446, 'ie', 'sign_in', 'Sínigh isteach', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13447, 'ie', 'login_with_google', 'Logáil isteach le Google', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13448, 'ie', 'login_with_facebook', 'Logáil isteach le Facebook', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13449, 'ie', 'login_with_twitter', 'Logáil isteach le Twitter', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13450, 'ie', 'click_to_show_phone_number', 'Cliceáil chun uimhir theileafóin a thaispeáint', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13451, 'ie', 'other_ads_of', 'Fógraí Eile de', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13452, 'ie', 'store_home', 'Baile Stór', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13453, 'ie', 'top_selling', 'Díol Barr', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13454, 'ie', 'shop_settings', 'Socruithe Siopa', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13455, 'ie', 'visit_shop', 'Tabhair cuairt ar Siopa', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13456, 'ie', 'pickup_points', 'Pointí Piocála', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13457, 'ie', 'select_pickup_point', 'Roghnaigh Pickup Point', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13458, 'ie', 'slider_settings', 'Socruithe Sleamhnáin', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13459, 'ie', 'social_media_link', 'Nasc na Meán Sóisialta', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13460, 'ie', 'facebook', 'Facebook', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13461, 'ie', 'twitter', 'Twitter', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13462, 'ie', 'google', 'Google', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13463, 'ie', 'new_arrival_products', 'Táirgí Teacht Nua', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13464, 'ie', 'check_your_order_status', 'Seiceáil Stádas Do Ordaithe', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13465, 'ie', 'shipping_method', 'Modh Seachadta', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13466, 'ie', 'shipped_by', 'Seolta Faoi', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13467, 'ie', 'image', 'Íomha', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13468, 'ie', 'sub_sub_category', 'Fo-Chatagóir', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13469, 'ie', 'inhouse_products', 'Táirgí Intí', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13470, 'ie', 'forgot_password', 'Dearmad ar pasfhocal?', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13471, 'ie', 'enter_your_email_address_to_recover_your_password', 'Cuir isteach do sheoladh ríomhphoist chun do phasfhocal a aisghabháil.', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13472, 'ie', 'email_or_phone', 'Ríomhphost nó Fón', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13473, 'ie', 'send_password_reset_link', 'Seol Nasc Athshocraigh Pasfhocal', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13474, 'ie', 'back_to_login', 'Ar ais ar Logáil Isteach', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13475, 'ie', 'index', 'innéacs', '2021-02-09 07:35:04', '2021-02-09 07:35:04'),
(13476, 'ie', 'download_your_product', 'Íoslódáil Do Tháirge', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13477, 'ie', 'option', 'Rogha', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13478, 'ie', 'applied_refund_request', 'Iarratas ar Aisíocaíocht Fheidhmeach', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13479, 'ie', 'item_has_been_renoved_from_wishlist', 'Tá an mhír curtha ar ais ón liosta mian', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13480, 'ie', 'bulk_products_upload', 'Uaslódáil Táirgí Bulc', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13481, 'ie', 'upload_csv', 'Uaslódáil CSV', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13482, 'ie', 'create_a_ticket', 'Cruthaigh Ticéad', '2021-02-09 07:35:04', '2021-09-20 07:29:47'),
(13483, 'ie', 'tickets', 'Ticéid', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13484, 'ie', 'ticket_id', 'Aitheantas an ticéid', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13485, 'ie', 'sending_date', 'Dáta Seolta', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13486, 'ie', 'subject', 'Ábhar', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13487, 'ie', 'view_details', 'Féach Sonraí', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13488, 'ie', 'provide_a_detailed_description', 'Cuir síos mionsonraithe ar fáil', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13489, 'ie', 'type_your_reply', 'Clóscríobh do fhreagra', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13490, 'ie', 'send_ticket', 'Seol Ticéad', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13491, 'ie', 'load_more', 'Luchtaigh Tuilleadh', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13492, 'ie', 'jewelry__watches', 'Seodra & Uaireadóirí', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13493, 'ie', 'filters', 'Scagairí', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13494, 'ie', 'contact_address', 'Seoladh teagmhála', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13495, 'ie', 'contact_phone', 'Fón teagmhála', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13496, 'ie', 'contact_email', 'Déan teagmháil le ríomhphost', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13497, 'ie', 'filter_by', 'Scagaire le', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13498, 'ie', 'condition', 'Coinníoll', '2021-02-09 07:35:05', '2021-09-20 07:29:47'),
(13499, 'ie', 'all_type', 'Gach Cineál', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13500, 'ie', 'pay_with_wallet', 'Íoc le sparán', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13501, 'ie', 'select_variation', 'Roghnaigh éagsúlacht', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13502, 'ie', 'no_product_added', 'Gan Táirge curtha leis', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13503, 'ie', 'status_has_been_updated_successfully', 'Nuashonraíodh an stádas go rathúil', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13504, 'ie', 'all_seller_packages', 'Gach Pacáiste Díoltóra', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13505, 'ie', 'add_new_package', 'Cuir Pacáiste Nua leis', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13506, 'ie', 'package_logo', 'Lógó Pacáiste', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13507, 'ie', 'days', 'laethanta', '2021-02-09 07:35:05', '2021-02-09 07:35:05'),
(13508, 'ie', 'create_new_seller_package', 'Cruthaigh Pacáiste Díoltóra Nua', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13509, 'ie', 'package_name', 'Ainm an Phacáiste', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13510, 'ie', 'duration', 'Fad', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13511, 'ie', 'validity_in_number_of_days', 'Bailíocht i líon na laethanta', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13512, 'ie', 'update_package_information', 'Faisnéis faoin bPacáiste a Nuashonrú', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13513, 'ie', 'package_has_been_inserted_successfully', 'Cuireadh an pacáiste isteach go rathúil', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13514, 'ie', 'refund_request', 'Iarratas ar Aisíocaíocht', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13515, 'ie', 'reason', 'Cúis', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13516, 'ie', 'label', 'Lipéad', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13517, 'ie', 'select_label', 'Roghnaigh Lipéad', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13518, 'ie', 'multiple_select_label', 'Lipéad Il-Roghnaigh', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13519, 'ie', 'radio_label', 'Lipéad Raidió', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13520, 'ie', 'pickup_point_orders', 'Orduithe Pointe Piocála', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13521, 'ie', 'view', 'Amharc', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13522, 'ie', 'order_', 'Ordú #', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13523, 'ie', 'order_status', 'Stádas Ordaithe', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13524, 'ie', 'total_amount', 'Iomlán', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13525, 'ie', 'total', 'IOMLÁN', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13526, 'ie', 'delivery_status_has_been_updated', 'Nuashonraíodh an stádas seachadta', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13527, 'ie', 'payment_status_has_been_updated', 'Nuashonraíodh stádas íocaíochta', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13528, 'ie', 'invoice', 'INFHEISTÍOCHTA', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13529, 'ie', 'set_refund_time', 'Am Aisíocaíochta Socraithe', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13530, 'ie', 'set_time_for_sending_refund_request', 'Am Socraithe chun Iarratas ar Aisíocaíocht a sheoladh', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13531, 'ie', 'set_refund_sticker', 'Greamán Aisíocaíochta Socraithe', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13532, 'ie', 'sticker', 'Greamán', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13533, 'ie', 'refund_request_all', 'Iarraidh ar Aisíocaíocht Uile', '2021-02-09 07:35:05', '2021-09-20 07:29:48'),
(13534, 'ie', 'order_id', 'Ordú Id', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13535, 'ie', 'seller_approval', 'Faomhadh an Díoltóra', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13536, 'ie', 'admin_approval', 'Faomhadh Riaracháin', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13537, 'ie', 'refund_status', 'Stádas Aisíocaíochta', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13538, 'ie', 'no_refund', 'Gan Aisíocaíocht ar bith', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13539, 'ie', 'status_updated_successfully', 'Stádas nuashonraithe go rathúil', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13540, 'ie', 'user_search_report', 'Tuarascáil Cuardaigh Úsáideora', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13541, 'ie', 'search_by', 'Cuardaigh Faoi', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13542, 'ie', 'number_searches', 'Cuardach uimhreacha', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13543, 'ie', 'sender', 'Seoltóir', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13544, 'ie', 'receiver', 'Glacadóir', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13545, 'ie', 'verification_form_updated_successfully', 'Nuashonraíodh an fhoirm fíoraithe go rathúil', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13546, 'ie', 'invalid_email_or_password', 'R-phost nó pasfhocal neamhbhailí', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13547, 'ie', 'all_coupons', 'Gach Cúpón', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13548, 'ie', 'add_new_coupon', 'Cuir Cúpón Nua leis', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13549, 'ie', 'coupon_information', 'Eolas Cúpón', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13550, 'ie', 'start_date', 'Dáta tosaigh', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13551, 'ie', 'end_date', 'Dáta deiridh', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13552, 'ie', 'product_base', 'Bonn Táirgí', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13553, 'ie', 'send_newsletter', 'Seol Nuachtlitir', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13554, 'ie', 'mobile_users', 'Úsáideoirí Soghluaiste', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13555, 'ie', 'sms_subject', 'Ábhar SMS', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13556, 'ie', 'sms_content', 'Ábhar SMS', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13557, 'ie', 'all_flash_delas', 'Gach Flash Delas', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13558, 'ie', 'create_new_flash_dela', 'Cruthaigh Dela Flash Nua', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13559, 'ie', 'page_link', 'Nasc Leathanach', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13560, 'ie', 'flash_deal_information', 'Eolas faoi Bheart Flash', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13561, 'ie', 'background_color', 'Dath Cúlra', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13562, 'ie', '0000ff', '# 0000ff', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13563, 'ie', 'text_color', 'Dath an Téacs', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13564, 'ie', 'white', 'Bán', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13565, 'ie', 'dark', 'Dorcha', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13566, 'ie', 'choose_products', 'Roghnaigh Táirgí', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13567, 'ie', 'discounts', 'Lascainí', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13568, 'ie', 'discount_type', 'Cineál Lascaine', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13569, 'ie', 'twillo_credential', 'Dintiúr Twillo', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13570, 'ie', 'twilio_sid', 'TWILIO SID', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13571, 'ie', 'twilio_auth_token', 'TWILIO AUTH TOKEN', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13572, 'ie', 'twilio_verify_sid', 'SID FÍOR TWILIO', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13573, 'ie', 'valid_twillo_number', 'UIMHIR DÍOL DÍOL', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13574, 'ie', 'nexmo_credential', 'Dintiúr Nexmo', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13575, 'ie', 'nexmo_key', 'EOCHAIR NEXMO', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13576, 'ie', 'nexmo_secret', 'RÚNAÍ NEXMO', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13577, 'ie', 'ssl_wireless_credential', 'Dintiúr Gan Sreang SSL', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13578, 'ie', 'ssl_sms_api_token', 'SSL SMS API TOKEN', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13579, 'ie', 'ssl_sms_sid', 'SSL SMS SID', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13580, 'ie', 'ssl_sms_url', 'URL SMS SSL', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13581, 'ie', 'fast2sms_credential', 'Dintiúr Fast2SMS', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13582, 'ie', 'auth_key', 'Dearbh-EOCHAIR', '2021-02-09 07:35:06', '2021-09-20 07:29:48'),
(13583, 'ie', 'route', 'BÓTHAR', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13584, 'ie', 'promotional_use', 'Úsáid Chur Chun Cinn', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13585, 'ie', 'transactional_use', 'Úsáid Idirbheartach', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13586, 'ie', 'sender_id', 'ID SENDER', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13587, 'ie', 'nexmo_otp', 'Nexmo OTP', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13588, 'ie', 'twillo_otp', 'Twillo OTP', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13589, 'ie', 'ssl_wireless_otp', 'OTP Gan Sreang SSL', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13590, 'ie', 'fast2sms_otp', 'Fast2SMS OTP', '2021-02-09 07:35:07', '2021-09-20 07:29:48');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(13591, 'ie', 'order_placement', 'Socrúchán Ordaithe', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13592, 'ie', 'delivery_status_changing_time', 'Stádas Seachadta Am Athraithe', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13593, 'ie', 'paid_status_changing_time', 'Stádas Íoctha Am Athraithe', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13594, 'ie', 'send_bulk_sms', 'Seol Bulc SMS', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13595, 'ie', 'all_subscribers', 'Gach Suibscríobhaí', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13596, 'ie', 'coupon_information_adding', 'Faisnéis Cúpón a Chur Leis', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13597, 'ie', 'coupon_type', 'Cineál Cúpón', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13598, 'ie', 'for_products', 'Le haghaidh Táirgí', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13599, 'ie', 'for_total_orders', 'Le haghaidh Orduithe Iomlán', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13600, 'ie', 'add_your_product_base_coupon', 'Cuir Do Cúpón Bonn Táirgí leis', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13601, 'ie', 'coupon_code', 'Cód cúpón', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13602, 'ie', 'sub_category', 'Fo-Chatagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13603, 'ie', 'add_more', 'Cuir Tuilleadh leis', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13604, 'ie', 'add_your_cart_base_coupon', 'Cuir Do Cúpón Bonn Cart', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13605, 'ie', 'minimum_shopping', 'Siopadóireacht Íosta', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13606, 'ie', 'maximum_discount_amount', 'Uasmhéid Lascaine', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13607, 'ie', 'coupon_information_update', 'Nuashonrú Faisnéise Cúpón', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13608, 'ie', 'please_configure_smtp_setting_to_work_all_email_sending_funtionality', 'Cumraigh Socrú SMTP le do thoil chun gach spraoi seolta ríomhphoist a oibriú', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13609, 'ie', 'configure_now', 'Cumraigh Anois', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13610, 'ie', 'total_published_products', 'Iomlán na dtáirgí foilsithe', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13611, 'ie', 'total_sellers_products', 'Táirgí díoltóirí iomlána', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13612, 'ie', 'total_admin_products', 'Iomlán na dtáirgí riaracháin', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13613, 'ie', 'manage_products', 'Bainistigh Táirgí', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13614, 'ie', 'total_product_category', 'Catagóir iomlán an táirge', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13615, 'ie', 'create_category', 'Cruthaigh Catagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13616, 'ie', 'total_product_sub_sub_category', 'Fo-chatagóir iomlán an táirge', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13617, 'ie', 'create_sub_sub_category', 'Cruthaigh Fo-Chatagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13618, 'ie', 'total_product_sub_category', 'Fo-chatagóir iomlán an táirge', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13619, 'ie', 'create_sub_category', 'Cruthaigh Fo-Chatagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13620, 'ie', 'total_product_brand', 'Branda iomlán an táirge', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13621, 'ie', 'create_brand', 'Cruthaigh Branda', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13622, 'ie', 'total_sellers', 'Díoltóirí iomlána', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13623, 'ie', 'total_approved_sellers', 'Iomlán na ndíoltóirí ceadaithe', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13624, 'ie', 'total_pending_sellers', 'Iomlán na ndíoltóirí atá ar feitheamh', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13625, 'ie', 'manage_sellers', 'Bainistigh Díoltóirí', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13626, 'ie', 'category_wise_product_sale', 'Catagóir díolachán táirge ciallmhar', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13627, 'ie', 'sale', 'Díol', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13628, 'ie', 'category_wise_product_stock', 'Stoc táirge de réir catagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13629, 'ie', 'category_name', 'Ainm Catagóir', '2021-02-09 07:35:07', '2021-09-20 07:29:48'),
(13630, 'ie', 'stock', 'Stoc', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13631, 'ie', 'frontend', 'Ceann tosaigh', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13632, 'ie', 'home_page', 'Leathanach baile', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13633, 'ie', 'setting', 'suíomh', '2021-02-09 07:35:08', '2021-02-09 07:35:08'),
(13634, 'ie', 'policy_page', 'Leathanach beartais', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13635, 'ie', 'general', 'Ginearálta', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13636, 'ie', 'click_here', 'Cliceáil anseo', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13637, 'ie', 'useful_link', 'Nasc úsáideach', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13638, 'ie', 'activation', 'Gníomhachtú', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13639, 'ie', 'smtp', 'SMTP', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13640, 'ie', 'payment_method', 'Modh íocaíochta', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13641, 'ie', 'social_media', 'Na meáin shóisialta', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13642, 'ie', 'business', 'Gnó', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13643, 'ie', 'seller_verification', 'Fíorú díoltóra', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13644, 'ie', 'form_setting', 'socrú foirme', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13645, 'ie', 'language', 'Teanga', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13646, 'ie', 'dashboard', 'Painéal na nIonstraimí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13647, 'ie', 'pos_system', 'Córas POS', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13648, 'ie', 'pos_manager', 'Bainisteoir POS', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13649, 'ie', 'pos_configuration', 'Cumraíocht POS', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13650, 'ie', 'products', 'Táirgí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13651, 'ie', 'add_new_product', 'Cuir táirge nua leis', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13652, 'ie', 'all_products', 'Gach Táirgí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13653, 'ie', 'in_house_products', 'Táirgí Intí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13654, 'ie', 'seller_products', 'Táirgí Díoltóra', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13655, 'ie', 'digital_products', 'Táirgí Digiteacha', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13656, 'ie', 'bulk_import', 'Bulc-Iompórtáil', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13657, 'ie', 'bulk_export', 'Bulc Easpórtáil', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13658, 'ie', 'category', 'Catagóir', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13659, 'ie', 'subcategory', 'Fochatagóir', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13660, 'ie', 'sub_subcategory', 'Fochatagóir', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13661, 'ie', 'brand', 'Branda', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13662, 'ie', 'attribute', 'Tréith', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13663, 'ie', 'product_reviews', 'Léirmheasanna ar Tháirgí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13664, 'ie', 'sales', 'Díolacháin', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13665, 'ie', 'all_orders', 'Gach Ordú', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13666, 'ie', 'inhouse_orders', 'Orduithe intí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13667, 'ie', 'seller_orders', 'Orduithe Díoltóra', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13668, 'ie', 'pickup_point_order', 'Ordú Pointe Pioc suas', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13669, 'ie', 'refunds', 'Aisíocaíochtaí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13670, 'ie', 'refund_requests', 'Iarrataí ar Aisíocaíocht', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13671, 'ie', 'approved_refund', 'Aisíocaíocht Cheadaithe', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13672, 'ie', 'refund_configuration', 'Cumraíocht Aisíocaíochta', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13673, 'ie', 'customers', 'Custaiméirí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13674, 'ie', 'customer_list', 'Liosta custaiméirí', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13675, 'ie', 'classified_products', 'Táirgí Rangaithe', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13676, 'ie', 'classified_packages', 'Pacáistí Rangaithe', '2021-02-09 07:35:08', '2021-09-20 07:29:48'),
(13677, 'ie', 'sellers', 'Díoltóirí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13678, 'ie', 'all_seller', 'Gach Díoltóir', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13679, 'ie', 'payouts', 'Íocaíochtaí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13680, 'ie', 'payout_requests', 'Iarrataí Íocaíochta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13681, 'ie', 'seller_commission', 'An Coimisiún Díoltóra', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13682, 'ie', 'seller_packages', 'Pacáistí Díoltóra', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13683, 'ie', 'seller_verification_form', 'Foirm Fíoraithe Díoltóra', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13684, 'ie', 'reports', 'Tuarascálacha', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13685, 'ie', 'in_house_product_sale', 'Díol Táirgí Intí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13686, 'ie', 'seller_products_sale', 'Díol Táirgí Díoltóra', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13687, 'ie', 'products_stock', 'Stoc Táirgí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13688, 'ie', 'products_wishlist', 'Liosta mian táirgí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13689, 'ie', 'user_searches', 'Cuardaigh Úsáideoirí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13690, 'ie', 'marketing', 'Margaíocht', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13691, 'ie', 'flash_deals', 'Déileálann Flash', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13692, 'ie', 'newsletters', 'Nuachtlitreacha', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13693, 'ie', 'bulk_sms', 'Bulc SMS', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13694, 'ie', 'subscribers', 'Síntiúsóirí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13695, 'ie', 'coupon', 'Cúpón', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13696, 'ie', 'support', 'Tacaíocht', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13697, 'ie', 'ticket', 'Ticéad', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13698, 'ie', 'product_queries', 'Fiosrúcháin Táirgí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13699, 'ie', 'website_setup', 'Socrú Suíomh Gréasáin', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13700, 'ie', 'header', 'Ceanntásc', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13701, 'ie', 'footer', 'Buntásc', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13702, 'ie', 'pages', 'Leathanaigh', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13703, 'ie', 'appearance', 'Dealramh', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13704, 'ie', 'setup__configurations', 'Socrú & Cumraíochtaí', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13705, 'ie', 'general_settings', 'Socruithe Ginearálta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13706, 'ie', 'features_activation', 'Gnéithe gníomhachtú', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13707, 'ie', 'languages', 'Teangacha', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13708, 'ie', 'currency', 'Airgeadra', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13709, 'ie', 'pickup_point', 'Pointe pioctha', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13710, 'ie', 'smtp_settings', 'Socruithe SMTP', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13711, 'ie', 'payment_methods', 'Modhanna Íocaíochta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13712, 'ie', 'file_system_configuration', 'Cumraíocht an Chórais Comhad', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13713, 'ie', 'social_media_logins', 'Logins na meán sóisialta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13714, 'ie', 'analytics_tools', 'Uirlisí Analytics', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13715, 'ie', 'facebook_chat', 'Comhrá Facebook', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13716, 'ie', 'google_recaptcha', 'Google reCAPTCHA', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13717, 'ie', 'shipping_configuration', 'Cumraíocht Loingseoireachta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13718, 'ie', 'shipping_countries', 'Tíortha Loingseoireachta', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13719, 'ie', 'affiliate_system', 'Córas Affiliate', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13720, 'ie', 'affiliate_registration_form', 'Foirm Chláraithe Affiliate', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13721, 'ie', 'affiliate_configurations', 'Cumraíochtaí Cleamhnaithe', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13722, 'ie', 'affiliate_users', 'Úsáideoirí Cleamhnaithe', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13723, 'ie', 'referral_users', 'Úsáideoirí Atreoraithe', '2021-02-09 07:35:09', '2021-09-20 07:29:48'),
(13724, 'ie', 'affiliate_withdraw_requests', 'Iarratais ar aistarraingt chleamhnaithe', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13725, 'ie', 'offline_payment_system', 'Córas Íocaíochta As Líne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13726, 'ie', 'manual_payment_methods', 'Modhanna Íocaíochta Láimhe', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13727, 'ie', 'offline_wallet_recharge', 'Athshlánú Sparán As Líne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13728, 'ie', 'offline_customer_package_payments', 'Íocaíochtaí Pacáiste Custaiméirí As Líne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13729, 'ie', 'offline_seller_package_payments', 'Íocaíochtaí Pacáiste Díoltóra As Líne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13730, 'ie', 'paytm_payment_gateway', 'Geata Íocaíochta Paytm', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13731, 'ie', 'set_paytm_credentials', 'Socraigh Dintiúir Paytm', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13732, 'ie', 'club_point_system', 'Córas Pointe Club', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13733, 'ie', 'club_point_configurations', 'Cumraíochtaí Pointe Club', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13734, 'ie', 'set_product_point', 'Pointe Táirgí Socraithe', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13735, 'ie', 'user_points', 'Pointí Úsáideora', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13736, 'ie', 'otp_system', 'Córas OTP', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13737, 'ie', 'otp_configurations', 'Cumraíochtaí OTP', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13738, 'ie', 'set_otp_credentials', 'Socraigh Dintiúir OTP', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13739, 'ie', 'staffs', 'Foirne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13740, 'ie', 'all_staffs', 'Gach foireann', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13741, 'ie', 'staff_permissions', 'Ceadanna foirne', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13742, 'ie', 'addon_manager', 'Bainisteoir Addon', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13743, 'ie', 'browse_website', 'Brabhsáil Suíomh Gréasáin', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13744, 'ie', 'pos', 'POS', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13745, 'ie', 'notifications', 'Fógraí', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13746, 'ie', 'new_orders', 'orduithe nua', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13747, 'ie', 'userimage', 'íomhá úsáideora', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13748, 'ie', 'profile', 'Próifíl', '2021-02-09 07:35:10', '2021-09-20 07:29:48'),
(13749, 'ie', 'logout', 'Logáil Amach', '2021-02-09 07:35:40', '2021-09-20 07:29:48'),
(13750, 'ie', 'page_not_found', 'Ní bhfuarthas an leathanach!', '2021-02-09 07:35:40', '2021-09-20 07:29:48'),
(13751, 'ie', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'Ní bhfuarthas an leathanach atá á lorg agat ar ár bhfreastalaí.', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13752, 'ie', 'registration', 'Clárú', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13753, 'ie', 'i_am_shopping_for', 'Táim ag siopadóireacht le haghaidh ...', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13754, 'ie', 'compare', 'Déan comparáid idir', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13755, 'ie', 'wishlist', 'Liosta Mianta', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13756, 'ie', 'cart', 'Cart', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13757, 'ie', 'your_cart_is_empty', 'Tá do Chairt folamh', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13758, 'ie', 'categories', 'Catagóirí', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13759, 'ie', 'see_all', 'Gach rud a fheicáil', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13760, 'ie', 'seller_policy', 'Beartas Díoltóra', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13761, 'ie', 'return_policy', 'Beartas um Fhilleadh', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13762, 'ie', 'support_policy', 'Beartas Tacaíochta', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13763, 'ie', 'privacy_policy', 'Beartas Príobháideachais', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13764, 'ie', 'your_email_address', 'Do sheoladh ríomhphoist', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13765, 'ie', 'subscribe', 'Liostáil', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13766, 'ie', 'contact_info', 'Eolas teagmhála', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13767, 'ie', 'address', 'Seoladh', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13768, 'ie', 'phone', 'Fón', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13769, 'ie', 'email', 'Ríomhphost', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13770, 'ie', 'login', 'Login', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13771, 'ie', 'my_account', 'My Account', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13772, 'ie', 'order_history', 'Order History', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13773, 'ie', 'my_wishlist', 'My Wishlist', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13774, 'ie', 'track_order', 'Track Order', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13775, 'ie', 'be_an_affiliate_partner', 'Be an affiliate partner', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13776, 'ie', 'be_a_seller', 'Be a Seller', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13777, 'ie', 'apply_now', 'Apply Now', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13778, 'ie', 'confirmation', 'Confirmation', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13779, 'ie', 'delete_confirmation_message', 'Delete confirmation message', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13780, 'ie', 'cancel', 'Cancel', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13781, 'ie', 'delete', 'Scrios', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13782, 'ie', 'item_has_been_added_to_compare_list', 'Item has been added to compare list', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13783, 'ie', 'please_login_first', 'Please login first', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13784, 'ie', 'total_earnings_from', 'Total Earnings From', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13785, 'ie', 'client_subscription', 'Client Subscription', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13786, 'ie', 'product_category', 'Product category', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13787, 'ie', 'product_sub_sub_category', 'Product sub sub category', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13788, 'ie', 'product_sub_category', 'Product sub category', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13789, 'ie', 'product_brand', 'Product brand', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13790, 'ie', 'top_client_packages', 'Top Client Packages', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13791, 'ie', 'top_freelancer_packages', 'Top Freelancer Packages', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13792, 'ie', 'number_of_sale', 'Number of sale', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13793, 'ie', 'number_of_stock', 'Number of Stock', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13794, 'ie', 'top_10_products', 'Top 10 Products', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13795, 'ie', 'top_12_products', 'Top 12 Products', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13796, 'ie', 'admin_can_not_be_a_seller', 'Admin can not be a seller', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13797, 'ie', 'filter_by_rating', 'Filter by Rating', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13798, 'ie', 'published_reviews_updated_successfully', 'Published reviews updated successfully', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13799, 'ie', 'refund_sticker_has_been_updated_successfully', 'Refund Sticker has been updated successfully', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13800, 'ie', 'edit_product', 'Edit Product', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13801, 'ie', 'meta_images', 'Meta Images', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13802, 'ie', 'update_product', 'Update Product', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13803, 'ie', 'product_has_been_deleted_successfully', 'Product has been deleted successfully', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13804, 'ie', 'your_profile_has_been_updated_successfully', 'Your Profile has been updated successfully!', '2021-02-09 07:35:41', '2021-09-20 07:29:48'),
(13805, 'ie', 'upload_limit_has_been_reached_please_upgrade_your_package', 'Upload limit has been reached. Please upgrade your package.', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13806, 'ie', 'add_your_product', 'Add Your Product', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13807, 'ie', 'select_a_category', 'Select a category', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13808, 'ie', 'select_a_brand', 'Select a brand', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13809, 'ie', 'product_unit', 'Product Unit', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13810, 'ie', 'minimum_qty', 'Minimum Qty.', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13811, 'ie', 'product_tag', 'Product Tag', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13812, 'ie', 'type__hit_enter', 'Type & hit enter', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13813, 'ie', 'videos', 'Videos', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13814, 'ie', 'video_from', 'Video From', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13815, 'ie', 'video_url', 'Video URL', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13816, 'ie', 'customer_choice', 'Customer Choice', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13817, 'ie', 'pdf', 'PDF', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13818, 'ie', 'choose_pdf', 'Choose PDF', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13819, 'ie', 'select_category', 'Select Category', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13820, 'ie', 'target_category', 'Target Category', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13821, 'ie', 'subsubcategory', 'subsubcategory', '2021-02-09 07:35:42', '2021-02-09 07:35:42'),
(13822, 'ie', 'search_category', 'Search Category', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13823, 'ie', 'search_subcategory', 'Search SubCategory', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13824, 'ie', 'search_subsubcategory', 'Search SubSubCategory', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13825, 'ie', 'update_your_product', 'Update your product', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13826, 'ie', 'product_has_been_updated_successfully', 'Product has been updated successfully', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13827, 'ie', 'add_your_digital_product', 'Add Your Digital Product', '2021-02-09 07:35:42', '2021-09-20 07:29:48'),
(13828, 'ie', 'active_ecommerce_cms_update_process', 'Active eCommerce CMS Update Process', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13829, 'ie', 'codecanyon_purchase_code', 'Codecanyon purchase code', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13830, 'ie', 'database_name', 'Database Name', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13831, 'ie', 'database_username', 'Database Username', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13832, 'ie', 'database_password', 'Database Password', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13833, 'ie', 'database_hostname', 'Database Hostname', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13834, 'ie', 'update_now', 'Update Now', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13835, 'ie', 'congratulations', 'Congratulations', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13836, 'ie', 'you_have_successfully_completed_the_updating_process_please_login_to_continue', 'You have successfully completed the updating process. Please Login to continue', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13837, 'ie', 'go_to_home', 'Go to Home', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13838, 'ie', 'login_to_admin_panel', 'Login to Admin panel', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13839, 'ie', 's3_file_system_credentials', 'S3 File System Credentials', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13840, 'ie', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13841, 'ie', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13842, 'ie', 'aws_default_region', 'AWS_DEFAULT_REGION', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13843, 'ie', 'aws_bucket', 'AWS_BUCKET', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13844, 'ie', 'aws_url', 'AWS_URL', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13845, 'ie', 's3_file_system_activation', 'S3 File System Activation', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13846, 'ie', 'your_phone_number', 'Your phone number', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13847, 'ie', 'zip_file', 'Zip File', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13848, 'ie', 'install', 'Install', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13849, 'ie', 'this_version_is_not_capable_of_installing_addons_please_update', 'This version is not capable of installing Addons, Please update.', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13850, 'ie', 'search_in_menu', 'Search in menu', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13851, 'ie', 'uploaded_files', 'Uploaded Files', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13852, 'ie', 'shipping_cities', 'Shipping Cities', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13853, 'ie', 'system', 'System', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13854, 'ie', 'server_status', 'Server status', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13855, 'ie', 'nothing_found', 'Nothing Found', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13856, 'ie', 'parent_category', 'Parent Category', '2021-02-09 07:35:42', '2021-09-20 07:29:49'),
(13857, 'ie', 'level', 'Level', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13858, 'ie', 'category_information', 'Category Information', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13859, 'ie', 'translatable', 'Translatable', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13860, 'ie', 'no_parent', 'No Parent', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13861, 'ie', 'physical', 'Physical', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13862, 'ie', 'digital', 'Digital', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13863, 'ie', '200x200', '200x200', '2021-02-09 07:35:43', '2021-02-09 07:35:43'),
(13864, 'ie', '32x32', '32x32', '2021-02-09 07:35:43', '2021-02-09 07:35:43'),
(13865, 'ie', 'search_your_files', 'Search your files', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13866, 'ie', 'category_has_been_updated_successfully', 'Category has been updated successfully', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13867, 'ie', 'all_uploaded_files', 'All uploaded files', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13868, 'ie', 'upload_new_file', 'Upload New File', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13869, 'ie', 'all_files', 'All files', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13870, 'ie', 'search', 'Search', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13871, 'ie', 'details_info', 'Details Info', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13872, 'ie', 'copy_link', 'Copy Link', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13873, 'ie', 'are_you_sure_to_delete_this_file', 'Are you sure to delete this file?', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13874, 'ie', 'file_info', 'File Info', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13875, 'ie', 'link_copied_to_clipboard', 'Link copied to clipboard', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13876, 'ie', 'oops_unable_to_copy', 'Oops, unable to copy', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13877, 'ie', 'file_deleted_successfully', 'File deleted successfully', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13878, 'ie', 'add_new_brand', 'Add New Brand', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13879, 'ie', '120x80', '120x80', '2021-02-09 07:35:43', '2021-02-09 07:35:43'),
(13880, 'ie', 'brand_information', 'Brand Information', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13881, 'ie', 'brand_has_been_updated_successfully', 'Brand has been updated successfully', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13882, 'ie', 'brand_has_been_deleted_successfully', 'Brand has been deleted successfully', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13883, 'ie', 'this_is_used_for_search_input_those_words_by_which_cutomer_can_find_this_product', 'This is used for search. Input those words by which cutomer can find this product.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13884, 'ie', 'these_images_are_visible_in_product_details_page_gallery_use_600x600_sizes_images', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13885, 'ie', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13886, 'ie', 'use_proper_link_without_extra_parameter_dont_use_short_share_linkembeded_iframe_code', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13887, 'ie', 'save_product', 'Save Product', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13888, 'ie', 'product_has_been_inserted_successfully', 'Product has been inserted successfully', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13889, 'ie', 'something_went_wrong', 'Something went wrong!', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13890, 'ie', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Sorry for the inconvenience, but we\'re working on it.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13891, 'ie', 'error_code', 'Error code', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13892, 'ie', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13893, 'ie', 'order', 'Order', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13894, 'ie', 'we_have_limited_banner_height_to_maintain_ui_we_had_to_crop_from_both_left__right_side_in_view_for_different_devices_to_make_it_responsive_before_designing_banner_keep_these_points_in_mind', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13895, 'ie', 'home_banner_3_max_3', 'Home Banner 3 (Max 3)', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13896, 'ie', 'add_new_seller', 'Add New Seller', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13897, 'ie', 'filter_by_approval', 'Filter by Approval', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13898, 'ie', 'nonapproved', 'Non-Approved', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13899, 'ie', 'type_name_or_email__enter', 'Type name or email & Enter', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13900, 'ie', 'due_to_seller', 'Due to seller', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13901, 'ie', 'log_in_as_this_seller', 'Log in as this Seller', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13902, 'ie', 'go_to_payment', 'Go to Payment', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13903, 'ie', 'ban_this_seller', 'Ban this seller', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13904, 'ie', 'do_you_really_want_to_ban_this_seller', 'Do you really want to ban this seller?', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13905, 'ie', 'proceed', 'Proceed!', '2021-02-09 07:35:43', '2021-09-20 07:29:49'),
(13906, 'ie', 'approved_sellers_updated_successfully', 'Approved sellers updated successfully', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13907, 'ie', 'seller_has_been_deleted_successfully', 'Seller has been deleted successfully', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13908, 'ie', 'seller_information', 'Seller Information', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13909, 'ie', 'seller_has_been_inserted_successfully', 'Seller has been inserted successfully', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13910, 'ie', 'email_already_exists', 'Email already exists!', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13911, 'ie', 'verify_your_email_address', 'Verify Your Email Address', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13912, 'ie', 'before_proceeding_please_check_your_email_for_a_verification_link', 'Before proceeding, please check your email for a verification link.', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13913, 'ie', 'if_you_did_not_receive_the_email', 'If you did not receive the email.', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13914, 'ie', 'click_here_to_request_another', 'Click here to request another', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13915, 'ie', 'email_verification', 'Email Verification', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13916, 'ie', 'email_verification__', 'Email Verification -', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13917, 'ie', 'https_activation', 'HTTPS Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13918, 'ie', 'maintenance_mode', 'Maintenance Mode', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13919, 'ie', 'maintenance_mode_activation', 'Maintenance Mode Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13920, 'ie', 'classified_product_activate', 'Classified Product Activate', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13921, 'ie', 'classified_product', 'Classified Product', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13922, 'ie', 'business_related', 'Business Related', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13923, 'ie', 'vendor_system_activation', 'Vendor System Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13924, 'ie', 'wallet_system_activation', 'Wallet System Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13925, 'ie', 'coupon_system_activation', 'Coupon System Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13926, 'ie', 'pickup_point_activation', 'Pickup Point Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13927, 'ie', 'conversation_activation', 'Conversation Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13928, 'ie', 'guest_checkout_activation', 'Guest Checkout Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13929, 'ie', 'categorybased_commission', 'Category-based Commission', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13930, 'ie', 'after_activate_this_option_seller_commision_will_be_disabled_and_you_need_to_set_commission_on_each_category_otherwise_admin_will_not_get_any_commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13931, 'ie', 'set_commisssion_now', 'Set Commisssion Now', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13932, 'ie', 'payment_related', 'Payment Related', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13933, 'ie', 'paypal_payment_activation', 'Paypal Payment Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13934, 'ie', 'you_need_to_configure_paypal_correctly_to_enable_this_feature', 'You need to configure Paypal correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13935, 'ie', 'stripe_payment_activation', 'Stripe Payment Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13936, 'ie', 'sslcommerz_activation', 'SSlCommerz Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13937, 'ie', 'instamojo_payment_activation', 'Instamojo Payment Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13938, 'ie', 'you_need_to_configure_instamojo_payment_correctly_to_enable_this_feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13939, 'ie', 'razor_pay_activation', 'Razor Pay Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13940, 'ie', 'you_need_to_configure_razor_correctly_to_enable_this_feature', 'You need to configure Razor correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13941, 'ie', 'paystack_activation', 'PayStack Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13942, 'ie', 'you_need_to_configure_paystack_correctly_to_enable_this_feature', 'You need to configure PayStack correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13943, 'ie', 'voguepay_activation', 'VoguePay Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13944, 'ie', 'you_need_to_configure_voguepay_correctly_to_enable_this_feature', 'You need to configure VoguePay correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13945, 'ie', 'payhere_activation', 'Payhere Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13946, 'ie', 'ngenius_activation', 'Ngenius Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13947, 'ie', 'you_need_to_configure_ngenius_correctly_to_enable_this_feature', 'You need to configure Ngenius correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13948, 'ie', 'iyzico_activation', 'Iyzico Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13949, 'ie', 'you_need_to_configure_iyzico_correctly_to_enable_this_feature', 'You need to configure iyzico correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13950, 'ie', 'bkash_activation', 'Bkash Activation', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13951, 'ie', 'you_need_to_configure_bkash_correctly_to_enable_this_feature', 'You need to configure bkash correctly to enable this feature', '2021-02-09 07:35:44', '2021-09-20 07:29:49'),
(13952, 'ie', 'nagad_activation', 'Nagad Activation', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13953, 'ie', 'you_need_to_configure_nagad_correctly_to_enable_this_feature', 'You need to configure nagad correctly to enable this feature', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13954, 'ie', 'cash_payment_activation', 'Cash Payment Activation', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13955, 'ie', 'social_media_login', 'Social Media Login', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13956, 'ie', 'facebook_login', 'Facebook login', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13957, 'ie', 'you_need_to_configure_facebook_client_correctly_to_enable_this_feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13958, 'ie', 'google_login', 'Google login', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13959, 'ie', 'you_need_to_configure_google_client_correctly_to_enable_this_feature', 'You need to configure Google Client correctly to enable this feature', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13960, 'ie', 'twitter_login', 'Twitter login', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13961, 'ie', 'you_need_to_configure_twitter_client_correctly_to_enable_this_feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13962, 'ie', 'shop_logo', 'Shop Logo', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13963, 'ie', 'shop_address', 'Shop Address', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13964, 'ie', 'banner_settings', 'Banner Settings', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13965, 'ie', 'banners', 'Banners', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13966, 'ie', 'we_had_to_limit_height_to_maintian_consistancy_in_some_device_both_side_of_the_banner_might_be_cropped_for_height_limitation', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13967, 'ie', 'insert_link_with_https_', 'Insert link with https', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13968, 'ie', 'your_shop_has_been_updated_successfully', 'Nuashonraíodh Do Siopa go rathúil!', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13969, 'ie', 'search_result_for_', 'Toradh cuardaigh do', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13970, 'ie', 'brand_has_been_inserted_successfully', 'Cuireadh branda isteach go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13971, 'ie', 'about', 'Faoi', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13972, 'ie', 'payout_info', 'Eolas Íocaíochta', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13973, 'ie', 'bank_acc_name', 'Ainm Acc Bainc', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13974, 'ie', 'bank_acc_number', 'Uimhir Acc Bainc', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13975, 'ie', 'total_products', 'Táirgí Iomlán', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13976, 'ie', 'total_sold_amount', 'Méid Iomlán Díolta', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13977, 'ie', 'wallet_balance', 'Cothromaíocht Sparán', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13978, 'ie', 'cookies_agreement', 'Comhaontú Fianán', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13979, 'ie', 'cookies_agreement_text', 'Téacs an Chomhaontaithe Fianán', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13980, 'ie', 'show_cookies_agreement', 'Taispeáin Comhaontú Fianán?', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13981, 'ie', 'custom_script', 'Script Saincheaptha', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13982, 'ie', 'header_custom_script__before_head', 'Script saincheaptha ceanntásc - roimh </head>', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13983, 'ie', 'write_script_with_script_tag', 'Scríobh script le <tag tag', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13984, 'ie', 'footer_custom_script__before_body', 'Script saincheaptha buntásc - roimh </body>', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13985, 'ie', 'category_has_been_inserted_successfully', 'Cuireadh catagóir isteach go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13986, 'ie', 'all_flash_deals', 'Gach Margadh Flash', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13987, 'ie', 'create_new_flash_deal', 'Cruthaigh Flash Deal Nua', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13988, 'ie', 'ffffff', '#FFFFFF', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13989, 'ie', 'this_image_is_shown_as_cover_banner_in_flash_deal_details_page', 'Taispeántar an íomhá seo mar bhratach clúdaigh ar leathanach mionsonraí déileála splanc.', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13990, 'ie', 'flash_deal_has_been_inserted_successfully', 'Cuireadh Flash Deal isteach go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13991, 'ie', 'flash_deal_status_updated_successfully', 'Nuashonraíodh stádas déileála Flash go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13992, 'ie', 'flash_deal_has_been_updated_successfully', 'Nuashonraíodh Flash Deal go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13993, 'ie', 'update_language_info', 'Faisnéis Teanga a nuashonrú', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13994, 'ie', 'language_has_been_updated_successfully', 'Nuashonraíodh an teanga go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13995, 'ie', 'type_key__enter', 'Eochair cineál & Iontráil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13996, 'ie', 'translations_updated_for_', 'Aistriúcháin nuashonraithe do', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(13997, 'ie', 'language_has_been_inserted_successfully', 'Cuireadh teanga isteach go rathúil', '2021-02-09 07:35:45', '2021-09-20 07:29:49'),
(25059, 'en', 'verify_now', 'Verify Now', '2021-02-11 06:00:02', '2021-09-20 07:30:23'),
(25060, 'en', 'iyzico', 'Iyzico', '2021-02-11 06:50:18', '2021-09-20 07:30:23'),
(25061, 'en', 'bkash_credential', 'Bkash Credential', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25062, 'en', 'bkash_checkout_app_key', 'BKASH CHECKOUT APP KEY', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25063, 'en', 'bkash_checkout_app_secret', 'BKASH CHECKOUT APP SECRET', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25064, 'en', 'bkash_checkout_user_name', 'BKASH CHECKOUT USER NAME', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25065, 'en', 'bkash_checkout_password', 'BKASH CHECKOUT PASSWORD', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25066, 'en', 'bkash_sandbox_mode', 'Bkash Sandbox Mode', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25067, 'en', 'nagad_credential', 'Nagad Credential', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25068, 'en', 'nagad_mode', 'NAGAD MODE', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25069, 'en', 'nagad_merchant_id', 'NAGAD MERCHANT ID', '2021-02-11 06:50:42', '2021-09-20 07:30:23'),
(25070, 'en', 'nagad_merchant_number', 'NAGAD MERCHANT NUMBER', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25071, 'en', 'nagad_pg_public_key', 'NAGAD PG PUBLIC KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25072, 'en', 'nagad_merchant_private_key', 'NAGAD MERCHANT PRIVATE KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25073, 'en', 'iyzico_credential', 'Iyzico Credential', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25074, 'en', 'iyzico_api_key', 'IYZICO_API_KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25075, 'en', 'iyzico_api_key', 'IYZICO API KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25076, 'en', 'iyzico_secret_key', 'IYZICO_SECRET_KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25077, 'en', 'iyzico_secret_key', 'IYZICO SECRET KEY', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25078, 'en', 'iyzico_sandbox_mode', 'IYZICO Sandbox Mode', '2021-02-11 06:50:43', '2021-09-20 07:30:23'),
(25079, 'en', 'instamojo', 'Instamojo', '2021-02-11 06:53:34', '2021-09-20 07:30:23'),
(25080, 'en', 'nagad', 'Nagad', '2021-02-11 06:53:35', '2021-09-20 07:30:23'),
(25081, 'en', 'bkash', 'Bkash', '2021-02-11 06:53:35', '2021-09-20 07:30:23'),
(25082, 'en', 'your_order_has_been_placed', 'Your order has been placed', '2021-02-11 06:55:22', '2021-09-20 07:30:23'),
(25083, 'en', 'your_order_has_been_placed_successfully', 'Your order has been placed successfully', '2021-02-11 06:55:22', '2021-09-20 07:30:23'),
(25084, 'en', 'product_image', 'Product Image', '2021-02-11 06:56:47', '2021-09-20 07:30:23'),
(25085, 'en', 'add_to_compare', 'Add to compare', '2021-02-12 15:42:01', '2021-09-20 07:30:23'),
(25086, 'en', 'step_1', 'Step 1', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25087, 'en', 'download_the_skeleton_file_and_fill_it_with_proper_data', 'Download the skeleton file and fill it with proper data', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25088, 'en', 'you_can_download_the_example_file_to_understand_how_the_data_must_be_filled', 'You can download the example file to understand how the data must be filled', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25089, 'en', 'once_you_have_downloaded_and_filled_the_skeleton_file_upload_it_in_the_form_below_and_submit', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25090, 'en', 'after_uploading_products_you_need_to_edit_them_and_set_products_images_and_choices', 'After uploading products you need to edit them and set product\'s images and choices', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25091, 'en', 'step_2', 'Step 2', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25092, 'en', 'category_and_brand_should_be_in_numerical_id', 'Category and Brand should be in numerical id', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25093, 'en', 'you_can_download_the_pdf_to_get_category_and_brand_id', 'You can download the pdf to get Category and Brand id', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25094, 'en', 'upload_product_file', 'Upload Product File', '2021-02-13 03:34:49', '2021-09-20 07:30:23'),
(25095, 'en', 'all_attributes', 'All Attributes', '2021-02-13 03:41:19', '2021-09-20 07:30:23'),
(25096, 'en', 'add_new_attribute', 'Add New Attribute', '2021-02-13 03:41:19', '2021-09-20 07:30:23'),
(25097, 'en', 'attribute_has_been_inserted_successfully', 'Attribute has been inserted successfully', '2021-02-13 03:41:48', '2021-09-20 07:30:23'),
(25098, 'en', 'attribute_has_been_deleted_successfully', 'Attribute has been deleted successfully', '2021-02-13 03:41:59', '2021-09-20 07:30:23'),
(25099, 'en', 'product_has_been_duplicated_successfully', 'Product has been duplicated successfully', '2021-02-14 04:24:28', '2021-09-20 07:30:23'),
(25100, 'en', 'filter_by_date', 'Filter by date', '2021-02-14 04:26:26', '2021-09-20 07:30:23');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(25101, 'en', '1_category_and_brand_should_be_in_numerical_id', '1. Category and Brand should be in numerical id.', '2021-02-14 04:47:38', '2021-09-20 07:30:23'),
(25102, 'en', '2_you_can_download_the_pdf_to_get_category_and_brand_id', '2. You can download the pdf to get Category and Brand id.', '2021-02-14 04:47:38', '2021-09-20 07:30:23'),
(25103, 'en', 'payment_completed', 'Payment completed', '2021-02-14 05:00:40', '2021-09-20 07:30:23'),
(25104, 'en', 'contact', 'Contact', '2021-02-14 05:01:48', '2021-09-20 07:30:23'),
(25105, 'en', 'order_status_has_been_updated', 'Order status has been updated', '2021-02-14 05:01:48', '2021-09-20 07:30:23'),
(25106, 'en', 'review_has_been_submitted_successfully', 'Review has been submitted successfully', '2021-02-14 05:06:58', '2021-09-20 07:30:23'),
(25107, 'en', 'pay_to_seller', 'Pay to seller', '2021-02-14 05:53:05', '2021-09-20 07:30:23'),
(25108, 'en', 'txn_code', 'Txn Code', '2021-02-14 05:53:05', '2021-09-20 07:30:23'),
(25109, 'en', 'clear_due', 'Clear due', '2021-02-14 05:53:05', '2021-09-20 07:30:23'),
(25110, 'en', 'product_wish_report', 'Product Wish Report', '2021-02-14 06:00:21', '2021-09-20 07:30:23'),
(25111, 'en', 'number_of_wish', 'Number of Wish', '2021-02-14 06:00:21', '2021-09-20 07:30:23'),
(25112, 'en', 'all_customers', 'All Customers', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25113, 'en', 'type_email_or_name__enter', 'Type email or name & Enter', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25114, 'en', 'package', 'Package', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25115, 'en', 'log_in_as_this_customer', 'Log in as this Customer', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25116, 'en', 'ban_this_customer', 'Ban this Customer', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25117, 'en', 'do_you_really_want_to_ban_this_customer', 'Do you really want to ban this Customer?', '2021-02-14 06:02:18', '2021-09-20 07:30:23'),
(25118, 'en', 'do_you_really_want_to_unban_this_customer', 'Do you really want to unban this Customer?', '2021-02-14 06:02:19', '2021-09-20 07:30:23'),
(25119, 'en', 'ticket_has_been_sent_successfully', 'Ticket has been sent successfully', '2021-02-14 06:24:25', '2021-09-20 07:30:23'),
(25120, 'en', 'send_reply', 'Send Reply', '2021-02-14 06:24:34', '2021-09-20 07:30:23'),
(25121, 'en', 'recharge_wallet', 'Recharge Wallet', '2021-02-14 07:01:14', '2021-09-20 07:30:23'),
(25122, 'en', 'wallet_recharge_history', 'Wallet recharge history', '2021-02-14 07:01:15', '2021-09-20 07:30:23'),
(25123, 'en', 'offline_recharge_wallet', 'Offline Recharge Wallet', '2021-02-14 07:01:15', '2021-09-20 07:30:23'),
(25124, 'en', 'message_has_been_send_to_seller', 'Message has been send to seller', '2021-02-14 07:15:56', '2021-09-20 07:30:23'),
(25125, 'en', 'your_classified_product_upload_limit_has_been_reached_please_buy_a_package', 'Your classified product upload limit has been reached. Please buy a package.', '2021-02-15 05:03:44', '2021-09-20 07:30:23'),
(25126, 'en', 'premium_packages_for_customers', 'Premium Packages for Customers', '2021-02-15 05:03:44', '2021-09-20 07:30:23'),
(25127, 'en', 'offline_package_purchase_', 'Offline Package Purchase ', '2021-02-15 05:03:45', '2021-09-20 07:30:23'),
(25128, 'en', 'all_classifies_packages', 'All Classifies Packages', '2021-02-15 05:15:40', '2021-09-20 07:30:23'),
(25129, 'en', 'create_new_package', 'Create New Package', '2021-02-15 05:15:42', '2021-09-20 07:30:23'),
(25130, 'en', 'package_purchasing_successful', 'Package purchasing successful', '2021-02-15 05:26:45', '2021-09-20 07:30:23'),
(25131, 'en', 'product_upload_remaining', 'Product Upload Remaining', '2021-02-15 05:26:46', '2021-09-20 07:30:23'),
(25132, 'en', 'current_package', 'Current Package', '2021-02-15 05:26:46', '2021-09-20 07:30:23'),
(25133, 'en', 'select_a_condition', 'Select a condition', '2021-02-15 05:26:55', '2021-09-20 07:30:23'),
(25134, 'en', 'uploaded_by', 'Uploaded By', '2021-02-15 05:40:07', '2021-09-20 07:30:23'),
(25135, 'en', 'customer_status', 'Customer Status', '2021-02-15 05:40:07', '2021-09-20 07:30:23'),
(25136, 'en', 'unpublished', 'UNPUBLISHED', '2021-02-15 05:40:07', '2021-09-20 07:30:23'),
(26443, 'en', 'sendmail', 'Sendmail', '2021-02-16 07:56:29', '2021-09-20 07:30:27'),
(26444, 'en', 'mailgun', 'Mailgun', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26445, 'en', 'mail_host', 'MAIL HOST', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26446, 'en', 'mail_port', 'MAIL PORT', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26447, 'en', 'mail_username', 'MAIL USERNAME', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26448, 'en', 'mail_password', 'MAIL PASSWORD', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26449, 'en', 'mail_encryption', 'MAIL ENCRYPTION', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26450, 'en', 'mail_from_address', 'MAIL FROM ADDRESS', '2021-02-16 07:56:30', '2021-09-20 07:30:27'),
(26451, 'en', 'mail_from_name', 'MAIL FROM NAME', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26452, 'en', 'mailgun_domain', 'MAILGUN DOMAIN', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26453, 'en', 'mailgun_secret', 'MAILGUN SECRET', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26454, 'en', 'save_configuration', 'Save Configuration', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26455, 'en', 'test_smtp_configuration', 'Test SMTP configuration', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26456, 'en', 'enter_your_email_address', 'Enter your email address', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26457, 'en', 'send_test_email', 'Send test email', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26458, 'en', 'instruction', 'Instruction', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26459, 'en', 'please_be_carefull_when_you_are_configuring_smtp_for_incorrect_configuration_you_will_get_error_at_the_time_of_order_place_new_registration_sending_newsletter', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26460, 'en', 'for_nonssl', 'For Non-SSL', '2021-02-16 07:56:31', '2021-09-20 07:30:27'),
(26461, 'en', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver_', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26462, 'en', 'set_mail_host_according_to_your_server_mail_client_manual_settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26463, 'en', 'set_mail_port_as_587', 'Set Mail port as 587', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26464, 'en', 'set_mail_encryption_as_ssl_if_you_face_issue_with_tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26465, 'en', 'for_ssl', 'For SSL', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26466, 'en', 'set_mail_port_as_465', 'Set Mail port as 465', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26467, 'en', 'set_mail_encryption_as_ssl', 'Set Mail Encryption as ssl', '2021-02-16 07:56:32', '2021-09-20 07:30:27'),
(26468, 'en', 'installupdate_addon', 'Install/Update Addon', '2021-02-18 05:50:31', '2021-09-20 07:30:27'),
(26469, 'en', 'no_addon_installed', 'No Addon Installed', '2021-02-18 05:50:31', '2021-09-20 07:30:27'),
(26470, 'en', 'blog_system', 'Blog System', '2021-02-18 10:01:49', '2021-09-20 07:30:27'),
(26471, 'en', 'all_posts', 'All Posts', '2021-02-18 10:01:49', '2021-09-20 07:30:27'),
(26472, 'en', 'facebook_comment', 'Facebook Comment', '2021-02-18 10:01:50', '2021-09-20 07:30:27'),
(26473, 'en', 'add_new_post', 'Add New Post', '2021-02-18 10:02:55', '2021-09-20 07:30:27'),
(26474, 'en', 'all_blog_posts', 'All blog posts', '2021-02-18 10:02:55', '2021-09-20 07:30:27'),
(26475, 'en', 'short_description', 'Short Description', '2021-02-18 10:02:55', '2021-09-20 07:30:27'),
(26476, 'en', 'change_blog_status_successfully', 'Change blog status successfully', '2021-02-18 10:02:56', '2021-09-20 07:30:27'),
(26477, 'en', 'blog_information', 'Blog Information', '2021-02-18 10:02:58', '2021-09-20 07:30:27'),
(26478, 'en', 'blog_title', 'Blog Title', '2021-02-18 10:02:58', '2021-09-20 07:30:27'),
(26479, 'en', 'meta_keywords', 'Meta Keywords', '2021-02-18 10:02:59', '2021-09-20 07:30:27'),
(26480, 'en', 'header_nav_menu', 'Header Nav Menu', '2021-02-18 10:04:04', '2021-09-20 07:30:27'),
(26481, 'en', 'link_with', 'Link with', '2021-02-18 10:04:04', '2021-09-20 07:30:27'),
(26482, 'en', 'blog', 'Blog', '2021-02-18 10:11:56', '2021-09-20 07:30:27'),
(26483, 'en', 'all_blog_categories', 'All Blog Categories', '2021-02-18 10:17:26', '2021-09-20 07:30:27'),
(26484, 'en', 'blog_categories', 'Blog Categories', '2021-02-18 10:17:26', '2021-09-20 07:30:27'),
(26485, 'en', 'blog_category_information', 'Blog Category Information', '2021-02-19 04:04:31', '2021-09-20 07:30:27'),
(26486, 'en', 'blog_category_has_been_created_successfully', 'Blog category has been created successfully', '2021-02-19 04:05:13', '2021-09-20 07:30:27'),
(26487, 'en', 'blog_post_has_been_created_successfully', 'Blog post has been created successfully', '2021-02-19 04:15:31', '2021-09-20 07:30:27'),
(26488, 'en', 'blog_post_has_been_updated_successfully', 'Blog post has been updated successfully', '2021-02-19 04:32:34', '2021-09-20 07:30:27'),
(26489, 'en', 'blog_category_has_been_updated_successfully', 'Blog category has been updated successfully', '2021-02-19 04:52:22', '2021-09-20 07:30:27'),
(26490, 'en', 'installupdate', 'Install/Update', '2021-02-22 04:00:43', '2021-09-20 07:30:27'),
(26493, 'en', 'addon_nstalled_successfully', 'Addon nstalled successfully', '2021-02-23 02:22:29', '2021-09-20 07:30:27'),
(26494, 'en', 'approved_refunds', 'Approved Refunds', '2021-02-23 02:23:39', '2021-09-20 07:30:27'),
(26495, 'en', 'rejected_refunds', 'rejected Refunds', '2021-02-23 02:23:40', '2021-09-20 07:30:27'),
(26496, 'en', 'affiliate_logs', 'Affiliate Logs', '2021-02-23 02:24:06', '2021-09-20 07:30:27'),
(26497, 'en', 'african_payment_gateway_addon', 'African Payment Gateway Addon', '2021-02-23 02:24:21', '2021-09-20 07:30:27'),
(26498, 'en', 'african_pg_configurations', 'African PG Configurations', '2021-02-23 02:24:21', '2021-09-20 07:30:27'),
(26499, 'en', 'set_african_pg_credentials', 'Set African PG Credentials', '2021-02-23 02:24:21', '2021-09-20 07:30:27'),
(26500, 'en', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'At the very bottom, you can find the “Facebook Page ID”', '2021-02-23 02:25:36', '2021-09-20 07:30:27'),
(26501, 'en', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Go to Settings of your page and find the option of \"Advance Messaging\"', '2021-02-23 02:25:36', '2021-09-20 07:30:27'),
(26502, 'en', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Scroll down that page and you will get \"white listed domain\"', '2021-02-23 02:25:36', '2021-09-20 07:30:27'),
(26503, 'en', 'paystack_currency_code', 'PAYSTACK CURRENCY CODE', '2021-02-23 02:26:16', '2021-09-20 07:30:27'),
(26504, 'en', 'mpesa_activation', 'MPesa Activation', '2021-02-23 02:26:48', '2021-09-20 07:30:27'),
(26505, 'en', 'you_need_to_configure_mpesa_correctly_to_enable_this_feature', 'You need to configure Mpesa correctly to enable this feature', '2021-02-23 02:26:48', '2021-09-20 07:30:27'),
(26506, 'en', 'flutterwave_activation', 'flutterwave Activation', '2021-02-23 02:26:48', '2021-09-20 07:30:27'),
(26507, 'en', 'you_need_to_configure_flutterwave_correctly_to_enable_this_feature', 'You need to configure flutterwave correctly to enable this feature', '2021-02-23 02:26:49', '2021-09-20 07:30:27'),
(26508, 'en', 'payfast_activation', 'Payfast Activation', '2021-02-23 02:26:49', '2021-09-20 07:30:27'),
(26509, 'en', 'you_need_to_configure_payfast_correctly_to_enable_this_feature', 'You need to configure payfast correctly to enable this feature', '2021-02-23 02:26:49', '2021-09-20 07:30:27'),
(26510, 'en', 'mpesa_username', 'MPESA USERNAME', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26511, 'en', 'mpesa_username', 'MPESA_USERNAME', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26512, 'en', 'mpesa_password', 'MPESA PASSWORD', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26513, 'en', 'mpesa_password', 'MPESA_PASSWORD', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26514, 'en', 'mpesa_passkey', 'MPESA PASSKEY', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26515, 'en', 'mpesa_passkey', 'MPESA_PASSKEY', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26516, 'en', 'payfast_credential', 'PAYFAST Credential', '2021-02-23 02:26:59', '2021-09-20 07:30:27'),
(26517, 'en', 'payfast_merchant_id', 'PAYFAST_MERCHANT_ID', '2021-02-23 02:26:59', '2021-09-20 07:30:28'),
(26518, 'en', 'payfast_merchant_key', 'PAYFAST_MERCHANT_KEY', '2021-02-23 02:27:00', '2021-09-20 07:30:28'),
(26519, 'en', 'payfast_sandbox_mode', 'PAYFAST Sandbox Mode', '2021-02-23 02:27:00', '2021-09-20 07:30:28'),
(26520, 'en', 'google_login_credential', 'Google Login Credential', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26521, 'en', 'client_id', 'Client ID', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26522, 'en', 'google_client_id', 'Google Client ID', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26523, 'en', 'client_secret', 'Client Secret', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26524, 'en', 'google_client_secret', 'Google Client Secret', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26525, 'en', 'facebook_login_credential', 'Facebook Login Credential', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26526, 'en', 'app_id', 'App ID', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26527, 'en', 'facebook_client_id', 'Facebook Client ID', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26528, 'en', 'app_secret', 'App Secret', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26529, 'en', 'facebook_client_secret', 'Facebook Client Secret', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26530, 'en', 'twitter_login_credential', 'Twitter Login Credential', '2021-02-23 02:27:51', '2021-09-20 07:30:28'),
(26531, 'en', 'twitter_client_id', 'Twitter Client ID', '2021-02-23 02:27:52', '2021-09-20 07:30:28'),
(26532, 'en', 'twitter_client_secret', 'Twitter Client Secret', '2021-02-23 02:27:52', '2021-09-20 07:30:28'),
(26533, 'en', 'point_convert_rate_has_been_updated_successfully', 'Point convert rate has been updated successfully', '2021-02-23 02:30:21', '2021-09-20 07:30:28'),
(26534, 'en', 'owner', 'Owner', '2021-02-23 02:30:24', '2021-09-20 07:30:28'),
(26535, 'en', 'set_any_specific_point_for_those_products_what_are_between_minprice_and_maxprice_minprice_should_be_less_than_maxprice', 'Set any specific point for those products what are between Min-price and Max-price. Min-price should be less than Max-price', '2021-02-23 02:30:25', '2021-09-20 07:30:28'),
(26536, 'en', 'set_point_for_product', 'Set Point for Product', '2021-02-23 02:30:31', '2021-09-20 07:30:28'),
(26537, 'en', 'set_point', 'Set Point', '2021-02-23 02:30:31', '2021-09-20 07:30:28'),
(26538, 'en', 'point_has_been_updated_successfully', 'Point has been updated successfully', '2021-02-23 02:30:37', '2021-09-20 07:30:28'),
(26539, 'en', 'point_has_been_inserted_successfully_for_', 'Point has been inserted successfully for ', '2021-02-23 02:31:06', '2021-09-20 07:30:28'),
(26540, 'en', '_products', ' products', '2021-02-23 02:31:06', '2021-09-20 07:30:28'),
(26541, 'en', 'customer_name', 'Customer Name', '2021-02-23 02:32:42', '2021-09-20 07:30:28'),
(26542, 'en', 'mimo_otp', 'MIMO OTP', '2021-02-23 02:32:49', '2021-09-20 07:30:28'),
(26543, 'en', 'mimo_credential', 'MIMO Credential', '2021-02-23 02:33:05', '2021-09-20 07:30:28'),
(26544, 'en', 'mimo_username', 'MIMO_USERNAME', '2021-02-23 02:33:05', '2021-09-20 07:30:28'),
(26545, 'en', 'mimo_password', 'MIMO_PASSWORD', '2021-02-23 02:33:05', '2021-09-20 07:30:28'),
(26546, 'en', 'mimo_sender_id', 'MIMO_SENDER_ID', '2021-02-23 02:33:06', '2021-09-20 07:30:28'),
(26547, 'en', 'reject_refund_request_', 'Reject Refund Request !', '2021-02-23 02:33:49', '2021-09-20 07:30:28'),
(26548, 'en', 'reject_reason', 'Reject Reason', '2021-02-23 02:33:49', '2021-09-20 07:30:28'),
(26549, 'en', 'submit', 'Submit', '2021-02-23 02:33:49', '2021-09-20 07:30:28'),
(26550, 'en', 'approval_has_been_done_successfully', 'Approval has been done successfully', '2021-02-23 02:33:49', '2021-09-20 07:30:28'),
(26551, 'en', 'refund_has_been_sent_successfully', 'Refund has been sent successfully', '2021-02-23 02:33:49', '2021-09-20 07:30:28'),
(26552, 'en', 'rejected_request', 'Rejected Request', '2021-02-23 02:34:05', '2021-09-20 07:30:28'),
(26553, 'en', 'refund_request_reject_reason', 'Refund Request Reject Reason', '2021-02-23 02:34:05', '2021-09-20 07:30:28'),
(26554, 'en', 'approved_request', 'Approved Request', '2021-02-23 02:34:08', '2021-09-20 07:30:28'),
(26555, 'en', 'mpesa', 'mpesa', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26556, 'en', 'flutterwave', 'flutterwave', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26557, 'en', 'payfast', 'payfast', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26558, 'en', 'this_addon_is_updated_successfully', 'This addon is updated successfully', '2021-02-23 02:40:18', '2021-09-20 07:30:28'),
(26559, 'en', 'nonrefundable', 'Non-refundable', '2021-02-23 15:06:44', '2021-09-20 07:30:28'),
(26560, 'en', 'offline_recharge_has_been_done_please_wait_for_response', 'Offline Recharge has been done. Please wait for response.', '2021-02-23 15:08:43', '2021-09-20 07:30:28'),
(26561, 'en', 'use_phone_instead', 'Use Phone Instead', '2021-02-23 15:13:57', '2021-09-20 07:30:28'),
(26562, 'en', 'phone_verification', 'Phone Verification', '2021-02-23 15:14:25', '2021-09-20 07:30:28'),
(26563, 'en', 'resend_code', 'Resend Code', '2021-02-23 15:14:25', '2021-09-20 07:30:28'),
(26564, 'en', 'staff_information', 'Staff Information', '2021-02-25 15:53:40', '2021-09-20 07:30:28'),
(26565, 'en', 'staff_has_been_inserted_successfully', 'Staff has been inserted successfully', '2021-02-25 15:54:00', '2021-09-20 07:30:28'),
(26566, 'en', 'role_information', 'Role Information', '2021-02-25 16:01:25', '2021-09-20 07:30:28'),
(26567, 'en', 'permissions', 'Permissions', '2021-02-25 16:01:25', '2021-09-20 07:30:28'),
(26568, 'en', 'role_has_been_updated_successfully', 'Role has been updated successfully', '2021-02-25 16:01:46', '2021-09-20 07:30:28'),
(26569, 'en', 'update_your_system', 'Update your system', '2021-02-25 16:03:26', '2021-09-20 07:30:28'),
(26570, 'en', 'current_verion', 'Current verion', '2021-02-25 16:03:26', '2021-09-20 07:30:28'),
(26571, 'en', 'make_sure_your_server_has_matched_with_all_requirements', 'Make sure your server has matched with all requirements.', '2021-02-25 16:03:26', '2021-09-20 07:30:28'),
(26572, 'en', 'check_here', 'Check Here', '2021-02-25 16:03:26', '2021-09-20 07:30:28'),
(26573, 'en', 'download_latest_version_from_codecanyon', 'Download latest version from codecanyon.', '2021-02-25 16:03:26', '2021-09-20 07:30:28'),
(26574, 'en', 'extract_downloaded_zip_you_will_find_updateszip_file_in_those_extraced_files', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-02-25 16:03:27', '2021-09-20 07:30:28'),
(26575, 'en', 'upload_that_zip_file_here_and_click_update_now', 'Upload that zip file here and click update now.', '2021-02-25 16:03:27', '2021-09-20 07:30:28'),
(26576, 'en', 'if_you_are_using_any_addon_make_sure_to_update_those_addons_after_updating', 'If you are using any addon make sure to update those addons after updating.', '2021-02-25 16:03:27', '2021-09-20 07:30:28'),
(26577, 'en', 'package_duration', 'Package Duration', '2021-02-25 23:10:17', '2021-09-20 07:30:28'),
(26578, 'en', 'digital_product_upload_remaining', 'Digital Product Upload Remaining', '2021-02-25 23:12:10', '2021-09-20 07:30:28'),
(26579, 'en', 'package_expires_at', 'Package Expires at', '2021-02-25 23:12:10', '2021-09-20 07:30:28'),
(26580, 'en', 'ok_i_understood', 'Ok. I Understood', '2021-02-27 16:56:27', '2021-09-20 07:30:28'),
(26581, 'en', 'commission_history', 'Commission History', '2021-03-07 05:40:47', '2021-09-20 07:30:28'),
(26582, 'en', 'vat__tax', 'Vat & TAX', '2021-03-07 05:40:48', '2021-09-20 07:30:28'),
(26583, 'en', 'info', 'Info', '2021-03-07 05:40:54', '2021-09-20 07:30:28'),
(26584, 'en', 'product_wise_shipping', 'Product Wise Shipping', '2021-03-07 05:42:45', '2021-09-20 07:30:28'),
(26585, 'en', 'low_stock_quantity_warning', 'Low Stock Quantity Warning', '2021-03-07 05:42:45', '2021-09-20 07:30:28'),
(26586, 'en', 'stock_visibility_state', 'Stock Visibility State', '2021-03-07 05:42:45', '2021-09-20 07:30:28'),
(26587, 'en', 'show_stock_quantity', 'Show Stock Quantity', '2021-03-07 05:42:45', '2021-09-20 07:30:28'),
(26588, 'en', 'show_stock_with_text_only', 'Show Stock With Text Only', '2021-03-07 05:42:45', '2021-09-20 07:30:28'),
(26589, 'en', 'hide_stock', 'Hide Stock', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26590, 'en', 'flash_deal', 'Flash Deal', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26591, 'en', 'add_to_flash', 'Add To Flash', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26592, 'en', 'estimate_shipping_time', 'Estimate Shipping Time', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26593, 'en', 'shipping_days', 'Shipping Days', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26594, 'en', 'save_as_draft', 'Save As Draft', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26595, 'en', 'save__unpublish', 'Save & Unpublish', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26596, 'en', 'save__publish', 'Save & Publish', '2021-03-07 05:42:46', '2021-09-20 07:30:28'),
(26597, 'en', 'all_cities', 'All cities', '2021-03-07 05:43:04', '2021-09-20 07:30:28'),
(26598, 'en', 'cities', 'Cities', '2021-03-07 05:43:04', '2021-09-20 07:30:28'),
(26599, 'en', 'cost', 'Cost', '2021-03-07 05:43:04', '2021-09-20 07:30:28'),
(26600, 'en', 'add_new_city', 'Add New city', '2021-03-07 05:43:04', '2021-09-20 07:30:28'),
(26601, 'en', '_pts', ' pts', '2021-03-08 04:54:26', '2021-09-20 07:30:28'),
(26602, 'en', 'no', 'No', '2021-03-08 04:54:26', '2021-09-20 07:30:28'),
(26603, 'en', 'convert_now', 'Convert Now', '2021-03-08 04:54:26', '2021-09-20 07:30:28'),
(26604, 'en', 'affiliate_balance', 'Affiliate Balance', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26605, 'en', 'configure_payout', 'Configure Payout', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26606, 'en', 'affiliate_withdraw_request', 'Affiliate Withdraw Request', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26607, 'en', 'copy_url', 'Copy Url', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26608, 'en', 'affiliate_earning_history', 'Affiliate Earning History', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26609, 'en', 'referral_user', 'Referral User', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26610, 'en', 'referral_type', 'Referral Type', '2021-03-08 04:56:22', '2021-09-20 07:30:28'),
(26611, 'en', 'payment_settings', 'Payment Settings', '2021-03-08 04:56:50', '2021-09-20 07:30:28'),
(26612, 'en', 'paypal_email', 'Paypal Email', '2021-03-08 04:56:50', '2021-09-20 07:30:28'),
(26613, 'en', 'bank_informations', 'Bank Informations', '2021-03-08 04:56:50', '2021-09-20 07:30:28'),
(26614, 'en', 'acc_no_bank_name_etc', 'Acc. No, Bank Name etc', '2021-03-08 04:56:50', '2021-09-20 07:30:28'),
(26615, 'en', 'update_payment_settings', 'Update Payment Settings', '2021-03-08 04:56:50', '2021-09-20 07:30:28'),
(26616, 'en', 'affiliate_payment_settings_has_been_updated_successfully', 'Affiliate payment settings has been updated successfully', '2021-03-08 04:56:53', '2021-09-20 07:30:28'),
(26617, 'en', 'new_withdraw_request_created_successfully', 'New withdraw request created successfully', '2021-03-08 04:57:38', '2021-09-20 07:30:28'),
(26618, 'en', 'affiliate_withdraw_request_history', 'Affiliate withdraw request history', '2021-03-08 04:57:39', '2021-09-20 07:30:28'),
(26619, 'en', 'affiliate_payment_history', 'Affiliate payment history', '2021-03-08 05:00:42', '2021-09-20 07:30:28'),
(26620, 'en', 'default', 'Default', '2021-03-08 05:06:37', '2021-09-20 07:30:28'),
(26621, 'en', 'area_wise_flat_shipping_cost', 'Area Wise Flat Shipping Cost', '2021-03-08 05:46:02', '2021-09-20 07:30:28'),
(26622, 'en', 'seller_wise_flat_shipping_cost_calulation_fixed_rate_for_each_seller_if_customers_purchase_2_product_from_two_seller_shipping_cost_is_calculated_by_addition_of_each_seller_flat_shipping_cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-03-08 05:46:02', '2021-09-20 07:30:28'),
(26623, 'en', 'area_wise_flat_shipping_cost_calulation_fixed_rate_for_each_area_if_customers_purchase_multiple_products_from_one_seller_shipping_cost_is_calculated_by_the_customer_shipping_area_to_configure_area_wise_shipping_cost_go_to_', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', '2021-03-08 05:46:03', '2021-09-20 07:30:28'),
(26624, 'en', '1_flat_rate_shipping_cost_is_applicable_if_flat_rate_shipping_is_enabled', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-03-08 05:46:03', '2021-09-20 07:30:28'),
(26625, 'en', '1_shipping_cost_for_admin_is_applicable_if_seller_wise_shipping_cost_is_enabled', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-03-08 05:46:03', '2021-09-20 07:30:28'),
(26626, 'en', 'the_requested_quantity_is_not_available_for_', 'The requested quantity is not available for ', '2021-03-08 05:56:12', '2021-09-20 07:30:28'),
(26627, 'en', 'city_has_been_inserted_successfully', 'City has been inserted successfully', '2021-03-08 05:56:45', '2021-09-20 07:30:28'),
(26628, 'en', 'namibia', 'Namibia', '2021-03-08 05:57:17', '2021-09-20 07:30:28'),
(26629, 'en', 'city_information', 'City Information', '2021-03-08 06:14:10', '2021-09-20 07:30:28'),
(26630, 'en', 'city_has_been_updated_successfully', 'City has been updated successfully', '2021-03-08 06:14:23', '2021-09-20 07:30:28'),
(26631, 'en', 'sed_ea_dolore_offici', 'Sed ea dolore offici', '2021-03-08 06:17:47', '2021-09-20 07:30:28'),
(26632, 'en', 'pickup_point_information', 'Pickup Point Information', '2021-03-08 06:27:30', '2021-09-20 07:30:28'),
(26633, 'en', 'pickup_point_status', 'Pickup Point Status', '2021-03-08 06:27:30', '2021-09-20 07:30:28'),
(26634, 'en', 'pickup_point_manager', 'Pick-up Point Manager', '2021-03-08 06:27:30', '2021-09-20 07:30:28'),
(26635, 'en', 'picuppoint_has_been_inserted_successfully', 'PicupPoint has been inserted successfully', '2021-03-08 06:27:37', '2021-09-20 07:30:28'),
(26636, 'en', 'update_pickup_point_information', 'Update Pickup Point Information', '2021-03-08 06:27:41', '2021-09-20 07:30:28'),
(26637, 'en', 'picuppoint_has_been_updated_successfully', 'PicupPoint has been updated successfully', '2021-03-08 06:27:45', '2021-09-20 07:30:28'),
(26638, 'en', 'pickip_point', 'Pickip Point', '2021-03-08 06:28:05', '2021-09-20 07:30:28'),
(26639, 'en', 'yes', 'Yes', '2021-03-08 06:35:13', '2021-09-20 07:30:28'),
(26640, 'en', 'done', 'Done', '2021-03-08 06:35:13', '2021-09-20 07:30:28'),
(26641, 'en', 'conversations_with_', 'Conversations With ', '2021-03-08 06:36:37', '2021-09-20 07:30:28'),
(26642, 'en', 'between_you_and', 'Between you and', '2021-03-08 06:36:37', '2021-09-20 07:30:28'),
(26643, 'en', 'seller_product_manage_by_admin', 'Seller Product Manage By Admin', '2021-03-08 06:49:14', '2021-09-20 07:30:28'),
(26644, 'en', 'after_activate_this_option_cash_on_delivery_of_seller_product_will_be_managed_by_admin', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', '2021-03-08 06:49:14', '2021-09-20 07:30:28'),
(26645, 'en', 'all_taxes', 'All Taxes', '2021-03-09 03:43:13', '2021-09-20 07:30:28'),
(26646, 'en', 'add_new_tax', 'Add New Tax', '2021-03-09 03:43:13', '2021-09-20 07:30:28'),
(26647, 'en', 'tax_type', 'Tax Type', '2021-03-09 03:43:13', '2021-09-20 07:30:28'),
(26648, 'en', 'tax_name', 'Tax Name', '2021-03-09 03:43:13', '2021-09-20 07:30:28'),
(26649, 'en', 'tax_status_updated_successfully', 'Tax status updated successfully', '2021-03-09 03:43:13', '2021-09-20 07:30:28'),
(26650, 'en', 'blogs', 'Blogs', '2021-03-24 08:01:32', '2021-09-20 07:30:28'),
(26651, 'en', 'blogs', 'Blogs', '2021-03-24 08:01:32', '2021-09-20 07:30:28'),
(26652, 'en', 'view_all_sellers', 'View All Sellers', '2021-03-24 23:31:18', '2021-09-20 07:30:28'),
(26653, 'en', 'file_selected', 'File selected', '2021-04-11 04:54:39', '2021-09-20 07:30:28'),
(26654, 'en', 'files_selected', 'Files selected', '2021-04-11 04:54:39', '2021-09-20 07:30:28'),
(26655, 'en', 'add_more_files', 'Add more files', '2021-04-11 04:54:39', '2021-09-20 07:30:28'),
(26656, 'en', 'adding_more_files', 'Adding more files', '2021-04-11 04:54:39', '2021-09-20 07:30:28'),
(26657, 'en', 'drop_files_here_paste_or', 'Drop files here, paste or', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26658, 'en', 'upload_complete', 'Upload complete', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26659, 'en', 'upload_paused', 'Upload paused', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26660, 'en', 'resume_upload', 'Resume upload', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26661, 'en', 'pause_upload', 'Pause upload', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26662, 'en', 'retry_upload', 'Retry upload', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26663, 'en', 'cancel_upload', 'Cancel upload', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26664, 'en', 'uploading', 'Uploading', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26665, 'en', 'processing', 'Processing', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26666, 'en', 'complete', 'Complete', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26667, 'en', 'files', 'Files', '2021-04-11 04:54:40', '2021-09-20 07:30:28'),
(26668, 'en', 'this_action_is_disabled_in_demo_mode', 'This action is disabled in demo mode', '2021-05-20 03:38:21', '2021-09-20 07:30:28'),
(26669, 'en', 'nothing_selected', 'Nothing selected', '2021-05-20 03:49:25', '2021-09-20 07:30:28'),
(26670, 'en', 'nothing_selected', 'Nothing selected', '2021-05-20 03:49:25', '2021-09-20 07:30:28'),
(26671, 'en', 'delivery_boy', 'Delivery Boy', '2021-05-20 04:03:03', '2021-09-20 07:30:28'),
(26672, 'en', 'all_delivery_boy', 'All Delivery Boy', '2021-05-20 04:03:03', '2021-09-20 07:30:28'),
(26673, 'en', 'add_delivery_boy', 'Add Delivery Boy', '2021-05-20 04:03:04', '2021-09-20 07:30:28'),
(26674, 'en', 'cancel_request', 'Cancel Request', '2021-05-20 04:03:04', '2021-09-20 07:30:28'),
(26675, 'en', 'configuration', 'Configuration', '2021-05-20 04:03:04', '2021-09-20 07:30:28'),
(26676, 'en', 'all_delivery_boys', 'All Delivery Boys', '2021-05-20 04:04:59', '2021-09-20 07:30:28'),
(26677, 'en', 'add_new_delivery_boy', 'Add New Delivery Boy', '2021-05-20 04:04:59', '2021-09-20 07:30:28'),
(26678, 'en', 'delivery_boys', 'Delivery Boys', '2021-05-20 04:04:59', '2021-09-20 07:30:28'),
(26679, 'en', 'collection', 'Collection', '2021-05-20 04:05:00', '2021-09-20 07:30:28'),
(26680, 'en', 'do_you_really_want_to_ban_this_delivery_boy', 'Do you really want to ban this delivery_boy?', '2021-05-20 04:05:00', '2021-09-20 07:30:28'),
(26681, 'en', 'do_you_really_want_to_unban_this_delivery_boy', 'Do you really want to unban this delivery_boy?', '2021-05-20 04:05:00', '2021-09-20 07:30:28'),
(26682, 'en', 'delivery_boy_information', 'Delivery Boy Information', '2021-05-20 04:05:06', '2021-09-20 07:30:28'),
(26683, 'en', 'select_city', 'Select City', '2021-05-20 04:05:06', '2021-09-20 07:30:28'),
(26684, 'en', 'delivery_boy_has_been_created_successfully', 'Delivery Boy has been created successfully', '2021-05-20 04:07:01', '2021-09-20 07:30:28'),
(26685, 'en', 'ban_this_delivery_boy', 'Ban this delivery boy', '2021-05-20 04:07:02', '2021-09-20 07:30:28'),
(26686, 'en', 'payment_configuration', 'Payment Configuration', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26687, 'en', 'monthly_salary', 'Monthly Salary', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26688, 'en', 'salary_amount', 'Salary Amount', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26689, 'en', 'per_order_commission', 'Per Order Commission', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26690, 'en', 'commission_rate', 'Commission Rate', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26691, 'en', 'notification_configuration', 'Notification Configuration', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26692, 'en', 'send_mail', 'Send Mail', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26693, 'en', 'send_otp', 'Send OTP', '2021-05-20 04:32:11', '2021-09-20 07:30:28'),
(26694, 'en', 'all_cancel_request', 'All Cancel Request', '2021-05-20 04:32:16', '2021-09-20 07:30:28'),
(26695, 'en', 'cancel_requests', 'Cancel Requests', '2021-05-20 04:32:16', '2021-09-20 07:30:28'),
(26696, 'en', 'request_by', 'Request By', '2021-05-20 04:32:16', '2021-09-20 07:30:28'),
(26697, 'en', 'request_at', 'Request At', '2021-05-20 04:32:16', '2021-09-20 07:30:28'),
(26698, 'en', 'offline_customer_package_payment_requests', 'Offline Customer Package Payment Requests', '2021-05-20 04:37:23', '2021-09-20 07:30:28'),
(26699, 'en', 'method', 'Method', '2021-05-20 04:37:23', '2021-09-20 07:30:28'),
(26700, 'en', 'txn_id', 'TXN ID', '2021-05-20 04:37:23', '2021-09-20 07:30:28'),
(26701, 'en', 'reciept', 'Reciept', '2021-05-20 04:37:23', '2021-09-20 07:30:28'),
(26702, 'en', 'offline_customer_package_payment_approved_successfully', 'Offline Customer Package Payment approved successfully', '2021-05-20 04:37:23', '2021-09-20 07:30:28'),
(26703, 'en', 'refferal_users', 'Refferal Users', '2021-05-20 04:37:37', '2021-09-20 07:30:28'),
(26704, 'en', 'reffered_by', 'Reffered By', '2021-05-20 04:37:37', '2021-09-20 07:30:28'),
(26705, 'en', 'affiliate_withdraw_request_reject', 'Affiliate Withdraw Request Reject', '2021-05-20 04:37:59', '2021-09-20 07:30:28'),
(26706, 'en', 'are_you_sure_you_want_to_reject_this', 'Are you sure, You want to reject this?', '2021-05-20 04:37:59', '2021-09-20 07:30:28'),
(26707, 'en', 'server_information', 'Server information', '2021-05-20 04:38:23', '2021-09-20 07:30:28'),
(26708, 'en', 'current_version', 'Current Version', '2021-05-20 04:38:23', '2021-09-20 07:30:28'),
(26709, 'en', 'required_version', 'Required Version', '2021-05-20 04:38:23', '2021-09-20 07:30:28'),
(26710, 'en', 'phpini_config', 'php.ini Config', '2021-05-20 04:38:23', '2021-09-20 07:30:28'),
(26711, 'en', 'config_name', 'Config Name', '2021-05-20 04:38:23', '2021-09-20 07:30:28'),
(26712, 'en', 'current', 'Current', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26713, 'en', 'recommended', 'Recommended', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26714, 'en', 'extensions_information', 'Extensions information', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26715, 'en', 'extension_name', 'Extension Name', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26716, 'en', 'filesystem_permissions', 'Filesystem Permissions', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26717, 'en', 'file_or_folder', 'File or Folder', '2021-05-20 04:38:24', '2021-09-20 07:30:28'),
(26718, 'en', 'assign_deliver_boy', 'Assign Deliver Boy', '2021-05-20 04:38:42', '2021-09-20 07:30:28'),
(26719, 'en', 'select_delivery_boy', 'Select Delivery Boy', '2021-05-20 04:38:42', '2021-09-20 07:30:28'),
(26720, 'en', 'picked_up', 'Picked Up', '2021-05-20 04:38:43', '2021-09-20 07:30:28'),
(26721, 'en', 'on_the_way', 'On The Way', '2021-05-20 04:38:43', '2021-09-20 07:30:28'),
(26722, 'en', 'delivery_boy_has_been_assigned', 'Delivery boy has been assigned', '2021-05-20 04:38:43', '2021-09-20 07:30:28'),
(26723, 'en', 'seller_account', 'Seller Account', '2021-05-20 04:53:34', '2021-09-20 07:30:28'),
(26724, 'en', 'copy_credentials', 'Copy credentials', '2021-05-20 04:53:34', '2021-09-20 07:30:28'),
(26725, 'en', 'customer_account', 'Customer Account', '2021-05-20 04:53:34', '2021-09-20 07:30:28'),
(26726, 'en', 'delivery_boy_account', 'Delivery Boy Account', '2021-05-20 04:54:07', '2021-09-20 07:30:28'),
(26727, 'en', 'invalid_coupon', 'Invalid coupon!', '2021-05-20 04:58:01', '2021-09-20 07:30:28'),
(26728, 'en', 'assigned_delivery', 'Assigned Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26729, 'en', 'pickup_delivery', 'Pickup Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26730, 'en', 'on_the_way_delivery', 'On The Way Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26731, 'en', 'completed_delivery', 'Completed Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26732, 'en', 'pending_delivery', 'Pending Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26733, 'en', 'cancelled_delivery', 'Cancelled Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26734, 'en', 'request_cancelled_delivery', 'Request Cancelled Delivery', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26735, 'en', 'total_collections', 'Total Collections', '2021-05-20 05:01:59', '2021-09-20 07:30:28'),
(26736, 'en', 'assigned_delivery_history', 'Assigned Delivery History', '2021-05-20 05:12:13', '2021-09-20 07:30:28'),
(26737, 'en', 'mark_as_pickup', 'Mark As Pickup', '2021-05-20 05:12:13', '2021-09-20 07:30:28'),
(26738, 'en', 'do_you_really_want_to_send_request_to_cancel', 'Do you really want to send request to cancel?', '2021-05-20 05:12:13', '2021-09-20 07:30:28'),
(26739, 'en', 'request_cancel', 'Request Cancel', '2021-05-20 05:12:13', '2021-09-20 07:30:28'),
(26740, 'en', 'total_collection_history', 'Total Collection History', '2021-05-20 05:13:48', '2021-09-20 07:30:28'),
(26741, 'en', 'cancelled_delivery_history', 'Cancelled Delivery History', '2021-05-20 05:13:53', '2021-09-20 07:30:28'),
(26742, 'en', 'completed_delivery_history', 'Completed Delivery History', '2021-05-20 05:13:59', '2021-09-20 07:30:28'),
(26743, 'en', 'on_the_way_delivery_history', 'On The Way Delivery History', '2021-05-20 05:14:03', '2021-09-20 07:30:28'),
(26744, 'en', 'pickup_delivery_history', 'Pickup Delivery History', '2021-05-20 05:14:08', '2021-09-20 07:30:28'),
(26745, 'en', 'website_popup', 'Website Popup', '2021-06-02 02:31:46', '2021-09-20 07:30:28'),
(26746, 'en', 'show_website_popup', 'Show website popup?', '2021-06-02 02:31:46', '2021-09-20 07:30:28'),
(26747, 'en', 'popup_content', 'Popup content', '2021-06-02 02:31:46', '2021-09-20 07:30:28'),
(26748, 'en', 'show_subscriber_form', 'Show Subscriber form?', '2021-06-02 02:31:46', '2021-09-20 07:30:28'),
(26749, 'en', 'topbar_banner', 'Topbar Banner', '2021-06-02 02:31:49', '2021-09-20 07:30:28'),
(26750, 'en', 'topbar_banner_link', 'Topbar Banner Link', '2021-06-02 02:31:49', '2021-09-20 07:30:28'),
(26751, 'en', 'disable_image_optimization', 'Disable image optimization?', '2021-06-02 03:18:51', '2021-09-20 07:30:28'),
(26752, 'en', 'back_to_uploaded_files', 'Back to uploaded files', '2021-06-02 03:41:55', '2021-09-20 07:30:28'),
(26753, 'en', 'drag__drop_your_files', 'Drag & drop your files', '2021-06-02 03:41:56', '2021-09-20 07:30:28'),
(26754, 'en', 'subscribe_now', 'Subscribe Now', '2021-06-02 03:44:19', '2021-09-20 07:30:28'),
(26755, 'en', 'play_store_link', 'Play Store Link', '2021-06-02 03:49:21', '2021-09-20 07:30:28'),
(26756, 'en', 'app_store_link', 'App Store Link', '2021-06-02 03:49:21', '2021-09-20 07:30:28'),
(26757, 'en', 'hello', 'Hello', '2021-06-08 05:29:55', '2021-09-20 07:30:28'),
(26758, 'en', 'shop_by_department', 'Shop By Department', '2021-06-08 05:29:55', '2021-09-20 07:30:28'),
(26759, 'en', 'log_out', 'Log Out', '2021-06-08 05:29:55', '2021-09-20 07:30:28'),
(26760, 'en', 'sms_templates', 'SMS Templates', '2021-06-21 06:01:43', '2021-09-20 07:30:28'),
(26761, 'en', 'loading', 'Loading..', '2021-06-21 06:02:59', '2021-09-20 07:30:28'),
(26762, 'en', 'place_order', 'Place Order', '2021-06-21 06:02:59', '2021-09-20 07:30:28'),
(26763, 'en', 'load_more', 'Load More.', '2021-06-21 06:02:59', '2021-09-20 07:30:28'),
(26764, 'en', 'nothing_more_found', 'Nothing more found.', '2021-06-21 06:02:59', '2021-09-20 07:30:28'),
(26765, 'en', 'phone_number_verification', 'Phone Number Verification', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26766, 'en', 'password_reset', 'Password Reset', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26767, 'en', 'delivery_status_change', 'Delivery Status Change', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26768, 'en', 'payment_status_change', 'Payment Status Change', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26769, 'en', 'assign_delivery_boy', 'Assign Delivery Boy', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26770, 'en', 'sms_body', 'SMS Body', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26771, 'en', 'template_id', 'Template ID', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26772, 'en', 'update_settings', 'Update Settings', '2021-06-21 06:03:28', '2021-09-20 07:30:28'),
(26773, 'en', 'please_turn_off_maintenance_mode_before_updating', 'Please turn off maintenance mode before updating.', '2021-07-28 00:34:17', '2021-09-20 07:30:28'),
(26774, 'en', 'file_system__cache_configuration', 'File System & Cache Configuration', '2021-07-28 00:34:18', '2021-09-20 07:30:28'),
(26775, 'en', 'google_map', 'Google Map', '2021-07-28 00:34:19', '2021-09-20 07:30:28'),
(26776, 'en', 'google_firebase', 'Google Firebase', '2021-07-28 00:34:19', '2021-09-20 07:30:28'),
(26777, 'en', 'no_notification_found', 'No notification found', '2021-07-28 00:34:19', '2021-09-20 07:30:28'),
(26778, 'en', 'view_all_notifications', 'View All Notifications', '2021-07-28 00:34:19', '2021-09-20 07:30:28'),
(26779, 'en', 'account', 'Account', '2021-08-09 20:12:43', '2021-09-20 07:30:28'),
(26780, 'en', 'item_has_been_removed_from_cart', 'Item has been removed from cart', '2021-08-09 20:12:43', '2021-09-20 07:30:28'),
(26781, 'en', 'please_choose_all_the_options', 'Please choose all the options', '2021-08-09 20:12:43', '2021-09-20 07:30:28'),
(26782, 'en', 'auction_products', 'Auction Products', '2021-08-09 20:15:40', '2021-09-20 07:30:28'),
(26783, 'en', 'add_new_auction_product', 'Add New auction product', '2021-08-09 20:15:40', '2021-09-20 07:30:28'),
(26784, 'en', 'all_auction_products', 'All Auction Products', '2021-08-09 20:15:40', '2021-09-20 07:30:28'),
(26785, 'en', 'select_brand', 'Select Brand', '2021-08-09 20:18:10', '2021-09-20 07:30:28'),
(26786, 'en', 'minimum_purchase_qty', 'Minimum Purchase Qty', '2021-08-09 20:18:11', '2021-09-20 07:30:28'),
(26787, 'en', 'discount_date_range', 'Discount Date Range', '2021-08-09 20:18:11', '2021-09-20 07:30:28'),
(26788, 'en', 'select_date', 'Select Date', '2021-08-09 20:18:11', '2021-09-20 07:30:28'),
(26789, 'en', '1', '1', '2021-08-09 20:18:11', '2021-08-09 20:18:11'),
(26790, 'en', 'product_wise_shipping_cost_is_disable_shipping_cost_is_configured_from_here', 'Product wise shipping cost is disable. Shipping cost is configured from here', '2021-08-09 20:18:11', '2021-09-20 07:30:28'),
(26791, 'en', 'starting_bidding_price', 'Starting bidding price', '2021-08-09 20:26:44', '2021-09-20 07:30:28'),
(26792, 'en', 'auction_date_range', 'Auction Date Range', '2021-08-09 20:26:44', '2021-09-20 07:30:28'),
(26793, 'en', 'auction_products_orders', 'Auction Products Orders', '2021-08-19 00:50:51', '2021-09-20 07:30:28'),
(26794, 'en', 'twilio_otp', 'Twilio OTP', '2021-08-21 05:56:00', '2021-09-20 07:30:28'),
(26795, 'en', 'mimsms', 'MIMSMS', '2021-08-21 05:56:00', '2021-09-20 07:30:28'),
(26796, 'en', 'twilio_credential', 'Twilio Credential', '2021-08-21 05:56:36', '2021-09-20 07:30:28'),
(26797, 'en', 'valid_twilio_number', 'VALID TWILIO NUMBER', '2021-08-21 05:56:36', '2021-09-20 07:30:28'),
(26798, 'en', 'entity_id', 'ENTITY ID', '2021-08-21 05:56:37', '2021-09-20 07:30:28'),
(26799, 'en', 'dlt_manual', 'DLT Manual', '2021-08-21 05:56:37', '2021-09-20 07:30:28'),
(26800, 'en', 'mimsms_credential', 'MIMSMS Credential', '2021-08-21 05:56:37', '2021-09-20 07:30:28'),
(26801, 'en', 'mim_api_key', 'MIM_API_KEY', '2021-08-21 05:56:37', '2021-09-20 07:30:28'),
(26802, 'en', 'mim_sender_id', 'MIM_SENDER_ID', '2021-08-21 05:56:37', '2021-09-20 07:30:28'),
(26803, 'en', 'product_bidding_price__date_range', 'Product Bidding Price + Date Range', '2021-08-21 07:19:33', '2021-09-20 07:30:28'),
(26804, 'en', 'is_product_quantity_mulitiply', 'Is Product Quantity Mulitiply', '2021-08-21 07:19:33', '2021-09-20 07:30:28'),
(26805, 'en', 'auction_product', 'Auction Product', '2021-08-21 19:16:21', '2021-09-20 07:30:28'),
(26806, 'en', 'bidded_products', 'Bidded Products', '2021-08-21 19:16:21', '2021-09-20 07:30:28'),
(26807, 'en', 'all_auction_product', 'All Auction Product', '2021-08-21 11:42:38', '2021-09-20 07:30:28'),
(26808, 'en', 'bid_starting_amount', 'Bid Starting Amount', '2021-08-21 11:42:38', '2021-09-20 07:30:28'),
(26809, 'en', 'auction_start_date', 'Auction Start Date', '2021-08-21 11:42:38', '2021-09-20 07:30:28'),
(26810, 'en', 'auction_end_date', 'Auction End Date', '2021-08-21 11:42:38', '2021-09-20 07:30:28'),
(26811, 'en', 'total_bids', 'Total Bids', '2021-08-21 11:42:38', '2021-09-20 07:30:28'),
(26812, 'en', 'bulk_action', 'Bulk Action', '2021-08-21 11:42:49', '2021-09-20 07:30:28'),
(26813, 'en', 'delete_selection', 'Delete selection', '2021-08-21 11:42:49', '2021-09-20 07:30:28'),
(26814, 'en', 'product_approval_update_successfully', 'Product approval update successfully', '2021-08-21 11:42:51', '2021-09-20 07:30:28'),
(26815, 'en', 'view_products', 'View Products', '2021-08-21 11:47:23', '2021-09-20 07:30:28'),
(26816, 'en', 'view_all_bids', 'View All Bids', '2021-08-21 11:47:23', '2021-09-20 07:30:28'),
(26817, 'en', 'edit_auction_product', 'Edit Auction Product', '2021-08-21 11:50:05', '2021-09-20 07:30:28'),
(26818, 'en', 'auction_will_end', 'Auction Will End', '2021-08-21 12:18:43', '2021-09-20 07:30:28'),
(26819, 'en', 'starting_bid', 'Starting Bid', '2021-08-21 12:18:43', '2021-09-20 07:30:28'),
(26820, 'en', 'highest_bid', 'Highest Bid', '2021-08-21 12:18:43', '2021-09-20 07:30:28'),
(26821, 'en', 'place_bid', 'Place Bid', '2021-08-21 12:18:43', '2021-09-20 07:30:28'),
(26822, 'en', 'bid_for_product', 'Bid For Product', '2021-08-21 12:18:44', '2021-09-20 07:30:28'),
(26823, 'en', 'min_bid_amount_', 'Min Bid Amount: ', '2021-08-21 12:18:44', '2021-09-20 07:30:28'),
(26824, 'en', 'place_bid_price', 'Place Bid Price', '2021-08-21 12:18:44', '2021-09-20 07:30:28'),
(26825, 'en', 'enter_amount', 'Enter Amount', '2021-08-21 12:18:44', '2021-09-20 07:30:28'),
(26826, 'en', 'bid_placed_successfully', 'Bid Placed Successfully', '2021-08-21 12:21:27', '2021-09-20 07:30:28'),
(26827, 'en', 'my_bidded_amount', 'My Bidded Amount', '2021-08-21 12:21:28', '2021-09-20 07:30:28'),
(26828, 'en', 'chnage_bid', 'Chnage Bid', '2021-08-21 12:21:29', '2021-09-20 07:30:28'),
(26829, 'en', 'highest_bid_amount', 'Highest Bid Amount', '2021-08-21 12:25:54', '2021-09-20 07:30:28'),
(26830, 'en', 'ended', 'Ended', '2021-08-21 12:28:51', '2021-09-20 07:30:28'),
(26831, 'en', 'buy', 'Buy', '2021-08-21 12:28:51', '2021-09-20 07:30:28'),
(26832, 'en', 'address_edit', 'Address Edit', '2021-08-21 12:30:27', '2021-09-20 07:30:28'),
(26833, 'en', 'proxypay', 'ProxyPay', '2021-08-21 12:30:40', '2021-09-20 07:30:28'),
(26834, 'en', 'has_been_placed', 'has been Placed', '2021-08-21 12:32:46', '2021-09-20 07:30:28'),
(26835, 'en', 'order_has_been_deleted_successfully', 'Order has been deleted successfully', '2021-08-21 12:33:00', '2021-09-20 07:30:28'),
(26836, 'en', 'purchased', 'Purchased', '2021-08-21 12:33:30', '2021-09-20 07:30:28'),
(26837, 'en', 'remove_other_items_to_add_auction_product', 'Remove other items to add auction product.', '2021-08-21 12:33:57', '2021-09-20 07:30:28'),
(26838, 'en', 'item_alreday_added_to_the_cart', 'Item alreday added to the cart.', '2021-08-21 12:33:57', '2021-09-20 07:30:28'),
(26839, 'en', 'total_collected', 'Total Collected', '2021-09-05 11:02:27', '2021-09-20 07:30:28'),
(26840, 'en', 'earnings', 'Earnings', '2021-09-05 11:02:27', '2021-09-20 07:30:28'),
(26841, 'en', 'values', 'Values', '2021-09-05 11:03:02', '2021-09-20 07:30:28'),
(26842, 'en', 'attribute_values', 'Attribute values', '2021-09-05 11:03:02', '2021-09-20 07:30:28'),
(26843, 'en', 'global_seo', 'Global SEO', '2021-09-14 05:23:18', '2021-09-20 07:30:28'),
(26844, 'en', 'keyword_keyword', 'Keyword, Keyword', '2021-09-14 05:23:18', '2021-09-20 07:30:28'),
(26845, 'en', 'choose_file', 'Choose File', '2021-09-14 05:23:18', '2021-09-20 07:30:29'),
(26846, 'en', 'nothing_found', 'Nothing found', '2021-09-14 05:23:18', '2021-09-20 07:30:29'),
(26847, 'en', 'wallet_recharge_history', 'Wallet Recharge History', '2021-09-14 05:23:18', '2021-09-20 07:30:29'),
(26848, 'en', 'order_code_', 'Order code: ', '2021-09-14 05:23:18', '2021-09-20 07:30:29'),
(26849, 'en', 'all_categories', 'All categories', '2021-09-14 05:23:19', '2021-09-20 07:44:39'),
(26850, 'en', 'new', 'new', '2021-09-14 07:18:02', '2021-09-14 07:18:02'),
(26851, 'en', 'password', 'Password', '2021-09-14 07:22:08', '2021-09-20 07:30:29'),
(26852, 'en', 'forgot_password', 'Forgot password?', '2021-09-14 07:22:08', '2021-09-20 07:30:29'),
(26853, 'en', 'times', 'Times', '2021-09-14 07:22:14', '2021-09-20 07:30:29'),
(26854, 'en', 'be_a_seller', 'Be A Seller', '2021-09-14 07:22:14', '2021-09-20 07:30:29'),
(26855, 'en', 'sort_by', 'Sort by', '2021-09-14 07:22:16', '2021-09-20 07:30:29'),
(26856, 'en', 'tax', 'Tax', '2021-09-14 07:22:21', '2021-09-20 07:30:29'),
(26857, 'en', 'total', 'Total', '2021-09-14 07:22:21', '2021-09-20 07:30:29'),
(26858, 'en', 'postal_code', 'Postal code', '2021-09-14 07:22:23', '2021-09-20 07:30:29'),
(26859, 'en', 'terms_and_conditions', 'terms and conditions', '2021-09-14 07:22:27', '2021-09-20 07:30:29'),
(26860, 'en', 'return_policy', 'return policy', '2021-09-14 07:22:27', '2021-09-20 07:30:29'),
(26861, 'en', 'privacy_policy', 'privacy policy', '2021-09-14 07:22:27', '2021-09-20 07:30:29'),
(26862, 'en', 'order_date', 'Order date', '2021-09-14 07:22:32', '2021-09-20 07:30:29'),
(26863, 'en', 'shipping_address', 'Shipping address', '2021-09-14 07:22:32', '2021-09-20 07:30:29'),
(26864, 'en', 'order_status', 'Order status', '2021-09-14 07:22:32', '2021-09-20 07:30:29');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(26865, 'en', 'seller_commission_activation', 'Seller Commission Activation', '2021-09-19 04:42:21', '2021-09-20 07:30:29'),
(26866, 'en', 'of_seller_product_price_will_be_deducted_from_seller_earnings', 'of seller product price will be deducted from seller earnings', '2021-09-19 04:42:21', '2021-09-20 07:30:29'),
(26867, 'en', 'this_commission_only_works_when_category_based_commission_is_turned_off_from_business_settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-09-19 04:42:21', '2021-09-20 07:30:29'),
(26868, 'en', 'disable_image_encoding', 'Disable image encoding?', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26869, 'en', 'admin_approval_on_seller_product', 'Admin Approval On Seller Product', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26870, 'en', 'after_activate_this_option_admin_approval_need_to_seller_product', 'After activate this option, Admin approval need to seller product', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26871, 'en', 'proxy_pay_activation', 'Proxy Pay Activation', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26872, 'en', 'you_need_to_configure_proxypay_correctly_to_enable_this_feature', 'You need to configure proxypay correctly to enable this feature', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26873, 'en', 'amarpay_activation', 'Amarpay Activation', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26874, 'en', 'you_need_to_configure_amarpay_correctly_to_enable_this_feature', 'You need to configure amarpay correctly to enable this feature', '2021-09-19 04:42:42', '2021-09-20 07:30:29'),
(26875, 'en', 'category_based_commission', 'Category Based Commission', '2021-09-19 04:44:37', '2021-09-20 07:30:29'),
(26876, 'en', 'if_category_based_commission_is_enbaled_global_percentage_will_not_work', 'If Category Based Commission is enbaled, Global percentage will not work.', '2021-09-19 04:46:09', '2021-09-20 07:30:29'),
(26877, 'en', 'if_category_based_commission_is_enbaled_set_seller_commission_percentage_0', 'If Category Based Commission is enbaled, Set seller commission percentage 0.', '2021-09-19 04:46:38', '2021-09-20 07:30:29'),
(26878, 'en', 'seller_commission_activatation', 'Seller Commission Activatation', '2021-09-19 04:47:42', '2021-09-20 07:30:29'),
(26879, 'en', 'seller_commission_updated_successfully', 'Seller Commission updated successfully', '2021-09-19 05:28:32', '2021-09-20 07:30:29'),
(26880, 'en', 'order_level', 'Order Level', '2021-09-19 05:33:57', '2021-09-20 07:30:29'),
(26881, 'en', 'icon', 'Icon', '2021-09-19 05:33:57', '2021-09-20 07:30:29'),
(26882, 'en', 'all_products', 'All products', '2021-09-19 05:49:10', '2021-09-20 07:30:29'),
(26883, 'en', 'add_new_product', 'Add New Product', '2021-09-19 05:49:10', '2021-09-20 07:30:29'),
(26884, 'en', 'reviews', 'reviews', '2021-09-19 06:05:06', '2021-09-19 06:05:06'),
(26885, 'en', 'sold_by', 'Sold by', '2021-09-19 06:05:07', '2021-09-20 07:30:29'),
(26886, 'en', 'coupon_has_been_saved_successfully', 'Coupon has been saved successfully', '2021-09-20 01:35:28', '2021-09-20 07:30:29'),
(26887, 'en', 'cart_base', 'Cart Base', '2021-09-20 01:35:28', '2021-09-20 07:30:29'),
(26888, 'en', 'coupon_has_been_deleted_successfully', 'Coupon has been deleted successfully', '2021-09-20 01:52:19', '2021-09-20 07:30:29'),
(26889, 'en', 'coupon_has_been_updated_successfully', 'Coupon has been updated successfully', '2021-09-20 01:53:42', '2021-09-20 07:30:29'),
(26890, 'en', 'coupons', 'Coupons', '2021-09-20 02:02:10', '2021-09-20 07:30:29'),
(26891, 'en', 'add_your_coupon', 'Add Your Coupon', '2021-09-20 02:03:19', '2021-09-20 07:30:29'),
(26892, 'en', 'edit_your_coupon', 'Edit Your Coupon', '2021-09-20 02:14:13', '2021-09-20 07:30:29'),
(26893, 'en', 'paypal_client_id', 'Paypal Client Id', '2021-09-20 04:19:16', '2021-09-20 07:30:29'),
(26894, 'en', 'stripe_key', 'Stripe Key', '2021-09-20 04:19:16', '2021-09-20 07:30:29'),
(26895, 'en', 'stripe_secret', 'Stripe Secret', '2021-09-20 04:19:16', '2021-09-20 07:30:29'),
(26896, 'en', 'aamarpay_credential', 'Aamarpay Credential', '2021-09-20 04:19:16', '2021-09-20 07:30:29'),
(26897, 'en', 'aamarpay_store_id', 'Aamarpay Store Id', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26898, 'en', 'aamarpay_signature_key', 'Aamarpay signature key', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26899, 'en', 'aamarpay_sandbox_mode', 'Aamarpay Sandbox Mode', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26900, 'en', 'proxypay_credential', 'ProxyPay Credential', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26901, 'en', 'proxypay_token', 'PROXYPAY_TOKEN', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26902, 'en', 'proxypay_token', 'PROXYPAY TOKEN', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26903, 'en', 'proxypay_entity', 'PROXYPAY_ENTITY', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26904, 'en', 'proxypay_end_time', 'PROXYPAY_END_TIME', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26905, 'en', 'days', 'Days', '2021-09-20 04:19:17', '2021-09-20 07:30:29'),
(26906, 'en', 'flw_public_key', 'FLW_PUBLIC_KEY', '2021-09-20 05:04:59', '2021-09-20 07:30:29'),
(26907, 'en', 'flw_secret_key', 'FLW_SECRET_KEY', '2021-09-20 05:04:59', '2021-09-20 07:30:29'),
(26908, 'en', 'flw_secret_hash', 'FLW_SECRET_HASH', '2021-09-20 05:04:59', '2021-09-20 07:30:29'),
(26909, 'en', 'categories', 'Categories', '2021-09-20 07:30:29', '2021-09-20 07:30:29'),
(26910, 'en', 'support_desk', 'Support Desk', '2022-04-10 23:26:26', '2022-04-10 23:26:26'),
(26911, 'en', 'type_ticket_code__enter', 'Type ticket code & Enter', '2022-04-10 23:26:26', '2022-04-10 23:26:26'),
(26912, 'en', 'user', 'User', '2022-04-10 23:26:27', '2022-04-10 23:26:27'),
(26913, 'en', 'last_reply', 'Last reply', '2022-04-10 23:26:27', '2022-04-10 23:26:27'),
(26914, 'en', 'shipping_states', 'Shipping States', '2022-04-10 23:26:27', '2022-04-10 23:26:27'),
(26915, 'en', 'clear_cache', 'Clear Cache', '2022-04-10 23:26:27', '2022-04-10 23:26:27'),
(26916, 'en', 'help_line_number', 'Help line number', '2022-04-11 01:37:54', '2022-04-11 01:37:54'),
(26917, 'en', 'help_line', 'Help line', '2022-04-11 01:57:27', '2022-04-11 01:57:27'),
(26918, 'en', 'help_line', 'Help line', '2022-04-11 01:57:27', '2022-04-11 01:57:27'),
(26919, 'en', 'help_line', 'Help line', '2022-04-11 01:57:27', '2022-04-11 01:57:27'),
(26920, 'en', 'help_line', 'Help line', '2022-04-11 01:57:27', '2022-04-11 01:57:27'),
(26921, 'en', 'invalid_login_credentials', 'Invalid login credentials', '2022-04-11 03:38:16', '2022-04-11 03:38:16'),
(26922, 'en', 'authorize_net_activation', 'Authorize Net Activation', '2022-04-11 03:42:14', '2022-04-11 03:42:14'),
(26923, 'en', 'you_need_to_configure_authorize_net_correctly_to_enable_this_feature', 'You need to configure authorize net correctly to enable this feature', '2022-04-11 03:42:15', '2022-04-11 03:42:15'),
(26924, 'en', 'payku_activation', 'Payku Activation', '2022-04-11 03:42:15', '2022-04-11 03:42:15'),
(26925, 'en', 'you_need_to_configure_payku_net_correctly_to_enable_this_feature', 'You need to configure payku net correctly to enable this feature', '2022-04-11 03:42:15', '2022-04-11 03:42:15'),
(26926, 'en', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver', '2022-04-11 03:42:43', '2022-04-11 03:42:43'),
(26927, 'en', 'cache__session_driver', 'Cache & Session Driver', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26928, 'en', 'cache_driver', 'CACHE_DRIVER', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26929, 'en', 'redis', 'redis', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26930, 'en', 'session_driver', 'SESSION_DRIVER', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26931, 'en', 'redis_configuration_if_you_use_redis_as_any_of_the_drivers', 'Redis Configuration (If you use redis as any of the drivers)', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26932, 'en', 'redis_host', 'REDIS_HOST', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26933, 'en', 'redis_password', 'REDIS_PASSWORD', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26934, 'en', 'redis_port', 'REDIS_PORT', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(26935, 'en', 'import_app_translations', 'Import App Translations', '2022-04-11 06:16:31', '2022-04-11 06:16:31'),
(26936, 'en', 'english_trasnlation_file', 'English Trasnlation File', '2022-04-11 06:16:31', '2022-04-11 06:16:31'),
(26937, 'en', 'choose_app_enarb_file', 'Choose app_en.arb file', '2022-04-11 06:16:31', '2022-04-11 06:16:31'),
(26938, 'en', 'import', 'Import', '2022-04-11 06:16:32', '2022-04-11 06:16:32'),
(26939, 'en', 'flutter_app_lang_code', 'Flutter App Lang Code', '2022-04-11 06:16:32', '2022-04-11 06:16:32'),
(26940, 'en', 'app_translation', 'App Translation', '2022-04-11 06:16:32', '2022-04-11 06:16:32'),
(26941, 'en', 'arb_file_export', 'arb File Export', '2022-04-11 06:16:32', '2022-04-11 06:16:32'),
(26942, 'en', 'language_has_been_deleted_successfully', 'Language has been deleted successfully', '2022-04-11 06:27:03', '2022-04-11 06:27:03'),
(26943, 'en', 'external_link', 'External link', '2022-04-11 06:56:57', '2022-04-11 06:56:57'),
(26944, 'en', 'leave_it_blank_if_you_do_not_use_external_site_link', 'Leave it blank if you do not use external site link', '2022-04-11 06:56:58', '2022-04-11 06:56:58'),
(26945, 'en', 'external_link_button_text', 'External link button text', '2022-04-11 06:56:58', '2022-04-11 06:56:58'),
(26946, 'en', 'ordering_number', 'Ordering Number', '2022-04-11 06:57:54', '2022-04-11 06:57:54'),
(26947, 'en', 'higher_number_has_high_priority', 'Higher number has high priority', '2022-04-11 06:57:55', '2022-04-11 06:57:55'),
(26948, 'en', 'filtering_attributes', 'Filtering Attributes', '2022-04-11 06:57:55', '2022-04-11 06:57:55'),
(26949, 'en', 'attribute_information', 'Attribute Information', '2022-04-11 07:00:46', '2022-04-11 07:00:46'),
(26950, 'en', 'all_colors', 'All Colors', '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(26951, 'en', 'type_color_name__enter', 'Type color name & Enter', '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(26952, 'en', 'add_new_color', 'Add New Color', '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(26953, 'en', 'color_code', 'Color Code', '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(26954, 'en', 'color_filter_activation', 'Color filter activation', '2022-04-11 07:00:53', '2022-04-11 07:00:53'),
(26955, 'en', 'color_information', 'Color Information', '2022-04-11 07:00:57', '2022-04-11 07:00:57'),
(26956, 'en', 'system_default_currency', 'System Default Currency', '2022-04-11 23:13:17', '2022-04-11 23:13:17'),
(26957, 'en', 'set_currency_formats', 'Set Currency Formats', '2022-04-11 23:13:17', '2022-04-11 23:13:17'),
(26958, 'en', 'symbol_format', 'Symbol Format', '2022-04-11 23:13:17', '2022-04-11 23:13:17'),
(26959, 'en', 'decimal_separator', 'Decimal Separator', '2022-04-11 23:13:17', '2022-04-11 23:13:17'),
(26960, 'en', 'no_of_decimals', 'No of decimals', '2022-04-11 23:13:17', '2022-04-11 23:13:17'),
(26961, 'en', 'all_currencies', 'All Currencies', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26962, 'en', 'add_new_currency', 'Add New Currency', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26963, 'en', 'currency_name', 'Currency name', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26964, 'en', 'currency_symbol', 'Currency symbol', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26965, 'en', 'currency_code', 'Currency code', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26966, 'en', 'currency_status_updated_successfully', 'Currency Status updated successfully', '2022-04-11 23:13:18', '2022-04-11 23:13:18'),
(26967, 'en', 'tax_has_been_inserted_successfully', 'Tax has been inserted successfully', '2022-04-11 23:14:10', '2022-04-11 23:14:10'),
(26968, 'en', 'tax_information', 'Tax Information', '2022-04-11 23:14:21', '2022-04-11 23:14:21'),
(26969, 'en', 'update_tax_info', 'update Tax Info', '2022-04-11 23:14:21', '2022-04-11 23:14:21'),
(26970, 'en', 'tax_has_been_updated_successfully', 'Tax has been updated successfully', '2022-04-11 23:14:26', '2022-04-11 23:14:26'),
(26971, 'en', 'authorize_net', 'Authorize Net', '2022-04-11 23:16:04', '2022-04-11 23:16:04'),
(26972, 'en', 'merchant_login_id', 'MERCHANT_LOGIN_ID', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26973, 'en', 'merchant_transaction_key', 'MERCHANT_TRANSACTION_KEY', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26974, 'en', 'authorize_net_sandbox_mode', 'Authorize Net Sandbox Mode', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26975, 'en', 'payku', 'Payku', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26976, 'en', 'payku_base_url', 'PAYKU_BASE_URL', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26977, 'en', 'payku_public_token', 'PAYKU_PUBLIC_TOKEN', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26978, 'en', 'payku_private_token', 'PAYKU_PRIVATE_TOKEN', '2022-04-11 23:16:05', '2022-04-11 23:16:05'),
(26979, 'en', 'cache_cleared_successfully', 'Cache cleared successfully', '2022-04-11 23:40:16', '2022-04-11 23:40:16'),
(26980, 'en', 'term__condition', 'Term & Condition', '2022-04-12 00:19:40', '2022-04-12 00:19:40'),
(26981, 'en', 'attribute_detail', 'Attribute Detail', '2022-04-12 00:42:27', '2022-04-12 00:42:27'),
(26982, 'en', 'add_new_attribute_value', 'Add New Attribute Value', '2022-04-12 00:42:27', '2022-04-12 00:42:27'),
(26983, 'en', 'attribute_name', 'Attribute Name', '2022-04-12 00:42:28', '2022-04-12 00:42:28'),
(26984, 'en', 'attribute_value', 'Attribute Value', '2022-04-12 00:42:28', '2022-04-12 00:42:28'),
(26985, 'en', 'attribute_value_has_been_inserted_successfully', 'Attribute value has been inserted successfully', '2022-04-12 00:43:33', '2022-04-12 00:43:33'),
(26986, 'en', 'file_name', 'File Name', '2022-04-12 00:57:02', '2022-04-12 00:57:02'),
(26987, 'en', 'file_type', 'File Type', '2022-04-12 00:57:02', '2022-04-12 00:57:02'),
(26988, 'en', 'file_size', 'File Size', '2022-04-12 00:57:02', '2022-04-12 00:57:02'),
(26989, 'en', 'uploaded_at', 'Uploaded At', '2022-04-12 00:57:02', '2022-04-12 00:57:02'),
(26990, 'en', 'if_any_product_has_discount_or_exists_in_another_flash_deal_the_discount_will_be_replaced_by_this_discount__time_limit', 'If any product has discount or exists in another flash deal, the discount will be replaced by this discount & time limit.', '2022-04-12 01:26:01', '2022-04-12 01:26:01'),
(26991, 'en', 'off', 'OFF', '2022-04-12 01:32:59', '2022-04-12 01:32:59'),
(26992, 'en', 'electronic', 'Electronic', '2022-04-12 02:07:02', '2022-04-12 02:07:02'),
(26993, 'en', 'registration_successful', 'Registration successful.', '2022-04-12 04:25:55', '2022-04-12 04:25:55'),
(26994, 'en', 'state', 'State', '2022-04-12 04:26:33', '2022-04-12 04:26:33'),
(26995, 'en', 'please_add_shipping_address', 'Please add shipping address', '2022-04-12 04:26:38', '2022-04-12 04:26:38'),
(26996, 'en', 'purchase_code', 'Purchase code', '2022-04-13 01:20:02', '2022-04-13 01:20:02'),
(26997, 'en', 'email_or_phone_already_exists', 'Email or Phone already exists.', '2022-04-13 02:34:01', '2022-04-13 02:34:01'),
(26998, 'en', 'content', 'Content..', '2022-04-13 10:33:39', '2022-04-13 10:33:39'),
(26999, 'en', 'edit_seller_information', 'Edit Seller Information', '2022-04-13 10:50:12', '2022-04-13 10:50:12'),
(27000, 'en', 'commission_history_report', 'Commission History report', '2022-04-14 10:34:02', '2022-04-14 10:34:02'),
(27001, 'en', 'choose_seller', 'Choose Seller', '2022-04-14 10:34:02', '2022-04-14 10:34:02'),
(27002, 'en', 'daterange', 'Daterange', '2022-04-14 10:34:02', '2022-04-14 10:34:02'),
(27003, 'en', 'admin_commission', 'Admin Commission', '2022-04-14 10:34:03', '2022-04-14 10:34:03'),
(27004, 'en', 'seller_earning', 'Seller Earning', '2022-04-14 10:34:03', '2022-04-14 10:34:03'),
(27005, 'en', 'created_at', 'Created At', '2022-04-14 10:34:03', '2022-04-14 10:34:03'),
(27006, 'en', 'change_order_status', 'Change Order Status', '2022-04-14 10:35:40', '2022-04-14 10:35:40'),
(27007, 'en', 'choose_an_order_status', 'Choose an order status', '2022-04-14 10:35:40', '2022-04-14 10:35:40'),
(27008, 'en', 'filter_by_delivery_status', 'Filter by Delivery Status', '2022-04-14 10:35:40', '2022-04-14 10:35:40'),
(27009, 'en', 'seller', 'Seller', '2022-04-14 10:35:51', '2022-04-14 10:35:51'),
(27010, 'en', 'wallet_transaction_report', 'Wallet Transaction Report', '2022-04-14 10:42:21', '2022-04-14 10:42:21'),
(27011, 'en', 'wallet_transaction', 'Wallet Transaction', '2022-04-14 10:42:21', '2022-04-14 10:42:21'),
(27012, 'en', 'choose_user', 'Choose User', '2022-04-14 10:42:21', '2022-04-14 10:42:21'),
(27013, 'en', 'emails', 'Emails', '2022-04-14 10:57:53', '2022-04-14 10:57:53'),
(27014, 'en', 'users', 'Users', '2022-04-14 10:57:53', '2022-04-14 10:57:53'),
(27015, 'en', 'newsletter_subject', 'Newsletter subject', '2022-04-14 10:57:53', '2022-04-14 10:57:53'),
(27016, 'en', 'newsletter_content', 'Newsletter content', '2022-04-14 10:57:54', '2022-04-14 10:57:54'),
(27017, 'en', 'google_map_setting', 'Google Map Setting', '2022-04-14 11:15:05', '2022-04-14 11:15:05'),
(27018, 'en', 'map_api_key', 'Map API KEY', '2022-04-14 11:15:05', '2022-04-14 11:15:05'),
(27019, 'en', 'google_firebase_setting', 'Google Firebase Setting', '2022-04-14 11:15:55', '2022-04-14 11:15:55'),
(27020, 'en', 'fcm_server_key', 'FCM SERVER KEY', '2022-04-14 11:15:55', '2022-04-14 11:15:55'),
(27021, 'en', 'facebook_pixel_setting', 'Facebook Pixel Setting', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27022, 'en', 'facebook_pixel', 'Facebook Pixel', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27023, 'en', 'facebook_pixel_id', 'Facebook Pixel ID', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27024, 'en', 'please_be_carefull_when_you_are_configuring_facebook_pixel', 'Please be carefull when you are configuring Facebook pixel.', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27025, 'en', 'log_in_to_facebook_and_go_to_your_ads_manager_account', 'Log in to Facebook and go to your Ads Manager account', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27026, 'en', 'open_the_navigation_bar_and_select_events_manager', 'Open the Navigation Bar and select Events Manager', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27027, 'en', 'copy_your_pixel_id_from_underneath_your_site_name_and_paste_the_number_into_facebook_pixel_id_field', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27028, 'en', 'google_analytics_setting', 'Google Analytics Setting', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27029, 'en', 'google_analytics', 'Google Analytics', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27030, 'en', 'tracking_id', 'Tracking ID', '2022-04-14 11:16:13', '2022-04-14 11:16:13'),
(27031, 'en', 'type_country_name', 'Type country name', '2022-04-14 11:16:55', '2022-04-14 11:16:55'),
(27032, 'en', 'all_states', 'All States', '2022-04-14 11:17:09', '2022-04-14 11:17:09'),
(27033, 'en', 'states', 'States', '2022-04-14 11:17:09', '2022-04-14 11:17:09'),
(27034, 'en', 'type_state_name', 'Type state name', '2022-04-14 11:17:09', '2022-04-14 11:17:09'),
(27035, 'en', 'add_new_state', 'Add New State', '2022-04-14 11:17:09', '2022-04-14 11:17:09'),
(27036, 'en', 'type_city_name__enter', 'Type city name & Enter', '2022-04-14 11:20:06', '2022-04-14 11:20:06'),
(27037, 'en', 'select_state', 'Select State', '2022-04-14 11:20:07', '2022-04-14 11:20:07'),
(27038, 'en', 'area_wise_shipping_cost', 'Area Wise Shipping Cost', '2022-04-14 11:20:07', '2022-04-14 11:20:07'),
(27039, 'en', 'a_new_order_has_been_placed', 'A new order has been placed', '2022-04-16 07:52:01', '2022-04-16 07:52:01'),
(27040, 'en', 'there_isnt_anything_added_yet', 'There isn\'t anything added yet', '2022-04-16 07:53:19', '2022-04-16 07:53:19'),
(27041, 'en', '____________nothing_selected_', '\r\n            Nothing selected ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27042, 'en', '____________nothing_found_', '\r\n            Nothing found ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27043, 'en', '____________choose_file_', '\r\n            Choose file ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27044, 'en', '____________file_selected_', '\r\n            File selected ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27045, 'en', '____________files_selected_', '\r\n            Files selected ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27046, 'en', '____________add_more_files_', '\r\n            Add more files ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27047, 'en', '____________add_more_files_', '\r\n            Add more files ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27048, 'en', '____________adding_more_files_', '\r\n            Adding more files ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27049, 'en', '____________drop_files_here____________paste_or_', '\r\n            Drop files here,\r\n            paste or ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27050, 'en', '____________drop_files_here____________paste_or_', '\r\n            Drop files here,\r\n            paste or ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27051, 'en', '____________browse_', '\r\n            Browse ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27052, 'en', '____________browse_', '\r\n            Browse ', '2022-04-16 10:33:25', '2022-04-16 10:33:25'),
(27053, 'en', '____________upload_complete_', '\r\n            Upload complete ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27054, 'en', '____________upload_paused_', '\r\n            Upload paused ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27055, 'en', '____________upload_paused_', '\r\n            Upload paused ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27056, 'en', '____________resume_upload_', '\r\n            Resume upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27057, 'en', '____________resume_upload_', '\r\n            Resume upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27058, 'en', '____________pause_upload_', '\r\n            Pause upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27059, 'en', '____________retry_upload_', '\r\n            Retry upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27060, 'en', '____________retry_upload_', '\r\n            Retry upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27061, 'en', '____________retry_upload_', '\r\n            Retry upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27062, 'en', '____________cancel_upload_', '\r\n            Cancel upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27063, 'en', '____________cancel_upload_', '\r\n            Cancel upload ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27064, 'en', '____________uploading_', '\r\n            Uploading ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27065, 'en', '____________uploading_', '\r\n            Uploading ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27066, 'en', '____________processing_', '\r\n            Processing ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27067, 'en', '____________processing_', '\r\n            Processing ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27068, 'en', '____________processing_', '\r\n            Processing ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27069, 'en', '____________complete_', '\r\n            Complete ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27070, 'en', '____________complete_', '\r\n            Complete ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27071, 'en', '____________file_', '\r\n            File ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27072, 'en', '____________file_', '\r\n            File ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27073, 'en', '____________file_', '\r\n            File ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27074, 'en', '____________files_', '\r\n            Files ', '2022-04-16 10:33:26', '2022-04-16 10:33:26'),
(27075, 'en', 'you_have_subscribed_successfully', 'You have subscribed successfully', '2022-04-16 10:55:54', '2022-04-16 10:55:54'),
(27076, 'en', 'nothing_selected_', 'Nothing selected ', '2022-04-19 05:46:02', '2022-04-19 05:46:02'),
(27077, 'en', 'another_product_exists_with_same_slug_please_change_the_slug', 'Another product exists with same slug. Please change the slug!', '2022-04-22 11:19:26', '2022-04-22 11:19:26'),
(27078, 'en', 'electronics', 'Electronics', '2022-04-22 13:10:39', '2022-04-22 13:10:39'),
(27079, 'en', 'products_reviews', 'Products Reviews', '2022-05-20 09:32:41', '2022-05-20 09:32:41'),
(27080, 'en', 'manage_attributes', 'Manage Attributes', '2022-05-20 09:32:42', '2022-05-20 09:32:42'),
(27081, 'en', 'conversation_is_disabled_at_this_moment', 'Conversation is disabled at this moment', '2022-05-26 04:45:00', '2022-05-26 04:45:00'),
(27082, 'en', 'all_sale_orders', 'All Sale Orders', '2022-05-27 10:53:30', '2022-05-27 10:53:30'),
(27083, 'en', 'all_sales_orders', 'All Sales Orders', '2022-05-27 10:53:42', '2022-05-27 10:53:42'),
(27084, 'en', 'price_range_skc', 'Price range skc', '2022-06-07 04:29:00', '2022-06-07 04:29:00'),
(27085, 'en', 'link_copied_to_clipboard_', '\r\n			Link copied to clipboard ', '2022-06-08 05:18:55', '2022-06-08 05:18:55'),
(27086, 'en', 'oops_unable_to_copy_', '\r\n			Oops, unable to copy ', '2022-06-08 05:18:55', '2022-06-08 05:18:55'),
(27087, 'en', 'use_phone_instead_', '\r\n			Use Phone Instead ', '2022-06-09 05:44:22', '2022-06-09 05:44:22'),
(27088, 'en', 'use_email_instead_', '\r\n			Use Email Instead ', '2022-06-09 05:44:22', '2022-06-09 05:44:22'),
(27089, 'en', 'createnbspaccount', 'Create&nbsp;Account', '2022-06-09 08:01:57', '2022-06-09 08:01:57'),
(27090, 'en', 'you_have_to_add_minimum_5_products', 'You have to add minimum 5 products!', '2022-06-11 05:43:54', '2022-06-11 05:43:54'),
(27091, 'en', 'you_have_to_add_minimum_1_products', 'You have to add minimum 1 products!', '2022-06-11 05:58:14', '2022-06-11 05:58:14'),
(27092, 'en', 'dashboardssss', 'Dashboardssss', '2022-06-14 05:16:53', '2022-06-14 05:16:53'),
(27093, 'en', 'you_may_like', 'You May Like', '2022-06-18 05:46:56', '2022-06-18 05:46:56'),
(27094, 'en', 'you_may_also_like', 'You May Also Like', '2022-06-18 06:39:28', '2022-06-18 06:39:28'),
(27095, 'en', 'add_category_wise_brands', 'Add Category Wise Brands', '2022-06-18 08:03:29', '2022-06-18 08:03:29'),
(27096, 'en', 'enter_url_link', 'Enter Url Link', '2022-06-18 08:30:22', '2022-06-18 08:30:22'),
(27097, 'en', 'enter_url', 'Enter Url', '2022-06-18 08:30:23', '2022-06-18 08:30:23'),
(27098, 'en', 'enter_title', 'Enter Title', '2022-06-18 08:33:06', '2022-06-18 08:33:06'),
(27099, 'en', 'category_wise_brand_has_been_inserted_successfully', 'Category wise Brand has been inserted successfully!', '2022-06-18 09:00:36', '2022-06-18 09:00:36'),
(27100, 'en', 'category_wise_brand_list', 'Category Wise Brand List', '2022-06-18 09:09:39', '2022-06-18 09:09:39'),
(27101, 'en', 'category_has_been_deleted_successfully', 'Category has been deleted successfully', '2022-06-22 10:29:38', '2022-06-22 10:29:38'),
(27102, 'en', 'show_on_home_page', 'Show On Home Page', '2022-06-22 10:44:56', '2022-06-22 10:44:56'),
(27103, 'en', 'best_premium_section', 'best_premium_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27104, 'en', 'category_section', 'category_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27105, 'en', 'service_section', 'service_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27106, 'en', 'brand_section', 'brand_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27107, 'en', 'weekly_section', 'weekly_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27108, 'en', 'live_section', 'live_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27109, 'en', 'small_comodity_section', 'small_comodity_section', '2022-06-22 10:45:01', '2022-06-22 10:45:01'),
(27110, 'en', 'home_categories_2', 'Home Categories 2', '2022-06-23 07:19:41', '2022-06-23 07:19:41'),
(27111, 'en', 'home_categories_with_banner', 'Home Categories With Banner', '2022-06-23 11:02:36', '2022-06-23 11:02:36'),
(27112, 'en', 'page_wise_banner', 'Page Wise Banner', '2022-06-23 11:14:42', '2022-06-23 11:14:42'),
(27113, 'en', '1366x420', '1366x420', '2022-06-23 11:14:42', '2022-06-23 11:14:42'),
(27114, 'en', 'home_image', 'Home Image', '2022-06-23 11:14:42', '2022-06-23 11:14:42'),
(27115, 'en', '800x460', '800x460', '2022-06-23 11:14:42', '2022-06-23 11:14:42'),
(27116, 'en', 'all_________________________________categories', 'All\r\n                                 Categories', '2022-06-27 10:20:15', '2022-06-27 10:20:15'),
(27117, 'en', 'filter_by______________________________color', 'Filter by\r\n                              color', '2022-06-27 10:20:16', '2022-06-27 10:20:16'),
(27118, 'en', 'new_products', 'New Products', '2022-06-27 06:14:13', '2022-06-27 06:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'logos', 'uploads/all/ynRkXWW9wS7Gr89Q12cU8MiNW9pXVIMzpskNGiz9.png', 9, 14935, 'png', 'image', '2022-04-11 01:38:20', '2022-04-11 01:38:20', NULL),
(2, 'logo-foot', 'uploads/all/A4wL7OIhc2UXESp9HCqT4nibfm9atF5LQ5qBdTNQ.png', 9, 13452, 'png', 'image', '2022-04-11 23:22:00', '2022-04-11 23:22:00', NULL),
(3, '32x32', 'uploads/all/uFAnQ2nxBMDu1d7usuZIue8XnPFsRwnosLdvqkRd.png', 9, 4192, 'png', 'image', '2022-04-11 23:33:16', '2022-04-11 23:33:16', NULL),
(4, 'samsung_big', 'uploads/all/D2putKUPUSfmpk7nCOlSuqbEPZnrtMeyDb9leuHg.png', 9, 8917, 'png', 'image', '2022-04-12 00:34:57', '2022-04-12 00:37:38', '2022-04-12 00:37:38'),
(5, 'samsung_brand_icon', 'uploads/all/o80veUJkrWtaaI72N5cfnbAUkTJgu4oS89pT2kuQ.png', 9, 8917, 'png', 'image', '2022-04-12 00:37:15', '2022-04-12 00:37:15', NULL),
(6, 'Lloyd-brand-icon', 'uploads/all/OSMjalspOWfRUH8Vs6d7mvhy4jtFVgkWlKmamv3v.webp', 9, 19278, 'webp', 'image', '2022-04-12 00:37:25', '2022-04-12 00:37:25', NULL),
(7, 'voltas_brand_icon', 'uploads/all/rlxEqqQ3VmoQfUKltYVRh0GbocS5ZXnN7RtDDp09.png', 9, 1048, 'png', 'image', '2022-04-12 00:37:25', '2022-04-12 00:37:25', NULL),
(8, 'iphone-brand-icon', 'uploads/all/cRVnAnNKE2gQdIfrbb9VqdCUtaMAlOgxLDoQXQRC.png', 9, 2828, 'png', 'image', '2022-04-12 00:41:30', '2022-04-12 00:41:30', NULL),
(9, 'watch1', 'uploads/all/5FYtw4vo3bHIWgp6l1pCJ6QYbWMyur6y2PT9YTS5.jpg', 9, 49777, 'jpg', 'image', '2022-04-12 01:12:42', '2022-04-12 01:12:42', NULL),
(10, 'watch2', 'uploads/all/GByDMj5sdklxyVF8oBr6ifKlv4FIEB0fMaxUPPak.jpg', 9, 63914, 'jpg', 'image', '2022-04-12 01:12:42', '2022-04-12 01:12:42', NULL),
(11, 'thumb', 'uploads/all/1ms1ARAVZWoJUvOLWnyJo7KuuBpKZgguC3TOxWoh.jpg', 9, 54139, 'jpg', 'image', '2022-04-12 01:12:42', '2022-04-12 01:12:42', NULL),
(12, 'card-img1', 'uploads/all/59N4RmgZOEGyoWPS3SVH8tCeYyCCxxQJVoFSrAgV.jpg', 9, 6265, 'jpg', 'image', '2022-04-12 01:48:31', '2022-04-12 01:48:31', NULL),
(13, 'card-img3', 'uploads/all/eeMxPxacVbF1n9DLBpsUIaBnFzUNaGOLiIguPIcT.jpg', 9, 3989, 'jpg', 'image', '2022-04-12 01:48:31', '2022-04-12 01:48:31', NULL),
(14, 'card-img2', 'uploads/all/m3aKaQDnQXumTkvjOWBRNUZd8Mf9MirdhiWfSJgZ.jpg', 9, 9163, 'jpg', 'image', '2022-04-12 01:48:31', '2022-04-12 01:48:31', NULL),
(15, 'updates', 'uploads/all/XYGP4gq6XpZljzsXyo3WnlRTWPCmxwt6OFCO5BXX.zip', 9, 87774211, 'zip', 'archive', '2022-04-13 02:03:58', '2022-04-13 02:03:58', NULL),
(16, 'banner1', 'uploads/all/c0aR40yXxWg8r9MFrwfK8x1B2aEYTpQHQDPcUatQ.png', 9, 210184, 'png', 'image', '2022-04-13 03:20:37', '2022-04-13 03:20:37', NULL),
(17, 'banner2', 'uploads/all/VxKvxDbXZm58qfC3GGw6oxIjMY4mpRDrfPBjt5yZ.png', 9, 168770, 'png', 'image', '2022-04-13 03:20:37', '2022-04-13 03:20:37', NULL),
(18, 'banner3', 'uploads/all/ocARICp8is91y4AsJ44tHrIDIuHEib2ex2f41wmD.png', 9, 66941, 'png', 'image', '2022-04-13 03:20:37', '2022-04-13 03:20:37', NULL),
(19, 'big_sale', 'uploads/all/HZxyvJEqhpTGEThsW9Le5CO1FNLV8wkXuhxtWSPA.jpg', 9, 61429, 'jpg', 'image', '2022-04-14 11:33:16', '2022-04-14 11:33:16', NULL),
(20, 'deal', 'uploads/all/Wdr9yfwbTmkz0ykHjIUAYhNsF99GIcbSwTwFnvhc.jpg', 9, 30815, 'jpg', 'image', '2022-04-14 11:33:18', '2022-04-14 11:33:18', NULL),
(21, 'foot-cap', 'uploads/all/hFyQKVW5AgU3Jt53uNT5XhAwsBtTwgvG8wQOVjcH.png', 9, 87659, 'png', 'image', '2022-04-22 10:46:41', '2022-04-22 10:46:41', NULL),
(22, 'db_server_err', 'uploads/all/OxiWfzeeiOXf5GecinVEqS0xjtNLO9E4SXrp4UGz.png', 9, 162974, 'png', 'image', '2022-04-22 10:46:41', '2022-04-22 10:46:41', NULL),
(23, 'db_connection', 'uploads/all/hdMRQlHBd6DjyNPtlUSyVr5YUG988Y5yqu6YXFml.png', 9, 221955, 'png', 'image', '2022-04-22 10:46:41', '2022-04-22 10:47:29', '2022-04-22 10:47:29'),
(24, 'Capture', 'uploads/all/aV2bMzj64byVlNHyj9SoDo6hocfy9m67Ef092hH6.png', 9, 148971, 'png', 'image', '2022-04-22 10:46:41', '2022-04-22 10:47:05', '2022-04-22 10:47:05'),
(25, 'symphony', 'uploads/all/WvTXMfMeEzQtjNFIIFhcCYdmsNPMFmHHlXzDCAPH.png', 9, 10767, 'png', 'image', '2022-04-22 10:54:22', '2022-04-22 10:54:22', NULL),
(26, 'fridge2', 'uploads/all/V4RlDTWqPSAYcaJ2ePXk0eE0fdgQlL0a3pd0ajwX.jpg', 9, 12012, 'jpg', 'image', '2022-04-22 11:02:39', '2022-04-22 11:02:39', NULL),
(27, 'frideg3', 'uploads/all/eCHqs8RDJfDMIGIafFJomBBIIk3wdOQcmTg2PN89.jpg', 9, 153206, 'jpg', 'image', '2022-04-22 11:02:39', '2022-04-22 11:02:39', NULL),
(28, 'fridge1', 'uploads/all/XpLjTloMWAiaBBBG6u3WgTZ77QcjtJlvKotLyTJl.webp', 9, 13898, 'webp', 'image', '2022-04-22 11:02:40', '2022-04-22 11:02:40', NULL),
(29, 'icona2', 'uploads/all/5TJWRvAtKSVxrTj6qNZ3a7btGO6dQnOHHmVhhnCt.png', 9, 2621, 'png', 'image', '2022-06-06 05:23:39', '2022-06-06 05:23:39', NULL),
(30, 'icona3', 'uploads/all/76Sm2vXKsOKYHpfTV7MKZfezai66PdfKyypl1gDV.png', 9, 2338, 'png', 'image', '2022-06-06 05:30:34', '2022-06-06 05:30:34', NULL),
(31, 'icona6', 'uploads/all/XHe8OcQkbM3X7kOwUlSqZ9EhV64dXA86imfIPpnZ.png', 9, 1773, 'png', 'image', '2022-06-06 12:34:01', '2022-06-06 12:34:01', NULL),
(32, 'cement', 'uploads/all/e57E8SY1Gzff10Qs07baxOpvXo26wHGLwPqMyjAQ.png', 9, 306327, 'png', 'image', '2022-06-07 06:58:24', '2022-06-07 06:58:24', NULL),
(33, 'concrete-block', 'uploads/all/bvds0C87oXggkDP4webdblikaih8iDlWyZ9ZWCve.png', 9, 364591, 'png', 'image', '2022-06-07 06:58:41', '2022-06-07 06:58:41', NULL),
(34, 'cement1', 'uploads/all/xVuXCxdvixNcQVj0WmD8CFzC4TW9DFqPemjNOV3K.jpg', 9, 10932, 'jpg', 'image', '2022-06-07 08:39:47', '2022-06-07 08:39:47', NULL),
(35, 'icona4', 'uploads/all/7bVdyC7eAoaC5B5KF1I0Xe9VuZasMXPEB9fqSz8Y.png', 9, 745, 'png', 'image', '2022-06-10 06:30:50', '2022-06-10 06:30:50', NULL),
(36, 'helxmet', 'uploads/all/r8EYuUi49qg8PXpTDYmh2oi7i6OxhDlU3w4ra0ZY.png', 9, 1314, 'png', 'image', '2022-06-10 07:12:35', '2022-06-10 07:12:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `first_name`, `last_name`, `gender`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `device_token`, `avatar`, `avatar_original`, `address`, `country`, `state`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'seller', 'Mr. Seller', '', '', '', 'seller@example.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', 'oCdviQKzZO3Ip4OZmNedsogBT9fsTBVIrD3OYQjQv3R8oVkk6RmRq8CEzO7r', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', NULL, 'Demo city', '1234', NULL, 0.00, 0, '3dLUoHsR1l', NULL, NULL, '2018-10-07 04:42:57', '2020-03-05 01:33:22'),
(8, NULL, NULL, 'customer', 'Rana Sharma', '', '', '', 'customer@example.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$F2IFe22Q5TUcOAGO/Qa4pegjKzivXLDdgC4wHbBIZVUBdSSeh37f6', 'xBMTBI0ebzPjebZOEFiCcT8DYon30XJdJC3R4c7GAfp2lRq1EWm7eHs3dBvV', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', NULL, 'Demo city', '1234', NULL, 0.00, 0, '8zJTyXTlTT', NULL, NULL, '2018-10-07 04:42:57', '2020-03-03 04:26:11'),
(9, NULL, NULL, 'admin', 'Admin', '', '', '', 'admin@gmail.com', '2022-04-09 00:34:31', NULL, NULL, '$2y$10$F2IFe22Q5TUcOAGO/Qa4pegjKzivXLDdgC4wHbBIZVUBdSSeh37f6', 'lqLPGWGhKrqG1exXnKTkuOry9gU2eJONFvZ6VMYVX8Cy7SAa5pqpQzDHyf6C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2022-04-09 01:04:31', '2022-04-09 01:04:31'),
(10, NULL, NULL, 'customer', 'Avinash', '', '', '', 'avinash.orrish@gmail.com', '2022-04-12 03:34:55', NULL, NULL, '$2y$10$GjWSn0HhTs6Q/MAINp03V.JvatV7MqKO2QOauwT8wQ.YMgQqV2OaS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2022-04-12 04:25:55', '2022-04-12 04:25:55'),
(27, NULL, NULL, 'customer', 'Rana Sharma', 'Rana', 'Sharma', 'Female', 'rana@orrish.com', '2022-06-10 05:36:39', NULL, NULL, '$2y$10$d4OXa8OEjFsCRxUkk2ejhO3qzI3BrJRhrZHqVa7fzoAC3JaXhYoGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8825171386', 0.00, 0, NULL, NULL, 0, '2022-06-10 05:30:39', '2022-06-16 08:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_translations`
--
ALTER TABLE `app_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_category`
--
ALTER TABLE `attribute_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_wise_brands`
--
ALTER TABLE `category_wise_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_wise_offers`
--
ALTER TABLE `category_wise_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combined_orders`
--
ALTER TABLE `combined_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payment_cards`
--
ALTER TABLE `customer_payment_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD UNIQUE KEY `payku_payments_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `payku_transactions`
--
ALTER TABLE `payku_transactions`
  ADD UNIQUE KEY `payku_transactions_id_unique` (`id`),
  ADD UNIQUE KEY `payku_transactions_order_unique` (`order`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255)),
  ADD KEY `unit_price` (`unit_price`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_translations`
--
ALTER TABLE `app_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attribute_category`
--
ALTER TABLE `attribute_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_wise_brands`
--
ALTER TABLE `category_wise_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_wise_offers`
--
ALTER TABLE `category_wise_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `combined_orders`
--
ALTER TABLE `combined_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_payment_cards`
--
ALTER TABLE `customer_payment_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27119;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD CONSTRAINT `payku_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `payku_transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
