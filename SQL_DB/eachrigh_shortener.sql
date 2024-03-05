-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2024 at 08:01 AM
-- Server version: 8.0.36
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eachrigh_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `days` int DEFAULT NULL,
  `redeems` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_found_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `name`, `index_page`, `not_found_page`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'l.eachrights.or.ke', NULL, NULL, 0, '2024-01-16 17:52:03', '2024-01-16 17:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `target_type` tinyint DEFAULT '0',
  `country_target` text COLLATE utf8mb4_unicode_ci,
  `platform_target` text COLLATE utf8mb4_unicode_ci,
  `language_target` text COLLATE utf8mb4_unicode_ci,
  `rotation_target` text COLLATE utf8mb4_unicode_ci,
  `last_rotation` int DEFAULT '0',
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `disabled` tinyint NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `privacy_password` text COLLATE utf8mb4_unicode_ci,
  `expiration_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_clicks` int DEFAULT '0',
  `clicks` int DEFAULT '0',
  `space_id` int UNSIGNED DEFAULT NULL,
  `domain_id` int UNSIGNED DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `user_id`, `alias`, `url`, `title`, `description`, `image`, `target_type`, `country_target`, `platform_target`, `language_target`, `rotation_target`, `last_rotation`, `password`, `disabled`, `privacy`, `privacy_password`, `expiration_url`, `expiration_clicks`, `clicks`, `space_id`, `domain_id`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 0, '6jsta', 'https://www.youtube.com/watch?v=MuPFoqtVO40', 'TRAIN YOUR DISCERNMENT TO GROW [IS NOT ALL ABOUT PRAYERS] WITH APOSTLE JOSHUA SELMAN - YouTube', 'THANK YOU FOR WATCHING. PLEASE DO NOT FORGET TO SUBSCRIBE, LIKE AND SHARE.', 'https://i.ytimg.com/vi/MuPFoqtVO40/maxresdefault.jpg', 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2024-01-16 17:53:12', '2024-01-16 17:53:23'),
