-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 17, 2020 at 10:16 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` int(11) NOT NULL,
  `parkingid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `directions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_ids`, `created_at`, `updated_at`) VALUES
(1, 1, ',12,11,4', '2020-05-12 00:30:49', '2020-05-24 06:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Mobile', NULL, 1, '2020-06-04 11:14:44', '2020-06-04 11:14:44'),
(6, 'TV', NULL, 1, '2020-06-04 11:14:54', '2020-06-04 11:14:54'),
(7, 'Printer', NULL, 1, '2020-06-04 11:15:01', '2020-06-04 11:15:01'),
(8, 'Air-conditioner', NULL, 1, '2020-06-04 11:15:07', '2020-06-04 11:15:07'),
(9, 'Laptop', NULL, 1, '2020-06-04 11:15:12', '2020-06-04 11:15:12'),
(10, 'Camera', NULL, 1, '2020-06-04 11:15:17', '2020-06-04 11:15:17'),
(11, 'RAM', 'Rams', 1, '2020-06-08 02:06:13', '2020-06-08 02:06:13');

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
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2020_02_06_171205_modify_products', 4),
(17, '2020_02_06_171208_modify_products', 5),
(19, '2014_10_12_000000_create_users_table', 6),
(20, '2014_10_12_100000_create_password_resets_table', 6),
(21, '2019_08_19_000000_create_failed_jobs_table', 6),
(22, '2019_12_25_170425_modify_users_table', 6),
(23, '2019_12_25_170846_create_parkings_table', 6),
(24, '2019_12_25_183414_create_bookings_table', 6),
(25, '2019_12_26_103715_modify_parking', 6),
(26, '2019_12_26_111300_modify_bookings', 6),
(27, '2020_01_04_100345_payments', 6),
(28, '2020_01_04_101409_create_referrals_table', 6),
(29, '2020_02_01_141647_create_products_table', 6),
(30, '2020_02_01_153942_create_image_table', 6),
(31, '2020_02_01_154211_create_orders_table', 6),
(32, '2020_02_01_154749_add_to_users_table', 6),
(33, '2020_02_06_164858_create_carts_table', 6),
(34, '2020_02_06_181208_modify_products', 7),
(35, '2020_03_03_071455_modify_products2', 7),
(36, '2020_03_03_084432_add_to_products', 8),
(37, '2020_05_13_082445_modify_product3', 9),
(38, '2020_05_24_140839_product_galleries', 10),
(39, '2020_05_24_142259_create_product_galleries_table', 11),
(40, '2020_05_27_154056_create_product_galleries_table', 12),
(41, '2020_05_27_155647_add_timestamp_to_productgalleries', 13),
(42, '2020_06_04_151149_create_categories_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` int(11) NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` tinyint(1) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `asus_store` tinyint(1) NOT NULL,
  `mi_store` tinyint(1) NOT NULL,
  `hp_store` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `online`, `description`, `availability`, `featured_image`, `created_at`, `updated_at`, `type`, `highlight`, `cart_id`, `asus_store`, `mi_store`, `hp_store`) VALUES
