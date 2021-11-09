-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2021 at 07:00 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devinfo_cooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_entry`
--

CREATE TABLE `wp_cgf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_entry_meta`
--

CREATE TABLE `wp_cgf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `item_index` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_entry_notes`
--

CREATE TABLE `wp_cgf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_form`
--

CREATE TABLE `wp_cgf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cgf_form`
--

INSERT INTO `wp_cgf_form` (`id`, `title`, `date_created`, `date_updated`, `is_active`, `is_trash`) VALUES
(1, 'Reservation form', '2021-05-01 03:49:05', NULL, 1, 0),
(2, 'user reg', '2021-05-02 08:08:16', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_form_meta`
--

CREATE TABLE `wp_cgf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cgf_form_meta`
--

INSERT INTO `wp_cgf_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{\"title\":\"Reservation form\",\"description\":\"Actually restaurant table booking form \",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"text\",\"id\":4,\"label\":\"Name of your party\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"phone\",\"id\":2,\"label\":\"Phone\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"phoneFormat\":\"international\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"email\",\"id\":3,\"label\":\"Email\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false},{\"type\":\"number\",\"id\":6,\"label\":\"Your Contact Number\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"numberFormat\":\"decimal_dot\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Your Contact Number\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"enableCalculation\":false,\"rangeMin\":\"\",\"rangeMax\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"select\",\"id\":5,\"label\":\"Time of booking\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"choices\":[{\"text\":\"12pm\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t12:30pm\",\"value\":\"12pm\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t12:30pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"1pm\",\"value\":\"1pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"1:30pm\\t\\t\\t\\t\\t\\t\\t\\t\\t6pm\",\"value\":\"1:30pm\\t\\t\\t\\t\\t\\t\\t\\t\\t6pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"6:30pm\",\"value\":\"6:30pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"7pm\",\"value\":\"7pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"7:30pm\",\"value\":\"7:30pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"8pm\",\"value\":\"8pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"8:30pm\",\"value\":\"8:30pm\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"9pm\",\"value\":\"9pm\",\"isSelected\":false,\"price\":\"\"}],\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Please Choose...\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePrice\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"select\",\"id\":7,\"label\":\"HOW MANY PEOPLE IN YOUR PARTY?\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"choices\":[{\"text\":\"1\",\"value\":\"1\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"2\",\"value\":\"2\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"3\",\"value\":\"3\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"4\",\"value\":\"4\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"5\",\"value\":\"5\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"6\",\"value\":\"6\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"7\",\"value\":\"7\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"8\",\"value\":\"8\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"9\",\"value\":\"9\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Others\",\"value\":\"Others\",\"isSelected\":false,\"price\":\"\"}],\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Please Choose....\",\"cssClass\":\"grid-50 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePrice\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"textarea\",\"id\":8,\"label\":\"Optional Message\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"grid-100 tablet-grid-50 mobile-grid-100\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"form_id\":\"\",\"useRichTextEditor\":false,\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"}],\"version\":\"2.4.23\",\"id\":1,\"nextFieldId\":9,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}', NULL, '{\"608ccfb1d55ad\":{\"id\":\"608ccfb1d55ad\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"608ccfb1a3853\":{\"id\":\"608ccfb1a3853\",\"isActive\":true,\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}'),
(2, '{\"title\":\"user reg\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"name\",\"id\":1,\"label\":\"Name\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"nameFormat\":\"advanced\",\"inputs\":[{\"id\":\"1.2\",\"label\":\"Prefix\",\"name\":\"\",\"choices\":[{\"text\":\"Dr.\",\"value\":\"Dr.\"},{\"text\":\"Miss\",\"value\":\"Miss\"},{\"text\":\"Mr.\",\"value\":\"Mr.\"},{\"text\":\"Mrs.\",\"value\":\"Mrs.\"},{\"text\":\"Ms.\",\"value\":\"Ms.\"},{\"text\":\"Prof.\",\"value\":\"Prof.\"},{\"text\":\"Rev.\",\"value\":\"Rev.\"}],\"isHidden\":true,\"inputType\":\"radio\"},{\"id\":\"1.3\",\"label\":\"First\",\"name\":\"\"},{\"id\":\"1.4\",\"label\":\"Middle\",\"name\":\"\",\"isHidden\":true},{\"id\":\"1.6\",\"label\":\"Last\",\"name\":\"\"},{\"id\":\"1.8\",\"label\":\"Suffix\",\"name\":\"\",\"isHidden\":true}],\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":\"\",\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"pageNumber\":1,\"fields\":\"\"},{\"type\":\"phone\",\"id\":2,\"label\":\"Phone\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"phoneFormat\":\"standard\",\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":\"\",\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"pageNumber\":1,\"fields\":\"\"},{\"type\":\"address\",\"id\":3,\"label\":\"Address\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"addressType\":\"international\",\"inputs\":[{\"id\":\"3.1\",\"label\":\"Street Address\",\"name\":\"\"},{\"id\":\"3.2\",\"label\":\"Address Line 2\",\"name\":\"\"},{\"id\":\"3.3\",\"label\":\"City\",\"name\":\"\"},{\"id\":\"3.4\",\"label\":\"State \\/ Province\",\"name\":\"\"},{\"id\":\"3.5\",\"label\":\"ZIP \\/ Postal Code\",\"name\":\"\"},{\"id\":\"3.6\",\"label\":\"Country\",\"name\":\"\"}],\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":\"\",\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"defaultCountry\":\"\",\"defaultProvince\":\"\",\"copyValuesOptionLabel\":\"\",\"productField\":\"\",\"hideCountry\":\"\",\"defaultState\":\"\",\"hideState\":\"\",\"hideAddress2\":\"\",\"enableCopyValuesOption\":\"\",\"copyValuesOptionDefault\":\"\",\"pageNumber\":1,\"fields\":\"\"}],\"version\":\"2.4.23\",\"id\":2,\"nextFieldId\":4,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}', NULL, '{\"608e5df156358\":{\"id\":\"608e5df156358\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"608e5df1382ef\":{\"id\":\"608e5df1382ef\",\"isActive\":true,\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_form_revisions`
--

CREATE TABLE `wp_cgf_form_revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cgf_form_view`
--

CREATE TABLE `wp_cgf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cgf_form_view`
--

INSERT INTO `wp_cgf_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2021-05-02 03:00:05', '', 1),
(2, 1, '2021-05-04 03:14:23', '', 1),
(3, 1, '2021-05-05 03:38:02', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_clinks`
--

CREATE TABLE `wp_clinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_coptions`
--

CREATE TABLE `wp_coptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_coptions`
--

