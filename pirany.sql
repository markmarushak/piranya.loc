-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 19 2019 г., 15:47
-- Версия сервера: 5.6.41
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pirany`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-14 11:48:39', '2019-01-14 08:48:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://pirany.loc', 'yes'),
(2, 'home', 'http://pirany.loc', 'yes'),
(3, 'blogname', 'serf shop', 'yes'),
(4, 'blogdescription', 'best cool', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@mail.ru', 'yes'),
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
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:2;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shop-isle', 'yes'),
(41, 'stylesheet', 'shop-isle', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:14:{i:1547801656;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547807322;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547812446;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547823368;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1547824100;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547826520;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547826921;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1547844520;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547845200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547866446;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547887740;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547888046;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549324800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547460160;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1548060541', 'no'),
(125, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'can_compress_scripts', '1', 'no'),
(151, 'woocommerce_store_address', 'Харьков', 'yes'),
(152, 'woocommerce_store_address_2', '', 'yes'),
(153, 'woocommerce_store_city', 'Харьков', 'yes'),
(154, 'woocommerce_default_country', 'UA:*', 'yes'),
(155, 'woocommerce_store_postcode', '84108', 'yes'),
(156, 'woocommerce_allowed_countries', 'all', 'yes'),
(157, 'woocommerce_all_except_countries', '', 'yes'),
(158, 'woocommerce_specific_allowed_countries', '', 'yes'),
(159, 'woocommerce_ship_to_countries', '', 'yes'),
(160, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(161, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(162, 'woocommerce_calc_taxes', 'no', 'yes'),
(163, 'woocommerce_enable_coupons', 'yes', 'yes'),
(164, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(165, 'woocommerce_currency', 'UAH', 'yes'),
(166, 'woocommerce_currency_pos', 'left', 'yes'),
(167, 'woocommerce_price_thousand_sep', ',', 'yes'),
(168, 'woocommerce_price_decimal_sep', '.', 'yes'),
(169, 'woocommerce_price_num_decimals', '2', 'yes'),
(170, 'woocommerce_shop_page_id', '5', 'yes'),
(171, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(173, 'woocommerce_placeholder_image', '', 'yes'),
(174, 'woocommerce_weight_unit', 'kg', 'yes'),
(175, 'woocommerce_dimension_unit', 'cm', 'yes'),
(176, 'woocommerce_enable_reviews', 'yes', 'yes'),
(177, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(178, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(179, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(180, 'woocommerce_review_rating_required', 'yes', 'no'),
(181, 'woocommerce_manage_stock', 'yes', 'yes'),
(182, 'woocommerce_hold_stock_minutes', '60', 'no'),
(183, 'woocommerce_notify_low_stock', 'yes', 'no'),
(184, 'woocommerce_notify_no_stock', 'yes', 'no'),
(185, 'woocommerce_stock_email_recipient', 'test@mail.ru', 'no'),
(186, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(187, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(188, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(189, 'woocommerce_stock_format', '', 'yes'),
(190, 'woocommerce_file_download_method', 'force', 'no'),
(191, 'woocommerce_downloads_require_login', 'no', 'no'),
(192, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(193, 'woocommerce_prices_include_tax', 'no', 'yes'),
(194, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(195, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(196, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(197, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(198, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(199, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(200, 'woocommerce_price_display_suffix', '', 'yes'),
(201, 'woocommerce_tax_total_display', 'itemized', 'no'),
(202, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(203, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(204, 'woocommerce_ship_to_destination', 'billing', 'no'),
(205, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(206, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(207, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(208, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(209, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(210, 'woocommerce_registration_generate_username', 'yes', 'no'),
(211, 'woocommerce_registration_generate_password', 'yes', 'no'),
(212, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(213, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(214, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(215, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(216, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(217, 'woocommerce_trash_pending_orders', '', 'no'),
(218, 'woocommerce_trash_failed_orders', '', 'no'),
(219, 'woocommerce_trash_cancelled_orders', '', 'no'),
(220, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(221, 'woocommerce_email_from_name', 'pirany shop', 'no'),
(222, 'woocommerce_email_from_address', 'test@mail.ru', 'no'),
(223, 'woocommerce_email_header_image', '', 'no'),
(224, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(225, 'woocommerce_email_base_color', '#96588a', 'no'),
(226, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(227, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(228, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(229, 'woocommerce_cart_page_id', '6', 'yes'),
(230, 'woocommerce_checkout_page_id', '7', 'yes'),
(231, 'woocommerce_myaccount_page_id', '8', 'yes'),
(232, 'woocommerce_terms_page_id', '', 'no'),
(233, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(234, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(235, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(236, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(237, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(238, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(239, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(240, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(241, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(242, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(243, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(244, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(245, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(246, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(247, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(248, 'woocommerce_api_enabled', 'no', 'yes'),
(249, 'woocommerce_single_image_width', '600', 'yes'),
(250, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(251, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(252, 'woocommerce_demo_store', 'no', 'no'),
(253, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(254, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(255, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(258, 'default_product_cat', '15', 'yes'),
(261, 'woocommerce_version', '3.5.3', 'yes'),
(262, 'woocommerce_db_version', '3.5.3', 'yes'),
(263, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(264, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(265, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(280, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(282, '_transient_timeout_external_ip_address_127.0.0.1', '1548060852', 'no'),
(283, '_transient_external_ip_address_127.0.0.1', '46.172.69.126', 'no'),
(287, 'woocommerce_product_type', 'physical', 'yes'),
(288, 'woocommerce_allow_tracking', 'no', 'yes'),
(290, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(291, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(292, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(294, '_transient_shipping-transient-version', '1547456668', 'yes'),
(295, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"120\";}', 'yes'),
(296, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"120\";}', 'yes'),
(299, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(301, 'mailchimp_woocommerce_version', '2.1.11', 'no'),
(302, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(304, 'mailchimp-woocommerce-store_id', '5c3c50f766ff7', 'yes'),
(311, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(314, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(317, 'jetpack_activated', '1', 'yes'),
(320, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(321, '_transient_timeout_jetpack_file_data_6.9', '1549962501', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(322, '_transient_jetpack_file_data_6.9', 'a:60:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"933d4f6d290580156e0652ce850af1b2\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0b7b5e3ff80355a67c5485b0d00cd1a2\";a:15:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:36:\"Serve static assets from our servers\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:46:\"photon, image, cdn, performance, speed, assets\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:101:\"facebook, twitter, google+, googleplus, google, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(323, 'jetpack_available_modules', 'a:1:{s:3:\"6.9\";a:44:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(324, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"6.9:1547456901\";s:11:\"old_version\";s:14:\"6.9:1547456901\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:-9;}', 'yes'),
(325, 'jetpack_tos_agreed', '1', 'yes'),
(326, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"zcifQsuyCDFFb1V7cn5tn7o8XQynWaG7\";s:8:\"secret_2\";s:32:\"2MkQuztJz9XJ6mr6Pq5FvZNwKMM9foEi\";s:3:\"exp\";i:1547457501;}}', 'no'),
(327, 'jetpack_sync_settings_disable', '0', 'yes'),
(330, 'do_activate', '0', 'yes'),
(346, '_transient_timeout_wc_addons_sections', '1548062334', 'no'),
(347, '_transient_wc_addons_sections', 'a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:7:\"bundles\";s:5:\"label\";s:7:\"Bundles\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(348, '_transient_timeout_wc_addons_featured', '1548062334', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(349, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:147:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:5:\"Free!\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:146:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(377, 'woocommerce_thumbnail_cropping', 'custom', 'yes'),
(378, 'woocommerce_thumbnail_cropping_custom_width', '20', 'yes'),
(379, 'woocommerce_thumbnail_cropping_custom_height', '25', 'yes'),
(380, 'woocommerce_maybe_regenerate_images_hash', 'bf0ff040fa6c76af26f1ea86c69a9c17', 'yes'),
(381, 'shop_isle_update_woocommerce_customizer_controls', '1', 'yes'),
(382, 'shop_isle_wporg_flag', 'true', 'yes'),
(386, 'theme_mods_shop-isle', 'a:12:{s:18:\"custom_css_post_id\";i:-1;s:16:\"shop_isle_slider\";s:619:\"[{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide1.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5c3c5e1a050cb\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide2.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5c3c5e1a05126\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide3.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5c3c5e1a05141\"}]\";s:17:\"shop_isle_banners\";s:415:\"[{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner1.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5c3c5e1a07bbc\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner2.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5c3c5e1a07bca\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner3.jpg\",\"link\":\"#\",\"id\":\"shop_isle_5c3c5e1a07bd1\"}]\";s:22:\"shop_isle_team_members\";s:1050:\"[{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team1.jpg\",\"text\":\"Eva Bean\",\"subtext\":\"Developer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5c3c5e1a09fdf\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team2.jpg\",\"text\":\"Maria Woods\",\"subtext\":\"Designer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5c3c5e1a09fec\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team3.jpg\",\"text\":\"Booby Stone\",\"subtext\":\"Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5c3c5e1a09ff3\"},{\"image_url\":\"http:\\/\\/pirany.loc\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team4.jpg\",\"text\":\"Anna Neaga\",\"subtext\":\"Art Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5c3c5e1a09ffa\"}]\";s:20:\"shop_isle_advantages\";s:623:\"[{\"icon_value\":\"icon_lightbulb\",\"text\":\"Ideas and concepts\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5c3c5e1a0bd0c\"},{\"icon_value\":\"icon_tools\",\"text\":\"Designs & interfaces\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5c3c5e1a0bd1b\"},{\"icon_value\":\"icon_cogs\",\"text\":\"Highly customizable\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5c3c5e1a0bd23\"},{\"icon_value\":\"icon_like\",\"text\":\"Easy to use\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5c3c5e1a0bd2a\"}]\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:12:\"header_image\";s:73:\"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:95;s:3:\"url\";s:73:\"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\";s:13:\"thumbnail_url\";s:73:\"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\";s:6:\"height\";i:600;s:5:\"width\";i:1200;}s:27:\"shop_isle_blog_header_title\";s:15:\"serf production\";s:30:\"shop_isle_blog_header_subtitle\";s:25:\"free delivery internation\";}', 'yes'),
(387, 'shop_isle_migrate_translation', '1', 'yes'),
(391, 'shop_isle_section_order_migrate', 'yes', 'yes'),
(392, 'current_theme', 'Shop Isle', 'yes'),
(393, 'theme_switched', '', 'yes'),
(394, 'theme_switched_via_customizer', '', 'yes'),
(395, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(396, 'woocommerce_catalog_rows', '4', 'yes'),
(397, 'woocommerce_catalog_columns', '3', 'yes'),
(426, '_transient_product_query-transient-version', '1547723948', 'yes'),
(431, '_transient_product-transient-version', '1547461954', 'yes'),
(439, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(450, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(458, '_transient_timeout_wc_product_children_22', '1550054773', 'no'),
(459, '_transient_wc_product_children_22', 'a:2:{s:3:\"all\";a:2:{i:0;i:85;i:1;i:86;}s:7:\"visible\";a:2:{i:0;i:85;i:1;i:86;}}', 'no'),
(460, '_transient_timeout_wc_var_prices_22', '1550054773', 'no'),
(461, '_transient_wc_var_prices_22', '{\"version\":\"1547461954\",\"7f29b4ba2b07407eb33ed866e6025415\":{\"price\":{\"85\":\"20.00\",\"86\":\"20.00\"},\"regular_price\":{\"85\":\"20.00\",\"86\":\"20.00\"},\"sale_price\":{\"85\":\"20.00\",\"86\":\"20.00\"}}}', 'no'),
(462, '_transient_timeout_wc_product_children_23', '1550054773', 'no'),
(463, '_transient_wc_product_children_23', 'a:2:{s:3:\"all\";a:2:{i:0;i:72;i:1;i:73;}s:7:\"visible\";a:2:{i:0;i:72;i:1;i:73;}}', 'no'),
(464, '_transient_timeout_wc_var_prices_23', '1550054773', 'no'),
(465, '_transient_wc_var_prices_23', '{\"version\":\"1547461954\",\"7f29b4ba2b07407eb33ed866e6025415\":{\"price\":{\"72\":\"30.00\",\"73\":\"35.00\"},\"regular_price\":{\"72\":\"35.00\",\"73\":\"35.00\"},\"sale_price\":{\"72\":\"30.00\",\"73\":\"35.00\"}}}', 'no'),
(470, '_transient_timeout_wc_term_counts', '1550315921', 'no'),
(471, '_transient_wc_term_counts', 'a:10:{i:15;s:1:\"0\";i:19;s:1:\"4\";i:21;s:2:\"12\";i:22;s:1:\"6\";i:17;s:1:\"7\";i:20;s:1:\"5\";i:18;s:1:\"3\";i:23;s:1:\"6\";i:16;s:0:\"\";i:27;s:0:\"\";}', 'no'),
(473, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(486, '_transient_timeout_wc_low_stock_count', '1550057193', 'no'),
(487, '_transient_wc_low_stock_count', '0', 'no'),
(488, '_transient_timeout_wc_outofstock_count', '1550057193', 'no'),
(489, '_transient_wc_outofstock_count', '0', 'no'),
(699, 'product_cat_children', 'a:2:{i:17;a:2:{i:0;i:18;i:1;i:19;}i:21;a:2:{i:0;i:22;i:1;i:23;}}', 'yes'),
(762, 'jetpack_dismissed_connection_banner', '1', 'yes'),
(813, '_transient_timeout_wc_shipping_method_count_1_1547456668', '1550328893', 'no'),
(814, '_transient_wc_shipping_method_count_1_1547456668', '2', 'no'),
(818, '_transient_is_multi_author', '0', 'yes'),
(825, '_site_transient_timeout_theme_roots', '1547825126', 'no'),
(826, '_site_transient_theme_roots', 'a:4:{s:9:\"shop-isle\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(828, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1547823329;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(829, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1547823330;s:7:\"checked\";a:4:{s:9:\"shop-isle\";s:6:\"1.1.51\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(830, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1547823331;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:19:\"jetpack/jetpack.php\";s:3:\"6.9\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.11\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.3\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:5:\"1.2.0\";}s:8:\"response\";a:1:{s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/woo-gutenberg-products-block\";s:4:\"slug\";s:28:\"woo-gutenberg-products-block\";s:6:\"plugin\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/woo-gutenberg-products-block/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/woo-gutenberg-products-block.1.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-256x256.png?rev=1863757\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-128x128.png?rev=1863757\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-772x250.png?rev=1863757\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2019-01-14 18:46:01\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"6.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.6.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.11\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(832, '_transient_timeout_jetpack_idc_allowed', '1547826933', 'no'),
(833, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wp_trash_meta_status', 'publish'),
(4, 9, '_wp_trash_meta_time', '1547460160'),
(5, 10, '_wc_review_count', '0'),
(6, 10, '_wc_rating_count', 'a:0:{}'),
(7, 10, '_wc_average_rating', '0'),
(10, 12, '_sku', 'WOO-SINGLE-1'),
(11, 12, '_regular_price', '3'),
(12, 12, '_sale_price', ''),
(13, 12, '_sale_price_dates_from', ''),
(14, 12, '_sale_price_dates_to', ''),
(15, 12, 'total_sales', '0'),
(16, 12, '_tax_status', 'taxable'),
(17, 12, '_tax_class', ''),
(18, 12, '_manage_stock', 'no'),
(19, 12, '_backorders', 'no'),
(20, 12, '_low_stock_amount', ''),
(21, 12, '_sold_individually', 'no'),
(22, 12, '_weight', ''),
(23, 12, '_length', ''),
(24, 12, '_width', ''),
(25, 12, '_height', ''),
(26, 12, '_upsell_ids', 'a:0:{}'),
(27, 12, '_crosssell_ids', 'a:0:{}'),
(28, 12, '_purchase_note', ''),
(29, 12, '_default_attributes', 'a:0:{}'),
(30, 12, '_virtual', 'yes'),
(31, 12, '_downloadable', 'yes'),
(32, 12, '_product_image_gallery', '31'),
(33, 12, '_download_limit', '-1'),
(34, 12, '_download_expiry', '-1'),
(35, 12, '_stock', NULL),
(36, 12, '_stock_status', 'instock'),
(37, 12, '_wc_average_rating', '0'),
(38, 12, '_wc_rating_count', 'a:0:{}'),
(39, 12, '_wc_review_count', '0'),
(40, 12, '_downloadable_files', 'a:1:{s:36:\"960e55d8-95f5-4d95-a1db-ba51474a8123\";a:3:{s:2:\"id\";s:36:\"960e55d8-95f5-4d95-a1db-ba51474a8123\";s:4:\"name\";s:7:\"Song #1\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-1.ogg\";}}'),
(41, 12, '_product_attributes', 'a:0:{}'),
(42, 12, '_product_version', '3.5.3'),
(43, 12, '_price', '3'),
(44, 13, '_sku', 'WOO-SINGLE-2'),
(45, 13, '_regular_price', '3'),
(46, 13, '_sale_price', '2'),
(47, 13, '_sale_price_dates_from', ''),
(48, 13, '_sale_price_dates_to', ''),
(49, 13, 'total_sales', '0'),
(50, 13, '_tax_status', 'taxable'),
(51, 13, '_tax_class', ''),
(52, 13, '_manage_stock', 'no'),
(53, 13, '_backorders', 'no'),
(54, 13, '_low_stock_amount', ''),
(55, 13, '_sold_individually', 'no'),
(56, 13, '_weight', ''),
(57, 13, '_length', ''),
(58, 13, '_width', ''),
(59, 13, '_height', ''),
(60, 13, '_upsell_ids', 'a:0:{}'),
(61, 13, '_crosssell_ids', 'a:0:{}'),
(62, 13, '_purchase_note', ''),
(63, 13, '_default_attributes', 'a:0:{}'),
(64, 13, '_virtual', 'yes'),
(65, 13, '_downloadable', 'yes'),
(66, 13, '_product_image_gallery', '29'),
(67, 13, '_download_limit', '10'),
(68, 13, '_download_expiry', '90'),
(69, 13, '_stock', NULL),
(70, 13, '_stock_status', 'instock'),
(71, 13, '_wc_average_rating', '0'),
(72, 13, '_wc_rating_count', 'a:0:{}'),
(73, 13, '_wc_review_count', '0'),
(74, 13, '_downloadable_files', 'a:1:{s:36:\"3b1ce3f0-0b3f-4ce9-9349-f0b2a4b69708\";a:3:{s:2:\"id\";s:36:\"3b1ce3f0-0b3f-4ce9-9349-f0b2a4b69708\";s:4:\"name\";s:7:\"Song #2\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-2.ogg\";}}'),
(75, 13, '_product_attributes', 'a:0:{}'),
(76, 13, '_product_version', '3.5.3'),
(77, 13, '_price', '2'),
(78, 14, '_sku', 'WOO-ALBUM-1'),
(79, 14, '_regular_price', '9'),
(80, 14, '_sale_price', ''),
(81, 14, '_sale_price_dates_from', ''),
(82, 14, '_sale_price_dates_to', ''),
(83, 14, 'total_sales', '0'),
(84, 14, '_tax_status', 'taxable'),
(85, 14, '_tax_class', ''),
(86, 14, '_manage_stock', 'no'),
(87, 14, '_backorders', 'no'),
(88, 14, '_low_stock_amount', ''),
(89, 14, '_sold_individually', 'no'),
(90, 14, '_weight', ''),
(91, 14, '_length', ''),
(92, 14, '_width', ''),
(93, 14, '_height', ''),
(94, 14, '_upsell_ids', 'a:0:{}'),
(95, 14, '_crosssell_ids', 'a:0:{}'),
(96, 14, '_purchase_note', ''),
(97, 14, '_default_attributes', 'a:0:{}'),
(98, 14, '_virtual', 'yes'),
(99, 14, '_downloadable', 'no'),
(100, 14, '_product_image_gallery', '41'),
(101, 14, '_download_limit', '0'),
(102, 14, '_download_expiry', '0'),
(103, 14, '_stock', NULL),
(104, 14, '_stock_status', 'instock'),
(105, 14, '_wc_average_rating', '0'),
(106, 14, '_wc_rating_count', 'a:0:{}'),
(107, 14, '_wc_review_count', '0'),
(108, 14, '_downloadable_files', 'a:0:{}'),
(109, 14, '_product_attributes', 'a:0:{}'),
(110, 14, '_product_version', '3.5.3'),
(111, 14, '_price', '9'),
(112, 15, '_sku', 'WOO-ALBUM-2'),
(113, 15, '_regular_price', '9'),
(114, 15, '_sale_price', ''),
(115, 15, '_sale_price_dates_from', ''),
(116, 15, '_sale_price_dates_to', ''),
(117, 15, 'total_sales', '0'),
(118, 15, '_tax_status', 'taxable'),
(119, 15, '_tax_class', ''),
(120, 15, '_manage_stock', 'no'),
(121, 15, '_backorders', 'no'),
(122, 15, '_low_stock_amount', ''),
(123, 15, '_sold_individually', 'no'),
(124, 15, '_weight', ''),
(125, 15, '_length', ''),
(126, 15, '_width', ''),
(127, 15, '_height', ''),
(128, 15, '_upsell_ids', 'a:0:{}'),
(129, 15, '_crosssell_ids', 'a:0:{}'),
(130, 15, '_purchase_note', ''),
(131, 15, '_default_attributes', 'a:0:{}'),
(132, 15, '_virtual', 'yes'),
(133, 15, '_downloadable', 'no'),
(134, 15, '_product_image_gallery', '39'),
(135, 15, '_download_limit', '0'),
(136, 15, '_download_expiry', '0'),
(137, 15, '_stock', NULL),
(138, 15, '_stock_status', 'instock'),
(139, 15, '_wc_average_rating', '0'),
(140, 15, '_wc_rating_count', 'a:0:{}'),
(141, 15, '_wc_review_count', '0'),
(142, 15, '_downloadable_files', 'a:0:{}'),
(143, 15, '_product_attributes', 'a:0:{}'),
(144, 15, '_product_version', '3.5.3'),
(145, 15, '_price', '9'),
(146, 16, '_sku', 'WOO-ALBUM-3'),
(147, 16, '_regular_price', '9'),
(148, 16, '_sale_price', ''),
(149, 16, '_sale_price_dates_from', ''),
(150, 16, '_sale_price_dates_to', ''),
(151, 16, 'total_sales', '0'),
(152, 16, '_tax_status', 'taxable'),
(153, 16, '_tax_class', ''),
(154, 16, '_manage_stock', 'no'),
(155, 16, '_backorders', 'no'),
(156, 16, '_low_stock_amount', ''),
(157, 16, '_sold_individually', 'no'),
(158, 16, '_weight', ''),
(159, 16, '_length', ''),
(160, 16, '_width', ''),
(161, 16, '_height', ''),
(162, 16, '_upsell_ids', 'a:0:{}'),
(163, 16, '_crosssell_ids', 'a:0:{}'),
(164, 16, '_purchase_note', ''),
(165, 16, '_default_attributes', 'a:0:{}'),
(166, 16, '_virtual', 'yes'),
(167, 16, '_downloadable', 'no'),
(168, 16, '_product_image_gallery', '37'),
(169, 16, '_download_limit', '0'),
(170, 16, '_download_expiry', '0'),
(171, 16, '_stock', NULL),
(172, 16, '_stock_status', 'instock'),
(173, 16, '_wc_average_rating', '0'),
(174, 16, '_wc_rating_count', 'a:0:{}'),
(175, 16, '_wc_review_count', '0'),
(176, 16, '_downloadable_files', 'a:0:{}'),
(177, 16, '_product_attributes', 'a:0:{}'),
(178, 16, '_product_version', '3.5.3'),
(179, 16, '_price', '9'),
(180, 17, '_sku', 'T-SHIRT-WOO-LOGO'),
(181, 17, '_regular_price', '20'),
(182, 17, '_sale_price', '18'),
(183, 17, '_sale_price_dates_from', ''),
(184, 17, '_sale_price_dates_to', ''),
(185, 17, 'total_sales', '0'),
(186, 17, '_tax_status', 'taxable'),
(187, 17, '_tax_class', ''),
(188, 17, '_manage_stock', 'yes'),
(189, 17, '_backorders', 'no'),
(190, 17, '_low_stock_amount', ''),
(191, 17, '_sold_individually', 'no'),
(192, 17, '_weight', ''),
(193, 17, '_length', ''),
(194, 17, '_width', ''),
(195, 17, '_height', ''),
(196, 17, '_upsell_ids', 'a:1:{i:0;i:18;}'),
(197, 17, '_crosssell_ids', 'a:0:{}'),
(198, 17, '_purchase_note', ''),
(199, 17, '_default_attributes', 'a:0:{}'),
(200, 17, '_virtual', 'no'),
(201, 17, '_downloadable', 'no'),
(202, 17, '_product_image_gallery', '90'),
(203, 17, '_download_limit', '0'),
(204, 17, '_download_expiry', '0'),
(205, 17, '_stock', '5'),
(206, 17, '_stock_status', 'instock'),
(207, 17, '_wc_average_rating', '0'),
(208, 17, '_wc_rating_count', 'a:0:{}'),
(209, 17, '_wc_review_count', '0'),
(210, 17, '_downloadable_files', 'a:0:{}'),
(211, 17, '_product_attributes', 'a:0:{}'),
(212, 17, '_product_version', '3.5.3'),
(213, 17, '_price', '18'),
(214, 18, '_sku', 'HOODIE-WOO-LOGO'),
(215, 18, '_regular_price', '35'),
(216, 18, '_sale_price', ''),
(217, 18, '_sale_price_dates_from', ''),
(218, 18, '_sale_price_dates_to', ''),
(219, 18, 'total_sales', '0'),
(220, 18, '_tax_status', 'taxable'),
(221, 18, '_tax_class', ''),
(222, 18, '_manage_stock', 'no'),
(223, 18, '_backorders', 'no'),
(224, 18, '_low_stock_amount', ''),
(225, 18, '_sold_individually', 'no'),
(226, 18, '_weight', ''),
(227, 18, '_length', ''),
(228, 18, '_width', ''),
(229, 18, '_height', ''),
(230, 18, '_upsell_ids', 'a:0:{}'),
(231, 18, '_crosssell_ids', 'a:1:{i:0;i:17;}'),
(232, 18, '_purchase_note', ''),
(233, 18, '_default_attributes', 'a:0:{}'),
(234, 18, '_virtual', 'no'),
(235, 18, '_downloadable', 'no'),
(236, 18, '_product_image_gallery', '58'),
(237, 18, '_download_limit', '0'),
(238, 18, '_download_expiry', '0'),
(239, 18, '_stock', NULL),
(240, 18, '_stock_status', 'instock'),
(241, 18, '_wc_average_rating', '0'),
(242, 18, '_wc_rating_count', 'a:0:{}'),
(243, 18, '_wc_review_count', '0'),
(244, 18, '_downloadable_files', 'a:0:{}'),
(245, 18, '_product_attributes', 'a:0:{}'),
(246, 18, '_product_version', '3.5.3'),
(247, 18, '_price', '35'),
(248, 19, '_sku', 'T-SHIRT-WOO-NINJA'),
(249, 19, '_regular_price', '20'),
(250, 19, '_sale_price', ''),
(251, 19, '_sale_price_dates_from', ''),
(252, 19, '_sale_price_dates_to', ''),
(253, 19, 'total_sales', '0'),
(254, 19, '_tax_status', 'taxable'),
(255, 19, '_tax_class', ''),
(256, 19, '_manage_stock', 'no'),
(257, 19, '_backorders', 'no'),
(258, 19, '_low_stock_amount', ''),
(259, 19, '_sold_individually', 'no'),
(260, 19, '_weight', ''),
(261, 19, '_length', ''),
(262, 19, '_width', ''),
(263, 19, '_height', ''),
(264, 19, '_upsell_ids', 'a:1:{i:0;i:20;}'),
(265, 19, '_crosssell_ids', 'a:2:{i:0;i:25;i:1;i:24;}'),
(266, 19, '_purchase_note', ''),
(267, 19, '_default_attributes', 'a:0:{}'),
(268, 19, '_virtual', 'no'),
(269, 19, '_downloadable', 'no'),
(270, 19, '_product_image_gallery', '77'),
(271, 19, '_download_limit', '0'),
(272, 19, '_download_expiry', '0'),
(273, 19, '_stock', NULL),
(274, 19, '_stock_status', 'instock'),
(275, 19, '_wc_average_rating', '0'),
(276, 19, '_wc_rating_count', 'a:0:{}'),
(277, 19, '_wc_review_count', '0'),
(278, 19, '_downloadable_files', 'a:0:{}'),
(279, 19, '_product_attributes', 'a:0:{}'),
(280, 19, '_product_version', '3.5.3'),
(281, 19, '_price', '20'),
(282, 20, '_sku', 'HOODIE-WOO-NINJA'),
(283, 20, '_regular_price', '35'),
(284, 20, '_sale_price', ''),
(285, 20, '_sale_price_dates_from', ''),
(286, 20, '_sale_price_dates_to', ''),
(287, 20, 'total_sales', '0'),
(288, 20, '_tax_status', 'taxable'),
(289, 20, '_tax_class', ''),
(290, 20, '_manage_stock', 'no'),
(291, 20, '_backorders', 'no'),
(292, 20, '_low_stock_amount', ''),
(293, 20, '_sold_individually', 'no'),
(294, 20, '_weight', ''),
(295, 20, '_length', ''),
(296, 20, '_width', ''),
(297, 20, '_height', ''),
(298, 20, '_upsell_ids', 'a:0:{}'),
(299, 20, '_crosssell_ids', 'a:1:{i:0;i:19;}'),
(300, 20, '_purchase_note', ''),
(301, 20, '_default_attributes', 'a:0:{}'),
(302, 20, '_virtual', 'no'),
(303, 20, '_downloadable', 'no'),
(304, 20, '_product_image_gallery', '67'),
(305, 20, '_download_limit', '0'),
(306, 20, '_download_expiry', '0'),
(307, 20, '_stock', NULL),
(308, 20, '_stock_status', 'instock'),
(309, 20, '_wc_average_rating', '0'),
(310, 20, '_wc_rating_count', 'a:0:{}'),
(311, 20, '_wc_review_count', '0'),
(312, 20, '_downloadable_files', 'a:0:{}'),
(313, 20, '_product_attributes', 'a:0:{}'),
(314, 20, '_product_version', '3.5.3'),
(315, 20, '_price', '35'),
(316, 21, '_sku', 'T-SHIRT-PREMIUM-QUALITY'),
(317, 21, '_regular_price', '20'),
(318, 21, '_sale_price', ''),
(319, 21, '_sale_price_dates_from', ''),
(320, 21, '_sale_price_dates_to', ''),
(321, 21, 'total_sales', '0'),
(322, 21, '_tax_status', 'taxable'),
(323, 21, '_tax_class', ''),
(324, 21, '_manage_stock', 'no'),
(325, 21, '_backorders', 'no'),
(326, 21, '_low_stock_amount', ''),
(327, 21, '_sold_individually', 'no'),
(328, 21, '_weight', ''),
(329, 21, '_length', ''),
(330, 21, '_width', ''),
(331, 21, '_height', ''),
(332, 21, '_upsell_ids', 'a:0:{}'),
(333, 21, '_crosssell_ids', 'a:0:{}'),
(334, 21, '_purchase_note', ''),
(335, 21, '_default_attributes', 'a:0:{}'),
(336, 21, '_virtual', 'no'),
(337, 21, '_downloadable', 'no'),
(338, 21, '_product_image_gallery', '88'),
(339, 21, '_download_limit', '0'),
(340, 21, '_download_expiry', '0'),
(341, 21, '_stock', NULL),
(342, 21, '_stock_status', 'instock'),
(343, 21, '_wc_average_rating', '0'),
(344, 21, '_wc_rating_count', 'a:0:{}'),
(345, 21, '_wc_review_count', '0'),
(346, 21, '_downloadable_files', 'a:0:{}'),
(347, 21, '_product_attributes', 'a:0:{}'),
(348, 21, '_product_version', '3.5.3'),
(349, 21, '_price', '20'),
(350, 22, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA'),
(353, 22, '_sale_price_dates_from', ''),
(354, 22, '_sale_price_dates_to', ''),
(355, 22, 'total_sales', '0'),
(356, 22, '_tax_status', 'taxable'),
(357, 22, '_tax_class', ''),
(358, 22, '_manage_stock', 'no'),
(359, 22, '_backorders', 'no'),
(360, 22, '_low_stock_amount', ''),
(361, 22, '_sold_individually', 'no'),
(362, 22, '_weight', ''),
(363, 22, '_length', ''),
(364, 22, '_width', ''),
(365, 22, '_height', ''),
(366, 22, '_upsell_ids', 'a:1:{i:0;i:23;}'),
(367, 22, '_crosssell_ids', 'a:0:{}'),
(368, 22, '_purchase_note', ''),
(369, 22, '_default_attributes', 'a:0:{}'),
(370, 22, '_virtual', 'no'),
(371, 22, '_downloadable', 'no'),
(372, 22, '_product_image_gallery', '81,82,83,84'),
(373, 22, '_download_limit', '0'),
(374, 22, '_download_expiry', '0'),
(375, 22, '_stock', NULL),
(376, 22, '_stock_status', 'instock'),
(377, 22, '_wc_average_rating', '0'),
(378, 22, '_wc_rating_count', 'a:0:{}'),
(379, 22, '_wc_review_count', '0'),
(380, 22, '_downloadable_files', 'a:0:{}'),
(381, 22, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(382, 22, '_product_version', '3.5.3'),
(384, 23, '_sku', 'HOODIE-SHIP-YOUR-IDEA'),
(387, 23, '_sale_price_dates_from', ''),
(388, 23, '_sale_price_dates_to', ''),
(389, 23, 'total_sales', '0'),
(390, 23, '_tax_status', 'taxable'),
(391, 23, '_tax_class', ''),
(392, 23, '_manage_stock', 'no'),
(393, 23, '_backorders', 'no'),
(394, 23, '_low_stock_amount', ''),
(395, 23, '_sold_individually', 'no'),
(396, 23, '_weight', ''),
(397, 23, '_length', ''),
(398, 23, '_width', ''),
(399, 23, '_height', ''),
(400, 23, '_upsell_ids', 'a:0:{}'),
(401, 23, '_crosssell_ids', 'a:1:{i:0;i:22;}'),
(402, 23, '_purchase_note', ''),
(403, 23, '_default_attributes', 'a:2:{s:8:\"pa_color\";s:5:\"black\";s:4:\"size\";s:1:\"L\";}'),
(404, 23, '_virtual', 'no'),
(405, 23, '_downloadable', 'no'),
(406, 23, '_product_image_gallery', '69,70,71'),
(407, 23, '_download_limit', '0'),
(408, 23, '_download_expiry', '0'),
(409, 23, '_stock', NULL),
(410, 23, '_stock_status', 'instock'),
(411, 23, '_wc_average_rating', '0'),
(412, 23, '_wc_rating_count', 'a:0:{}'),
(413, 23, '_wc_review_count', '0'),
(414, 23, '_downloadable_files', 'a:0:{}'),
(415, 23, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:6:\"L | XL\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(416, 23, '_product_version', '3.5.3'),
(418, 24, '_sku', 'T-SHIRT-NINJA-SILHOUETTE'),
(419, 24, '_regular_price', '20'),
(420, 24, '_sale_price', ''),
(421, 24, '_sale_price_dates_from', ''),
(422, 24, '_sale_price_dates_to', ''),
(423, 24, 'total_sales', '0'),
(424, 24, '_tax_status', 'taxable'),
(425, 24, '_tax_class', ''),
(426, 24, '_manage_stock', 'no'),
(427, 24, '_backorders', 'no'),
(428, 24, '_low_stock_amount', ''),
(429, 24, '_sold_individually', 'no'),
(430, 24, '_weight', ''),
(431, 24, '_length', ''),
(432, 24, '_width', ''),
(433, 24, '_height', ''),
(434, 24, '_upsell_ids', 'a:1:{i:0;i:27;}'),
(435, 24, '_crosssell_ids', 'a:2:{i:0;i:19;i:1;i:25;}'),
(436, 24, '_purchase_note', ''),
(437, 24, '_default_attributes', 'a:0:{}'),
(438, 24, '_virtual', 'no'),
(439, 24, '_downloadable', 'no'),
(440, 24, '_product_image_gallery', '79'),
(441, 24, '_download_limit', '0'),
(442, 24, '_download_expiry', '0'),
(443, 24, '_stock', NULL),
(444, 24, '_stock_status', 'instock'),
(445, 24, '_wc_average_rating', '0'),
(446, 24, '_wc_rating_count', 'a:0:{}'),
(447, 24, '_wc_review_count', '0'),
(448, 24, '_downloadable_files', 'a:0:{}'),
(449, 24, '_product_attributes', 'a:0:{}'),
(450, 24, '_product_version', '3.5.3'),
(451, 24, '_price', '20'),
(452, 25, '_sku', 'T-SHIRT-HAPPY-NINJA'),
(453, 25, '_regular_price', '18'),
(454, 25, '_sale_price', ''),
(455, 25, '_sale_price_dates_from', ''),
(456, 25, '_sale_price_dates_to', ''),
(457, 25, 'total_sales', '0'),
(458, 25, '_tax_status', 'taxable'),
(459, 25, '_tax_class', ''),
(460, 25, '_manage_stock', 'no'),
(461, 25, '_backorders', 'no'),
(462, 25, '_low_stock_amount', ''),
(463, 25, '_sold_individually', 'no'),
(464, 25, '_weight', ''),
(465, 25, '_length', ''),
(466, 25, '_width', ''),
(467, 25, '_height', ''),
(468, 25, '_upsell_ids', 'a:1:{i:0;i:26;}'),
(469, 25, '_crosssell_ids', 'a:2:{i:0;i:19;i:1;i:24;}'),
(470, 25, '_purchase_note', ''),
(471, 25, '_default_attributes', 'a:0:{}'),
(472, 25, '_virtual', 'no'),
(473, 25, '_downloadable', 'no'),
(474, 25, '_product_image_gallery', '75'),
(475, 25, '_download_limit', '0'),
(476, 25, '_download_expiry', '0'),
(477, 25, '_stock', NULL),
(478, 25, '_stock_status', 'instock'),
(479, 25, '_wc_average_rating', '0'),
(480, 25, '_wc_rating_count', 'a:0:{}'),
(481, 25, '_wc_review_count', '0'),
(482, 25, '_downloadable_files', 'a:0:{}'),
(483, 25, '_product_attributes', 'a:0:{}'),
(484, 25, '_product_version', '3.5.3'),
(485, 25, '_price', '18'),
(486, 26, '_sku', 'HOODIE-HAPPY-NINJA'),
(487, 26, '_regular_price', '35'),
(488, 26, '_sale_price', ''),
(489, 26, '_sale_price_dates_from', ''),
(490, 26, '_sale_price_dates_to', ''),
(491, 26, 'total_sales', '0'),
(492, 26, '_tax_status', 'taxable'),
(493, 26, '_tax_class', ''),
(494, 26, '_manage_stock', 'no'),
(495, 26, '_backorders', 'no'),
(496, 26, '_low_stock_amount', ''),
(497, 26, '_sold_individually', 'no'),
(498, 26, '_weight', ''),
(499, 26, '_length', ''),
(500, 26, '_width', ''),
(501, 26, '_height', ''),
(502, 26, '_upsell_ids', 'a:0:{}'),
(503, 26, '_crosssell_ids', 'a:1:{i:0;i:25;}'),
(504, 26, '_purchase_note', ''),
(505, 26, '_default_attributes', 'a:0:{}'),
(506, 26, '_virtual', 'no'),
(507, 26, '_downloadable', 'no'),
(508, 26, '_product_image_gallery', '62'),
(509, 26, '_download_limit', '0'),
(510, 26, '_download_expiry', '0'),
(511, 26, '_stock', NULL),
(512, 26, '_stock_status', 'instock'),
(513, 26, '_wc_average_rating', '0'),
(514, 26, '_wc_rating_count', 'a:0:{}'),
(515, 26, '_wc_review_count', '0'),
(516, 26, '_downloadable_files', 'a:0:{}'),
(517, 26, '_product_attributes', 'a:0:{}'),
(518, 26, '_product_version', '3.5.3'),
(519, 26, '_price', '35'),
(520, 27, '_sku', 'HOODIE-NINJA-SILHOUETTE'),
(521, 27, '_regular_price', '30'),
(522, 27, '_sale_price', ''),
(523, 27, '_sale_price_dates_from', ''),
(524, 27, '_sale_price_dates_to', ''),
(525, 27, 'total_sales', '0'),
(526, 27, '_tax_status', 'taxable'),
(527, 27, '_tax_class', ''),
(528, 27, '_manage_stock', 'no'),
(529, 27, '_backorders', 'no'),
(530, 27, '_low_stock_amount', ''),
(531, 27, '_sold_individually', 'no'),
(532, 27, '_weight', ''),
(533, 27, '_length', ''),
(534, 27, '_width', ''),
(535, 27, '_height', ''),
(536, 27, '_upsell_ids', 'a:0:{}'),
(537, 27, '_crosssell_ids', 'a:1:{i:0;i:24;}'),
(538, 27, '_purchase_note', ''),
(539, 27, '_default_attributes', 'a:0:{}'),
(540, 27, '_virtual', 'no'),
(541, 27, '_downloadable', 'no'),
(542, 27, '_product_image_gallery', '60'),
(543, 27, '_download_limit', '0'),
(544, 27, '_download_expiry', '0'),
(545, 27, '_stock', NULL),
(546, 27, '_stock_status', 'instock'),
(547, 27, '_wc_average_rating', '0'),
(548, 27, '_wc_rating_count', 'a:0:{}'),
(549, 27, '_wc_review_count', '0'),
(550, 27, '_downloadable_files', 'a:0:{}'),
(551, 27, '_product_attributes', 'a:0:{}'),
(552, 27, '_product_version', '3.5.3'),
(553, 27, '_price', '30'),
(554, 28, '_wp_attached_file', '2019/01/cd_6_angle.jpg'),
(555, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_6_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_6_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_6_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 28, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_angle.jpg'),
(557, 29, '_wp_attached_file', '2019/01/cd_6_flat.jpg'),
(558, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_6_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_6_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_6_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(559, 29, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_flat.jpg'),
(560, 13, '_wp_old_slug', 'import-placeholder-for-woo-single-2'),
(561, 13, '_thumbnail_id', '28'),
(562, 30, '_wp_attached_file', '2019/01/cd_4_angle.jpg'),
(563, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_4_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_4_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_4_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(564, 30, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg'),
(565, 31, '_wp_attached_file', '2019/01/cd_4_flat.jpg'),
(566, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_4_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_4_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_4_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 31, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_flat.jpg'),
(568, 12, '_wp_old_slug', 'import-placeholder-for-woo-single-1'),
(569, 12, '_thumbnail_id', '30'),
(570, 32, '_children', 'a:2:{i:0;i:12;i:1;i:13;}'),
(571, 32, '_sku', 'WOO-SINGLES'),
(574, 32, '_sale_price_dates_from', ''),
(575, 32, '_sale_price_dates_to', ''),
(576, 32, 'total_sales', '0'),
(577, 32, '_tax_status', 'taxable'),
(578, 32, '_tax_class', ''),
(579, 32, '_manage_stock', 'no'),
(580, 32, '_backorders', 'no'),
(581, 32, '_low_stock_amount', ''),
(582, 32, '_sold_individually', 'no'),
(583, 32, '_weight', ''),
(584, 32, '_length', ''),
(585, 32, '_width', ''),
(586, 32, '_height', ''),
(587, 32, '_upsell_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(588, 32, '_crosssell_ids', 'a:1:{i:0;i:16;}'),
(589, 32, '_purchase_note', ''),
(590, 32, '_default_attributes', 'a:0:{}'),
(591, 32, '_virtual', 'no'),
(592, 32, '_downloadable', 'no'),
(593, 32, '_product_image_gallery', ''),
(594, 32, '_download_limit', '0'),
(595, 32, '_download_expiry', '0'),
(596, 32, '_thumbnail_id', '29'),
(597, 32, '_stock', NULL),
(598, 32, '_stock_status', 'instock'),
(599, 32, '_wc_average_rating', '0'),
(600, 32, '_wc_rating_count', 'a:0:{}'),
(601, 32, '_wc_review_count', '0'),
(602, 32, '_downloadable_files', 'a:0:{}'),
(603, 32, '_product_attributes', 'a:0:{}'),
(604, 32, '_product_version', '3.5.3'),
(605, 32, '_price', '2'),
(606, 32, '_price', '3'),
(607, 33, '_wp_attached_file', '2019/01/cd_5_angle.jpg'),
(608, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_5_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_5_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_5_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 33, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_angle.jpg'),
(610, 34, '_wp_attached_file', '2019/01/cd_5_flat.jpg'),
(611, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_5_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_5_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_5_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(612, 34, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_flat.jpg'),
(613, 35, '_sku', 'WOO-ALBUM-4'),
(614, 35, '_regular_price', '9'),
(615, 35, '_sale_price', ''),
(616, 35, '_sale_price_dates_from', ''),
(617, 35, '_sale_price_dates_to', ''),
(618, 35, 'total_sales', '0'),
(619, 35, '_tax_status', 'taxable'),
(620, 35, '_tax_class', ''),
(621, 35, '_manage_stock', 'no'),
(622, 35, '_backorders', 'no'),
(623, 35, '_low_stock_amount', ''),
(624, 35, '_sold_individually', 'no'),
(625, 35, '_weight', ''),
(626, 35, '_length', ''),
(627, 35, '_width', ''),
(628, 35, '_height', ''),
(629, 35, '_upsell_ids', 'a:0:{}'),
(630, 35, '_crosssell_ids', 'a:0:{}'),
(631, 35, '_purchase_note', ''),
(632, 35, '_default_attributes', 'a:0:{}'),
(633, 35, '_virtual', 'yes'),
(634, 35, '_downloadable', 'no'),
(635, 35, '_product_image_gallery', '34'),
(636, 35, '_download_limit', '0'),
(637, 35, '_download_expiry', '0'),
(638, 35, '_thumbnail_id', '33'),
(639, 35, '_stock', NULL),
(640, 35, '_stock_status', 'instock'),
(641, 35, '_wc_average_rating', '0'),
(642, 35, '_wc_rating_count', 'a:0:{}'),
(643, 35, '_wc_review_count', '0'),
(644, 35, '_downloadable_files', 'a:0:{}'),
(645, 35, '_product_attributes', 'a:0:{}'),
(646, 35, '_product_version', '3.5.3'),
(647, 35, '_price', '9'),
(648, 36, '_wp_attached_file', '2019/01/cd_3_angle.jpg'),
(649, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_3_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_3_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_3_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 36, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg'),
(651, 37, '_wp_attached_file', '2019/01/cd_3_flat.jpg'),
(652, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_3_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_3_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_3_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 37, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_flat.jpg'),
(654, 16, '_wp_old_slug', 'import-placeholder-for-woo-album-3'),
(655, 16, '_thumbnail_id', '36'),
(656, 38, '_wp_attached_file', '2019/01/cd_2_angle.jpg'),
(657, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_2_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_2_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_2_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(658, 38, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_angle.jpg'),
(659, 39, '_wp_attached_file', '2019/01/cd_2_flat.jpg'),
(660, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_2_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_2_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_2_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(661, 39, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_flat.jpg'),
(662, 15, '_wp_old_slug', 'import-placeholder-for-woo-album-2'),
(663, 15, '_thumbnail_id', '38'),
(664, 40, '_wp_attached_file', '2019/01/cd_1_angle.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(665, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/cd_1_angle.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"cd_1_angle-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_1_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 40, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_angle.jpg'),
(667, 41, '_wp_attached_file', '2019/01/cd_1_flat.jpg'),
(668, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/cd_1_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"cd_1_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_1_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 41, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_flat.jpg'),
(670, 14, '_wp_old_slug', 'import-placeholder-for-woo-album-1'),
(671, 14, '_thumbnail_id', '40'),
(672, 42, '_wp_attached_file', '2019/01/poster_5_up.jpg'),
(673, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/01/poster_5_up.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_5_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_5_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:23:\"poster_5_up-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"poster_5_up-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"poster_5_up-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_5_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_5_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_5_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_5_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(674, 42, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_5_up.jpg'),
(675, 43, '_wp_attached_file', '2019/01/Poster_5_flat.jpg'),
(676, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/Poster_5_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"Poster_5_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_5_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(677, 43, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_5_flat.jpg'),
(678, 44, '_sku', 'POSTER-WOO-LOGO'),
(679, 44, '_regular_price', '15'),
(680, 44, '_sale_price', ''),
(681, 44, '_sale_price_dates_from', ''),
(682, 44, '_sale_price_dates_to', ''),
(683, 44, 'total_sales', '0'),
(684, 44, '_tax_status', 'taxable'),
(685, 44, '_tax_class', ''),
(686, 44, '_manage_stock', 'no'),
(687, 44, '_backorders', 'no'),
(688, 44, '_low_stock_amount', ''),
(689, 44, '_sold_individually', 'no'),
(690, 44, '_weight', ''),
(691, 44, '_length', ''),
(692, 44, '_width', ''),
(693, 44, '_height', ''),
(694, 44, '_upsell_ids', 'a:0:{}'),
(695, 44, '_crosssell_ids', 'a:2:{i:0;i:17;i:1;i:18;}'),
(696, 44, '_purchase_note', ''),
(697, 44, '_default_attributes', 'a:0:{}'),
(698, 44, '_virtual', 'no'),
(699, 44, '_downloadable', 'no'),
(700, 44, '_product_image_gallery', '43'),
(701, 44, '_download_limit', '0'),
(702, 44, '_download_expiry', '0'),
(703, 44, '_thumbnail_id', '42'),
(704, 44, '_stock', NULL),
(705, 44, '_stock_status', 'instock'),
(706, 44, '_wc_average_rating', '0'),
(707, 44, '_wc_rating_count', 'a:0:{}'),
(708, 44, '_wc_review_count', '0'),
(709, 44, '_downloadable_files', 'a:0:{}'),
(710, 44, '_product_attributes', 'a:0:{}'),
(711, 44, '_product_version', '3.5.3'),
(712, 44, '_price', '15'),
(713, 45, '_wp_attached_file', '2019/01/poster_4_up.jpg'),
(714, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/01/poster_4_up.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_4_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_4_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:23:\"poster_4_up-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"poster_4_up-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"poster_4_up-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_4_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_4_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_4_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_4_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(715, 45, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_4_up.jpg'),
(716, 46, '_wp_attached_file', '2019/01/Poster_4_flat.jpg'),
(717, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/Poster_4_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"Poster_4_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_4_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 46, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_4_flat.jpg'),
(719, 47, '_sku', 'POSTER-WOO-NINJA'),
(720, 47, '_regular_price', '15'),
(721, 47, '_sale_price', ''),
(722, 47, '_sale_price_dates_from', ''),
(723, 47, '_sale_price_dates_to', ''),
(724, 47, 'total_sales', '0'),
(725, 47, '_tax_status', 'taxable'),
(726, 47, '_tax_class', ''),
(727, 47, '_manage_stock', 'no'),
(728, 47, '_backorders', 'no'),
(729, 47, '_low_stock_amount', ''),
(730, 47, '_sold_individually', 'no'),
(731, 47, '_weight', ''),
(732, 47, '_length', ''),
(733, 47, '_width', ''),
(734, 47, '_height', ''),
(735, 47, '_upsell_ids', 'a:0:{}'),
(736, 47, '_crosssell_ids', 'a:2:{i:0;i:19;i:1;i:20;}'),
(737, 47, '_purchase_note', ''),
(738, 47, '_default_attributes', 'a:0:{}'),
(739, 47, '_virtual', 'no'),
(740, 47, '_downloadable', 'no'),
(741, 47, '_product_image_gallery', '46'),
(742, 47, '_download_limit', '0'),
(743, 47, '_download_expiry', '0'),
(744, 47, '_thumbnail_id', '45'),
(745, 47, '_stock', NULL),
(746, 47, '_stock_status', 'instock'),
(747, 47, '_wc_average_rating', '0'),
(748, 47, '_wc_rating_count', 'a:0:{}'),
(749, 47, '_wc_review_count', '0'),
(750, 47, '_downloadable_files', 'a:0:{}'),
(751, 47, '_product_attributes', 'a:0:{}'),
(752, 47, '_product_version', '3.5.3'),
(753, 47, '_price', '15'),
(754, 48, '_wp_attached_file', '2019/01/poster_3_up.jpg'),
(755, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/01/poster_3_up.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_3_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_3_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:23:\"poster_3_up-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"poster_3_up-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"poster_3_up-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_3_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_3_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_3_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_3_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(756, 48, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_3_up.jpg'),
(757, 49, '_wp_attached_file', '2019/01/Poster_3_flat.jpg'),
(758, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/Poster_3_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"Poster_3_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_3_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(759, 49, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_3_flat.jpg'),
(760, 50, '_sku', 'POSTER-PREMIUM-QUALITY'),
(761, 50, '_regular_price', '15'),
(762, 50, '_sale_price', '12'),
(763, 50, '_sale_price_dates_from', ''),
(764, 50, '_sale_price_dates_to', ''),
(765, 50, 'total_sales', '0'),
(766, 50, '_tax_status', 'taxable'),
(767, 50, '_tax_class', ''),
(768, 50, '_manage_stock', 'no'),
(769, 50, '_backorders', 'no'),
(770, 50, '_low_stock_amount', ''),
(771, 50, '_sold_individually', 'no'),
(772, 50, '_weight', ''),
(773, 50, '_length', ''),
(774, 50, '_width', ''),
(775, 50, '_height', ''),
(776, 50, '_upsell_ids', 'a:1:{i:0;i:21;}'),
(777, 50, '_crosssell_ids', 'a:0:{}'),
(778, 50, '_purchase_note', ''),
(779, 50, '_default_attributes', 'a:0:{}'),
(780, 50, '_virtual', 'no'),
(781, 50, '_downloadable', 'no'),
(782, 50, '_product_image_gallery', '49'),
(783, 50, '_download_limit', '0'),
(784, 50, '_download_expiry', '0'),
(785, 50, '_thumbnail_id', '48'),
(786, 50, '_stock', NULL),
(787, 50, '_stock_status', 'instock'),
(788, 50, '_wc_average_rating', '0'),
(789, 50, '_wc_rating_count', 'a:0:{}'),
(790, 50, '_wc_review_count', '0'),
(791, 50, '_downloadable_files', 'a:0:{}'),
(792, 50, '_product_attributes', 'a:0:{}'),
(793, 50, '_product_version', '3.5.3'),
(794, 50, '_price', '12'),
(795, 51, '_wp_attached_file', '2019/01/poster_2_up.jpg'),
(796, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/01/poster_2_up.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_2_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_2_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:23:\"poster_2_up-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"poster_2_up-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"poster_2_up-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_2_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_2_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_2_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_2_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(797, 51, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_2_up.jpg'),
(798, 52, '_wp_attached_file', '2019/01/Poster_2_flat.jpg'),
(799, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/Poster_2_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"Poster_2_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_2_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(800, 52, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_2_flat.jpg'),
(801, 53, '_sku', 'POSTER-FLYING-NINJA'),
(802, 53, '_regular_price', '15'),
(803, 53, '_sale_price', '12'),
(804, 53, '_sale_price_dates_from', ''),
(805, 53, '_sale_price_dates_to', ''),
(806, 53, 'total_sales', '0'),
(807, 53, '_tax_status', 'taxable'),
(808, 53, '_tax_class', ''),
(809, 53, '_manage_stock', 'no'),
(810, 53, '_backorders', 'no'),
(811, 53, '_low_stock_amount', ''),
(812, 53, '_sold_individually', 'no'),
(813, 53, '_weight', ''),
(814, 53, '_length', ''),
(815, 53, '_width', ''),
(816, 53, '_height', ''),
(817, 53, '_upsell_ids', 'a:0:{}'),
(818, 53, '_crosssell_ids', 'a:0:{}'),
(819, 53, '_purchase_note', ''),
(820, 53, '_default_attributes', 'a:0:{}'),
(821, 53, '_virtual', 'no'),
(822, 53, '_downloadable', 'no'),
(823, 53, '_product_image_gallery', '52'),
(824, 53, '_download_limit', '0'),
(825, 53, '_download_expiry', '0'),
(826, 53, '_thumbnail_id', '51'),
(827, 53, '_stock', NULL),
(828, 53, '_stock_status', 'instock'),
(829, 53, '_wc_average_rating', '0'),
(830, 53, '_wc_rating_count', 'a:0:{}'),
(831, 53, '_wc_review_count', '0'),
(832, 53, '_downloadable_files', 'a:0:{}'),
(833, 53, '_product_attributes', 'a:0:{}'),
(834, 53, '_product_version', '3.5.3'),
(835, 53, '_price', '12'),
(836, 54, '_wp_attached_file', '2019/01/poster_1_up.jpg'),
(837, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/01/poster_1_up.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_1_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_1_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:23:\"poster_1_up-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"poster_1_up-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"poster_1_up-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_1_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_1_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_1_up-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_1_up-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(838, 54, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_1_up.jpg'),
(839, 55, '_wp_attached_file', '2019/01/Poster_1_flat.jpg'),
(840, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/Poster_1_flat.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"Poster_1_flat-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_1_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(841, 55, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_1_flat.jpg'),
(842, 56, '_sku', 'POSTER-SHIP-YOUR-IDEA'),
(843, 56, '_regular_price', '15'),
(844, 56, '_sale_price', ''),
(845, 56, '_sale_price_dates_from', ''),
(846, 56, '_sale_price_dates_to', ''),
(847, 56, 'total_sales', '0'),
(848, 56, '_tax_status', 'taxable'),
(849, 56, '_tax_class', ''),
(850, 56, '_manage_stock', 'no'),
(851, 56, '_backorders', 'no'),
(852, 56, '_low_stock_amount', ''),
(853, 56, '_sold_individually', 'no'),
(854, 56, '_weight', ''),
(855, 56, '_length', ''),
(856, 56, '_width', ''),
(857, 56, '_height', ''),
(858, 56, '_upsell_ids', 'a:2:{i:0;i:22;i:1;i:23;}'),
(859, 56, '_crosssell_ids', 'a:2:{i:0;i:22;i:1;i:23;}'),
(860, 56, '_purchase_note', ''),
(861, 56, '_default_attributes', 'a:0:{}'),
(862, 56, '_virtual', 'no'),
(863, 56, '_downloadable', 'no'),
(864, 56, '_product_image_gallery', '55'),
(865, 56, '_download_limit', '0'),
(866, 56, '_download_expiry', '0'),
(867, 56, '_thumbnail_id', '54'),
(868, 56, '_stock', NULL),
(869, 56, '_stock_status', 'instock'),
(870, 56, '_wc_average_rating', '0'),
(871, 56, '_wc_rating_count', 'a:0:{}'),
(872, 56, '_wc_review_count', '0'),
(873, 56, '_downloadable_files', 'a:0:{}'),
(874, 56, '_product_attributes', 'a:0:{}'),
(875, 56, '_product_version', '3.5.3'),
(876, 56, '_price', '15'),
(877, 57, '_wp_attached_file', '2019/01/hoodie_6_front.jpg'),
(878, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_6_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_6_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(879, 57, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_front.jpg'),
(880, 58, '_wp_attached_file', '2019/01/hoodie_6_back.jpg'),
(881, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_6_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_6_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(882, 58, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_back.jpg'),
(883, 18, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-logo'),
(884, 18, '_thumbnail_id', '57'),
(885, 59, '_wp_attached_file', '2019/01/hoodie_5_front.jpg'),
(886, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_5_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_5_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_5_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(887, 59, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_front.jpg'),
(888, 60, '_wp_attached_file', '2019/01/hoodie_5_back.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(889, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_5_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_5_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_5_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(890, 60, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_back.jpg'),
(891, 27, '_wp_old_slug', 'import-placeholder-for-hoodie-ninja-silhouette'),
(892, 27, '_thumbnail_id', '59'),
(893, 27, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-logo-black-zip-hoodie/'),
(894, 27, '_button_text', 'Buy on WordPress Swag Store'),
(895, 61, '_wp_attached_file', '2019/01/hoodie_4_front.jpg'),
(896, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_4_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_4_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_4_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(897, 61, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_front.jpg'),
(898, 62, '_wp_attached_file', '2019/01/hoodie_4_back.jpg'),
(899, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_4_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_4_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(900, 62, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_back.jpg'),
(901, 26, '_wp_old_slug', 'import-placeholder-for-hoodie-happy-ninja'),
(902, 26, '_thumbnail_id', '61'),
(903, 63, '_wp_attached_file', '2019/01/hoodie_3_front.jpg'),
(904, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_3_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_3_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(905, 63, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_front.jpg'),
(906, 64, '_wp_attached_file', '2019/01/hoodie_3_back.jpg'),
(907, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_3_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_3_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(908, 64, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_back.jpg'),
(909, 65, '_sku', 'HOODIE-PATIENT-NINJA'),
(910, 65, '_regular_price', '35'),
(911, 65, '_sale_price', ''),
(912, 65, '_sale_price_dates_from', ''),
(913, 65, '_sale_price_dates_to', ''),
(914, 65, 'total_sales', '0'),
(915, 65, '_tax_status', 'taxable'),
(916, 65, '_tax_class', ''),
(917, 65, '_manage_stock', 'no'),
(918, 65, '_backorders', 'no'),
(919, 65, '_low_stock_amount', ''),
(920, 65, '_sold_individually', 'no'),
(921, 65, '_weight', ''),
(922, 65, '_length', ''),
(923, 65, '_width', ''),
(924, 65, '_height', ''),
(925, 65, '_upsell_ids', 'a:0:{}'),
(926, 65, '_crosssell_ids', 'a:1:{i:0;i:26;}'),
(927, 65, '_purchase_note', ''),
(928, 65, '_default_attributes', 'a:0:{}'),
(929, 65, '_virtual', 'no'),
(930, 65, '_downloadable', 'no'),
(931, 65, '_product_image_gallery', '64'),
(932, 65, '_download_limit', '0'),
(933, 65, '_download_expiry', '0'),
(934, 65, '_thumbnail_id', '63'),
(935, 65, '_stock', NULL),
(936, 65, '_stock_status', 'instock'),
(937, 65, '_wc_average_rating', '0'),
(938, 65, '_wc_rating_count', 'a:0:{}'),
(939, 65, '_wc_review_count', '0'),
(940, 65, '_downloadable_files', 'a:0:{}'),
(941, 65, '_product_attributes', 'a:0:{}'),
(942, 65, '_product_version', '3.5.3'),
(943, 65, '_price', '35'),
(944, 66, '_wp_attached_file', '2019/01/hoodie_2_front.jpg'),
(945, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_2_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_2_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_2_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(946, 66, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_front.jpg'),
(947, 67, '_wp_attached_file', '2019/01/hoodie_2_back.jpg'),
(948, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_2_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_2_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_2_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(949, 67, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_back.jpg'),
(950, 20, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-ninja'),
(951, 20, '_thumbnail_id', '66'),
(952, 68, '_wp_attached_file', '2019/01/hoodie_7_front.jpg'),
(953, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_7_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_7_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_7_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 68, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_front.jpg'),
(955, 69, '_wp_attached_file', '2019/01/hoodie_7_back.jpg'),
(956, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_7_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_7_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_7_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(957, 69, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_back.jpg'),
(958, 70, '_wp_attached_file', '2019/01/hoodie_1_back.jpg'),
(959, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/01/hoodie_1_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:23:\"hoodie_1_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_1_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(960, 70, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_back.jpg'),
(961, 71, '_wp_attached_file', '2019/01/hoodie_1_front.jpg'),
(962, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2019/01/hoodie_1_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"hoodie_1_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_1_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(963, 71, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_front.jpg'),
(964, 23, '_wp_old_slug', 'import-placeholder-for-hoodie-ship-your-idea'),
(965, 23, '_thumbnail_id', '68'),
(966, 72, '_variation_description', ''),
(967, 72, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLUE-XL'),
(968, 72, '_regular_price', '35'),
(969, 72, '_sale_price', '30'),
(970, 72, '_sale_price_dates_from', ''),
(971, 72, '_sale_price_dates_to', ''),
(972, 72, 'total_sales', '0'),
(973, 72, '_tax_status', 'taxable'),
(974, 72, '_tax_class', ''),
(975, 72, '_manage_stock', 'no'),
(976, 72, '_backorders', 'no'),
(977, 72, '_low_stock_amount', ''),
(978, 72, '_sold_individually', 'no'),
(979, 72, '_weight', ''),
(980, 72, '_length', ''),
(981, 72, '_width', ''),
(982, 72, '_height', ''),
(983, 72, '_upsell_ids', 'a:0:{}'),
(984, 72, '_crosssell_ids', 'a:1:{i:0;i:22;}'),
(985, 72, '_purchase_note', ''),
(986, 72, '_default_attributes', 'a:0:{}'),
(987, 72, '_virtual', 'no'),
(988, 72, '_downloadable', 'no'),
(989, 72, '_product_image_gallery', ''),
(990, 72, '_download_limit', '0'),
(991, 72, '_download_expiry', '0'),
(992, 72, '_thumbnail_id', '71'),
(993, 72, '_stock', NULL),
(994, 72, '_stock_status', 'instock'),
(995, 72, '_wc_average_rating', '0'),
(996, 72, '_wc_rating_count', 'a:0:{}'),
(997, 72, '_wc_review_count', '0'),
(998, 72, '_downloadable_files', 'a:0:{}'),
(999, 72, 'attribute_pa_color', 'blue'),
(1000, 72, 'attribute_size', 'XL'),
(1001, 72, '_price', '30'),
(1002, 72, '_product_version', '3.5.3'),
(1003, 73, '_variation_description', ''),
(1004, 73, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLACK-L'),
(1005, 73, '_regular_price', '35'),
(1006, 73, '_sale_price', ''),
(1007, 73, '_sale_price_dates_from', ''),
(1008, 73, '_sale_price_dates_to', ''),
(1009, 73, 'total_sales', '0'),
(1010, 73, '_tax_status', 'taxable'),
(1011, 73, '_tax_class', ''),
(1012, 73, '_manage_stock', 'no'),
(1013, 73, '_backorders', 'no'),
(1014, 73, '_low_stock_amount', ''),
(1015, 73, '_sold_individually', 'no'),
(1016, 73, '_weight', ''),
(1017, 73, '_length', ''),
(1018, 73, '_width', ''),
(1019, 73, '_height', ''),
(1020, 73, '_upsell_ids', 'a:0:{}'),
(1021, 73, '_crosssell_ids', 'a:1:{i:0;i:22;}'),
(1022, 73, '_purchase_note', ''),
(1023, 73, '_default_attributes', 'a:0:{}'),
(1024, 73, '_virtual', 'no'),
(1025, 73, '_downloadable', 'no'),
(1026, 73, '_product_image_gallery', ''),
(1027, 73, '_download_limit', '0'),
(1028, 73, '_download_expiry', '0'),
(1029, 73, '_thumbnail_id', '68'),
(1030, 73, '_stock', NULL),
(1031, 73, '_stock_status', 'instock'),
(1032, 73, '_wc_average_rating', '0'),
(1033, 73, '_wc_rating_count', 'a:0:{}'),
(1034, 73, '_wc_review_count', '0'),
(1035, 73, '_downloadable_files', 'a:0:{}'),
(1036, 73, 'attribute_pa_color', 'black'),
(1037, 73, 'attribute_size', 'L'),
(1038, 73, '_price', '35'),
(1039, 73, '_product_version', '3.5.3'),
(1040, 74, '_wp_attached_file', '2019/01/T_7_front.jpg'),
(1041, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_7_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_7_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_7_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_7_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_7_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_7_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_7_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_7_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1042, 74, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_front.jpg'),
(1043, 75, '_wp_attached_file', '2019/01/T_7_back.jpg'),
(1044, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_7_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_7_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_7_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_7_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_7_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_7_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_7_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_7_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 75, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_back.jpg'),
(1046, 25, '_wp_old_slug', 'import-placeholder-for-t-shirt-happy-ninja'),
(1047, 25, '_thumbnail_id', '74'),
(1048, 76, '_wp_attached_file', '2019/01/T_6_front.jpg'),
(1049, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_6_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_6_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_6_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_6_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_6_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_6_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1050, 76, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_front.jpg'),
(1051, 77, '_wp_attached_file', '2019/01/T_6_back.jpg'),
(1052, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_6_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_6_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_6_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_6_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_6_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_6_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1053, 77, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_back.jpg'),
(1054, 19, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-ninja'),
(1055, 19, '_thumbnail_id', '76'),
(1056, 23, '_price', '30'),
(1057, 23, '_price', '35'),
(1058, 23, '_regular_price', ''),
(1059, 23, '_sale_price', ''),
(1060, 78, '_wp_attached_file', '2019/01/T_5_front.jpg'),
(1061, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_5_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_5_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_5_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_5_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_5_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_5_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_5_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_5_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1062, 78, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_front.jpg'),
(1063, 79, '_wp_attached_file', '2019/01/T_5_back.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1064, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_5_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_5_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_5_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_5_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_5_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_5_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_5_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_5_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1065, 79, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_back.jpg'),
(1066, 24, '_wp_old_slug', 'import-placeholder-for-t-shirt-ninja-silhouette'),
(1067, 24, '_thumbnail_id', '78'),
(1068, 80, '_wp_attached_file', '2019/01/T_4_front.jpg'),
(1069, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_4_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_4_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_4_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_4_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_4_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_4_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_4_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_4_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1070, 80, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg'),
(1071, 81, '_wp_attached_file', '2019/01/T_3_back.jpg'),
(1072, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_3_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_3_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_3_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_3_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_3_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1073, 81, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg'),
(1074, 82, '_wp_attached_file', '2019/01/T_3_front.jpg'),
(1075, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_3_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_3_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_3_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_3_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_3_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1076, 82, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg'),
(1077, 83, '_wp_attached_file', '2019/01/T_4_back.jpg'),
(1078, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_4_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_4_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_4_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_4_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_4_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1079, 83, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg'),
(1080, 84, '_wp_attached_file', '2019/01/T_4_front1.jpg'),
(1081, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/01/T_4_front1.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"T_4_front1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:22:\"T_4_front1-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:22:\"T_4_front1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:20:\"T_4_front1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"T_4_front1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"T_4_front1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1082, 84, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front1.jpg'),
(1083, 22, '_wp_old_slug', 'import-placeholder-for-t-shirt-ship-your-idea'),
(1084, 22, '_thumbnail_id', '80'),
(1085, 85, '_variation_description', ''),
(1086, 85, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-GREEN'),
(1087, 85, '_regular_price', '20'),
(1088, 85, '_sale_price', ''),
(1089, 85, '_sale_price_dates_from', ''),
(1090, 85, '_sale_price_dates_to', ''),
(1091, 85, 'total_sales', '0'),
(1092, 85, '_tax_status', 'taxable'),
(1093, 85, '_tax_class', ''),
(1094, 85, '_manage_stock', 'no'),
(1095, 85, '_backorders', 'no'),
(1096, 85, '_low_stock_amount', ''),
(1097, 85, '_sold_individually', 'no'),
(1098, 85, '_weight', ''),
(1099, 85, '_length', ''),
(1100, 85, '_width', ''),
(1101, 85, '_height', ''),
(1102, 85, '_upsell_ids', 'a:0:{}'),
(1103, 85, '_crosssell_ids', 'a:0:{}'),
(1104, 85, '_purchase_note', ''),
(1105, 85, '_default_attributes', 'a:0:{}'),
(1106, 85, '_virtual', 'no'),
(1107, 85, '_downloadable', 'no'),
(1108, 85, '_product_image_gallery', ''),
(1109, 85, '_download_limit', '0'),
(1110, 85, '_download_expiry', '0'),
(1111, 85, '_thumbnail_id', '82'),
(1112, 85, '_stock', NULL),
(1113, 85, '_stock_status', 'instock'),
(1114, 85, '_wc_average_rating', '0'),
(1115, 85, '_wc_rating_count', 'a:0:{}'),
(1116, 85, '_wc_review_count', '0'),
(1117, 85, '_downloadable_files', 'a:0:{}'),
(1118, 85, 'attribute_pa_color', 'green'),
(1119, 85, '_price', '20'),
(1120, 85, '_product_version', '3.5.3'),
(1121, 86, '_variation_description', ''),
(1122, 86, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-BLACK'),
(1123, 86, '_regular_price', '20'),
(1124, 86, '_sale_price', ''),
(1125, 86, '_sale_price_dates_from', ''),
(1126, 86, '_sale_price_dates_to', ''),
(1127, 86, 'total_sales', '0'),
(1128, 86, '_tax_status', 'taxable'),
(1129, 86, '_tax_class', ''),
(1130, 86, '_manage_stock', 'no'),
(1131, 86, '_backorders', 'no'),
(1132, 86, '_low_stock_amount', ''),
(1133, 86, '_sold_individually', 'no'),
(1134, 86, '_weight', ''),
(1135, 86, '_length', ''),
(1136, 86, '_width', ''),
(1137, 86, '_height', ''),
(1138, 86, '_upsell_ids', 'a:0:{}'),
(1139, 86, '_crosssell_ids', 'a:0:{}'),
(1140, 86, '_purchase_note', ''),
(1141, 86, '_default_attributes', 'a:0:{}'),
(1142, 86, '_virtual', 'no'),
(1143, 86, '_downloadable', 'no'),
(1144, 86, '_product_image_gallery', ''),
(1145, 86, '_download_limit', '0'),
(1146, 86, '_download_expiry', '0'),
(1147, 86, '_thumbnail_id', '84'),
(1148, 86, '_stock', NULL),
(1149, 86, '_stock_status', 'instock'),
(1150, 86, '_wc_average_rating', '0'),
(1151, 86, '_wc_rating_count', 'a:0:{}'),
(1152, 86, '_wc_review_count', '0'),
(1153, 86, '_downloadable_files', 'a:0:{}'),
(1154, 86, 'attribute_pa_color', 'black'),
(1155, 86, '_price', '20'),
(1156, 86, '_product_version', '3.5.3'),
(1157, 87, '_wp_attached_file', '2019/01/T_2_front.jpg'),
(1158, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_2_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_2_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_2_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_2_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_2_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_2_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_2_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_2_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1159, 87, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg'),
(1160, 88, '_wp_attached_file', '2019/01/T_2_back.jpg'),
(1161, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_2_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_2_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_2_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_2_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_2_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_2_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_2_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_2_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1162, 88, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg'),
(1163, 21, '_wp_old_slug', 'import-placeholder-for-t-shirt-premium-quality'),
(1164, 21, '_thumbnail_id', '87'),
(1165, 89, '_wp_attached_file', '2019/01/T_1_front.jpg'),
(1166, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2019/01/T_1_front.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:21:\"T_1_front-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"T_1_front-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"T_1_front-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_1_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_1_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_1_front-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_1_front-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1167, 89, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_front.jpg'),
(1168, 90, '_wp_attached_file', '2019/01/T_1_back.jpg'),
(1169, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/01/T_1_back.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"T_1_back-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"T_1_back-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"T_1_back-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_1_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_1_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_1_back-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_1_back-555x555.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1170, 90, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_back.jpg'),
(1171, 17, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-logo'),
(1172, 17, '_thumbnail_id', '89'),
(1173, 22, '_price', '20'),
(1174, 22, '_regular_price', ''),
(1175, 22, '_sale_price', ''),
(1177, 91, '_wp_trash_meta_status', 'publish'),
(1178, 91, '_wp_trash_meta_time', '1547463227'),
(1179, 92, '_edit_lock', '1547464783:1'),
(1180, 5, '_edit_lock', '1547471409:1'),
(1181, 92, '_customize_restore_dismissed', '1'),
(1182, 93, '_wp_attached_file', '2019/01/factory-future.jpg'),
(1183, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:750;s:4:\"file\";s:26:\"2019/01/factory-future.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"factory-future-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"factory-future-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"factory-future-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"factory-future-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:26:\"factory-future-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:26:\"factory-future-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:26:\"factory-future-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:24:\"factory-future-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"factory-future-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"factory-future-555x278.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"factory-future-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"factory-future-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"factory-future-555x278.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"factory-future-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1184, 93, '_wp_attachment_is_custom_background', 'shop-isle'),
(1185, 94, '_wp_trash_meta_status', 'publish'),
(1186, 94, '_wp_trash_meta_time', '1547479223'),
(1187, 95, '_wp_attached_file', '2019/01/cropped-factory-future-1.jpg'),
(1188, 95, '_wp_attachment_context', 'custom-header'),
(1189, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2019/01/cropped-factory-future-1.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"cropped-factory-future-1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:34:\"cropped-factory-future-1-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-factory-future-1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-555x278.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-262x328.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-555x278.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-factory-future-1-160x160.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:93;}'),
(1190, 95, '_wp_attachment_custom_header_last_used_shop-isle', '1547480348'),
(1191, 95, '_wp_attachment_is_custom_header', 'shop-isle'),
(1192, 96, '_edit_lock', '1547480315:1'),
(1193, 96, '_wp_trash_meta_status', 'publish'),
(1194, 96, '_wp_trash_meta_time', '1547480348'),
(1195, 97, '_wp_trash_meta_status', 'publish'),
(1196, 97, '_wp_trash_meta_time', '1547480437'),
(1197, 98, '_wp_trash_meta_status', 'publish'),
(1198, 98, '_wp_trash_meta_time', '1547723484'),
(1199, 99, '_wp_trash_meta_status', 'publish'),
(1200, 99, '_wp_trash_meta_time', '1547723781'),
(1201, 100, '_wc_review_count', '0'),
(1202, 100, '_wc_rating_count', 'a:0:{}'),
(1203, 100, '_wc_average_rating', '0'),
(1204, 2, '_edit_lock', '1547724071:1'),
(1205, 100, '_edit_last', '1'),
(1206, 100, '_edit_lock', '1547727969:1'),
(1207, 6, '_edit_last', '1'),
(1208, 6, '_wp_page_template', 'default'),
(1209, 6, '_edit_lock', '1547737061:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-14 11:48:39', '2019-01-14 08:48:39', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-01-14 11:48:39', '2019-01-14 08:48:39', '', 0, 'http://pirany.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-14 11:48:39', '2019-01-14 08:48:39', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://pirany.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-14 11:48:39', '2019-01-14 08:48:39', '', 0, 'http://pirany.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-14 11:48:39', '2019-01-14 08:48:39', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://pirany.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-14 11:48:39', '2019-01-14 08:48:39', '', 0, 'http://pirany.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-14 11:49:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-14 11:49:01', '0000-00-00 00:00:00', '', 0, 'http://pirany.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-14 11:55:32', '2019-01-14 08:55:32', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-01-14 11:55:32', '2019-01-14 08:55:32', '', 0, 'http://pirany.loc/shop/', 0, 'page', '', 0),
(6, 1, '2019-01-14 11:55:32', '2019-01-14 08:55:32', '[woocommerce_cart]', 'Корзина', '', 'draft', 'closed', 'closed', '', 'cart', '', '', '2019-01-17 17:57:41', '2019-01-17 14:57:41', '', 0, 'http://pirany.loc/cart/', 0, 'page', '', 0),
(7, 1, '2019-01-14 11:55:32', '2019-01-14 08:55:32', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-01-14 11:55:32', '2019-01-14 08:55:32', '', 0, 'http://pirany.loc/checkout/', 0, 'page', '', 0),
(8, 1, '2019-01-14 11:55:32', '2019-01-14 08:55:32', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-01-14 11:55:32', '2019-01-14 08:55:32', '', 0, 'http://pirany.loc/my-account/', 0, 'page', '', 0),
(9, 1, '2019-01-14 13:02:40', '2019-01-14 10:02:40', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:02:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77999b86-cbca-47f6-9547-e05ca973ed1b', '', '', '2019-01-14 13:02:40', '2019-01-14 10:02:40', '', 0, 'http://pirany.loc/2019/01/14/77999b86-cbca-47f6-9547-e05ca973ed1b/', 0, 'customize_changeset', '', 0),
(10, 1, '2019-01-14 13:28:42', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-01-14 13:28:42', '0000-00-00 00:00:00', '', 0, 'http://pirany.loc/?post_type=product&p=10', 0, 'product', '', 0),
(12, 1, '2019-01-14 13:30:55', '2019-01-14 10:30:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2019-01-14 13:31:07', '2019-01-14 10:31:07', '', 0, 'http://pirany.loc/product/import-placeholder-for-woo-single-1/', 0, 'product', '', 0),
(13, 1, '2019-01-14 13:30:56', '2019-01-14 10:30:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2019-01-14 13:31:04', '2019-01-14 10:31:04', '', 0, 'http://pirany.loc/product/import-placeholder-for-woo-single-2/', 0, 'product', '', 0),
(14, 1, '2019-01-14 13:30:56', '2019-01-14 10:30:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2019-01-14 13:31:20', '2019-01-14 10:31:20', '', 0, 'http://pirany.loc/product/import-placeholder-for-woo-album-1/', 0, 'product', '', 0),
(15, 1, '2019-01-14 13:30:56', '2019-01-14 10:30:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2019-01-14 13:31:17', '2019-01-14 10:31:17', '', 0, 'http://pirany.loc/product/import-placeholder-for-woo-album-2/', 0, 'product', '', 0),
(16, 1, '2019-01-14 13:30:57', '2019-01-14 10:30:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2019-01-14 13:31:14', '2019-01-14 10:31:14', '', 0, 'http://pirany.loc/product/import-placeholder-for-woo-album-3/', 0, 'product', '', 0),
(17, 1, '2019-01-14 13:30:57', '2019-01-14 10:30:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2019-01-14 13:32:34', '2019-01-14 10:32:34', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-woo-logo/', 0, 'product', '', 0),
(18, 1, '2019-01-14 13:30:57', '2019-01-14 10:30:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2019-01-14 13:31:43', '2019-01-14 10:31:43', '', 0, 'http://pirany.loc/product/import-placeholder-for-hoodie-woo-logo/', 0, 'product', '', 0),
(19, 1, '2019-01-14 13:30:58', '2019-01-14 10:30:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2019-01-14 13:32:14', '2019-01-14 10:32:14', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-woo-ninja/', 0, 'product', '', 0),
(20, 1, '2019-01-14 13:30:58', '2019-01-14 10:30:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2019-01-14 13:32:00', '2019-01-14 10:32:00', '', 0, 'http://pirany.loc/product/import-placeholder-for-hoodie-woo-ninja/', 0, 'product', '', 0),
(21, 1, '2019-01-14 13:30:58', '2019-01-14 10:30:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2019-01-14 13:32:31', '2019-01-14 10:32:31', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-premium-quality/', 0, 'product', '', 0),
(22, 1, '2019-01-14 13:30:59', '2019-01-14 10:30:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2019-01-14 13:32:34', '2019-01-14 10:32:34', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-ship-your-idea/', 0, 'product', '', 0),
(23, 1, '2019-01-14 13:30:59', '2019-01-14 10:30:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2019-01-14 13:32:14', '2019-01-14 10:32:14', '', 0, 'http://pirany.loc/product/import-placeholder-for-hoodie-ship-your-idea/', 0, 'product', '', 0),
(24, 1, '2019-01-14 13:30:59', '2019-01-14 10:30:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2019-01-14 13:32:20', '2019-01-14 10:32:20', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-ninja-silhouette/', 0, 'product', '', 0),
(25, 1, '2019-01-14 13:31:00', '2019-01-14 10:31:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2019-01-14 13:32:11', '2019-01-14 10:32:11', '', 0, 'http://pirany.loc/product/import-placeholder-for-t-shirt-happy-ninja/', 0, 'product', '', 0),
(26, 1, '2019-01-14 13:31:00', '2019-01-14 10:31:00', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2019-01-14 13:31:49', '2019-01-14 10:31:49', '', 0, 'http://pirany.loc/product/import-placeholder-for-hoodie-happy-ninja/', 0, 'product', '', 0),
(27, 1, '2019-01-14 13:31:01', '2019-01-14 10:31:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'closed', 'closed', '', 'ninja-silhouette', '', '', '2019-01-14 13:31:46', '2019-01-14 10:31:46', '', 0, 'http://pirany.loc/product/import-placeholder-for-hoodie-ninja-silhouette/', 0, 'product', '', 0),
(28, 1, '2019-01-14 13:31:02', '2019-01-14 10:31:02', '', 'cd_6_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_angle-jpg', '', '', '2019-01-14 13:31:02', '2019-01-14 10:31:02', '', 13, 'http://pirany.loc/wp-content/uploads/2019/01/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-01-14 13:31:03', '2019-01-14 10:31:03', '', 'cd_6_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_flat-jpg', '', '', '2019-01-14 13:31:03', '2019-01-14 10:31:03', '', 13, 'http://pirany.loc/wp-content/uploads/2019/01/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-01-14 13:31:05', '2019-01-14 10:31:05', '', 'cd_4_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_angle-jpg', '', '', '2019-01-14 13:31:05', '2019-01-14 10:31:05', '', 12, 'http://pirany.loc/wp-content/uploads/2019/01/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-01-14 13:31:07', '2019-01-14 10:31:07', '', 'cd_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_flat-jpg', '', '', '2019-01-14 13:31:07', '2019-01-14 10:31:07', '', 12, 'http://pirany.loc/wp-content/uploads/2019/01/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-01-14 13:31:08', '2019-01-14 10:31:08', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Singles', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-singles', '', '', '2019-01-14 13:31:08', '2019-01-14 10:31:08', '', 0, 'http://pirany.loc/product/woo-singles/', 0, 'product', '', 0),
(33, 1, '2019-01-14 13:31:09', '2019-01-14 10:31:09', '', 'cd_5_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_angle-jpg', '', '', '2019-01-14 13:31:09', '2019-01-14 10:31:09', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-01-14 13:31:10', '2019-01-14 10:31:10', '', 'cd_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_flat-jpg', '', '', '2019-01-14 13:31:10', '2019-01-14 10:31:10', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-01-14 13:31:11', '2019-01-14 10:31:11', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2019-01-14 13:31:11', '2019-01-14 10:31:11', '', 0, 'http://pirany.loc/product/woo-album-4/', 0, 'product', '', 0),
(36, 1, '2019-01-14 13:31:12', '2019-01-14 10:31:12', '', 'cd_3_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_angle-jpg', '', '', '2019-01-14 13:31:12', '2019-01-14 10:31:12', '', 16, 'http://pirany.loc/wp-content/uploads/2019/01/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-01-14 13:31:13', '2019-01-14 10:31:13', '', 'cd_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_flat-jpg', '', '', '2019-01-14 13:31:13', '2019-01-14 10:31:13', '', 16, 'http://pirany.loc/wp-content/uploads/2019/01/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-01-14 13:31:15', '2019-01-14 10:31:15', '', 'cd_2_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_angle-jpg', '', '', '2019-01-14 13:31:15', '2019-01-14 10:31:15', '', 15, 'http://pirany.loc/wp-content/uploads/2019/01/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-01-14 13:31:16', '2019-01-14 10:31:16', '', 'cd_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_flat-jpg', '', '', '2019-01-14 13:31:16', '2019-01-14 10:31:16', '', 15, 'http://pirany.loc/wp-content/uploads/2019/01/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-01-14 13:31:18', '2019-01-14 10:31:18', '', 'cd_1_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_angle-jpg', '', '', '2019-01-14 13:31:18', '2019-01-14 10:31:18', '', 14, 'http://pirany.loc/wp-content/uploads/2019/01/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-01-14 13:31:19', '2019-01-14 10:31:19', '', 'cd_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_flat-jpg', '', '', '2019-01-14 13:31:19', '2019-01-14 10:31:19', '', 14, 'http://pirany.loc/wp-content/uploads/2019/01/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-01-14 13:31:21', '2019-01-14 10:31:21', '', 'poster_5_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_up-jpg', '', '', '2019-01-14 13:31:21', '2019-01-14 10:31:21', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-01-14 13:31:22', '2019-01-14 10:31:22', '', 'Poster_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_flat-jpg', '', '', '2019-01-14 13:31:22', '2019-01-14 10:31:22', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-01-14 13:31:23', '2019-01-14 10:31:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2019-01-14 13:31:23', '2019-01-14 10:31:23', '', 0, 'http://pirany.loc/product/woo-logo/', 0, 'product', '', 0),
(45, 1, '2019-01-14 13:31:27', '2019-01-14 10:31:27', '', 'poster_4_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_up-jpg', '', '', '2019-01-14 13:31:27', '2019-01-14 10:31:27', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-01-14 13:31:29', '2019-01-14 10:31:29', '', 'Poster_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_flat-jpg', '', '', '2019-01-14 13:31:29', '2019-01-14 10:31:29', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-01-14 13:31:30', '2019-01-14 10:31:30', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2019-01-14 13:31:30', '2019-01-14 10:31:30', '', 0, 'http://pirany.loc/product/woo-ninja/', 0, 'product', '', 0),
(48, 1, '2019-01-14 13:31:30', '2019-01-14 10:31:30', '', 'poster_3_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_up-jpg', '', '', '2019-01-14 13:31:30', '2019-01-14 10:31:30', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-01-14 13:31:32', '2019-01-14 10:31:32', '', 'Poster_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_flat-jpg', '', '', '2019-01-14 13:31:32', '2019-01-14 10:31:32', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-14 13:31:33', '2019-01-14 10:31:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2019-01-14 13:31:33', '2019-01-14 10:31:33', '', 0, 'http://pirany.loc/product/premium-quality/', 0, 'product', '', 0),
(51, 1, '2019-01-14 13:31:34', '2019-01-14 10:31:34', '', 'poster_2_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_up-jpg', '', '', '2019-01-14 13:31:34', '2019-01-14 10:31:34', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-01-14 13:31:35', '2019-01-14 10:31:35', '', 'Poster_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_flat-jpg', '', '', '2019-01-14 13:31:35', '2019-01-14 10:31:35', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-01-14 13:31:36', '2019-01-14 10:31:36', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2019-01-14 13:31:36', '2019-01-14 10:31:36', '', 0, 'http://pirany.loc/product/flying-ninja/', 0, 'product', '', 0),
(54, 1, '2019-01-14 13:31:37', '2019-01-14 10:31:37', '', 'poster_1_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_up-jpg', '', '', '2019-01-14 13:31:37', '2019-01-14 10:31:37', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-01-14 13:31:38', '2019-01-14 10:31:38', '', 'Poster_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_flat-jpg', '', '', '2019-01-14 13:31:38', '2019-01-14 10:31:38', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-01-14 13:31:40', '2019-01-14 10:31:40', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2019-01-14 13:31:40', '2019-01-14 10:31:40', '', 0, 'http://pirany.loc/product/ship-your-idea/', 0, 'product', '', 0),
(57, 1, '2019-01-14 13:31:41', '2019-01-14 10:31:41', '', 'hoodie_6_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_front-jpg', '', '', '2019-01-14 13:31:41', '2019-01-14 10:31:41', '', 18, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-01-14 13:31:42', '2019-01-14 10:31:42', '', 'hoodie_6_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_back-jpg', '', '', '2019-01-14 13:31:42', '2019-01-14 10:31:42', '', 18, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-01-14 13:31:44', '2019-01-14 10:31:44', '', 'hoodie_5_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_front-jpg', '', '', '2019-01-14 13:31:44', '2019-01-14 10:31:44', '', 27, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-14 13:31:45', '2019-01-14 10:31:45', '', 'hoodie_5_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_back-jpg', '', '', '2019-01-14 13:31:45', '2019-01-14 10:31:45', '', 27, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-01-14 13:31:47', '2019-01-14 10:31:47', '', 'hoodie_4_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_front-jpg', '', '', '2019-01-14 13:31:47', '2019-01-14 10:31:47', '', 26, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-01-14 13:31:48', '2019-01-14 10:31:48', '', 'hoodie_4_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_back-jpg', '', '', '2019-01-14 13:31:48', '2019-01-14 10:31:48', '', 26, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-01-14 13:31:53', '2019-01-14 10:31:53', '', 'hoodie_3_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_front-jpg', '', '', '2019-01-14 13:31:53', '2019-01-14 10:31:53', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-01-14 13:31:55', '2019-01-14 10:31:55', '', 'hoodie_3_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_back-jpg', '', '', '2019-01-14 13:31:55', '2019-01-14 10:31:55', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-01-14 13:31:56', '2019-01-14 10:31:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2019-01-14 13:31:56', '2019-01-14 10:31:56', '', 0, 'http://pirany.loc/product/patient-ninja/', 0, 'product', '', 0),
(66, 1, '2019-01-14 13:31:57', '2019-01-14 10:31:57', '', 'hoodie_2_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_front-jpg', '', '', '2019-01-14 13:31:57', '2019-01-14 10:31:57', '', 20, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-14 13:31:59', '2019-01-14 10:31:59', '', 'hoodie_2_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_back-jpg', '', '', '2019-01-14 13:31:59', '2019-01-14 10:31:59', '', 20, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-01-14 13:32:01', '2019-01-14 10:32:01', '', 'hoodie_7_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_front-jpg', '', '', '2019-01-14 13:32:01', '2019-01-14 10:32:01', '', 23, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-01-14 13:32:03', '2019-01-14 10:32:03', '', 'hoodie_7_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_back-jpg', '', '', '2019-01-14 13:32:03', '2019-01-14 10:32:03', '', 23, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-01-14 13:32:05', '2019-01-14 10:32:05', '', 'hoodie_1_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_back-jpg', '', '', '2019-01-14 13:32:05', '2019-01-14 10:32:05', '', 23, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-01-14 13:32:06', '2019-01-14 10:32:06', '', 'hoodie_1_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_front-jpg', '', '', '2019-01-14 13:32:06', '2019-01-14 10:32:06', '', 23, 'http://pirany.loc/wp-content/uploads/2019/01/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-01-14 13:32:07', '2019-01-14 10:32:07', '', 'Ship Your Idea - Blue, XL', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-blue-xl', '', '', '2019-01-14 13:32:07', '2019-01-14 10:32:07', '', 23, 'http://pirany.loc/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(73, 1, '2019-01-14 13:32:08', '2019-01-14 10:32:08', '', 'Ship Your Idea - Black, L', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black-l', '', '', '2019-01-14 13:32:08', '2019-01-14 10:32:08', '', 23, 'http://pirany.loc/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(74, 1, '2019-01-14 13:32:09', '2019-01-14 10:32:09', '', 'T_7_front.jpg', '', 'inherit', 'open', 'closed', '', 't_7_front-jpg', '', '', '2019-01-14 13:32:09', '2019-01-14 10:32:09', '', 25, 'http://pirany.loc/wp-content/uploads/2019/01/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-01-14 13:32:10', '2019-01-14 10:32:10', '', 'T_7_back.jpg', '', 'inherit', 'open', 'closed', '', 't_7_back-jpg', '', '', '2019-01-14 13:32:10', '2019-01-14 10:32:10', '', 25, 'http://pirany.loc/wp-content/uploads/2019/01/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-01-14 13:32:12', '2019-01-14 10:32:12', '', 'T_6_front.jpg', '', 'inherit', 'open', 'closed', '', 't_6_front-jpg', '', '', '2019-01-14 13:32:12', '2019-01-14 10:32:12', '', 19, 'http://pirany.loc/wp-content/uploads/2019/01/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-01-14 13:32:13', '2019-01-14 10:32:13', '', 'T_6_back.jpg', '', 'inherit', 'open', 'closed', '', 't_6_back-jpg', '', '', '2019-01-14 13:32:13', '2019-01-14 10:32:13', '', 19, 'http://pirany.loc/wp-content/uploads/2019/01/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-01-14 13:32:18', '2019-01-14 10:32:18', '', 'T_5_front.jpg', '', 'inherit', 'open', 'closed', '', 't_5_front-jpg', '', '', '2019-01-14 13:32:18', '2019-01-14 10:32:18', '', 24, 'http://pirany.loc/wp-content/uploads/2019/01/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-01-14 13:32:19', '2019-01-14 10:32:19', '', 'T_5_back.jpg', '', 'inherit', 'open', 'closed', '', 't_5_back-jpg', '', '', '2019-01-14 13:32:19', '2019-01-14 10:32:19', '', 24, 'http://pirany.loc/wp-content/uploads/2019/01/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-01-14 13:32:21', '2019-01-14 10:32:21', '', 'T_4_front.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front-jpg', '', '', '2019-01-14 13:32:21', '2019-01-14 10:32:21', '', 22, 'http://pirany.loc/wp-content/uploads/2019/01/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2019-01-14 13:32:22', '2019-01-14 10:32:22', '', 'T_3_back.jpg', '', 'inherit', 'open', 'closed', '', 't_3_back-jpg', '', '', '2019-01-14 13:32:22', '2019-01-14 10:32:22', '', 22, 'http://pirany.loc/wp-content/uploads/2019/01/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-01-14 13:32:24', '2019-01-14 10:32:24', '', 'T_3_front.jpg', '', 'inherit', 'open', 'closed', '', 't_3_front-jpg', '', '', '2019-01-14 13:32:24', '2019-01-14 10:32:24', '', 22, 'http://pirany.loc/wp-content/uploads/2019/01/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2019-01-14 13:32:25', '2019-01-14 10:32:25', '', 'T_4_back.jpg', '', 'inherit', 'open', 'closed', '', 't_4_back-jpg', '', '', '2019-01-14 13:32:25', '2019-01-14 10:32:25', '', 22, 'http://pirany.loc/wp-content/uploads/2019/01/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-01-14 13:32:26', '2019-01-14 10:32:26', '', 'T_4_front1.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front1-jpg', '', '', '2019-01-14 13:32:26', '2019-01-14 10:32:26', '', 22, 'http://pirany.loc/wp-content/uploads/2019/01/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-01-14 13:32:27', '2019-01-14 10:32:27', '', 'Ship Your Idea - Green', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-green', '', '', '2019-01-14 13:32:27', '2019-01-14 10:32:27', '', 22, 'http://pirany.loc/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(86, 1, '2019-01-14 13:32:28', '2019-01-14 10:32:28', '', 'Ship Your Idea - Black', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black', '', '', '2019-01-14 13:32:28', '2019-01-14 10:32:28', '', 22, 'http://pirany.loc/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(87, 1, '2019-01-14 13:32:29', '2019-01-14 10:32:29', '', 'T_2_front.jpg', '', 'inherit', 'open', 'closed', '', 't_2_front-jpg', '', '', '2019-01-14 13:32:29', '2019-01-14 10:32:29', '', 21, 'http://pirany.loc/wp-content/uploads/2019/01/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-01-14 13:32:30', '2019-01-14 10:32:30', '', 'T_2_back.jpg', '', 'inherit', 'open', 'closed', '', 't_2_back-jpg', '', '', '2019-01-14 13:32:30', '2019-01-14 10:32:30', '', 21, 'http://pirany.loc/wp-content/uploads/2019/01/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-01-14 13:32:32', '2019-01-14 10:32:32', '', 'T_1_front.jpg', '', 'inherit', 'open', 'closed', '', 't_1_front-jpg', '', '', '2019-01-14 13:32:32', '2019-01-14 10:32:32', '', 17, 'http://pirany.loc/wp-content/uploads/2019/01/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-14 13:32:33', '2019-01-14 10:32:33', '', 'T_1_back.jpg', '', 'inherit', 'open', 'closed', '', 't_1_back-jpg', '', '', '2019-01-14 13:32:33', '2019-01-14 10:32:33', '', 17, 'http://pirany.loc/wp-content/uploads/2019/01/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-01-14 13:53:47', '2019-01-14 10:53:47', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:53:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80f5ac0d-7628-4a5b-a76c-265f5cb02f68', '', '', '2019-01-14 13:53:47', '2019-01-14 10:53:47', '', 0, 'http://pirany.loc/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2019-01-14 14:01:53', '0000-00-00 00:00:00', '{\n    \"blogname\": {\n        \"value\": \"SPirany\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:01:53\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:01:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0a2a6fa8-fe8d-435b-bbf1-487c632e4ca6', '', '', '2019-01-14 14:01:53', '2019-01-14 11:01:53', '', 0, 'http://pirany.loc/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2019-01-14 18:20:03', '2019-01-14 15:20:03', '', 'factory-future', '', 'inherit', 'open', 'closed', '', 'factory-future', '', '', '2019-01-14 18:20:03', '2019-01-14 15:20:03', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/factory-future.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-14 18:20:23', '2019-01-14 15:20:23', '{\n    \"shop-isle::background_image\": {\n        \"value\": \"http://pirany.loc/wp-content/uploads/2019/01/factory-future.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:20:23\"\n    },\n    \"shop-isle::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:20:23\"\n    },\n    \"shop-isle::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:20:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd497a0fc-afe9-4e6e-acf0-320ee08a1295', '', '', '2019-01-14 18:20:23', '2019-01-14 15:20:23', '', 0, 'http://pirany.loc/2019/01/14/d497a0fc-afe9-4e6e-acf0-320ee08a1295/', 0, 'customize_changeset', '', 0),
(95, 1, '2019-01-14 18:38:43', '2019-01-14 15:38:43', '', 'cropped-factory-future-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-factory-future-jpg', '', '', '2019-01-14 18:38:43', '2019-01-14 15:38:43', '', 0, 'http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-01-14 18:39:07', '2019-01-14 15:39:07', '{\n    \"shop-isle::header_image\": {\n        \"value\": \"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:39:07\"\n    },\n    \"shop-isle::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\",\n            \"thumbnail_url\": \"http://pirany.loc/wp-content/uploads/2019/01/cropped-factory-future-1.jpg\",\n            \"timestamp\": 1547480323712,\n            \"attachment_id\": 95,\n            \"width\": 1200,\n            \"height\": 600\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:39:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f84e6f2d-5454-41db-ac09-c94fdb88c2df', '', '', '2019-01-14 18:39:07', '2019-01-14 15:39:07', '', 0, 'http://pirany.loc/?p=96', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2019-01-14 18:40:36', '2019-01-14 15:40:36', '{\n    \"shop-isle::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 15:40:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '526ca800-63c9-4831-a6f4-f6b4e0c24c1d', '', '', '2019-01-14 18:40:36', '2019-01-14 15:40:36', '', 0, 'http://pirany.loc/2019/01/14/526ca800-63c9-4831-a6f4-f6b4e0c24c1d/', 0, 'customize_changeset', '', 0),
(98, 1, '2019-01-17 14:11:24', '2019-01-17 11:11:24', '{\n    \"shop-isle::shop_isle_blog_header_title\": {\n        \"value\": \"serf production\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:11:24\"\n    },\n    \"shop-isle::shop_isle_blog_header_subtitle\": {\n        \"value\": \"free delivery internation\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:11:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '574d95f6-aaed-45d5-a2df-c4ab8a970b3d', '', '', '2019-01-17 14:11:24', '2019-01-17 11:11:24', '', 0, 'http://pirany.loc/2019/01/17/574d95f6-aaed-45d5-a2df-c4ab8a970b3d/', 0, 'customize_changeset', '', 0),
(99, 1, '2019-01-17 14:16:21', '2019-01-17 11:16:21', '{\n    \"blogname\": {\n        \"value\": \"serf shop\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:16:21\"\n    },\n    \"blogdescription\": {\n        \"value\": \"best cool\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:16:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2abbd88-aff9-4533-b69c-1a0f00f47f1b', '', '', '2019-01-17 14:16:21', '2019-01-17 11:16:21', '', 0, 'http://pirany.loc/2019/01/17/a2abbd88-aff9-4533-b69c-1a0f00f47f1b/', 0, 'customize_changeset', '', 0),
(100, 1, '2019-01-17 15:26:09', '0000-00-00 00:00:00', 'dasdasd', 'sasdasda', '', 'draft', 'open', 'closed', '', '', '', '', '2019-01-17 15:26:09', '2019-01-17 12:26:09', '', 0, 'http://pirany.loc/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2019-01-17 17:57:41', '2019-01-17 14:57:41', '[woocommerce_cart]', 'Корзина', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-17 17:57:41', '2019-01-17 14:57:41', '', 6, 'http://pirany.loc/2019/01/17/6-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'display_type', ''),
(2, 15, 'thumbnail_id', '0'),
(3, 16, 'order', '0'),
(4, 16, 'display_type', ''),
(5, 16, 'thumbnail_id', '0'),
(6, 17, 'order', '0'),
(7, 18, 'order', '0'),
(8, 15, 'product_count_product_cat', '0'),
(9, 19, 'order', '0'),
(10, 20, 'order', '0'),
(11, 21, 'order', '0'),
(12, 22, 'order', '0'),
(13, 23, 'order', '0'),
(14, 17, 'product_count_product_cat', '7'),
(15, 18, 'product_count_product_cat', '3'),
(16, 19, 'product_count_product_cat', '4'),
(17, 20, 'product_count_product_cat', '5'),
(18, 21, 'product_count_product_cat', '12'),
(19, 22, 'product_count_product_cat', '6'),
(20, 24, 'order_pa_color', '0'),
(21, 25, 'order_pa_color', '0'),
(22, 23, 'product_count_product_cat', '6'),
(23, 26, 'order_pa_color', '0'),
(24, 27, 'order', '0'),
(25, 27, 'display_type', ''),
(26, 27, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
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
(15, 'Мебель', 'furniture', 0),
(16, 'Изделия из метала', 'metal-products', 0),
(17, 'Music', 'music', 0),
(18, 'Singles', 'singles', 0),
(19, 'Albums', 'albums', 0),
(20, 'Posters', 'posters', 0),
(21, 'Clothing', 'clothing', 0),
(22, 'Hoodies', 'hoodies', 0),
(23, 'T-shirts', 't-shirts', 0),
(24, 'Black', 'black', 0),
(25, 'Blue', 'blue', 0),
(26, 'Green', 'green', 0),
(27, 'TEst', 'test', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(12, 17, 0),
(12, 18, 0),
(13, 2, 0),
(13, 17, 0),
(13, 18, 0),
(14, 2, 0),
(14, 17, 0),
(14, 19, 0),
(15, 2, 0),
(15, 17, 0),
(15, 19, 0),
(16, 2, 0),
(16, 17, 0),
(16, 19, 0),
(17, 2, 0),
(17, 21, 0),
(17, 23, 0),
(18, 2, 0),
(18, 21, 0),
(18, 22, 0),
(19, 2, 0),
(19, 21, 0),
(19, 23, 0),
(20, 2, 0),
(20, 21, 0),
(20, 22, 0),
(21, 2, 0),
(21, 21, 0),
(21, 23, 0),
(22, 4, 0),
(22, 21, 0),
(22, 23, 0),
(22, 24, 0),
(22, 26, 0),
(23, 4, 0),
(23, 21, 0),
(23, 22, 0),
(23, 24, 0),
(23, 25, 0),
(24, 2, 0),
(24, 21, 0),
(24, 23, 0),
(25, 2, 0),
(25, 21, 0),
(25, 23, 0),
(26, 2, 0),
(26, 21, 0),
(26, 22, 0),
(27, 5, 0),
(27, 21, 0),
(27, 22, 0),
(32, 3, 0),
(32, 17, 0),
(32, 18, 0),
(35, 2, 0),
(35, 17, 0),
(35, 19, 0),
(44, 2, 0),
(44, 20, 0),
(47, 2, 0),
(47, 20, 0),
(50, 2, 0),
(50, 20, 0),
(53, 2, 0),
(53, 20, 0),
(56, 2, 0),
(56, 20, 0),
(65, 2, 0),
(65, 21, 0),
(65, 22, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 20),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 0, 7),
(18, 18, 'product_cat', '', 17, 3),
(19, 19, 'product_cat', '', 17, 4),
(20, 20, 'product_cat', '', 0, 5),
(21, 21, 'product_cat', '', 0, 12),
(22, 22, 'product_cat', '', 21, 6),
(23, 23, 'product_cat', '', 21, 6),
(24, 24, 'pa_color', '', 0, 2),
(25, 25, 'pa_color', '', 0, 1),
(26, 26, 'pa_color', '', 0, 1),
(27, 27, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4d2cf06c8baf5e736c9483911419e61f7f256ac50082d4719a01855cce78d74c\";a:4:{s:10:\"expiration\";i:1548665339;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547455739;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:8RJtBrX6NihXTB/CNs/lD4Q1'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(21, 1, 'wc_last_active', '1547769600'),
(22, 1, 'dismissed_no_secure_connection_notice', '1'),
(23, 1, 'wp_woocommerce_product_import_mapping', 'a:47:{i:0;s:4:\"type\";i:1;s:3:\"sku\";i:2;s:4:\"name\";i:3;s:9:\"published\";i:4;s:8:\"featured\";i:5;s:18:\"catalog_visibility\";i:6;s:17:\"short_description\";i:7;s:11:\"description\";i:8;s:17:\"date_on_sale_from\";i:9;s:15:\"date_on_sale_to\";i:10;s:9:\"tax_class\";i:11;s:12:\"stock_status\";i:12;s:14:\"stock_quantity\";i:13;s:10:\"backorders\";i:14;s:17:\"sold_individually\";i:15;s:6:\"weight\";i:16;s:6:\"length\";i:17;s:5:\"width\";i:18;s:6:\"height\";i:19;s:15:\"reviews_allowed\";i:20;s:13:\"purchase_note\";i:21;s:10:\"sale_price\";i:22;s:13:\"regular_price\";i:23;s:12:\"category_ids\";i:24;s:7:\"tag_ids\";i:25;s:17:\"shipping_class_id\";i:26;s:6:\"images\";i:27;s:14:\"download_limit\";i:28;s:15:\"download_expiry\";i:29;s:9:\"parent_id\";i:30;s:16:\"grouped_products\";i:31;s:10:\"upsell_ids\";i:32;s:14:\"cross_sell_ids\";i:33;s:11:\"product_url\";i:34;s:11:\"button_text\";i:35;s:15:\"downloads:name1\";i:36;s:14:\"downloads:url1\";i:37;s:16:\"attributes:name1\";i:38;s:17:\"attributes:value1\";i:39;s:19:\"attributes:visible1\";i:40;s:20:\"attributes:taxonomy1\";i:41;s:16:\"attributes:name2\";i:42;s:17:\"attributes:value2\";i:43;s:19:\"attributes:visible2\";i:44;s:20:\"attributes:taxonomy2\";i:45;s:19:\"attributes:default1\";i:46;s:19:\"attributes:default2\";}'),
(24, 1, 'wp_product_import_error_log', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1547480673');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BbvycSt52h2xobTQMAvZW5BT/BY9gO1', 'admin', 'test@mail.ru', '', '2019-01-14 08:48:39', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(5, '1', 'a:13:{s:22:\"mailchimp_landing_site\";s:41:\"http://pirany.loc/wp-admin/admin-ajax.php\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:410:\"a:1:{s:32:\"6f4922f45568161a8cdf4ad2299f6d23\";a:11:{s:3:\"key\";s:32:\"6f4922f45568161a8cdf4ad2299f6d23\";s:10:\"product_id\";i:18;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:35;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:35;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:700:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:12:\"test@mail.ru\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:403:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_f0bb8378a766a752fc6c706b468b3477\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:25:\"Единая ставка\";s:4:\"cost\";s:6:\"120.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:14:\"Позиции\";s:18:\"Woo Logo &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;}', 1547909692);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Украина', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Индексы таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=834;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1210;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