(1, 'MOBILE REDMI 6 3/32GB(BLK)', 32000, 1, '<p>0</p>', 1, 'mobile-redmi-6-332gbblk_1583225451', NULL, '2020-05-22 07:39:56', NULL, NULL, 0, 1, 0, 0),
(2, 'MOBILE REDMI 6 3/32GB(BLUE)', 6999, 0, '<p>&lt;div id=\"bylineInfo_feature_div\" class=\"feature\" style=\"box-sizing: border-box; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig', 1, 'mobile-redmi-6-332gbblue_1583239083', NULL, '2020-03-03 07:08:03', NULL, NULL, 0, 0, 0, 0),
(3, 'MOBILE REDMI 6 3/32GB(GOLD)', 8, 0, '<div id=\"bylineInfo_feature_div\" class=\"feature\" style=\"box-sizing: border-box; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40', 1, 'mobile-redmi-6-332gbgold_1583227960', NULL, '2020-03-03 04:02:40', NULL, NULL, 0, 0, 0, 0),
(4, 'MOBILE REDMI  6PRO 3/32GB(BLK)', 11099, 0, '<p>Black 3GB RAM, 32GB Storage</p>', 1, 'mobile-redmi-6pro-332gbblk_1583231924', NULL, '2020-05-24 06:59:10', NULL, NULL, 1, 0, 0, 0),
(5, 'MOBILE REDMI  6PRO 4/64GB(GOLD)', 13, 0, '<p>4GB RAM, 32GB Storage, Gold</p>', 1, 'mobile-redmi-6pro-464gbgold_1583232107', NULL, '2020-03-03 05:11:47', NULL, NULL, 0, 0, 0, 0),
(6, 'MOBILE REDMI 8 (4+64) EMERALD GREEN', 9, 0, '<p>4GB RAM, 64GB STORAGE, EMERALD GREEN</p>', 1, 'mobile-redmi-8-464-emerald-green_1583233058', NULL, '2020-03-03 05:27:38', NULL, NULL, 0, 0, 0, 0),
(7, 'MOBILE REDMI 8 4/64GB(ONYX BLACK)', 8, 0, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; text-rendering: optimizelegibility; font-weight: 400; color: #111111; font-family: \'Amazon Ember\', Arial, sans-serif; background-color: #ffffff; font-size: 21p', 1, 'mobile-redmi-8-464gbonyx-black_1583234793', NULL, '2020-05-11 23:23:12', NULL, NULL, 0, 0, 0, 0),
(8, 'MOBILE REDMI 8 (4+64) RUBY RED', 0, 0, '<p>4GB RAM, 64GB STORAGE, Ruby Red</p>', 1, 'mobile-redmi-8-464-ruby-red_1583235003', NULL, '2020-03-03 06:00:03', NULL, NULL, 0, 0, 0, 0),
(9, 'MOBILE REDMI 8 4/64 SAPPHIRE BLUE', 8, 0, '<p>4GB RAM, 64GB STORAGE, SAPHIRE BLUE</p>', 1, 'mobile-redmi-8-464-sapphire-blue_1583235230', NULL, '2020-03-03 06:03:51', NULL, NULL, 0, 0, 0, 0),
(10, 'MOBILE REDMI 8A 2/32 MIDNIGHT BLACK', 7, 0, '<p>2GB RAM, 32GB STORAGE, MIDNIGHT BLACK</p>', 1, 'mobile-redmi-8a-232-midnight-black_1583235538', NULL, '2020-05-11 23:23:25', NULL, NULL, 0, 0, 0, 0),
(11, 'MOBILE REDMI 8A 2/32 OCEAN BLUE', 7, 0, '<p>Oceann Blue, 2GB RAM, 32GB STORAGE</p>', 1, 'mobile-redmi-8a-232-ocean-blue_1583235770', NULL, '2020-05-12 01:05:21', NULL, NULL, 1, 0, 0, 0),
(12, 'MOBILE REDMI 8A 3/32GB (O.BLUE)', 8, 0, '<p>Ocean Blue, 3GB RAM, 32GB STORAGE</p>', 1, 'mobile-redmi-8a-332gb-oblue_1583235920', NULL, '2020-05-12 00:44:16', NULL, NULL, 1, 0, 0, 0),
(13, 'MOBILE REDMI 8A 3/32 SUNSET RED', 7, 0, '<p>3GB RAM, 32GB STORAGE, Sunset Red</p>', 1, 'mobile-redmi-8a-332-sunset-red_1583236073', NULL, '2020-03-03 06:17:54', NULL, NULL, 0, 0, 0, 0),
(14, 'MOBILE REDMI A3 4/64 KIND OF GREY', 14, 0, '<p>KIND OF GREY, 4GB RAM, 64GB STORAGE</p>', 1, 'mobile-redmi-a3-464-kind-of-grey_1583236320', NULL, '2020-03-03 06:22:00', NULL, NULL, 0, 0, 0, 0),
(15, 'MOBILE REDMI A3 4/64 NOT JUST BLUE', 14, 0, '<p>4GB RAM, 64GB Storage, Not Just Blue</p>', 1, 'mobile-redmi-a3-464-not-just-blue_1583236479', NULL, '2020-03-03 06:24:39', NULL, NULL, 0, 0, 0, 0),
(16, 'MOBILE REDMI A3 6/128 KIND OF GREY', 17, 0, '<p>6GB RAM, 128GB STORAGE, KIND OF GREY</p>', 1, 'mobile-redmi-a3-6128-kind-of-grey_1583236607', NULL, '2020-03-03 06:26:47', NULL, NULL, 0, 0, 0, 0),
(17, 'MOBILE REDMI A3 6/128 MORE THAN WHITE', 17, 0, '<p>6GB RAM, 128GB STORAGE, MORE THAN WHITE</p>', 1, 'mobile-redmi-a3-6128-more-than-white_1583236767', NULL, '2020-03-03 06:29:27', NULL, NULL, 0, 0, 0, 0),
(18, 'MOBILE REDMI A3 6/128 NOT JUST BLUE', 14, 0, '<p>6GB RAM, 128GB STORAGE, NOT JUST BLUE</p>', 1, 'mobile-redmi-a3-6128-not-just-blue_1583236963', NULL, '2020-03-03 06:32:43', NULL, NULL, 0, 0, 0, 0),
(19, 'MOBILE REDMIGO1/16GB(BLUE)', 6, 0, '<p>1GB RAM, 16GB STORAGE, BLUE</p>', 1, 'mobile-redmigo116gbblue_1583237274', NULL, '2020-03-03 06:37:55', NULL, NULL, 0, 0, 0, 0),
(20, 'MOBILE REDMI K20(6/128)FLAME RED', 28, 0, '<p>6GB RAM, 128GB STORAGE, FLAME RED</p>', 1, 'mobile-redmi-k206128flame-red_1583237427', NULL, '2020-03-03 06:40:28', NULL, NULL, 0, 0, 0, 0),
(21, 'MOBILE REDMI K20(6/64)BLK', 24, 0, '<p>6GB RAM, 64GB STORAGE, BLACK</p>', 1, 'mobile-redmi-k20664blk_1583237622', NULL, '2020-03-03 06:43:42', NULL, NULL, 0, 0, 0, 0),
(22, 'MOBILE REDMI K20(6/64)GLACIER BLUE', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(23, 'MOBILE REDMI K20 PRO(6/128)GLACIER BLUE', 24, 0, '<p>6GB RAM, 128GB STORAGE, GLACIER BLUE</p>', 1, 'mobile-redmi-k20-pro6128glacier-blue_1583237835', NULL, '2020-03-03 06:47:15', NULL, NULL, 0, 0, 0, 0),
(24, 'MOBILE REDMI K20 PRO(8/256)FLAME RED', 31, 0, '<p>8GB RAM, 256GB STORAGE, FLAME RED</p>', 1, 'mobile-redmi-k20-pro8256flame-red_1583238001', NULL, '2020-03-03 06:50:02', NULL, NULL, 0, 0, 0, 0),
(25, 'MOBILE REDMI NOTE 6 PRO 6/64GB (BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(26, 'MOBILE REDMI NOTE 7 3/32GB(RUBY RED)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(27, 'MOBILE REDMI NOTE 7 4/64GB(RUBY RED)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(28, 'MOBILE REDMI NOTE 7 4/64GB(SAPPHIRE BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(29, 'MOBILE REDMI NOTE 7 PRO 6/128GB(M WHITE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(30, 'MOBILE REDMI NOTE 7 PRO 6/128GB(NEPTUNE BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(31, 'MOBILE REDMI NOTE 7 PRO 6/128GB(S BLK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(32, 'MOBILE REDMI NOTE 7 PRO 6/128 (NEBULA RED)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(33, 'MOBILE REDMI NOTE 7 PRO 6/64GB(M WHITE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(34, 'MOBILE REDMI NOTE 7 PRO 6/64GB(NEBULA RED)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(35, 'MOBILE REDMI NOTE 7 PRO 6/64GB(NEPTUNE BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(36, 'MOBILE REDMI NOTE 7S 4/64GB (ONYX BLK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(37, 'MOBILE REDMI NOTE 8 4/64 GB (NEPTUNE BLUE)', 12, 0, '<p>4GB RAM, 64GB STORAGE, NEPTUNE BLUE</p>', 1, 'mobile-redmi-note-8-464-gb-neptune-blue_1583238523', NULL, '2020-03-03 06:58:43', NULL, NULL, 0, 0, 0, 0),
(38, 'MOBILE REDMI NOTE 8 6/128GB(MOONLIGHT WHITE)', 12, 0, '<p>6GB RAM, 128GB STORAGE, MOONLIGHT WHITE</p>', 1, 'mobile-redmi-note-8-6128gbmoonlight-white_1583238736', NULL, '2020-03-03 07:02:16', NULL, NULL, 0, 0, 0, 0),
(39, 'MOBILE REDMI NOTE 8 6/128GB(NEPTUNE BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(40, 'MOBILE REDMI NOTE 8 PRO 6/128(ELECTRIC BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(41, 'MOBILE REDMI NOTE 8 PRO 6/128 GB (GAMMA GREEN)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(42, 'MOBILE REDMI NOTE 8 PRO 6/128 GB (HALO WHITE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(43, 'MOBILE REDMI NOTE 8 PRO 6/128 GB (SHADOW BLK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(44, 'MOBILE REDMI NOTE 8 PRO 6/64GB(SHADOW BLACK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(45, 'MOBILE REDMI NOTE 8 PRO 8/128GB (SHADOW BLK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(46, 'MOBILE REDMI Y2 3/32GB (ROSE GOLD)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(47, 'MOBILE REDMI Y2 4/64GB(GOLD)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(48, 'MOBILE REDMI Y3 3/32GB (PRIME BLK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(49, 'MOBILE REDMI Y3 4/64GB(EGT BLUE)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(50, 'MOBILE REDMI Y3 4/64GB(PRIME BLACK)', 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(51, 'CANON AIO G4010', 12499, 0, '<p>Wireless All in One</p>', 1, 'canon-aio-g4010_1590216269', '2020-05-23 01:14:29', '2020-05-23 01:14:29', NULL, NULL, 0, 0, 0, 0),
(52, 'CANON E470', 0, 1, '<p>.</p>', 1, 'canon-e470_1590216804', '2020-05-23 01:23:25', '2020-05-23 01:23:25', NULL, NULL, 0, 0, 0, 0),
(53, 'CANON G2010', 0, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: Arial, sans-serif; font-size: 13px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box;', 1, '', '2020-05-23 02:01:19', '2020-05-23 02:01:19', NULL, NULL, 0, 0, 0, 0),
(54, 'CANON LASER LPB-2900', 0, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; background-color: #ffffff;\">\r\n<li style=\"box-siz', 1, 'canon-laser-lpb-2900_1590219896', '2020-05-23 02:14:57', '2020-05-23 02:14:57', NULL, NULL, 0, 0, 0, 0),
(55, 'EPSON M200', 0, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 13px; background-color: #ffffff;\">\r\n<li style=\"box-siz', 1, 'epson-m200_1590221210', '2020-05-23 02:36:50', '2020-05-23 02:36:50', NULL, NULL, 0, 0, 0, 0),
(56, 'Test', 12000, 0, '<p>Test</p>', 1, '', '2020-05-27 10:25:10', '2020-05-27 10:25:10', NULL, NULL, 0, 0, 0, 0),
(57, 'Test', 12000, 0, '<p>Test</p>', 1, '', '2020-05-27 10:25:25', '2020-05-27 10:25:25', NULL, NULL, 0, 0, 0, 0),
(58, 'Test', 12000, 0, '<p>Test</p>', 1, '', '2020-05-27 10:27:23', '2020-05-27 10:27:23', NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 58, 'test_3075-b.jpg', '2020-05-27 10:27:23', '2020-05-27 10:27:23'),
(2, 58, 'test_3973-b.jpg', '2020-05-27 10:27:23', '2020-05-27 10:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `login_with` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribbble_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership` text COLLATE utf8mb4_unicode_ci,
  `service_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_fee` bigint(20) NOT NULL,
  `referral` int(11) NOT NULL,
  `refers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `contact`, `login_with`, `usertype`, `first_name`, `last_name`, `gender`, `image_icon`, `mobile`, `contact_email`, `website`, `address`, `facebook_url`, `twitter_url`, `linkedin_url`, `dribbble_url`, `instagram_url`, `facebook_id`, `google_id`, `membership`, `service_1`, `consultation_fee`, `referral`, `refers`) VALUES
(1, '', 'kabird1196@gmail.com', NULL, '$2y$10$IG2vo4xkTueFvjEHunlB3uOK7DcBsZU1K5KnFDenaZ2qNlzR6JkOy', NULL, '2020-05-11 23:22:54', '2020-05-11 23:22:54', 2147483647, '', NULL, 'Kabir', 'Das', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;