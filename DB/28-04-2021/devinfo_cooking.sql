-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2021 at 10:05 AM
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
-- Table structure for table `wp_ccommentmeta`
--

CREATE TABLE `wp_ccommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ccomments`
--

CREATE TABLE `wp_ccomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ccomments`
--

INSERT INTO `wp_ccomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
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
(96, 'wp_cuser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
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
(112, 'cron', 'a:7:{i:1619604782;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619638668;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619681861;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619681887;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619681905;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619768269;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619325048;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(131, 'finished_updating_comment_type', '1', 'yes'),
(132, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.3\";s:7:\"version\";s:5:\"5.6.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1619595473;s:15:\"version_checked\";s:5:\"5.5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(133, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"coocking@gmail.com\";s:7:\"version\";s:5:\"5.5.4\";s:9:\"timestamp\";i:1619077252;}', 'no'),
(143, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(146, 'recently_activated', 'a:2:{s:47:\"really-simple-captcha/really-simple-captcha.php\";i:1619323533;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1619323521;}', 'yes'),
(165, '_site_transient_timeout_browser_430c8bfe8bf1cc772d8a7ec27f27106c', '1619851208', 'no'),
(166, '_site_transient_browser_430c8bfe8bf1cc772d8a7ec27f27106c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.128\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(167, '_site_transient_timeout_php_check_787617df3522cd9d9182823c87ee367d', '1619851209', 'no'),
(168, '_site_transient_php_check_787617df3522cd9d9182823c87ee367d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(182, '_site_transient_timeout_browser_87532f5c229247f5166d216fad1d829f', '1619928197', 'no'),
(183, '_site_transient_browser_87532f5c229247f5166d216fad1d829f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.85\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(196, 'current_theme', 'Cooking Restuarent theme', 'yes'),
(197, 'theme_mods_cooking', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(198, 'theme_switched', '', 'yes'),
(199, 'recovery_mode_email_last_sent', '1619325050', 'yes'),
(202, 'acf_version', '5.9.5', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(214, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619589758;s:7:\"checked\";a:4:{s:7:\"cooking\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(225, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619589757;s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.1\";s:29:\"gravityforms/gravityforms.php\";s:6:\"2.4.23\";s:9:\"hello.php\";s:5:\"1.7.2\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:6:\"3.2.10\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.8.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/velvet-blues-update-urls\";s:4:\"slug\";s:24:\"velvet-blues-update-urls\";s:6:\"plugin\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:11:\"new_version\";s:6:\"3.2.10\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/velvet-blues-update-urls/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/velvet-blues-update-urls.3.2.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://s.w.org/plugins/geopattern-icon/velvet-blues-update-urls_727172.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/velvet-blues-update-urls/assets/banner-772x250.jpg?rev=486343\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
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
(521, '_transient_timeout_acf_plugin_updates', '1619600224', 'no'),
(522, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}}', 'no'),
(529, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1619634805', 'no'),
(530, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(535, '_site_transient_timeout_theme_roots', '1619597273', 'no'),
(536, '_site_transient_theme_roots', 'a:4:{s:7:\"cooking\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(546, 'cptui_post_types', 'a:1:{s:13:\"coocking_blog\";a:30:{s:4:\"name\";s:13:\"coocking_blog\";s:5:\"label\";s:14:\"coocking_blogs\";s:14:\"singular_label\";s:13:\"coocking_blog\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(551, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1619647339', 'no'),
(552, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:47:\"Watch party + Discussion group: How to use Trac\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277828739/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-04-29 08:00:00\";s:8:\"end_date\";s:19:\"2021-04-29 09:00:00\";s:20:\"start_unix_timestamp\";i:1619708400;s:18:\"end_unix_timestamp\";i:1619712000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.9036063;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:71:\"ওয়ার্ডপ্রেস মিটআপ - মে ২০২১\";s:3:\"url\";s:66:\"https://www.meetup.com/Barishal-WordPress-Meetup/events/277838222/\";s:6:\"meetup\";s:25:\"Barishal WordPress Meetup\";s:10:\"meetup_url\";s:49:\"https://www.meetup.com/Barishal-WordPress-Meetup/\";s:4:\"date\";s:19:\"2021-05-01 19:00:00\";s:8:\"end_date\";s:19:\"2021-05-01 20:00:00\";s:20:\"start_unix_timestamp\";i:1619874000;s:18:\"end_unix_timestamp\";i:1619877600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"BD\";s:8:\"latitude\";d:22.700000762939;s:9:\"longitude\";d:90.370002746582;}}}}', 'no');

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
(16, 13, '_edit_lock', '1619326554:1'),
(17, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1619415088:1'),
(19, 31, '_wp_attached_file', '2021/04/logo.png'),
(20, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:280;s:6:\"height\";i:40;s:4:\"file\";s:16:\"2021/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 32, '_edit_last', '1'),
(22, 32, '_edit_lock', '1619420818:1'),
(23, 43, '_wp_attached_file', '2021/04/slide-image-01.jpg'),
(24, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-01.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-01-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-01-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-01-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-01-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 44, '_wp_attached_file', '2021/04/slide-image-02.jpg'),
(26, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-02.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-02-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-02-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-02-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-02-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 45, '_wp_attached_file', '2021/04/slide-image-03.jpg'),
(28, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2021/04/slide-image-03.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"slide-image-03-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"slide-image-03-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"slide-image-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"slide-image-03-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"slide-image-03-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 46, '_edit_last', '1'),
(30, 46, '_edit_lock', '1619427885:1'),
(31, 66, '_wp_attached_file', '2021/04/thumbnail-01.jpg'),
(32, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 67, '_wp_attached_file', '2021/04/thumbnail-02.jpg'),
(34, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 68, '_wp_attached_file', '2021/04/thumbnail-03.jpg'),
(36, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:24:\"2021/04/thumbnail-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 69, '_edit_last', '1'),
(38, 69, '_edit_lock', '1619430067:1'),
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
(66, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-01.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-01-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 114, '_wp_attached_file', '2021/04/gallery-02.jpg'),
(68, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-02-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 115, '_wp_attached_file', '2021/04/gallery-03.jpg'),
(70, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-03-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 116, '_wp_attached_file', '2021/04/gallery-04.jpg'),
(72, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-04.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-04-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 117, '_wp_attached_file', '2021/04/gallery-05.jpg'),
(74, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-05.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-05-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-05-1024x406.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:406;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-05-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 118, '_wp_attached_file', '2021/04/gallery-06.jpg'),
(76, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:960;s:4:\"file\";s:22:\"2021/04/gallery-06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-06-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 119, '_wp_attached_file', '2021/04/gallery-07.jpg'),
(78, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:960;s:4:\"file\";s:22:\"2021/04/gallery-07.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-07-300x248.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-07-1024x847.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:847;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-07-768x636.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:636;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 120, '_wp_attached_file', '2021/04/gallery-08.jpg'),
(80, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-08.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-08-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 121, '_wp_attached_file', '2021/04/gallery-09.jpg'),
(82, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-09.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-09-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 122, '_wp_attached_file', '2021/04/gallery-10.jpg'),
(84, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1160;s:6:\"height\";i:460;s:4:\"file\";s:22:\"2021/04/gallery-10.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"gallery-10-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"gallery-10-1024x406.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:406;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"gallery-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"gallery-10-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(97, 129, '_thumbnail_id', '130');

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
(1, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', '', 0, 'http://localhost/coocking/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/coocking/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', '', 0, 'http://localhost/coocking/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-22 07:37:40', '2021-04-22 07:37:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/coocking.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-22 07:37:40', '2021-04-22 07:37:40', '', 0, 'http://localhost/coocking/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-22 07:38:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-22 07:38:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/coocking/?p=4', 0, 'post', '', 0),
(6, 1, '2021-04-24 03:11:09', '2021-04-24 03:11:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'publish', 'closed', 'closed', '', 'contact-page', '', '', '2021-04-24 07:17:19', '2021-04-24 07:17:19', '', 0, 'http://localhost/coocking/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-04-24 03:11:09', '2021-04-24 03:11:09', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 03:11:09', '2021-04-24 03:11:09', '', 6, 'http://localhost/coocking/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-04-24 06:20:14', '2021-04-24 06:20:14', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"] \n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 06:20:14', '2021-04-24 06:20:14', '', 6, 'http://localhost/coocking/?p=8', 0, 'revision', '', 0),
(10, 1, '2021-04-24 07:14:36', '2021-04-24 07:14:36', '<!-- wp:shortcode -->\n[contact-form-7 id=\"9\" title=\"contact form two\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:14:36', '2021-04-24 07:14:36', '', 6, 'http://localhost/coocking/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-04-24 07:15:00', '2021-04-24 07:15:00', '<!-- wp:shortcode -->\n[contact-form-7 id=\"9\" title=\"contact form two\"] \n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:15:00', '2021-04-24 07:15:00', '', 6, 'http://localhost/coocking/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-04-24 07:17:19', '2021-04-24 07:17:19', '<!-- wp:shortcode -->\n[contact-form-7 id=\"5\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-24 07:17:19', '2021-04-24 07:17:19', '', 6, 'http://localhost/coocking/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 0, 'http://localhost/coocking/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-04-25 04:58:03', '2021-04-25 04:58:03', '', 13, 'http://localhost/coocking/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-26 05:11:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-26 05:11:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
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
(69, 1, '2021-04-26 09:11:53', '2021-04-26 09:11:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"acf-options-about-us\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_608682be2b70d', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2021-04-26 09:11:53', '2021-04-26 09:11:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Section Title', 'about_section_title', 'publish', 'closed', 'closed', '', 'field_608682d5a602e', '', '', '2021-04-26 09:11:53', '2021-04-26 09:11:53', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2021-04-26 09:11:53', '2021-04-26 09:11:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'About left Small Image', 'about_left_small_image', 'publish', 'closed', 'closed', '', 'field_60868326a602f', '', '', '2021-04-26 09:11:53', '2021-04-26 09:11:53', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'About left Big Image', 'about_left_big_image', 'publish', 'closed', 'closed', '', 'field_60868367a6030', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=72', 2, 'acf-field', '', 0),
(73, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About US Small Title', 'about_us_small_title', 'publish', 'closed', 'closed', '', 'field_60868379a6031', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=73', 3, 'acf-field', '', 0),
(74, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Us Description', 'about_us_description', 'publish', 'closed', 'closed', '', 'field_60868385a6032', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=74', 4, 'acf-field', '', 0),
(75, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Learn More Button Text', 'about_learn_more_button_text', 'publish', 'closed', 'closed', '', 'field_60868392a6033', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=75', 5, 'acf-field', '', 0),
(76, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Learn More Button Link', 'about_learn_more_button_link', 'publish', 'closed', 'closed', '', 'field_608683b1a6034', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=76', 6, 'acf-field', '', 0),
(77, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About See Menu Button Text', 'about_see_menu_button_text', 'publish', 'closed', 'closed', '', 'field_608683bba6035', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=77', 7, 'acf-field', '', 0);
INSERT INTO `wp_cposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2021-04-26 09:11:54', '2021-04-26 09:11:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About See Menu Button Link', 'about_see_menu_button_link', 'publish', 'closed', 'closed', '', 'field_608683cda6036', '', '', '2021-04-26 09:11:54', '2021-04-26 09:11:54', '', 69, 'http://localhost/coocking/?post_type=acf-field&p=78', 8, 'acf-field', '', 0),
(79, 1, '2021-04-26 09:12:22', '2021-04-26 09:12:22', '', 'about-inset', '', 'inherit', 'open', 'closed', '', 'about-inset', '', '', '2021-04-26 09:12:22', '2021-04-26 09:12:22', '', 0, 'http://localhost/coocking/assets/files/2021/04/about-inset.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2021-04-26 09:12:31', '2021-04-26 09:12:31', '', 'about-main', '', 'inherit', 'open', 'closed', '', 'about-main', '', '', '2021-04-26 09:12:31', '2021-04-26 09:12:31', '', 0, 'http://localhost/coocking/assets/files/2021/04/about-main.jpg', 0, 'attachment', 'image/jpeg', 0),
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
(92, 1, '2021-04-27 05:01:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-27 05:01:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/coocking/?post_type=acf-field-group&p=92', 0, 'acf-field-group', '', 0),
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
(130, 1, '2021-04-28 09:52:03', '2021-04-28 09:52:03', '', 'featured-image-02', '', 'inherit', 'open', 'closed', '', 'featured-image-02', '', '', '2021-04-28 09:52:03', '2021-04-28 09:52:03', '', 129, 'http://localhost/coocking/assets/files/2021/04/featured-image-02.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(1, 'Uncategorized', 'uncategorized', 0);

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
(1, 1, 'category', '', 0, 1);

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
(16, 1, 'session_tokens', 'a:7:{s:64:\"d5e9d3750922f5db9e7d98f40bcc41e2020dda50dac5efccf2c69bdf0e71dde8\";a:4:{s:10:\"expiration\";i:1620286686;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619077086;}s:64:\"ddf5c2c0cc260f690e63b4707effb0b73ad59fa1524724c133cba28ae5a1ff3a\";a:4:{s:10:\"expiration\";i:1620442645;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619233045;}s:64:\"43117ec64784abcb18af5fc993c91fbf61d63fe8011911444999de71a2bf5764\";a:4:{s:10:\"expiration\";i:1620532991;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619323391;}s:64:\"205dfdfa71684f684c079823f537805cc8edbbaa2d8e3439534d8c5562d33f27\";a:4:{s:10:\"expiration\";i:1620620027;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619410427;}s:64:\"c0641d5d71f88a61f78138757af859d9c4d62107f269b3bb17cc67dbeea2cfe0\";a:4:{s:10:\"expiration\";i:1619667345;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619494545;}s:64:\"176291f0e8de107aa45204a7ae07a780e8fae339d2e0620e6b4b00266d21e7fa\";a:4:{s:10:\"expiration\";i:1620723511;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619513911;}s:64:\"9bf0bc7fc81c5590f3c0f4dfde43357340e9be17629c1008edfe70f56b30028d\";a:4:{s:10:\"expiration\";i:1620801181;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619591581;}}'),
(17, 1, 'wp_cdashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_cuser-settings', 'libraryContent=browse'),
(19, 1, 'wp_cuser-settings-time', '1619415397');

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
-- Indexes for table `wp_ccommentmeta`
--
ALTER TABLE `wp_ccommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_ccomments`
--
ALTER TABLE `wp_ccomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- AUTO_INCREMENT for table `wp_ccommentmeta`
--
ALTER TABLE `wp_ccommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ccomments`
--
ALTER TABLE `wp_ccomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_clinks`
--
ALTER TABLE `wp_clinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_coptions`
--
ALTER TABLE `wp_coptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `wp_cpostmeta`
--
ALTER TABLE `wp_cpostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `wp_cposts`
--
ALTER TABLE `wp_cposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `wp_ctermmeta`
--
ALTER TABLE `wp_ctermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cterms`
--
ALTER TABLE `wp_cterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_cterm_taxonomy`
--
ALTER TABLE `wp_cterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_cusermeta`
--
ALTER TABLE `wp_cusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_cusers`
--
ALTER TABLE `wp_cusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