(2, 0, 'kaxbm', 'https://admin.google.com/ac/accountchooser?continue=https://admin.google.com/?pli%3D1%26rapt%3DAEjHL4MewP1UQ25qe92NCkQuAX_yPD2P3dB4fREyrlIVhtoDBhY5i1BSNIDHxc4oSfhb4SNcYmN8i-o9kLlUt4MudOqXOifWXdyuEzs97q6LgmbBdyOTRAU', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2024-01-17 14:18:47', '2024-01-17 14:18:59'),
(3, 0, 'xjxac', 'https://ns.eachrights.or.ke/business-and-human-rights-program/', 'Business and Human Rights Program &#8211; EACHRights; A Non-partisan, Regional Non-Governmental Organization', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 2, NULL, 1, NULL, '2024-01-22 06:16:09', '2024-01-22 06:16:35'),
(4, 0, '3tq0o', 'https://www.facebook.com/photo/?fbid=697132302545411&set=a.416619243930053', 'Facebook', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2024-01-22 10:59:34', '2024-01-22 11:00:01'),
(5, 0, '81lm0', 'https://www.youtube.com/watch?v=hLDQ88vAhIs&pp=ygUJQnVybmEgQm95', 'Burna Boy - City Boys [Official Music Video] - YouTube', 'Burna Boy - City BoysStream/Download: https://Burna.lnk.to/CityBoysDirector: @20kvisuals ‘I Told Them…’ Out Now!https://Burna.lnk.to/IToldThemSubscribe for m...', 'https://i.ytimg.com/vi/hLDQ88vAhIs/maxresdefault.jpg', 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2024-01-22 11:02:19', '2024-01-22 11:02:57'),
(6, 0, 'sm9wb', 'https://www.universitiesfund.go.ke/', 'Universities Fund | Financing Universities in Kenya', 'The Universities Fund was established under section 53 of the Universities Act, 2012 for financing Universities in Kenya.', 'https://www.universitiesfund.go.ke/wp-content/uploads/2022/03/grd3.jpg', 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 4, NULL, 1, NULL, '2024-01-26 06:24:06', '2024-01-26 08:33:52'),
(7, 0, 'aga2j', 'https://www.facebook.com/EACHRights/', 'Facebook', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 85, NULL, 1, NULL, '2024-01-26 07:08:37', '2024-02-29 21:45:08'),
(8, 0, 'la2mg', 'https://www.youtube.com/@eachrights7', 'EACHRights - YouTube', 'Teile deine Videos mit Freunden, Verwandten oder der ganzen Welt', 'https://yt3.googleusercontent.com/ytc/AIf8zZTmo_dgHYaqs9UXQlb82Dei7g6GqIEq0IIs2tK3=s900-c-k-c0x00ffffff-no-rj', 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 139, NULL, 1, NULL, '2024-01-26 07:08:56', '2024-02-29 21:52:55'),
(9, 0, 'p9bjw', 'https://instagram.com/eachrights', 'Instagram', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 122, NULL, 1, NULL, '2024-01-26 07:09:14', '2024-02-29 11:09:37'),
(10, 0, 'uda41', 'https://linkedin.com/company/eachrights', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 103, NULL, 1, NULL, '2024-01-26 07:09:33', '2024-02-29 13:36:21'),
(11, 0, 'vfjk2', 'https://twitter.com/eachrights', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 91, NULL, 1, NULL, '2024-01-26 07:09:51', '2024-02-29 11:09:52'),
(12, 0, 'i7r7v', 'https://www.youtube.com/watch?v=PQjr5kPrxl8', 'Agape Gospel Band Ft Rehema Simfukwe - Amejibu Maombi (Live Music Video) - YouTube', 'Shalom Shalom !!Baada ya simu zetu kupokelewa Mbinguni (HALLO MBINGUNI) tunakujia na wimbo huu wa ushuhuda Bwana (AMEJIBU MAOMBI )Inawezekana bado hujaona ma...', 'https://i.ytimg.com/vi/PQjr5kPrxl8/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGBMgEyh_MA8=&amp;rs=AOn4CLDTk7xo9CYo4mvgIptb4RkSTv2cjw', 0, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, 0, 1, NULL, 1, NULL, '2024-02-13 09:05:21', '2024-02-13 09:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `link_pixel`
--

CREATE TABLE `link_pixel` (
  `link_id` int UNSIGNED NOT NULL,
  `pixel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_04_10_173721_create_domains_table', 1),
(2, '2020_04_10_173721_create_languages_table', 1),
(3, '2020_04_10_173721_create_links_table', 1),
(4, '2020_04_10_173721_create_pages_table', 1),
(5, '2020_04_10_173721_create_password_resets_table', 1),
(6, '2020_04_10_173721_create_plans_table', 1),
(7, '2020_04_10_173721_create_settings_table', 1),
(8, '2020_04_10_173721_create_spaces_table', 1),
(9, '2020_04_10_173721_create_stats_table', 1),
(10, '2020_04_10_173721_create_subscription_items_table', 1),
(11, '2020_04_10_173721_create_subscriptions_table', 1),
(12, '2020_04_10_173721_create_users_table', 1),
(13, '2020_05_01_083426_v1_1_0', 1),
(14, '2020_05_21_120724_v1_2_0', 1),
(15, '2020_05_25_142822_v1_3_0', 1),
(16, '2020_08_10_215817_v1_9_0', 1),
(17, '2020_09_04_151301_v2_4_0', 1),
(18, '2020_09_14_160017_v2_5_0', 1),
(19, '2020_09_26_134027_v2_6_0', 1),
(20, '2020_11_30_013755_v3_1_0', 1),
(21, '2021_02_20_185216_v3_2_0', 1),
(22, '2021_02_25_182517_v3_3_0', 1),
(23, '2021_03_20_145326_v3_4_0', 1),
(24, '2021_04_17_224715_v3_5_0', 1),
(25, '2021_09_14_020908_v3_8_0', 1),
(26, '2021_10_17_014822_v4_1_0', 1),
(27, '2021_11_27_214521_v4_2_0', 1),
(28, '2021_12_23_042051_v4_3_0', 1),
(29, '2022_06_14_013816_v4_5_0', 1),
(30, '2022_07_01_121803_v4_6_0', 1),
(31, '2022_07_12_020318_v4_7_0', 1),
(32, '2022_11_16_041146_v4_9_0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `plan_id` int UNSIGNED NOT NULL,
  `payment_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` text COLLATE utf8mb4_unicode_ci,
  `coupon` text COLLATE utf8mb4_unicode_ci,
  `tax_rates` text COLLATE utf8mb4_unicode_ci,
  `seller` text COLLATE utf8mb4_unicode_ci,
  `customer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pending_user_emails`
--

CREATE TABLE `pending_user_emails` (
  `id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pixels`
--

CREATE TABLE `pixels` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('adroll','google-ads','bing','facebook','google-analytics','google-tag-manager','linkedin','pinterest','quora','twitter') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_days` int DEFAULT NULL,
  `currency` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_month` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `amount_year` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `coupons` text COLLATE utf8mb4_unicode_ci,
  `tax_rates` text COLLATE utf8mb4_unicode_ci,
  `visibility` tinyint DEFAULT NULL,
  `position` int UNSIGNED DEFAULT '0',
  `features` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `trial_days`, `currency`, `amount_month`, `amount_year`, `coupons`, `tax_rates`, `visibility`, `position`, `features`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'The plan\'s awesome description.', NULL, '', '0', '0', '[]', '[]', 1, 0, '{\"api\":1,\"links\":-1,\"spaces\":-1,\"domains\":-1,\"pixels\":-1,\"link_stats\":1,\"link_targeting\":1,\"link_expiration\":1,\"link_password\":1,\"link_disabling\":1,\"link_utm\":1,\"global_domains\":1,\"link_deep\":1,\"data_export\":1}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('announcement_guest', ''),
('announcement_guest_id', 'cwUOUj7dQZZzJstX'),
('announcement_guest_type', 'info'),
('announcement_user', ''),
('announcement_user_id', 'p0VIvAg0FU26HN2y'),
('announcement_user_type', 'info'),
('bad_words', ''),
('bank', '0'),
('bank_account_number', ''),
('bank_account_owner', ''),
('bank_bic_swift', ''),
('bank_iban', ''),
('bank_name', ''),
('bank_routing_number', ''),
('billing_address', ''),
('billing_city', ''),
('billing_country', ''),
('billing_invoice_prefix', ''),
('billing_phone', ''),
('billing_postal_code', ''),
('billing_state', ''),
('billing_vat_number', ''),
('billing_vendor', ''),
('captcha_contact', '0'),
('captcha_registration', '0'),
('captcha_secret_key', ''),
('captcha_shorten', '0'),
('captcha_site_key', ''),
('coinbase', '0'),
('coinbase_key', ''),
('coinbase_wh_secret', ''),
('contact_email', ''),
('cronjob_executed_at', NULL),
('cronjob_key', 'jbd58ME5F1OCtV5izvYMz9OfhWF3qy4z'),
('cryptocom', NULL),
('cryptocom_key', NULL),
('cryptocom_secret', NULL),
('cryptocom_wh_secret', NULL),
('custom_css', '@import url(\"https://rsms.me/inter/inter.css\");'),
('custom_js', NULL),
('email_address', ''),
('email_driver', 'log'),
('email_encryption', 'tls'),
('email_host', ''),
('email_password', ''),
('email_port', ''),
('email_username', ''),
('favicon', 'favicon.png'),
('gsb', '0'),
('gsb_key', ''),
('index', NULL),
('legal_cookie_url', NULL),
('legal_privacy_url', 'https://www.eachrights.or.ke/privacy-policy'),
('legal_terms_url', 'https://www.eachrights.or.ke/terms-and-conditions'),
('license_key', NULL),
('license_type', NULL),
('locale', 'en'),
('login_tfa', '0'),
('logo', 'logo.svg'),
('logo_dark', 'logo_dark.svg'),
('paginate', '10'),
('paypal', '0'),
('paypal_client_id', ''),
('paypal_mode', 'sandbox'),
('paypal_secret', ''),
('paypal_webhook_id', ''),
('paystack', NULL),
('paystack_key', NULL),
('paystack_secret', NULL),
('razorpay', NULL),
('razorpay_key', NULL),
('razorpay_secret', NULL),
('razorpay_wh_secret', NULL),
('registration', '0'),
('registration_tfa', '0'),
('registration_verification', '0'),
('request_proxy', NULL),
('request_timeout', '5'),
('request_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36'),
('short_domain', '1'),
('short_guest', '1'),
('short_max_multi_links', '10'),
('short_protocol', 'http'),
('social_facebook', 'https://www.facebook.com/EACHRights'),
('social_instagram', NULL),
('social_twitter', 'https://twitter.com/EACHRights'),
('social_youtube', 'https://www.youtube.com/channel/UCMYrrlDkTPSwJ1Ho_HQNC0A'),
('stripe', '0'),
('stripe_key', ''),
('stripe_secret', ''),
('stripe_wh_secret', ''),
('tagline', '360° Tech-Centric URL Shortener by EACHRights'),
('theme', '0'),
('timezone', 'UTC'),
('title', 'EACHRights'),
('webhook_user_created', NULL),
('webhook_user_deleted', NULL),
('webhook_user_updated', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spaces`
--

CREATE TABLE `spaces` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `link_id` int UNSIGNED NOT NULL,
  `name` enum('browser','platform','device','clicks','country','city','referrer','language','clicks_hours') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` bigint NOT NULL DEFAULT '1',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `regions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  `plan_id` int UNSIGNED NOT NULL DEFAULT '1',
  `plan_amount` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_currency` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_interval` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_payment_processor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_subscription_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_subscription_status` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_created_at` timestamp NULL DEFAULT NULL,
  `plan_recurring_at` timestamp NULL DEFAULT NULL,
  `plan_trial_ends_at` timestamp NULL DEFAULT NULL,
  `plan_ends_at` timestamp NULL DEFAULT NULL,
  `billing_information` text COLLATE utf8mb4_unicode_ci,
  `tfa` smallint DEFAULT NULL,
  `tfa_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tfa_code_created_at` timestamp NULL DEFAULT NULL,
  `default_domain` smallint DEFAULT NULL,
  `default_space` smallint DEFAULT NULL,
  `default_stats` smallint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `locale`, `timezone`, `remember_token`, `role`, `plan_id`, `plan_amount`, `plan_currency`, `plan_interval`, `plan_payment_processor`, `plan_subscription_id`, `plan_subscription_status`, `plan_created_at`, `plan_recurring_at`, `plan_trial_ends_at`, `plan_ends_at`, `billing_information`, `tfa`, `tfa_code`, `tfa_code_created_at`, `default_domain`, `default_space`, `default_stats`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'EACHRights', 'developer@l.eachrights.or.ke', '2024-01-16 17:52:03', '$2y$10$5EWGQaDrjsydbWVHLYHEMOd8HBWJiTPcDNzwVu7/hKiVCDsJNnTGS', 'BVzo5efJJeJYWftnEBEu3zihtrPtRErgZWAgyBFWKXiWpzPd2L4Dox4mJoYUWCsN', 'en', 'UTC', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-01-16 17:52:03', '2024-01-16 17:52:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `clicks` (`clicks`),
  ADD KEY `space_id` (`space_id`),
  ADD KEY `domain_id` (`domain_id`);

--
-- Indexes for table `link_pixel`
--
ALTER TABLE `link_pixel`
  ADD UNIQUE KEY `link_pixel_link_id_pixel_id_unique` (`link_id`,`pixel_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `pixel_id` (`pixel_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `processor` (`processor`),
  ADD KEY `interval` (`interval`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `pending_user_emails`
--
ALTER TABLE `pending_user_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pending_user_emails_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `pending_user_emails_email_index` (`email`);

--
-- Indexes for table `pixels`
--
ALTER TABLE `pixels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pixels_name_user_id_unique` (`name`,`user_id`),
  ADD KEY `name` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `spaces`
--
ALTER TABLE `spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`link_id`,`name`,`value`,`date`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD KEY `plan_id` (`plan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_user_emails`
--
ALTER TABLE `pending_user_emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pixels`
--
ALTER TABLE `pixels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