INSERT INTO `wp_coptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/coocking', 'yes'),
(2, 'home', 'http://localhost/coocking', 'yes'),
(3, 'blogname', 'cooking', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'coocking@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '9', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:71:\"woocommerce-gravityforms-product-addons/gravityforms-product-addons.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cooking', 'yes'),
(41, 'stylesheet', 'cooking', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1634629046', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_cuser_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:11:{i:1620200261;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620200268;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620200287;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620200305;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620200504;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620200809;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620200821;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620206095;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620276413;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620373069;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619325048;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(131, 'finished_updating_comment_type', '1', 'yes'),
(132, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.3\";s:7:\"version\";s:5:\"5.6.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1620185879;s:15:\"version_checked\";s:5:\"5.5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(133, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"coocking@gmail.com\";s:7:\"version\";s:5:\"5.5.4\";s:9:\"timestamp\";i:1619077252;}', 'no'),
(143, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(146, 'recently_activated', 'a:1:{s:27:\"woocommerce/woocommerce.php\";i:1619849253;}', 'yes'),
(196, 'current_theme', 'Cooking Restuarent theme', 'yes'),
(197, 'theme_mods_cooking', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(198, 'theme_switched', '', 'yes'),
(199, 'recovery_mode_email_last_sent', '1619325050', 'yes'),
(202, 'acf_version', '5.9.5', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(235, 'options_site_small_title', '', 'no'),
(236, '_options_site_small_title', 'field_60864bf6a2e0d', 'no'),
(237, 'options_site_favicon_icon', '', 'no'),
(238, '_options_site_favicon_icon', 'field_60864c08a2e0e', 'no'),
(239, 'options_site_header_logo', '31', 'no'),
(240, '_options_site_header_logo', 'field_60864c1ba2e0f', 'no'),
(241, 'options_site_author', '', 'no'),
(242, '_options_site_author', 'field_60864c3ba2e10', 'no'),
(243, 'options_fb_apps_id', '', 'no'),
(244, '_options_fb_apps_id', 'field_60864c4ba2e11', 'no'),
(245, 'options_site_contact_email', '', 'no'),
(246, '_options_site_contact_email', 'field_60864c5fa2e12', 'no'),
(247, 'options_site_copyright_content', '', 'no'),
(248, '_options_site_copyright_content', 'field_60864c74a2e13', 'no'),
(249, 'options_meta_keyword', '', 'no'),
(250, '_options_meta_keyword', 'field_60864c86a2e14', 'no'),
(251, 'options_meta_description', '', 'no'),
(252, '_options_meta_description', 'field_60864c96a2e15', 'no'),
(253, 'options_site_share_image', '', 'no'),
(254, '_options_site_share_image', 'field_60864ca5a2e16', 'no'),
(255, 'options_site_google_verification', '', 'no'),
(256, '_options_site_google_verification', 'field_60864cb7a2e17', 'no'),
(257, 'options_bing_site_verification', '', 'no'),
(258, '_options_bing_site_verification', 'field_60864cd4a2e18', 'no'),
(259, 'options_google_analytics', '', 'no'),
(260, '_options_google_analytics', 'field_60864ce2a2e19', 'no'),
(261, 'options_google_meta', '', 'no'),
(262, '_options_google_meta', 'field_60864cf2a2e1a', 'no'),
(265, 'options_header_slider_image_0_slider_image', '43', 'no'),
(266, '_options_header_slider_image_0_slider_image', 'field_60865d4e4e070', 'no'),
(267, 'options_header_slider_image_1_slider_image', '44', 'no'),
(268, '_options_header_slider_image_1_slider_image', 'field_60865d4e4e070', 'no'),
(269, 'options_header_slider_image_2_slider_image', '45', 'no'),
(270, '_options_header_slider_image_2_slider_image', 'field_60865d4e4e070', 'no'),
(271, 'options_header_slider_image', '3', 'no'),
(272, '_options_header_slider_image', 'field_60865d094e06f', 'no'),
(273, 'options_header_slogan_text', 'Come on in', 'no'),
(274, '_options_header_slogan_text', 'field_60865d634e071', 'no'),
(275, 'options_header_slider_text', '5', 'no'),
(276, '_options_header_slider_text', 'field_60865d7b4e072', 'no'),
(277, 'options_header_social_icon_header_fb_link', '#', 'no'),
(278, '_options_header_social_icon_header_fb_link', 'field_60865dc54e075', 'no'),
(279, 'options_header_social_icon_header_twiiter_link', '#', 'no'),
(280, '_options_header_social_icon_header_twiiter_link', 'field_60865e004e076', 'no'),
(281, 'options_header_social_icon_header_pintarest_link', '#', 'no'),
(282, '_options_header_social_icon_header_pintarest_link', 'field_60865e154e077', 'no'),
(283, 'options_header_social_icon_header_opentable_link', '', 'no'),
(284, '_options_header_social_icon_header_opentable_link', 'field_60865e284e078', 'no'),
(285, 'options_header_social_icon', '', 'no'),
(286, '_options_header_social_icon', 'field_60865da44e074', 'no'),
(287, 'options_header_slider_text_0_h_slider_text', 'Dine with us!', 'no'),
(288, '_options_header_slider_text_0_h_slider_text', 'field_60865d904e073', 'no'),
(289, 'options_header_slider_text_1_h_slider_text', 'Try the Wine!', 'no'),
(290, '_options_header_slider_text_1_h_slider_text', 'field_60865d904e073', 'no'),
(291, 'options_header_slider_text_2_h_slider_text', 'Bring the Family!', 'no'),
(292, '_options_header_slider_text_2_h_slider_text', 'field_60865d904e073', 'no'),
(293, 'options_header_slider_text_3_h_slider_text', 'Enjoy our Food!', 'no'),
(294, '_options_header_slider_text_3_h_slider_text', 'field_60865d904e073', 'no'),
(295, 'options_header_slider_text_4_h_slider_text', 'Have a Great Time!', 'no'),
(296, '_options_header_slider_text_4_h_slider_text', 'field_60865d904e073', 'no'),
(298, 'options_contact_information_footer_contact_title', 'CONTACT US', 'no'),
(299, '_options_contact_information_footer_contact_title', 'field_60866751e7eb7', 'no'),
(300, 'options_contact_information_footer_contact_text', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc.', 'no'),
(301, '_options_contact_information_footer_contact_text', 'field_6086676fe7eb8', 'no'),
(302, 'options_contact_information_footer_contact_mobile_no', '+0067 898 7658', 'no'),
(303, '_options_contact_information_footer_contact_mobile_no', 'field_60866782e7eb9', 'no'),
(304, 'options_contact_information_footer_contact_email', 'bookings@hungrytheme.net', 'no'),
(305, '_options_contact_information_footer_contact_email', 'field_60866798e7eba', 'no'),
(306, 'options_contact_information_footer_contact_address', '18, Stomach Ave. Foodville, USA', 'no'),
(307, '_options_contact_information_footer_contact_address', 'field_608667a8e7ebb', 'no'),
(308, 'options_contact_information', '', 'no'),
(309, '_options_contact_information', 'field_60866740e7eb6', 'no'),
(310, 'options_f_new_on_the_menu_footer_widget_two_title_', 'NEW ON THE MENU', 'no'),
(311, '_options_f_new_on_the_menu_footer_widget_two_title_', 'field_60866837e7ebe', 'no'),
(312, 'options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_image', '66', 'no'),
(313, '_options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_image', 'field_60866876e7ec0', 'no'),
(314, 'options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_title', 'ANGUS STEAK BURGER', 'no'),
(315, '_options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_title', 'field_608668a2e7ec1', 'no'),
(316, 'options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_small_title', 'Aenean commodo ligula eget.', 'no'),
(317, '_options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_small_title', 'field_608668aee7ec2', 'no'),
(318, 'options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_link', '#', 'no'),
(319, '_options_f_new_on_the_menu_footer_the_menu_description_0_footer_new_food_link', 'field_608668b9e7ec3', 'no'),
(320, 'options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_image', '67', 'no'),
(321, '_options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_image', 'field_60866876e7ec0', 'no'),
(322, 'options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_title', 'MEXICAN CHICKEN FAJITAS', 'no'),
(323, '_options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_title', 'field_608668a2e7ec1', 'no'),
(324, 'options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_small_title', 'Aenean commodo ligula eget.', 'no'),
(325, '_options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_small_title', 'field_608668aee7ec2', 'no'),
(326, 'options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_link', '#', 'no'),
(327, '_options_f_new_on_the_menu_footer_the_menu_description_1_footer_new_food_link', 'field_608668b9e7ec3', 'no'),
(328, 'options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_image', '68', 'no'),
(329, '_options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_image', 'field_60866876e7ec0', 'no'),
(330, 'options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_title', 'CHOCOLATE FUDGE CAKE ', 'no'),
(331, '_options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_title', 'field_608668a2e7ec1', 'no'),
(332, 'options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_small_title', 'Aenean commodo ligula eget.', 'no'),
(333, '_options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_small_title', 'field_608668aee7ec2', 'no'),
(334, 'options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_link', '#', 'no'),
(335, '_options_f_new_on_the_menu_footer_the_menu_description_2_footer_new_food_link', 'field_608668b9e7ec3', 'no'),
(336, 'options_f_new_on_the_menu_footer_the_menu_description', '3', 'no'),
(337, '_options_f_new_on_the_menu_footer_the_menu_description', 'field_6086684ae7ebf', 'no'),
(338, 'options_f_new_on_the_menu', '', 'no'),
(339, '_options_f_new_on_the_menu', 'field_608667b6e7ebc', 'no'),
(340, 'options_footer_opening_time_footer_opening_time_title', 'OPENING TIMES', 'no'),
(341, '_options_footer_opening_time_footer_opening_time_title', 'field_608668f4e7ec5', 'no'),
(342, 'options_footer_opening_time_opening_day_&_time_0_opening_day', 'Monday', 'no'),
(343, '_options_footer_opening_time_opening_day_&_time_0_opening_day', 'field_60866920e7ec7', 'no'),
(344, 'options_footer_opening_time_opening_day_&_time_0_opening_time', '5pm - 11pm', 'no'),
(345, '_options_footer_opening_time_opening_day_&_time_0_opening_time', 'field_60866935e7ec8', 'no'),
(346, 'options_footer_opening_time_opening_day_&_time_1_opening_day', 'Tuesday', 'no'),
(347, '_options_footer_opening_time_opening_day_&_time_1_opening_day', 'field_60866920e7ec7', 'no'),
(348, 'options_footer_opening_time_opening_day_&_time_1_opening_time', '5pm - 11pm', 'no'),
(349, '_options_footer_opening_time_opening_day_&_time_1_opening_time', 'field_60866935e7ec8', 'no'),
(350, 'options_footer_opening_time_opening_day_&_time_2_opening_day', 'Wednesday', 'no'),
(351, '_options_footer_opening_time_opening_day_&_time_2_opening_day', 'field_60866920e7ec7', 'no'),
(352, 'options_footer_opening_time_opening_day_&_time_2_opening_time', 'CLOSED', 'no'),
(353, '_options_footer_opening_time_opening_day_&_time_2_opening_time', 'field_60866935e7ec8', 'no'),
(354, 'options_footer_opening_time_opening_day_&_time_3_opening_day', 'Thursday', 'no'),
(355, '_options_footer_opening_time_opening_day_&_time_3_opening_day', 'field_60866920e7ec7', 'no'),
(356, 'options_footer_opening_time_opening_day_&_time_3_opening_time', '5pm - 11pm', 'no'),
(357, '_options_footer_opening_time_opening_day_&_time_3_opening_time', 'field_60866935e7ec8', 'no'),
(358, 'options_footer_opening_time_opening_day_&_time_4_opening_day', 'Friday', 'no'),
(359, '_options_footer_opening_time_opening_day_&_time_4_opening_day', 'field_60866920e7ec7', 'no'),
(360, 'options_footer_opening_time_opening_day_&_time_4_opening_time', '5pm - 11pm', 'no'),
(361, '_options_footer_opening_time_opening_day_&_time_4_opening_time', 'field_60866935e7ec8', 'no'),
(362, 'options_footer_opening_time_opening_day_&_time_5_opening_day', 'Saturday', 'no'),
(363, '_options_footer_opening_time_opening_day_&_time_5_opening_day', 'field_60866920e7ec7', 'no'),
(364, 'options_footer_opening_time_opening_day_&_time_5_opening_time', '5pm - 11pm', 'no'),
(365, '_options_footer_opening_time_opening_day_&_time_5_opening_time', 'field_60866935e7ec8', 'no'),
(366, 'options_footer_opening_time_opening_day_&_time_6_opening_day', 'Sunday', 'no'),
(367, '_options_footer_opening_time_opening_day_&_time_6_opening_day', 'field_60866920e7ec7', 'no'),
(368, 'options_footer_opening_time_opening_day_&_time_6_opening_time', '5pm - 11pm', 'no'),
(369, '_options_footer_opening_time_opening_day_&_time_6_opening_time', 'field_60866935e7ec8', 'no'),
(370, 'options_footer_opening_time_opening_day_&_time', '7', 'no'),
(371, '_options_footer_opening_time_opening_day_&_time', 'field_60866907e7ec6', 'no'),
(372, 'options_footer_opening_time', '', 'no'),
(373, '_options_footer_opening_time', 'field_608668cae7ec4', 'no'),
(374, 'options_footer_copyright_content', 'All Right Deserve Cooking Restaurant  ', 'no'),
(375, '_options_footer_copyright_content', 'field_60866949e7ec9', 'no'),
(383, 'options_about_section_title', 'About Us', 'no'),
(384, '_options_about_section_title', 'field_608682d5a602e', 'no'),
(385, 'options_about_left_small_image', '79', 'no'),
(386, '_options_about_left_small_image', 'field_60868326a602f', 'no'),
(387, 'options_about_left_big_image', '80', 'no'),
(388, '_options_about_left_big_image', 'field_60868367a6030', 'no'),
(389, 'options_about_us_small_title', 'IT STARTED, QUITE SIMPLY, LIKE THIS...', 'no'),
(390, '_options_about_us_small_title', 'field_60868379a6031', 'no'),
(391, 'options_about_us_description', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.  Aenean commodo ligula eget dolor aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt.', 'no'),
(392, '_options_about_us_description', 'field_60868385a6032', 'no'),
(393, 'options_about_learn_more_button_text', 'Learn More', 'no'),
(394, '_options_about_learn_more_button_text', 'field_60868392a6033', 'no'),
(395, 'options_about_learn_more_button_link', '#', 'no'),
(396, '_options_about_learn_more_button_link', 'field_608683b1a6034', 'no'),
(397, 'options_about_see_menu_button_text', 'See The Menu', 'no'),
(398, '_options_about_see_menu_button_text', 'field_608683bba6035', 'no'),
(399, 'options_about_see_menu_button_link', '#', 'no'),
(400, '_options_about_see_menu_button_link', 'field_608683cda6036', 'no'),
(415, 'options_what_customer_say_section_title', 'What our Customers Say', 'no'),
(416, '_options_what_customer_say_section_title', 'field_608795eeac5a5', 'no'),
(417, 'options_custer_say_details_0_clients_image', '87', 'no'),
(418, '_options_custer_say_details_0_clients_image', 'field_60879623ac5a7', 'no'),
(419, 'options_custer_say_details_0_clients_review_text', 'I strongly urge you to try the Chef\'s Special, You\'ll love it!', 'no'),
(420, '_options_custer_say_details_0_clients_review_text', 'field_608796a0ac5a8', 'no'),
(421, 'options_custer_say_details_0_clients_address', 'CHRISTINA FROM STOCKTON, CLEVELAND', 'no'),
(422, '_options_custer_say_details_0_clients_address', 'field_608796b4ac5a9', 'no'),
(423, 'options_custer_say_details_1_clients_image', '88', 'no'),
(424, '_options_custer_say_details_1_clients_image', 'field_60879623ac5a7', 'no'),
(425, 'options_custer_say_details_1_clients_review_text', 'Great Food. Great Staff. Great Service. Good Times!', 'no'),
(426, '_options_custer_say_details_1_clients_review_text', 'field_608796a0ac5a8', 'no'),
(427, 'options_custer_say_details_1_clients_address', 'JOHN FROM RED FALLS, COLORADO', 'no'),
(428, '_options_custer_say_details_1_clients_address', 'field_608796b4ac5a9', 'no'),
(429, 'options_custer_say_details_2_clients_image', '89', 'no'),
(430, '_options_custer_say_details_2_clients_image', 'field_60879623ac5a7', 'no'),
(431, 'options_custer_say_details_2_clients_review_text', 'The Entertainment was Top Notch!', 'no'),
(432, '_options_custer_say_details_2_clients_review_text', 'field_608796a0ac5a8', 'no'),
(433, 'options_custer_say_details_2_clients_address', 'LEONARD FROM PHOENIX, ARIZONA', 'no'),
(434, '_options_custer_say_details_2_clients_address', 'field_608796b4ac5a9', 'no'),
(435, 'options_custer_say_details_3_clients_image', '90', 'no'),
(436, '_options_custer_say_details_3_clients_image', 'field_60879623ac5a7', 'no'),
(437, 'options_custer_say_details_3_clients_review_text', 'Excellent food. Highly Recommended!', 'no'),
(438, '_options_custer_say_details_3_clients_review_text', 'field_608796a0ac5a8', 'no'),
(439, 'options_custer_say_details_3_clients_address', 'THERESA FROM BELLFLOWER, OREGON', 'no'),
(440, '_options_custer_say_details_3_clients_address', 'field_608796b4ac5a9', 'no'),
(441, 'options_custer_say_details', '4', 'no'),
(442, '_options_custer_say_details', 'field_6087960bac5a6', 'no'),
(443, 'options_cook_wine_title', 'I COOK WITH WINE SOMETIMES I EVEN ADD IT TO THE FOOD!', 'no'),
(444, '_options_cook_wine_title', 'field_60879b4e5d49e', 'no'),
(446, 'options_our_staff_title', 'Our Staff', 'no'),
(447, '_options_our_staff_title', 'field_60879c99a4e53', 'no'),
(448, 'options_our_staff_information_0_staff_image', '105', 'no'),
(449, '_options_our_staff_information_0_staff_image', 'field_60879d0aa4e55', 'no'),
(450, 'options_our_staff_information_0_staff_name', 'JOHN DOGGETT ', 'no'),
(451, '_options_our_staff_information_0_staff_name', 'field_60879d2ea4e56', 'no'),
(452, 'options_our_staff_information_0_staff_title', 'Head Chef', 'no'),
(453, '_options_our_staff_information_0_staff_title', 'field_60879d3fa4e57', 'no'),
(454, 'options_our_staff_information_0_staff_description', 'Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Aenean commodo ligula.', 'no'),
(455, '_options_our_staff_information_0_staff_description', 'field_60879d4ca4e58', 'no'),
(456, 'options_our_staff_information_0_staff_fb_link', '#', 'no'),
(457, '_options_our_staff_information_0_staff_fb_link', 'field_60879d63a4e59', 'no'),
(458, 'options_our_staff_information_0_staff_twitter_link', '#', 'no'),
(459, '_options_our_staff_information_0_staff_twitter_link', 'field_60879d76a4e5a', 'no'),
(460, 'options_our_staff_information_0_staff_instagram_link', '#', 'no'),
(461, '_options_our_staff_information_0_staff_instagram_link', 'field_60879d83a4e5b', 'no'),
(462, 'options_our_staff_information_1_staff_image', '106', 'no'),
(463, '_options_our_staff_information_1_staff_image', 'field_60879d0aa4e55', 'no'),
(464, 'options_our_staff_information_1_staff_name', 'JEFFREY SPENDER', 'no'),
(465, '_options_our_staff_information_1_staff_name', 'field_60879d2ea4e56', 'no'),
(466, 'options_our_staff_information_1_staff_title', 'Head Barman', 'no'),
(467, '_options_our_staff_information_1_staff_title', 'field_60879d3fa4e57', 'no'),
(468, 'options_our_staff_information_1_staff_description', 'Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Aenean commodo ligula.', 'no'),
(469, '_options_our_staff_information_1_staff_description', 'field_60879d4ca4e58', 'no'),
(470, 'options_our_staff_information_1_staff_fb_link', '#', 'no'),
(471, '_options_our_staff_information_1_staff_fb_link', 'field_60879d63a4e59', 'no'),
(472, 'options_our_staff_information_1_staff_twitter_link', '#', 'no'),
(473, '_options_our_staff_information_1_staff_twitter_link', 'field_60879d76a4e5a', 'no'),
(474, 'options_our_staff_information_1_staff_instagram_link', '#', 'no'),
(475, '_options_our_staff_information_1_staff_instagram_link', 'field_60879d83a4e5b', 'no'),
(476, 'options_our_staff_information_2_staff_image', '107', 'no'),
(477, '_options_our_staff_information_2_staff_image', 'field_60879d0aa4e55', 'no'),
(478, 'options_our_staff_information_2_staff_name', 'MONICA REYES', 'no'),
(479, '_options_our_staff_information_2_staff_name', 'field_60879d2ea4e56', 'no'),
(480, 'options_our_staff_information_2_staff_title', 'Waitress', 'no'),
(481, '_options_our_staff_information_2_staff_title', 'field_60879d3fa4e57', 'no'),
(482, 'options_our_staff_information_2_staff_description', 'Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Aenean commodo ligula.', 'no'),
(483, '_options_our_staff_information_2_staff_description', 'field_60879d4ca4e58', 'no'),
(484, 'options_our_staff_information_2_staff_fb_link', '#', 'no'),
(485, '_options_our_staff_information_2_staff_fb_link', 'field_60879d63a4e59', 'no'),
(486, 'options_our_staff_information_2_staff_twitter_link', '#', 'no'),
(487, '_options_our_staff_information_2_staff_twitter_link', 'field_60879d76a4e5a', 'no'),
(488, 'options_our_staff_information_2_staff_instagram_link', '#', 'no'),
(489, '_options_our_staff_information_2_staff_instagram_link', 'field_60879d83a4e5b', 'no'),
(490, 'options_our_staff_information', '3', 'no'),
(491, '_options_our_staff_information', 'field_60879cd8a4e54', 'no'),
(492, 'options_call_to_action_heading', ' Looky Here! This Slogan is Clickable Great for a Call-to-Action ', 'no'),
(493, '_options_call_to_action_heading', 'field_6087a0fe7dfa3', 'no'),
(494, 'options_photo_gallery_title', 'The Gallery', 'no'),
(495, '_options_photo_gallery_title', 'field_6087a48d706b6', 'no'),
(496, 'options_photo_gallery_image_0_gallery_image', '113', 'no'),
(497, '_options_photo_gallery_image_0_gallery_image', 'field_6087a4b3706b8', 'no'),
(498, 'options_photo_gallery_image_1_gallery_image', '114', 'no'),
(499, '_options_photo_gallery_image_1_gallery_image', 'field_6087a4b3706b8', 'no'),
(500, 'options_photo_gallery_image_2_gallery_image', '115', 'no'),
(501, '_options_photo_gallery_image_2_gallery_image', 'field_6087a4b3706b8', 'no'),
(502, 'options_photo_gallery_image_3_gallery_image', '116', 'no'),
(503, '_options_photo_gallery_image_3_gallery_image', 'field_6087a4b3706b8', 'no'),
(504, 'options_photo_gallery_image_4_gallery_image', '117', 'no'),
(505, '_options_photo_gallery_image_4_gallery_image', 'field_6087a4b3706b8', 'no'),
(506, 'options_photo_gallery_image_5_gallery_image', '118', 'no'),
(507, '_options_photo_gallery_image_5_gallery_image', 'field_6087a4b3706b8', 'no'),
(508, 'options_photo_gallery_image_6_gallery_image', '119', 'no'),
(509, '_options_photo_gallery_image_6_gallery_image', 'field_6087a4b3706b8', 'no'),
(510, 'options_photo_gallery_image_7_gallery_image', '120', 'no'),
(511, '_options_photo_gallery_image_7_gallery_image', 'field_6087a4b3706b8', 'no'),
(512, 'options_photo_gallery_image_8_gallery_image', '121', 'no'),
(513, '_options_photo_gallery_image_8_gallery_image', 'field_6087a4b3706b8', 'no'),
(514, 'options_photo_gallery_image_9_gallery_image', '122', 'no'),
(515, '_options_photo_gallery_image_9_gallery_image', 'field_6087a4b3706b8', 'no'),
(516, 'options_photo_gallery_image', '10', 'no'),
(517, '_options_photo_gallery_image', 'field_6087a49f706b7', 'no'),
(546, 'cptui_post_types', 'a:1:{s:13:\"coocking_blog\";a:30:{s:4:\"name\";s:13:\"coocking_blog\";s:5:\"label\";s:14:\"coocking_blogs\";s:14:\"singular_label\";s:13:\"coocking_blog\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(567, '_site_transient_timeout_browser_3651f072395347537c74089989c88a66', '1620290398', 'no'),
(568, '_site_transient_browser_3651f072395347537c74089989c88a66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(574, 'gf_db_version', '2.4.23', 'no'),
(575, 'rg_form_version', '2.4.23', 'no'),
(576, 'gform_enable_background_updates', '1', 'yes'),
(577, 'gform_pending_installation', '', 'yes'),
(578, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(579, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes');
INSERT INTO `wp_coptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(580, 'gform_version_info', 'a:10:{s:12:\"is_valid_key\";b:0;s:6:\"reason\";s:7:\"expired\";s:7:\"version\";s:6:\"2.4.24\";s:3:\"url\";s:0:\"\";s:15:\"expiration_time\";i:1583461950;s:9:\"offerings\";a:65:{s:12:\"gravityforms\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:6:\"2.4.24\";s:14:\"version_latest\";s:7:\"2.5.0.1\";}s:17:\"gravityforms-beta\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:8:\"2.5-rc-3\";s:14:\"version_latest\";s:8:\"2.5-rc-3\";}s:20:\"gravityforms-release\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:7:\"2.5.0.1\";s:14:\"version_latest\";s:7:\"2.5.0.1\";}s:21:\"gravityforms2checkout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:5:\"2.0.1\";}s:26:\"gravityformsactivecampaign\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.8\";s:14:\"version_latest\";s:3:\"1.8\";}s:32:\"gravityformsadvancedpostcreation\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:10:\"1.0-beta-7\";s:14:\"version_latest\";s:12:\"1.0-beta-7.2\";}s:20:\"gravityformsagilecrm\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";}s:24:\"gravityformsauthorizenet\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";}s:18:\"gravityformsaweber\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";}s:21:\"gravityformsbatchbook\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";}s:18:\"gravityformsbreeze\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";}s:27:\"gravityformscampaignmonitor\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";}s:20:\"gravityformscampfire\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.2\";}s:22:\"gravityformscapsulecrm\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.1\";}s:26:\"gravityformschainedselects\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";}s:31:\"gravityformschainedselects-beta\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:12:\"1.0-beta-1.3\";}s:23:\"gravityformscleverreach\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.7\";s:14:\"version_latest\";s:3:\"1.7\";}s:15:\"gravityformscli\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:3:\"1.4\";}s:27:\"gravityformsconstantcontact\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";}s:19:\"gravityformscoupons\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:3:\"3.0\";}s:17:\"gravityformsdebug\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta12\";}s:19:\"gravityformsdropbox\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:5:\"2.8.1\";}s:24:\"gravityformsdropbox-beta\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:12:\"2.0-beta-1.1\";}s:24:\"gravityformsemailoctopus\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:16:\"gravityformsemma\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";}s:22:\"gravityformsfreshbooks\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:5:\"2.7.1\";}s:23:\"gravityformsgetresponse\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.1\";}s:21:\"gravityformsgutenberg\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-rc-1.4\";s:14:\"version_latest\";s:10:\"1.0-rc-1.5\";}s:21:\"gravityformshelpscout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:4:\"1.15\";s:14:\"version_latest\";s:6:\"1.15.1\";}s:20:\"gravityformshighrise\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";}s:19:\"gravityformshipchat\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:19:\"gravityformshubspot\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.2\";}s:20:\"gravityformsicontact\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";}s:19:\"gravityformslogging\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";}s:19:\"gravityformsmadmimi\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";}s:21:\"gravityformsmailchimp\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.9\";s:14:\"version_latest\";s:3:\"4.9\";}s:19:\"gravityformsmailgun\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";}s:18:\"gravityformsmollie\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.1\";}s:26:\"gravityformspartialentries\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";}s:18:\"gravityformspaypal\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"3.5\";s:14:\"version_latest\";s:3:\"3.5\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:5:\"2.6.1\";}s:21:\"gravityformspaypalpro\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.4\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.3\";}s:17:\"gravityformspolls\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"3.8\";s:14:\"version_latest\";s:3:\"3.8\";}s:20:\"gravityformspostmark\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";}s:16:\"gravityformsppcp\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"2.0.1\";}s:21:\"gravityformsppcp-beta\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:10:\"2.0-beta-3\";s:14:\"version_latest\";s:10:\"2.0-beta-3\";}s:24:\"gravityformsppcp-release\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:5:\"2.0.1\";}s:16:\"gravityformsquiz\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";}s:19:\"gravityformsrestapi\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";}s:20:\"gravityformssendgrid\";a:3:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";}s:21:\"gravityformssignature\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"4.0\";s:14:\"version_latest\";s:5:\"4.0.2\";}s:17:\"gravityformsslack\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:18:\"gravityformssquare\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";}s:18:\"gravityformsstripe\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"4.0\";s:14:\"version_latest\";s:3:\"4.0\";}s:18:\"gravityformssurvey\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";}s:18:\"gravityformstrello\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";}s:18:\"gravityformstwilio\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";}s:28:\"gravityformsuserregistration\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"4.8\";s:14:\"version_latest\";s:3:\"4.8\";}s:20:\"gravityformswebhooks\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";}s:18:\"gravityformszapier\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"4.1\";s:14:\"version_latest\";s:3:\"4.1\";}s:23:\"gravityformszapier-beta\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:10:\"4.0-beta-2\";s:14:\"version_latest\";s:10:\"4.0-beta-2\";}s:19:\"gravityformszohocrm\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:4:\"1.12\";s:14:\"version_latest\";s:6:\"1.12.3\";}}s:9:\"is_active\";s:1:\"1\";s:12:\"product_code\";s:7:\"GFBASIC\";s:14:\"version_latest\";s:7:\"2.5.0.1\";s:9:\"timestamp\";i:1620186774;}', 'no'),
(585, 'rg_gforms_key', '70873e8580c9900986939611618d7b1e', 'yes'),
(586, 'rg_gforms_enable_akismet', '1', 'yes'),
(587, 'rg_gforms_currency', '', 'yes'),
(588, 'gform_enable_toolbar_menu', '1', 'yes'),
(618, 'category_children', 'a:0:{}', 'yes'),
(662, 'action_scheduler_hybrid_store_demarkation', '133', 'yes'),
(663, 'schema-ActionScheduler_StoreSchema', '3.0.1619844367', 'yes'),
(664, 'schema-ActionScheduler_LoggerSchema', '2.0.1619844367', 'yes'),
(667, 'woocommerce_schema_version', '430', 'yes'),
(668, 'woocommerce_store_address', '', 'yes'),
(669, 'woocommerce_store_address_2', '', 'yes'),
(670, 'woocommerce_store_city', '', 'yes'),
(671, 'woocommerce_default_country', 'GB', 'yes'),
(672, 'woocommerce_store_postcode', '', 'yes'),
(673, 'woocommerce_allowed_countries', 'all', 'yes'),
(674, 'woocommerce_all_except_countries', '', 'yes'),
(675, 'woocommerce_specific_allowed_countries', '', 'yes'),
(676, 'woocommerce_ship_to_countries', '', 'yes'),
(677, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(678, 'woocommerce_default_customer_address', 'base', 'yes'),
(679, 'woocommerce_calc_taxes', 'no', 'yes'),
(680, 'woocommerce_enable_coupons', 'yes', 'yes'),
(681, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(682, 'woocommerce_currency', 'GBP', 'yes'),
(683, 'woocommerce_currency_pos', 'left', 'yes'),
(684, 'woocommerce_price_thousand_sep', ',', 'yes'),
(685, 'woocommerce_price_decimal_sep', '.', 'yes'),
(686, 'woocommerce_price_num_decimals', '2', 'yes'),
(687, 'woocommerce_shop_page_id', '134', 'yes'),
(688, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(689, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(690, 'woocommerce_placeholder_image', '133', 'yes'),
(691, 'woocommerce_weight_unit', 'kg', 'yes'),
(692, 'woocommerce_dimension_unit', 'cm', 'yes'),
(693, 'woocommerce_enable_reviews', 'yes', 'yes'),
(694, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(695, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(696, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(697, 'woocommerce_review_rating_required', 'yes', 'no'),
(698, 'woocommerce_manage_stock', 'yes', 'yes'),
(699, 'woocommerce_hold_stock_minutes', '60', 'no'),
(700, 'woocommerce_notify_low_stock', 'yes', 'no'),
(701, 'woocommerce_notify_no_stock', 'yes', 'no'),
(702, 'woocommerce_stock_email_recipient', 'coocking@gmail.com', 'no'),
(703, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(704, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(705, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(706, 'woocommerce_stock_format', '', 'yes'),
(707, 'woocommerce_file_download_method', 'force', 'no'),
(708, 'woocommerce_downloads_require_login', 'no', 'no'),
(709, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(710, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(711, 'woocommerce_prices_include_tax', 'no', 'yes'),
(712, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(713, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(714, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(715, 'woocommerce_tax_classes', '', 'yes'),
(716, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(717, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(718, 'woocommerce_price_display_suffix', '', 'yes'),
(719, 'woocommerce_tax_total_display', 'itemized', 'no'),
(720, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(721, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(722, 'woocommerce_ship_to_destination', 'billing', 'no'),
(723, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(724, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(725, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(726, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(727, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(728, 'woocommerce_registration_generate_username', 'yes', 'no'),
(729, 'woocommerce_registration_generate_password', 'yes', 'no'),
(730, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(731, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(732, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(733, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(734, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(735, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(736, 'woocommerce_trash_pending_orders', '', 'no'),
(737, 'woocommerce_trash_failed_orders', '', 'no'),
(738, 'woocommerce_trash_cancelled_orders', '', 'no'),
(739, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(740, 'woocommerce_email_from_name', 'cooking', 'no'),
(741, 'woocommerce_email_from_address', 'coocking@gmail.com', 'no'),
(742, 'woocommerce_email_header_image', '', 'no'),
(743, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(744, 'woocommerce_email_base_color', '#96588a', 'no'),
(745, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(746, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(747, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(748, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(749, 'woocommerce_cart_page_id', '135', 'no'),
(750, 'woocommerce_checkout_page_id', '136', 'no'),
(751, 'woocommerce_myaccount_page_id', '137', 'no'),
(752, 'woocommerce_terms_page_id', '', 'no'),
(753, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(754, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(755, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(756, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(757, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(758, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(759, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(760, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(761, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(762, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(763, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(764, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(765, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(766, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(767, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(768, 'woocommerce_api_enabled', 'no', 'yes'),
(769, 'woocommerce_allow_tracking', 'yes', 'no'),
(770, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(771, 'woocommerce_single_image_width', '600', 'yes'),
(772, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(773, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(774, 'woocommerce_demo_store', 'no', 'no'),
(775, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(776, 'current_theme_supports_woocommerce', 'no', 'yes'),
(777, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(779, 'product_cat_children', 'a:0:{}', 'yes'),
(780, 'default_product_cat', '15', 'yes'),
(783, 'woocommerce_version', '5.2.2', 'yes'),
(784, 'woocommerce_db_version', '5.2.2', 'yes'),
(788, '_transient_jetpack_autoloader_plugin_paths', 'a:0:{}', 'yes'),
(789, 'action_scheduler_lock_async-request-runner', '1619849313', 'yes'),
(790, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(791, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"rU0iBciZFKybFuEhHrJbHb7wgzWxrFtV\";}', 'yes'),
(792, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(793, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(794, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(795, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(796, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(797, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(798, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(799, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(800, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(801, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(802, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(803, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(804, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(807, 'woocommerce_admin_version', '2.1.5', 'yes'),
(808, 'woocommerce_admin_install_timestamp', '1619844413', 'yes'),
(812, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(813, 'wc_blocks_db_schema_version', '260', 'yes'),
(815, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(816, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(819, 'wc_remote_inbox_notifications_specs', 'a:16:{s:20:\"paypal_ppcp_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"paypal_ppcp_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Offer more options with the new PayPal\";s:7:\"content\";s:113:\"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"open_wc_paypal_payments_product_page\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:61:\"https://woocommerce.com/products/woocommerce-paypal-payments/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-04-05 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-04-21 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-gateway-paypal-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:37:\"woocommerce-gateway-paypal-pro-hosted\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-advanced\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:40:\"woocommerce-gateway-paypal-digital-goods\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"woocommerce-paypal-here-gateway\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-paypal-adaptive-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:27:\"woocommerce-paypal-payments\";s:7:\"version\";s:5:\"1.2.1\";s:8:\"operator\";s:1:\"<\";}}}}}s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:168:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-02-15 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-02-29 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.1.4\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wcpay-apple-pay-is-now-available\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wcpay-apple-pay-is-now-available\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Apple Pay is now available with WooCommerce Payments!\";s:7:\"content\";s:397:\"Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:13:\"add-apple-pay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Add Apple Pay\";}}s:3:\"url\";s:69:\"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:121:\"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.3.0\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";b:0;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}s:27:\"wcpay-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:205:\"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:96:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"wcpay-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"wcpay-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Grow your business with WooCommerce Payments and Apple Pay\";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:103:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}}', 'yes'),
(820, '_transient_woocommerce_reports-transient-version', '1619844427', 'yes'),
(821, '_transient_timeout_orders-all-statuses', '1620449228', 'no'),
(822, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1619844427\";s:5:\"value\";a:0:{}}', 'no'),
(828, 'woocommerce_onboarding_profile', 'a:1:{s:7:\"skipped\";b:1;}', 'yes'),
(829, '_transient_timeout_wc_report_orders_stats_b23649bd021726553756db1830cb4792', '1620449265', 'no'),
(830, '_transient_timeout_wc_report_orders_stats_8263d046b2dc102b5e6cf27bb9e486cd', '1620449265', 'no'),
(831, '_transient_wc_report_orders_stats_b23649bd021726553756db1830cb4792', 'a:2:{s:7:\"version\";s:10:\"1619844427\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2021-05-01 10:47:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-01 10:47:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(832, '_transient_wc_report_orders_stats_8263d046b2dc102b5e6cf27bb9e486cd', 'a:2:{s:7:\"version\";s:10:\"1619844427\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(833, '_transient_timeout_wc_report_orders_stats_6335677b295fc962cf7f810850790524', '1620449265', 'no'),
(834, '_transient_timeout_wc_report_orders_stats_5bbcdddf99a98bbb3b791dd7e310af7d', '1620449266', 'no');
INSERT INTO `wp_coptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(835, '_transient_wc_report_orders_stats_6335677b295fc962cf7f810850790524', 'a:2:{s:7:\"version\";s:10:\"1619844427\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2021-05-01 10:47:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-01 10:47:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(836, '_transient_wc_report_orders_stats_5bbcdddf99a98bbb3b791dd7e310af7d', 'a:2:{s:7:\"version\";s:10:\"1619844427\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-17\";s:10:\"date_start\";s:19:\"2021-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(837, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(875, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(882, 'woocommerce_tracker_last_send', '1619845838', 'yes'),
(1055, '_site_transient_timeout_php_check_787617df3522cd9d9182823c87ee367d', '1620545944', 'no'),
(1056, '_site_transient_php_check_787617df3522cd9d9182823c87ee367d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1062, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1620240593', 'no'),
(1063, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669527/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-11 11:00:00\";s:8:\"end_date\";s:19:\"2021-05-11 12:00:00\";s:20:\"start_unix_timestamp\";i:1620756000;s:18:\"end_unix_timestamp\";i:1620759600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.9036063;}}}}', 'no'),
(1118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620185905;s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.1\";s:29:\"gravityforms/gravityforms.php\";s:6:\"2.4.23\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:6:\"3.2.10\";s:71:\"woocommerce-gravityforms-product-addons/gravityforms-product-addons.php\";s:6:\"3.3.12\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.8.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/velvet-blues-update-urls\";s:4:\"slug\";s:24:\"velvet-blues-update-urls\";s:6:\"plugin\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:11:\"new_version\";s:6:\"3.2.10\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/velvet-blues-update-urls/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/velvet-blues-update-urls.3.2.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://s.w.org/plugins/geopattern-icon/velvet-blues-update-urls_727172.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/velvet-blues-update-urls/assets/banner-772x250.jpg?rev=486343\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"gravityforms/gravityforms.php\";O:8:\"stdClass\":6:{s:3:\"url\";s:24:\"https://gravityforms.com\";s:4:\"slug\";s:12:\"gravityforms\";s:6:\"plugin\";s:29:\"gravityforms/gravityforms.php\";s:7:\"package\";s:0:\"\";s:11:\"new_version\";s:6:\"2.4.24\";s:2:\"id\";s:1:\"0\";}}}', 'no'),
(1169, '_transient_timeout_acf_plugin_updates', '1620291521', 'no'),
(1170, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}', 'no'),
(1173, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620185906;s:7:\"checked\";a:4:{s:7:\"cooking\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1175, '_site_transient_timeout_theme_roots', '1620187706', 'no'),
(1176, '_site_transient_theme_roots', 'a:4:{s:7:\"cooking\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1177, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1620230122', 'no'),
(1178, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10010 milliseconds with 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10004 milliseconds with 97993 bytes received</p></div>', 'no'),
(1199, 'options_testy_menu_section_heading', 'TASTY MENU TODAY', 'no'),
(1200, '_options_testy_menu_section_heading', 'field_60921ac1894f7', 'no'),
(1201, 'options_testy_menu_section_title', 'CHEF SELECTION', 'no'),
(1202, '_options_testy_menu_section_title', 'field_60921ad2894f8', 'no'),
(1203, 'options_testy_menu_item_groups_party_name_text', 'party', 'no'),
(1204, '_options_testy_menu_item_groups_party_name_text', 'field_60921b2c894fa', 'no'),
(1205, 'options_testy_menu_item_groups_party_icon', '170', 'no'),
(1206, '_options_testy_menu_item_groups_party_icon', 'field_60921b6c894fb', 'no'),
(1207, 'options_testy_menu_item_groups_lunch_text', 'Lunch ', 'no'),
(1208, '_options_testy_menu_item_groups_lunch_text', 'field_60921bbd7fc87', 'no'),
(1209, 'options_testy_menu_item_groups_lunch_icon', '169', 'no'),
(1210, '_options_testy_menu_item_groups_lunch_icon', 'field_60921bc77fc88', 'no'),
(1211, 'options_testy_menu_item_groups_dinner_text', 'Dinner', 'no'),
(1212, '_options_testy_menu_item_groups_dinner_text', 'field_60921bdd7fc89', 'no'),
(1213, 'options_testy_menu_item_groups_dinner_icon', '168', 'no'),
(1214, '_options_testy_menu_item_groups_dinner_icon', 'field_60921bea7fc8a', 'no'),
(1215, 'options_testy_menu_item_groups_coffee_text', 'Coffee', 'no'),
(1216, '_options_testy_menu_item_groups_coffee_text', 'field_60921bf67fc8b', 'no'),
(1217, 'options_testy_menu_item_groups_coffee_icon', '167', 'no'),
(1218, '_options_testy_menu_item_groups_coffee_icon', 'field_60921c127fc8c', 'no'),
(1219, 'options_testy_menu_item_groups_breakfast_text', 'Breakfast', 'no'),
(1220, '_options_testy_menu_item_groups_breakfast_text', 'field_60921c1e7fc8d', 'no'),
(1221, 'options_testy_menu_item_groups_breakfast_icon', '166', 'no'),
(1222, '_options_testy_menu_item_groups_breakfast_icon', 'field_60921c297fc8e', 'no'),
(1223, 'options_testy_menu_item_groups', '', 'no'),
(1224, '_options_testy_menu_item_groups', 'field_60921b06894f9', 'no'),
(1227, '_transient_timeout_GFCache_f64f910cea65d54b5f842241d5d03331', '1620191587', 'no'),
(1228, '_transient_GFCache_f64f910cea65d54b5f842241d5d03331', 'a:0:{}', 'no'),
(1231, '_transient_timeout_GFCache_bfcb04603b2c762b2a09715d824819fa', '1620191558', 'no'),
(1232, '_transient_GFCache_bfcb04603b2c762b2a09715d824819fa', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:10:\"view_count\";s:1:\"4\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cpostmeta`
--

CREATE TABLE `wp_cpostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cpostmeta`
--

INSERT INTO `wp_cpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 6, '_edit_lock', '1619249318:1'),
(16, 13, '_edit_lock', '1619932277:1'),
(17, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1619415088:1'),
(19, 31, '_wp_attached_file', '2021/04/logo.png'),
(20, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:40;s:4:\"file\";s:16:\"2021/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 32, '_edit_last', '1'),
(22, 32, '_edit_lock', '1619420818:1'),
(23, 43, '_wp_attached_file', '2021/04/slide-image-01.jpg'),
(24, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-01.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-01-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-01-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-01-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-01-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"slide-image-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"slide-image-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 44, '_wp_attached_file', '2021/04/slide-image-02.jpg'),
(26, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-02.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-02-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-02-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-02-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-02-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"slide-image-02-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"slide-image-02-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 45, '_wp_attached_file', '2021/04/slide-image-03.jpg'),
(28, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-03.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-03-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-03-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-03-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-03-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"slide-image-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"slide-image-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 46, '_edit_last', '1'),
(30, 46, '_edit_lock', '1619427885:1'),
(31, 66, '_wp_attached_file', '2021/04/thumbnail-01.jpg'),
(32, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 67, '_wp_attached_file', '2021/04/thumbnail-02.jpg'),
(34, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 68, '_wp_attached_file', '2021/04/thumbnail-03.jpg'),
(36, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 69, '_edit_last', '1'),
(38, 69, '_edit_lock', '1620191419:1'),
(39, 79, '_wp_attached_file', '2021/04/about-inset.jpg'),
(40, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2021/04/about-inset.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"about-inset-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 80, '_wp_attached_file', '2021/04/about-main.jpg'),
(42, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:410;s:6:\"height\";i:410;s:4:\"file\";s:22:\"2021/04/about-main.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"about-main-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"about-main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 81, '_edit_last', '1'),
(44, 81, '_edit_lock', '1619499564:1'),
(45, 87, '_wp_attached_file', '2021/04/testimonial-thumbnail-01.jpg'),
(46, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:36:\"2021/04/testimonial-thumbnail-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 88, '_wp_attached_file', '2021/04/testimonial-thumbnail-02.jpg'),
(48, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:36:\"2021/04/testimonial-thumbnail-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 89, '_wp_attached_file', '2021/04/testimonial-thumbnail-03.jpg'),
(50, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:36:\"2021/04/testimonial-thumbnail-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 90, '_wp_attached_file', '2021/04/testimonial-thumbnail-04.jpg'),
(52, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:36:\"2021/04/testimonial-thumbnail-04.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 93, '_edit_last', '1'),
(54, 93, '_edit_lock', '1619502062:1'),
(55, 95, '_edit_last', '1'),
(56, 95, '_edit_lock', '1619501151:1'),
(57, 105, '_wp_attached_file', '2021/04/staff-01.jpg'),
(58, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:20:\"2021/04/staff-01.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"staff-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 106, '_wp_attached_file', '2021/04/staff-02.jpg'),
(60, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:20:\"2021/04/staff-02.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"staff-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 107, '_wp_attached_file', '2021/04/staff-03.jpg'),
(62, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:20:\"2021/04/staff-03.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"staff-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 109, '_edit_last', '1'),
(64, 109, '_edit_lock', '1619503547:1'),
(65, 113, '_wp_attached_file', '2021/04/gallery-01.jpg'),
(66, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-01.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-01-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 114, '_wp_attached_file', '2021/04/gallery-02.jpg'),
(68, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-02.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-02-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-02-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-02-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 115, '_wp_attached_file', '2021/04/gallery-03.jpg'),
(70, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-03.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-03-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 116, '_wp_attached_file', '2021/04/gallery-04.jpg'),
(72, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-04.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-04-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-04-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-04-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 117, '_wp_attached_file', '2021/04/gallery-05.jpg'),
(74, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-05.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-05-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-05-1024x406.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:406;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-05-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-05-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-05-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-05-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-05-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 118, '_wp_attached_file', '2021/04/gallery-06.jpg'),
(76, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:960;s:4:\"file\";s:22:\"2021/04/gallery-06.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-06-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-06-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-06-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-06-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-06-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 119, '_wp_attached_file', '2021/04/gallery-07.jpg'),
(78, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:960;s:4:\"file\";s:22:\"2021/04/gallery-07.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-07-300x248.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-07-1024x847.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:847;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-07-768x636.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:636;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-07-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-07-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-07-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-07-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 120, '_wp_attached_file', '2021/04/gallery-08.jpg'),
(80, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-08.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-08-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-08-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-08-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-08-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-08-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 121, '_wp_attached_file', '2021/04/gallery-09.jpg'),
(82, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-09.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-09-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-09-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-09-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-09-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-09-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 122, '_wp_attached_file', '2021/04/gallery-10.jpg'),
(84, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-10.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-10-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-10-1024x406.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:406;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-10-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"gallery-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"gallery-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 123, '_edit_lock', '1619596404:1'),
(86, 125, '_edit_lock', '1619603102:1'),
(87, 126, '_wp_attached_file', '2021/04/featured-image-01.jpg'),
(88, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:290;s:4:\"file\";s:29:\"2021/04/featured-image-01.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"featured-image-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 125, '_thumbnail_id', '126'),
(90, 127, '_edit_lock', '1619603347:1'),
(91, 128, '_wp_attached_file', '2021/04/featured-image-01-1.jpg'),
(92, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1180;s:6:\"height\";i:490;s:4:\"file\";s:31:\"2021/04/featured-image-01-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"featured-image-01-1-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"featured-image-01-1-1024x425.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"featured-image-01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"featured-image-01-1-768x319.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:319;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 127, '_thumbnail_id', '128'),
(94, 129, '_edit_lock', '1619603955:1'),
(95, 130, '_wp_attached_file', '2021/04/featured-image-02.jpg'),
(96, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1180;s:6:\"height\";i:490;s:4:\"file\";s:29:\"2021/04/featured-image-02.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"featured-image-02-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"featured-image-02-1024x425.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"featured-image-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"featured-image-02-768x319.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:319;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 129, '_thumbnail_id', '130'),
(98, 133, '_wp_attached_file', 'woocommerce-placeholder.png'),
(99, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 138, '_edit_lock', '1619844607:1'),
(101, 135, '_wp_trash_meta_status', 'publish'),
(102, 135, '_wp_trash_meta_time', '1619859578'),
(103, 135, '_wp_desired_post_slug', 'cart'),
(104, 136, '_wp_trash_meta_status', 'publish'),
(105, 136, '_wp_trash_meta_time', '1619859579'),
(106, 136, '_wp_desired_post_slug', 'checkout'),
(107, 6, '_wp_trash_meta_status', 'publish'),
(108, 6, '_wp_trash_meta_time', '1619859579'),
(109, 6, '_wp_desired_post_slug', 'contact-page'),
(110, 137, '_wp_trash_meta_status', 'publish'),
(111, 137, '_wp_trash_meta_time', '1619859580'),
(112, 137, '_wp_desired_post_slug', 'my-account'),
(113, 134, '_wp_trash_meta_status', 'publish'),
(114, 134, '_wp_trash_meta_time', '1619859580'),
(115, 134, '_wp_desired_post_slug', 'shop'),
(116, 144, '_edit_lock', '1619859653:1'),
(117, 145, '_edit_lock', '1619860884:1'),
(118, 147, '_edit_lock', '1619928176:1'),
(119, 1, '_wp_trash_meta_status', 'publish'),
(120, 1, '_wp_trash_meta_time', '1619931637'),
(121, 1, '_wp_desired_post_slug', 'hello-world'),
(122, 150, '_edit_lock', '1619932166:1'),
(123, 151, '_wp_attached_file', '2021/05/featured-image-04.jpg'),
(124, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1180;s:6:\"height\";i:680;s:4:\"file\";s:29:\"2021/05/featured-image-04.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"featured-image-04-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"featured-image-04-1024x590.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:590;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"featured-image-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"featured-image-04-768x443.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 150, '_thumbnail_id', '151'),
(126, 150, '_wp_trash_meta_status', 'publish'),
(127, 150, '_wp_trash_meta_time', '1619932315'),
(128, 150, '_wp_desired_post_slug', 'where-does-it-come-from'),
(129, 152, '_edit_last', '1'),
(130, 152, '_edit_lock', '1620191375:1'),
(131, 166, '_wp_attached_file', '2021/05/b.png'),
(132, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2021/05/b.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 167, '_wp_attached_file', '2021/05/c.png'),
(134, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2021/05/c.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 168, '_wp_attached_file', '2021/05/d.png'),
(136, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:63;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2021/05/d.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 169, '_wp_attached_file', '2021/05/l1.png'),
(138, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:67;s:4:\"file\";s:14:\"2021/05/l1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 170, '_wp_attached_file', '2021/05/p.png'),
(140, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2021/05/p.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cposts`
--

CREATE TABLE `wp_cposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cposts`
--

INSERT INTO `wp_cposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-05-02 05:00:37', '2021-05-02 05:00:37', '', 0, 'http://localhost/coocking/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/coocking/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', '', 0, 'http://localhost/coocking/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/coocking.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', '', 0, 'http://localhost/coocking/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-04-24 03:11:09', '2021-04-24 03:11:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'trash', 'closed', 'closed', '', 'contact-page__trashed', '', '', '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 0, 'http://localhost/coocking/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-04-24 03:11:09', '2021-04-24 03:11:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 03:11:09', '2021-04-24 03:11:09', '', 6, 'http://localhost/coocking/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-04-24 06:20:14', '2021-04-24 06:20:14', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"] \n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 06:20:14', '2021-04-24 06:20:14', '', 6, 'http://localhost/coocking/?p=8', 0, 'revision', '', 0),
(10, 1, '2021-04-24 07:14:36', '2021-04-24 07:14:36', '<!-- wp:shortcode -->\n[contact-form-7 id=\"9\" title=\"contact form two\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:14:36', '2021-04-24 07:14:36', '', 6, 'http://localhost/coocking/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-04-24 07:15:00', '2021-04-24 07:15:00', '<!-- wp:shortcode -->\n[contact-form-7 id=\"9\" title=\"contact form two\"] \n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:15:00', '2021-04-24 07:15:00', '', 6, 'http://localhost/coocking/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-04-24 07:17:19', '2021-04-24 07:17:19', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:17:19', '2021-04-24 07:17:19', '', 6, 'http://localhost/coocking/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-04-25 04:58:03', '2021-04-25 04:58:03', '<!-- wp:shortcode -->\n[gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\" tabindex=\"49\" field_values=\"check=First Choice,Second Choice\"]\n\n<!-- /wp:shortcode -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-01 04:11:25', '2021-05-01 04:11:25', '', 0, 'http://localhost/coocking/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 13, 'http://localhost/coocking/?p=14', 0, 'revision', '', 0),
(16, 1, '2021-04-26 05:17:59', '2021-04-26 05:17:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:26:\"acf-options-theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_60864be56234a', '', '', '2021-04-26 05:18:01', '2021-04-26 05:18:01', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2021-04-26 05:17:59', '2021-04-26 05:17:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Small Title', 'site_small_title', 'publish', 'closed', 'closed', '', 'field_60864bf6a2e0d', '', '', '2021-04-26 05:17:59', '2021-04-26 05:17:59', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2021-04-26 05:17:59', '2021-04-26 05:17:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Favicon Icon', 'site_favicon_icon', 'publish', 'closed', 'closed', '', 'field_60864c08a2e0e', '', '', '2021-04-26 05:17:59', '2021-04-26 05:17:59', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2021-04-26 05:17:59', '2021-04-26 05:17:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Header Logo', 'site_header_logo', 'publish', 'closed', 'closed', '', 'field_60864c1ba2e0f', '', '', '2021-04-26 05:17:59', '2021-04-26 05:17:59', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=19', 2, 'acf-field', '', 0),
(20, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Author', 'site_author', 'publish', 'closed', 'closed', '', 'field_60864c3ba2e10', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=20', 3, 'acf-field', '', 0),
(21, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FB Apps ID', 'fb_apps_id', 'publish', 'closed', 'closed', '', 'field_60864c4ba2e11', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=21', 4, 'acf-field', '', 0),
(22, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Contact Email', 'site_contact_email', 'publish', 'closed', 'closed', '', 'field_60864c5fa2e12', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=22', 5, 'acf-field', '', 0),
(23, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Copyright Content', 'site_copyright_content', 'publish', 'closed', 'closed', '', 'field_60864c74a2e13', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=23', 6, 'acf-field', '', 0),
(24, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Meta Keyword', 'meta_keyword', 'publish', 'closed', 'closed', '', 'field_60864c86a2e14', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=24', 7, 'acf-field', '', 0),
(25, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Meta Description', 'meta_description', 'publish', 'closed', 'closed', '', 'field_60864c96a2e15', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=25', 8, 'acf-field', '', 0),
(26, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Share Image', 'site_share_image', 'publish', 'closed', 'closed', '', 'field_60864ca5a2e16', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=26', 9, 'acf-field', '', 0),
(27, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Google Verification', 'site_google_verification', 'publish', 'closed', 'closed', '', 'field_60864cb7a2e17', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=27', 10, 'acf-field', '', 0),
(28, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Site Bing Verification', 'bing_site_verification', 'publish', 'closed', 'closed', '', 'field_60864cd4a2e18', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=28', 11, 'acf-field', '', 0),
(29, 1, '2021-04-26 05:18:00', '2021-04-26 05:18:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Google Analytics', 'google_analytics', 'publish', 'closed', 'closed', '', 'field_60864ce2a2e19', '', '', '2021-04-26 05:18:00', '2021-04-26 05:18:00', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=29', 12, 'acf-field', '', 0),
(30, 1, '2021-04-26 05:18:01', '2021-04-26 05:18:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Google Meta', 'google_meta', 'publish', 'closed', 'closed', '', 'field_60864cf2a2e1a', '', '', '2021-04-26 05:18:01', '2021-04-26 05:18:01', '', 16, 'http://localhost/coocking/?post_type=acf-field&p=30', 13, 'acf-field', '', 0),
(31, 1, '2021-04-26 05:36:34', '2021-04-26 05:36:34', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-04-26 05:36:34', '2021-04-26 05:36:34', '', 0, 'http://localhost/coocking/assets/files/2021/04/logo.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-04-26 06:31:21', '2021-04-26 06:31:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"acf-options-website-main-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Website Main Header', 'website-main-header', 'publish', 'closed', 'closed', '', 'group_60865cab94357', '', '', '2021-04-26 06:31:23', '2021-04-26 06:31:23', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2021-04-26 06:31:21', '2021-04-26 06:31:21', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Header Slider Image', 'header_slider_image', 'publish', 'closed', 'closed', '', 'field_60865d094e06f', '', '', '2021-04-26 06:31:21', '2021-04-26 06:31:21', '', 32, 'http://localhost/coocking/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2021-04-26 06:31:21', '2021-04-26 06:31:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image', 'slider_image', 'publish', 'closed', 'closed', '', 'field_60865d4e4e070', '', '', '2021-04-26 06:31:21', '2021-04-26 06:31:21', '', 33, 'http://localhost/coocking/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Slogan Text', 'header_slogan_text', 'publish', 'closed', 'closed', '', 'field_60865d634e071', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 32, 'http://localhost/coocking/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Header Slider Text', 'header_slider_text', 'publish', 'closed', 'closed', '', 'field_60865d7b4e072', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 32, 'http://localhost/coocking/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(37, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'H Slider Text', 'h_slider_text', 'publish', 'closed', 'closed', '', 'field_60865d904e073', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 36, 'http://localhost/coocking/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Header Social Icon', 'header_social_icon', 'publish', 'closed', 'closed', '', 'field_60865da44e074', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 32, 'http://localhost/coocking/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(39, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header FB Link', 'header_fb_link', 'publish', 'closed', 'closed', '', 'field_60865dc54e075', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 38, 'http://localhost/coocking/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Twiiter Link', 'header_twiiter_link', 'publish', 'closed', 'closed', '', 'field_60865e004e076', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 38, 'http://localhost/coocking/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2021-04-26 06:31:22', '2021-04-26 06:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Pintarest Link', 'header_pintarest_link', 'publish', 'closed', 'closed', '', 'field_60865e154e077', '', '', '2021-04-26 06:31:22', '2021-04-26 06:31:22', '', 38, 'http://localhost/coocking/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2021-04-26 06:31:23', '2021-04-26 06:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Opentable Link', 'header_opentable_link', 'publish', 'closed', 'closed', '', 'field_60865e284e078', '', '', '2021-04-26 06:31:23', '2021-04-26 06:31:23', '', 38, 'http://localhost/coocking/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2021-04-26 06:34:46', '2021-04-26 06:34:46', '', 'slide-image-01', '', 'inherit', 'open', 'closed', '', 'slide-image-01', '', '', '2021-04-26 06:34:46', '2021-04-26 06:34:46', '', 0, 'http://localhost/coocking/assets/files/2021/04/slide-image-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-04-26 06:34:49', '2021-04-26 06:34:49', '', 'slide-image-02', '', 'inherit', 'open', 'closed', '', 'slide-image-02', '', '', '2021-04-26 06:34:49', '2021-04-26 06:34:49', '', 0, 'http://localhost/coocking/assets/files/2021/04/slide-image-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-04-26 06:34:52', '2021-04-26 06:34:52', '', 'slide-image-03', '', 'inherit', 'open', 'closed', '', 'slide-image-03', '', '', '2021-04-26 06:34:52', '2021-04-26 06:34:52', '', 0, 'http://localhost/coocking/assets/files/2021/04/slide-image-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-04-26 07:09:45', '2021-04-26 07:09:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"acf-options-website-main-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Website Main Footer', 'website-main-footer', 'publish', 'closed', 'closed', '', 'group_60866722bc474', '', '', '2021-04-26 07:51:23', '2021-04-26 07:51:23', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2021-04-26 07:19:22', '2021-04-26 07:19:22', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contact Information', 'contact_information', 'publish', 'closed', 'closed', '', 'field_60866740e7eb6', '', '', '2021-04-26 07:19:22', '2021-04-26 07:19:22', '', 46, 'http://localhost/coocking/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2021-04-26 07:19:22', '2021-04-26 07:19:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Contact Title', 'footer_contact_title', 'publish', 'closed', 'closed', '', 'field_60866751e7eb7', '', '', '2021-04-26 07:19:22', '2021-04-26 07:19:22', '', 47, 'http://localhost/coocking/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2021-04-26 07:19:22', '2021-04-26 07:19:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Contact Text', 'footer_contact_text', 'publish', 'closed', 'closed', '', 'field_6086676fe7eb8', '', '', '2021-04-26 07:19:22', '2021-04-26 07:19:22', '', 47, 'http://localhost/coocking/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Contact Mobile NO', 'footer_contact_mobile_no', 'publish', 'closed', 'closed', '', 'field_60866782e7eb9', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 47, 'http://localhost/coocking/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Footer Contact Email', 'footer_contact_email', 'publish', 'closed', 'closed', '', 'field_60866798e7eba', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 47, 'http://localhost/coocking/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(52, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Contact Address', 'footer_contact_address', 'publish', 'closed', 'closed', '', 'field_608667a8e7ebb', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 47, 'http://localhost/coocking/?post_type=acf-field&p=52', 4, 'acf-field', '', 0),
(53, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'F New On The Menu', 'f_new_on_the_menu', 'publish', 'closed', 'closed', '', 'field_608667b6e7ebc', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 46, 'http://localhost/coocking/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Widget Two Title', 'footer_widget_two_title_', 'publish', 'closed', 'closed', '', 'field_60866837e7ebe', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 53, 'http://localhost/coocking/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Footer The Menu Description', 'footer_the_menu_description', 'publish', 'closed', 'closed', '', 'field_6086684ae7ebf', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 53, 'http://localhost/coocking/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer New Food Image', 'footer_new_food_image', 'publish', 'closed', 'closed', '', 'field_60866876e7ec0', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 55, 'http://localhost/coocking/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer New Food Title', 'footer_new_food_title', 'publish', 'closed', 'closed', '', 'field_608668a2e7ec1', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 55, 'http://localhost/coocking/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2021-04-26 07:19:23', '2021-04-26 07:19:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer New Food Small Title', 'footer_new_food_small_title', 'publish', 'closed', 'closed', '', 'field_608668aee7ec2', '', '', '2021-04-26 07:19:23', '2021-04-26 07:19:23', '', 55, 'http://localhost/coocking/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer New Food Link', 'footer_new_food_link', 'publish', 'closed', 'closed', '', 'field_608668b9e7ec3', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 55, 'http://localhost/coocking/?post_type=acf-field&p=59', 3, 'acf-field', '', 0),
(60, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Footer Opening Time', 'footer_opening_time', 'publish', 'closed', 'closed', '', 'field_608668cae7ec4', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 46, 'http://localhost/coocking/?post_type=acf-field&p=60', 2, 'acf-field', '', 0),
(61, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Opening Time Title', 'footer_opening_time_title', 'publish', 'closed', 'closed', '', 'field_608668f4e7ec5', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 60, 'http://localhost/coocking/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Opening Day & Time', 'opening_day_&_time', 'publish', 'closed', 'closed', '', 'field_60866907e7ec6', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 60, 'http://localhost/coocking/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Opening Day', 'opening_day', 'publish', 'closed', 'closed', '', 'field_60866920e7ec7', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 62, 'http://localhost/coocking/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Opening Time', 'opening_time', 'publish', 'closed', 'closed', '', 'field_60866935e7ec8', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 62, 'http://localhost/coocking/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2021-04-26 07:19:24', '2021-04-26 07:19:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Copyright Content', 'footer_copyright_content', 'publish', 'closed', 'closed', '', 'field_60866949e7ec9', '', '', '2021-04-26 07:19:24', '2021-04-26 07:19:24', '', 46, 'http://localhost/coocking/?post_type=acf-field&p=65', 3, 'acf-field', '', 0),
(66, 1, '2021-04-26 07:26:41', '2021-04-26 07:26:41', '', 'thumbnail-01', '', 'inherit', 'open', 'closed', '', 'thumbnail-01', '', '', '2021-04-26 07:26:41', '2021-04-26 07:26:41', '', 0, 'http://localhost/coocking/assets/files/2021/04/thumbnail-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-04-26 07:26:42', '2021-04-26 07:26:42', '', 'thumbnail-02', '', 'inherit', 'open', 'closed', '', 'thumbnail-02', '', '', '2021-04-26 07:26:42', '2021-04-26 07:26:42', '', 0, 'http://localhost/coocking/assets/files/2021/04/thumbnail-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-04-26 07:26:42', '2021-04-26 07:26:42', '', 'thumbnail-03', '', 'inherit', 'open', 'closed', '', 'thumbnail-03', '', '', '2021-04-26 07:26:42', '2021-04-26 07:26:42', '', 0, 'http://localhost/coocking/assets/files/2021/04/thumbnail-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-04-26 09:11:53', '2021-04-26 09:11:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"acf-options-about-us\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_608682be2b70d', '', '', '2021-05-05 05:12:36', '2021-05-05 05:12:36', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2021-04-26 09:11:53', '2021-04-26 09:11:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Section Title', 'about_section_title', 'publish', 'closed', 'closed', '', 'field_608682d5a602e', '', '', '2021-04-26 09:11:53', '2021-04-26 09:11:53', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(72, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'About left Big Image', 'about_left_big_image', 'publish', 'closed', 'closed', '', 'field_60868367a6030', '', '', '2021-05-05 05:12:34', '2021-05-05 05:12:34', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About US Small Title', 'about_us_small_title', 'publish', 'closed', 'closed', '', 'field_60868379a6031', '', '', '2021-05-05 05:12:34', '2021-05-05 05:12:34', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=73', 2, 'acf-field', '', 0),
(74, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Us Description', 'about_us_description', 'publish', 'closed', 'closed', '', 'field_60868385a6032', '', '', '2021-05-05 05:12:35', '2021-05-05 05:12:35', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=74', 3, 'acf-field', '', 0),
(75, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Learn More Button Text', 'about_learn_more_button_text', 'publish', 'closed', 'closed', '', 'field_60868392a6033', '', '', '2021-05-05 05:12:35', '2021-05-05 05:12:35', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=75', 4, 'acf-field', '', 0),
(76, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Learn More Button Link', 'about_learn_more_button_link', 'publish', 'closed', 'closed', '', 'field_608683b1a6034', '', '', '2021-05-05 05:12:35', '2021-05-05 05:12:35', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=76', 5, 'acf-field', '', 0),
(77, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About See Menu Button Text', 'about_see_menu_button_text', 'publish', 'closed', 'closed', '', 'field_608683bba6035', '', '', '2021-05-05 05:12:36', '2021-05-05 05:12:36', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=77', 6, 'acf-field', '', 0),
(78, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About See Menu Button Link', 'about_see_menu_button_link', 'publish', 'closed', 'closed', '', 'field_608683cda6036', '', '', '2021-05-05 05:12:36', '2021-05-05 05:12:36', '', 69, 'http://localhost/coocking/?post_type=acf-field&#038;p=78', 7, 'acf-field', '', 0),
(79, 1, '2021-04-26 09:12:22', '2021-04-26 09:12:22', '', 'about-inset', '', 'inherit', 'open', 'closed', '', 'about-inset', '', '', '2021-04-26 09:12:22', '2021-04-26 09:12:22', '', 0, 'http://localhost/coocking/assets/files/2021/04/about-inset.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2021-04-26 09:12:31', '2021-04-26 09:12:31', '', 'about-main', '', 'inherit', 'open', 'closed', '', 'about-main', '', '', '2021-04-26 09:12:31', '2021-04-26 09:12:31', '', 0, 'http://localhost/coocking/assets/files/2021/04/about-main.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_cposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 1, '2021-04-27 04:44:50', '2021-04-27 04:44:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:33:\"acf-options-what-our-customer-say\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'What Customer Say', 'what-customer-say', 'publish', 'closed', 'closed', '', 'group_608795caae82a', '', '', '2021-04-27 04:56:29', '2021-04-27 04:56:29', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2021-04-27 04:44:50', '2021-04-27 04:44:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'What Customer Say Section Title', 'what_customer_say_section_title', 'publish', 'closed', 'closed', '', 'field_608795eeac5a5', '', '', '2021-04-27 04:44:50', '2021-04-27 04:44:50', '', 81, 'http://localhost/coocking/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2021-04-27 04:44:51', '2021-04-27 04:44:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Custer Say Details', 'custer_say_details', 'publish', 'closed', 'closed', '', 'field_6087960bac5a6', '', '', '2021-04-27 04:44:51', '2021-04-27 04:44:51', '', 81, 'http://localhost/coocking/?post_type=acf-field&p=83', 1, 'acf-field', '', 0),
(84, 1, '2021-04-27 04:44:51', '2021-04-27 04:44:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Clients Image', 'clients_image', 'publish', 'closed', 'closed', '', 'field_60879623ac5a7', '', '', '2021-04-27 04:44:51', '2021-04-27 04:44:51', '', 83, 'http://localhost/coocking/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2021-04-27 04:44:51', '2021-04-27 04:44:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Clients Review Text', 'clients_review_text', 'publish', 'closed', 'closed', '', 'field_608796a0ac5a8', '', '', '2021-04-27 04:44:51', '2021-04-27 04:44:51', '', 83, 'http://localhost/coocking/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2021-04-27 04:44:51', '2021-04-27 04:44:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Clients Address', 'clients_address', 'publish', 'closed', 'closed', '', 'field_608796b4ac5a9', '', '', '2021-04-27 04:44:51', '2021-04-27 04:44:51', '', 83, 'http://localhost/coocking/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2021-04-27 04:46:59', '2021-04-27 04:46:59', '', 'testimonial-thumbnail-01', '', 'inherit', 'open', 'closed', '', 'testimonial-thumbnail-01', '', '', '2021-04-27 04:46:59', '2021-04-27 04:46:59', '', 0, 'http://localhost/coocking/assets/files/2021/04/testimonial-thumbnail-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2021-04-27 04:47:00', '2021-04-27 04:47:00', '', 'testimonial-thumbnail-02', '', 'inherit', 'open', 'closed', '', 'testimonial-thumbnail-02', '', '', '2021-04-27 04:47:00', '2021-04-27 04:47:00', '', 0, 'http://localhost/coocking/assets/files/2021/04/testimonial-thumbnail-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2021-04-27 04:47:01', '2021-04-27 04:47:01', '', 'testimonial-thumbnail-03', '', 'inherit', 'open', 'closed', '', 'testimonial-thumbnail-03', '', '', '2021-04-27 04:47:01', '2021-04-27 04:47:01', '', 0, 'http://localhost/coocking/assets/files/2021/04/testimonial-thumbnail-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2021-04-27 04:47:02', '2021-04-27 04:47:02', '', 'testimonial-thumbnail-04', '', 'inherit', 'open', 'closed', '', 'testimonial-thumbnail-04', '', '', '2021-04-27 04:47:02', '2021-04-27 04:47:02', '', 0, 'http://localhost/coocking/assets/files/2021/04/testimonial-thumbnail-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2021-04-27 04:56:29', '2021-04-27 04:56:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Clients Address Link', 'clients_address_link', 'publish', 'closed', 'closed', '', 'field_608799696fae9', '', '', '2021-04-27 04:56:29', '2021-04-27 04:56:29', '', 83, 'http://localhost/coocking/?post_type=acf-field&p=91', 3, 'acf-field', '', 0),
(93, 1, '2021-04-27 05:03:05', '2021-04-27 05:03:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"acf-options-i-cook-with-wine\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'I COOK WITH WINE', 'i-cook-with-wine', 'publish', 'closed', 'closed', '', 'group_60879afa55185', '', '', '2021-04-27 05:39:36', '2021-04-27 05:39:36', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=93', 0, 'acf-field-group', '', 0),
(94, 1, '2021-04-27 05:06:30', '2021-04-27 05:06:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cook Wine Title', 'cook_wine_title', 'publish', 'closed', 'closed', '', 'field_60879b4e5d49e', '', '', '2021-04-27 05:06:30', '2021-04-27 05:06:30', '', 93, 'http://localhost/coocking/?post_type=acf-field&p=94', 0, 'acf-field', '', 0),
(95, 1, '2021-04-27 05:09:43', '2021-04-27 05:09:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"acf-options-our-staff\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Staff', 'our-staff', 'publish', 'closed', 'closed', '', 'group_60879c8acc6e9', '', '', '2021-04-27 05:15:20', '2021-04-27 05:15:20', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2021-04-27 05:13:59', '2021-04-27 05:13:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Staff Title', 'our_staff_title', 'publish', 'closed', 'closed', '', 'field_60879c99a4e53', '', '', '2021-04-27 05:13:59', '2021-04-27 05:13:59', '', 95, 'http://localhost/coocking/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2021-04-27 05:13:59', '2021-04-27 05:13:59', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Our Staff Information', 'our_staff_information', 'publish', 'closed', 'closed', '', 'field_60879cd8a4e54', '', '', '2021-04-27 05:13:59', '2021-04-27 05:13:59', '', 95, 'http://localhost/coocking/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2021-04-27 05:13:59', '2021-04-27 05:13:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Staff Image', 'staff_image', 'publish', 'closed', 'closed', '', 'field_60879d0aa4e55', '', '', '2021-04-27 05:13:59', '2021-04-27 05:13:59', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2021-04-27 05:13:59', '2021-04-27 05:13:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Staff Name', 'staff_name', 'publish', 'closed', 'closed', '', 'field_60879d2ea4e56', '', '', '2021-04-27 05:13:59', '2021-04-27 05:13:59', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(100, 1, '2021-04-27 05:14:00', '2021-04-27 05:14:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Staff Title', 'staff_title', 'publish', 'closed', 'closed', '', 'field_60879d3fa4e57', '', '', '2021-04-27 05:14:00', '2021-04-27 05:14:00', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2021-04-27 05:14:00', '2021-04-27 05:14:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Staff Description', 'staff_description', 'publish', 'closed', 'closed', '', 'field_60879d4ca4e58', '', '', '2021-04-27 05:15:20', '2021-04-27 05:15:20', '', 97, 'http://localhost/coocking/?post_type=acf-field&#038;p=101', 3, 'acf-field', '', 0),
(102, 1, '2021-04-27 05:14:00', '2021-04-27 05:14:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Staff FB Link', 'staff_fb_link', 'publish', 'closed', 'closed', '', 'field_60879d63a4e59', '', '', '2021-04-27 05:14:00', '2021-04-27 05:14:00', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=102', 4, 'acf-field', '', 0),
(103, 1, '2021-04-27 05:14:00', '2021-04-27 05:14:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Staff Twitter Link', 'staff_twitter_link', 'publish', 'closed', 'closed', '', 'field_60879d76a4e5a', '', '', '2021-04-27 05:14:00', '2021-04-27 05:14:00', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=103', 5, 'acf-field', '', 0),
(104, 1, '2021-04-27 05:14:00', '2021-04-27 05:14:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Staff Instagram Link', 'staff_instagram_link', 'publish', 'closed', 'closed', '', 'field_60879d83a4e5b', '', '', '2021-04-27 05:14:00', '2021-04-27 05:14:00', '', 97, 'http://localhost/coocking/?post_type=acf-field&p=104', 6, 'acf-field', '', 0),
(105, 1, '2021-04-27 05:14:34', '2021-04-27 05:14:34', '', 'staff-01', '', 'inherit', 'open', 'closed', '', 'staff-01', '', '', '2021-04-27 05:14:34', '2021-04-27 05:14:34', '', 0, 'http://localhost/coocking/assets/files/2021/04/staff-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2021-04-27 05:14:34', '2021-04-27 05:14:34', '', 'staff-02', '', 'inherit', 'open', 'closed', '', 'staff-02', '', '', '2021-04-27 05:14:34', '2021-04-27 05:14:34', '', 0, 'http://localhost/coocking/assets/files/2021/04/staff-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2021-04-27 05:14:35', '2021-04-27 05:14:35', '', 'staff-03', '', 'inherit', 'open', 'closed', '', 'staff-03', '', '', '2021-04-27 05:14:35', '2021-04-27 05:14:35', '', 0, 'http://localhost/coocking/assets/files/2021/04/staff-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2021-04-27 05:38:02', '2021-04-27 05:38:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Call To Action Heading', 'call_to_action_heading', 'publish', 'closed', 'closed', '', 'field_6087a0fe7dfa3', '', '', '2021-04-27 05:38:02', '2021-04-27 05:38:02', '', 93, 'http://localhost/coocking/?post_type=acf-field&p=108', 1, 'acf-field', '', 0),
(109, 1, '2021-04-27 05:44:39', '2021-04-27 05:44:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:25:\"acf-options-photo-gallery\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Photo Gallery', 'photo-gallery', 'publish', 'closed', 'closed', '', 'group_6087a47f0c646', '', '', '2021-04-27 05:51:01', '2021-04-27 05:51:01', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2021-04-27 05:44:39', '2021-04-27 05:44:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Photo Gallery Title', 'photo_gallery_title', 'publish', 'closed', 'closed', '', 'field_6087a48d706b6', '', '', '2021-04-27 05:44:39', '2021-04-27 05:44:39', '', 109, 'http://localhost/coocking/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2021-04-27 05:44:39', '2021-04-27 05:44:39', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Photo Gallery Image', 'photo_gallery_image', 'publish', 'closed', 'closed', '', 'field_6087a49f706b7', '', '', '2021-04-27 05:44:39', '2021-04-27 05:44:39', '', 109, 'http://localhost/coocking/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(112, 1, '2021-04-27 05:44:39', '2021-04-27 05:44:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery Image', 'gallery_image', 'publish', 'closed', 'closed', '', 'field_6087a4b3706b8', '', '', '2021-04-27 05:44:39', '2021-04-27 05:44:39', '', 111, 'http://localhost/coocking/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2021-04-27 05:45:21', '2021-04-27 05:45:21', '', 'gallery-01', '', 'inherit', 'open', 'closed', '', 'gallery-01', '', '', '2021-04-27 05:45:21', '2021-04-27 05:45:21', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2021-04-27 05:45:22', '2021-04-27 05:45:22', '', 'gallery-02', '', 'inherit', 'open', 'closed', '', 'gallery-02', '', '', '2021-04-27 05:45:22', '2021-04-27 05:45:22', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2021-04-27 05:45:25', '2021-04-27 05:45:25', '', 'gallery-03', '', 'inherit', 'open', 'closed', '', 'gallery-03', '', '', '2021-04-27 05:45:25', '2021-04-27 05:45:25', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2021-04-27 05:45:25', '2021-04-27 05:45:25', '', 'gallery-04', '', 'inherit', 'open', 'closed', '', 'gallery-04', '', '', '2021-04-27 05:45:25', '2021-04-27 05:45:25', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2021-04-27 05:45:26', '2021-04-27 05:45:26', '', 'gallery-05', '', 'inherit', 'open', 'closed', '', 'gallery-05', '', '', '2021-04-27 05:45:26', '2021-04-27 05:45:26', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2021-04-27 05:45:28', '2021-04-27 05:45:28', '', 'gallery-06', '', 'inherit', 'open', 'closed', '', 'gallery-06', '', '', '2021-04-27 05:45:28', '2021-04-27 05:45:28', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2021-04-27 05:45:28', '2021-04-27 05:45:28', '', 'gallery-07', '', 'inherit', 'open', 'closed', '', 'gallery-07', '', '', '2021-04-27 05:45:28', '2021-04-27 05:45:28', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-07.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2021-04-27 05:45:30', '2021-04-27 05:45:30', '', 'gallery-08', '', 'inherit', 'open', 'closed', '', 'gallery-08', '', '', '2021-04-27 05:45:30', '2021-04-27 05:45:30', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2021-04-27 05:45:31', '2021-04-27 05:45:31', '', 'gallery-09', '', 'inherit', 'open', 'closed', '', 'gallery-09', '', '', '2021-04-27 05:45:31', '2021-04-27 05:45:31', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-09.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2021-04-27 05:45:31', '2021-04-27 05:45:31', '', 'gallery-10', '', 'inherit', 'open', 'closed', '', 'gallery-10', '', '', '2021-04-27 05:45:31', '2021-04-27 05:45:31', '', 0, 'http://localhost/coocking/assets/files/2021/04/gallery-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2021-04-28 07:03:31', '2021-04-28 07:03:31', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-04-28 07:03:31', '2021-04-28 07:03:31', '', 0, 'http://localhost/coocking/?page_id=123', 0, 'page', '', 0),
(124, 1, '2021-04-28 07:03:31', '2021-04-28 07:03:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2021-04-28 07:03:31', '2021-04-28 07:03:31', '', 123, 'http://localhost/coocking/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-04-28 09:39:41', '2021-04-28 09:39:41', '<!-- wp:paragraph -->\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore</p>\n<!-- /wp:paragraph -->', 'WHAT MAKES A PERFECT CURRY?', '', 'publish', 'closed', 'closed', '', 'what-makes-a-perfect-curry', '', '', '2021-04-28 09:39:41', '2021-04-28 09:39:41', '', 0, 'http://localhost/coocking/?post_type=coocking_blog&#038;p=125', 0, 'coocking_blog', '', 0),
(126, 1, '2021-04-28 09:39:32', '2021-04-28 09:39:32', '', 'featured-image-01', '', 'inherit', 'open', 'closed', '', 'featured-image-01', '', '', '2021-04-28 09:39:32', '2021-04-28 09:39:32', '', 125, 'http://localhost/coocking/assets/files/2021/04/featured-image-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2021-04-28 09:50:45', '2021-04-28 09:50:45', '<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</p>\n<!-- /wp:paragraph -->', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum', '', '', '2021-04-28 09:50:45', '2021-04-28 09:50:45', '', 0, 'http://localhost/coocking/?post_type=coocking_blog&#038;p=127', 0, 'coocking_blog', '', 0),
(128, 1, '2021-04-28 09:50:39', '2021-04-28 09:50:39', '', 'featured-image-01', '', 'inherit', 'open', 'closed', '', 'featured-image-01-2', '', '', '2021-04-28 09:50:39', '2021-04-28 09:50:39', '', 127, 'http://localhost/coocking/assets/files/2021/04/featured-image-01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2021-04-28 09:52:08', '2021-04-28 09:52:08', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'Why do we use it?', '', 'publish', 'closed', 'closed', '', 'why-do-we-use-it', '', '', '2021-04-28 09:52:08', '2021-04-28 09:52:08', '', 0, 'http://localhost/coocking/?post_type=coocking_blog&#038;p=129', 0, 'coocking_blog', '', 0),
(130, 1, '2021-04-28 09:52:03', '2021-04-28 09:52:03', '', 'featured-image-02', '', 'inherit', 'open', 'closed', '', 'featured-image-02', '', '', '2021-04-28 09:52:03', '2021-04-28 09:52:03', '', 129, 'http://localhost/coocking/assets/files/2021/04/featured-image-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2021-05-01 03:26:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-01 03:26:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/coocking/?p=131', 0, 'post', '', 0),
(132, 1, '2021-05-01 04:11:25', '2021-05-01 04:11:25', '<!-- wp:shortcode -->\n[gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\" tabindex=\"49\" field_values=\"check=First Choice,Second Choice\"]\n\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-05-01 04:11:25', '2021-05-01 04:11:25', '', 13, 'http://localhost/coocking/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-05-01 04:46:42', '2021-05-01 04:46:42', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-05-01 04:46:42', '2021-05-01 04:46:42', '', 0, 'http://localhost/coocking/assets/files/2021/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2021-05-01 04:46:43', '2021-05-01 04:46:43', '', 'Shop', '', 'trash', 'closed', 'closed', '', 'shop__trashed', '', '', '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 0, 'http://localhost/coocking/?page_id=134', 0, 'page', '', 0),
(135, 1, '2021-05-01 04:46:44', '2021-05-01 04:46:44', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'trash', 'closed', 'closed', '', 'cart__trashed', '', '', '2021-05-01 08:59:38', '2021-05-01 08:59:38', '', 0, 'http://localhost/coocking/?page_id=135', 0, 'page', '', 0),
(136, 1, '2021-05-01 04:46:44', '2021-05-01 04:46:44', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'trash', 'closed', 'closed', '', 'checkout__trashed', '', '', '2021-05-01 08:59:39', '2021-05-01 08:59:39', '', 0, 'http://localhost/coocking/?page_id=136', 0, 'page', '', 0),
(137, 1, '2021-05-01 04:46:44', '2021-05-01 04:46:44', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'trash', 'closed', 'closed', '', 'my-account__trashed', '', '', '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 0, 'http://localhost/coocking/?page_id=137', 0, 'page', '', 0),
(138, 1, '2021-05-01 04:50:32', '2021-05-01 04:50:32', '', 'Food Menu', '', 'publish', 'closed', 'closed', '', 'food-menu', '', '', '2021-05-01 04:51:58', '2021-05-01 04:51:58', '', 0, 'http://localhost/coocking/?page_id=138', 0, 'page', '', 0),
(139, 1, '2021-05-01 04:50:32', '2021-05-01 04:50:32', '', 'Food Menu', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2021-05-01 04:50:32', '2021-05-01 04:50:32', '', 138, 'http://localhost/coocking/?p=139', 0, 'revision', '', 0),
(140, 1, '2021-05-01 08:59:38', '2021-05-01 08:59:38', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2021-05-01 08:59:38', '2021-05-01 08:59:38', '', 135, 'http://localhost/coocking/?p=140', 0, 'revision', '', 0),
(141, 1, '2021-05-01 08:59:39', '2021-05-01 08:59:39', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2021-05-01 08:59:39', '2021-05-01 08:59:39', '', 136, 'http://localhost/coocking/?p=141', 0, 'revision', '', 0),
(142, 1, '2021-05-01 08:59:40', '2021-05-01 08:59:40', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 137, 'http://localhost/coocking/?p=142', 0, 'revision', '', 0),
(143, 1, '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2021-05-01 08:59:40', '2021-05-01 08:59:40', '', 134, 'http://localhost/coocking/?p=143', 0, 'revision', '', 0),
(144, 1, '2021-05-01 08:59:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-01 08:59:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/coocking/?page_id=144', 0, 'page', '', 0),
(145, 1, '2021-05-01 09:12:27', '2021-05-01 09:12:27', '', 'Card', '', 'publish', 'closed', 'closed', '', 'card', '', '', '2021-05-01 09:12:27', '2021-05-01 09:12:27', '', 0, 'http://localhost/coocking/?page_id=145', 0, 'page', '', 0),
(146, 1, '2021-05-01 09:12:27', '2021-05-01 09:12:27', '', 'Card', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2021-05-01 09:12:27', '2021-05-01 09:12:27', '', 145, 'http://localhost/coocking/?p=146', 0, 'revision', '', 0),
(147, 1, '2021-05-02 04:03:35', '2021-05-02 04:03:35', '', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-05-02 04:03:35', '2021-05-02 04:03:35', '', 0, 'http://localhost/coocking/?page_id=147', 0, 'page', '', 0),
(148, 1, '2021-05-02 04:03:35', '2021-05-02 04:03:35', '', 'Checkout', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2021-05-02 04:03:35', '2021-05-02 04:03:35', '', 147, 'http://localhost/coocking/?p=148', 0, 'revision', '', 0),
(149, 1, '2021-05-02 05:00:37', '2021-05-02 05:00:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-05-02 05:00:37', '2021-05-02 05:00:37', '', 1, 'http://localhost/coocking/?p=149', 0, 'revision', '', 0),
(150, 1, '2021-05-02 05:10:07', '2021-05-02 05:10:07', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Where does it come from?', '', 'trash', 'closed', 'closed', '', 'where-does-it-come-from__trashed', '', '', '2021-05-02 05:11:55', '2021-05-02 05:11:55', '', 0, 'http://localhost/coocking/?post_type=coocking_blog&#038;p=150', 0, 'coocking_blog', '', 0),
(151, 1, '2021-05-02 05:09:58', '2021-05-02 05:09:58', '', 'featured-image-04', '', 'inherit', 'open', 'closed', '', 'featured-image-04', '', '', '2021-05-02 05:09:58', '2021-05-02 05:09:58', '', 150, 'http://localhost/coocking/assets/files/2021/05/featured-image-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2021-05-05 04:14:14', '2021-05-05 04:14:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"acf-options-testy-menu-dynamic\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testy Menu Dynamic', 'testy-menu-dynamic', 'publish', 'closed', 'closed', '', 'group_609218d059cb0', '', '', '2021-05-05 04:17:49', '2021-05-05 04:17:49', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=152', 0, 'acf-field-group', '', 0),
(153, 1, '2021-05-05 04:14:15', '2021-05-05 04:14:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testy Menu Section Heading', 'testy_menu_section_heading', 'publish', 'closed', 'closed', '', 'field_60921ac1894f7', '', '', '2021-05-05 04:14:15', '2021-05-05 04:14:15', '', 152, 'http://localhost/coocking/?post_type=acf-field&p=153', 0, 'acf-field', '', 0),
(154, 1, '2021-05-05 04:14:15', '2021-05-05 04:14:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testy Menu Section Title', 'testy_menu_section_title', 'publish', 'closed', 'closed', '', 'field_60921ad2894f8', '', '', '2021-05-05 04:14:15', '2021-05-05 04:14:15', '', 152, 'http://localhost/coocking/?post_type=acf-field&p=154', 1, 'acf-field', '', 0),
(155, 1, '2021-05-05 04:14:15', '2021-05-05 04:14:15', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Testy Menu Item Groups', 'testy_menu_item_groups', 'publish', 'closed', 'closed', '', 'field_60921b06894f9', '', '', '2021-05-05 04:14:15', '2021-05-05 04:14:15', '', 152, 'http://localhost/coocking/?post_type=acf-field&p=155', 2, 'acf-field', '', 0),
(156, 1, '2021-05-05 04:14:15', '2021-05-05 04:14:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Party Name Text', 'party_name_text', 'publish', 'closed', 'closed', '', 'field_60921b2c894fa', '', '', '2021-05-05 04:14:15', '2021-05-05 04:14:15', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=156', 0, 'acf-field', '', 0),
(157, 1, '2021-05-05 04:14:15', '2021-05-05 04:14:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Party Icon', 'party_icon', 'publish', 'closed', 'closed', '', 'field_60921b6c894fb', '', '', '2021-05-05 04:14:15', '2021-05-05 04:14:15', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=157', 1, 'acf-field', '', 0),
(158, 1, '2021-05-05 04:17:37', '2021-05-05 04:17:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Lunch Text', 'lunch_text', 'publish', 'closed', 'closed', '', 'field_60921bbd7fc87', '', '', '2021-05-05 04:17:37', '2021-05-05 04:17:37', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=158', 2, 'acf-field', '', 0),
(159, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Lunch Icon', 'lunch_icon', 'publish', 'closed', 'closed', '', 'field_60921bc77fc88', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=159', 3, 'acf-field', '', 0),
(160, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dinner Text', 'dinner_text', 'publish', 'closed', 'closed', '', 'field_60921bdd7fc89', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=160', 4, 'acf-field', '', 0),
(161, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Dinner Icon', 'dinner_icon', 'publish', 'closed', 'closed', '', 'field_60921bea7fc8a', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=161', 5, 'acf-field', '', 0),
(162, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Coffee Text', 'coffee_text', 'publish', 'closed', 'closed', '', 'field_60921bf67fc8b', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=162', 6, 'acf-field', '', 0),
(163, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Coffee Icon', 'coffee_icon', 'publish', 'closed', 'closed', '', 'field_60921c127fc8c', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=163', 7, 'acf-field', '', 0),
(164, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Breakfast Text', 'breakfast_text', 'publish', 'closed', 'closed', '', 'field_60921c1e7fc8d', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=164', 8, 'acf-field', '', 0),
(165, 1, '2021-05-05 04:17:38', '2021-05-05 04:17:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Breakfast Icon', 'breakfast_icon', 'publish', 'closed', 'closed', '', 'field_60921c297fc8e', '', '', '2021-05-05 04:17:38', '2021-05-05 04:17:38', '', 155, 'http://localhost/coocking/?post_type=acf-field&p=165', 9, 'acf-field', '', 0),
(166, 1, '2021-05-05 04:19:13', '2021-05-05 04:19:13', '', 'b', '', 'inherit', 'open', 'closed', '', 'b', '', '', '2021-05-05 04:19:13', '2021-05-05 04:19:13', '', 0, 'http://localhost/coocking/assets/files/2021/05/b.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2021-05-05 04:19:16', '2021-05-05 04:19:16', '', 'c', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2021-05-05 04:19:16', '2021-05-05 04:19:16', '', 0, 'http://localhost/coocking/assets/files/2021/05/c.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2021-05-05 04:19:17', '2021-05-05 04:19:17', '', 'd', '', 'inherit', 'open', 'closed', '', 'd', '', '', '2021-05-05 04:19:17', '2021-05-05 04:19:17', '', 0, 'http://localhost/coocking/assets/files/2021/05/d.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2021-05-05 04:19:18', '2021-05-05 04:19:18', '', 'l1', '', 'inherit', 'open', 'closed', '', 'l1', '', '', '2021-05-05 04:19:18', '2021-05-05 04:19:18', '', 0, 'http://localhost/coocking/assets/files/2021/05/l1.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2021-05-05 04:19:19', '2021-05-05 04:19:19', '', 'p', '', 'inherit', 'open', 'closed', '', 'p', '', '', '2021-05-05 04:19:19', '2021-05-05 04:19:19', '', 0, 'http://localhost/coocking/assets/files/2021/05/p.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ctermmeta`
--

CREATE TABLE `wp_ctermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cterms`
--

CREATE TABLE `wp_cterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cterms`
--

INSERT INTO `wp_cterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cterm_relationships`
--

CREATE TABLE `wp_cterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cterm_relationships`
--

INSERT INTO `wp_cterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cterm_taxonomy`
--

CREATE TABLE `wp_cterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cterm_taxonomy`
--

INSERT INTO `wp_cterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cusermeta`
--

CREATE TABLE `wp_cusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cusermeta`
--

INSERT INTO `wp_cusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_ccapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_cuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:12:{s:64:\"d5e9d3750922f5db9e7d98f40bcc41e2020dda50dac5efccf2c69bdf0e71dde8\";a:4:{s:10:\"expiration\";i:1620286686;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619077086;}s:64:\"ddf5c2c0cc260f690e63b4707effb0b73ad59fa1524724c133cba28ae5a1ff3a\";a:4:{s:10:\"expiration\";i:1620442645;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619233045;}s:64:\"43117ec64784abcb18af5fc993c91fbf61d63fe8011911444999de71a2bf5764\";a:4:{s:10:\"expiration\";i:1620532991;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619323391;}s:64:\"205dfdfa71684f684c079823f537805cc8edbbaa2d8e3439534d8c5562d33f27\";a:4:{s:10:\"expiration\";i:1620620027;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619410427;}s:64:\"176291f0e8de107aa45204a7ae07a780e8fae339d2e0620e6b4b00266d21e7fa\";a:4:{s:10:\"expiration\";i:1620723511;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619513911;}s:64:\"9bf0bc7fc81c5590f3c0f4dfde43357340e9be17629c1008edfe70f56b30028d\";a:4:{s:10:\"expiration\";i:1620801181;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619591581;}s:64:\"12f36aa3e9ec2a585907c9ef848e180a52738eaf04f782026f2c9e3f0b0a90c0\";a:4:{s:10:\"expiration\";i:1620876407;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619666807;}s:64:\"cc2058f90ee8fb9db816c234d814c2812dc4043d066f170eaa31960cde706ffb\";a:4:{s:10:\"expiration\";i:1621049210;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619839610;}s:64:\"abe895905b53a5a3b244e5555bb772bad34086eb55553fc59d8547d0e2afcc8f\";a:4:{s:10:\"expiration\";i:1621150733;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619941133;}s:64:\"607cb87c56400fc8eaf4ff0ad06af7d95877cfeaac00aad090864fa827fede5b\";a:4:{s:10:\"expiration\";i:1621309490;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1620099890;}s:64:\"e2b20d1fceb67f9cec511a7f8ed8c1fb47ab320a951c57d101b5454bbf8d3b6c\";a:4:{s:10:\"expiration\";i:1621396363;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1620186763;}s:64:\"8d1f81e9d5f4a9b7553400cfc3a5b2bc0ba1efaa1e5498b6cdd336a1c5d90d77\";a:4:{s:10:\"expiration\";i:1621396498;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1620186898;}}'),
(17, 1, 'wp_cdashboard_quick_press_last_post_id', '131'),
(18, 1, 'wp_cuser-settings', 'libraryContent=browse'),
(19, 1, 'wp_cuser-settings-time', '1619415397'),
(20, 1, 'gform_recent_forms', 'a:1:{i:0;s:1:\"1\";}'),
(21, 1, '_woocommerce_tracks_anon_id', 'woo:pytSJv+1PcGZwVyEW7ROjJIB'),
(22, 1, 'last_update', '1619844464'),
(23, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1619844463584'),
(24, 1, 'wc_last_active', '1619827200'),
(25, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cusers`
--

CREATE TABLE `wp_cusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cusers`
--

INSERT INTO `wp_cusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BF7MBcge8WRNykJsmR4uSM5PZ/DFfZ1', 'admin', 'coocking@gmail.com', 'http://localhost/coocking', '2021-04-22 07:37:35', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cgf_entry`
--
ALTER TABLE `wp_cgf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Indexes for table `wp_cgf_entry_meta`
--
ALTER TABLE `wp_cgf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_cgf_entry_notes`
--
ALTER TABLE `wp_cgf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Indexes for table `wp_cgf_form`
--
ALTER TABLE `wp_cgf_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cgf_form_meta`
--
ALTER TABLE `wp_cgf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_cgf_form_revisions`
--
ALTER TABLE `wp_cgf_form_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_cgf_form_view`
--
ALTER TABLE `wp_cgf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_clinks`
--
ALTER TABLE `wp_clinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_coptions`
--
ALTER TABLE `wp_coptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_cpostmeta`
--
ALTER TABLE `wp_cpostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cposts`
--
ALTER TABLE `wp_cposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_ctermmeta`
--
ALTER TABLE `wp_ctermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cterms`
--
ALTER TABLE `wp_cterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_cterm_relationships`
--
ALTER TABLE `wp_cterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_cterm_taxonomy`
--
ALTER TABLE `wp_cterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_cusermeta`
--
ALTER TABLE `wp_cusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cusers`
--
ALTER TABLE `wp_cusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_cgf_entry`
--
ALTER TABLE `wp_cgf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cgf_entry_meta`
--
ALTER TABLE `wp_cgf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cgf_entry_notes`
--
ALTER TABLE `wp_cgf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cgf_form`
--
ALTER TABLE `wp_cgf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_cgf_form_revisions`
--
ALTER TABLE `wp_cgf_form_revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cgf_form_view`
--
ALTER TABLE `wp_cgf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_clinks`
--
ALTER TABLE `wp_clinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_coptions`
--
ALTER TABLE `wp_coptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1238;

--
-- AUTO_INCREMENT for table `wp_cpostmeta`
--
ALTER TABLE `wp_cpostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_cposts`
--
ALTER TABLE `wp_cposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `wp_ctermmeta`
--
ALTER TABLE `wp_ctermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cterms`
--
ALTER TABLE `wp_cterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_cterm_taxonomy`
--
ALTER TABLE `wp_cterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_cusermeta`
--
ALTER TABLE `wp_cusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_cusers`
--
ALTER TABLE `wp_cusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
