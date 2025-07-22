-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 22 2025 г., 20:30
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `maudi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2025-07-20 16:33:37', '2025-07-20 13:33:37', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://maudi.test', 'yes'),
(2, 'home', 'http://maudi.test', 'yes'),
(3, 'blogname', 'Maudi Residence', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'squaldzn@ya.ru', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:25:\"polylang-pro/polylang.php\";i:1;s:39:\"advanced-custom-fields-pro-main/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'webmedia', 'yes'),
(41, 'stylesheet', 'webmedia', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '60421', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'on'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'on'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1768570413', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'off'),
(103, 'WPLANG', 'ru_RU', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:10:{i:1753216419;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1753234419;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1753234614;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1753277618;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1753277814;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1753277815;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1753623222;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1753630077;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1753709618;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1753019079;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(137, 'db_upgraded', '', 'on'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"squaldzn@ya.ru\";s:7:\"version\";s:5:\"6.8.2\";s:9:\"timestamp\";i:1753018511;}', 'no'),
(146, '_site_transient_timeout_browser_7c2d39e66de15e06d0ccbdd9d3b5c283', '1753623414', 'off'),
(147, '_site_transient_browser_7c2d39e66de15e06d0ccbdd9d3b5c283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"136.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(148, '_site_transient_timeout_php_check_7ec5f04fef1dc985019fbdb14afad4b2', '1753623415', 'off'),
(149, '_site_transient_php_check_7ec5f04fef1dc985019fbdb14afad4b2', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(157, 'can_compress_scripts', '1', 'on'),
(166, 'finished_updating_comment_type', '1', 'auto'),
(167, 'current_theme', 'Webmedia Theme', 'auto'),
(168, 'theme_mods_webmedia', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(169, 'theme_switched', '', 'auto'),
(181, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"750f89796968216d1e5016ffd34a930e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(182, 'recovery_mode_email_last_sent', '1753021961', 'auto'),
(196, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(197, 'recently_activated', 'a:0:{}', 'off'),
(198, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo4OiIqKioqKioqKiI7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9tYXVkaS50ZXN0Ijt9', 'auto'),
(199, 'acf_pro_license_status', 'a:2:{s:6:\"status\";s:6:\"active\";s:10:\"next_check\";i:15778944576;}', 'auto'),
(200, 'acf_first_activated_version', '6.3.4', 'on'),
(201, 'acf_site_health', '{\"version\":\"6.3.4\",\"plugin_type\":\"PRO\",\"activated\":true,\"activated_url\":\"http:\\/\\/maudi.test\",\"license_type\":\"\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.8.2\",\"mysql_version\":\"8.0.30\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Webmedia Theme\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.4\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1753025279,\"last_updated\":1753026533,\"event_first_created_field_group\":1753026533}', 'off'),
(203, 'acf_version', '6.4.2', 'auto'),
(460, 'polylang', 'a:19:{s:10:\"force_lang\";i:1;s:7:\"domains\";a:3:{s:2:\"en\";s:0:\"\";s:2:\"ru\";s:17:\"http://maudi.test\";s:2:\"ka\";s:0:\"\";}s:12:\"hide_default\";b:1;s:7:\"rewrite\";b:1;s:13:\"redirect_lang\";b:1;s:7:\"browser\";b:0;s:13:\"media_support\";b:1;s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:4:\"sync\";a:0:{}s:12:\"default_lang\";s:2:\"ru\";s:9:\"nav_menus\";a:0:{}s:19:\"language_taxonomies\";a:0:{}s:16:\"first_activation\";i:1753100742;s:16:\"previous_version\";s:0:\"\";s:7:\"version\";s:5:\"3.7.1\";s:5:\"media\";a:1:{s:9:\"duplicate\";b:0;}s:27:\"machine_translation_enabled\";b:0;s:28:\"machine_translation_services\";a:1:{s:5:\"deepl\";a:0:{}}}', 'auto'),
(461, 'pll_language_from_content_available', 'no', 'auto'),
(462, 'polylang_wpml_strings', 'a:0:{}', 'auto'),
(464, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(480, 'category_children', 'a:0:{}', 'auto'),
(525, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'auto'),
(551, '_transient_pll_translated_slugs', 'a:8:{s:8:\"category\";a:2:{s:4:\"slug\";s:8:\"category\";s:12:\"translations\";a:3:{s:2:\"ru\";s:8:\"category\";s:2:\"en\";s:8:\"category\";s:2:\"ka\";s:8:\"category\";}}s:8:\"post_tag\";a:2:{s:4:\"slug\";s:3:\"tag\";s:12:\"translations\";a:3:{s:2:\"ru\";s:3:\"tag\";s:2:\"en\";s:3:\"tag\";s:2:\"ka\";s:3:\"tag\";}}s:11:\"post_format\";a:2:{s:4:\"slug\";s:4:\"type\";s:12:\"translations\";a:3:{s:2:\"ru\";s:4:\"type\";s:2:\"en\";s:4:\"type\";s:2:\"ka\";s:4:\"type\";}}s:6:\"author\";a:2:{s:4:\"slug\";s:6:\"author\";s:12:\"translations\";a:3:{s:2:\"ru\";s:6:\"author\";s:2:\"en\";s:6:\"author\";s:2:\"ka\";s:6:\"author\";}}s:6:\"search\";a:2:{s:4:\"slug\";s:6:\"search\";s:12:\"translations\";a:3:{s:2:\"ru\";s:6:\"search\";s:2:\"en\";s:6:\"search\";s:2:\"ka\";s:6:\"search\";}}s:10:\"attachment\";a:2:{s:4:\"slug\";s:10:\"attachment\";s:12:\"translations\";a:3:{s:2:\"ru\";s:10:\"attachment\";s:2:\"en\";s:10:\"attachment\";s:2:\"ka\";s:10:\"attachment\";}}s:5:\"paged\";a:2:{s:4:\"slug\";s:4:\"page\";s:12:\"translations\";a:3:{s:2:\"ru\";s:4:\"page\";s:2:\"en\";s:4:\"page\";s:2:\"ka\";s:4:\"page\";}}s:5:\"front\";a:2:{s:4:\"slug\";s:0:\"\";s:12:\"translations\";a:3:{s:2:\"ru\";s:0:\"\";s:2:\"en\";s:0:\"\";s:2:\"ka\";s:0:\"\";}}}', 'on');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(604, 'rewrite_rules', 'a:184:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:56:\"^(en|ka)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:42:\"^(en|ka)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:55:\"(en|ka)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(en|ka)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(en|ka)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:43:\"(en|ka)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(en|ka)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"(en|ka)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:47:\"(en|ka)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:28:\"(en|ka)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:40:\"(en|ka)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:22:\"(en|ka)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"(en|ka)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:48:\"(en|ka)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:29:\"(en|ka)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&post_format=$matches[1]&embed=true\";s:41:\"(en|ka)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&post_format=$matches[1]&paged=$matches[2]\";s:23:\"(en|ka)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=ru&post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:40:\"(en|ka)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:35:\"(en|ka)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:16:\"(en|ka)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:28:\"(en|ka)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=ru&&paged=$matches[1]\";s:35:\"(en|ka)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?lang=$matches[1]&&page_id=6&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lang=ru&&page_id=6&cpage=$matches[1]\";s:10:\"(en|ka)/?$\";s:26:\"index.php?lang=$matches[1]\";s:49:\"(en|ka)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:44:\"(en|ka)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:25:\"(en|ka)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:52:\"(en|ka)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:47:\"(en|ka)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:28:\"(en|ka)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=ru&s=$matches[1]&embed=true\";s:40:\"(en|ka)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=ru&s=$matches[1]&paged=$matches[2]\";s:22:\"(en|ka)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=ru&s=$matches[1]\";s:55:\"(en|ka)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:50:\"(en|ka)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:31:\"(en|ka)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&author_name=$matches[1]&embed=true\";s:43:\"(en|ka)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&author_name=$matches[1]&paged=$matches[2]\";s:25:\"(en|ka)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=ru&author_name=$matches[1]\";s:77:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:72:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:53:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:65:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:47:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:64:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:59:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:40:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:52:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:34:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:51:\"(en|ka)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:46:\"(en|ka)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:27:\"(en|ka)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:39:\"(en|ka)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:21:\"(en|ka)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:66:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:76:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:96:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:91:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:91:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:72:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:65:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:85:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:80:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:73:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:80:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:69:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:55:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:65:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:85:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:61:\"(en|ka)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:72:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:59:\"(en|ka)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:46:\"(en|ka)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:35:\"(en|ka)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"(en|ka)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"(en|ka)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"(en|ka)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"(en|ka)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"(en|ka)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"(en|ka)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:28:\"(en|ka)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:48:\"(en|ka)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:43:\"(en|ka)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:36:\"(en|ka)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:43:\"(en|ka)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:32:\"(en|ka)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'auto'),
(677, '_transient_pll_languages_list', 'a:3:{i:0;a:22:{s:4:\"name\";s:14:\"Русский\";s:4:\"slug\";s:2:\"ru\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:2;s:6:\"locale\";s:5:\"ru_RU\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ru-RU\";s:8:\"facebook\";s:5:\"ru_RU\";s:8:\"home_url\";s:18:\"http://maudi.test/\";s:10:\"search_url\";s:18:\"http://maudi.test/\";s:4:\"host\";N;s:13:\"page_on_front\";i:6;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"ru\";s:8:\"flag_url\";s:87:\"http://maudi.test/wp-content/plugins/polylang-pro/vendor/wpsyntex/polylang/flags/ru.png\";s:4:\"flag\";s:471:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAdVBMVEX19f/u7vjm5/H+/v75+fng4Ove3ulFRfyysv6cnP6QkPmIiPh/f/YAAOYAAP1ycv5QUP06OvkxMfcoKPcgIPYUFPS0AADdaYzTRG/RPGnOM2LKLFzIIVPCEUZ7AAD0AQH7YGH3ODj0JyfzERDgAAD4TU3pAABIfLuPAAAAT0lEQVR4AQXBAQqDMAAAsZytyHzA/v9LYRS7JIAQMkBb0ATsgLoKInnHvIrHrdRaBzxupTDxuFUifUsp4R3zU4iwzmOyT1ibBtP2u3C+wB+SHBB5JNY7DAAAAABJRU5ErkJggg==\" alt=\"Русский\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:1;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:2;s:16:\"term_taxonomy_id\";i:2;s:5:\"count\";i:6;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:3;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:1;}}}i:1;a:22:{s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:5;s:6:\"locale\";s:5:\"en_US\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"home_url\";s:21:\"http://maudi.test/en/\";s:10:\"search_url\";s:21:\"http://maudi.test/en/\";s:4:\"host\";N;s:13:\"page_on_front\";i:23;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"us\";s:8:\"flag_url\";s:87:\"http://maudi.test/wp-content/plugins/polylang-pro/vendor/wpsyntex/polylang/flags/us.png\";s:4:\"flag\";s:576:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:5;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:3;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:6;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:1;}}}i:2;a:22:{s:4:\"name\";s:21:\"ქართული\";s:4:\"slug\";s:2:\"ka\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:9;s:6:\"locale\";s:5:\"ka_GE\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ka-GE\";s:8:\"facebook\";s:5:\"ka_GE\";s:8:\"home_url\";s:21:\"http://maudi.test/ka/\";s:10:\"search_url\";s:21:\"http://maudi.test/ka/\";s:4:\"host\";N;s:13:\"page_on_front\";i:24;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"ge\";s:8:\"flag_url\";s:87:\"http://maudi.test/wp-content/plugins/polylang-pro/vendor/wpsyntex/polylang/flags/ge.png\";s:4:\"flag\";s:514:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAbFBMVEXr6+vk5OTtAADe3t7a2dr+/v797ez3vrvzhoP6+vr1qKT33t34+PjU1NTqhYD0bWfgZl3Pz9D0zcrwZmH09PT4sa70npvzYFvvkY3ymZTaFhHwWVPvUk3sR0HqMSrUAADCwsLkeXDUT0PIyMiRqMnmAAAAdUlEQVR42gXBWw6CQBAAwe7ZcUGCkvip97+gCZEsj7VKAFA6gSA37Z2CnKkGOAjDQLF2MuDKiyQLt9804rI9WZnPVOhXGnUhpRMCPfy0lZkoflttdRp05IrC4gZ5MAfMb0GhTQ8o5lGa9F3atlstCHdeJJzAH/GiIR95P89NAAAAAElFTkSuQmCC\" alt=\"ქართული\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:9;s:16:\"term_taxonomy_id\";i:9;s:5:\"count\";i:3;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:10;s:16:\"term_taxonomy_id\";i:10;s:5:\"count\";i:1;}}}}', 'on'),
(683, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":1}', 'on'),
(714, '_site_transient_t15s-registry-plugins', 'O:8:\"stdClass\":2:{s:12:\"polylang-pro\";a:1:{s:12:\"translations\";a:26:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T09:51:13+00:00\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ar.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ar\";i:1;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T10:46:54+00:00\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-cs_CZ.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"cs\";i:1;s:3:\"ces\";}}i:2;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:21:37+00:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-da_DK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"da\";i:1;s:3:\"dan\";}}i:3;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:21:08+00:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_NL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:4;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:20:37+00:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_BE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:5;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:19:55+00:00\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-en_AU.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:6;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:19:35+00:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-en_GB.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:7;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:16:09+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}}i:8;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T10:46:28+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-08T03:26:42+00:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-el.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"el\";i:1;s:3:\"ell\";}}i:10;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:23:36+00:00\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-hi_IN.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hi\";i:1;s:3:\"hin\";}}i:11;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T07:26:31+00:00\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-id_ID.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"id\";i:1;s:3:\"ind\";}}i:12;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T08:59:26+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}}i:13;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T10:22:08+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}}i:14;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T11:56:53+00:00\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fa_IR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fa\";i:1;s:3:\"fas\";}}i:15;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:18:56+00:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pl_PL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pl\";i:1;s:3:\"pol\";}}i:16;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-18T17:26:54+00:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pt_BR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pt\";i:1;s:3:\"por\";}}i:17;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T22:54:19+00:00\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pt_PT.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"pt\";}}i:18;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-05T06:16:44+00:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ro_RO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ro\";i:1;s:3:\"ron\";}}i:19;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-19T12:39:56+00:00\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ru_RU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ru\";i:1;s:3:\"rus\";}}i:20;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-10T15:43:59+00:00\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-sr_RS.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sr\";i:1;s:3:\"srp\";}}i:21;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:22:06+00:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-es_MX.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:22;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-06T19:24:02+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:23;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-04T18:18:05+00:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-sv_SE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sv\";i:1;s:3:\"swe\";}}i:24;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-07T08:22:18+00:00\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-tr_TR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"tr\";i:1;s:3:\"tur\";}}i:25;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:9:\"3.3-beta1\";s:7:\"updated\";s:25:\"2025-03-19T12:48:39+00:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-uk.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"uk\";i:1;s:3:\"ukr\";}}}}s:13:\"_last_checked\";i:1753199040;}', 'off'),
(715, '_site_transient_timeout_theme_roots', '1753200840', 'off'),
(716, '_site_transient_theme_roots', 'a:1:{s:8:\"webmedia\";s:7:\"/themes\";}', 'off'),
(717, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1753199042;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}', 'off'),
(718, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1753199042;s:7:\"checked\";a:1:{s:8:\"webmedia\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(730, '_site_transient_timeout_wp_theme_files_patterns-0ebc30c1de6768a159a5506d46e336a0', '1753217605', 'off'),
(731, '_site_transient_wp_theme_files_patterns-0ebc30c1de6768a159a5506d46e336a0', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1753101000:1'),
(4, 8, '_wp_trash_meta_status', 'publish'),
(5, 8, '_wp_trash_meta_time', '1753020602'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1753032614:1'),
(10, 15, '_wp_attached_file', '2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-scaled.png'),
(11, 15, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:59:\"2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-scaled.png\";s:8:\"filesize\";i:6510940;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105411;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1132142;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47493;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:645451;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2478040;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4286474;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1.png\";}'),
(12, 16, '_wp_attached_file', '2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-scaled.png'),
(13, 16, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:59:\"2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-scaled.png\";s:8:\"filesize\";i:6307960;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102161;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1043261;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46331;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:597873;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2316304;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4087068;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f.png\";}'),
(15, 6, 'footnotes', ''),
(17, 17, 'footnotes', ''),
(21, 18, 'footnotes', ''),
(25, 19, 'footnotes', ''),
(29, 20, 'footnotes', ''),
(33, 22, 'footnotes', ''),
(35, 23, 'footnotes', ''),
(36, 24, 'footnotes', ''),
(37, 23, '_edit_lock', '1753101920:1'),
(40, 26, '_wp_attached_file', '2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-scaled.png'),
(41, 26, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:61:\"2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-scaled.png\";s:8:\"filesize\";i:6510940;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105411;}s:5:\"large\";a:5:{s:4:\"file\";s:55:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1132142;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47493;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:645451;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2478040;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:56:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4286474;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:46:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1.png\";}'),
(42, 27, '_wp_attached_file', '2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-scaled.png'),
(43, 27, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:61:\"2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-scaled.png\";s:8:\"filesize\";i:6307960;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102161;}s:5:\"large\";a:5:{s:4:\"file\";s:55:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1043261;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46331;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:597873;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2316304;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:56:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4087068;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:46:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1.png\";}'),
(46, 28, 'footnotes', ''),
(48, 29, 'footnotes', ''),
(49, 24, '_edit_lock', '1753110925:1'),
(50, 30, 'footnotes', ''),
(51, 30, '_acf_changed', '1'),
(52, 31, '_wp_attached_file', '2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-scaled.png'),
(53, 31, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:61:\"2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-scaled.png\";s:8:\"filesize\";i:6510940;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105411;}s:5:\"large\";a:5:{s:4:\"file\";s:55:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1132142;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47493;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:54:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:645451;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2478040;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:56:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4286474;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:46:\"83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2.png\";}'),
(54, 32, '_wp_attached_file', '2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-scaled.png'),
(55, 32, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:61:\"2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-scaled.png\";s:8:\"filesize\";i:6307960;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102161;}s:5:\"large\";a:5:{s:4:\"file\";s:55:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1043261;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46331;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:54:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:597873;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:55:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2316304;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:56:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4087068;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:46:\"e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2.png\";}'),
(60, 34, 'footnotes', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-07-20 16:33:37', '2025-07-20 13:33:37', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2025-07-20 16:33:37', '2025-07-20 13:33:37', '', 0, 'http://maudi.test/?p=1', 0, 'post', '', 1),
(2, 1, '2025-07-20 16:33:37', '2025-07-20 13:33:37', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://maudi.test/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-07-20 16:33:37', '2025-07-20 13:33:37', '', 0, 'http://maudi.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-07-20 16:33:37', '2025-07-20 13:33:37', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://maudi.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-07-20 16:33:37', '2025-07-20 13:33:37', '', 0, 'http://maudi.test/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-07-20 16:33:40', '2025-07-20 13:33:40', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-07-20 16:33:40', '2025-07-20 13:33:40', '', 0, 'http://maudi.test/2025/07/20/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-07-20 16:36:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-07-20 16:36:55', '0000-00-00 00:00:00', '', 0, 'http://maudi.test/?p=5', 0, 'post', '', 0),
(6, 1, '2025-07-20 17:09:40', '2025-07-20 14:09:40', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":16,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":15,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2025-07-20 20:32:53', '2025-07-20 17:32:53', '', 0, 'http://maudi.test/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-07-20 17:09:40', '2025-07-20 14:09:40', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 17:09:40', '2025-07-20 14:09:40', '', 6, 'http://maudi.test/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-07-20 17:10:02', '2025-07-20 14:10:02', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-20 14:10:02\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-20 14:10:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c0998b3-48b3-4c60-900e-4dae2ba463ae', '', '', '2025-07-20 17:10:02', '2025-07-20 14:10:02', '', 0, 'http://maudi.test/2025/07/20/4c0998b3-48b3-4c60-900e-4dae2ba463ae/', 0, 'customize_changeset', '', 0),
(9, 1, '2025-07-20 18:48:53', '2025-07-20 15:48:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"acf/about-block\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Блок: О проекте', '%d0%b1%d0%bb%d0%be%d0%ba-%d0%be-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b5', 'publish', 'closed', 'closed', '', 'group_687d0f5a3356c', '', '', '2025-07-20 20:32:32', '2025-07-20 17:32:32', '', 0, 'http://maudi.test/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2025-07-20 18:48:53', '2025-07-20 15:48:53', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', '<h2>Блок: О проекте</h2>', 'h2блок:_о_проектеh2', 'publish', 'closed', 'closed', '', 'field_687d0f5af020d', '', '', '2025-07-20 18:48:53', '2025-07-20 15:48:53', '', 9, 'http://maudi.test/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2025-07-20 19:19:15', '2025-07-20 16:19:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'about_title', 'publish', 'closed', 'closed', '', 'field_687d16a716e76', '', '', '2025-07-20 19:19:15', '2025-07-20 16:19:15', '', 9, 'http://maudi.test/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2025-07-20 19:19:15', '2025-07-20 16:19:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'about_text', 'publish', 'closed', 'closed', '', 'field_687d16bd16e77', '', '', '2025-07-20 19:19:15', '2025-07-20 16:19:15', '', 9, 'http://maudi.test/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2025-07-20 19:19:15', '2025-07-20 16:19:15', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение под текстом', 'about_holder-image', 'publish', 'closed', 'closed', '', 'field_687d16df16e78', '', '', '2025-07-20 20:32:32', '2025-07-20 17:32:32', '', 9, 'http://maudi.test/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(15, 1, '2025-07-20 19:35:25', '2025-07-20 16:35:25', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1', '', 'inherit', 'open', 'closed', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1', '', '', '2025-07-20 19:49:02', '2025-07-20 16:49:02', '', 6, 'http://maudi.test/wp-content/uploads/2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2025-07-20 19:35:32', '2025-07-20 16:35:32', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f', '', 'inherit', 'open', 'closed', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f', '', '', '2025-07-20 19:35:32', '2025-07-20 16:35:32', '', 6, 'http://maudi.test/wp-content/uploads/2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2025-07-20 19:37:04', '2025-07-20 16:37:04', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_images\":[\"15\",\"16\"],\"_about_images\":\"field_687d16df16e78\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 19:37:04', '2025-07-20 16:37:04', '', 6, 'http://maudi.test/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-07-20 19:45:35', '2025-07-20 16:45:35', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_images\":[\"15\",\"16\"],\"_about_images\":\"field_687d16df16e78\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 19:45:35', '2025-07-20 16:45:35', '', 6, 'http://maudi.test/?p=18', 0, 'revision', '', 0),
(19, 1, '2025-07-20 19:45:46', '2025-07-20 16:45:46', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_images\":[\"15\",\"16\"],\"_about_images\":\"field_687d16df16e78\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 19:45:46', '2025-07-20 16:45:46', '', 6, 'http://maudi.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2025-07-20 19:49:11', '2025-07-20 16:49:11', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_gallery\":[\"16\",\"15\"],\"_about_gallery\":\"field_687d16df16e78\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 19:49:11', '2025-07-20 16:49:11', '', 6, 'http://maudi.test/?p=20', 0, 'revision', '', 0),
(21, 1, '2025-07-20 20:32:32', '2025-07-20 17:32:32', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Основное изображение', 'about_main-image', 'publish', 'closed', 'closed', '', 'field_687d281a64c2e', '', '', '2025-07-20 20:32:32', '2025-07-20 17:32:32', '', 9, 'http://maudi.test/?post_type=acf-field&p=21', 4, 'acf-field', '', 0),
(22, 1, '2025-07-20 20:32:53', '2025-07-20 17:32:53', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"Проект, в котором всё имеет значение\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство для комфортного, свободного и современного образа жизни в Кутаиси. Мы создаем среду, которая сочетает элегантность, инновации и гармонию, задавая новые стандарты качества и уюта.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence — это 6-этажный многофункциональный комплекс в престижном районе Кутаиси, в исторической части города. Maudi Residence — это воплощение нового уровня жизни, где продуманные детали формируют идеальное пространство \",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":16,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":15,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-07-20 20:32:53', '2025-07-20 17:32:53', '', 6, 'http://maudi.test/?p=22', 0, 'revision', '', 0),
(23, 1, '2025-07-20 17:09:40', '2025-07-20 14:09:40', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"A project where everything matters\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new level of living, where thoughtful details create an ideal space for a comfortable, free, and modern lifestyle in Kutaisi. We create an environment that combines elegance, innovation, and harmony, setting new standards for quality and comfort.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new standard of living, where thoughtful details create a perfect space.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":27,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":26,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Home', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2025-07-21 15:44:41', '2025-07-21 12:44:41', '', 0, 'http://maudi.test/?page_id=6', 0, 'page', '', 0),
(24, 1, '2025-07-20 17:09:40', '2025-07-20 14:09:40', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"პროექტი, სადაც ყველაფერი მნიშვნელოვანია\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს კომფორტული, თავისუფალი და თანამედროვე ცხოვრების წესისთვის ქუთაისში. ჩვენ ვქმნით გარემოს, რომელიც აერთიანებს ელეგანტურობას, ინოვაციას და ჰარმონიას, ქმნის ახალ სტანდარტებს ხარისხისა და კომფორტისთვის.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":32,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":31,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'მთავარი', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2025-07-21 16:03:29', '2025-07-21 13:03:29', '', 0, 'http://maudi.test/?page_id=6', 0, 'page', '', 0),
(26, 1, '2025-07-21 15:31:04', '2025-07-21 12:31:04', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1', '', 'inherit', 'open', 'closed', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2', '', '', '2025-07-21 15:31:04', '2025-07-21 12:31:04', '', 23, 'http://maudi.test/wp-content/uploads/2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-1.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2025-07-21 15:31:12', '2025-07-21 12:31:12', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f', '', 'inherit', 'open', 'closed', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2', '', '', '2025-07-21 15:31:12', '2025-07-21 12:31:12', '', 23, 'http://maudi.test/wp-content/uploads/2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2025-07-21 15:31:29', '2025-07-21 12:31:29', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"A project where everything matters\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new level of living, where thoughtful details create an ideal space for a comfortable, free, and modern lifestyle in Kutaisi. We create an environment that combines elegance, innovation, and harmony, setting new standards for quality and comfort.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new standard of living, where thoughtful details create a perfect space.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":27,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":26,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная - English', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-21 15:31:29', '2025-07-21 12:31:29', '', 23, 'http://maudi.test/?p=28', 0, 'revision', '', 0),
(29, 1, '2025-07-21 15:44:41', '2025-07-21 12:44:41', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"A project where everything matters\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new level of living, where thoughtful details create an ideal space for a comfortable, free, and modern lifestyle in Kutaisi. We create an environment that combines elegance, innovation, and harmony, setting new standards for quality and comfort.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence is a 6-storey mixed-use complex in the prestigious district of Kutaisi, in the historical part of the city. Maudi Residence is the embodiment of a new standard of living, where thoughtful details create a perfect space.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":27,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":26,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-21 15:44:41', '2025-07-21 12:44:41', '', 23, 'http://maudi.test/?p=29', 0, 'revision', '', 0),
(30, 1, '2025-07-21 16:01:49', '2025-07-21 13:01:49', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"პროექტი, სადაც ყველაფერი მნიშვნელოვანია\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს კომფორტული, თავისუფალი და თანამედროვე ცხოვრების წესისთვის ქუთაისში. ჩვენ ვქმნით გარემოს, რომელიც აერთიანებს ელეგანტურობას, ინოვაციას და ჰარმონიას, ქმნის ახალ სტანდარტებს ხარისხისა და კომფორტისთვის.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":\"\",\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":\"\",\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'Главная - ქართული', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2025-07-21 16:01:49', '2025-07-21 13:01:49', '', 24, 'http://maudi.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2025-07-21 16:02:04', '2025-07-21 13:02:04', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1', '', 'inherit', 'open', 'closed', '', '83ab7a853480c2496065ec6e24f2a0553d1ad5c1-3', '', '', '2025-07-21 16:02:04', '2025-07-21 13:02:04', '', 24, 'http://maudi.test/wp-content/uploads/2025/07/83ab7a853480c2496065ec6e24f2a0553d1ad5c1-2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2025-07-21 16:02:11', '2025-07-21 13:02:11', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f', '', 'inherit', 'open', 'closed', '', 'e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-3', '', '', '2025-07-21 16:02:11', '2025-07-21 13:02:11', '', 24, 'http://maudi.test/wp-content/uploads/2025/07/e09ade509c50cae6cdb4c61cb8bcd95f881fd91f-2.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2025-07-21 16:03:29', '2025-07-21 13:03:29', '<!-- wp:acf/about-block {\"name\":\"acf/about-block\",\"data\":{\"about_title\":\"პროექტი, სადაც ყველაფერი მნიშვნელოვანია\",\"_about_title\":\"field_687d16a716e76\",\"about_text\":\"Maudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს კომფორტული, თავისუფალი და თანამედროვე ცხოვრების წესისთვის ქუთაისში. ჩვენ ვქმნით გარემოს, რომელიც აერთიანებს ელეგანტურობას, ინოვაციას და ჰარმონიას, ქმნის ახალ სტანდარტებს ხარისხისა და კომფორტისთვის.\\r\\n\\u003cbr /\\u003e\\r\\n\\u003cbr /\\u003e\\r\\nMaudi Residence არის 6 სართულიანი მრავალფუნქციური კომპლექსი ქუთაისის პრესტიჟულ უბანში, ქალაქის ისტორიულ ნაწილში. Maudi Residence არის ცხოვრების ახალი სტანდარტის განსახიერება, სადაც გააზრებული დეტალები ქმნის სრულყოფილ სივრცეს.\",\"_about_text\":\"field_687d16bd16e77\",\"about_holder-image\":32,\"_about_holder-image\":\"field_687d16df16e78\",\"about_main-image\":31,\"_about_main-image\":\"field_687d281a64c2e\"},\"align\":\"wide\",\"mode\":\"edit\"} /-->', 'მთავარი', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2025-07-21 16:03:29', '2025-07-21 13:03:29', '', 24, 'http://maudi.test/?p=34', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Русский', 'ru', 0),
(3, 'Русский', 'pll_ru', 0),
(4, 'pll_687e32011ced9', 'pll_687e32011ced9', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Uncategorized', 'uncategorized-en', 0),
(9, 'ქართული', 'ka', 0),
(10, 'ქართული', 'pll_ka', 0),
(11, 'Uncategorized', 'uncategorized-ka', 0),
(13, 'pll_687e32392e021', 'pll_687e32392e021', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(6, 13, 0),
(7, 4, 0),
(7, 6, 0),
(11, 4, 0),
(11, 10, 0),
(15, 2, 0),
(16, 2, 0),
(23, 5, 0),
(23, 13, 0),
(24, 9, 0),
(24, 13, 0),
(26, 5, 0),
(27, 5, 0),
(31, 9, 0),
(32, 9, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:4:{s:9:\"fallbacks\";a:0:{}s:6:\"locale\";s:5:\"ru_RU\";s:3:\"rtl\";b:0;s:9:\"flag_code\";s:2:\"ru\";}', 0, 6),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'term_translations', 'a:3:{s:2:\"ru\";i:1;s:2:\"en\";i:7;s:2:\"ka\";i:11;}', 0, 3),
(5, 5, 'language', 'a:4:{s:9:\"fallbacks\";a:0:{}s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";b:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 3),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(9, 9, 'language', 'a:4:{s:9:\"fallbacks\";a:0:{}s:6:\"locale\";s:5:\"ka_GE\";s:3:\"rtl\";b:0;s:9:\"flag_code\";s:2:\"ge\";}', 0, 3),
(10, 10, 'term_language', '', 0, 1),
(11, 11, 'category', '', 0, 0),
(13, 13, 'post_translations', 'a:3:{s:2:\"ru\";i:6;s:2:\"en\";i:23;s:2:\"ka\";i:24;}', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'webmedia'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"3377fe182e10f9a9cce8d06fa088c75c14d0ea37ae98dcec142d48f6b4414e79\";a:4:{s:10:\"expiration\";i:1753191413;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 YaBrowser/25.6.0.0 Safari/537.36\";s:5:\"login\";i:1753018613;}s:64:\"2582bdf2f5e366679be1aa7a708e01335d07f685609f70f7b424df8e0b96f7cd\";a:4:{s:10:\"expiration\";i:1753273525;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 YaBrowser/25.6.0.0 Safari/537.36\";s:5:\"login\";i:1753100725;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-07-20T14:09:11.948Z\";}'),
(20, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:23:\"options-pages-first-run\";b:1;}'),
(22, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1753030097'),
(27, 1, 'pll_filter_content', 'ka');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'webmedia', '$wp$2y$10$l7RnjhvaATzb6GcJOtuxqOoF9kVmPu6OmWVvVguLIU6lgI0HdSOpK', 'webmedia', 'squaldzn@ya.ru', 'http://maudi.test', '2025-07-20 13:33:37', '', 0, 'webmedia');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=733;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
