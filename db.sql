-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 01, 2020 at 10:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `wp_cade`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-25 10:53:09', '2020-01-25 13:53:09', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visitá la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/cade', 'yes'),
(2, 'home', 'http://localhost:8888/cade', 'yes'),
(3, 'blogname', 'CADE', 'yes'),
(4, 'blogdescription', 'Cámara Argentina de la Energía', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ortega.david.ar@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:141:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"noticia/?$\";s:27:\"index.php?post_type=noticia\";s:40:\"noticia/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=noticia&feed=$matches[1]\";s:35:\"noticia/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=noticia&feed=$matches[1]\";s:27:\"noticia/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=noticia&paged=$matches[1]\";s:11:\"proyecto/?$\";s:28:\"index.php?post_type=proyecto\";s:41:\"proyecto/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=proyecto&feed=$matches[1]\";s:36:\"proyecto/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=proyecto&feed=$matches[1]\";s:28:\"proyecto/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=proyecto&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"genero/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:42:\"genero/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:23:\"genero/([^/]+)/embed/?$\";s:39:\"index.php?genero=$matches[1]&embed=true\";s:35:\"genero/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?genero=$matches[1]&paged=$matches[2]\";s:17:\"genero/([^/]+)/?$\";s:28:\"index.php?genero=$matches[1]\";s:35:\"noticia/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"noticia/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"noticia/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"noticia/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"noticia/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"noticia/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"noticia/([^/]+)/embed/?$\";s:40:\"index.php?noticia=$matches[1]&embed=true\";s:28:\"noticia/([^/]+)/trackback/?$\";s:34:\"index.php?noticia=$matches[1]&tb=1\";s:48:\"noticia/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?noticia=$matches[1]&feed=$matches[2]\";s:43:\"noticia/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?noticia=$matches[1]&feed=$matches[2]\";s:36:\"noticia/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?noticia=$matches[1]&paged=$matches[2]\";s:43:\"noticia/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?noticia=$matches[1]&cpage=$matches[2]\";s:32:\"noticia/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?noticia=$matches[1]&page=$matches[2]\";s:24:\"noticia/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"noticia/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"noticia/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"noticia/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"noticia/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"noticia/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"proyecto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"proyecto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"proyecto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"proyecto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"proyecto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"proyecto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"proyecto/([^/]+)/embed/?$\";s:41:\"index.php?proyecto=$matches[1]&embed=true\";s:29:\"proyecto/([^/]+)/trackback/?$\";s:35:\"index.php?proyecto=$matches[1]&tb=1\";s:49:\"proyecto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?proyecto=$matches[1]&feed=$matches[2]\";s:44:\"proyecto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?proyecto=$matches[1]&feed=$matches[2]\";s:37:\"proyecto/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?proyecto=$matches[1]&paged=$matches[2]\";s:44:\"proyecto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?proyecto=$matches[1]&cpage=$matches[2]\";s:33:\"proyecto/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?proyecto=$matches[1]&page=$matches[2]\";s:25:\"proyecto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"proyecto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"proyecto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"proyecto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"proyecto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"proyecto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:\"/Users/jdortega/habla/cade/wp-content/themes/cade/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'cade', 'yes'),
(41, 'stylesheet', 'cade', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '13', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1595512389', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_AR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1580597590;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580608390;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580651590;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580651609;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580651611;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"DlvaLlX7tRPgZlCVMHitCW\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BJIwwMeIxlcr5Y38NVo.f4C0e2sW2F0\";s:10:\"created_at\";i:1580577415;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579964580;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580573166;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'new_admin_email', 'ortega.david.ar@gmail.com', 'yes'),
(150, 'theme_mods_understrap', 'a:6:{s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579963996;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(155, 'current_theme', 'CADE with UnderStrap', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'theme_switched_via_customizer', '', 'yes'),
(158, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(162, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(165, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580582884;s:7:\"checked\";a:2:{s:4:\"cade\";s:5:\"0.9.4\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(171, 'theme_mods_cade', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:15:\"container-fluid\";s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:44;s:21:\"facebook_setting_name\";s:19:\"http://facebook.com\";s:20:\"twitter_setting_name\";s:18:\"http://twitter.com\";s:22:\"instagram_setting_name\";s:20:\"http://instagram.com\";}', 'yes'),
(174, 'recently_activated', 'a:1:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1580353639;}', 'yes'),
(181, 'cptui_new_install', 'false', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(183, 'cptui_post_types', 'a:1:{s:7:\"noticia\";a:30:{s:4:\"name\";s:7:\"noticia\";s:5:\"label\";s:8:\"Noticias\";s:14:\"singular_label\";s:7:\"Noticia\";s:11:\"description\";s:13:\"Noticias CADE\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:12:\"Mis Noticias\";s:9:\"all_items\";s:18:\"Todas las Noticias\";s:7:\"add_new\";s:13:\"Agregar Nueva\";s:12:\"add_new_item\";s:21:\"Agregar nueva Noticia\";s:9:\"edit_item\";s:14:\"Editar Noticia\";s:8:\"new_item\";s:13:\"Nueva Noticia\";s:9:\"view_item\";s:11:\"Ver Noticia\";s:10:\"view_items\";s:12:\"Ver Noticias\";s:12:\"search_items\";s:14:\"Buscar Noticia\";s:9:\"not_found\";s:21:\"Noticia no encontrada\";s:18:\"not_found_in_trash\";s:30:\"No hay Noticias en la papelera\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(265, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580573168;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(266, 'acf_version', '5.8.7', 'yes'),
(317, 'recovery_mode_email_last_sent', '1580577415', 'yes'),
(325, '_transient_is_multi_author', '0', 'yes'),
(326, '_transient_understrap_categories', '1', 'yes'),
(327, '_site_transient_timeout_theme_roots', '1580584683', 'no'),
(328, '_site_transient_theme_roots', 'a:2:{s:4:\"cade\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1579961065'),
(7, 7, '_edit_lock', '1579961178:1'),
(8, 8, '_menu_item_type', 'custom'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '8'),
(11, 8, '_menu_item_object', 'custom'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', '#nosotros'),
(16, 9, '_menu_item_type', 'custom'),
(17, 9, '_menu_item_menu_item_parent', '0'),
(18, 9, '_menu_item_object_id', '9'),
(19, 9, '_menu_item_object', 'custom'),
(20, 9, '_menu_item_target', ''),
(21, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 9, '_menu_item_xfn', ''),
(23, 9, '_menu_item_url', '#proyectos'),
(24, 10, '_menu_item_type', 'custom'),
(25, 10, '_menu_item_menu_item_parent', '0'),
(26, 10, '_menu_item_object_id', '10'),
(27, 10, '_menu_item_object', 'custom'),
(28, 10, '_menu_item_target', ''),
(29, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 10, '_menu_item_xfn', ''),
(31, 10, '_menu_item_url', '#noticias'),
(32, 11, '_menu_item_type', 'custom'),
(33, 11, '_menu_item_menu_item_parent', '0'),
(34, 11, '_menu_item_object_id', '11'),
(35, 11, '_menu_item_object', 'custom'),
(36, 11, '_menu_item_target', ''),
(37, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 11, '_menu_item_xfn', ''),
(39, 11, '_menu_item_url', '#contacto'),
(40, 7, '_wp_trash_meta_status', 'publish'),
(41, 7, '_wp_trash_meta_time', '1579961207'),
(42, 1, '_edit_lock', '1579965751:1'),
(44, 13, '_edit_lock', '1580263253:1'),
(45, 13, '_wp_page_template', 'page-templates/cade-home.php'),
(46, 15, '_wp_trash_meta_status', 'publish'),
(47, 15, '_wp_trash_meta_time', '1580255274'),
(48, 17, '_wp_attached_file', '2020/01/logo_cade.png'),
(49, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2020/01/logo_cade.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_cade-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 19, '_edit_last', '1'),
(51, 19, '_edit_lock', '1580519086:1'),
(52, 20, '_wp_attached_file', '2020/01/img-proyectoscarousel.jpeg'),
(53, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:998;s:6:\"height\";i:398;s:4:\"file\";s:34:\"2020/01/img-proyectoscarousel.jpeg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"img-proyectoscarousel-300x120.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"img-proyectoscarousel-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"img-proyectoscarousel-768x306.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 19, '_thumbnail_id', '20'),
(55, 21, '_edit_last', '1'),
(56, 21, '_edit_lock', '1580347187:1'),
(57, 22, '_wp_attached_file', '2020/01/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg'),
(58, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1075;s:4:\"file\";s:73:\"2020/01/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:74:\"6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:73:\"6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:74:\"6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web-1536x806.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:806;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 21, '_thumbnail_id', '22'),
(60, 23, '_edit_lock', '1580353419:1'),
(61, 24, '_edit_lock', '1580353488:1'),
(62, 24, 'Destacado', 'true'),
(63, 24, '_edit_last', '1'),
(64, 24, 'Destacado', 'true'),
(65, 26, '_edit_last', '1'),
(66, 26, '_edit_lock', '1580518853:1'),
(67, 19, 'subtitulo', 'este es el subtitulo'),
(68, 19, '_subtitulo', 'field_5e324af1fb473'),
(69, 24, '_wp_trash_meta_status', 'draft'),
(70, 24, '_wp_trash_meta_time', '1580519005'),
(71, 24, '_wp_desired_post_slug', ''),
(72, 28, '_edit_last', '1'),
(73, 28, '_edit_lock', '1580527053:1'),
(74, 29, '_edit_last', '1'),
(75, 29, '_edit_lock', '1580527054:1'),
(76, 28, 'destacada', '0'),
(77, 28, '_destacada', 'field_5e34ec671b4d6'),
(78, 28, 'enlace_a_noticia', 'http://www.google.com'),
(79, 28, '_enlace_a_noticia', 'field_5e34d117183ab'),
(80, 28, 'enlace', 'http://www.google.com'),
(81, 28, '_enlace', 'field_5e34d117183ab'),
(82, 32, '_edit_last', '1'),
(83, 32, 'destacada', '0'),
(84, 32, '_destacada', 'field_5e34ec671b4d6'),
(85, 32, 'enlace', 'http://www.google.com'),
(86, 32, '_enlace', 'field_5e34d117183ab'),
(87, 32, '_edit_lock', '1580527052:1'),
(88, 33, '_edit_last', '1'),
(89, 33, 'destacada', '0'),
(90, 33, '_destacada', 'field_5e34ec671b4d6'),
(91, 33, 'enlace', 'http://www.google.com'),
(92, 33, '_enlace', 'field_5e34d117183ab'),
(93, 33, '_edit_lock', '1580527057:1'),
(94, 34, '_edit_last', '1'),
(95, 34, '_edit_lock', '1580526880:1'),
(96, 34, 'destacada', '0'),
(97, 34, '_destacada', 'field_5e34ec671b4d6'),
(98, 34, 'enlace', 'http://www.google.com'),
(99, 34, '_enlace', 'field_5e34d117183ab'),
(100, 34, 'pretitulo', 'Tecpetrol no quiso participar '),
(101, 34, '_pretitulo', 'field_5e34db830648d'),
(102, 37, '_edit_last', '1'),
(103, 37, 'pretitulo', ''),
(104, 37, '_pretitulo', 'field_5e34db830648d'),
(105, 37, 'enlace', 'http://www.google.com'),
(106, 37, '_enlace', 'field_5e34d117183ab'),
(107, 37, 'destacada', '1'),
(108, 37, '_destacada', 'field_5e34ec671b4d6'),
(109, 37, '_edit_lock', '1580582740:1'),
(110, 38, '_wp_attached_file', '2020/01/img-section5.jpeg'),
(111, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:737;s:6:\"height\";i:530;s:4:\"file\";s:25:\"2020/01/img-section5.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"img-section5-300x216.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"img-section5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 37, '_thumbnail_id', '38'),
(113, 33, 'pretitulo', ''),
(114, 33, '_pretitulo', 'field_5e34db830648d'),
(115, 32, 'pretitulo', ''),
(116, 32, '_pretitulo', 'field_5e34db830648d'),
(117, 28, 'pretitulo', ''),
(118, 28, '_pretitulo', 'field_5e34db830648d'),
(119, 42, '_edit_last', '1'),
(120, 42, '_edit_lock', '1580575126:1'),
(121, 42, 'pretitulo', ''),
(122, 42, '_pretitulo', 'field_5e34db830648d'),
(123, 42, 'enlace', 'http://www.google.com'),
(124, 42, '_enlace', 'field_5e34d117183ab'),
(125, 42, 'destacada', '0'),
(126, 42, '_destacada', 'field_5e34ec671b4d6'),
(127, 43, '_wp_attached_file', '2020/02/logo_cade.png'),
(128, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2020/02/logo_cade.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_cade-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 44, '_wp_attached_file', '2020/02/cropped-logo_cade.png'),
(130, 44, '_wp_attachment_context', 'custom-logo'),
(131, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:146;s:4:\"file\";s:29:\"2020/02/cropped-logo_cade.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-logo_cade-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 45, '_wp_trash_meta_status', 'publish'),
(133, 45, '_wp_trash_meta_time', '1580573906'),
(134, 47, '_edit_lock', '1580578962:1'),
(135, 47, '_customize_restore_dismissed', '1'),
(136, 48, '_wp_trash_meta_status', 'publish'),
(137, 48, '_wp_trash_meta_time', '1580579020'),
(138, 49, '_wp_trash_meta_status', 'publish'),
(139, 49, '_wp_trash_meta_time', '1580582772'),
(140, 50, '_wp_trash_meta_status', 'publish'),
(141, 50, '_wp_trash_meta_time', '1580582790');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-25 10:53:09', '2020-01-25 13:53:09', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2020-01-25 10:53:09', '2020-01-25 13:53:09', '', 0, 'http://localhost:8888/cade/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-25 10:53:09', '2020-01-25 13:53:09', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo, es diferente de una entrada porque se va a quedar en un solo lugar y va a aparecer en la navegación de tu sitio (en la mayoría de los temas). Muchas gente empieza con una página del tipo \"Sobre Mí\", que los introduce a los potenciales visitantes de su sitio. Podés decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"http://localhost:8888/cade/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2020-01-25 10:53:09', '2020-01-25 13:53:09', '', 0, 'http://localhost:8888/cade/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-25 10:53:09', '2020-01-25 13:53:09', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost:8888/cade.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tenés una cuenta e iniciás sesión en este sitio, estableceremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y es descartada al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido embebido desde otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Estadísticas</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo guardamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tenés sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Adónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>¿Qué procedimientos de violación de datos tenemos en marcha?</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quiénes (terceros) recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué toma de decisiones y/o perfiles automatizados se realizan con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos de divulgación regulatoria de la industria</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2020-01-25 10:53:09', '2020-01-25 13:53:09', '', 0, 'http://localhost:8888/cade/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-01-25 11:04:25', '2020-01-25 14:04:25', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:04:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '83397098-6fd5-49f5-b415-431dd9857a64', '', '', '2020-01-25 11:04:25', '2020-01-25 14:04:25', '', 0, 'http://localhost:8888/cade/2020/01/25/83397098-6fd5-49f5-b415-431dd9857a64/', 0, 'customize_changeset', '', 0),
(7, 1, '2020-01-25 11:06:47', '2020-01-25 14:06:47', '{\n    \"understrap::nav_menu_locations[primary]\": {\n        \"value\": -6086954165221712000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:05:47\"\n    },\n    \"nav_menu[-6086954165221712000]\": {\n        \"value\": {\n            \"name\": \"Main Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:05:47\"\n    },\n    \"nav_menu_item[-3025565070341421000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:05:47\"\n    },\n    \"nav_menu_item[-5986345494558517000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:05:47\"\n    },\n    \"nav_menu_item[-1088640670033172500]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Nosotros\",\n            \"url\": \"#nosotros\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nosotros\",\n            \"nav_menu_term_id\": -6086954165221712000,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:06:47\"\n    },\n    \"nav_menu_item[-7796784701446429000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Proyectos\",\n            \"url\": \"#proyectos\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Proyectos\",\n            \"nav_menu_term_id\": -6086954165221712000,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:06:47\"\n    },\n    \"nav_menu_item[-2801805816202074000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Noticias y Novedades\",\n            \"url\": \"#noticias\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Noticias y Novedades\",\n            \"nav_menu_term_id\": -6086954165221712000,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:06:47\"\n    },\n    \"nav_menu_item[-2678344216957331500]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Contacto\",\n            \"url\": \"#contacto\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contacto\",\n            \"nav_menu_term_id\": -6086954165221712000,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-25 14:06:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cabf9cf4-cc89-4b78-8856-4c14912592ca', '', '', '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 0, 'http://localhost:8888/cade/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 0, 'http://localhost:8888/cade/2020/01/25/nosotros/', 1, 'nav_menu_item', '', 0),
(9, 1, '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 'Proyectos', '', 'publish', 'closed', 'closed', '', 'proyectos', '', '', '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 0, 'http://localhost:8888/cade/2020/01/25/proyectos/', 2, 'nav_menu_item', '', 0),
(10, 1, '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 'Noticias y Novedades', '', 'publish', 'closed', 'closed', '', 'noticias-y-novedades', '', '', '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 0, 'http://localhost:8888/cade/2020/01/25/noticias-y-novedades/', 3, 'nav_menu_item', '', 0),
(11, 1, '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-01-25 11:06:47', '2020-01-25 14:06:47', '', 0, 'http://localhost:8888/cade/2020/01/25/contacto/', 4, 'nav_menu_item', '', 0),
(13, 1, '2020-01-25 13:08:27', '2020-01-25 16:08:27', '<!-- wp:paragraph -->\n<p>Esto es una pagina de ejemplo</p>\n<!-- /wp:paragraph -->', 'CADE HOME', '', 'publish', 'closed', 'closed', '', 'cade-home', '', '', '2020-01-25 13:08:27', '2020-01-25 16:08:27', '', 0, 'http://localhost:8888/cade/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-01-25 13:08:27', '2020-01-25 16:08:27', '<!-- wp:paragraph -->\n<p>Esto es una pagina de ejemplo</p>\n<!-- /wp:paragraph -->', 'CADE HOME', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-01-25 13:08:27', '2020-01-25 16:08:27', '', 13, 'http://localhost:8888/cade/2020/01/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-01-28 20:47:54', '2020-01-28 23:47:54', '{\n    \"cade::understrap_container_type\": {\n        \"value\": \"container-fluid\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-28 23:47:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b07f4d94-38d1-4e5b-9957-47e40a9ca613', '', '', '2020-01-28 20:47:54', '2020-01-28 23:47:54', '', 0, 'http://localhost:8888/cade/2020/01/28/b07f4d94-38d1-4e5b-9957-47e40a9ca613/', 0, 'customize_changeset', '', 0),
(16, 1, '2020-01-28 20:56:14', '2020-01-28 23:56:14', '<!-- wp:paragraph -->\n<p>Esto es una pagina de ejemplo</p>\n<!-- /wp:paragraph -->', 'CADE HOME', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2020-01-28 20:56:14', '2020-01-28 23:56:14', '', 13, 'http://localhost:8888/cade/2020/01/28/13-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2020-01-28 22:58:48', '2020-01-29 01:58:48', '', 'logo_cade', '', 'inherit', 'open', 'closed', '', 'logo_cade', '', '', '2020-01-28 22:58:48', '2020-01-29 01:58:48', '', 0, 'http://localhost:8888/cade/wp-content/uploads/2020/01/logo_cade.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-01-29 22:17:26', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-01-29 22:17:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cade/?post_type=proyecto&p=18', 0, 'proyecto', '', 0),
(19, 1, '2020-01-29 22:20:46', '2020-01-30 01:20:46', 'Contendio del proyecto 1\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Proyecto 1', '', 'publish', 'open', 'closed', '', 'proyecto-1', '', '', '2020-01-30 00:21:02', '2020-01-30 03:21:02', '', 0, 'http://localhost:8888/cade/?post_type=proyecto&#038;p=19', 0, 'proyecto', '', 0),
(20, 1, '2020-01-29 22:20:41', '2020-01-30 01:20:41', '', 'img-proyectoscarousel', '', 'inherit', 'open', 'closed', '', 'img-proyectoscarousel', '', '', '2020-01-29 22:20:41', '2020-01-30 01:20:41', '', 19, 'http://localhost:8888/cade/wp-content/uploads/2020/01/img-proyectoscarousel.jpeg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-01-29 22:22:06', '2020-01-30 01:22:06', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Proyecto 2', '', 'publish', 'open', 'closed', '', 'proyecto-2', '', '', '2020-01-29 22:22:06', '2020-01-30 01:22:06', '', 0, 'http://localhost:8888/cade/?post_type=proyecto&#038;p=21', 0, 'proyecto', '', 0),
(22, 1, '2020-01-29 22:22:01', '2020-01-30 01:22:01', '', '6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web', '', 'inherit', 'open', 'closed', '', '6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web', '', '', '2020-01-29 22:22:01', '2020-01-30 01:22:01', '', 21, 'http://localhost:8888/cade/wp-content/uploads/2020/01/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-01-30 00:05:16', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-30 00:05:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cade/?post_type=noticia&p=23', 0, 'noticia', '', 0),
(24, 1, '2020-01-31 22:03:25', '2020-02-01 01:03:25', '', 'Borrador creado el 30 January, 2020 a las 3:06 am', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-01-31 22:03:25', '2020-02-01 01:03:25', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=24', 0, 'noticia', '', 0),
(25, 1, '2020-01-30 00:07:14', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-01-30 00:07:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cade/?post_type=noticia&p=25', 0, 'noticia', '', 0),
(26, 1, '2020-01-30 00:16:25', '2020-01-30 03:16:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"proyecto\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:9:\"Subtitulo\";}', 'Proyecto Extra Info', 'proyecto-extra-info', 'publish', 'closed', 'closed', '', 'group_5e324a2782b67', '', '', '2020-01-31 21:15:50', '2020-02-01 00:15:50', '', 0, 'http://localhost:8888/cade/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2020-01-30 00:18:54', '2020-01-30 03:18:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_5e324af1fb473', '', '', '2020-01-31 21:15:50', '2020-02-01 00:15:50', '', 26, 'http://localhost:8888/cade/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2020-01-31 22:03:50', '2020-02-01 01:03:50', 'CADE, la Cámara Argentina de la Energía, comenzó a funcionar recientemente. Está formada por las petroleras más grandes del país.', 'Quiénes integran la nueva Cámara Energética', '', 'publish', 'open', 'closed', '', 'quienes-integran-la-nueva-camara-energetica', '', '', '2020-02-01 00:17:24', '2020-02-01 03:17:24', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=28', 0, 'noticia', '', 0),
(29, 1, '2020-01-31 22:15:27', '2020-02-01 01:15:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"noticia\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:6:{i:0;s:7:\"excerpt\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:4:\"slug\";i:5;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Noticias Extra Info', 'noticias-extra-info', 'publish', 'closed', 'closed', '', 'group_5e34d043b53b1', '', '', '2020-02-01 00:13:53', '2020-02-01 03:13:53', '', 0, 'http://localhost:8888/cade/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(31, 1, '2020-01-31 22:15:27', '2020-02-01 01:15:27', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Enlace a Noticia', 'enlace', 'publish', 'closed', 'closed', '', 'field_5e34d117183ab', '', '', '2020-01-31 23:00:24', '2020-02-01 02:00:24', '', 29, 'http://localhost:8888/cade/?post_type=acf-field&#038;p=31', 1, 'acf-field', '', 0),
(32, 1, '2020-01-31 22:54:45', '2020-02-01 01:54:45', 'CADE decidió promover una acción de amparo a fin de que se declare la inconstitucionalidad de los decretos de Necesidad y Urgencia.', 'La CADE presentó reclamo judicial contra el congelamiento de precios de Macri', '', 'publish', 'open', 'closed', '', 'la-cade-presento-reclamo-judicial-contra-el-congelamiento-de-precios-de-macri', '', '', '2020-02-01 00:17:19', '2020-02-01 03:17:19', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=32', 0, 'noticia', '', 0),
(33, 1, '2020-01-31 22:55:12', '2020-02-01 01:55:12', 'El presidente Mauricio Macri recibió en la residencia de Olivos a los directivos de las empresas fundadoras de CADE.', 'El presidente recibió a  directivos de la Cámara  Argentina de la Energía', '', 'publish', 'open', 'closed', '', 'el-presidente-recibio-a-directivos-de-la-camara-argentina-de-la-energia', '', '', '2020-02-01 00:17:15', '2020-02-01 03:17:15', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=33', 0, 'noticia', '', 0),
(34, 1, '2020-01-31 22:55:57', '2020-02-01 01:55:57', 'El CEO es Carlos Magariños, que estuvo en Brasil designado por Macri. Cuáles son las empresas socias.', 'Nace una poderosa cámara de petroleros: la dirige un exembajado', '', 'publish', 'open', 'closed', '', 'tecpetrol-no-quiso-participar-nace-una-poderosa-camara-de-petroleros-la-dirige-un-exembajado', '', '', '2020-02-01 00:17:00', '2020-02-01 03:17:00', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=34', 0, 'noticia', '', 0),
(35, 1, '2020-01-31 22:59:54', '2020-02-01 01:59:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Pretitulo', 'pretitulo', 'publish', 'closed', 'closed', '', 'field_5e34db830648d', '', '', '2020-01-31 23:00:08', '2020-02-01 02:00:08', '', 29, 'http://localhost:8888/cade/?post_type=acf-field&#038;p=35', 0, 'acf-field', '', 0),
(37, 1, '2020-01-31 23:26:20', '2020-02-01 02:26:20', 'Las principales empresas energéticas del país quieren formar una nueva cámara que las represente frente a las autoridades y otros sectores.', 'GRANDES OPERADORAS APUESTAN A CREAR UNA NUEVA CÁMARA EMPRESARIAL', '', 'publish', 'open', 'closed', '', 'grandes-operadoras-apuestan-a-crear-una-nueva-camara-empresarial', '', '', '2020-02-01 00:16:50', '2020-02-01 03:16:50', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=37', 0, 'noticia', '', 0),
(38, 1, '2020-01-31 23:50:20', '2020-02-01 02:50:20', '', 'img-section5', '', 'inherit', 'open', 'closed', '', 'img-section5', '', '', '2020-01-31 23:50:20', '2020-02-01 02:50:20', '', 37, 'http://localhost:8888/cade/wp-content/uploads/2020/01/img-section5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-02-01 00:11:57', '2020-02-01 03:11:57', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Destacada', 'destacada', 'publish', 'closed', 'closed', '', 'field_5e34ec671b4d6', '', '', '2020-02-01 00:13:53', '2020-02-01 03:13:53', '', 29, 'http://localhost:8888/cade/?post_type=acf-field&#038;p=39', 2, 'acf-field', '', 0),
(40, 1, '2020-02-01 00:16:33', '2020-02-01 03:16:33', 'Las principales empresas energéticas del país quieren formar una nueva cámara que las represente frente a las autoridades y otros sectores.', 'GRANDES OPERADORAS APUESTAN A CREAR UNA NUEVA CÁMARA EMPRESARIAL', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2020-02-01 00:16:33', '2020-02-01 03:16:33', '', 37, 'http://localhost:8888/cade/2020/02/01/37-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2020-02-01 00:17:11', '2020-02-01 03:17:11', 'El presidente Mauricio Macri recibió en la residencia de Olivos a los directivos de las empresas fundadoras de CADE.', 'El presidente recibió a  directivos de la Cámara  Argentina de la Energía', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2020-02-01 00:17:11', '2020-02-01 03:17:11', '', 33, 'http://localhost:8888/cade/2020/02/01/33-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2020-02-01 00:20:39', '2020-02-01 03:20:39', '<strong>En la noche de este jueves se difundió un audio en el que se escucha a Marcelo D\'Alessio, el falso abogado denunciado por espionaje ilegal, y menciona a la empresa Vicentín y el narcotráfico. Además, la relaciona con la diputada Elisa Carrió.</strong>', 'Noticia 5', '', 'publish', 'open', 'closed', '', 'noticia-5', '', '', '2020-02-01 00:20:39', '2020-02-01 03:20:39', '', 0, 'http://localhost:8888/cade/?post_type=noticia&#038;p=42', 0, 'noticia', '', 0),
(43, 1, '2020-02-01 13:17:43', '2020-02-01 16:17:43', '', 'logo_cade', '', 'inherit', 'open', 'closed', '', 'logo_cade-2', '', '', '2020-02-01 13:17:43', '2020-02-01 16:17:43', '', 0, 'http://localhost:8888/cade/wp-content/uploads/2020/02/logo_cade.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-02-01 13:17:58', '2020-02-01 16:17:58', 'http://localhost:8888/cade/wp-content/uploads/2020/02/cropped-logo_cade.png', 'cropped-logo_cade.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_cade-png', '', '', '2020-02-01 13:17:58', '2020-02-01 16:17:58', '', 0, 'http://localhost:8888/cade/wp-content/uploads/2020/02/cropped-logo_cade.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2020-02-01 13:18:26', '2020-02-01 16:18:26', '{\n    \"cade::custom_logo\": {\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 16:18:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95bcd2d9-ea07-41c2-81c0-b3aeda11e062', '', '', '2020-02-01 13:18:26', '2020-02-01 16:18:26', '', 0, 'http://localhost:8888/cade/2020/02/01/95bcd2d9-ea07-41c2-81c0-b3aeda11e062/', 0, 'customize_changeset', '', 0),
(46, 1, '2020-02-01 13:32:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-02-01 13:32:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cade/?post_type=acf-field-group&p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2020-02-01 14:41:10', '0000-00-00 00:00:00', '{\n    \"cade::starter_new_setting_name\": {\n        \"value\": \"http://www.facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 17:41:10\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1288fa32-7f38-401c-b79d-a6b434e02126', '', '', '2020-02-01 14:41:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/cade/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2020-02-01 14:43:40', '2020-02-01 17:43:40', '{\n    \"cade::facebook_setting_name\": {\n        \"value\": \"http://facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 17:43:40\"\n    },\n    \"cade::twitter_setting_name\": {\n        \"value\": \"http://twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 17:43:40\"\n    },\n    \"cade::instagram_setting_name\": {\n        \"value\": \"http://instagram.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 17:43:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c99f71b8-b5f4-44a6-8d04-3982d66ab3a6', '', '', '2020-02-01 14:43:40', '2020-02-01 17:43:40', '', 0, 'http://localhost:8888/cade/2020/02/01/c99f71b8-b5f4-44a6-8d04-3982d66ab3a6/', 0, 'customize_changeset', '', 0),
(49, 1, '2020-02-01 15:46:12', '2020-02-01 18:46:12', '{\n    \"cade::facebook_setting_name\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 18:46:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '746113ae-0d37-4efe-9455-00c760e20ba2', '', '', '2020-02-01 15:46:12', '2020-02-01 18:46:12', '', 0, 'http://localhost:8888/cade/2020/02/01/746113ae-0d37-4efe-9455-00c760e20ba2/', 0, 'customize_changeset', '', 0),
(50, 1, '2020-02-01 15:46:30', '2020-02-01 18:46:30', '{\n    \"cade::facebook_setting_name\": {\n        \"value\": \"http://facebook.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 18:46:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7679015f-b1f7-422b-b4b0-2c7fee5f1986', '', '', '2020-02-01 15:46:30', '2020-02-01 18:46:30', '', 0, 'http://localhost:8888/cade/2020/02/01/7679015f-b1f7-422b-b4b0-2c7fee5f1986/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'cade_admin'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"afa38fc708051c917cdeb345f12db2d397b7e9bb7dea02c0f6f4418422f92a5e\";a:4:{s:10:\"expiration\";i:1581170009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1579960409;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&genero_tab=pop'),
(19, 1, 'wp_user-settings-time', '1580519095'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'closedpostboxes_proyecto', 'a:0:{}'),
(22, 1, 'metaboxhidden_proyecto', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'enable_custom_fields', '1'),
(24, 1, 'closedpostboxes_noticia', 'a:0:{}'),
(25, 1, 'metaboxhidden_noticia', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'cade_admin', '$P$B7p1cKIqve2/GI7ip5N0M8wnz0Vnby.', 'cade_admin', 'ortega.david.ar@gmail.com', '', '2020-01-25 13:53:09', '', 0, 'cade_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
