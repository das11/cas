-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 25, 2019 at 05:51 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `patientcareweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `delegate_ambulance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(260) COLLATE utf8_unicode_ci NOT NULL,
  `ambulance_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `pickup_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drop_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typeofambulance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `queryid` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ambulances`
--

INSERT INTO `ambulances` (`first_name`, `last_name`, `google_map`, `phone_number`, `delegate_ambulance`, `description`, `ambulance_id`, `created_at`, `updated_at`, `pickup_address`, `drop_address`, `typeofambulance`, `queryid`, `status`) VALUES
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road', 8876721208, 'Ad445', 'Very rude', '', '2019-08-23 03:18:30', '2019-08-23 03:18:30', 'GNB Road', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:48:21', '2019-08-24 03:48:21', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:48:41', '2019-08-24 03:48:41', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:56:03', '2019-08-24 03:56:03', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:56:31', '2019-08-24 03:56:31', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:57:57', '2019-08-24 03:57:57', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:58:00', '2019-08-24 03:58:00', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:58:44', '2019-08-24 03:58:44', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 03:58:54', '2019-08-24 03:58:54', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:00:23', '2019-08-24 04:00:23', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:00:41', '2019-08-24 04:00:41', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:01:18', '2019-08-24 04:01:18', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:02:47', '2019-08-24 04:02:47', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:02:58', '2019-08-24 04:02:58', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:03:12', '2019-08-24 04:03:12', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:03:26', '2019-08-24 04:03:26', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:03:42', '2019-08-24 04:03:42', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:03:56', '2019-08-24 04:03:56', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:04:12', '2019-08-24 04:04:12', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:06:35', '2019-08-24 04:06:35', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:06:47', '2019-08-24 04:06:47', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:07:14', '2019-08-24 04:07:14', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:10:03', '2019-08-24 04:10:03', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:12:34', '2019-08-24 04:12:34', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:18:57', '2019-08-24 04:18:57', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:19:29', '2019-08-24 04:19:29', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:20:24', '2019-08-24 04:20:24', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:21:21', '2019-08-24 04:21:21', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:34:20', '2019-08-24 04:34:20', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:37:10', '2019-08-24 04:37:10', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:38:20', '2019-08-24 04:38:20', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:44:16', '2019-08-24 04:44:16', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:44:47', '2019-08-24 04:44:47', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 8876721208, 'Ad445', '', '', '2019-08-24 04:46:15', '2019-08-24 04:46:15', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:46:41', '2019-08-24 04:46:41', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:47:08', '2019-08-24 04:47:08', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:47:20', '2019-08-24 04:47:20', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:47:57', '2019-08-24 04:47:57', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:49:13', '2019-08-24 04:49:13', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:50:57', '2019-08-24 04:50:57', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:51:49', '2019-08-24 04:51:49', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:53:41', '2019-08-24 04:53:41', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,', 7576017995, 'Ad445', '', '', '2019-08-24 04:53:57', '2019-08-24 04:53:57', 'GNB Road,', 'Ambari', '', '', 0),
('Kabir', 'Das', 'https://www.google.com/maps/search/?api=1&query=gnb+road,+ambari', 8876721208, 'Ad445', '', '', '2019-08-24 05:01:08', '2019-08-24 05:01:08', 'GNB Road, Ambari', 'NEMCARE', '', '', 0),
('moidul ', 'islam', 'https://www.google.com/maps/search/?api=1&query=godhuli+bazar,+azara', 8876721208, 'Ad445', '', '', '2019-08-29 03:09:20', '2019-08-29 03:09:20', 'godhuli bazar, azara', 'NEMCARE', '', '', 0),
('vats ', 'alsdkj', 'https://www.google.com/maps/search/?api=1&query=ajsdh', 1283718273, '', '', '', '2019-08-31 08:39:41', '2019-08-31 08:39:41', 'ajsdh', 'lsajkd', 'W/02', 'PCA_sui75deif', 0),
('vats ', 'alsdkj', 'https://www.google.com/maps/search/?api=1&query=ajsdh', 1283718273, '', '', '', '2019-08-31 08:39:49', '2019-08-31 08:39:49', 'ajsdh', 'lsajkd', 'W/02', 'PCA_sui75deif', 0),
('aksjdh', 'kjhad', 'https://www.google.com/maps/search/?api=1&query=kajhds', 18273918273, '', '', '', '2019-08-31 08:42:11', '2019-08-31 08:42:11', 'kajhds', 'kjashd', 'W/02', 'PCA_qcmpta3mg', 0),
('aksjdh', 'kjhad', 'https://www.google.com/maps/search/?api=1&query=kajhds', 18273918273, '', '', '', '2019-08-31 08:47:36', '2019-08-31 08:47:36', 'kajhds', 'kjashd', 'W/02', 'PCA_qcmpta3mg', 0),
('', '', '', 0, 'ad446', '', '', '2019-08-31 08:49:20', '2019-08-31 08:49:20', '', '', 'W/02', '', 0),
('aksjdh', 'kjhad', 'https://www.google.com/maps/search/?api=1&query=kajhds', 18273918273, '', '', '', '2019-08-31 08:54:12', '2019-08-31 08:54:12', 'kajhds', 'kjashd', 'W/02', 'PCA_qcmpta3mg', 0),
('Loop', 'lakd', 'https://www.google.com/maps/search/?api=1&query=dajsd', 1234123, '', '', '', '2019-08-31 09:00:03', '2019-08-31 09:00:03', 'dajsd', 'kjds', 'W/02', 'PCA_od5g1cujg', 0),
('aljsdh', 'ljsdal', 'https://www.google.com/maps/search/?api=1&query=ambari', 3123123123123, '', '', '', '2019-09-02 07:26:13', '2019-09-02 07:26:13', 'ambari', 'gmc', 'W/02', 'PCA_3n3kcxo5v', 0),
('aljsdh', 'ljsdal', 'https://www.google.com/maps/search/?api=1&query=ambari', 3123123123123, '', '', '', '2019-09-02 07:26:48', '2019-09-02 07:26:48', 'ambari', 'gmc', 'W/02', 'PCA_3n3kcxo5v', 0),
('aljsdh', 'ljsdal', 'https://www.google.com/maps/search/?api=1&query=ambari', 3123123123123, '', '', '', '2019-09-02 07:27:21', '2019-09-02 07:27:21', 'ambari', 'gmc', 'W/02', 'PCA_3n3kcxo5v', 0),
('aljsdh', 'ljsdal', 'https://www.google.com/maps/search/?api=1&query=ambari', 3123123123123, '', '', '', '2019-09-02 07:27:28', '2019-09-02 07:27:28', 'ambari', 'gmc', 'W/02', 'PCA_3n3kcxo5v', 0),
('Kabir ', 'Das', 'https://www.google.com/maps/search/?api=1&query=uzanbazar,+ghy', 8876721208, '', '', '', '2019-09-02 08:23:30', '2019-09-02 08:23:30', 'Uzanbazar, Ghy', 'GMC', 'W/O 02', 'PCA_hbb73t4h7', 0),
('Kabir ', 'Das', 'https://www.google.com/maps/search/?api=1&query=uzanbazar,+ghy', 8876721208, '', '', '', '2019-09-02 08:28:36', '2019-09-02 08:28:36', 'Uzanbazar, Ghy', 'GMC', 'W/O 02', 'PCA_hbb73t4h7', 0),
('Kabir ', 'Das', 'https://www.google.com/maps/search/?api=1&query=uzanbazar,+ghy', 8876721208, '', '', '', '2019-09-02 08:29:28', '2019-09-02 08:29:28', 'Uzanbazar, Ghy', 'GMC', 'W/O 02', 'PCA_hbb73t4h7', 0),
('lskjdl', 'alskdj', 'https://www.google.com/maps/search/?api=1&query=alskdj', 8876721208, '', '', '', '2019-09-02 08:29:59', '2019-09-02 08:29:59', 'alskdj', 'gmc', 'W/02', 'PCA_oogjdb0gr', 0),
('lskjdl', 'alskdj', 'https://www.google.com/maps/search/?api=1&query=alskdj', 8876721208, '', '', '', '2019-09-02 08:31:13', '2019-09-02 08:31:13', 'alskdj', 'gmc', 'W/02', 'PCA_oogjdb0gr', 0),
('aksjdh', 'kajsdh', 'https://www.google.com/maps/search/?api=1&query=akjsdh', 8876721208, '', '', '', '2019-09-02 08:32:52', '2019-09-02 08:32:52', 'akjsdh', 'akjsdh', 'W/02', 'PCA_pj7hglarb', 0),
('jqhsgx', 'jsg', 'https://www.google.com/maps/search/?api=1&query=uzanbazar', 8876721208, '', '', '', '2019-09-02 08:34:29', '2019-09-02 08:34:29', 'Uzanbazar', 'gmc', 'W/O 02', 'PCA_aircqbhxw', 1),
('hgfhgf', 'hgfjhf', 'https://www.google.com/maps/search/?api=1&query=ambari', 65765865857, '', '', '', '2019-09-02 08:44:50', '2019-09-02 08:44:50', 'ambari', 'gmc', 'W/02', 'PCA_mh45ua5jq', 1),
('Something ', 'Something', 'https://www.google.com/maps/search/?api=1&query=startup+assam-+the+nest', 8876721208, '', '', '', '2019-09-02 11:58:21', '2019-09-02 11:58:21', 'Startup Assam- The nest', 'GMC', 'W/O 02', 'PCA_sntwlsndd', 1),
('Kabir ', 'Das', 'https://www.google.com/maps/search/?api=1&query=ambari', 8876721208, '', '', '', '2019-09-02 12:26:39', '2019-09-02 12:26:39', 'Ambari', 'GMC', 'W/O 02', 'PCA_w0czs7jnl', 1),
('', '', '', 0, 'AD12345', '', '', '2019-09-02 12:26:49', '2019-09-02 12:26:49', '', '', 'W/O 02', '', 0),
('', '', '', 0, 'AD12345', '', '', '2019-09-02 12:27:38', '2019-09-02 12:27:38', '', '', 'W/O 02', '', 0),
('asdlk', 'lksd', 'https://www.google.com/maps/search/?api=1&query=amabari', 8876721208, '', '', '', '2019-09-02 12:36:06', '2019-09-02 12:36:06', 'Amabari', 'GMC', 'W/O 02', 'PCA_x0li7i3l1', 0),
('asdlk', 'lksd', 'https://www.google.com/maps/search/?api=1&query=amabari', 8876721208, '', '', '', '2019-09-02 12:37:23', '2019-09-02 12:37:23', 'Amabari', 'GMC', 'W/O 02', 'PCA_x0li7i3l1', 0),
('asdlk', 'lksd', 'https://www.google.com/maps/search/?api=1&query=amabari', 8876721208, '', '', '', '2019-09-02 12:37:28', '2019-09-02 12:37:28', 'Amabari', 'GMC', 'W/O 02', 'PCA_x0li7i3l1', 1),
('John ', 'Dow', 'https://www.google.com/maps/search/?api=1&query=ambari+bustop', 8876721208, '', '', '', '2019-09-02 12:51:52', '2019-09-02 12:51:52', 'Ambari Bustop', 'GMC', 'W/O 02', 'PCA_g180xhkvr', 0),
('John ', 'Dow', 'https://www.google.com/maps/search/?api=1&query=ambari+bustop', 8876721208, '', '', '', '2019-09-02 13:02:29', '2019-09-02 13:02:29', 'Ambari Bustop', 'GMC', 'W/O 02', 'PCA_g180xhkvr', 0),
('Jo', 'jo', 'https://www.google.com/maps/search/?api=1&query=ak', 8876721208, '', '', '', '2019-09-02 13:03:51', '2019-09-02 13:03:51', 'ak', 'adj', 'W/O 02', 'PCA_890hw3n4e', 0),
('Jo2', 'jo2', 'https://www.google.com/maps/search/?api=1&query=ak', 8876721208, 'AD12345', '', '', '2019-09-02 13:07:27', '2019-09-02 13:10:11', 'ak', 'adj', 'W/O 02', 'PCA_k0xgovdin', 1),
('Jamid ', 'Khan', 'https://www.google.com/maps/search/?api=1&query=uzanbazar,+bustop', 8876721208, 'AD12345', '', '', '2019-09-03 04:03:36', '2019-09-03 04:03:41', 'Uzanbazar, bustop', 'GMC', 'W/O 02', 'PCA_lrmnlo6dw', 1),
('Sankur ', 'Dutta', 'https://www.google.com/maps/search/?api=1&query=ambari,+guwahati', 8876721208, 'AD12345', '', '', '2019-12-19 02:58:54', '2019-12-19 02:59:13', 'Ambari, Guwahati', 'NEMCARE', 'W/O 02', 'PCA_ibjm35sdt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_details`
--

