-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 04 2020 р., 19:23
-- Версія сервера: 10.3.13-MariaDB-log
-- Версія PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-21 14:25:26', '2020-02-21 11:25:26', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress', 'yes'),
(2, 'home', 'http://wordpress', 'yes'),
(3, 'blogname', 'Tourcompany', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ddp0496@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"tablepress/tablepress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:\"D:\\software\\OSPanel\\domains\\wordpress/wp-content/themes/Tourcompany/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'Tourcompany', 'yes'),
(41, 'stylesheet', 'Tourcompany', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:7:{i:2;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597836318', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:71:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:23:\"tablepress_edit_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:14:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-4\";i:9;s:8:\"search-3\";i:10;s:6:\"text-5\";i:11;s:6:\"text-6\";i:12;s:6:\"text-7\";i:13;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1583339130;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583364330;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583407528;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583407542;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583407544;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582284496;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-7\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(139, 'can_compress_scripts', '1', 'no'),
(151, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:15;s:7:\"panel_2\";i:7;s:7:\"panel_3\";i:9;s:7:\"panel_4\";i:8;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582481522;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-7\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(153, 'current_theme', 'Tourcompany', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'theme_switched_via_customizer', '', 'yes'),
(156, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'customize_stashed_theme_mods', 'a:1:{s:12:\"twentytwenty\";a:3:{s:27:\"nav_menu_locations[primary]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-21 11:25:57\";}s:28:\"nav_menu_locations[expanded]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-21 11:25:57\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-9;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-21 11:25:57\";}}}', 'no'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(166, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583328148;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(168, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583328153;s:7:\"checked\";a:4:{s:11:\"Tourcompany\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(169, 'tablepress_plugin_options', '{\"plugin_options_db_version\":39,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"1.10\",\"first_activation\":1582297528,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":true,\"use_custom_css_file\":false,\"custom_css\":\".dataTables_wrapper {\\n\\tmargin-bottom: 50px;\\n}\\n\\n.tablepress thead th,\\n.tablepress tfoot th {\\n\\tbackground-color: #ffffff;\\n\\tcolor: #ACACBB;\\n\\tfont-size: 18px;\\n\\tborder-bottom: 1px solid #616A7A;\\n\\tborder-top: 1px solid #616A7A;\\n}\\n\\n.tablepress thead .sorting_asc,\\n.tablepress thead .sorting_desc,\\n.tablepress thead .sorting:hover {\\n\\tbackground-color: #ffffff;\\n\\tcursor: pointer;\\n}\\n\\nth.column-1.sorting_asc::after,\\nth.column-1.sorting_desc::after,\\nth.column-1.sorting::after {\\n\\tposition: absolute;\\n\\tleft: 25px;\\n}\\n\\nth.column-2.sorting_asc::after,\\nth.column-2.sorting_desc::after,\\nth.column-2.sorting::after {\\n\\tposition: absolute;\\n\\tleft: 90px;\\n}\\n\\nth.column-3.sorting_asc::after,\\nth.column-3.sorting_desc::after,\\nth.column-3.sorting::after {\\n\\tposition: absolute;\\n\\tleft: 80px;\\n}\\n\\nth.column-4.sorting_asc::after,\\nth.column-4.sorting_desc::after,\\nth.column-4.sorting::after {\\n\\tposition: absolute;\\n\\tleft: 70px;\\n}\\n\\n.tablepress tbody tr td img {\\n\\twidth: 40px;\\n\\theight: 40px;\\n\\tborder-radius: 5px;\\n\\tmargin-right: 23px;\\n}\\n\\n.tablepress tbody tr td a {\\n\\tcolor: #616A7A;\\n}\\n\\n.tablepress tbody tr td a:hover {\\n\\tcolor: #FE874D;\\n}\\n\\n.tablepress thead tr th:last-child,\\n.tablepress tbody tr td:last-child {\\n\\ttext-align: right;\\n}\\n\\n.tablepress thead tr th:first-child,\\n.tablepress tbody tr td:first-child {\\n\\ttext-align: center;\\n}\",\"custom_css_minified\":\".dataTables_wrapper{margin-bottom:50px}.tablepress thead th,.tablepress tfoot th{background-color:#fff;color:#ACACBB;font-size:18px;border-bottom:1px solid #616A7A;border-top:1px solid #616A7A}.tablepress thead .sorting_asc,.tablepress thead .sorting_desc,.tablepress thead .sorting:hover{background-color:#fff;cursor:pointer}th.column-1.sorting_asc::after,th.column-1.sorting_desc::after,th.column-1.sorting::after{position:absolute;left:25px}th.column-2.sorting_asc::after,th.column-2.sorting_desc::after,th.column-2.sorting::after{position:absolute;left:90px}th.column-3.sorting_asc::after,th.column-3.sorting_desc::after,th.column-3.sorting::after{position:absolute;left:80px}th.column-4.sorting_asc::after,th.column-4.sorting_desc::after,th.column-4.sorting::after{position:absolute;left:70px}.tablepress tbody tr td img{width:40px;height:40px;border-radius:5px;margin-right:23px}.tablepress tbody tr td a{color:#616A7A}.tablepress tbody tr td a:hover{color:#FE874D}.tablepress thead tr th:last-child,.tablepress tbody tr td:last-child{text-align:right}.tablepress thead tr th:first-child,.tablepress tbody tr td:first-child{text-align:center}\",\"custom_css_version\":0}', 'yes'),
(187, 'theme_mods_Tourcompany', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"footer_menu\";i:12;s:11:\"header_menu\";i:10;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582574971;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:14:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-4\";i:9;s:8:\"search-3\";i:10;s:6:\"text-5\";i:11;s:6:\"text-6\";i:12;s:6:\"text-7\";i:13;s:8:\"search-4\";}}}}', 'yes'),
(212, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582574976;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:14:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-4\";i:9;s:8:\"search-3\";i:10;s:6:\"text-5\";i:11;s:6:\"text-6\";i:12;s:6:\"text-7\";i:13;s:8:\"search-4\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(271, 'acf_version', '5.8.8', 'yes'),
(291, 'tablepress_tables', '{\"last_id\":6,\"table_post\":{\"6\":98}}', 'yes'),
(337, 'new_admin_email', 'ddp0496@gmail.com', 'yes'),
(341, '_site_transient_timeout_browser_90b63b163dd5796344a4c76643937d84', '1583838471', 'no'),
(342, '_site_transient_browser_90b63b163dd5796344a4c76643937d84', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(343, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1583838472', 'no'),
(344, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(379, '_transient_timeout_plugin_slugs', '1583393288', 'no'),
(380, '_transient_plugin_slugs', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";i:3;s:25:\"tablepress/tablepress.php\";}', 'no'),
(381, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583328153;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.8\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:25:\"tablepress/tablepress.php\";s:4:\"1.10\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"tablepress/tablepress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/tablepress\";s:4:\"slug\";s:10:\"tablepress\";s:6:\"plugin\";s:25:\"tablepress/tablepress.php\";s:11:\"new_version\";s:4:\"1.10\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/tablepress/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/tablepress.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/tablepress/assets/icon-256x256.png?rev=1064192\";s:2:\"1x\";s:63:\"https://ps.w.org/tablepress/assets/icon-128x128.png?rev=1064192\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/tablepress/assets/banner-1544x500.png?rev=1275767\";s:2:\"1x\";s:65:\"https://ps.w.org/tablepress/assets/banner-772x250.png?rev=1275767\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/tablepress/assets/banner-1544x500-rtl.png?rev=1275767\";s:2:\"1x\";s:69:\"https://ps.w.org/tablepress/assets/banner-772x250-rtl.png?rev=1275767\";}}}}', 'no'),
(386, '_site_transient_timeout_theme_roots', '1583329952', 'no'),
(387, '_site_transient_theme_roots', 'a:4:{s:11:\"Tourcompany\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_attached_file', '2020/02/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/02/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(16, 10, '_edit_lock', '1582284465:1'),
(17, 11, '_wp_attached_file', '2020/02/espresso.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/02/espresso.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"espresso-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:22:\"espresso-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, '_starter_content_theme', 'twentyseventeen'),
(21, 12, '_wp_attached_file', '2020/02/sandwich.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/02/sandwich.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"sandwich-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:22:\"sandwich-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 12, '_starter_content_theme', 'twentyseventeen'),
(25, 13, '_wp_attached_file', '2020/02/coffee.jpg'),
(26, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/02/coffee.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"coffee-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:20:\"coffee-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 13, '_starter_content_theme', 'twentyseventeen'),
(30, 14, '_customize_changeset_uuid', '1f0b0596-4ebd-4fd0-82dd-4f527a3d4894'),
(138, 10, '_wp_trash_meta_status', 'publish'),
(139, 10, '_wp_trash_meta_time', '1582284512'),
(141, 14, '_edit_lock', '1583335574:1'),
(142, 36, '_edit_lock', '1582816150:1'),
(143, 37, '_edit_lock', '1582816161:1'),
(144, 38, '_edit_lock', '1582816165:1'),
(168, 14, '_edit_last', '1'),
(169, 45, '_edit_last', '1'),
(170, 45, '_edit_lock', '1583253014:1'),
(171, 14, 'logo', '123'),
(172, 14, '_logo', 'field_5e58d5b5e84e1'),
(173, 49, 'logo', ''),
(174, 49, '_logo', 'field_5e58d5b5e84e1'),
(175, 51, 'logo', '123'),
(176, 51, '_logo', 'field_5e58d5b5e84e1'),
(177, 14, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(178, 14, '_logo_name', 'field_5e58d5b5e84e1'),
(179, 53, 'logo', '123'),
(180, 53, '_logo', 'field_5e58d5b5e84e1'),
(181, 53, 'logo_name', 'Tourcompany'),
(182, 53, '_logo_name', 'field_5e58d5b5e84e1'),
(183, 54, 'logo', '123'),
(184, 54, '_logo', 'field_5e58d5b5e84e1'),
(185, 54, 'logo_name', 'Tourcompany'),
(186, 54, '_logo_name', 'field_5e58d5b5e84e1'),
(187, 55, 'logo', '123'),
(188, 55, '_logo', 'field_5e58d5b5e84e1'),
(189, 55, 'logo_name', 'Tourcompany'),
(190, 55, '_logo_name', 'field_5e58d5b5e84e1'),
(191, 56, 'logo', '123'),
(192, 56, '_logo', 'field_5e58d5b5e84e1'),
(193, 56, 'logo_name', 'Tourcompany'),
(194, 56, '_logo_name', 'field_5e58d5b5e84e1'),
(195, 14, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(196, 14, '_footer_logo-name', 'field_5e58d8f982ec5'),
(197, 58, 'logo', '123'),
(198, 58, '_logo', 'field_5e58d5b5e84e1'),
(199, 58, 'logo_name', 'Tourcompany'),
(200, 58, '_logo_name', 'field_5e58d5b5e84e1'),
(201, 58, 'footer_logo-name', 'Tourcompany'),
(202, 58, '_footer_logo-name', 'field_5e58d8f982ec5'),
(203, 59, 'logo', '123'),
(204, 59, '_logo', 'field_5e58d5b5e84e1'),
(205, 59, 'logo_name', 'Tourcompany'),
(206, 59, '_logo_name', 'field_5e58d5b5e84e1'),
(207, 59, 'footer_logo-name', 'Tourcompany'),
(208, 59, '_footer_logo-name', 'field_5e58d8f982ec5'),
(209, 14, 'header', '#171626'),
(210, 14, '_header', 'field_5e58e05465d0c'),
(211, 59, 'header', '#171626'),
(212, 59, '_header', 'field_5e58dc7ad4beb'),
(213, 61, 'logo', '123'),
(214, 61, '_logo', 'field_5e58d5b5e84e1'),
(215, 61, 'logo_name', 'Tourcompany'),
(216, 61, '_logo_name', 'field_5e58d5b5e84e1'),
(217, 61, 'footer_logo-name', 'Tourcompany'),
(218, 61, '_footer_logo-name', 'field_5e58d8f982ec5'),
(219, 61, 'header', '#17092b'),
(220, 61, '_header', 'field_5e58dc7ad4beb'),
(221, 62, 'logo', '123'),
(222, 62, '_logo', 'field_5e58d5b5e84e1'),
(223, 62, 'logo_name', 'Tourcompany'),
(224, 62, '_logo_name', 'field_5e58d5b5e84e1'),
(225, 62, 'footer_logo-name', 'Tourcompany'),
(226, 62, '_footer_logo-name', 'field_5e58d8f982ec5'),
(227, 62, 'header', '#4a9920'),
(228, 62, '_header', 'field_5e58dc7ad4beb'),
(229, 63, 'logo', '123'),
(230, 63, '_logo', 'field_5e58d5b5e84e1'),
(231, 63, 'logo_name', 'Tourcompany'),
(232, 63, '_logo_name', 'field_5e58d5b5e84e1'),
(233, 63, 'footer_logo-name', 'Tourcompany'),
(234, 63, '_footer_logo-name', 'field_5e58d8f982ec5'),
(235, 63, 'header', '#2e1b87'),
(236, 63, '_header', 'field_5e58dc7ad4beb'),
(237, 65, 'logo', '123'),
(238, 65, '_logo', 'field_5e58d5b5e84e1'),
(239, 65, 'logo_name', 'Tourcompany'),
(240, 65, '_logo_name', 'field_5e58d5b5e84e1'),
(241, 65, 'footer_logo-name', 'Tourcompany'),
(242, 65, '_footer_logo-name', 'field_5e58d8f982ec5'),
(243, 65, 'header', '#09002b'),
(244, 65, '_header', 'field_5e58dc7ad4beb'),
(245, 66, 'logo', '123'),
(246, 66, '_logo', 'field_5e58d5b5e84e1'),
(247, 66, 'logo_name', 'Tourcompany'),
(248, 66, '_logo_name', 'field_5e58d5b5e84e1'),
(249, 66, 'footer_logo-name', 'Tourcompany'),
(250, 66, '_footer_logo-name', 'field_5e58d8f982ec5'),
(251, 66, 'header', '#09002b'),
(252, 66, '_header', 'field_5e58dc7ad4beb'),
(253, 14, 'footer', '#81d742'),
(254, 14, '_footer', 'field_5e58e0c4851f6'),
(255, 70, 'logo', '123'),
(256, 70, '_logo', 'field_5e58d5b5e84e1'),
(257, 70, 'logo_name', 'Tourcompany'),
(258, 70, '_logo_name', 'field_5e58d5b5e84e1'),
(259, 70, 'footer_logo-name', 'Tourcompany'),
(260, 70, '_footer_logo-name', 'field_5e58d8f982ec5'),
(261, 70, 'header', '#090#17162602b'),
(262, 70, '_header', 'field_5e58e05465d0c'),
(263, 70, 'footer', '#171626'),
(264, 70, '_footer', 'field_5e58e0c4851f6'),
(265, 71, 'logo', '123'),
(266, 71, '_logo', 'field_5e58d5b5e84e1'),
(267, 71, 'logo_name', 'Tourcompany'),
(268, 71, '_logo_name', 'field_5e58d5b5e84e1'),
(269, 71, 'footer_logo-name', 'Tourcompany'),
(270, 71, '_footer_logo-name', 'field_5e58d8f982ec5'),
(271, 71, 'header', '#171626'),
(272, 71, '_header', 'field_5e58e05465d0c'),
(273, 71, 'footer', '#171626'),
(274, 71, '_footer', 'field_5e58e0c4851f6'),
(275, 72, 'logo', '123'),
(276, 72, '_logo', 'field_5e58d5b5e84e1'),
(277, 72, 'logo_name', 'Tourcompany'),
(278, 72, '_logo_name', 'field_5e58d5b5e84e1'),
(279, 72, 'footer_logo-name', 'Tourcompany'),
(280, 72, '_footer_logo-name', 'field_5e58d8f982ec5'),
(281, 72, 'header', '#171626'),
(282, 72, '_header', 'field_5e58e05465d0c'),
(283, 72, 'footer', '#81d742'),
(284, 72, '_footer', 'field_5e58e0c4851f6'),
(285, 73, '_wp_trash_meta_status', 'publish'),
(286, 73, '_wp_trash_meta_time', '1582883787'),
(287, 74, 'logo', '123'),
(288, 74, '_logo', 'field_5e58d5b5e84e1'),
(289, 74, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span>company'),
(290, 74, '_logo_name', 'field_5e58d5b5e84e1'),
(291, 74, 'footer_logo-name', 'Tourcompany'),
(292, 74, '_footer_logo-name', 'field_5e58d8f982ec5'),
(293, 74, 'header', '#171626'),
(294, 74, '_header', 'field_5e58e05465d0c'),
(295, 74, 'footer', '#81d742'),
(296, 74, '_footer', 'field_5e58e0c4851f6'),
(297, 75, 'logo', '123'),
(298, 75, '_logo', 'field_5e58d5b5e84e1'),
(299, 75, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(300, 75, '_logo_name', 'field_5e58d5b5e84e1'),
(301, 75, 'footer_logo-name', 'Tourcompany'),
(302, 75, '_footer_logo-name', 'field_5e58d8f982ec5'),
(303, 75, 'header', '#171626'),
(304, 75, '_header', 'field_5e58e05465d0c'),
(305, 75, 'footer', '#81d742'),
(306, 75, '_footer', 'field_5e58e0c4851f6'),
(307, 76, 'logo', '123'),
(308, 76, '_logo', 'field_5e58d5b5e84e1'),
(309, 76, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(310, 76, '_logo_name', 'field_5e58d5b5e84e1'),
(311, 76, 'footer_logo-name', 'Tour<span style=\"color: #484574;\">company</span>'),
(312, 76, '_footer_logo-name', 'field_5e58d8f982ec5'),
(313, 76, 'header', '#171626'),
(314, 76, '_header', 'field_5e58e05465d0c'),
(315, 76, 'footer', '#81d742'),
(316, 76, '_footer', 'field_5e58e0c4851f6'),
(317, 77, 'logo', '123'),
(318, 77, '_logo', 'field_5e58d5b5e84e1'),
(319, 77, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(320, 77, '_logo_name', 'field_5e58d5b5e84e1'),
(321, 77, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(322, 77, '_footer_logo-name', 'field_5e58d8f982ec5'),
(323, 77, 'header', '#171626'),
(324, 77, '_header', 'field_5e58e05465d0c'),
(325, 77, 'footer', '#81d742'),
(326, 77, '_footer', 'field_5e58e0c4851f6'),
(327, 78, 'logo', '123'),
(328, 78, '_logo', 'field_5e58d5b5e84e1'),
(329, 78, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(330, 78, '_logo_name', 'field_5e58d5b5e84e1'),
(331, 78, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(332, 78, '_footer_logo-name', 'field_5e58d8f982ec5'),
(333, 78, 'header', '#171626'),
(334, 78, '_header', 'field_5e58e05465d0c'),
(335, 78, 'footer', '#81d742'),
(336, 78, '_footer', 'field_5e58e0c4851f6'),
(337, 1, '_edit_lock', '1583229675:1'),
(338, 79, '_edit_lock', '1582970937:1'),
(339, 80, '_edit_lock', '1582971060:1'),
(340, 80, '_edit_last', '1'),
(341, 80, '_wp_trash_meta_status', 'publish'),
(342, 80, '_wp_trash_meta_time', '1582971239'),
(343, 80, '_wp_desired_post_slug', '80-2'),
(356, 1, '_edit_last', '1'),
(361, 91, '_edit_lock', '1582974179:1'),
(362, 14, 'table', '[table id=6 /]'),
(363, 14, '_table', 'field_5e5a4e4b3acdf'),
(364, 93, 'logo', '123'),
(365, 93, '_logo', 'field_5e58d5b5e84e1'),
(366, 93, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(367, 93, '_logo_name', 'field_5e58d5b5e84e1'),
(368, 93, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(369, 93, '_footer_logo-name', 'field_5e58d8f982ec5'),
(370, 93, 'header', '#171626'),
(371, 93, '_header', 'field_5e58e05465d0c'),
(372, 93, 'footer', '#81d742'),
(373, 93, '_footer', 'field_5e58e0c4851f6'),
(374, 93, 'table', '[table id=3 /]'),
(375, 93, '_table', 'field_5e5a4ad157d07'),
(376, 94, 'logo', '123'),
(377, 94, '_logo', 'field_5e58d5b5e84e1'),
(378, 94, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(379, 94, '_logo_name', 'field_5e58d5b5e84e1'),
(380, 94, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(381, 94, '_footer_logo-name', 'field_5e58d8f982ec5'),
(382, 94, 'header', '#171626'),
(383, 94, '_header', 'field_5e58e05465d0c'),
(384, 94, 'footer', '#81d742'),
(385, 94, '_footer', 'field_5e58e0c4851f6'),
(386, 94, 'table', '[table id=3 /]'),
(387, 94, '_table', 'field_5e5a4ad157d07'),
(388, 95, 'logo', '123'),
(389, 95, '_logo', 'field_5e58d5b5e84e1'),
(390, 95, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(391, 95, '_logo_name', 'field_5e58d5b5e84e1'),
(392, 95, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(393, 95, '_footer_logo-name', 'field_5e58d8f982ec5'),
(394, 95, 'header', '#171626'),
(395, 95, '_header', 'field_5e58e05465d0c'),
(396, 95, 'footer', '#81d742'),
(397, 95, '_footer', 'field_5e58e0c4851f6'),
(398, 95, 'table', '[table id=3 /]'),
(399, 95, '_table', 'field_5e5a4ad157d07'),
(400, 96, 'logo', '123'),
(401, 96, '_logo', 'field_5e58d5b5e84e1'),
(402, 96, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(403, 96, '_logo_name', 'field_5e58d5b5e84e1'),
(404, 96, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(405, 96, '_footer_logo-name', 'field_5e58d8f982ec5'),
(406, 96, 'header', '#171626'),
(407, 96, '_header', 'field_5e58e05465d0c'),
(408, 96, 'footer', '#81d742'),
(409, 96, '_footer', 'field_5e58e0c4851f6'),
(410, 96, 'table', '[table id=3 /]'),
(411, 96, '_table', 'field_5e5a4ad157d07'),
(414, 98, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":false,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":false,\"datatables_paginate\":false,\"datatables_lengthchange\":false,\"datatables_paginate_entries\":10,\"datatables_info\":false,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(415, 98, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1],\"columns\":[1,1,1,1,1]}'),
(416, 101, 'logo', '123'),
(417, 101, '_logo', 'field_5e58d5b5e84e1'),
(418, 101, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(419, 101, '_logo_name', 'field_5e58d5b5e84e1'),
(420, 101, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(421, 101, '_footer_logo-name', 'field_5e58d8f982ec5'),
(422, 101, 'header', '#171626'),
(423, 101, '_header', 'field_5e58e05465d0c'),
(424, 101, 'footer', '#81d742'),
(425, 101, '_footer', 'field_5e58e0c4851f6'),
(426, 101, 'table', '[table id=6 /]'),
(427, 101, '_table', 'field_5e5a4e4b3acdf'),
(428, 102, 'logo', '123'),
(429, 102, '_logo', 'field_5e58d5b5e84e1'),
(430, 102, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(431, 102, '_logo_name', 'field_5e58d5b5e84e1'),
(432, 102, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(433, 102, '_footer_logo-name', 'field_5e58d8f982ec5'),
(434, 102, 'header', '#171626'),
(435, 102, '_header', 'field_5e58e05465d0c'),
(436, 102, 'footer', '#81d742'),
(437, 102, '_footer', 'field_5e58e0c4851f6'),
(438, 102, 'table', '[table id=6 /]'),
(439, 102, '_table', 'field_5e5a4e4b3acdf'),
(442, 14, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(443, 14, '_home-page_title-name', 'field_5e5e2b342731b'),
(444, 112, 'logo', '123'),
(445, 112, '_logo', 'field_5e58d5b5e84e1'),
(446, 112, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(447, 112, '_logo_name', 'field_5e58d5b5e84e1'),
(448, 112, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(449, 112, '_footer_logo-name', 'field_5e58d8f982ec5'),
(450, 112, 'header', '#171626'),
(451, 112, '_header', 'field_5e58e05465d0c'),
(452, 112, 'footer', '#81d742'),
(453, 112, '_footer', 'field_5e58e0c4851f6'),
(454, 112, 'table', '[table id=6 /]'),
(455, 112, '_table', 'field_5e5a4e4b3acdf'),
(456, 112, 'home-page_title-name', 'New post'),
(457, 112, '_home-page_title-name', 'field_5e5e2b342731b'),
(458, 113, 'logo', '123'),
(459, 113, '_logo', 'field_5e58d5b5e84e1'),
(460, 113, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(461, 113, '_logo_name', 'field_5e58d5b5e84e1'),
(462, 113, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(463, 113, '_footer_logo-name', 'field_5e58d8f982ec5'),
(464, 113, 'header', '#171626'),
(465, 113, '_header', 'field_5e58e05465d0c'),
(466, 113, 'footer', '#81d742'),
(467, 113, '_footer', 'field_5e58e0c4851f6'),
(468, 113, 'table', '[table id=6 /]'),
(469, 113, '_table', 'field_5e5a4e4b3acdf'),
(470, 113, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(471, 113, '_home-page_title-name', 'field_5e5e2b342731b'),
(472, 115, 'logo', '123'),
(473, 115, '_logo', 'field_5e58d5b5e84e1'),
(474, 115, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(475, 115, '_logo_name', 'field_5e58d5b5e84e1'),
(476, 115, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(477, 115, '_footer_logo-name', 'field_5e58d8f982ec5'),
(478, 115, 'header', '#171626'),
(479, 115, '_header', 'field_5e58e05465d0c'),
(480, 115, 'footer', '#81d742'),
(481, 115, '_footer', 'field_5e58e0c4851f6'),
(482, 115, 'table', '[table id=6 /]'),
(483, 115, '_table', 'field_5e5a4e4b3acdf'),
(484, 115, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(485, 115, '_home-page_title-name', 'field_5e5e2b342731b'),
(486, 14, 'home-page_featured_image', '13'),
(487, 14, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(488, 116, 'logo', '123'),
(489, 116, '_logo', 'field_5e58d5b5e84e1'),
(490, 116, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(491, 116, '_logo_name', 'field_5e58d5b5e84e1'),
(492, 116, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(493, 116, '_footer_logo-name', 'field_5e58d8f982ec5'),
(494, 116, 'header', '#171626'),
(495, 116, '_header', 'field_5e58e05465d0c'),
(496, 116, 'footer', '#81d742'),
(497, 116, '_footer', 'field_5e58e0c4851f6'),
(498, 116, 'table', '[table id=6 /]'),
(499, 116, '_table', 'field_5e5a4e4b3acdf'),
(500, 116, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(501, 116, '_home-page_title-name', 'field_5e5e2b342731b'),
(502, 116, 'home-page_featured_image', '13'),
(503, 116, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(504, 14, 'home-page_featured-image', '120'),
(505, 14, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(506, 117, 'logo', '123'),
(507, 117, '_logo', 'field_5e58d5b5e84e1'),
(508, 117, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(509, 117, '_logo_name', 'field_5e58d5b5e84e1'),
(510, 117, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(511, 117, '_footer_logo-name', 'field_5e58d8f982ec5'),
(512, 117, 'header', '#171626'),
(513, 117, '_header', 'field_5e58e05465d0c'),
(514, 117, 'footer', '#81d742'),
(515, 117, '_footer', 'field_5e58e0c4851f6'),
(516, 117, 'table', '[table id=6 /]'),
(517, 117, '_table', 'field_5e5a4e4b3acdf'),
(518, 117, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(519, 117, '_home-page_title-name', 'field_5e5e2b342731b'),
(520, 117, 'home-page_featured_image', '13'),
(521, 117, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(522, 117, 'home-page_featured-image', '13'),
(523, 117, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(524, 118, '_wp_attached_file', '2020/03/User-19.jpg'),
(525, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:448;s:4:\"file\";s:19:\"2020/03/User-19.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"User-19-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"User-19-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(526, 119, 'logo', '123'),
(527, 119, '_logo', 'field_5e58d5b5e84e1'),
(528, 119, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(529, 119, '_logo_name', 'field_5e58d5b5e84e1'),
(530, 119, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(531, 119, '_footer_logo-name', 'field_5e58d8f982ec5'),
(532, 119, 'header', '#171626'),
(533, 119, '_header', 'field_5e58e05465d0c'),
(534, 119, 'footer', '#81d742'),
(535, 119, '_footer', 'field_5e58e0c4851f6'),
(536, 119, 'table', '[table id=6 /]'),
(537, 119, '_table', 'field_5e5a4e4b3acdf'),
(538, 119, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(539, 119, '_home-page_title-name', 'field_5e5e2b342731b'),
(540, 119, 'home-page_featured_image', '13'),
(541, 119, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(542, 119, 'home-page_featured-image', '118'),
(543, 119, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(544, 120, '_wp_attached_file', '2020/03/26675bab52c3d1f9eade4dab79f60bdc-e1583233730815.jpg'),
(545, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:225;s:4:\"file\";s:59:\"2020/03/26675bab52c3d1f9eade4dab79f60bdc-e1583233730815.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"26675bab52c3d1f9eade4dab79f60bdc-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"26675bab52c3d1f9eade4dab79f60bdc-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"26675bab52c3d1f9eade4dab79f60bdc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"26675bab52c3d1f9eade4dab79f60bdc-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"26675bab52c3d1f9eade4dab79f60bdc-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"26675bab52c3d1f9eade4dab79f60bdc-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 121, 'logo', '123'),
(547, 121, '_logo', 'field_5e58d5b5e84e1'),
(548, 121, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(549, 121, '_logo_name', 'field_5e58d5b5e84e1'),
(550, 121, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(551, 121, '_footer_logo-name', 'field_5e58d8f982ec5'),
(552, 121, 'header', '#171626'),
(553, 121, '_header', 'field_5e58e05465d0c'),
(554, 121, 'footer', '#81d742'),
(555, 121, '_footer', 'field_5e58e0c4851f6'),
(556, 121, 'table', '[table id=6 /]'),
(557, 121, '_table', 'field_5e5a4e4b3acdf'),
(558, 121, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(559, 121, '_home-page_title-name', 'field_5e5e2b342731b'),
(560, 121, 'home-page_featured_image', '13'),
(561, 121, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(562, 121, 'home-page_featured-image', '120'),
(563, 121, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(564, 122, 'logo', '123'),
(565, 122, '_logo', 'field_5e58d5b5e84e1'),
(566, 122, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(567, 122, '_logo_name', 'field_5e58d5b5e84e1'),
(568, 122, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(569, 122, '_footer_logo-name', 'field_5e58d8f982ec5'),
(570, 122, 'header', '#171626'),
(571, 122, '_header', 'field_5e58e05465d0c'),
(572, 122, 'footer', '#81d742'),
(573, 122, '_footer', 'field_5e58e0c4851f6'),
(574, 122, 'table', '[table id=6 /]'),
(575, 122, '_table', 'field_5e5a4e4b3acdf'),
(576, 122, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(577, 122, '_home-page_title-name', 'field_5e5e2b342731b'),
(578, 122, 'home-page_featured_image', '13'),
(579, 122, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(580, 122, 'home-page_featured-image', '120'),
(581, 122, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(582, 123, 'logo', '123'),
(583, 123, '_logo', 'field_5e58d5b5e84e1'),
(584, 123, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(585, 123, '_logo_name', 'field_5e58d5b5e84e1'),
(586, 123, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(587, 123, '_footer_logo-name', 'field_5e58d8f982ec5'),
(588, 123, 'header', '#171626'),
(589, 123, '_header', 'field_5e58e05465d0c'),
(590, 123, 'footer', '#81d742'),
(591, 123, '_footer', 'field_5e58e0c4851f6'),
(592, 123, 'table', '[table id=6 /]'),
(593, 123, '_table', 'field_5e5a4e4b3acdf'),
(594, 123, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(595, 123, '_home-page_title-name', 'field_5e5e2b342731b'),
(596, 123, 'home-page_featured_image', '13'),
(597, 123, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(598, 123, 'home-page_featured-image', '120'),
(599, 123, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(600, 124, 'logo', '123'),
(601, 124, '_logo', 'field_5e58d5b5e84e1'),
(602, 124, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(603, 124, '_logo_name', 'field_5e58d5b5e84e1'),
(604, 124, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(605, 124, '_footer_logo-name', 'field_5e58d8f982ec5'),
(606, 124, 'header', '#171626'),
(607, 124, '_header', 'field_5e58e05465d0c'),
(608, 124, 'footer', '#81d742'),
(609, 124, '_footer', 'field_5e58e0c4851f6'),
(610, 124, 'table', '[table id=6 /]'),
(611, 124, '_table', 'field_5e5a4e4b3acdf'),
(612, 124, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(613, 124, '_home-page_title-name', 'field_5e5e2b342731b'),
(614, 124, 'home-page_featured_image', '13'),
(615, 124, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(616, 124, 'home-page_featured-image', '11'),
(617, 124, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(618, 125, 'logo', '123'),
(619, 125, '_logo', 'field_5e58d5b5e84e1'),
(620, 125, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(621, 125, '_logo_name', 'field_5e58d5b5e84e1'),
(622, 125, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(623, 125, '_footer_logo-name', 'field_5e58d8f982ec5'),
(624, 125, 'header', '#171626'),
(625, 125, '_header', 'field_5e58e05465d0c'),
(626, 125, 'footer', '#81d742'),
(627, 125, '_footer', 'field_5e58e0c4851f6'),
(628, 125, 'table', '[table id=6 /]'),
(629, 125, '_table', 'field_5e5a4e4b3acdf'),
(630, 125, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(631, 125, '_home-page_title-name', 'field_5e5e2b342731b'),
(632, 125, 'home-page_featured_image', '13'),
(633, 125, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(634, 125, 'home-page_featured-image', '11'),
(635, 125, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(636, 126, 'logo', '123'),
(637, 126, '_logo', 'field_5e58d5b5e84e1'),
(638, 126, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(639, 126, '_logo_name', 'field_5e58d5b5e84e1'),
(640, 126, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(641, 126, '_footer_logo-name', 'field_5e58d8f982ec5'),
(642, 126, 'header', '#171626'),
(643, 126, '_header', 'field_5e58e05465d0c'),
(644, 126, 'footer', '#81d742'),
(645, 126, '_footer', 'field_5e58e0c4851f6'),
(646, 126, 'table', '[table id=6 /]'),
(647, 126, '_table', 'field_5e5a4e4b3acdf'),
(648, 126, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(649, 126, '_home-page_title-name', 'field_5e5e2b342731b'),
(650, 126, 'home-page_featured_image', '13'),
(651, 126, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(652, 126, 'home-page_featured-image', ''),
(653, 126, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(654, 127, 'logo', '123'),
(655, 127, '_logo', 'field_5e58d5b5e84e1'),
(656, 127, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(657, 127, '_logo_name', 'field_5e58d5b5e84e1'),
(658, 127, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(659, 127, '_footer_logo-name', 'field_5e58d8f982ec5'),
(660, 127, 'header', '#171626'),
(661, 127, '_header', 'field_5e58e05465d0c'),
(662, 127, 'footer', '#81d742'),
(663, 127, '_footer', 'field_5e58e0c4851f6'),
(664, 127, 'table', '[table id=6 /]'),
(665, 127, '_table', 'field_5e5a4e4b3acdf'),
(666, 127, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(667, 127, '_home-page_title-name', 'field_5e5e2b342731b'),
(668, 127, 'home-page_featured_image', '13'),
(669, 127, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(670, 127, 'home-page_featured-image', ''),
(671, 127, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(672, 128, 'logo', '123'),
(673, 128, '_logo', 'field_5e58d5b5e84e1'),
(674, 128, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(675, 128, '_logo_name', 'field_5e58d5b5e84e1'),
(676, 128, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(677, 128, '_footer_logo-name', 'field_5e58d8f982ec5'),
(678, 128, 'header', '#171626'),
(679, 128, '_header', 'field_5e58e05465d0c'),
(680, 128, 'footer', '#81d742'),
(681, 128, '_footer', 'field_5e58e0c4851f6'),
(682, 128, 'table', '[table id=6 /]'),
(683, 128, '_table', 'field_5e5a4e4b3acdf'),
(684, 128, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(685, 128, '_home-page_title-name', 'field_5e5e2b342731b'),
(686, 128, 'home-page_featured_image', '13'),
(687, 128, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(688, 128, 'home-page_featured-image', '120'),
(689, 128, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(690, 120, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:36:\"26675bab52c3d1f9eade4dab79f60bdc.jpg\";}s:18:\"full-1583233730815\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:225;s:4:\"file\";s:51:\"26675bab52c3d1f9eade4dab79f60bdc-e1583233716772.jpg\";}}'),
(691, 14, 'title-image_featured-image', '134'),
(692, 14, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(693, 128, 'title-image_featured-image', '120'),
(694, 128, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(695, 130, 'logo', '123'),
(696, 130, '_logo', 'field_5e58d5b5e84e1'),
(697, 130, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(698, 130, '_logo_name', 'field_5e58d5b5e84e1'),
(699, 130, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(700, 130, '_footer_logo-name', 'field_5e58d8f982ec5'),
(701, 130, 'header', '#171626'),
(702, 130, '_header', 'field_5e58e05465d0c'),
(703, 130, 'footer', '#81d742'),
(704, 130, '_footer', 'field_5e58e0c4851f6'),
(705, 130, 'table', '[table id=6 /]'),
(706, 130, '_table', 'field_5e5a4e4b3acdf'),
(707, 130, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(708, 130, '_home-page_title-name', 'field_5e5e2b342731b'),
(709, 130, 'home-page_featured_image', '13'),
(710, 130, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(711, 130, 'home-page_featured-image', '120'),
(712, 130, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(713, 130, 'title-image_featured-image', '120'),
(714, 130, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(715, 14, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(716, 14, '_home-page_content-top', 'field_5e5e426a115bd'),
(717, 14, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(718, 14, '_home-page_content-bottom', 'field_5e5e4351115be'),
(719, 133, 'logo', '123'),
(720, 133, '_logo', 'field_5e58d5b5e84e1'),
(721, 133, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(722, 133, '_logo_name', 'field_5e58d5b5e84e1'),
(723, 133, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(724, 133, '_footer_logo-name', 'field_5e58d8f982ec5'),
(725, 133, 'header', '#171626'),
(726, 133, '_header', 'field_5e58e05465d0c'),
(727, 133, 'footer', '#81d742'),
(728, 133, '_footer', 'field_5e58e0c4851f6'),
(729, 133, 'table', '[table id=6 /]'),
(730, 133, '_table', 'field_5e5a4e4b3acdf'),
(731, 133, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(732, 133, '_home-page_title-name', 'field_5e5e2b342731b'),
(733, 133, 'home-page_featured_image', '13'),
(734, 133, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(735, 133, 'home-page_featured-image', '120'),
(736, 133, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(737, 133, 'title-image_featured-image', '120'),
(738, 133, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(739, 133, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(740, 133, '_home-page_content-top', 'field_5e5e426a115bd'),
(741, 133, 'home-page_content-bottom', ''),
(742, 133, '_home-page_content-bottom', 'field_5e5e4351115be'),
(743, 134, '_wp_attached_file', '2020/03/maxresdefault-e1583329366885.jpg'),
(744, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:608;s:4:\"file\";s:40:\"2020/03/maxresdefault-e1583329366885.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"maxresdefault-e1583236734713-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"maxresdefault-e1583236734713-1024x519.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"maxresdefault-e1583236734713-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"maxresdefault-e1583236734713-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(745, 135, 'logo', '123'),
(746, 135, '_logo', 'field_5e58d5b5e84e1'),
(747, 135, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(748, 135, '_logo_name', 'field_5e58d5b5e84e1'),
(749, 135, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(750, 135, '_footer_logo-name', 'field_5e58d8f982ec5'),
(751, 135, 'header', '#171626'),
(752, 135, '_header', 'field_5e58e05465d0c'),
(753, 135, 'footer', '#81d742'),
(754, 135, '_footer', 'field_5e58e0c4851f6'),
(755, 135, 'table', '[table id=6 /]'),
(756, 135, '_table', 'field_5e5a4e4b3acdf'),
(757, 135, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(758, 135, '_home-page_title-name', 'field_5e5e2b342731b'),
(759, 135, 'home-page_featured_image', '13'),
(760, 135, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(761, 135, 'home-page_featured-image', '120'),
(762, 135, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(763, 135, 'title-image_featured-image', '134'),
(764, 135, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(765, 135, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(766, 135, '_home-page_content-top', 'field_5e5e426a115bd'),
(767, 135, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(768, 135, '_home-page_content-bottom', 'field_5e5e4351115be'),
(769, 134, '_wp_attachment_backup_sizes', 'a:6:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:17:\"maxresdefault.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:25:\"maxresdefault-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:25:\"maxresdefault-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:25:\"maxresdefault-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:26:\"maxresdefault-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"full-1583329366885\";a:3:{s:5:\"width\";i:1280;s:6:\"height\";i:649;s:4:\"file\";s:32:\"maxresdefault-e1583236734713.jpg\";}}'),
(770, 136, 'logo', '123'),
(771, 136, '_logo', 'field_5e58d5b5e84e1'),
(772, 136, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(773, 136, '_logo_name', 'field_5e58d5b5e84e1'),
(774, 136, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(775, 136, '_footer_logo-name', 'field_5e58d8f982ec5'),
(776, 136, 'header', '#171626'),
(777, 136, '_header', 'field_5e58e05465d0c'),
(778, 136, 'footer', '#81d742'),
(779, 136, '_footer', 'field_5e58e0c4851f6'),
(780, 136, 'table', '[table id=6 /]'),
(781, 136, '_table', 'field_5e5a4e4b3acdf'),
(782, 136, 'home-page_title-name', '<span style=\"color: #ff800b;\">New post</span>'),
(783, 136, '_home-page_title-name', 'field_5e5e2b342731b'),
(784, 136, 'home-page_featured_image', '13'),
(785, 136, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(786, 136, 'home-page_featured-image', '120'),
(787, 136, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(788, 136, 'title-image_featured-image', '134'),
(789, 136, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(790, 136, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(791, 136, '_home-page_content-top', 'field_5e5e426a115bd'),
(792, 136, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(793, 136, '_home-page_content-bottom', 'field_5e5e4351115be'),
(794, 137, 'logo', '123'),
(795, 137, '_logo', 'field_5e58d5b5e84e1'),
(796, 137, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(797, 137, '_logo_name', 'field_5e58d5b5e84e1'),
(798, 137, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(799, 137, '_footer_logo-name', 'field_5e58d8f982ec5'),
(800, 137, 'header', '#171626'),
(801, 137, '_header', 'field_5e58e05465d0c'),
(802, 137, 'footer', '#81d742'),
(803, 137, '_footer', 'field_5e58e0c4851f6'),
(804, 137, 'table', '[table id=6 /]'),
(805, 137, '_table', 'field_5e5a4e4b3acdf'),
(806, 137, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(807, 137, '_home-page_title-name', 'field_5e5e2b342731b'),
(808, 137, 'home-page_featured_image', '13'),
(809, 137, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(810, 137, 'home-page_featured-image', '120'),
(811, 137, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(812, 137, 'title-image_featured-image', '134'),
(813, 137, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(814, 137, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(815, 137, '_home-page_content-top', 'field_5e5e426a115bd'),
(816, 137, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(817, 137, '_home-page_content-bottom', 'field_5e5e4351115be'),
(818, 140, 'logo', '123'),
(819, 140, '_logo', 'field_5e58d5b5e84e1'),
(820, 140, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(821, 140, '_logo_name', 'field_5e58d5b5e84e1'),
(822, 140, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(823, 140, '_footer_logo-name', 'field_5e58d8f982ec5'),
(824, 140, 'header', '#171626'),
(825, 140, '_header', 'field_5e58e05465d0c'),
(826, 140, 'footer', '#81d742'),
(827, 140, '_footer', 'field_5e58e0c4851f6'),
(828, 140, 'table', '[table id=6 /]'),
(829, 140, '_table', 'field_5e5a4e4b3acdf'),
(830, 140, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(831, 140, '_home-page_title-name', 'field_5e5e2b342731b'),
(832, 140, 'home-page_featured_image', '13'),
(833, 140, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(834, 140, 'home-page_featured-image', '120'),
(835, 140, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(836, 140, 'title-image_featured-image', '134'),
(837, 140, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(838, 140, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(839, 140, '_home-page_content-top', 'field_5e5e426a115bd'),
(840, 140, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(841, 140, '_home-page_content-bottom', 'field_5e5e4351115be'),
(842, 141, '_wp_attached_file', '2020/03/figury_forma_linii_tochki_92772_1920x1080.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(843, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:53:\"2020/03/figury_forma_linii_tochki_92772_1920x1080.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"figury_forma_linii_tochki_92772_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"figury_forma_linii_tochki_92772_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"figury_forma_linii_tochki_92772_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"figury_forma_linii_tochki_92772_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:54:\"figury_forma_linii_tochki_92772_1920x1080-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(844, 14, 'container-fluid', '0'),
(845, 14, '_container-fluid', 'field_5e5e4ab53b586'),
(846, 142, 'logo', '123'),
(847, 142, '_logo', 'field_5e58d5b5e84e1'),
(848, 142, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(849, 142, '_logo_name', 'field_5e58d5b5e84e1'),
(850, 142, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(851, 142, '_footer_logo-name', 'field_5e58d8f982ec5'),
(852, 142, 'header', '#171626'),
(853, 142, '_header', 'field_5e58e05465d0c'),
(854, 142, 'footer', '#81d742'),
(855, 142, '_footer', 'field_5e58e0c4851f6'),
(856, 142, 'table', '[table id=6 /]'),
(857, 142, '_table', 'field_5e5a4e4b3acdf'),
(858, 142, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(859, 142, '_home-page_title-name', 'field_5e5e2b342731b'),
(860, 142, 'home-page_featured_image', '13'),
(861, 142, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(862, 142, 'home-page_featured-image', '120'),
(863, 142, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(864, 142, 'title-image_featured-image', '134'),
(865, 142, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(866, 142, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(867, 142, '_home-page_content-top', 'field_5e5e426a115bd'),
(868, 142, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(869, 142, '_home-page_content-bottom', 'field_5e5e4351115be'),
(870, 142, 'container-fluid', '141'),
(871, 142, '_container-fluid', 'field_5e5e4ab53b586'),
(872, 14, 'body', '#ffffff'),
(873, 14, '_body', 'field_5e5e50c95fa42'),
(874, 143, 'logo', '123'),
(875, 143, '_logo', 'field_5e58d5b5e84e1'),
(876, 143, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(877, 143, '_logo_name', 'field_5e58d5b5e84e1'),
(878, 143, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(879, 143, '_footer_logo-name', 'field_5e58d8f982ec5'),
(880, 143, 'header', '#171626'),
(881, 143, '_header', 'field_5e58e05465d0c'),
(882, 143, 'footer', '#81d742'),
(883, 143, '_footer', 'field_5e58e0c4851f6'),
(884, 143, 'table', '[table id=6 /]'),
(885, 143, '_table', 'field_5e5a4e4b3acdf'),
(886, 143, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(887, 143, '_home-page_title-name', 'field_5e5e2b342731b'),
(888, 143, 'home-page_featured_image', '13'),
(889, 143, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(890, 143, 'home-page_featured-image', '120'),
(891, 143, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(892, 143, 'title-image_featured-image', '134'),
(893, 143, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(894, 143, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(895, 143, '_home-page_content-top', 'field_5e5e426a115bd'),
(896, 143, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(897, 143, '_home-page_content-bottom', 'field_5e5e4351115be'),
(898, 143, 'container-fluid', '141'),
(899, 143, '_container-fluid', 'field_5e5e4ab53b586'),
(900, 143, 'body', '141'),
(901, 143, '_body', 'field_5e5e4ab53b586'),
(902, 145, 'logo', '123'),
(903, 145, '_logo', 'field_5e58d5b5e84e1'),
(904, 145, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(905, 145, '_logo_name', 'field_5e58d5b5e84e1'),
(906, 145, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(907, 145, '_footer_logo-name', 'field_5e58d8f982ec5'),
(908, 145, 'header', '#171626'),
(909, 145, '_header', 'field_5e58e05465d0c'),
(910, 145, 'footer', '#81d742'),
(911, 145, '_footer', 'field_5e58e0c4851f6'),
(912, 145, 'table', '[table id=6 /]'),
(913, 145, '_table', 'field_5e5a4e4b3acdf'),
(914, 145, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(915, 145, '_home-page_title-name', 'field_5e5e2b342731b'),
(916, 145, 'home-page_featured_image', '13'),
(917, 145, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(918, 145, 'home-page_featured-image', '120'),
(919, 145, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(920, 145, 'title-image_featured-image', '134'),
(921, 145, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(922, 145, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(923, 145, '_home-page_content-top', 'field_5e5e426a115bd'),
(924, 145, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(925, 145, '_home-page_content-bottom', 'field_5e5e4351115be'),
(926, 145, 'container-fluid', '#d6d6d6'),
(927, 145, '_container-fluid', 'field_5e5e50c95fa42'),
(928, 145, 'body', '141'),
(929, 145, '_body', 'field_5e5e4ab53b586'),
(930, 146, 'logo', '123'),
(931, 146, '_logo', 'field_5e58d5b5e84e1'),
(932, 146, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(933, 146, '_logo_name', 'field_5e58d5b5e84e1'),
(934, 146, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(935, 146, '_footer_logo-name', 'field_5e58d8f982ec5'),
(936, 146, 'header', '#171626'),
(937, 146, '_header', 'field_5e58e05465d0c'),
(938, 146, 'footer', '#81d742'),
(939, 146, '_footer', 'field_5e58e0c4851f6'),
(940, 146, 'table', '[table id=6 /]'),
(941, 146, '_table', 'field_5e5a4e4b3acdf'),
(942, 146, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(943, 146, '_home-page_title-name', 'field_5e5e2b342731b'),
(944, 146, 'home-page_featured_image', '13'),
(945, 146, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(946, 146, 'home-page_featured-image', '120'),
(947, 146, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(948, 146, 'title-image_featured-image', '134'),
(949, 146, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(950, 146, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(951, 146, '_home-page_content-top', 'field_5e5e426a115bd'),
(952, 146, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(953, 146, '_home-page_content-bottom', 'field_5e5e4351115be'),
(954, 146, 'container-fluid', '0'),
(955, 146, '_container-fluid', 'field_5e5e4ab53b586'),
(956, 146, 'body', '#c4c4c4'),
(957, 146, '_body', 'field_5e5e50c95fa42'),
(958, 147, 'logo', '123'),
(959, 147, '_logo', 'field_5e58d5b5e84e1'),
(960, 147, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(961, 147, '_logo_name', 'field_5e58d5b5e84e1'),
(962, 147, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(963, 147, '_footer_logo-name', 'field_5e58d8f982ec5'),
(964, 147, 'header', '#171626'),
(965, 147, '_header', 'field_5e58e05465d0c'),
(966, 147, 'footer', '#81d742'),
(967, 147, '_footer', 'field_5e58e0c4851f6'),
(968, 147, 'table', '[table id=6 /]'),
(969, 147, '_table', 'field_5e5a4e4b3acdf'),
(970, 147, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(971, 147, '_home-page_title-name', 'field_5e5e2b342731b'),
(972, 147, 'home-page_featured_image', '13'),
(973, 147, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(974, 147, 'home-page_featured-image', '120'),
(975, 147, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(976, 147, 'title-image_featured-image', '134'),
(977, 147, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(978, 147, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(979, 147, '_home-page_content-top', 'field_5e5e426a115bd'),
(980, 147, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(981, 147, '_home-page_content-bottom', 'field_5e5e4351115be'),
(982, 147, 'container-fluid', '0'),
(983, 147, '_container-fluid', 'field_5e5e4ab53b586'),
(984, 147, 'body', '#dddddd'),
(985, 147, '_body', 'field_5e5e50c95fa42'),
(986, 148, 'logo', '123'),
(987, 148, '_logo', 'field_5e58d5b5e84e1'),
(988, 148, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(989, 148, '_logo_name', 'field_5e58d5b5e84e1'),
(990, 148, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(991, 148, '_footer_logo-name', 'field_5e58d8f982ec5'),
(992, 148, 'header', '#171626'),
(993, 148, '_header', 'field_5e58e05465d0c'),
(994, 148, 'footer', '#81d742'),
(995, 148, '_footer', 'field_5e58e0c4851f6'),
(996, 148, 'table', '[table id=6 /]'),
(997, 148, '_table', 'field_5e5a4e4b3acdf'),
(998, 148, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(999, 148, '_home-page_title-name', 'field_5e5e2b342731b'),
(1000, 148, 'home-page_featured_image', '13'),
(1001, 148, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(1002, 148, 'home-page_featured-image', '120'),
(1003, 148, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(1004, 148, 'title-image_featured-image', '134'),
(1005, 148, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(1006, 148, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(1007, 148, '_home-page_content-top', 'field_5e5e426a115bd'),
(1008, 148, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(1009, 148, '_home-page_content-bottom', 'field_5e5e4351115be'),
(1010, 148, 'container-fluid', '0'),
(1011, 148, '_container-fluid', 'field_5e5e4ab53b586'),
(1012, 148, 'body', '#ffffff'),
(1013, 148, '_body', 'field_5e5e50c95fa42'),
(1015, 149, '_customize_restore_dismissed', '1'),
(1016, 150, '_edit_lock', '1583263524:1'),
(1049, 150, '_wp_trash_meta_status', 'publish'),
(1050, 150, '_wp_trash_meta_time', '1583263558'),
(1051, 155, '_edit_lock', '1583265907:1'),
(1052, 156, '_customize_draft_post_name', 'bookmakers-reviews'),
(1053, 156, '_customize_changeset_uuid', '4bf0d098-1107-4467-94d2-abca86e8578a'),
(1054, 155, '_customize_restore_dismissed', '1'),
(1055, 158, '_wp_trash_meta_status', 'publish'),
(1056, 158, '_wp_trash_meta_time', '1583266329'),
(1058, 159, '_customize_changeset_uuid', '2f89617d-57c0-4e5f-a3e9-f8fcfccc9688'),
(1059, 160, '_wp_trash_meta_status', 'publish'),
(1060, 160, '_wp_trash_meta_time', '1583267083'),
(1061, 162, '_wp_trash_meta_status', 'publish'),
(1062, 162, '_wp_trash_meta_time', '1583267099'),
(1063, 163, '_wp_trash_meta_status', 'publish'),
(1064, 163, '_wp_trash_meta_time', '1583268076'),
(1065, 164, '_wp_trash_meta_status', 'publish'),
(1066, 164, '_wp_trash_meta_time', '1583268090'),
(1067, 165, '_edit_lock', '1583268474:1'),
(1076, 165, '_wp_trash_meta_status', 'publish'),
(1077, 165, '_wp_trash_meta_time', '1583268488'),
(1086, 167, '_wp_trash_meta_status', 'publish'),
(1087, 167, '_wp_trash_meta_time', '1583268637'),
(1088, 169, '_edit_lock', '1583306153:1'),
(1105, 169, '_wp_trash_meta_status', 'publish'),
(1106, 169, '_wp_trash_meta_time', '1583306171'),
(1107, 159, '_wp_trash_meta_status', 'publish'),
(1108, 159, '_wp_trash_meta_time', '1583328757'),
(1109, 159, '_wp_desired_post_slug', 'bookmakers-reviews'),
(1110, 172, '_menu_item_type', 'post_type'),
(1111, 172, '_menu_item_menu_item_parent', '0'),
(1112, 172, '_menu_item_object_id', '14'),
(1113, 172, '_menu_item_object', 'page'),
(1114, 172, '_menu_item_target', ''),
(1115, 172, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1116, 172, '_menu_item_xfn', ''),
(1117, 172, '_menu_item_url', ''),
(1118, 172, '_menu_item_orphaned', '1583329064'),
(1119, 157, 'logo', '123'),
(1120, 157, '_logo', 'field_5e58d5b5e84e1'),
(1121, 157, 'logo_name', '<span style=\"color: #ff800b;\">Tour</span><span style=\"color: #ffffff;\">company</span>'),
(1122, 157, '_logo_name', 'field_5e58d5b5e84e1'),
(1123, 157, 'footer_logo-name', '<span style=\"color: #484574;\">Tour<span style=\"color: #2e2c4a;\">company</span></span>'),
(1124, 157, '_footer_logo-name', 'field_5e58d8f982ec5'),
(1125, 157, 'header', '#171626'),
(1126, 157, '_header', 'field_5e58e05465d0c'),
(1127, 157, 'footer', '#81d742'),
(1128, 157, '_footer', 'field_5e58e0c4851f6'),
(1129, 157, 'table', '[table id=6 /]'),
(1130, 157, '_table', 'field_5e5a4e4b3acdf'),
(1131, 157, 'home-page_title-name', '<h1 class=\"article__header_title\"><span style=\"color: #ff9900;\">Фьюрі і Джошуа збираються провести два або навіть три бої</span></h1>'),
(1132, 157, '_home-page_title-name', 'field_5e5e2b342731b'),
(1133, 157, 'home-page_featured_image', '13'),
(1134, 157, '_home-page_featured_image', 'field_5e5e2cac8665a'),
(1135, 157, 'home-page_featured-image', '120'),
(1136, 157, '_home-page_featured-image', 'field_5e5e2cac8665a'),
(1137, 157, 'title-image_featured-image', '134'),
(1138, 157, '_title-image_featured-image', 'field_5e5e2cac8665a'),
(1139, 157, 'home-page_content-top', 'Фьюри и Джошуа точно намерены провести два или три боя. Мы хотим скорее подписать контракт минимум на два поединка. Один хотим провести в конце этого года, а второй – летом 2021. Нужно сделать это как можно скорее.'),
(1140, 157, '_home-page_content-top', 'field_5e5e426a115bd'),
(1141, 157, 'home-page_content-bottom', 'И все чаще в этом фигурирует британец Тайсон Фьюри. \"Цыганский король\" почувствовал вкус больших денег, и теперь его не остановить. Бывший обидчик Владимира Кличко уже дважды встретился с Деонтеем Уайлдером, отобрав у него 22 февраля пояс WBC. И летом уже ожидается третья встреча соперников. Хотя не меньший интерес вызывает противостояние Фьюри с чемпионом по трем другим версиям – Энтони Джошуа. Пока же Джошуа подтвердил дату боя с Пулевым.'),
(1142, 157, '_home-page_content-bottom', 'field_5e5e4351115be'),
(1143, 157, 'container-fluid', '0'),
(1144, 157, '_container-fluid', 'field_5e5e4ab53b586'),
(1145, 157, 'body', '#ffffff'),
(1146, 157, '_body', 'field_5e5e50c95fa42'),
(1147, 173, '_menu_item_type', 'custom'),
(1148, 173, '_menu_item_menu_item_parent', '0'),
(1149, 173, '_menu_item_object_id', '173'),
(1150, 173, '_menu_item_object', 'custom'),
(1151, 173, '_menu_item_target', ''),
(1152, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1153, 173, '_menu_item_xfn', ''),
(1154, 173, '_menu_item_url', '#'),
(1156, 174, '_menu_item_type', 'custom'),
(1157, 174, '_menu_item_menu_item_parent', '0'),
(1158, 174, '_menu_item_object_id', '174'),
(1159, 174, '_menu_item_object', 'custom'),
(1160, 174, '_menu_item_target', ''),
(1161, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1162, 174, '_menu_item_xfn', ''),
(1163, 174, '_menu_item_url', '#'),
(1165, 175, '_menu_item_type', 'custom'),
(1166, 175, '_menu_item_menu_item_parent', '0'),
(1167, 175, '_menu_item_object_id', '175'),
(1168, 175, '_menu_item_object', 'custom'),
(1169, 175, '_menu_item_target', ''),
(1170, 175, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1171, 175, '_menu_item_xfn', ''),
(1172, 175, '_menu_item_url', '#'),
(1174, 176, '_menu_item_type', 'custom'),
(1175, 176, '_menu_item_menu_item_parent', '0'),
(1176, 176, '_menu_item_object_id', '176'),
(1177, 176, '_menu_item_object', 'custom'),
(1178, 176, '_menu_item_target', ''),
(1179, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1180, 176, '_menu_item_xfn', ''),
(1181, 176, '_menu_item_url', '#'),
(1201, 179, '_menu_item_type', 'custom'),
(1202, 179, '_menu_item_menu_item_parent', '0'),
(1203, 179, '_menu_item_object_id', '179'),
(1204, 179, '_menu_item_object', 'custom'),
(1205, 179, '_menu_item_target', ''),
(1206, 179, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1207, 179, '_menu_item_xfn', ''),
(1208, 179, '_menu_item_url', '#'),
(1210, 180, '_menu_item_type', 'custom'),
(1211, 180, '_menu_item_menu_item_parent', '0'),
(1212, 180, '_menu_item_object_id', '180'),
(1213, 180, '_menu_item_object', 'custom'),
(1214, 180, '_menu_item_target', ''),
(1215, 180, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1216, 180, '_menu_item_xfn', ''),
(1217, 180, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-21 14:25:26', '2020-02-21 11:25:26', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головний екран', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-03-03 12:56:15', '2020-03-03 09:56:15', '', 0, 'http://wordpress/?p=1', 0, 'post', '', 1),
(5, 1, '2020-02-21 14:28:16', '2020-02-21 11:28:16', '', 'Обновлённая UMoMA открывает двери', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%b1%d0%bd%d0%be%d0%b2%d0%bb%d1%91%d0%bd%d0%bd%d0%b0%d1%8f-umoma-%d0%be%d1%82%d0%ba%d1%80%d1%8b%d0%b2%d0%b0%d0%b5%d1%82-%d0%b4%d0%b2%d0%b5%d1%80%d0%b8', '', '', '2020-02-21 14:28:16', '2020-02-21 11:28:16', '', 0, 'http://wordpress/wp-content/uploads/2020/02/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-02-21 14:28:16', '2020-02-21 11:28:16', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c6be35ac981baf7b11b231ceda435ec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\",\n            \"search-3\",\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"08342dc88df2f9abd42c6cb68095083a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:28:16\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 14,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:25:57\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"08342dc88df2f9abd42c6cb68095083a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"99326c3c1a31820960e312d38685faea\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c6be35ac981baf7b11b231ceda435ec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"08342dc88df2f9abd42c6cb68095083a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8c6be35ac981baf7b11b231ceda435ec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"99326c3c1a31820960e312d38685faea\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-7\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-4\",\n                \"search-3\",\n                \"text-5\"\n            ],\n            \"sidebar-2\": [\n                \"text-6\"\n            ],\n            \"sidebar-3\": [\n                \"text-7\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 11:27:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f0b0596-4ebd-4fd0-82dd-4f527a3d4894', '', '', '2020-02-21 14:28:16', '2020-02-21 11:28:16', '', 0, 'http://wordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-02-21 14:28:18', '2020-02-21 11:28:18', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2020-03-03 12:42:44', '2020-03-03 10:42:44', '', 14, 'http://wordpress/wp-content/uploads/2020/02/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-02-21 14:28:18', '2020-02-21 11:28:18', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2020-02-21 14:28:18', '2020-02-21 11:28:18', '', 0, 'http://wordpress/wp-content/uploads/2020/02/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-02-21 14:28:18', '2020-02-21 11:28:18', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2020-03-03 12:11:22', '2020-03-03 10:11:22', '', 14, 'http://wordpress/wp-content/uploads/2020/02/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-02-21 14:28:18', '2020-02-21 12:28:18', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'головна сторінка', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b0', '', '', '2020-03-04 17:28:26', '2020-03-04 15:28:26', '', 0, 'http://wordpress/?page_id=14', 0, 'page', '', 0),
(20, 1, '2020-02-21 14:28:18', '2020-02-21 11:28:18', '<!-- wp:paragraph -->\n<p>Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.</p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-21 14:28:18', '2020-02-21 11:28:18', '', 14, 'http://wordpress/2020/02/21/14-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-02-27 18:10:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-27 18:10:24', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-02-27 18:11:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-27 18:11:35', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2020-02-27 18:11:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-27 18:11:46', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?page_id=38', 0, 'page', '', 0),
(41, 1, '2020-02-28 11:41:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-28 11:41:11', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?post_type=acf-field-group&p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-02-28 11:41:46', '2020-02-28 08:41:46', '<!-- wp:paragraph -->\n<p>Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 11:41:46', '2020-02-28 08:41:46', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-02-28 11:41:53', '2020-02-28 08:41:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 11:41:53', '2020-02-28 08:41:53', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-02-28 11:42:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-28 11:42:02', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?post_type=acf-field-group&p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2020-02-28 11:53:04', '2020-02-28 08:53:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"14\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Головна сторінка', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b0', 'publish', 'closed', 'closed', '', 'group_5e58d3986ea5a', '', '', '2020-03-03 14:47:48', '2020-03-03 12:47:48', '', 0, 'http://wordpress/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2020-02-28 11:53:04', '2020-02-28 08:53:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Верхній екран', 'верхній_екран', 'publish', 'closed', 'closed', '', 'field_5e58d40b00b93', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=46', 3, 'acf-field', '', 0),
(47, 1, '2020-02-28 11:53:04', '2020-02-28 08:53:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Основний екран', 'основний_екран', 'publish', 'closed', 'closed', '', 'field_5e58d4ab00b94', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=47', 5, 'acf-field', '', 0),
(48, 1, '2020-02-28 11:53:04', '2020-02-28 08:53:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Нижній екран', 'нижній_екран', 'publish', 'closed', 'closed', '', 'field_5e58d4be00b95', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=48', 11, 'acf-field', '', 0),
(49, 1, '2020-02-28 11:54:51', '2020-02-28 08:54:51', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 11:54:51', '2020-02-28 08:54:51', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-02-28 11:59:20', '2020-02-28 08:59:20', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:44:\"Напишіть назву компанії\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Верхнє лого сайту', 'logo_name', 'publish', 'closed', 'closed', '', 'field_5e58d5b5e84e1', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=50', 4, 'acf-field', '', 0),
(51, 1, '2020-02-28 12:04:05', '2020-02-28 09:04:05', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:04:05', '2020-02-28 09:04:05', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-02-28 12:10:55', '2020-02-28 09:10:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:44:\"Напишіть назву компанії\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Нижнє лого сайту', 'footer_logo-name', 'publish', 'closed', 'closed', '', 'field_5e58d8f982ec5', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=52', 12, 'acf-field', '', 0),
(53, 1, '2020-02-28 12:11:59', '2020-02-28 09:11:59', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:11:59', '2020-02-28 09:11:59', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-02-28 12:12:29', '2020-02-28 09:12:29', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:12:29', '2020-02-28 09:12:29', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-02-28 12:14:16', '2020-02-28 09:14:16', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:14:16', '2020-02-28 09:14:16', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-02-28 12:15:26', '2020-02-28 09:15:26', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:15:26', '2020-02-28 09:15:26', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-02-28 12:16:02', '2020-02-28 09:16:02', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:16:02', '2020-02-28 09:16:02', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-02-28 12:16:19', '2020-02-28 09:16:19', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:16:19', '2020-02-28 09:16:19', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-02-28 12:18:06', '2020-02-28 09:18:06', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:18:06', '2020-02-28 09:18:06', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-02-28 12:32:53', '2020-02-28 09:32:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:32:53', '2020-02-28 09:32:53', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-02-28 12:33:07', '2020-02-28 09:33:07', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:33:07', '2020-02-28 09:33:07', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-02-28 12:33:53', '2020-02-28 09:33:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:33:53', '2020-02-28 09:33:53', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-02-28 12:37:18', '2020-02-28 09:37:18', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:37:18', '2020-02-28 09:37:18', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-02-28 12:41:22', '2020-02-28 09:41:22', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:41:22', '2020-02-28 09:41:22', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-02-28 12:45:48', '2020-02-28 09:45:48', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:45:48', '2020-02-28 09:45:48', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-02-28 12:47:05', '2020-02-28 09:47:05', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:47:05', '2020-02-28 09:47:05', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-02-28 12:47:41', '2020-02-28 09:47:41', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:47:41', '2020-02-28 09:47:41', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-02-28 12:55:29', '2020-02-28 09:55:29', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-28 12:55:29', '2020-02-28 09:55:29', '', 14, 'http://wordpress/2020/02/28/14-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-02-28 12:56:27', '2020-02-28 09:56:27', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-28 09:56:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2782102c-0089-4352-9322-c6dd6d09057e', '', '', '2020-02-28 12:56:27', '2020-02-28 09:56:27', '', 0, 'http://wordpress/2020/02/28/2782102c-0089-4352-9322-c6dd6d09057e/', 0, 'customize_changeset', '', 0),
(74, 1, '2020-02-29 11:08:03', '2020-02-29 08:08:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 11:08:03', '2020-02-29 08:08:03', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-02-29 11:08:25', '2020-02-29 08:08:25', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 11:08:25', '2020-02-29 08:08:25', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-02-29 11:09:37', '2020-02-29 08:09:37', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 11:09:37', '2020-02-29 08:09:37', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-02-29 11:11:33', '2020-02-29 08:11:33', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 11:11:33', '2020-02-29 08:11:33', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-02-29 11:21:12', '2020-02-29 08:21:12', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 11:21:12', '2020-02-29 08:21:12', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-02-29 13:11:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-29 13:11:13', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=79', 0, 'post', '', 0),
(80, 1, '2020-02-29 13:11:53', '2020-02-29 10:11:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиця', '', 'trash', 'closed', 'closed', '', '80-2__trashed', '', '', '2020-02-29 13:13:59', '2020-02-29 10:13:59', '', 0, 'http://wordpress/?page_id=80', 0, 'page', '', 0),
(81, 1, '2020-02-29 13:11:53', '2020-02-29 10:11:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-02-29 13:11:53', '2020-02-29 10:11:53', '', 80, 'http://wordpress/2020/02/29/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-02-29 13:13:03', '2020-02-29 10:13:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблиця', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-02-29 13:13:03', '2020-02-29 10:13:03', '', 80, 'http://wordpress/2020/02/29/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-02-29 13:14:27', '2020-02-29 10:14:27', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-29 13:14:27', '2020-02-29 10:14:27', '', 1, 'http://wordpress/2020/02/29/1-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-02-29 14:02:22', '2020-02-29 11:02:22', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-29 14:02:22', '2020-02-29 11:02:22', '', 1, 'http://wordpress/2020/02/29/1-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-02-29 14:03:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-29 14:03:30', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=91', 0, 'post', '', 0),
(93, 1, '2020-02-29 14:30:17', '2020-02-29 11:30:17', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:30:17', '2020-02-29 11:30:17', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-02-29 14:31:54', '2020-02-29 11:31:54', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[table id=3 /]</p>\n<!-- /wp:paragraph -->', 'Головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:31:54', '2020-02-29 11:31:54', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-02-29 14:32:22', '2020-02-29 11:32:22', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '[table id=3 /]', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:32:22', '2020-02-29 11:32:22', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-02-29 14:33:16', '2020-02-29 11:33:16', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:33:16', '2020-02-29 11:33:16', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-02-29 14:42:21', '2020-02-29 11:42:21', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"1\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"2\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"3\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"5\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bc%d0%bf%d0%be%d1%80%d1%82%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%be-%d0%b8%d0%b7-%d1%80%d1%83%d1%87%d0%bd%d0%be%d0%b3%d0%be-%d0%b2%d0%b2%d0%be%d0%b4%d0%b0', '', '', '2020-03-03 12:30:50', '2020-03-03 09:30:50', '', 0, 'http://wordpress/?post_type=tablepress_table&#038;p=98', 0, 'tablepress_table', 'application/json', 0),
(99, 1, '2020-02-29 14:42:54', '2020-02-29 11:42:54', '[[\"#\",\"Company <img class=\\\"Up\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/Rectangle 204.svg\\\" alt=\\\"\\\"/> <img class=\\\"Down\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/Rectangle 205.svg\\\" alt=\\\"\\\"/>\",\"website\",\"games\",\"rate <img class=\\\"Up\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/Rectangle 204.svg\\\" alt=\\\"\\\"/> <img class=\\\"Down\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/Rectangle 205.svg\\\" alt=\\\"\\\"/>\"],[\"1\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"],[\"2\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"3\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 14:42:54', '2020-02-29 11:42:54', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-02-29 14:44:00', '2020-02-29 11:44:00', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Таблиця', 'table', 'publish', 'closed', 'closed', '', 'field_5e5a4e4b3acdf', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=100', 9, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2020-02-29 14:47:03', '2020-02-29 11:47:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:47:03', '2020-02-29 11:47:03', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-02-29 14:56:09', '2020-02-29 11:56:09', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-02-29 14:56:09', '2020-02-29 11:56:09', '', 14, 'http://wordpress/2020/02/29/14-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-02-29 14:57:07', '2020-02-29 11:57:07', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"2\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"3\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"1\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"],[\"4\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 14:57:07', '2020-02-29 11:57:07', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-02-29 15:53:54', '2020-02-29 12:53:54', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"2\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname<img src=\\\"http://wordpress/wp-content/uploads/2020/02/User-19-300x300.jpg\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"300\\\" class=\\\"alignnone size-medium wp-image-87\\\" />\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"3\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"1\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"],[\"4\",\"<img class=\\\"company-photo\\\" src=\\\"<?php bloginfo( \'template_url\' ); ?>/assets/images/User 19.jpg\\\" alt=\\\"\\\"/>Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 15:53:54', '2020-02-29 12:53:54', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-02-29 15:55:23', '2020-02-29 12:55:23', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"2\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"3\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"1\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport, Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 15:55:23', '2020-02-29 12:55:23', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-02-29 19:10:23', '2020-02-29 16:10:23', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"2\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"3\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"3\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"1\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"1\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 19:10:23', '2020-02-29 16:10:23', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-02-29 19:26:34', '2020-02-29 16:26:34', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"1\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"2\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"3\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"5\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-02-29 19:26:34', '2020-02-29 16:26:34', '', 98, 'http://wordpress/2020/02/29/98-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-03-03 12:27:32', '2020-03-03 09:27:32', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"1\",\"Companyname<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"2\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"3\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"5\",\"Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-03-03 12:27:32', '2020-03-03 09:27:32', '', 98, 'http://wordpress/2020/03/03/98-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-03-03 12:30:50', '2020-03-03 09:30:50', '[[\"#\",\"Company\",\"website\",\"games\",\"rate \"],[\"1\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"2\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"3\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Sport\",\"9.52\"],[\"4\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"],[\"5\",\"<img src=\\\"http://wordpress/wp-content/uploads/2020/02/2020-landscape-1-300x192.png\\\" alt=\\\"\\\" width=\\\"300\\\" height=\\\"192\\\" class=\\\"alignnone size-medium wp-image-5\\\" />Companyname\",\"<a href=\\\"#\\\">website.info</a>\",\"Esport\",\"9.52\"]]', 'Рейтинг компаній', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-03-03 12:30:50', '2020-03-03 09:30:50', '', 98, 'http://wordpress/2020/03/03/98-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-03-03 12:56:15', '2020-03-03 09:56:15', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Головний екран', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-03 12:56:15', '2020-03-03 09:56:15', '', 1, 'http://wordpress/2020/03/03/1-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-03-03 12:03:16', '2020-03-03 10:03:16', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:25:\"Введіть тайтл\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Тайтл', 'home-page_title-name', 'publish', 'closed', 'closed', '', 'field_5e5e2b342731b', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=111', 6, 'acf-field', '', 0),
(112, 1, '2020-03-03 12:04:18', '2020-03-03 10:04:18', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:04:18', '2020-03-03 10:04:18', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-03-03 12:05:43', '2020-03-03 10:05:43', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:05:43', '2020-03-03 10:05:43', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-03-03 12:09:48', '2020-03-03 10:09:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:57:\"Виберіть зображення для тайтлу\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Мініатюра тайтлу', 'title-image_featured-image', 'publish', 'closed', 'closed', '', 'field_5e5e2cac8665a', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=114', 7, 'acf-field', '', 0),
(115, 1, '2020-03-03 12:10:01', '2020-03-03 10:10:01', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:10:01', '2020-03-03 10:10:01', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-03-03 12:11:22', '2020-03-03 10:11:22', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:11:22', '2020-03-03 10:11:22', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-03-03 12:15:10', '2020-03-03 10:15:10', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:15:10', '2020-03-03 10:15:10', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2020-03-03 12:20:22', '2020-03-03 10:20:22', '', 'User 19', '', 'inherit', 'open', 'closed', '', 'user-19-2', '', '', '2020-03-03 12:20:22', '2020-03-03 10:20:22', '', 14, 'http://wordpress/wp-content/uploads/2020/03/User-19.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2020-03-03 12:20:32', '2020-03-03 10:20:32', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:20:32', '2020-03-03 10:20:32', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-03-03 12:37:41', '2020-03-03 10:37:41', '', '26675bab52c3d1f9eade4dab79f60bdc', '', 'inherit', 'open', 'closed', '', '26675bab52c3d1f9eade4dab79f60bdc', '', '', '2020-03-03 12:37:41', '2020-03-03 10:37:41', '', 14, 'http://wordpress/wp-content/uploads/2020/03/26675bab52c3d1f9eade4dab79f60bdc.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-03-03 12:38:03', '2020-03-03 10:38:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:38:03', '2020-03-03 10:38:03', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2020-03-03 12:38:43', '2020-03-03 10:38:43', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:38:43', '2020-03-03 10:38:43', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-03-03 12:41:05', '2020-03-03 10:41:05', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:41:05', '2020-03-03 10:41:05', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-03-03 12:42:44', '2020-03-03 10:42:44', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:42:44', '2020-03-03 10:42:44', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2020-03-03 12:45:23', '2020-03-03 10:45:23', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:45:23', '2020-03-03 10:45:23', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-03-03 12:46:22', '2020-03-03 10:46:22', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 12:46:22', '2020-03-03 10:46:22', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2020-03-03 13:05:28', '2020-03-03 11:05:28', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:05:28', '2020-03-03 11:05:28', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2020-03-03 13:05:39', '2020-03-03 11:05:39', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:05:39', '2020-03-03 11:05:39', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-03-03 13:07:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 13:07:52', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=129', 0, 'post', '', 0),
(130, 1, '2020-03-03 13:14:58', '2020-03-03 11:14:58', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:14:58', '2020-03-03 11:14:58', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2020-03-03 13:45:46', '2020-03-03 11:45:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"Введіть контент над таблицею\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Контент над таблицею', 'home-page_content-top', 'publish', 'closed', 'closed', '', 'field_5e5e426a115bd', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=131', 8, 'acf-field', '', 0),
(132, 1, '2020-03-03 13:45:46', '2020-03-03 11:45:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Контент під таблицею', 'home-page_content-bottom', 'publish', 'closed', 'closed', '', 'field_5e5e4351115be', '', '', '2020-03-03 14:43:52', '2020-03-03 12:43:52', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=132', 10, 'acf-field', '', 0),
(133, 1, '2020-03-03 13:49:42', '2020-03-03 11:49:42', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:49:42', '2020-03-03 11:49:42', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-03-03 13:54:44', '2020-03-03 11:54:44', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2020-03-03 13:54:44', '2020-03-03 11:54:44', '', 14, 'http://wordpress/wp-content/uploads/2020/03/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-03-03 13:55:07', '2020-03-03 11:55:07', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:55:07', '2020-03-03 11:55:07', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-03-03 13:59:03', '2020-03-03 11:59:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 13:59:03', '2020-03-03 11:59:03', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-03-03 14:00:52', '2020-03-03 12:00:52', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:00:52', '2020-03-03 12:00:52', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-03-03 14:15:31', '2020-03-03 12:15:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '0 екран', '0_екран', 'publish', 'closed', 'closed', '', 'field_5e5e4a22d5c55', '', '', '2020-03-03 14:33:09', '2020-03-03 12:33:09', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=138', 0, 'acf-field', '', 0),
(139, 1, '2020-03-03 14:17:24', '2020-03-03 12:17:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:50:\"Виберіть фонове зображення\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фонове зображення', 'container-fluid', 'publish', 'closed', 'closed', '', 'field_5e5e4ab53b586', '', '', '2020-03-03 14:47:48', '2020-03-03 12:47:48', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=139', 2, 'acf-field', '', 0),
(140, 1, '2020-03-03 14:17:39', '2020-03-03 12:17:39', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:17:39', '2020-03-03 12:17:39', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2020-03-03 14:17:57', '2020-03-03 12:17:57', '', 'figury_forma_linii_tochki_92772_1920x1080', '', 'inherit', 'open', 'closed', '', 'figury_forma_linii_tochki_92772_1920x1080', '', '', '2020-03-03 14:17:57', '2020-03-03 12:17:57', '', 14, 'http://wordpress/wp-content/uploads/2020/03/figury_forma_linii_tochki_92772_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2020-03-03 14:18:06', '2020-03-03 12:18:06', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:18:06', '2020-03-03 12:18:06', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2020-03-03 14:24:03', '2020-03-03 12:24:03', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:24:03', '2020-03-03 12:24:03', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-03-03 14:43:40', '2020-03-03 12:43:40', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:55:\"Виберіть колір основного фону\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";}', 'Колір основного фону', 'body', 'publish', 'closed', 'closed', '', 'field_5e5e50c95fa42', '', '', '2020-03-03 14:47:48', '2020-03-03 12:47:48', '', 45, 'http://wordpress/?post_type=acf-field&#038;p=144', 1, 'acf-field', '', 0),
(145, 1, '2020-03-03 14:44:44', '2020-03-03 12:44:44', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:44:44', '2020-03-03 12:44:44', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-03-03 14:48:15', '2020-03-03 12:48:15', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:48:15', '2020-03-03 12:48:15', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2020-03-03 14:50:08', '2020-03-03 12:50:08', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:50:08', '2020-03-03 12:50:08', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2020-03-03 14:50:27', '2020-03-03 12:50:27', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 14:50:27', '2020-03-03 12:50:27', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2020-03-03 21:18:03', '0000-00-00 00:00:00', '{\n    \"nav_menu[-1365685760196835300]\": {\n        \"value\": {\n            \"name\": \"top_nav-menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:18:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a3780ff3-8fa9-47fb-8c6c-82913902786a', '', '', '2020-03-03 21:18:03', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=149', 0, 'customize_changeset', '', 0),
(150, 1, '2020-03-03 21:25:54', '2020-03-03 19:25:54', '{\n    \"nav_menu[2]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:23:42\"\n    },\n    \"nav_menu[-2719568586581008400]\": {\n        \"value\": {\n            \"name\": \"header - \\u0432\\u0435\\u0440\\u0445\\u043d\\u0454 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:23:42\"\n    },\n    \"nav_menu_item[-6114263910498091000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:23:42\"\n    },\n    \"nav_menu_item[-2403762329283735600]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Bookmakers reviews\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bookmakers reviews\",\n            \"nav_menu_term_id\": -2719568586581008400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:24:38\"\n    },\n    \"nav_menu_item[-499770807813613600]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Esport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Esport\",\n            \"nav_menu_term_id\": -2719568586581008400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:24:57\"\n    },\n    \"nav_menu_item[-4372992172493512700]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Sport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sport\",\n            \"nav_menu_term_id\": -2719568586581008400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:24:57\"\n    },\n    \"nav_menu_item[-3033530731232868400]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Blog\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -2719568586581008400,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 19:25:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '70a1fa40-6406-4686-b53c-4fb6a2de2c39', '', '', '2020-03-03 21:25:54', '2020-03-03 19:25:54', '', 0, 'http://wordpress/?p=150', 0, 'customize_changeset', '', 0),
(155, 1, '2020-03-03 22:04:44', '0000-00-00 00:00:00', '{\n    \"page_on_front\": {\n        \"value\": \"156\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:04:44\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:03:44\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            156\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:03:44\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:04:44\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4bf0d098-1107-4467-94d2-abca86e8578a', '', '', '2020-03-03 22:04:44', '2020-03-03 20:04:44', '', 0, 'http://wordpress/?p=155', 0, 'customize_changeset', '', 0),
(156, 1, '2020-03-03 22:04:44', '0000-00-00 00:00:00', '', 'Bookmakers reviews', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 22:02:54', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?page_id=156', 0, 'page', '', 0),
(157, 1, '2020-03-03 22:05:20', '2020-03-03 20:05:20', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'головна сторінка', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-03 22:05:20', '2020-03-03 20:05:20', '', 14, 'http://wordpress/2020/03/03/14-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2020-03-03 22:12:05', '2020-03-03 20:12:05', '{\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:12:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0917fda6-c566-430c-8635-240cc22c502c', '', '', '2020-03-03 22:12:05', '2020-03-03 20:12:05', '', 0, 'http://wordpress/2020/03/03/0917fda6-c566-430c-8635-240cc22c502c/', 0, 'customize_changeset', '', 0),
(159, 1, '2020-03-03 22:24:42', '2020-03-03 20:24:42', '', 'Bookmakers reviews', '', 'trash', 'closed', 'closed', '', 'bookmakers-reviews__trashed', '', '', '2020-03-04 15:32:37', '2020-03-04 13:32:37', '', 0, 'http://wordpress/?page_id=159', 0, 'page', '', 0),
(160, 1, '2020-03-03 22:24:42', '2020-03-03 20:24:42', '{\n    \"page_on_front\": {\n        \"value\": \"14\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:24:42\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            159\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:24:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2f89617d-57c0-4e5f-a3e9-f8fcfccc9688', '', '', '2020-03-03 22:24:42', '2020-03-03 20:24:42', '', 0, 'http://wordpress/2020/03/03/2f89617d-57c0-4e5f-a3e9-f8fcfccc9688/', 0, 'customize_changeset', '', 0),
(161, 1, '2020-03-03 22:24:42', '2020-03-03 20:24:42', '', 'Bookmakers reviews', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2020-03-03 22:24:42', '2020-03-03 20:24:42', '', 159, 'http://wordpress/2020/03/03/159-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2020-03-03 22:24:59', '2020-03-03 20:24:59', '{\n    \"nav_menu[4]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a (2)\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:24:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2d60964-82ff-4855-822f-bffd85c76891', '', '', '2020-03-03 22:24:59', '2020-03-03 20:24:59', '', 0, 'http://wordpress/2020/03/03/c2d60964-82ff-4855-822f-bffd85c76891/', 0, 'customize_changeset', '', 0),
(163, 1, '2020-03-03 22:41:15', '2020-03-03 20:41:15', '{\n    \"nav_menu_item[151]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 151,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Bookmakers reviews\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:15\"\n    },\n    \"nav_menu_item[152]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 152,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Esport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:15\"\n    },\n    \"nav_menu_item[153]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 153,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Sport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:15\"\n    },\n    \"nav_menu_item[154]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 154,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Blog\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:15\"\n    },\n    \"nav_menu_item[-5393778549534786000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11db1bac-0ab1-4b55-a91f-bcc128f23a8f', '', '', '2020-03-03 22:41:15', '2020-03-03 20:41:15', '', 0, 'http://wordpress/2020/03/03/11db1bac-0ab1-4b55-a91f-bcc128f23a8f/', 0, 'customize_changeset', '', 0),
(164, 1, '2020-03-03 22:41:30', '2020-03-03 20:41:30', '{\n    \"nav_menu_item[154]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 154,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Blog\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:30\"\n    },\n    \"nav_menu_item[151]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 151,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Bookmakers reviews\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:30\"\n    },\n    \"nav_menu_item[152]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 152,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Esport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:30\"\n    },\n    \"nav_menu_item[153]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 153,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"Sport\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 5,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:41:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '683df4c7-dce0-4719-834b-12b9870d8dd2', '', '', '2020-03-03 22:41:30', '2020-03-03 20:41:30', '', 0, 'http://wordpress/2020/03/03/683df4c7-dce0-4719-834b-12b9870d8dd2/', 0, 'customize_changeset', '', 0),
(165, 1, '2020-03-03 22:48:07', '2020-03-03 20:48:07', '{\n    \"nav_menu[-6947174445139931000]\": {\n        \"value\": {\n            \"name\": \"logo\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:47:47\"\n    },\n    \"nav_menu_item[-5342218642262899000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Tourcompany\",\n            \"url\": \"http://wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -6947174445139931000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:48:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e13d97ab-4408-4048-8f9b-db42e879a585', '', '', '2020-03-03 22:48:07', '2020-03-03 20:48:07', '', 0, 'http://wordpress/?p=165', 0, 'customize_changeset', '', 0),
(167, 1, '2020-03-03 22:50:35', '2020-03-03 20:50:35', '{\n    \"nav_menu_item[166]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:50:35\"\n    },\n    \"nav_menu_item[-1696661797459226600]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Tourcompany\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Tourcompany\",\n            \"nav_menu_term_id\": 6,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-03 20:50:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf13da58-80fb-45c3-9a93-37ec21a885a7', '', '', '2020-03-03 22:50:35', '2020-03-03 20:50:35', '', 0, 'http://wordpress/2020/03/03/cf13da58-80fb-45c3-9a93-37ec21a885a7/', 0, 'customize_changeset', '', 0),
(169, 1, '2020-03-04 09:16:08', '2020-03-04 07:16:08', '{\n    \"nav_menu[6]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-04 07:15:34\"\n    },\n    \"nav_menu[-3888701613208535000]\": {\n        \"value\": {\n            \"name\": \"footer - \\u043d\\u0438\\u0436\\u043d\\u0454 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-04 07:15:34\"\n    },\n    \"nav_menu_item[-8417174148305046000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"privacy policy\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"privacy policy\",\n            \"nav_menu_term_id\": -3888701613208535000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-04 07:15:49\"\n    },\n    \"nav_menu_item[-2640144783013617700]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Contact us\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact us\",\n            \"nav_menu_term_id\": -3888701613208535000,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-04 07:16:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aaf87947-be6a-469f-a71f-b0fac854d81a', '', '', '2020-03-04 09:16:08', '2020-03-04 07:16:08', '', 0, 'http://wordpress/?p=169', 0, 'customize_changeset', '', 0),
(172, 1, '2020-03-04 15:37:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-04 15:37:43', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=172', 1, 'nav_menu_item', '', 0),
(173, 1, '2020-03-04 15:49:43', '2020-03-04 13:49:43', '', 'Bookmakers reviews', '', 'publish', 'closed', 'closed', '', 'bookmakers-reviews', '', '', '2020-03-04 17:23:35', '2020-03-04 15:23:35', '', 0, 'http://wordpress/?p=173', 1, 'nav_menu_item', '', 0),
(174, 1, '2020-03-04 15:49:44', '2020-03-04 13:49:44', '', 'Esport', '', 'publish', 'closed', 'closed', '', 'esport', '', '', '2020-03-04 17:23:35', '2020-03-04 15:23:35', '', 0, 'http://wordpress/?p=174', 2, 'nav_menu_item', '', 0),
(175, 1, '2020-03-04 15:49:44', '2020-03-04 13:49:44', '', 'Sport', '', 'publish', 'closed', 'closed', '', 'sport', '', '', '2020-03-04 17:23:35', '2020-03-04 15:23:35', '', 0, 'http://wordpress/?p=175', 3, 'nav_menu_item', '', 0),
(176, 1, '2020-03-04 15:49:44', '2020-03-04 13:49:44', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-03-04 17:23:35', '2020-03-04 15:23:35', '', 0, 'http://wordpress/?p=176', 4, 'nav_menu_item', '', 0),
(179, 1, '2020-03-04 17:14:53', '2020-03-04 15:14:53', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'asdasd', '', '', '2020-03-04 17:27:54', '2020-03-04 15:27:54', '', 0, 'http://wordpress/?p=179', 2, 'nav_menu_item', '', 0),
(180, 1, '2020-03-04 17:27:21', '2020-03-04 15:27:21', '', 'privacy policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2020-03-04 17:27:53', '2020-03-04 15:27:53', '', 0, 'http://wordpress/?p=180', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(10, 'header_menu', 'header_menu', 0),
(12, 'footer_menu', 'footer_menu', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(173, 10, 0),
(174, 10, 0),
(175, 10, 0),
(176, 10, 0),
(179, 12, 0),
(180, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(10, 10, 'nav_menu', '', 0, 4),
(12, 12, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(14, 1, 'dismissed_wp_pointers', 'tp09_edit_drag_drop_sort,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '129'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_tablepress_user_options', '{\"user_options_db_version\":39,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true}'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"c74d7a41f011ef9a05c70e6eb35d0cc6c24bb2db7ef30380cb9a35c772c02aaf\";a:4:{s:10:\"expiration\";i:1583400427;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1583227627;}}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:0:{}'),
(24, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=1&posts_list_mode=list'),
(25, 1, 'wp_user-settings-time', '1583229393'),
(26, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:\"table_last_modified_by\";}'),
(27, 1, 'edit_post_per_page', '20'),
(28, 1, 'nav_menu_recently_edited', '12'),
(29, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$B21/dCjLjaghh81GyrzKXxola7mk4L1', 'admin', 'ddp0496@gmail.com', '', '2020-02-21 11:25:25', '', 0, 'Admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1219;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