CREATE TABLE `ambulance_details` (
  `driver_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `registered_authority` varchar(260) COLLATE utf8_unicode_ci NOT NULL,
  `ambulance_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ambulance_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `typeofambulance` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ambulance_details`
--

INSERT INTO `ambulance_details` (`driver_first_name`, `driver_last_name`, `phone_number`, `registered_authority`, `ambulance_id`, `ambulance_number`, `status`, `created_at`, `updated_at`, `typeofambulance`) VALUES
('Kabir', 'Das', 8876721208, 'Private', 'AD12345', 'as-01-5467', '1', '2019-09-02 08:24:41', '2019-09-02 08:24:41', 'W/O 02'),
('Vatsala ', 'Agarwala', 8876721208, 'Private', 'Ad445', 'AS-01-8876', '1', '2019-08-23 03:17:44', '2019-08-23 03:17:44', ''),
('Tanveer', 'Hazarika', 1234567890, 'Private', 'ad446', 'AS-01-8878', '1', '2019-08-24 05:01:54', '2019-08-24 05:01:54', 'W/02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_icon`, `category_name`, `category_slug`, `status`) VALUES
(1, 'fa-globe', 'Orthodontist', 'dentist', 1),
(2, 'fa-globe', 'General Dentists', '', 1),
(3, 'fa-globe', 'Cosmetic Dentist', '', 1),
(4, 'fa-globe', 'Prosthodontist', '', 1),
(5, 'fa-globe', 'Oral Surgeon', '', 1),
(6, 'fa-globe', 'Endodontist', '', 1),
(7, 'fa-globe', 'Pedodontist', '', 1),
(8, 'fa-globe', 'Periodontist', '', 1),
(9, 'fa-globe', 'Implantologist', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Kabir Das', 'kabird1196@gmail.com', 'asd', 'asd', '2019-05-02 07:36:34', '2019-05-02 07:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `gyms`
--

CREATE TABLE `gyms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `amenities` text COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_mon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_tue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_wed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_thurs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_fri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_sat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_sun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icu_details`
--

CREATE TABLE `icu_details` (
  `hospitalname` text COLLATE utf8_unicode_ci NOT NULL,
  `hospitalid` text COLLATE utf8_unicode_ci NOT NULL,
  `icunumber` text COLLATE utf8_unicode_ci NOT NULL,
  `spocname` text COLLATE utf8_unicode_ci NOT NULL,
  `spocnumber` text COLLATE utf8_unicode_ci NOT NULL,
  `alternativespocname` text COLLATE utf8_unicode_ci NOT NULL,
  `alternativespocnumber` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `icuid` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `icu_details`
--

INSERT INTO `icu_details` (`hospitalname`, `hospitalid`, `icunumber`, `spocname`, `spocnumber`, `alternativespocname`, `alternativespocnumber`, `status`, `icuid`, `cost`, `created_at`, `updated_at`) VALUES
('gmc', 'ad1', '02', 'alsdj', '1029381', 'kjsdh', '2191837', 1, 'pc_i129389', 5500, NULL, NULL),
('gmc', 'ad1', '02', 'alsdj', '1029381', 'kjsdh', '2191837', 1, 'pc_i129389', 5500, NULL, NULL),
('gmc', '1233', '04', 'aldkj', '1234124', 'alskdj', '1251342', 1, 'pc_i1231343', 5500, NULL, NULL),
('gmc', '1233', '04', 'aldkj', '1234124', 'alskdj', '1251342', 1, 'pc_i1231343', 5500, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icu_queries`
--

CREATE TABLE `icu_queries` (
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `description` varchar(260) COLLATE utf8_unicode_ci NOT NULL,
  `queryid` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_name` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `medicalcondition` text COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `ventilatorrequirement` tinyint(1) NOT NULL,
  `sex` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `icuid` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `icu_queries`
--

INSERT INTO `icu_queries` (`first_name`, `last_name`, `phone_number`, `description`, `queryid`, `hospital_name`, `cost`, `status`, `created_at`, `updated_at`, `medicalcondition`, `age`, `ventilatorrequirement`, `sex`, `icuid`) VALUES
('lop', 'jgj', 1432432, '', 'PCA_whn2aczea', '', '', 0, '2019-09-02 13:19:36', '2019-09-02 13:19:36', '', 0, 0, '', ''),
('John', 'Doe', 8876721208, '', 'PCA_rlasidjb0', '', '', 1, '2019-09-03 04:04:41', '2019-09-03 04:25:14', 'Fever', 23, 0, 'Male', 'pc_i129389');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `featured_listing` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `video` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `map_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_long` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amenities` text COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_mon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_tue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_wed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_thurs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_fri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_sat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_sun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `review_avg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `consultation_fee` bigint(20) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `cat_id`, `sub_cat_id`, `location_id`, `featured_listing`, `title`, `listing_slug`, `description`, `video`, `address`, `map_lat`, `map_long`, `amenities`, `working_hours_mon`, `working_hours_tue`, `working_hours_wed`, `working_hours_thurs`, `working_hours_fri`, `working_hours_sat`, `working_hours_sun`, `featured_image`, `review_avg`, `status`, `created_at`, `updated_at`, `keywords`, `consultation_fee`, `contact`) VALUES
(1, 2, 1, 1, 1, 1, 'Test', 'test', '<p>Test</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-26 06:17:34', '2018-10-27 11:12:21', '', 100, 0),
(2, 2, 6, 6, 1, 1, 'Test 2 ', 'test-2', '<p>Test 2</p>', '', 'GNB Road,\r\nAmbari', '123.12313', '12.123', 'Parking,WiFi,Terrace', '9:00-10:00', '', '', '', '', '', '', 'test-2_1540555374', '', 1, '2018-10-26 06:32:54', '2018-10-26 06:32:54', '', 2000, 0),
(3, 2, 1, 1, 1, 1, 'test ', 'test', '<p>test&nbsp;</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 14:22:36', '2018-10-27 14:22:36', '', 350, 0),
(4, 2, 1, 1, 1, 1, 'Test 3', 'test-3', '<p>test</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 14:23:23', '2018-10-27 14:23:23', '', 400, 0),
(5, 2, 1, 1, 1, 1, 'hey', 'hey', '<p>hey</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 15:03:21', '2018-10-27 15:03:21', 'redness', 0, 0),
(6, 2, 1, 1, 0, 0, 'hajg', 'hajg', '<p>asjkdh</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 15:03:52', '2018-10-27 15:03:52', '', 0, 0),
(7, 2, 1, 1, 0, 0, 'amdja', 'amdja', '<p>kjahsd</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 15:08:22', '2018-10-27 15:08:22', '', 0, 0),
(8, 2, 1, 1, 0, 0, 'akjsdhalhk', 'akjsdhalhk', '<p>asdasd</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 15:09:51', '2018-10-27 15:09:51', 'Parking,WiFi,Terrace', 0, 0),
(9, 2, 1, 1, 0, 0, 'aldhalhd', 'aldhalhd', '<p>adkjhakdh</p>', '', '', '', '', 'Parking,WiFi,Terrace,lift', '', '', '', '', '', '', '', '', '', 1, '2018-10-27 23:03:41', '2018-10-27 23:03:41', 'parking,, ', 0, 0),
(10, 41, 1, 1, 0, 0, 'asasda', 'asasda', '<p>dad</p>', '', '', '', '', 'Parking,WiFi,Terrace', '14:12', '', '', '', '', '', '', '', '', 0, '2018-10-28 01:43:19', '2018-10-28 01:43:19', 'RCT,Cleaning,Braces', 0, 0),
(11, 48, 1, 1, 0, 0, 'dd', 'dd', '<p>dasd</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 0, '2018-10-28 02:51:31', '2018-10-28 02:51:31', 'RCT,Cleaning,Braces', 0, 0),
(12, 51, 1983719287, 1983719287, 1983719287, 0, '1983719287', '1983719287', '1983719287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2018-10-28 02:59:40', '2018-10-28 02:59:40', '', 0, 0),
(13, 52, 1234456788, 1234456788, 1234456788, 0, '1234456788', '1234456788', '1234456788', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2018-10-28 03:00:30', '2018-10-28 03:00:30', '', 0, 0),
(14, 52, 1, 1, 0, 0, 'asda', 'asda', '<p>dasdd</p>', '', '', '', '', 'Parking,WiFi,Terrace', '', '', '', '', '', '', '', '', '', 0, '2018-10-28 03:01:08', '2018-10-28 03:01:08', 'RCT,Cleaning,Braces', 0, 0),
(15, 53, 19327138, 19327138, 19327138, 0, '19327138', '19327138', '19327138', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2018-10-28 03:04:20', '2018-10-28 03:04:20', '', 0, 0),
(16, 54, 0, 0, 0, 0, '0000000000', '0000000000', '0000000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-28 03:05:09', '2018-10-28 03:05:09', 'Implant, Bleach', 0, 0),
(17, 55, 2147483647, 2147483647, 2147483647, 0, '99999999999', '99999999999', '99999999999', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-28 03:07:52', '2018-10-28 03:07:52', '', 0, 0),
(18, 56, 2147483647, 2147483647, 2147483647, 0, '12983721837', '12983721837', '12983721837', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-28 03:17:51', '2018-10-28 03:17:51', '', 0, 0),
(19, 58, 1, 1, 1, 0, 'kajdhakjdh', '120938120938', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-28 03:23:55', '2018-10-28 03:23:55', '', 0, 0),
(20, 59, 1, 1, 1, 0, 'akjdhakjshd', '45454545454544545', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-28 03:25:37', '2018-10-28 03:25:37', '', 0, 0),
(21, 60, 1, 1, 0, 0, 'Gentle Dental', 'gentle-dental', 'Some extra description is needed', '', '', '', '', '', '02:00', '', '', '', '', '', '', '', '5', 1, '2018-10-28 04:54:26', '2019-02-07 09:29:38', 'rct,cleaninf,braces', 0, 0),
(22, 61, 1, 1, 1, 0, 'dugdugi', '1921310923810938', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-10-29 03:44:33', '2018-10-29 03:44:33', 'rct', 0, 0),
(23, 62, 1, 1, 1, 0, 'akljdalkj', '113213123123', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-03 02:02:54', '2018-11-03 02:02:54', '', 0, 0),
(24, 63, 1, 1, 1, 0, 'kadjdalkdj', '1203981038', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-03 03:53:02', '2018-11-03 03:53:02', '', 0, 0),
(25, 64, 1, 1, 1, 0, 'kjasdhl', '123701923', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-03 03:54:53', '2018-11-03 03:54:53', 'Bleach', 0, 0),
(26, 65, 1, 1, 1, 0, 'kdsjhdkjh', '129837918273', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-03 03:55:30', '2018-11-03 03:55:30', '', 0, 0),
(27, 66, 5, 5, 0, 1, 'kabir', 'kabir', 'Some Clinic', '', '41, Md Tayabulla Rd, Tayabulla Campus, Digholi Pukhuri East, Dighalipukhuri, Guwahati, Assam 781001, India', '', '', '', '9:00 am to 6:00 pm', '', '', '', '', '', '', 'kabir_1548519565', '', 1, '2018-11-13 02:48:57', '2019-03-05 10:58:17', ' , Treatment of Tetracycline Stains , Dental Implants , Acrylic Dentures Procedure , Gap Closing (Dental) Treatment , Geriatric Dentistry, rct', 570, 0),
(28, 67, 1, 1, 1, 0, 'lhdalsdh', '0090909099090909', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-13 03:15:16', '2018-11-13 03:15:16', 'Pulpectomy Procedure', 0, 0),
(29, 68, 1, 1, 1, 0, ',jwhdkjashd', '8763827364872364', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-14 00:47:37', '2018-11-14 00:47:37', '', 0, 0),
(30, 69, 2, 1, 1, 0, 'kajsdhkajsdh', '1826912837', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-14 08:22:14', '2018-11-14 08:22:14', '', 0, 0),
(31, 70, 1, 1, 1, 0, 'kajgdkg', '6767676767676', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-15 05:15:45', '2018-11-15 05:15:45', '', 0, 0),
(32, 71, 1, 1, 0, 0, 'jhsgdaksgd', 'jhsgdaksgd', 'I am great', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-15 05:16:14', '2018-11-15 05:20:35', 'redness, cavity', 0, 0),
(33, 72, 1, 1, 0, 0, 'NEw clinic', 'new-clinic', 'Hey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-11-25 00:36:59', '2018-11-25 05:43:30', 'Rotary Rct Procedure,Sealant Treatment,Tooth Veneers ProcedurePeriodontal Flap Surgery,Periodontal Plastic Surgery,Advanced Surgery In Implantology Procedures', 0, 0),
(34, 73, 1, 1, 1, 0, 'jahdkjh', '100000010000', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 00:41:50', '2018-12-14 00:41:50', '', 0, 0),
(35, 74, 1, 1, 1, 0, 'kldjalskdj', '0230230240', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 00:52:37', '2018-12-14 00:52:37', '', 0, 0),
(36, 75, 1, 1, 1, 0, 'jhaklsdh', '45458989889', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 00:54:05', '2018-12-14 00:54:05', '', 0, 0),
(37, 79, 1, 1, 1, 0, 'dlsjhdlkja', '923701983', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 01:16:53', '2018-12-14 01:16:53', '', 0, 0),
(38, 80, 1, 1, 1, 0, 'askdj', '12345678', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 02:36:58', '2018-12-14 02:36:58', 'redness, crown', 0, 0),
(39, 81, 1, 1, 1, 0, 'AKLJD', '81731923898', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 02:38:28', '2018-12-14 02:38:28', '', 0, 0),
(40, 82, 1, 1, 1, 0, 'kjahdkjh', '9284091283', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 02:39:48', '2018-12-14 02:39:48', '', 0, 0),
(41, 83, 1, 1, 1, 0, 'dksjdaksdj', '92391238183', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 10:22:13', '2018-12-14 10:22:13', 'crown', 0, 0),
(42, 84, 1, 1, 1, 0, 'lsjdlsdj', '7273723', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 10:23:02', '2018-12-14 10:23:02', '', 0, 0),
(43, 85, 1, 1, 1, 0, 'lakdjalksdj', '98789987897', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 10:57:44', '2018-12-14 10:57:44', '', 0, 0),
(44, 86, 1, 1, 1, 0, 'asdh', '7676767676', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 11:02:21', '2018-12-14 11:02:21', 'crown', 0, 0),
(45, 87, 1, 1, 1, 0, 'lkhasldhl', '7696987987978', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-14 11:10:09', '2018-12-14 11:10:09', '', 0, 0),
(46, 88, 1, 1, 1, 0, 'GD', 'term', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-31 03:07:47', '2018-12-31 03:07:47', '', 0, 0),
(47, 89, 1, 1, 1, 0, 'GentleDental', '090909090909', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-12-31 03:09:25', '2018-12-31 03:09:25', '', 0, 0),
(48, 90, 1, 1, 1, 0, 'Good', 'good', 'Polo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-01 05:24:34', '2019-01-01 05:31:08', 'Hey!', 0, 0),
(50, 92, 1, 1, 1, 1, 'kabir', '08876721208', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', 1, '2019-01-01 07:49:02', '2019-01-07 06:28:34', 'crown', 0, 0),
(51, 93, 1, 1, 1, 1, 'ko ko ko ', 'ko-ko-ko', 'jhg', '', '', '', '', '', '', '', '', '', '', '', '', 'ko-ko-ko_1546866977', '5', 1, '2019-01-07 05:45:25', '2019-01-07 08:18:27', 'Tooth Extractions , Tooth Extractions , Tooth Extractions , ', 0, 0),
(53, 96, 1, 1, 1, 0, 'lkdlaksdjl', '12983912873', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-11 08:12:41', '2019-01-11 08:12:41', '', 0, 0),
(54, 97, 1, 1, 1, 0, 'lkasdjlkasjd', '1241249898', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-11 08:18:18', '2019-01-11 08:18:18', '', 0, 0),
(55, 98, 1, 1, 1, 0, 'lkhdaslkdh', '812327397', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-11 08:22:32', '2019-01-11 08:22:32', '', 0, 0),
(56, 99, 1, 1, 1, 0, 'lakshdlk', '18723092183', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-11 08:24:07', '2019-01-11 08:24:07', '', 0, 0),
(57, 100, 1, 1, 1, 0, 'some', '019283019283', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2019-01-26 08:44:54', '2019-01-26 08:44:54', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `listings_reviews`
--

CREATE TABLE `listings_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `reviews_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listings_reviews`
--

INSERT INTO `listings_reviews` (`id`, `user_id`, `listing_id`, `reviews_title`, `review`, `rating`, `date`) VALUES
(1, 93, 50, 'ajksd', 'ajsdhksad', 4, 1546819200),
(2, 95, 51, 'Clean Clinic', 'Clinic', 5, 1546819200),
(3, 66, 21, 'nice', 't5grtgt4g', 5, 1549497600);

-- --------------------------------------------------------

--
-- Table structure for table `listing_gallery`
--

CREATE TABLE `listing_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listing_gallery`
--

INSERT INTO `listing_gallery` (`id`, `listing_id`, `image_name`) VALUES
(1, 2, 'test-2_8392-b.jpg'),
(2, 2, 'test-2_3840-b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location_name`, `location_slug`, `status`) VALUES
(1, 'Guwahati', 'guwahati', 1),
(2, 'Bangalore', 'bangalore', 1),
(3, 'Delhi', 'delhi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_12_30_075631_create_passwords_resets_table', 1),
('2018_12_30_075650_create_categories_table', 1),
('2018_12_30_075721_create_listing_gallery_table', 1),
('2018_12_30_075731_create_location_table', 1),
('2018_12_30_075744_create_sub_categories_table', 1),
('2018_12_30_075839_create_settings_table', 1),
('2018_12_30_075850_create_listings_table', 1),
('2018_12_30_075855_create_users_table', 1),
('2018_12_30_075902_create_patient_table', 1),
('2018_12_30_082636_create_listings_reviews_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_18_094331_create_settings_table', 1),
('2016_05_11_101945_create_categories_table', 1),
('2016_05_11_102900_create_listings_table', 1),
('2016_05_11_102933_create_listings_reviews_table', 1),
('2016_05_11_102956_create_listing_gallery_table', 1),
('2016_05_11_103038_create_location_table', 1),
('2016_05_11_103103_create_sub_categories_table', 1),
('2019_05_02_130146_create_contact_us_table', 2),
('2019_06_01_111919_create_gyms_table', 3),
('2019_08_20_090139_create_ambulance_table', 3),
('2019_08_20_102406_rename_ambulance_table', 3),
('2019_08_20_103246_edit_ambulance_table', 4),
('2019_08_21_074515_create_ambulancedetails_table', 4),
('2019_08_21_091836_rename_ambulance_details_table', 4),
('2019_08_22_064105_add_to_ambulances_table', 5),
('2019_08_22_070750_remove_from_ambulances_table', 5),
('2019_08_31_092626_add_to_ambulance_details_table', 6),
('2019_08_31_103511_add_to_ambulances_table_02', 6),
('2019_08_31_105151_add_to_ambulances_table_03', 6),
('2019_08_31_121336_drop_in_ambulances_table', 6),
('2019_08_31_121348_add_in_ambulances_table', 6),
('2019_09_02_100600_create_icuquery_table', 7),
('2019_09_02_105727_create_icu_details_table', 8),
('2019_09_02_122720_rename_icu_query', 9),
('2019_09_02_181224_add_to_ambulances', 10),
('2019_09_02_173606_create_icu_queries_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kabird1196@gmail.com', 'ae300da65ab553120c9d15b08465ecab19e8b969bff67be5ac33d4341b4850e6', '2018-11-13 02:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_map_api` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addthis_share_code` text COLLATE utf8_unicode_ci NOT NULL,
  `disqus_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_slide_text` text COLLATE utf8_unicode_ci NOT NULL,
  `page_bg_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_long` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms_of_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms_of_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `privacy_policy_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privacy_policy_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gplus_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `google_map_api`, `site_header_code`, `site_footer_code`, `site_copyright`, `addthis_share_code`, `disqus_comment_code`, `facebook_comment_code`, `home_slide_image1`, `home_slide_image2`, `home_slide_image3`, `home_slide_title`, `home_slide_text`, `page_bg_image`, `about_title`, `about_description`, `contact_title`, `contact_address`, `contact_email`, `contact_number`, `contact_lat`, `contact_long`, `terms_of_title`, `terms_of_description`, `privacy_policy_title`, `privacy_policy_description`, `facebook_url`, `twitter_url`, `gplus_url`, `linkedin_url`) VALUES
(1, 'Directory Listings', 'admin@admin.com', 'logo.png', 'favicon.png', 'Doctor Listing', '', '', '', '2018', '', '', '', 'slide1.jpeg', 'slide2.jpeg', 'slide3.jpeg', '', '', 'page_bg_image.png', 'About Us', '', 'Contact Us', '', '', '', '', '', 'Terms and Condition', '', 'Privacy Policy', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `sub_category_name`, `sub_category_slug`, `status`) VALUES
(1, 1, 'Dentist General ', 'dentist genereal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login_with` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dribbble_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `membership` text COLLATE utf8_unicode_ci,
  `service_1` text COLLATE utf8_unicode_ci NOT NULL,
  `consultation_fee` bigint(20) NOT NULL,
  `referral` int(11) NOT NULL,
  `refers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login_with`, `usertype`, `first_name`, `last_name`, `email`, `password`, `gender`, `image_icon`, `mobile`, `contact_email`, `website`, `address`, `facebook_url`, `twitter_url`, `linkedin_url`, `dribbble_url`, `instagram_url`, `facebook_id`, `google_id`, `remember_token`, `created_at`, `updated_at`, `membership`, `service_1`, `consultation_fee`, `referral`, `refers`) VALUES
(1, '', 'Admin', 'John', 'Deo', 'admin@admin.com', '$2y$10$92xK8EZay.XUdDUYTLjNZ.VGFKfgqasYsS6t/f3ecWTcVMccZdIAK', '', 'upload/members/john-5d8c77eb422e0df92e3bc80d445f4661-b.jpg', '', 'Data : 12936912863 Name : Kabir,Data : 123412442 Name : Paul,Data : 293819238 Name : Kabir,', '', '', '', '', '', '', '', '', '', '3ZuDzo4IwfDRHGONcQk8ds1olX4qBzLCcXviCO5b5bbr2Ust3cPjPsYIgvWh', '2018-10-25 12:44:40', '2018-12-31 02:51:29', NULL, '0', 0, 0, 0),
(3, '', 'User', 'test', 'test', 'test@com.com', '$2y$10$Wz9l6jmoTStsE43xS7NLnOPKKf9zZUAQpY3FMF2zqiJhCuJngsdQe', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:02:06', '2018-10-27 05:02:06', NULL, '0', 0, 0, 0),
(4, '', 'User', 'test', 'test', 'test2@com.com', '$2y$10$UQJzKwEsGJO68zcds.1LjO5zKzkxIGLT8Qlfii2USY1RiueTb/6ba', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:02:58', '2018-10-27 05:02:58', NULL, '0', 0, 0, 0),
(5, '', 'User', 'test', 'test', 'test3@com.com', '$2y$10$UZvfcjERXToWU3vq7iLQNORKntO9wEKMUSR9ApOvTBQdwFOrHDqtG', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:06:39', '2018-10-27 05:06:39', NULL, '0', 0, 0, 0),
(6, '', 'User', 'test', 'test', 'test4@com.com', '$2y$10$jGvv/yIV46hVj1sf0VPXNOuxCnnubigeKAHS0J7ZvHURBXn1mbhWq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:28:45', '2018-10-27 05:28:45', NULL, '0', 0, 0, 0),
(7, '', 'User', 'test', 'test', 'test5@com.com', '$2y$10$1JHu594Q4EZcuPHfV3N0f.UMcLbHEJgDtVPsu22Jhm3pgRcp8jHga', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'rU4gCt8ScriTQTQal9QH1krgnK5EEMvkA7LZ5KfmLA983q5rOSOMKxEBApDK', '2018-10-27 05:29:47', '2018-10-27 05:33:12', NULL, '0', 0, 0, 0),
(8, '', 'User', 'test', 'test', 'test6@com.com', '$2y$10$v.Pn6jrfBq74w4vESZfyi.sRe8s4.Y6P/XE1uZM90MtJQofHw1kQq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:31:19', '2018-10-27 05:31:19', NULL, '0', 0, 0, 0),
(9, '', 'User', 'test', 'test', 'test7@com.com', '$2y$10$BQ3v1DDuhCFM4oSF7A3PtOmnGwciQXvcThnxtEvABID0dUluom9TW', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:33:31', '2018-10-27 05:33:31', NULL, '0', 0, 0, 0),
(10, '', 'User', 'test', 'test', 'test8@com.com', '$2y$10$4utWDR7rohqKthF8JsmCKeK.tvIu5XQhlauF3j5Z.nPSxT0uQZ1tu', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 05:38:01', '2018-10-27 05:38:01', NULL, '0', 0, 0, 0),
(11, '', 'User', 'test', 'test', 'test13@com.com', '$2y$10$cW1Sj76WboAdj5.F2vrAzuj5luu9x53LmBs2gcvWFpoe1GICdvA4i', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 06:11:00', '2018-10-27 06:11:00', NULL, '0', 0, 0, 0),
(12, '', 'User', 'test', 'test', 'test18@com.com', '$2y$10$monDsNrp424OhacPi7NPfuJM1gErg4vj3srwOwpIwcxYU5aoWUNvq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 09:51:19', '2018-10-27 09:51:19', NULL, '0', 0, 0, 0),
(13, '', 'User', 'test', 'test', 'test19@com.com', '$2y$10$V1s6jIxwYBHB1xhhJf2OXOlXDVzeSTUDwnV1U.XUA3PsrBetHHWom', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 09:51:37', '2018-10-27 09:51:37', NULL, '0', 0, 0, 0),
(14, '', 'User', 'test', 'test', 'test31@com.com', '$2y$10$/lK6yCrDQljOjCFZa/m0meCabetVX.lKw2Ynd05wlzckdLMNKG4r6', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 09:52:56', '2018-10-27 09:52:56', NULL, '0', 0, 0, 0),
(15, '', 'User', 'test', 'test', 'test32@com.com', '$2y$10$HHLOBCPqnqxS0XKLHODsOepzqcBBVRNCS.ejAiN/Vj0LNCZ0ka8qq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 09:53:28', '2018-10-27 09:53:28', NULL, '0', 0, 0, 0),
(16, '', 'User', 'test', 'test', 'test34@com.com', '$2y$10$.FfBb1LJmv/rUwFOGPT0aOUNHL1ECI3KONS1nkS3iVpd1PbGM4RYe', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 09:53:58', '2018-10-27 09:53:58', NULL, '0', 0, 0, 0),
(17, '', 'User', 'test', 'test', 'test35@com.com', '$2y$10$081bVCvKz5c/PyP82m66Ae9A3asrw4wpzX2xkkXlZaYFfPtfZHHGW', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'AIY8XKIciaRUTXvw6lSNICHihptSKZlsYsDqRs6CnUKyRRwpxJht7fPSZieN', '2018-10-27 09:54:52', '2018-10-27 10:26:38', NULL, '0', 0, 0, 0),
(18, '', 'User', 'test', 'test', 'test36@com.com', '$2y$10$AjU6PZxmsS7.lNnSfiXpIOtMwYTR7unGM0.uYt9VdH2xmVpobqesC', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:02:01', '2018-10-27 10:02:01', NULL, '0', 0, 0, 0),
(19, '', 'User', 'test', 'test', 'test37@com.com', '$2y$10$8xnU0ZH5lAeO23D2uQO61O1wdYOGDOGvd9dJ1c1fvybqwYnWa.N0m', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:02:33', '2018-10-27 10:02:33', NULL, '0', 0, 0, 0),
(20, '', 'User', 'test', 'test', 'test39@com.com', '$2y$10$p17ZYzEpYvJDnxllSAFQc.gtI669QHsk8lV4S/Ja2AvpCIrXTzR46', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:04:02', '2018-10-27 10:04:02', NULL, '0', 0, 0, 0),
(21, '', 'User', 'test', 'test', 'test40@com.com', '$2y$10$il/4N71xYiJtHe97uyO2OOYGdMIJsYibW1kE/4AeYz093J3tVStBO', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:04:27', '2018-10-27 10:04:27', NULL, '0', 0, 0, 0),
(22, '', 'User', 'test', 'test', 'test41@com.com', '$2y$10$OHEM.wFTVckcODtRj/Jms.35vNjaTScn8uqkovdJ1v3FPnxaHabJq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:06:34', '2018-10-27 10:06:34', NULL, '0', 0, 0, 0),
(23, '', 'User', 'test', 'test', 'test43@com.com', '$2y$10$jEwxyo8T0Gpa5XESmhiixu9U9rjc0fU2t8HhqjKC0gjTDx2BoQnoK', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:09:22', '2018-10-27 10:09:22', NULL, '0', 0, 0, 0),
(24, '', 'User', 'test', 'test', 'tset44@com.com', '$2y$10$8n4lY.o/z1xw5H9At05FE.0qIjChy8kd.mKXocyBoKRhrx7fGrTRm', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:10:19', '2018-10-27 10:10:19', NULL, '0', 0, 0, 0),
(25, '', 'User', 'test', 'test', 'test00@com.com', '$2y$10$iG.oBTp.t13ZsrofIrB5q.gUmkMd946b1E2RHML/t/Y1wFZW/ZJ4m', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'lt7Jo8YqkbmwDgaddO8azTMd9rO8ZFp6Hnld2JhEkFXd1ZMdLfKwLJq9PQv7', '2018-10-27 10:11:50', '2018-10-27 10:14:49', NULL, '0', 0, 0, 0),
(26, '', 'User', 'test', 'test', 'test51@com.com', '$2y$10$AKsM1WltqPQXFRVCV3UPcuakIs/DR9Z/oG4V9fFYo76Cmbpby4TKO', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:15:16', '2018-10-27 10:15:16', NULL, '0', 0, 0, 0),
(27, '', 'User', 'test', 'test', 'test52@com.com', '$2y$10$Q7esk5NbhiUprFHM4mQT4OUjWuvRI/dGbQmjA99LAim9uDSxyxjCW', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:15:40', '2018-10-27 10:15:40', NULL, '0', 0, 0, 0),
(28, '', 'User', 'test', 'tset', 't1@com.com', '$2y$10$tS5KvKZPPhnnkUdXx.6rHOZSbKg1zQ./6wCHZvBlE2qBiXmQQ/9Ha', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:17:28', '2018-10-27 10:17:28', NULL, '0', 0, 0, 0),
(29, '', 'User', 'test', 'tets', 't2@com.com', '$2y$10$uGFxkSzk.JbZaKkQJ.FqQOzDs7I/XJWyRcI4JS9tVmYSAoO4QLWLS', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:18:00', '2018-10-27 10:18:00', NULL, '0', 0, 0, 0),
(30, '', 'User', 'test', 'test', 't3@com.com', '$2y$10$UlTp2vU6so5ZzK74RkEgs.J76FHepS0lIKKf8msJnO9ZieZkDPcGu', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-27 10:18:26', '2018-10-27 10:18:26', NULL, '0', 0, 0, 0),
(31, '', 'User', 'tt', 't', 'a3@com.com', '$2y$10$Wg9QN2QKLtT5l8IKJ8SOfOctRow/lQ0Cs2A52s.Fxw.atNyYObnKe', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 00:26:43', '2018-10-28 00:26:43', NULL, '0', 0, 0, 0),
(32, '', 'User', 'alsjdh', 'kjdh', 'aldh@com.com', '$2y$10$r9H2iu5knahe5c7orkEdtONgktLyLAjqxUI.9Hgw22PN7qH.JW0Gq', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 00:43:24', '2018-10-28 00:43:24', NULL, '0', 0, 0, 0),
(33, '', 'User', 'aksd', 'aksdhakjdh', 'aksdjald@com.com', '$2y$10$iTMIO6994BND5/i94YqXKuFRRcw8pb67nG.D9AOS6k82pKsw4YNmG', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 00:54:12', '2018-10-28 00:54:12', NULL, '0', 0, 0, 0),
(34, '', 'User', 'ajshdkajh', 'ksdhakjdh', 'akjdhakdjh@com.com', '$2y$10$twIactmk6zRttFABzHzfq.wqdaEOiWqrx/dmjPxKZThjBeFVGexLK', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 00:54:53', '2019-01-11 08:18:18', NULL, '0', 0, 0, 1),
(35, '', 'User', 'asdkjah', 'akjhsdakhd', 'kajhdakhd@com.com', '$2y$10$w0qCr7ZiJNdhDCKIiUAQU.kXmzA2H9szYfs1vB8WrW8LIdqMgg6Hm', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:04:32', '2018-10-28 01:04:32', NULL, '0', 0, 0, 0),
(36, '', 'User', 'asdkadljk', 'ajdhakjdh', 'lalkdjasdasd@com.com', '$2y$10$MxkMZgLysf16REbrSCJPKOzwXuaukQQ0lHVbeWb56VOQAtgjchg5W', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:12:35', '2018-10-28 01:12:35', NULL, '0', 0, 0, 0),
(37, '', 'User', 'sd,hasdjk', 'akjdhajdh', 'slksdhalkdj@com.com', '$2y$10$HC8gcwUIZu3eV/CtMpbVQOGfTtBh9TZ88GOyttJKG8.rxTOYexUqy', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:18:21', '2018-10-28 01:18:21', NULL, '0', 0, 0, 0),
(38, '', 'User', 'asdklhalsdkh', 'kjahdajh', 'aldkalskdj@com.com', '$2y$10$ZNwwpHZFZmSNWKhkvCOp6uPZH.FYpm9.di.YizHb43G9lfPHcYXnu', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:19:09', '2018-10-28 01:19:09', NULL, '0', 0, 0, 0),
(39, '', 'User', 'asdjhalsdk', 'aljdhlsd', 'laksdjalskd@com.com', '$2y$10$Fwsz2CpxRA7SzOxFtDwUvOJuSAQTq/aIeU019vZMTuU4Pi4kxm56K', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:36:45', '2018-10-28 01:36:45', NULL, '0', 0, 0, 0),
(40, '', 'User', 'asdjhalsdk', 'aljdhlsd', 'laksdasdjalskd@com.com', '$2y$10$ncD.7Vo8fR77yEEwht6ebOJE6SB0IA6vhqtcfDnABkdr5IUH078T6', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:37:06', '2018-10-28 01:37:06', NULL, '0', 0, 0, 0),
(41, '', 'User', 'aljsdhlaksdj', 'adjalksdj', 'alkjdlkjaja@com.com', '$2y$10$FiyYmdHSNvQTyUhMNmCjNu8bRhYl0uMyRuAIgPBluXLlXoXHHL62m', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:40:43', '2018-10-28 01:40:43', NULL, '0', 0, 0, 0),
(42, '', 'User', 'aldkahsldkh', 'kjshkdjh', 'kajhdajdh@co.com', '$2y$10$H/1oTSqATAxONuTu7iLeNegxayC1/DGS.O7vjxP6WikJOZJpPmGuO', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 01:55:04', '2018-10-28 01:55:04', NULL, '0', 0, 0, 0),
(43, '', 'User', 'aldalkdj', 'kajhdkasjhd', 'lkajdlakdjalj@com.com', '$2y$10$aHXoZ.5.fdEazDaHi14Xg./Hi3bkVOsccp.nElrmD8YtcGlSGsbpS', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:11:43', '2018-10-28 02:11:43', NULL, '0', 0, 0, 0),
(44, '', 'User', 'alskdhalskdh', 'jadlaksdj', 'lakjdalksdj@dkjd.com', '$2y$10$d/66hKBQnjOQuF4fiGSqd.Vu8Lrm4sc6G3JVBH7KSmm2pHso08Y2i', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:28:41', '2018-10-28 02:28:41', NULL, '0', 0, 0, 0),
(45, '', 'User', 'aksjdhakdsjh', 'kjahdkajh', 'dakjdhakjdh@co.com', '$2y$10$R46zULmQTcDp2lxpBytDSOqIi5Er1U/1FgpF1WHzzPM4G.Z6qr46K', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:36:38', '2018-10-28 02:36:38', NULL, '0', 0, 0, 0),
(46, '', 'User', 'alsdjhalkd', 'kadjhdkjah', 'dkajdhaljhd@dc.com', '$2y$10$nNyFei0C9pYUKYexqbpBEOG/w.DqgqK68Bu1fxD9NqmaqKdfCAstK', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:42:14', '2018-10-28 02:42:14', NULL, '0', 0, 0, 0),
(47, '', 'User', 'alsjdhlkh', 'kajhdh', 'dlakhdlakdh@cnc.com', '$2y$10$y3zKShadO/2L5uMfA03gZ.Zx5ysl0MEmofDGJ5shckdhfKI9nOOHa', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:43:15', '2018-10-28 02:43:15', NULL, '0', 0, 0, 0),
(48, '', 'User', 'alkdjlakjd', 'akjdhak', 'lakdjalkdj@c.com', '$2y$10$qvWHqOn5Q8boTGiogm7qPOTvhtLZQ/KLLq40U33lDNEYR0zOe4ani', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:51:12', '2018-10-28 02:51:12', NULL, '0', 0, 0, 0),
(49, '', 'User', 'aldklksdjalkj', 'kdajhdkajh', 'dakjsdlakdj@cjc.com', '$2y$10$WyqHJQmNk7xydJBAxZym4ueHJ7yqoMhE9wBygtY.cfemVGhJdwiQC', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:54:40', '2018-10-28 02:54:40', NULL, '0', 0, 0, 0),
(50, '', 'User', 'kdajhdakjhd', 'akdhakjdh', 'dkajhdkajhdc@cjc.com', '$2y$10$Lv6YeVZyrmq5LA2eFBCnTe.Z66uml6zmVQLgIU.WA7VCBnDZyA1MK', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:55:05', '2018-10-28 02:55:05', NULL, '0', 0, 0, 0),
(51, '', 'User', 'aksjdhalskdh', 'dakjhdakjdh', 'dalkdj@ck.com', '$2y$10$2cRxTve9o.Gx0P3EWP74tuAIkAuRdAiobTnm4QMgkKr7F8ufOMKkS', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 02:59:40', '2018-10-28 02:59:40', NULL, '0', 0, 0, 0),
(52, '', 'User', 'alskdjalksdj', 'kajdhkahd', 'aidhakjhsdkh@com.com', '$2y$10$IZQaSiZfgJYNZFKJFOlJqeF2YAon5dqRpTBWhuvujFNGVS2J6KIZi', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:00:29', '2018-10-28 03:00:29', NULL, '0', 0, 0, 0),
(53, '', 'User', 'asdkjaldkjaldj', 'akjdhsajkd', 'thep@com.com', '$2y$10$Jzg.C.MJ4.vvQaR5.UpGjuMyOAEuArNrIpu7lKZWw133skGinxXRu', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:04:19', '2018-10-28 03:04:19', NULL, '0', 0, 0, 0),
(54, '', 'User', 'alskdjaldj', 'kadjhdakjhd', 'kajsdhajdh@com.co', '$2y$10$9nMHcdBVWPASySUdcomAfuPaZfV.CVkqMkdzyqYbN62vmpLC6oJDO', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:05:09', '2018-10-28 03:05:09', NULL, '0', 0, 0, 0),
(55, '', 'User', 'lakdsjlajd', 'kahdkjhsd', 'aksdjhaskjdh!@com.com', '$2y$10$z2Yqdl6J/6RCjeSrm42PWOY7w8Cg/SHKK4UjFuaiCUXqduZ43FZTC', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:07:51', '2018-10-28 03:07:51', NULL, '0', 0, 0, 0),
(56, '', 'User', 'dkajhdkjh', 'akjdhkjha', 'dkajshdkasjhd@ckn.com', '$2y$10$1jUpIkbW6R8Q2V./xYny8eWY891sgtQHI3.FuZIkxh/V79c8x/Azi', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:17:51', '2018-10-28 03:17:51', NULL, '0', 0, 0, 0),
(57, '', 'User', 'hello', ' ', 'kajdh@com.com', '$2y$10$69dWpatshDrL3wKwOKTsSegtSD8R4o9V1TmgPk0oN6LB8Adp7UKVK', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:21:32', '2018-10-28 03:21:32', NULL, '0', 0, 0, 0),
(58, '', 'User', 'akjdhakjh', ' ', 'kajdhakjhd@cmc.com', '$2y$10$xa0VqD2KXPAsXHLTfYjtR..9jH1ojlMtLSICnQqZuqafNkSmp/zym', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-28 03:23:55', '2018-10-28 03:23:55', NULL, '0', 0, 0, 0),
(59, '', 'User', 'kajsdkajh', ' ', 'akjdshakhd@c.com', '$2y$10$St.89eG92KYxGHTa0FcJNuxosMRK6t1Ty.6YRdOJQfQ0GotGj68Xi', '', NULL, '45454545454544545', '', '', '', '', '', '', '', '', '', '', 'ygEa7EOeXIIeaNSE77q2LdMNnF9zxq4IhsWa5pxBdV8GzDVODK0Fdl6pq2CH', '2018-10-28 03:25:37', '2018-10-28 04:39:26', NULL, '0', 0, 0, 0),
(60, '', 'User', 'Chinmoy', ' ', 'drchinmoyhazarika@gmail.com', '$2y$10$ljZKikewfS.sxK4/1dEgceO0QIqVN4WZT2XZN7jB/w7YwU9JxMw5i', '', NULL, '07896646246', '', '', '', '', '', '', '', '', '', '', 'I587UFZJJ5YqWWof4HBL4kXfMfjhKLl4QAqLNLZKrxFwdKiw9Zfjjr7T8HWL', '2018-10-28 04:54:25', '2018-10-28 04:56:01', NULL, '0', 0, 0, 0),
(61, '', 'User', 'Simanta', ' ', 'laskdhlakhr@p.com', '$2y$10$uXry3hxsFkwSr5HQJRNOU.tEJBR65M86ilcBRcTUqsss9QWoNzkxy', '', NULL, '1921310923810938', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-29 03:44:32', '2018-10-29 03:44:32', NULL, '0', 0, 0, 0),
(62, '', 'User', 'adslk', ' ', 'kljakj@ckj.com', '$2y$10$zIvIsfE4fXtkoaO8MuiBouJxiCegrsyyyzhlFFRhMiQVuriQuAm8y', '', NULL, '113213123123', '', '', '', '', '', '', '', '', '', '', 'VVBoeH0wUmSzfv0UMmw7ho2fxA6oEZkZhXIqKBvi7toiiPeO9plAnaA9PAA7', '2018-11-03 02:02:54', '2018-11-03 02:07:26', NULL, '0', 0, 0, 0),
(63, '', 'User', 'asdkjalkdj', ' ', 'kdjshdkajh@alsdkj.com', '$2y$10$MUfiIM6zxqKIzaIT9Gy3lOJ1f42DRLDQUecWjwDADusIpIr3j4Vwy', '', NULL, '1203981038', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-03 03:53:02', '2018-11-03 03:53:02', NULL, '0', 0, 0, 0),
(64, '', 'User', 'asjdh', ' ', 'akjdshsd@ci.com', '$2y$10$u3qdT2E.rb6cuKfhulpeG.jvgd9roQYYydEYgoOgcIDwpWJwQjWMe', '', NULL, '123701923', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-03 03:54:53', '2018-11-03 03:54:53', 'Basic', '0', 0, 0, 0),
(65, '', 'User', 'akjsdhah', ' ', 'alsdjkalkj@kj.com', '$2y$10$wi00UnVmKla3FF5/r92JpuXHYo6l.yq5xC2KiZoPQBSAUwWQ0i3q2', '', NULL, '129837918273', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-03 03:55:30', '2018-11-03 03:55:30', 'Basic', '0', 0, 0, 0),
(66, '', 'Admin', 'Kabir', ' ', 'kabird1196@gmail.com', '$2y$10$mPSj8bGQD13ZRDMDzzW1tuhN1Y9Ph/ZSVzPN7WNPCF5EQm3.zBBjG', '', NULL, '8876721208', '', '', '', '', '', '', '', '', '', '', 'lINDpI74IEw1cnZ9135e1Uk414LNEhe35rBfvTeG9vIfcflCzERSlBOY17kN', '2018-11-13 02:48:57', '2019-09-02 08:21:59', 'Elite', 'Zirconia Crowns Procedure : 6000 , Implant Surgeries : 7000 , Preventive Dentistry Procedure : 4000 , Zirconia Crowns Procedure : 2000 , Teeth Whitening Procedure : 20000 , Teeth Whitening Procedure : 50000 , Teeth Whitening Procedure : 50000 , Implant Retained Dentures Procedure : 30000 , Oral Rehabilitation : 40000 , Dental Extractions Procedure : 20000 , Toothache Treatment : 4000 , Fillings Procedure : 1500 , Implant Tooth Fixing Procedure : 1000 , Fillings Procedure : 3000 , Implant Tooth Fixing Procedure : 35000 , Fillings Procedure : 1200 , Implant Tooth Fixing Procedure  : 35000 , Dental Extractions Procedure : 2000 , Fillings Procedure : 21000 , Dental Extractions Procedure : 15000 , ', 200, 67, 11),
(67, '', 'User', 'alsdjkh', ' ', 'skjdh@kclh.com', '$2y$10$XSC382pBsjWsXqsNobppiuOKWOas/GP.T3BN2KkLwhIgObmVIw1xC', '', NULL, '0090909099090909', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-13 03:15:15', '2018-11-13 03:15:15', 'Basic', '0', 0, 0, 0),
(68, '', 'User', 'kajshdkj', ' ', 'ksgdkasjg@jhk.com', '$2y$10$VcN6qiXL09vt05TpaWtpV.6M0XbUOWWJjs2aQy8yvrYEuSg7L824C', '', NULL, '8763827364872364', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-14 00:47:36', '2018-11-14 00:47:36', 'Basic', '0', 0, 0, 0),
(69, '', 'User', 'ksjdhakjshd', ' ', 'akjdhakjsdh@m.com', '$2y$10$yi2UYy52zFih/IZaFtDDyO1ECJwOq2PBl4PEF34wBLBYC9KhmJVgm', '', NULL, '1826912837', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-14 08:22:14', '2018-11-14 08:22:14', 'Basic', '0', 0, 0, 0),
(70, '', 'User', 'tanya', ' ', 'ksjdgkgjd@khg.com', '$2y$10$esKLqCftNQ3wZ5T5ih/tY.K9a/zyiy05k4b.eBKf2o1GuMdeBAjOO', '', NULL, '6767676767676', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-15 05:15:45', '2018-11-15 05:15:45', 'Basic', '0', 0, 0, 0),
(71, '', 'User', 'tanya1', ' ', 'ksjhdkadjhf@cmom.com', '$2y$10$dRbdoNH3zVtYvMFfMOYP6.vxaTpgY3OWN69uAA0U4ogABgDzDQHg.', '', NULL, '76766676767676', '', '', '', '', '', '', '', '', '', '', NULL, '2018-11-15 05:16:13', '2018-11-15 05:16:13', 'Basic', '0', 0, 0, 0),
(72, '', 'User', 'New ', ' ', 'aldkdlah@dsdj.com', '$2y$10$w3.rP.Q4AP2aMigK/hKBmesnVnoyjzObi62OSPneNjo.D4x6rYKVy', '', NULL, '090000000', '', '', '', '', '', '', '', '', '', '', 'AeRXt3tLIDvC0vPCl1kDjC7hLR8KglJjT0H6PtYlrY2spq5CMxXAgsloG4Cj', '2018-11-25 00:36:58', '2018-11-25 05:44:39', 'Basic', 'Sealant Treatment : 2000 , Sealant Treatment : 20000 , Tooth Veneers ProcedurePeriodontal Flap Surgery : 10000 , Sealant Treatment : 10000 , ', 0, 0, 0),
(73, '', 'User', 'akdjh', ' ', 'aldadh@cklj.com', '$2y$10$P1gx2tpKr5SndOMoAcOIp.M9IefrCbhGxYfQHeogjPWYlzDQDcXim', '', NULL, '100000010000', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 00:41:50', '2018-12-14 00:41:50', 'Basic', '', 0, 66, 0),
(74, '', 'User', 'askdjalskjd', ' ', 'alkdja@jc.com', '$2y$10$CX8IadCFsWcLiawnQupNT..6ELJIaG0iaHbyV/po35Z1iMRzc8iDC', '', NULL, '0230230240', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 00:52:36', '2018-12-14 00:54:05', 'Basic', '', 0, 1, 0),
(75, '', 'User', 'asdjhasd', ' ', 'akjdh@cij.com', '$2y$10$tr.lxz5vu0uDQC29QZpbsecNdo6ak8gwT5WZ/pAzzTVEEytgZ1T.i', '', NULL, '45458989889', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 00:54:05', '2018-12-14 00:54:05', 'Basic', '', 0, 66, 0),
(76, '', 'User', 'alkdjallkh', ' ', 'LSDHK@kj.com', '$2y$10$npzw0p7cfz1kNp8P0Dv47ekhXyQp6hF00N59ijEXGQPgVmHTfa0m2', '', NULL, '77777777777', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 01:05:27', '2018-12-14 01:05:27', 'Basic', '', 0, 66, 0),
(77, '', 'User', 'akdjh', ' ', 'kajdh@kj.com', '$2y$10$L2UolSwFDn7Zfq1jNNyAmuSTdl7O9bGQx9xGKkDxYe//7QuxgtEk2', '', NULL, '7717171717', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 01:08:41', '2018-12-14 01:08:41', 'Basic', '', 0, 66, 0),
(78, '', 'User', 'asdljh', ' ', 'ahkjdsha@jc.com', '$2y$10$EKiHJzuc9jtFzl7ApW1btuyNc0XAT9AZCdYqC3JAkC5SB3n169FUS', '', NULL, '872493843', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 01:12:05', '2018-12-14 01:12:05', 'Basic', '', 0, 66, 0),
(79, '', 'User', 'asdjhla', ' ', 'ljsadhlash@kc.com', '$2y$10$82DU9mk2R.65mJQfi.C8w.caBzaIXizz0cTBPFWrKMG0kpD6VWDSS', '', NULL, '923701983', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 01:16:53', '2018-12-14 01:16:53', 'Basic', '', 0, 66, 0),
(80, '', 'User', 'lambda', ' ', 'ksflaskdj@lkj.com', '$2y$10$VVOce2.qbmI9HC1VX4v7UuIHsuPYbGWzoUuxAEJQwyKvUhNKA/vKW', '', NULL, '12345678', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 02:36:58', '2018-12-14 02:36:58', 'Basic', '', 0, 66, 0),
(81, '', 'User', 'asldjhlkDHALSKDJL', ' ', 'jdaksld@lask.com', '$2y$10$o5uRrJFowYnFG.U0QQIB1O/sUn/MyIOiH4jmfSog4AVgBgcHvdtH.', '', NULL, '81731923898', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 02:38:28', '2018-12-14 02:38:28', 'Basic', '', 0, 66, 0),
(82, '', 'User', 'aksjdh', ' ', 'aojdo@k.com', '$2y$10$ijc5JSEYWC8qcIT5XoSaw.qPNHJXFhS6lYT6V2LBs.v7g9eBIgj.O', '', NULL, '9284091283', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 02:39:48', '2018-12-14 02:39:48', 'Basic', '', 0, 66, 0),
(83, '', 'User', 'aksfjakj', ' ', 'aldjslad@kk.com', '$2y$10$mZ/mgYjN06Xez9YaI9nqMuGgMrz1r9yIz9Zk2EPppDleuybaaDPSW', '', NULL, '92391238183', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 10:22:12', '2018-12-14 10:22:12', 'Basic', '', 0, 66, 0),
(84, '', 'User', 'ksdjak', ' ', 'ksjdkdj@jj.com', '$2y$10$f51wQah/JnsaLFcft0W1v.8t98EGpyEd7kjvXbXlMGt2wdpZEHsXS', '', NULL, '7273723', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-14 10:23:02', '2018-12-14 10:23:02', 'Basic', '', 0, 66, 0),
(85, '', 'User', 'alksdjalskjd', ' ', 'alksdjaslkdj@kj.com', '$2y$10$Wi6lDm0sBN.7ov4vf721dOFPNyv9ddor4tLKhhU6x1DeLwr5i.8TK', '', NULL, '98789987897', '', '', '', '', '', '', '', '', '', '', 'W06UmMzNLqVWIPxAXe2IAGxOjcqjC2MUEfOHaEHIJ2oBXMS2Ti6tFFeCP7wm', '2018-12-14 10:57:44', '2018-12-14 11:10:09', 'Basic', '', 0, 66, 2),
(86, '', 'User', 'someone', ' ', 'daljsdha@kh.com', '$2y$10$p4ViXQkpXTI1tTKZfmRl0u8jNSyYwrEOEcQATKl7praLj751bdUm6', '', NULL, '7676767676', '', '', '', '', '', '', '', '', '', '', 'rDw1HapMFCcdFhE7DX5W37YHF8oNKI2eX379avBln5EYOBBmh8BWe7AxK9Eg', '2018-12-14 11:02:21', '2018-12-14 11:02:44', 'Basic', '', 0, 85, 0),
(87, '', 'User', 'asdlkhasldjh', ' ', 'lkhalsdkhasld@asd.com', '$2y$10$xrlK4qWrmRZpaSY8wIF7y.vBV6MFE5z2aA4UpuSvZs2Up6bzQzkxa', '', NULL, '7696987987978', '', '', '', '', '', '', '', '', '', '', 'qgktBNQweS6WQFjRnPED657RYB8UVIG1MTLILnGPbIrD6ugeQyldTFzPTV15', '2018-12-14 11:10:09', '2018-12-14 11:10:20', 'Basic', '', 0, 85, 0),
(88, '', 'User', 'Chinmoy', ' ', 'drchinmoyhazarika@gmailasd.com', '$2y$10$7JhCSyckWycUOr6ks7mVcunzOBmeenu0LfEHVjAJ3SJrMy7gVbvmi', '', NULL, '07896646246', '', '', '', '', '', '', '', '', '', '', NULL, '2018-12-31 03:07:47', '2018-12-31 03:07:47', 'Basic', '', 0, 66, 0),
(89, '', 'User', 'Chinmoy', ' ', 'drchinmoyhazarika@gmail2.com', '$2y$10$Xi2JaBGTygWJT8jCohp/v.QjbF.Ujeqfc4YQepkkVeOs9.jkfyCTG', '', NULL, '090909090909', '', '', '', '', '', '', '', '', '', '', 'IGvrHzA83KwYbWT1tfSdNI9palamoiPKshPy5yxKYXZwTCUNnA0bdcCLdRfR', '2018-12-31 03:09:24', '2018-12-31 03:14:03', 'Basic', '', 0, 66, 0),
(90, '', 'User', 'TESTsome', ' ', 'alksdj@kjsd.com', '$2y$10$BBzTSXHlZZRFIECnzPI.MOpnkUxPq/Za.gshKHfxcOiSSl/GXw3ca', '', NULL, '112211221122', '', '', '', '', '', '', '', '', '', '', NULL, '2019-01-01 05:24:33', '2019-01-01 05:24:33', 'Basic', '', 0, 66, 0),
(91, '', 'User', 'Dr. Chinmoy Hazarika', ' ', 'abc@gmail.com', '$2y$10$DAt8BzwKWRv.46NObQSxlOk2av3YrcahXCUdL0AZfDufIyLSvJ0SO', '', NULL, '8822215976', '', '', '', '', '', '', '', '', '', '', 'SqWnrSHjjyNYy2Rh6Pe4WOnfvdMg8wMHvWG8wzmNhX49mYKpwOuRdyxIRg8Z', '2019-01-01 06:37:55', '2019-01-26 07:05:22', 'Elite', '', 0, 66, 0),
(92, '', 'User', 'Kabir', ' ', 'kabird1196@gmai232323.com', '$2y$10$Xx9lhb4dQHnomqvKxV3udegQj4XkOWhcgQiLs6So4aZ2v1A7eY9K2', '', NULL, '8876721208', '', '', '', '', '', '', '', '', '', '', 'cglB4C8zUCaI7NafZOwTR2YGX50g19iJ4Jp0PNO0VtTCL0u53qEjCPeVzRrv', '2019-01-01 07:49:01', '2019-01-01 07:49:26', 'Basic', '', 0, 66, 0),
(93, '', 'User', 'sadiuenjjk', ' ', 'kabird1196@gmaasdil.com', '$2y$10$hy3ESgDJJ540neruvvv6i.IEFCme0ggnAqCgC8sDIroyVy0Ih8F0q', '', NULL, '08876721208', '', '', '', '', '', '', '342', '', '', '', 'W5qLOG482llUVsbk7PM5sZQL7UEV9ml69un019iMETzBtq7v4gaz88crlteV', '2019-01-07 05:45:24', '2019-01-26 10:41:21', 'Basic', '', 0, 66, 0),
(94, '', 'User', 'asdklh', ' ', 'dlkshdaslkdh@fak.com', '$2y$10$ykj.GQldGo3oAmvlnXevuu0UxtL6xC4oTv60xk8L0fLmsGhx5xixq', '', NULL, 'kshdalkd', '', '', '', '', '', '', '3241', '', '', '', NULL, '2019-01-07 07:43:35', '2019-01-07 07:43:35', 'Basic', '', 0, 66, 0),
(95, '', 'User', 'test doctor', ' ', 'ajsd@polo.com', '$2y$10$46jU4ZIqD3W.Pz1m5Bljz.kgIU3pXy/ZKVufo7u1UDo1HHjEd7ENe', '', NULL, '8876721208', '', '', 'dighalipukhuri, ghy -01', '', '', '', '362', '', '', '', '5eQPLeavnGULT4CNaPBaexjNnZTlt5qkfhFEzFOdKARy9r43IWvt5F8yG3qj', '2019-01-07 08:10:45', '2019-01-07 09:11:30', 'Basic', '', 0, 66, 0),
(96, '', 'User', 'asd,mnasldn', ' ', 'lksadlaksj@lksd.com', '$2y$10$FU2yQ3yOLjgmHQNRh3dWbe3apTlfFSB1VFLSQ3UR/UUIEf14inm8W', '', NULL, '12983912873', '', '', 'kjlkj', '', '', '', '2134', '', '', '', NULL, '2019-01-11 08:12:41', '2019-01-11 08:12:41', 'Basic', '', 0, 66, 0),
(97, '', 'User', 'sllksdhalksdj', ' ', 'alsdjhalskjd@lk.com', '$2y$10$kGOUFe54Z1GjYYO05XKFc.6cP4soiU8dMP5YBcctVJ3bSRw8A1L2a', '', NULL, '1241249898', '', '', 'ksajdhlh', '', '', '', '29389', '', '', '', NULL, '2019-01-11 08:18:18', '2019-01-11 08:18:18', 'Basic', '', 0, 34, 0),
(98, '', 'User', 'asjdhalh', ' ', 'laksdh@ljskad.com', '$2y$10$SQlc0giAmpRjXZ1VapLkQ.CptDa2Gv16FBxIIYc2Ch67L9Yt1cJoK', '', NULL, '812327397', '', '', 'lkhdalskdh', '', '', '', '19392', '', '', '', NULL, '2019-01-11 08:22:32', '2019-01-11 08:22:32', 'Basic', '', 0, 66, 0),
(99, '', 'User', 'akjsdhlkj', ' ', 'laksdj@ljh.com', '$2y$10$RQmnGxkO9vke5ZQmzXUJLOrABCNQ0/lbrl18RaA5lRByk5gZTAib2', '', NULL, '18723092183', '', '', 'kladlaskhd', '', '', '', '8739', '', '', '', NULL, '2019-01-11 08:24:07', '2019-01-11 08:24:07', 'Basic', '', 0, 66, 0),
(100, '', 'User', 'Dr. Tomato Das', ' ', 'alksdj@dlh.com', '$2y$10$MUc35e3oDHUtEgvqJrW7fuKdZeh2L4gh7QDUJwnwzvgBSRSf7S8Ge', '', NULL, '019283019283', '', '', 'guwahati, assam', '', '', '', '12938', '', '', '', 'bQQtgwmh5zwYB95klfL4ffBBGN0vrrBmuXscwmnwlSV165kymQyN3jDh8Rxh', '2019-01-26 08:44:53', '2019-01-26 10:40:57', 'Exclusive', '', 0, 66, 0),
(101, '', NULL, '', '', 'kabird11961196@gmail.com', '$2y$10$JvCkwpw0uekttGHNIMAt3.GzRM.lsS3HRbsKGI.ypSppdQbgzMR5C', '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, '2019-08-20 04:14:57', '2019-08-20 04:14:57', NULL, '', 0, 0, 0),
(102, '', 'Operator', '', '', 'kabird119611962@gmail.com', '$2y$10$1GyPLsEq4eTKluV2gb3caObDuiwiE3ThaBtfAXmUNGJKZsq6GHYSe', '', NULL, '', '', '', '', '', '', '', '', '', '', '', 'qt0MJ0Rv05zfuWvo7qtbWA1KwnLzQ3rv6HR7aZTWUjU6aUn7XsJ3jKTC0IGa', '2019-08-20 04:20:42', '2019-08-21 02:08:39', NULL, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`created_at`);

--
-- Indexes for table `ambulance_details`
--
ALTER TABLE `ambulance_details`
  ADD PRIMARY KEY (`ambulance_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icu_details`
--
ALTER TABLE `icu_details`
  ADD UNIQUE KEY `created_at` (`created_at`);

--
-- Indexes for table `icu_queries`
--
ALTER TABLE `icu_queries`
  ADD PRIMARY KEY (`created_at`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_reviews`
--
ALTER TABLE `listings_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_gallery`
--
ALTER TABLE `listing_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `listings_reviews`
--
ALTER TABLE `listings_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `listing_gallery`
--
ALTER TABLE `listing_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;