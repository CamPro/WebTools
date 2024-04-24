-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2018 lúc 07:58 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', 0, 0, 0, '', '964c57ccabcc6d72f7d739ca48a1a688', 1542782269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '890b0f8cd242cd795d86681f35418695'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '42d6e1b473f057faecb2912063e8ec16'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'dded7aa330517734a19cc6671941a210'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '22844a031eaa6a60f4964b15667855f4'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '3956ca6a6b01dc94257de20c45ab781a'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, 'd60892f1873e0e81c5ebd891350fbd97'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'd1c046dc21ad2f09eccd183008066ac9'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '9e671342c0472077701d771c7d0613ba'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '1492fbba146e65ffd696b21dc2b4eeb5'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '8f6b78ed550f941aa19195bb7f59714e'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '2972a1296f80fb7117155cc18dccab09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banip`
--

CREATE TABLE `nv4_banip` (
  `id` mediumint(8) NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 1000, 72, 1, 1, 'images,flash', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images,flash', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images,flash', '', 0),
(4, '', 'banner full', '', 'sequential', 1080, 50, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'Team Xứ Quảng webdesign', 2, 1, 'team-xuquang-web-design.jpg', 'jpg', 'image/jpeg', 302, 600, '', '', '', '_blank', '', 1512027798, 1512027780, 0, 0, 1, 2),
(3, 'Quảng cáo giua', 1, 1, 'banner_xuquang.png', 'png', 'image/png', 728, 90, '', '', '', '_blank', '', 1512027798, 1512027780, 0, 0, 1, 1),
(4, 'banner full', 4, 1, 'festival-di-san-quang-nam-lan-thu-vi-2017-banner-xuquang.jpg', 'jpg', 'image/jpeg', 1170, 106, '', '', '', '_blank', '', 1514257765, 1514257765, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleMapsAPI', ''),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '0'),
('sys', 'site', 'nv_upass_type', '0'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '1'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '59940'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'mild'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', ''),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '102'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.3.00'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '59940'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', ''),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', ''),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'xuquangnews_plus_v2'),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'blogs'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1542783762'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '1'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', ''),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'blogs', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'US/Pacific'),
('sys', 'site', 'site_email', 'admin@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'admin@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4c_k0g4I'),
('sys', 'global', 'session_prefix', 'nv4s_g6TLx8'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'pkNRQ5yhpY3vU6aj4nDFWg,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'blogs', 'per_page', '20'),
('vi', 'blogs', 'st_links', '10'),
('vi', 'blogs', 'homewidth', '200'),
('vi', 'blogs', 'homeheight', '250'),
('vi', 'blogs', 'blockwidth', '70'),
('vi', 'blogs', 'blockheight', '75'),
('vi', 'blogs', 'imagefull', '800'),
('vi', 'blogs', 'copyright', ''),
('vi', 'blogs', 'showtooltip', '0'),
('vi', 'blogs', 'tooltip_position', 'bottom'),
('vi', 'blogs', 'tooltip_length', '150'),
('vi', 'blogs', 'showhometext', '1'),
('vi', 'blogs', 'timecheckstatus', '0'),
('vi', 'blogs', 'config_source', '0'),
('vi', 'blogs', 'show_no_image', ''),
('vi', 'blogs', 'allowed_rating_point', '1'),
('vi', 'blogs', 'facebookappid', ''),
('vi', 'blogs', 'socialbutton', '1'),
('vi', 'blogs', 'alias_lower', '1'),
('vi', 'blogs', 'tags_alias', '0'),
('vi', 'blogs', 'auto_tags', '0'),
('vi', 'blogs', 'tags_remind', '1'),
('vi', 'blogs', 'copy_news', '0'),
('vi', 'blogs', 'structure_upload', 'Ym'),
('vi', 'blogs', 'imgposition', '2'),
('vi', 'blogs', 'htmlhometext', '0'),
('vi', 'blogs', 'order_articles', '1'),
('vi', 'blogs', 'elas_use', '0'),
('vi', 'blogs', 'elas_host', ''),
('vi', 'blogs', 'elas_port', '9200'),
('vi', 'blogs', 'elas_index', ''),
('vi', 'blogs', 'instant_articles_active', '0'),
('vi', 'blogs', 'instant_articles_template', 'default'),
('vi', 'blogs', 'instant_articles_httpauth', '0'),
('vi', 'blogs', 'instant_articles_username', ''),
('vi', 'blogs', 'instant_articles_password', ''),
('vi', 'blogs', 'instant_articles_livetime', '60'),
('vi', 'blogs', 'instant_articles_gettime', '120'),
('vi', 'blogs', 'instant_articles_auto', '1'),
('vi', 'blogs', 'auto_postcomm', '1'),
('vi', 'blogs', 'allowed_comm', '-1'),
('vi', 'blogs', 'view_comm', '6'),
('vi', 'blogs', 'setcomm', '4'),
('vi', 'blogs', 'activecomm', '1'),
('vi', 'blogs', 'emailcomm', '0'),
('vi', 'blogs', 'adminscomm', ''),
('vi', 'blogs', 'sortcomm', '0'),
('vi', 'blogs', 'captcha', '1'),
('vi', 'blogs', 'perpagecomm', '5'),
('vi', 'blogs', 'timeoutcomm', '360'),
('vi', 'blogs', 'allowattachcomm', '0'),
('vi', 'blogs', 'alloweditorcomm', '0'),
('vi', 'blogs', 'frontend_edit_alias', '0'),
('vi', 'blogs', 'frontend_edit_layout', '1'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1542783370, 0),
('total', 'hits', 1542783370, 63, 63),
('year', '2017', 1514275888, 61, 61),
('year', '2018', 1542783370, 2, 2),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 1542783370, 2, 2),
('month', 'Dec', 1514275888, 0, 0),
('day', '01', 1512184070, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 0, 0, 0),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 1512798970, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 1512968131, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 1513670721, 0, 0),
('day', '20', 1542783370, 2, 2),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 1514084729, 0, 0),
('day', '24', 1514185344, 0, 0),
('day', '25', 1514274037, 0, 0),
('day', '26', 1514275888, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1512027852, 0, 0),
('day', '30', 1512055687, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1514185344, 14, 14),
('dayofweek', 'Monday', 1514274037, 14, 14),
('dayofweek', 'Tuesday', 1542783370, 5, 5),
('dayofweek', 'Wednesday', 1512027852, 1, 1),
('dayofweek', 'Thursday', 1512055687, 12, 12),
('dayofweek', 'Friday', 1512798970, 9, 9),
('dayofweek', 'Saturday', 1514084729, 8, 8),
('hour', '00', 1514275888, 0, 0),
('hour', '01', 1512033713, 0, 0),
('hour', '02', 1514198504, 0, 0),
('hour', '03', 1514116418, 0, 0),
('hour', '04', 1514205845, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 1514211502, 0, 0),
('hour', '07', 1514043822, 0, 0),
('hour', '08', 0, 0, 0),
('hour', '09', 0, 0, 0),
('hour', '10', 0, 0, 0),
('hour', '11', 0, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 0, 0, 0),
('hour', '14', 0, 0, 0),
('hour', '15', 0, 0, 0),
('hour', '16', 1514161780, 0, 0),
('hour', '17', 1514079439, 0, 0),
('hour', '18', 1514255919, 0, 0),
('hour', '19', 1514259570, 0, 0),
('hour', '20', 1514263275, 0, 0),
('hour', '21', 1514266943, 0, 0),
('hour', '22', 1542783370, 2, 2),
('hour', '23', 1514274037, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1542782160, 62, 62),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 1542783370, 63, 63),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1542783370, 63, 63),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1512027798, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1542783462, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1512027798, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1542782161, 1, 'Tự động lưu CSDL'),
(3, 1512027798, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1542782161, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1512027798, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1542782161, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1512027798, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1542782161, 1, 'Xóa các file error_log quá hạn'),
(6, 1512027798, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1512027798, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1542782161, 1, 'Xóa các referer quá hạn'),
(8, 1512027798, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1542782161, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1512027798, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1542782161, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_googleplus`
--

CREATE TABLE `nv4_googleplus` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1512027837),
(2, 'vi', 'modules', 'Cài lại module \"voting\"', '', '', 1, 1512027886),
(3, 'vi', 'modules', 'Kích hoạt module \"voting\"', 'Không', '', 1, 1512027890),
(4, 'vi', 'modules', 'Kích hoạt module \"page\"', 'Không', '', 1, 1512027895),
(5, 'vi', 'modules', 'Cài lại module \"freecontent\"', '', '', 1, 1512027902),
(6, 'vi', 'modules', 'Kích hoạt module \"freecontent\"', 'Không', '', 1, 1512027906),
(7, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1512028219),
(8, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1512028291),
(9, 'vi', 'banners', 'log_edit_plan', 'planid 1', '', 1, 1512028311),
(10, 'vi', 'siteterms', 'Edit', 'ID: 1', '', 1, 1512028455),
(11, 'vi', 'siteterms', 'Edit', 'ID: 2', '', 1, 1512028585),
(12, 'vi', 'users', 'Xóa nhóm', 'group_id: 10', '', 1, 1512028607),
(13, 'vi', 'users', 'Xóa nhóm', 'group_id: 11', '', 1, 1512028609),
(14, 'vi', 'users', 'Xóa nhóm', 'group_id: 12', '', 1, 1512028611),
(15, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1512028632),
(16, 'vi', 'contact', 'log_edit_row', 'id: 1 Tư vấn', '', 1, 1512031809),
(17, 'vi', 'contact', 'log_edit_row', 'id: 2 Phòng kinh doanh', '', 1, 1512031855),
(18, 'vi', 'contact', 'log_add_row', 'Phòng Kỹ thuật', '', 1, 1512031882),
(19, 'vi', 'themes', 'Thêm block', 'Name : global copyright', '', 1, 1512032017),
(20, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1512032089),
(21, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1512032168),
(22, 'vi', 'modules', 'Thêm module ảo blogs', '', '', 1, 1512032347),
(23, 'vi', 'modules', 'Thiết lập module mới blogs', '', '', 1, 1512032350),
(24, 'vi', 'modules', 'Sửa module &ldquo;blogs&rdquo;', '', '', 1, 1512032363),
(25, 'vi', 'modules', 'Thứ tự module: blogs', '16 -> 2', '', 1, 1512032368),
(26, 'vi', 'modules', 'Cài lại module \"news\"', '', '', 1, 1512032429),
(27, 'vi', 'modules', 'Kích hoạt module \"news\"', 'Không', '', 1, 1512032448),
(28, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1512037367),
(29, 'vi', 'themes', 'Thêm block', 'Name : global company info', '', 1, 1512037490),
(30, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1512037509),
(31, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512037569),
(32, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512037570),
(33, 'vi', 'login', '[Anhutbeo] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1512039370),
(34, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1512053092),
(35, 'vi', 'themes', 'Thêm block', 'Name : module block newscenter', '', 1, 1512053113),
(36, 'vi', 'modules', 'Cài lại module \"about\"', '', '', 1, 1512053159),
(37, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512053246),
(38, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512053328),
(39, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512053329),
(40, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512053510),
(41, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512053570),
(42, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1512053796),
(43, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1512053813),
(44, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1512053831),
(45, 'vi', 'modules', 'Thiết lập module mới home', '', '', 1, 1512053895),
(46, 'vi', 'modules', 'Sửa module &ldquo;home&rdquo;', '', '', 1, 1512053902),
(47, 'vi', 'modules', 'Thứ tự module: home', '17 -> 1', '', 1, 1512053905),
(48, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512054528),
(49, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512054770),
(50, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512054772),
(51, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512054908),
(52, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512054910),
(53, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512055317),
(54, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512055319),
(55, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1512176619),
(56, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512176849),
(57, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512177007),
(58, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512177008),
(59, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512177203),
(60, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv4-block-global-block-news-owlcarousel-feature-1-1-00.zip', '', 1, 1512177537),
(61, 'vi', 'themes', 'Thêm block', 'Name : global block news owlcarousel feature', '', 1, 1512177560),
(62, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512178775),
(63, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179044),
(64, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179045),
(65, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179115),
(66, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179118),
(67, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179804),
(68, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512179872),
(69, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512180909),
(70, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512180911),
(71, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512181560),
(72, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1512181561),
(73, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514027956),
(74, 'vi', 'themes', 'Thiết lập giao diện theme: \"teamxuquang_newsplus_ver1\"', '', '', 1, 1514028542),
(75, 'vi', 'themes', 'Kích hoạt theme: \"teamxuquang_newsplus_ver1\"', '', '', 1, 1514028544),
(76, 'vi', 'themes', 'Sao chép block', ' từ theme  default  sang theme  teamxuquang_newsplus_ver1', '', 1, 1514028555),
(77, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514039820),
(78, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514039827),
(79, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514040003),
(80, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514040042),
(81, 'vi', 'upload', 'Upload file', 'uploads/xuquang.vn_logo.png', '', 1, 1514040174),
(82, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1514040232),
(83, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514040648),
(84, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514040675),
(85, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514040677),
(86, 'vi', 'themes', 'Thêm block', 'Name : Mới', '', 1, 1514043623),
(87, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514043838),
(88, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514043850),
(89, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514043852),
(90, 'vi', 'themes', 'Thiết lập layout theme: \"teamxuquang_newsplus_ver1\"', '', '', 1, 1514043900),
(91, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514043974),
(92, 'vi', 'themes', 'Thêm block', 'Name : Mới', '', 1, 1514043992),
(93, 'vi', 'themes', 'Thêm block', 'Name : Tin nổi bật', '', 1, 1514044010),
(94, 'vi', 'themes', 'Thêm block', 'Name : Tin nổi bật', '', 1, 1514044092),
(95, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514044169),
(96, 'vi', 'themes', 'Sửa block', 'Name : Tin nổi bật', '', 1, 1514044176),
(97, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514044321),
(98, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514044336),
(99, 'vi', 'themes', 'Thêm block', 'Name : global block two column', '', 1, 1514044648),
(100, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514044738),
(101, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514044750),
(102, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514044943),
(103, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514045062),
(104, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514045124),
(105, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514045354),
(106, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514045392),
(107, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514045420),
(108, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514045430),
(109, 'vi', 'login', '[Anhutbeo] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1514080060),
(110, 'vi', 'login', '[Anhutbeo] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1514080068),
(111, 'vi', 'login', '[Anhutbeo] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1514080085),
(112, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514080106),
(113, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514080166),
(114, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514082836),
(115, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514112950),
(116, 'vi', 'themes', 'Thêm block', 'Name : Mới', '', 1, 1514112973),
(117, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514113018),
(118, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514113049),
(119, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514113457),
(120, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514113458),
(121, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514113553),
(122, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514113617),
(123, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514113619),
(124, 'vi', 'themes', 'Sửa block', 'Name : Mới', '', 1, 1514113736),
(125, 'vi', 'login', '[Anhutbeo] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1514116417),
(126, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514174441),
(127, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514174451),
(128, 'vi', 'themes', 'Thêm block', 'Name : Tin nổi bật', '', 1, 1514174869),
(129, 'vi', 'themes', 'Thêm block', 'Name : Tin nổi bật', '', 1, 1514174891),
(130, 'vi', 'themes', 'Thêm block', 'Name : global block groups tabs', '', 1, 1514175376),
(131, 'vi', 'themes', 'Thêm block', 'Name : Tiêu điểm trong tháng', '', 1, 1514175446),
(132, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514175509),
(133, 'vi', 'themes', 'Sửa block', 'Name : Đăng nhập thành viên', '', 1, 1514175598),
(134, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514176206),
(135, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514176408),
(136, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514176664),
(137, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514176666),
(138, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514176737),
(139, 'vi', 'themes', 'Sửa block', 'Name : Bản tin Xứ Quảng TEAM', '', 1, 1514177321),
(140, 'vi', 'themes', 'Thêm block', 'Name : global block catid style', '', 1, 1514177377),
(141, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514177402),
(142, 'vi', 'themes', 'Sửa block', 'Name : global block catid style', '', 1, 1514177423),
(143, 'vi', 'login', '[Anhutbeo] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1514181344),
(144, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514182500),
(145, 'vi', 'themes', 'Thêm block', 'Name : global user button', '', 1, 1514183234),
(146, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514183520),
(147, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514183522),
(148, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1514183553),
(149, 'vi', 'themes', 'Kích hoạt theme: \"teamxuquang_newsplus_ver1\"', '', '', 1, 1514183588),
(150, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514256270),
(151, 'vi', 'themes', 'Sao chép block', ' từ theme  teamxuquang_newsplus_ver1  sang theme  xuquangnews_plus_v2', '', 1, 1514256294),
(152, 'vi', 'themes', 'Kích hoạt theme: \"xuquangnews_plus_v2\"', '', '', 1, 1514256302),
(153, 'vi', 'themes', 'Thiết lập layout theme: \"xuquangnews_plus_v2\"', '', '', 1, 1514256319),
(154, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514256469),
(155, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514256470),
(156, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514256719),
(157, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514256962),
(158, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514256963),
(159, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514257198),
(160, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514257312),
(161, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514257314),
(162, 'vi', 'themes', 'Thêm block', 'Name : Mới', '', 1, 1514257342),
(163, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1514257531),
(164, 'vi', 'banners', 'log_add_plan', 'planid 4', '', 1, 1514257726),
(165, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1514257765),
(166, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1514257780),
(167, 'vi', 'banners', 'log_edit_plan', 'planid 4', '', 1, 1514257816),
(168, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514257982),
(169, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514257984),
(170, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514258049),
(171, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514258051),
(172, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514258701),
(173, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1514258741),
(174, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1514258953),
(175, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259048),
(176, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259050),
(177, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259098),
(178, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259125),
(179, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259232),
(180, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259885),
(181, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514259886),
(182, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514260239),
(183, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514260400),
(184, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1514260547),
(185, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514260776),
(186, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514260837),
(187, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514264403),
(188, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265154),
(189, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265157),
(190, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265202),
(191, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265204),
(192, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265275),
(193, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265547),
(194, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265654),
(195, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265765),
(196, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514265766),
(197, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514266017),
(198, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514266398),
(199, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514266400),
(200, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514266787),
(201, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514266789),
(202, 'vi', 'login', '[Anhutbeo] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1514269008),
(203, 'vi', 'login', '[Anhutbeo] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1514275878),
(204, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514275884),
(205, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514275886),
(206, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1514276085),
(207, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276096),
(208, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276097),
(209, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276099),
(210, 'vi', 'themes', 'Thêm block', 'Name : Nổi bật', '', 1, 1514276146),
(211, 'vi', 'themes', 'Sửa block', 'Name : Nổi bật', '', 1, 1514276160),
(212, 'vi', 'themes', 'Sửa block', 'Name : Nổi bật', '', 1, 1514276186),
(213, 'vi', 'themes', 'Sửa block', 'Name : Nổi bật', '', 1, 1514276212),
(214, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276351),
(215, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276353),
(216, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1514276355),
(217, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1542782181),
(218, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1542782263),
(219, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1542782269),
(220, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1542782293),
(221, 'vi', 'authors', 'Lưu thay đổi Cấu hình', 'config', '', 1, 1542782301),
(222, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1542782323),
(223, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1542782417),
(224, 'vi', 'contact', 'log_edit_row', 'id: 1 Tư vấn', '', 1, 1542782492),
(225, 'vi', 'contact', 'log_edit_row', 'id: 3 Phòng Kỹ thuật', '', 1, 1542782505),
(226, 'vi', 'contact', 'log_edit_row', 'id: 2 Phòng kinh doanh', '', 1, 1542782514),
(227, 'vi', 'blogs', 'Xóa bài viêt', 'Xứ Quảng TEAM chính thức hổ trợ cho người dùng NukeViet CMS 4.0', '', 1, 1542782534),
(228, 'vi', 'blogs', 'Xóa bài viêt', 'Thông báo tạm dừng blog Anh Út Beo, Thông báo bảo trì server Xứ Quảng Team', '', 1, 1542782547),
(229, 'vi', 'blogs', 'log_edit_blockcat', 'blockid 4', '', 1, 1542782571),
(230, 'vi', 'themes', 'Sửa block', 'Name : Bản tin', '', 1, 1542782612),
(231, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1542782653),
(232, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1542782693),
(233, 'vi', 'themes', 'Sửa block', 'Name : Bản tin', '', 1, 1542782742),
(234, 'vi', 'upload', 'Xóa file', 'uploads/xuquang.vn_logo.png', '', 1, 1542782835),
(235, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1542782857),
(236, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1542783155),
(237, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1542783357),
(238, 'vi', 'blogs', 'Xóa bài viêt', 'Share full code tin tức nukeviet tinmoitruong.vn đẹp', '', 1, 1542783453),
(239, 'vi', 'blogs', 'Xóa bài viêt', 'Share full code gồm 2 theme đẹp cho Nukeviet Shop và News', '', 1, 1542783461);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `send_to` mediumint(8) UNSIGNED NOT NULL,
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('cq3du8vjtlvkg3ksm14qtj6po6', 0, 'guest', 1542783395),
('udmt29b5asfqbvvbefke99cmja', 1, 'admin', 1542783475);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'blogs', 0, 0, 'news', 'blogs', '', 1512032347, '', 'Blog'),
(0, 'module', 'home', 0, 0, 'home', 'home', '3.4.01 1371254400', 1512053893, 'Phan Tan Dung (phantandung92@gmail.com)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.3.00 1510218000', 1512027798, 'VINADES <contact@vinades.vn>', ''),
(0, 'theme', 'teamxuquang_newsplus_ver1', 0, 0, 'teamxuquang_newsplus_ver1', 'teamxuquang_newsplus_ver1', '4.0.0 1514028538', 1514028538, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'theme', 'xuquangnews_plus_v2', 0, 0, 'xuquangnews_plus_v2', 'xuquangnews_plus_v2', '4.0.0 1514263361', 1514263361, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1514040165, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(6, 'uploads/contact', 0, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 0, 0, 0, 0, 0),
(9, 'uploads/news', 0, 0, 0, 0, 0),
(10, 'uploads/news/source', 0, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(12, 'uploads/news/topics', 0, 0, 0, 0, 0),
(13, 'uploads/page', 0, 0, 0, 0, 0),
(14, 'uploads/siteterms', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/blogs', 0, 0, 0, 0, 0),
(18, 'uploads/blogs/source', 0, 0, 0, 0, 0),
(19, 'uploads/blogs/temp_pic', 0, 0, 0, 0, 0),
(20, 'uploads/blogs/topics', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('logo_a6435...png', 'png', 'image', 5337, 'assets/logo_a6435443e18d9f16ed11c538a1c4ef4d.png', 80, 22, '144|38', 1, 1512037556, 1, 'logo_a6435443e18d9f16ed11c538a1c4ef4d.png', 'logo a6435443e18d9f16ed11c538a1c4ef4d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}QILMlMEQjfQTH+W0032hSCgrIAuo+Iz4/koN3CvL8oXQXnlpe7v/PReKyqC+hiSVTd6bLXb5OMfk6TJ6Sc3KlzBlMGE=', 'vantam.tphcm@gmail.com', 'admin', '', 'N', '', 594838800, '', 1512027827, 'ten gi', 'van tam', '', 0, 1, '1', 1, 0, '', '', 1512027827, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1542782323),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|1234569|11223344|12345678|12345679|23456789|66666666|66668888|68686868|87654321|88888888|99999999|123456789|999999999|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|hoilamgi|iloveyou|jennifer|jordan|khongbiet|khongco|khongcopass|letmein|macromedia|master|michael|monkey|mustang|nuke123|nuke123@|nuke@123|password|photoshop|pussy|qwerty|shadow|superman', 1542782323),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1542782323),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1542782323),
('avatar_width', '80', 1542782323),
('avatar_height', '80', 1542782323),
('active_group_newusers', '0', 1542782323),
('active_user_logs', '1', 1542782323),
('min_old_user', '16', 1542782323),
('register_active_time', '86400', 1512027798),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1512027798, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1512027798, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1512027798, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1512027798, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1512027798, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1512027798, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1512027798, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'blogs', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 0, 4, 'a:6:{s:10:\"number_day\";i:365;s:6:\"numrow\";i:7;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:3:\"top\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(31, 'default', 'theme', 'global.copyright.php', 'global copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:0:\"\";s:10:\"design_url\";s:0:\"\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(32, 'default', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:25:\"https://www.facebook.com/\";s:11:\"google_plus\";s:23:\"https://www.google.com/\";s:7:\"youtube\";s:29:\"https://www.youtube.com/user/\";s:7:\"twitter\";s:20:\"https://twitter.com/\";}'),
(33, 'default', 'theme', 'global.company_info.php', 'global company info', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:37:\"Nhóm phát triển TEAM Xứ Quảng\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:66:\"Tầng 3 Indochina, 74 Bạch Đằng Q Hải Châu TP Đà Nẵng\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:16.069846415042001;s:20:\"company_mapcenterlng\";d:108.22455858574;s:14:\"company_maplat\";d:16.070045057289001;s:14:\"company_maplng\";d:108.22471171617997;s:15:\"company_mapzoom\";i:18;s:13:\"company_phone\";s:13:\"0964 00 01 01\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:13:\"ad@xuquang.vn\";s:15:\"company_website\";s:10:\"xuquang.vn\";}'),
(34, 'default', 'blogs', 'module.block_newscenter.php', 'module block newscenter', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:10:{s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:0;s:5:\"width\";i:400;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(71, 'teamxuquang_newsplus_ver1', 'theme', 'global.company_info.php', 'global company info', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:37:\"Nhóm phát triển TEAM Xứ Quảng\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:66:\"Tầng 3 Indochina, 74 Bạch Đằng Q Hải Châu TP Đà Nẵng\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:16.069846415042001;s:20:\"company_mapcenterlng\";d:108.22455858574;s:14:\"company_maplat\";d:16.070045057289001;s:14:\"company_maplng\";d:108.22471171617997;s:15:\"company_mapzoom\";i:18;s:13:\"company_phone\";s:13:\"0964 00 01 01\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:13:\"ad@xuquang.vn\";s:15:\"company_website\";s:10:\"xuquang.vn\";}'),
(69, 'teamxuquang_newsplus_ver1', 'theme', 'global.copyright.php', 'global copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:0:\"\";s:10:\"design_url\";s:0:\"\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(68, 'teamxuquang_newsplus_ver1', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(59, 'teamxuquang_newsplus_ver1', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(58, 'teamxuquang_newsplus_ver1', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(57, 'teamxuquang_newsplus_ver1', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(56, 'teamxuquang_newsplus_ver1', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(55, 'teamxuquang_newsplus_ver1', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(73, 'teamxuquang_newsplus_ver1', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(72, 'teamxuquang_newsplus_ver1', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(61, 'teamxuquang_newsplus_ver1', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(62, 'teamxuquang_newsplus_ver1', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(53, 'teamxuquang_newsplus_ver1', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:25:\"https://www.facebook.com/\";s:11:\"google_plus\";s:23:\"https://www.google.com/\";s:7:\"youtube\";s:29:\"https://www.youtube.com/user/\";s:7:\"twitter\";s:20:\"https://twitter.com/\";}'),
(65, 'teamxuquang_newsplus_ver1', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(60, 'teamxuquang_newsplus_ver1', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(63, 'teamxuquang_newsplus_ver1', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(66, 'teamxuquang_newsplus_ver1', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(70, 'teamxuquang_newsplus_ver1', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(74, 'teamxuquang_newsplus_ver1', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[HEAD_RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(76, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_fp_slider.php', 'Mới', '/blogs/groups/moi/', 'no_title', '[HOME1]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:120;}'),
(77, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_fp_small.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[HOME2]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(78, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_fp_small.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[HOME2]', 0, '1', 1, '6', 0, 2, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:120;}'),
(79, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:5:{s:5:\"catid\";i:2;s:5:\"style\";i:4;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(80, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_two_column.php', 'global block two column', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 4, 'a:3:{s:8:\"blockid1\";i:2;s:8:\"blockid2\";i:3;s:6:\"numrow\";i:3;}'),
(81, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 5, 'a:5:{s:5:\"catid\";i:4;s:5:\"style\";i:2;s:6:\"numrow\";i:3;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(82, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 6, 'a:5:{s:5:\"catid\";i:7;s:5:\"style\";i:3;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(83, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[BOTLEFT]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:\"catid\";i:8;s:5:\"style\";i:6;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(84, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[BOTRIGHT]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:\"catid\";i:3;s:5:\"style\";i:7;s:6:\"numrow\";i:3;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(85, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_breaking_news.php', 'Mới', '/blogs/groups/moi/', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:2;s:12:\"title_length\";i:120;}'),
(86, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_4column.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[RIGHT]', 0, '1', 1, '6', 0, 4, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(87, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_4column.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[FOOTER]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(88, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_groups_tabs.php', 'global block groups tabs', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 5, 'a:3:{s:7:\"blockid\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:6:\"numrow\";i:5;s:12:\"title_length\";s:3:\"100\";}'),
(89, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_groups_grid.php', 'Tiêu điểm trong tháng', '/blogs/groups/tieu-diem-trong-thang/', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 6, 'a:3:{s:7:\"blockid\";i:3;s:6:\"numrow\";i:4;s:12:\"title_length\";i:80;}'),
(90, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_widget_sidebar.php', 'Bản tin Xứ Quảng TEAM', '/blogs/groups/ban-tin-xu-quang-team/', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 7, 'a:3:{s:7:\"blockid\";i:4;s:6:\"numrow\";i:5;s:12:\"title_length\";i:20;}'),
(91, 'teamxuquang_newsplus_ver1', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 7, 'a:5:{s:5:\"catid\";i:4;s:5:\"style\";i:5;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:40;s:12:\"hometext_cut\";i:300;}'),
(92, 'teamxuquang_newsplus_ver1', 'users', 'global.user_button.php', 'global user button', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(93, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[BOTLEFT]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:\"catid\";i:8;s:5:\"style\";i:6;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(94, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[BOTRIGHT]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:\"catid\";i:3;s:5:\"style\";i:7;s:6:\"numrow\";i:3;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(95, 'xuquangnews_plus_v2', 'blogs', 'global.block_fp_slider.php', 'Mới', '/blogs/groups/moi/', 'no_title', '[HOME1]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:120;}'),
(96, 'xuquangnews_plus_v2', 'blogs', 'global.block_fp_small.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[HOME2]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(97, 'xuquangnews_plus_v2', 'blogs', 'global.block_fp_small.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[HOME2]', 0, '1', 1, '6', 0, 2, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:120;}'),
(98, 'xuquangnews_plus_v2', 'users', 'global.user_button.php', 'global user button', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(102, 'xuquangnews_plus_v2', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(103, 'xuquangnews_plus_v2', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(104, 'xuquangnews_plus_v2', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(105, 'xuquangnews_plus_v2', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(106, 'xuquangnews_plus_v2', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(107, 'xuquangnews_plus_v2', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(108, 'xuquangnews_plus_v2', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(109, 'xuquangnews_plus_v2', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(110, 'xuquangnews_plus_v2', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(111, 'xuquangnews_plus_v2', 'blogs', 'global.block_4column.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[RIGHT]', 0, '1', 1, '6', 0, 4, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(112, 'xuquangnews_plus_v2', 'blogs', 'global.block_groups_tabs.php', 'global block groups tabs', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 5, 'a:3:{s:7:\"blockid\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:6:\"numrow\";i:5;s:12:\"title_length\";s:3:\"100\";}'),
(113, 'xuquangnews_plus_v2', 'blogs', 'global.block_groups_grid.php', 'Tiêu điểm trong tháng', '/blogs/groups/tieu-diem-trong-thang/', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 6, 'a:3:{s:7:\"blockid\";i:3;s:6:\"numrow\";i:4;s:12:\"title_length\";i:80;}'),
(114, 'xuquangnews_plus_v2', 'blogs', 'global.block_widget_sidebar.php', 'Bản tin', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 7, 'a:3:{s:7:\"blockid\";i:4;s:6:\"numrow\";i:5;s:12:\"title_length\";i:20;}'),
(115, 'xuquangnews_plus_v2', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(116, 'xuquangnews_plus_v2', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(117, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:5:{s:5:\"catid\";i:2;s:5:\"style\";i:4;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(118, 'xuquangnews_plus_v2', 'blogs', 'global.block_two_column.php', 'global block two column', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 4, 'a:3:{s:8:\"blockid1\";i:2;s:8:\"blockid2\";i:3;s:6:\"numrow\";i:3;}'),
(119, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 5, 'a:5:{s:5:\"catid\";i:4;s:5:\"style\";i:2;s:6:\"numrow\";i:3;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(120, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 6, 'a:5:{s:5:\"catid\";i:7;s:5:\"style\";i:3;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:120;s:12:\"hometext_cut\";i:120;}'),
(121, 'xuquangnews_plus_v2', 'blogs', 'global.block_catid_style.php', 'global block catid style', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 7, 'a:5:{s:5:\"catid\";i:4;s:5:\"style\";i:5;s:6:\"numrow\";i:5;s:9:\"title_cut\";i:40;s:12:\"hometext_cut\";i:300;}'),
(122, 'xuquangnews_plus_v2', 'blogs', 'global.block_4column.php', 'Tin nổi bật', '/blogs/groups/tin-noi-bat/', 'no_title', '[FOOTER]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:2;s:6:\"numrow\";i:4;s:12:\"title_length\";i:40;}'),
(124, 'xuquangnews_plus_v2', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(126, 'xuquangnews_plus_v2', 'theme', 'global.company_info.php', 'global company info', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:19:\"Nhóm phát triển\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:0:\"\";s:15:\"company_showmap\";i:0;s:20:\"company_mapcenterlat\";d:16.069846415042;s:20:\"company_mapcenterlng\";d:108.22455858574;s:14:\"company_maplat\";d:16.070045057289;s:14:\"company_maplng\";d:108.22471171617997;s:15:\"company_mapzoom\";i:18;s:13:\"company_phone\";s:10:\"0123456789\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:15:\"admin@gmail.com\";s:15:\"company_website\";s:8:\"admin.vn\";}'),
(127, 'xuquangnews_plus_v2', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(128, 'xuquangnews_plus_v2', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(129, 'xuquangnews_plus_v2', 'blogs', 'global.block_breaking_news.php', 'Mới', '/blogs/groups/moi/', 'no_title', '[BREAKING]', 0, '1', 1, '6', 1, 1, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:40;}'),
(130, 'xuquangnews_plus_v2', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[BANNER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:4;}'),
(132, 'xuquangnews_plus_v2', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:25:\"https://www.facebook.com/\";s:11:\"google_plus\";s:23:\"https://www.google.com/\";s:7:\"youtube\";s:29:\"https://www.youtube.com/user/\";s:7:\"twitter\";s:20:\"https://twitter.com/\";}'),
(133, 'xuquangnews_plus_v2', 'about', 'global.html.php', 'global html', '', 'no_title', '[FOOTER_SITE2]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:207:\"<div style=\"text-align: right;\"><span style=\"color:rgb(236, 240, 241);\">©&nbsp;Bản quyền thuộc về admin. Bài viết được thu thập tự động bởi một phần mềm máy tính</span></div>\";}'),
(134, 'xuquangnews_plus_v2', 'blogs', 'global.block_tophits.php', 'Nổi bật', '', 'simple', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:6:{s:10:\"number_day\";i:365;s:6:\"numrow\";i:3;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 61, 1),
(18, 64, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 52, 1),
(18, 63, 1),
(18, 55, 1),
(18, 56, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 62, 1),
(21, 1, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 41, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 50, 1),
(21, 51, 1),
(21, 61, 1),
(21, 64, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 52, 1),
(21, 63, 1),
(21, 55, 1),
(21, 56, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 37, 1),
(21, 58, 1),
(21, 59, 1),
(21, 60, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 29, 1),
(21, 62, 1),
(12, 1, 1),
(12, 38, 1),
(12, 39, 1),
(12, 40, 1),
(12, 41, 1),
(12, 47, 1),
(12, 48, 1),
(12, 49, 1),
(12, 50, 1),
(12, 51, 1),
(12, 61, 1),
(12, 64, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 52, 1),
(12, 63, 1),
(12, 55, 1),
(12, 56, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 37, 1),
(12, 58, 1),
(12, 59, 1),
(12, 60, 1),
(12, 19, 1),
(12, 20, 1),
(12, 21, 1),
(12, 22, 1),
(12, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(12, 28, 1),
(12, 29, 1),
(12, 62, 1),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 61, 2),
(6, 64, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 52, 2),
(6, 63, 2),
(6, 55, 2),
(6, 56, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 62, 2),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 62, 1),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 61, 1),
(17, 64, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 52, 1),
(17, 63, 1),
(17, 55, 1),
(17, 56, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 61, 2),
(14, 64, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 52, 2),
(14, 63, 2),
(14, 55, 2),
(14, 56, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 62, 2),
(7, 1, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 61, 1),
(7, 64, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 52, 1),
(7, 63, 1),
(7, 55, 1),
(7, 56, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 62, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 62, 2),
(9, 1, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 51, 3),
(9, 61, 3),
(9, 64, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 52, 3),
(9, 63, 3),
(9, 55, 3),
(9, 56, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 62, 3),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 61, 4),
(10, 64, 4),
(13, 80, 1),
(15, 80, 1),
(17, 80, 1),
(20, 80, 1),
(6, 80, 2),
(5, 80, 1),
(31, 80, 2),
(12, 80, 1),
(21, 80, 1),
(18, 80, 1),
(10, 63, 4),
(10, 55, 4),
(10, 56, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(33, 80, 1),
(1, 4, 1),
(2, 4, 2),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 62, 1),
(22, 1, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 61, 1),
(22, 64, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 52, 1),
(22, 63, 1),
(22, 55, 1),
(22, 56, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 62, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 62, 2),
(24, 1, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 61, 1),
(24, 64, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 52, 1),
(24, 63, 1),
(24, 55, 1),
(24, 56, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 62, 1),
(25, 1, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 61, 2),
(25, 64, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 52, 2),
(25, 63, 2),
(25, 55, 2),
(25, 56, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 62, 4),
(31, 1, 2),
(31, 4, 2),
(31, 5, 2),
(31, 6, 2),
(31, 7, 2),
(31, 8, 2),
(31, 9, 2),
(31, 10, 2),
(31, 11, 2),
(31, 12, 2),
(31, 19, 2),
(31, 20, 2),
(31, 21, 2),
(31, 22, 2),
(31, 23, 2),
(31, 24, 2),
(31, 25, 2),
(31, 26, 2),
(31, 27, 2),
(31, 28, 2),
(31, 29, 2),
(31, 61, 2),
(31, 31, 2),
(31, 32, 2),
(31, 33, 2),
(31, 34, 2),
(31, 35, 2),
(31, 36, 2),
(31, 37, 2),
(31, 38, 2),
(31, 39, 2),
(31, 40, 2),
(31, 41, 2),
(31, 63, 2),
(31, 64, 2),
(31, 47, 2),
(31, 48, 2),
(31, 49, 2),
(31, 50, 2),
(31, 51, 2),
(31, 55, 2),
(31, 56, 2),
(31, 58, 2),
(31, 59, 2),
(31, 60, 2),
(32, 1, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 61, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 63, 1),
(32, 64, 1),
(32, 47, 1),
(32, 48, 1),
(32, 49, 1),
(32, 50, 1),
(32, 51, 1),
(32, 55, 1),
(32, 56, 1),
(32, 58, 1),
(32, 59, 1),
(32, 60, 1),
(18, 69, 1),
(18, 79, 1),
(18, 78, 1),
(18, 67, 1),
(18, 66, 1),
(18, 74, 1),
(18, 65, 1),
(18, 77, 1),
(18, 72, 1),
(21, 69, 1),
(21, 79, 1),
(21, 78, 1),
(21, 67, 1),
(21, 66, 1),
(21, 74, 1),
(21, 65, 1),
(21, 77, 1),
(21, 72, 1),
(12, 69, 1),
(12, 79, 1),
(12, 78, 1),
(12, 67, 1),
(12, 66, 1),
(12, 74, 1),
(12, 65, 1),
(12, 77, 1),
(12, 72, 1),
(31, 69, 2),
(31, 79, 2),
(31, 78, 2),
(31, 67, 2),
(31, 66, 2),
(31, 74, 2),
(31, 65, 2),
(31, 77, 2),
(31, 72, 2),
(5, 69, 1),
(5, 79, 1),
(5, 78, 1),
(5, 67, 1),
(5, 66, 1),
(5, 74, 1),
(5, 65, 1),
(5, 77, 1),
(5, 72, 1),
(6, 69, 2),
(6, 79, 2),
(6, 78, 2),
(6, 67, 2),
(6, 66, 2),
(6, 74, 2),
(6, 65, 2),
(6, 77, 2),
(6, 72, 2),
(20, 69, 1),
(20, 79, 1),
(20, 78, 1),
(20, 67, 1),
(20, 66, 1),
(20, 74, 1),
(20, 65, 1),
(20, 77, 1),
(20, 72, 1),
(17, 69, 1),
(17, 79, 1),
(17, 78, 1),
(17, 67, 1),
(17, 66, 1),
(17, 74, 1),
(17, 65, 1),
(17, 77, 1),
(17, 72, 1),
(15, 69, 1),
(15, 79, 1),
(15, 78, 1),
(15, 67, 1),
(15, 66, 1),
(15, 74, 1),
(15, 65, 1),
(15, 77, 1),
(15, 72, 1),
(13, 69, 1),
(13, 79, 1),
(13, 78, 1),
(13, 67, 1),
(13, 66, 1),
(13, 74, 1),
(13, 65, 1),
(13, 77, 1),
(13, 72, 1),
(14, 69, 2),
(14, 79, 2),
(14, 78, 2),
(14, 67, 2),
(14, 66, 2),
(14, 74, 2),
(14, 65, 2),
(14, 77, 2),
(14, 72, 2),
(7, 69, 1),
(7, 79, 1),
(7, 78, 1),
(7, 67, 1),
(7, 66, 1),
(7, 74, 1),
(7, 65, 1),
(7, 77, 1),
(7, 72, 1),
(8, 69, 2),
(8, 79, 2),
(8, 78, 2),
(8, 67, 2),
(8, 66, 2),
(8, 74, 2),
(8, 65, 2),
(8, 77, 2),
(8, 72, 2),
(9, 69, 3),
(9, 79, 3),
(9, 78, 3),
(9, 67, 3),
(9, 66, 3),
(9, 74, 3),
(9, 65, 3),
(9, 77, 3),
(9, 72, 3),
(10, 69, 4),
(10, 79, 4),
(10, 78, 4),
(10, 67, 4),
(10, 66, 4),
(10, 74, 4),
(10, 65, 4),
(10, 77, 4),
(10, 72, 4),
(32, 69, 1),
(32, 79, 1),
(32, 78, 1),
(32, 67, 1),
(32, 66, 1),
(32, 74, 1),
(32, 65, 1),
(32, 77, 1),
(32, 72, 1),
(30, 69, 1),
(30, 79, 1),
(30, 78, 1),
(30, 67, 1),
(30, 66, 1),
(30, 74, 1),
(30, 65, 1),
(30, 77, 1),
(30, 72, 1),
(28, 69, 1),
(28, 79, 1),
(28, 78, 1),
(28, 67, 1),
(28, 66, 1),
(28, 74, 1),
(28, 65, 1),
(28, 77, 1),
(28, 72, 1),
(29, 69, 1),
(29, 79, 1),
(29, 78, 1),
(29, 67, 1),
(29, 66, 1),
(29, 74, 1),
(29, 65, 1),
(29, 77, 1),
(29, 72, 1),
(22, 69, 1),
(22, 79, 1),
(22, 78, 1),
(22, 67, 1),
(22, 66, 1),
(22, 74, 1),
(22, 65, 1),
(22, 77, 1),
(22, 72, 1),
(23, 69, 2),
(23, 79, 2),
(23, 78, 2),
(23, 67, 2),
(23, 66, 2),
(23, 74, 2),
(23, 65, 2),
(23, 77, 2),
(23, 72, 2),
(24, 69, 1),
(24, 79, 1),
(24, 78, 1),
(24, 67, 1),
(24, 66, 1),
(24, 74, 1),
(24, 65, 1),
(24, 77, 1),
(24, 72, 1),
(25, 69, 2),
(25, 79, 2),
(25, 78, 2),
(25, 67, 2),
(25, 66, 2),
(25, 74, 2),
(25, 65, 2),
(25, 77, 2),
(25, 72, 2),
(26, 69, 3),
(26, 79, 3),
(26, 78, 3),
(26, 67, 3),
(26, 66, 3),
(26, 74, 3),
(26, 65, 3),
(26, 77, 3),
(26, 72, 3),
(27, 69, 4),
(27, 79, 4),
(27, 78, 4),
(27, 67, 4),
(27, 66, 4),
(27, 74, 4),
(27, 65, 4),
(27, 77, 4),
(27, 72, 4),
(33, 1, 1),
(33, 69, 1),
(33, 79, 1),
(33, 78, 1),
(33, 67, 1),
(33, 66, 1),
(33, 74, 1),
(33, 65, 1),
(33, 77, 1),
(33, 72, 1),
(33, 19, 1),
(33, 20, 1),
(33, 21, 1),
(33, 22, 1),
(33, 23, 1),
(33, 24, 1),
(33, 25, 1),
(33, 26, 1),
(33, 27, 1),
(33, 28, 1),
(33, 29, 1),
(33, 61, 1),
(33, 31, 1),
(33, 32, 1),
(33, 33, 1),
(33, 34, 1),
(33, 35, 1),
(33, 36, 1),
(33, 37, 1),
(33, 38, 1),
(33, 39, 1),
(33, 40, 1),
(33, 41, 1),
(33, 63, 1),
(33, 64, 1),
(33, 47, 1),
(33, 48, 1),
(33, 49, 1),
(33, 50, 1),
(33, 51, 1),
(33, 55, 1),
(33, 56, 1),
(33, 58, 1),
(33, 59, 1),
(33, 60, 1),
(34, 69, 1),
(14, 80, 2),
(7, 80, 1),
(8, 80, 2),
(9, 80, 3),
(32, 80, 1),
(30, 80, 1),
(28, 80, 1),
(29, 80, 1),
(22, 80, 1),
(23, 80, 2),
(24, 80, 1),
(25, 80, 2),
(26, 80, 3),
(27, 80, 4),
(71, 80, 1),
(71, 79, 1),
(71, 78, 1),
(71, 77, 1),
(71, 74, 1),
(71, 72, 1),
(71, 69, 1),
(71, 67, 1),
(71, 66, 1),
(71, 65, 1),
(71, 64, 1),
(71, 63, 1),
(71, 61, 1),
(71, 60, 1),
(71, 59, 1),
(71, 58, 1),
(71, 56, 1),
(71, 55, 1),
(71, 51, 1),
(71, 50, 1),
(71, 49, 1),
(71, 48, 1),
(71, 47, 1),
(71, 41, 1),
(71, 40, 1),
(71, 39, 1),
(71, 38, 1),
(71, 37, 1),
(71, 36, 1),
(71, 35, 1),
(71, 34, 1),
(71, 33, 1),
(71, 32, 1),
(71, 31, 1),
(71, 29, 1),
(71, 28, 1),
(71, 27, 1),
(71, 26, 1),
(71, 25, 1),
(71, 24, 1),
(71, 23, 1),
(71, 22, 1),
(71, 21, 1),
(71, 20, 1),
(71, 19, 1),
(71, 1, 1),
(60, 74, 2),
(70, 6, 1),
(70, 5, 1),
(70, 4, 1),
(70, 1, 1),
(69, 80, 2),
(69, 79, 2),
(69, 78, 2),
(69, 77, 2),
(69, 74, 2),
(69, 72, 2),
(69, 69, 2),
(69, 67, 2),
(69, 66, 2),
(69, 65, 2),
(69, 64, 2),
(69, 63, 2),
(69, 61, 2),
(69, 60, 2),
(69, 59, 2),
(69, 58, 2),
(69, 56, 2),
(69, 55, 2),
(69, 51, 2),
(69, 50, 2),
(69, 49, 2),
(69, 48, 2),
(69, 47, 2),
(69, 41, 2),
(69, 40, 2),
(69, 39, 2),
(69, 38, 2),
(69, 37, 2),
(69, 36, 2),
(69, 35, 2),
(69, 34, 2),
(69, 33, 2),
(69, 32, 2),
(69, 31, 2),
(69, 29, 2),
(69, 28, 2),
(69, 27, 2),
(69, 26, 2),
(69, 25, 2),
(69, 24, 2),
(69, 23, 2),
(69, 22, 2),
(69, 21, 2),
(69, 20, 2),
(69, 19, 2),
(69, 12, 2),
(69, 11, 2),
(69, 10, 2),
(69, 9, 2),
(69, 8, 2),
(69, 7, 2),
(69, 6, 2),
(69, 5, 2),
(69, 4, 2),
(69, 1, 2),
(68, 80, 1),
(68, 79, 1),
(68, 78, 1),
(68, 77, 1),
(68, 74, 1),
(68, 72, 1),
(68, 69, 1),
(68, 67, 1),
(68, 66, 1),
(68, 65, 1),
(68, 64, 1),
(68, 63, 1),
(68, 62, 1),
(68, 61, 1),
(68, 60, 1),
(68, 59, 1),
(68, 58, 1),
(68, 56, 1),
(68, 55, 1),
(68, 52, 1),
(68, 51, 1),
(68, 50, 1),
(68, 49, 1),
(68, 48, 1),
(68, 47, 1),
(68, 41, 1),
(68, 40, 1),
(68, 39, 1),
(68, 38, 1),
(68, 37, 1),
(68, 36, 1),
(68, 35, 1),
(68, 34, 1),
(68, 33, 1),
(68, 32, 1),
(68, 31, 1),
(68, 29, 1),
(68, 28, 1),
(68, 27, 1),
(68, 26, 1),
(68, 25, 1),
(68, 24, 1),
(68, 23, 1),
(68, 22, 1),
(68, 21, 1),
(68, 20, 1),
(68, 19, 1),
(68, 12, 1),
(68, 11, 1),
(68, 10, 1),
(68, 9, 1),
(68, 8, 1),
(68, 7, 1),
(68, 6, 1),
(68, 5, 1),
(68, 4, 1),
(68, 1, 1),
(60, 67, 2),
(60, 66, 2),
(60, 65, 2),
(60, 64, 2),
(60, 63, 2),
(60, 62, 2),
(60, 61, 2),
(60, 60, 2),
(60, 59, 2),
(60, 58, 2),
(60, 56, 2),
(60, 55, 2),
(60, 52, 2),
(60, 51, 2),
(60, 50, 2),
(60, 49, 2),
(60, 48, 2),
(60, 47, 2),
(60, 41, 2),
(60, 40, 2),
(60, 39, 2),
(60, 38, 2),
(60, 37, 3),
(60, 36, 3),
(60, 35, 3),
(60, 34, 3),
(60, 33, 3),
(60, 32, 3),
(60, 31, 3),
(60, 29, 2),
(60, 28, 3),
(60, 27, 3),
(60, 26, 3),
(60, 25, 3),
(60, 24, 3),
(60, 23, 3),
(60, 22, 3),
(60, 21, 3),
(60, 20, 3),
(60, 19, 3),
(60, 12, 3),
(60, 11, 3),
(60, 10, 3),
(60, 9, 3),
(60, 8, 3),
(60, 7, 3),
(60, 6, 3),
(60, 5, 3),
(60, 4, 3),
(60, 1, 2),
(59, 80, 1),
(59, 79, 1),
(59, 78, 1),
(59, 77, 1),
(59, 74, 1),
(59, 72, 1),
(59, 69, 1),
(59, 67, 1),
(59, 66, 1),
(59, 65, 1),
(59, 64, 1),
(59, 63, 1),
(59, 62, 1),
(59, 61, 1),
(59, 60, 1),
(59, 59, 1),
(59, 58, 1),
(59, 56, 1),
(59, 55, 1),
(59, 52, 1),
(59, 51, 1),
(59, 50, 1),
(59, 49, 1),
(59, 48, 1),
(59, 47, 1),
(59, 41, 1),
(59, 40, 1),
(59, 39, 1),
(59, 38, 1),
(59, 37, 2),
(59, 36, 2),
(59, 35, 2),
(59, 34, 2),
(59, 33, 2),
(59, 32, 2),
(59, 31, 2),
(59, 29, 1),
(59, 28, 2),
(59, 27, 2),
(59, 26, 2),
(59, 25, 2),
(59, 24, 2),
(59, 23, 2),
(59, 22, 2),
(59, 21, 2),
(59, 20, 2),
(59, 19, 2),
(59, 12, 2),
(59, 11, 2),
(59, 10, 2),
(59, 9, 2),
(59, 8, 2),
(59, 7, 2),
(59, 6, 2),
(59, 5, 2),
(59, 4, 2),
(59, 1, 1),
(58, 37, 1),
(58, 36, 1),
(58, 35, 1),
(58, 34, 1),
(58, 33, 1),
(58, 32, 1),
(58, 31, 1),
(58, 28, 1),
(58, 27, 1),
(58, 26, 1),
(58, 25, 1),
(58, 24, 1),
(58, 23, 1),
(58, 22, 1),
(58, 21, 1),
(58, 20, 1),
(58, 19, 1),
(57, 12, 1),
(57, 11, 1),
(57, 10, 1),
(57, 9, 1),
(57, 8, 1),
(57, 7, 1),
(57, 6, 1),
(57, 5, 1),
(57, 4, 1),
(60, 69, 2),
(56, 80, 1),
(56, 79, 1),
(56, 78, 1),
(56, 77, 1),
(56, 74, 1),
(56, 72, 1),
(56, 69, 1),
(56, 67, 1),
(56, 66, 1),
(56, 65, 1),
(56, 64, 1),
(56, 63, 1),
(56, 62, 1),
(56, 61, 1),
(56, 60, 1),
(56, 59, 1),
(56, 58, 1),
(56, 56, 1),
(56, 55, 1),
(56, 52, 1),
(56, 51, 1),
(56, 50, 1),
(56, 49, 1),
(56, 48, 1),
(56, 47, 1),
(56, 41, 1),
(56, 40, 1),
(56, 39, 1),
(56, 38, 1),
(56, 37, 1),
(56, 36, 1),
(56, 35, 1),
(56, 34, 1),
(56, 33, 1),
(56, 32, 1),
(56, 31, 1),
(56, 29, 1),
(56, 28, 1),
(56, 27, 1),
(56, 26, 1),
(56, 25, 1),
(56, 24, 1),
(56, 23, 1),
(56, 22, 1),
(56, 21, 1),
(56, 20, 1),
(56, 19, 1),
(56, 12, 1),
(56, 11, 1),
(56, 10, 1),
(56, 9, 1),
(56, 8, 1),
(56, 7, 1),
(56, 6, 1),
(56, 5, 1),
(56, 4, 1),
(56, 1, 1),
(60, 72, 2),
(55, 80, 1),
(55, 79, 1),
(55, 78, 1),
(55, 77, 1),
(55, 74, 1),
(55, 72, 1),
(55, 69, 1),
(55, 67, 1),
(55, 66, 1),
(55, 65, 1),
(55, 64, 1),
(55, 63, 1),
(55, 62, 1),
(55, 61, 1),
(55, 60, 1),
(55, 59, 1),
(55, 58, 1),
(55, 56, 1),
(55, 55, 1),
(55, 52, 1),
(55, 51, 1),
(55, 50, 1),
(55, 49, 1),
(55, 48, 1),
(55, 47, 1),
(55, 41, 1),
(55, 40, 1),
(55, 39, 1),
(55, 38, 1),
(55, 37, 1),
(55, 36, 1),
(55, 35, 1),
(55, 34, 1),
(55, 33, 1),
(55, 32, 1),
(55, 31, 1),
(55, 29, 1),
(55, 28, 1),
(55, 27, 1),
(55, 26, 1),
(55, 25, 1),
(55, 24, 1),
(55, 23, 1),
(55, 22, 1),
(55, 21, 1),
(55, 20, 1),
(55, 19, 1),
(55, 12, 1),
(55, 11, 1),
(55, 10, 1),
(55, 9, 1),
(55, 8, 1),
(55, 7, 1),
(55, 6, 1),
(55, 5, 1),
(55, 4, 1),
(55, 1, 1),
(60, 80, 2),
(73, 80, 2),
(73, 79, 2),
(73, 78, 2),
(73, 77, 2),
(73, 74, 2),
(73, 72, 2),
(73, 69, 2),
(73, 67, 2),
(73, 66, 2),
(73, 65, 2),
(73, 64, 2),
(73, 63, 2),
(73, 62, 2),
(73, 61, 2),
(73, 60, 2),
(73, 59, 2),
(73, 58, 2),
(73, 56, 2),
(73, 55, 2),
(73, 52, 2),
(73, 51, 2),
(73, 50, 2),
(73, 49, 2),
(73, 48, 2),
(73, 47, 2),
(73, 41, 2),
(73, 40, 2),
(73, 39, 2),
(73, 38, 2),
(73, 37, 2),
(73, 36, 2),
(73, 35, 2),
(73, 34, 2),
(73, 33, 2),
(73, 32, 2),
(73, 31, 2),
(73, 29, 2),
(73, 28, 2),
(73, 27, 2),
(73, 26, 2),
(73, 25, 2),
(73, 24, 2),
(73, 23, 2),
(73, 22, 2),
(73, 21, 2),
(73, 20, 2),
(73, 19, 2),
(73, 12, 2),
(73, 11, 2),
(73, 10, 2),
(73, 9, 2),
(73, 8, 2),
(73, 7, 2),
(73, 6, 2),
(73, 5, 2),
(73, 4, 2),
(73, 1, 2),
(72, 80, 1),
(72, 79, 1),
(72, 78, 1),
(72, 77, 1),
(72, 74, 1),
(72, 72, 1),
(72, 69, 1),
(72, 67, 1),
(72, 66, 1),
(72, 65, 1),
(72, 64, 1),
(72, 63, 1),
(72, 62, 1),
(72, 61, 1),
(72, 60, 1),
(72, 59, 1),
(72, 58, 1),
(72, 56, 1),
(72, 55, 1),
(72, 52, 1),
(72, 51, 1),
(72, 50, 1),
(72, 49, 1),
(72, 48, 1),
(72, 47, 1),
(72, 41, 1),
(72, 40, 1),
(72, 39, 1),
(72, 38, 1),
(72, 37, 1),
(72, 36, 1),
(72, 35, 1),
(72, 34, 1),
(72, 33, 1),
(72, 32, 1),
(72, 31, 1),
(72, 29, 1),
(72, 28, 1),
(72, 27, 1),
(72, 26, 1),
(72, 25, 1),
(72, 24, 1),
(72, 23, 1),
(72, 22, 1),
(72, 21, 1),
(72, 20, 1),
(72, 19, 1),
(72, 12, 1),
(72, 11, 1),
(72, 10, 1),
(72, 9, 1),
(72, 8, 1),
(72, 7, 1),
(72, 6, 1),
(72, 5, 1),
(72, 4, 1),
(72, 1, 1),
(63, 4, 3),
(63, 1, 3),
(62, 80, 2),
(62, 79, 2),
(62, 78, 2),
(62, 77, 2),
(62, 74, 2),
(62, 72, 2),
(62, 69, 2),
(62, 67, 2),
(62, 66, 2),
(62, 65, 2),
(62, 64, 2),
(62, 63, 2),
(62, 62, 2),
(62, 61, 2),
(62, 60, 2),
(62, 59, 2),
(62, 58, 2),
(62, 56, 2),
(62, 55, 2),
(62, 52, 2),
(62, 51, 2),
(62, 50, 2),
(62, 49, 2),
(62, 48, 2),
(62, 47, 2),
(62, 41, 2),
(62, 40, 2),
(62, 39, 2),
(62, 38, 2),
(62, 37, 2),
(62, 36, 2),
(62, 35, 2),
(62, 34, 2),
(62, 33, 2),
(62, 32, 2),
(62, 31, 2),
(62, 29, 2),
(62, 28, 2),
(62, 27, 2),
(62, 26, 2),
(62, 25, 2),
(62, 24, 2),
(62, 23, 2),
(62, 22, 2),
(62, 21, 2),
(62, 20, 2),
(62, 19, 2),
(62, 12, 2),
(62, 11, 2),
(62, 10, 2),
(62, 9, 2),
(62, 8, 2),
(62, 7, 2),
(62, 6, 2),
(62, 5, 2),
(62, 4, 2),
(62, 1, 2),
(61, 80, 1),
(61, 79, 1),
(61, 78, 1),
(61, 77, 1),
(61, 74, 1),
(61, 72, 1),
(61, 69, 1),
(61, 67, 1),
(61, 66, 1),
(61, 65, 1),
(61, 64, 1),
(61, 63, 1),
(61, 62, 1),
(61, 61, 1),
(61, 60, 1),
(61, 59, 1),
(61, 58, 1),
(61, 56, 1),
(61, 55, 1),
(61, 52, 1),
(61, 51, 1),
(61, 50, 1),
(61, 49, 1),
(61, 48, 1),
(61, 47, 1),
(61, 41, 1),
(61, 40, 1),
(61, 39, 1),
(61, 38, 1),
(61, 37, 1),
(61, 36, 1),
(61, 35, 1),
(61, 34, 1),
(61, 33, 1),
(61, 32, 1),
(61, 31, 1),
(61, 29, 1),
(61, 28, 1),
(61, 27, 1),
(61, 26, 1),
(61, 25, 1),
(61, 24, 1),
(61, 23, 1),
(61, 22, 1),
(61, 21, 1),
(61, 20, 1),
(61, 19, 1),
(61, 12, 1),
(61, 11, 1),
(61, 10, 1),
(61, 9, 1),
(61, 8, 1),
(61, 7, 1),
(61, 6, 1),
(61, 5, 1),
(61, 4, 1),
(61, 1, 1),
(60, 79, 2),
(60, 78, 2),
(60, 77, 2),
(53, 80, 1),
(53, 79, 1),
(53, 78, 1),
(53, 77, 1),
(53, 74, 1),
(53, 72, 1),
(53, 69, 1),
(53, 67, 1),
(53, 66, 1),
(53, 65, 1),
(53, 64, 1),
(53, 63, 1),
(53, 61, 1),
(53, 60, 1),
(53, 59, 1),
(53, 58, 1),
(53, 56, 1),
(53, 55, 1),
(53, 51, 1),
(53, 50, 1),
(53, 49, 1),
(53, 48, 1),
(53, 47, 1),
(53, 41, 1),
(53, 40, 1),
(53, 39, 1),
(53, 38, 1),
(53, 37, 1),
(53, 36, 1),
(53, 35, 1),
(53, 34, 1),
(53, 33, 1),
(53, 32, 1),
(53, 31, 1),
(53, 29, 1),
(53, 28, 1),
(53, 27, 1),
(53, 26, 1),
(53, 25, 1),
(53, 24, 1),
(53, 23, 1),
(53, 22, 1),
(53, 21, 1),
(53, 20, 1),
(53, 19, 1),
(53, 12, 1),
(53, 11, 1),
(53, 10, 1),
(53, 9, 1),
(53, 8, 1),
(53, 7, 1),
(53, 6, 1),
(53, 5, 1),
(53, 4, 1),
(53, 1, 1),
(63, 5, 3),
(63, 6, 3),
(63, 7, 3),
(63, 8, 3),
(63, 9, 3),
(63, 10, 3),
(63, 11, 3),
(63, 12, 3),
(63, 19, 3),
(63, 20, 3),
(63, 21, 3),
(63, 22, 3),
(63, 23, 3),
(63, 24, 3),
(63, 25, 3),
(63, 26, 3),
(63, 27, 3),
(63, 28, 3),
(63, 29, 3),
(63, 31, 3),
(63, 32, 3),
(63, 33, 3),
(63, 34, 3),
(63, 35, 3),
(63, 36, 3),
(63, 37, 3),
(63, 38, 3),
(63, 39, 3),
(63, 40, 3),
(63, 41, 3),
(63, 47, 3),
(63, 48, 3),
(63, 49, 3),
(63, 50, 3),
(63, 51, 3),
(63, 52, 3),
(63, 55, 3),
(63, 56, 3),
(63, 58, 3),
(63, 59, 3),
(63, 60, 3),
(63, 61, 3),
(63, 62, 3),
(63, 63, 3),
(63, 64, 3),
(63, 65, 3),
(63, 66, 3),
(63, 67, 3),
(63, 69, 3),
(63, 72, 3),
(63, 74, 3),
(63, 77, 3),
(63, 78, 3),
(63, 79, 3),
(63, 80, 3),
(65, 4, 1),
(66, 4, 2),
(70, 7, 1),
(70, 8, 1),
(70, 9, 1),
(70, 10, 1),
(70, 11, 1),
(70, 12, 1),
(70, 19, 1),
(70, 20, 1),
(70, 21, 1),
(70, 22, 1),
(70, 23, 1),
(70, 24, 1),
(70, 25, 1),
(70, 26, 1),
(70, 27, 1),
(70, 28, 1),
(70, 29, 1),
(70, 31, 1),
(70, 32, 1),
(70, 33, 1),
(70, 34, 1),
(70, 35, 1),
(70, 36, 1),
(70, 37, 1),
(70, 38, 1),
(70, 39, 1),
(70, 40, 1),
(70, 41, 1),
(70, 47, 1),
(70, 48, 1),
(70, 49, 1),
(70, 50, 1),
(70, 51, 1),
(70, 52, 1),
(70, 55, 1),
(70, 56, 1),
(70, 58, 1),
(70, 59, 1),
(70, 60, 1),
(70, 61, 1),
(70, 62, 1),
(70, 63, 1),
(70, 64, 1),
(70, 65, 1),
(70, 66, 1),
(70, 67, 1),
(70, 69, 1),
(70, 72, 1),
(70, 74, 1),
(70, 77, 1),
(70, 78, 1),
(70, 79, 1),
(70, 80, 1),
(74, 80, 1),
(74, 1, 1),
(74, 3, 1),
(74, 69, 1),
(74, 79, 1),
(74, 78, 1),
(74, 67, 1),
(74, 66, 1),
(74, 74, 1),
(74, 65, 1),
(74, 77, 1),
(74, 72, 1),
(74, 19, 1),
(74, 20, 1),
(74, 21, 1),
(74, 22, 1),
(74, 23, 1),
(74, 24, 1),
(74, 25, 1),
(74, 26, 1),
(74, 27, 1),
(74, 28, 1),
(74, 29, 1),
(74, 61, 1),
(74, 31, 1),
(74, 32, 1),
(74, 33, 1),
(74, 34, 1),
(74, 35, 1),
(74, 36, 1),
(74, 37, 1),
(74, 38, 1),
(74, 39, 1),
(74, 40, 1),
(74, 41, 1),
(74, 63, 1),
(74, 64, 1),
(74, 47, 1),
(74, 48, 1),
(74, 49, 1),
(74, 50, 1),
(74, 51, 1),
(74, 55, 1),
(74, 56, 1),
(74, 58, 1),
(74, 59, 1),
(74, 60, 1),
(76, 69, 1),
(77, 1, 1),
(78, 69, 1),
(79, 69, 1),
(80, 69, 2),
(81, 69, 3),
(82, 69, 4),
(83, 69, 1),
(84, 69, 1),
(85, 80, 1),
(85, 1, 1),
(85, 3, 1),
(85, 69, 1),
(85, 79, 1),
(85, 78, 1),
(85, 67, 1),
(85, 66, 1),
(85, 74, 1),
(85, 65, 1),
(85, 77, 1),
(85, 72, 1),
(85, 19, 1),
(85, 20, 1),
(85, 21, 1),
(85, 22, 1),
(85, 23, 1),
(85, 24, 1),
(85, 25, 1),
(85, 26, 1),
(85, 27, 1),
(85, 28, 1),
(85, 29, 1),
(85, 61, 1),
(85, 31, 1),
(85, 32, 1),
(85, 33, 1),
(85, 34, 1),
(85, 35, 1),
(85, 36, 1),
(85, 37, 1),
(85, 38, 1),
(85, 39, 1),
(85, 40, 1),
(85, 41, 1),
(85, 63, 1),
(85, 64, 1),
(85, 47, 1),
(85, 48, 1),
(85, 49, 1),
(85, 50, 1),
(85, 51, 1),
(85, 55, 1),
(85, 56, 1),
(85, 58, 1),
(85, 59, 1),
(85, 60, 1),
(86, 80, 4),
(87, 69, 1),
(88, 80, 5),
(88, 1, 4),
(88, 3, 1),
(88, 69, 4),
(88, 79, 4),
(88, 78, 4),
(88, 67, 4),
(88, 66, 4),
(88, 74, 4),
(88, 65, 4),
(88, 77, 4),
(88, 72, 4),
(88, 19, 4),
(88, 20, 4),
(88, 21, 4),
(88, 22, 4),
(88, 23, 4),
(88, 24, 4),
(88, 25, 4),
(88, 26, 4),
(88, 27, 4),
(88, 28, 4),
(88, 29, 4),
(88, 61, 4),
(88, 31, 4),
(88, 32, 4),
(88, 33, 4),
(88, 34, 4),
(88, 35, 4),
(88, 36, 4),
(88, 37, 4),
(88, 38, 4),
(88, 39, 4),
(88, 40, 4),
(88, 41, 4),
(88, 63, 4),
(88, 64, 4),
(88, 47, 4),
(88, 48, 4),
(88, 49, 4),
(88, 50, 4),
(88, 51, 4),
(88, 55, 4),
(88, 56, 4),
(88, 58, 4),
(88, 59, 4),
(88, 60, 4),
(89, 80, 6),
(89, 1, 5),
(89, 3, 2),
(89, 69, 5),
(89, 79, 5),
(89, 78, 5),
(89, 67, 5),
(89, 66, 5),
(89, 74, 5),
(89, 65, 5),
(89, 77, 5),
(89, 72, 5),
(89, 19, 5),
(89, 20, 5),
(89, 21, 5),
(89, 22, 5),
(89, 23, 5),
(89, 24, 5),
(89, 25, 5),
(89, 26, 5),
(89, 27, 5),
(89, 28, 5),
(89, 29, 5),
(89, 61, 5),
(89, 31, 5),
(89, 32, 5),
(89, 33, 5),
(89, 34, 5),
(89, 35, 5),
(89, 36, 5),
(89, 37, 5),
(89, 38, 5),
(89, 39, 5),
(89, 40, 5),
(89, 41, 5),
(89, 63, 5),
(89, 64, 5),
(89, 47, 5),
(89, 48, 5),
(89, 49, 5),
(89, 50, 5),
(89, 51, 5),
(89, 55, 5),
(89, 56, 5),
(89, 58, 5),
(89, 59, 5),
(89, 60, 5),
(90, 80, 7),
(90, 1, 6),
(90, 3, 3),
(90, 69, 6),
(90, 79, 6),
(90, 78, 6),
(90, 67, 6),
(90, 66, 6),
(90, 74, 6),
(90, 65, 6),
(90, 77, 6),
(90, 72, 6),
(90, 19, 6),
(90, 20, 6),
(90, 21, 6),
(90, 22, 6),
(90, 23, 6),
(90, 24, 6),
(90, 25, 6),
(90, 26, 6),
(90, 27, 6),
(90, 28, 6),
(90, 29, 6),
(90, 61, 6),
(90, 31, 6),
(90, 32, 6),
(90, 33, 6),
(90, 34, 6),
(90, 35, 6),
(90, 36, 6),
(90, 37, 6),
(90, 38, 6),
(90, 39, 6),
(90, 40, 6),
(90, 41, 6),
(90, 63, 6),
(90, 64, 6),
(90, 47, 6),
(90, 48, 6),
(90, 49, 6),
(90, 50, 6),
(90, 51, 6),
(90, 55, 6),
(90, 56, 6),
(90, 58, 6),
(90, 59, 6),
(90, 60, 6),
(91, 69, 5),
(92, 80, 1),
(92, 1, 1),
(92, 3, 1),
(92, 69, 1),
(92, 79, 1),
(92, 78, 1),
(92, 67, 1),
(92, 66, 1),
(92, 74, 1),
(92, 65, 1),
(92, 77, 1),
(92, 72, 1),
(92, 19, 1),
(92, 20, 1),
(92, 21, 1),
(92, 22, 1),
(92, 23, 1),
(92, 24, 1),
(92, 25, 1),
(92, 26, 1),
(92, 27, 1),
(92, 28, 1),
(92, 29, 1),
(92, 61, 1),
(92, 31, 1),
(92, 32, 1),
(92, 33, 1),
(92, 34, 1),
(92, 35, 1),
(92, 36, 1),
(92, 37, 1),
(92, 38, 1),
(92, 39, 1),
(92, 40, 1),
(92, 41, 1),
(92, 63, 1),
(92, 64, 1),
(92, 47, 1),
(92, 48, 1),
(92, 49, 1),
(92, 50, 1),
(92, 51, 1),
(92, 55, 1),
(92, 56, 1),
(92, 58, 1),
(92, 59, 1),
(92, 60, 1),
(93, 69, 1),
(94, 69, 1),
(95, 69, 1),
(96, 1, 1),
(97, 69, 1),
(98, 1, 1),
(98, 3, 1),
(98, 19, 1),
(98, 20, 1),
(98, 21, 1),
(98, 22, 1),
(98, 23, 1),
(98, 24, 1),
(98, 25, 1),
(98, 26, 1),
(98, 27, 1),
(98, 28, 1),
(98, 29, 1),
(98, 31, 1),
(98, 32, 1),
(98, 33, 1),
(98, 34, 1),
(98, 35, 1),
(98, 36, 1),
(98, 37, 1),
(98, 38, 1),
(98, 39, 1),
(98, 40, 1),
(98, 41, 1),
(98, 47, 1),
(98, 48, 1),
(98, 49, 1),
(98, 50, 1),
(98, 51, 1),
(98, 55, 1),
(98, 56, 1),
(98, 58, 1),
(98, 59, 1),
(98, 60, 1),
(98, 61, 1),
(98, 63, 1),
(98, 64, 1),
(98, 65, 1),
(98, 66, 1),
(98, 67, 1),
(98, 69, 1),
(98, 72, 1),
(98, 74, 1),
(98, 77, 1),
(98, 78, 1),
(98, 79, 1),
(98, 80, 1),
(102, 1, 1),
(102, 4, 1),
(102, 5, 1),
(102, 6, 1),
(102, 7, 1),
(102, 8, 1),
(102, 9, 1),
(102, 10, 1),
(102, 11, 1),
(102, 12, 1),
(102, 19, 1),
(102, 20, 1),
(102, 21, 1),
(102, 22, 1),
(102, 23, 1),
(102, 24, 1),
(102, 25, 1),
(102, 26, 1),
(102, 27, 1),
(102, 28, 1),
(102, 29, 1),
(102, 31, 1),
(102, 32, 1),
(102, 33, 1),
(102, 34, 1),
(102, 35, 1),
(102, 36, 1),
(102, 37, 1),
(102, 38, 1),
(102, 39, 1),
(102, 40, 1),
(102, 41, 1),
(102, 47, 1),
(102, 48, 1),
(102, 49, 1),
(102, 50, 1),
(102, 51, 1),
(102, 52, 1),
(102, 55, 1),
(102, 56, 1),
(102, 58, 1),
(102, 59, 1),
(102, 60, 1),
(102, 61, 1),
(102, 62, 1),
(102, 63, 1),
(102, 64, 1),
(102, 65, 1),
(102, 66, 1),
(102, 67, 1),
(102, 69, 1),
(102, 72, 1),
(102, 74, 1),
(102, 77, 1),
(102, 78, 1),
(102, 79, 1),
(102, 80, 1),
(103, 1, 1),
(103, 4, 1),
(103, 5, 1),
(103, 6, 1),
(103, 7, 1),
(103, 8, 1),
(103, 9, 1),
(103, 10, 1),
(103, 11, 1),
(103, 12, 1),
(103, 19, 1),
(103, 20, 1),
(103, 21, 1),
(103, 22, 1),
(103, 23, 1),
(103, 24, 1),
(103, 25, 1),
(103, 26, 1),
(103, 27, 1),
(103, 28, 1),
(103, 29, 1),
(103, 31, 1),
(103, 32, 1),
(103, 33, 1),
(103, 34, 1),
(103, 35, 1),
(103, 36, 1),
(103, 37, 1),
(103, 38, 1),
(103, 39, 1),
(103, 40, 1),
(103, 41, 1),
(103, 47, 1),
(103, 48, 1),
(103, 49, 1),
(103, 50, 1),
(103, 51, 1),
(103, 52, 1),
(103, 55, 1),
(103, 56, 1),
(103, 58, 1),
(103, 59, 1),
(103, 60, 1),
(103, 61, 1),
(103, 62, 1),
(103, 63, 1),
(103, 64, 1),
(103, 65, 1),
(103, 66, 1),
(103, 67, 1),
(103, 69, 1),
(103, 72, 1),
(103, 74, 1),
(103, 77, 1),
(103, 78, 1),
(103, 79, 1),
(103, 80, 1),
(104, 1, 1),
(104, 4, 2),
(104, 5, 2),
(104, 6, 2),
(104, 7, 2),
(104, 8, 2),
(104, 9, 2),
(104, 10, 2),
(104, 11, 2),
(104, 12, 2),
(104, 19, 2),
(104, 20, 2),
(104, 21, 2),
(104, 22, 2),
(104, 23, 2),
(104, 24, 2),
(104, 25, 2),
(104, 26, 2),
(104, 27, 2),
(104, 28, 2),
(104, 29, 1),
(104, 31, 2),
(104, 32, 2),
(104, 33, 2),
(104, 34, 2),
(104, 35, 2),
(104, 36, 2),
(104, 37, 2),
(104, 38, 1),
(104, 39, 1),
(104, 40, 1),
(104, 41, 1),
(104, 47, 1),
(104, 48, 1),
(104, 49, 1),
(104, 50, 1),
(104, 51, 1),
(104, 52, 1),
(104, 55, 1),
(104, 56, 1),
(104, 58, 1),
(104, 59, 1),
(104, 60, 1),
(104, 61, 1),
(104, 62, 1),
(104, 63, 1),
(104, 64, 1),
(104, 65, 1),
(104, 66, 1),
(104, 67, 1),
(104, 69, 1),
(104, 72, 1),
(104, 74, 1),
(104, 77, 1),
(104, 78, 1),
(104, 79, 1),
(104, 80, 1),
(105, 19, 1),
(105, 20, 1),
(105, 21, 1),
(105, 22, 1),
(105, 23, 1),
(105, 24, 1),
(105, 25, 1),
(105, 26, 1),
(105, 27, 1),
(105, 28, 1),
(105, 31, 1),
(105, 32, 1),
(105, 33, 1),
(105, 34, 1),
(105, 35, 1),
(105, 36, 1),
(105, 37, 1),
(106, 4, 1),
(106, 5, 1),
(106, 6, 1),
(106, 7, 1),
(106, 8, 1),
(106, 9, 1),
(106, 10, 1),
(106, 11, 1),
(106, 12, 1),
(107, 1, 2),
(107, 4, 3),
(107, 5, 3),
(107, 6, 3),
(107, 7, 3),
(107, 8, 3),
(107, 9, 3),
(107, 10, 3),
(107, 11, 3),
(107, 12, 3),
(107, 19, 3),
(107, 20, 3),
(107, 21, 3),
(107, 22, 3),
(107, 23, 3),
(107, 24, 3),
(107, 25, 3),
(107, 26, 3),
(107, 27, 3),
(107, 28, 3),
(107, 29, 2),
(107, 31, 3),
(107, 32, 3),
(107, 33, 3),
(107, 34, 3),
(107, 35, 3),
(107, 36, 3),
(107, 37, 3),
(107, 38, 2),
(107, 39, 2),
(107, 40, 2),
(107, 41, 2),
(107, 47, 2),
(107, 48, 2),
(107, 49, 2),
(107, 50, 2),
(107, 51, 2),
(107, 52, 2),
(107, 55, 2),
(107, 56, 2),
(107, 58, 2),
(107, 59, 2),
(107, 60, 2),
(107, 61, 2),
(107, 62, 2),
(107, 63, 2),
(107, 64, 2),
(107, 65, 2),
(107, 66, 2),
(107, 67, 2),
(107, 69, 2),
(107, 72, 2),
(107, 74, 2),
(107, 77, 2),
(107, 78, 2),
(107, 79, 2),
(107, 80, 2),
(108, 1, 1),
(108, 4, 1),
(108, 5, 1),
(108, 6, 1),
(108, 7, 1),
(108, 8, 1),
(108, 9, 1),
(108, 10, 1),
(108, 11, 1),
(108, 12, 1),
(108, 19, 1),
(108, 20, 1),
(108, 21, 1),
(108, 22, 1),
(108, 23, 1),
(108, 24, 1),
(108, 25, 1),
(108, 26, 1),
(108, 27, 1),
(108, 28, 1),
(108, 29, 1),
(108, 31, 1),
(108, 32, 1),
(108, 33, 1),
(108, 34, 1),
(108, 35, 1),
(108, 36, 1),
(108, 37, 1),
(108, 38, 1),
(108, 39, 1),
(108, 40, 1),
(108, 41, 1),
(108, 47, 1),
(108, 48, 1),
(108, 49, 1),
(108, 50, 1),
(108, 51, 1),
(108, 52, 1),
(108, 55, 1),
(108, 56, 1),
(108, 58, 1),
(108, 59, 1),
(108, 60, 1),
(108, 61, 1),
(108, 62, 1),
(108, 63, 1),
(108, 64, 1),
(108, 65, 1),
(108, 66, 1),
(108, 67, 1),
(108, 69, 1),
(108, 72, 1),
(108, 74, 1),
(108, 77, 1),
(108, 78, 1),
(108, 79, 1),
(108, 80, 1),
(109, 1, 2),
(109, 4, 2),
(109, 5, 2),
(109, 6, 2),
(109, 7, 2),
(109, 8, 2),
(109, 9, 2),
(109, 10, 2),
(109, 11, 2),
(109, 12, 2),
(109, 19, 2),
(109, 20, 2),
(109, 21, 2),
(109, 22, 2),
(109, 23, 2),
(109, 24, 2),
(109, 25, 2),
(109, 26, 2),
(109, 27, 2),
(109, 28, 2),
(109, 29, 2),
(109, 31, 2),
(109, 32, 2),
(109, 33, 2),
(109, 34, 2),
(109, 35, 2),
(109, 36, 2),
(109, 37, 2),
(109, 38, 2),
(109, 39, 2),
(109, 40, 2),
(109, 41, 2),
(109, 47, 2),
(109, 48, 2),
(109, 49, 2),
(109, 50, 2),
(109, 51, 2),
(109, 52, 2),
(109, 55, 2),
(109, 56, 2),
(109, 58, 2),
(109, 59, 2),
(109, 60, 2),
(109, 61, 2),
(109, 62, 2),
(109, 63, 2),
(109, 64, 2),
(109, 65, 2),
(109, 66, 2),
(109, 67, 2),
(109, 69, 2),
(109, 72, 2),
(109, 74, 2),
(109, 77, 2),
(109, 78, 2),
(109, 79, 2),
(109, 80, 2),
(110, 1, 3),
(110, 4, 3),
(110, 5, 3),
(110, 6, 3),
(110, 7, 3),
(110, 8, 3),
(110, 9, 3),
(110, 10, 3),
(110, 11, 3),
(110, 12, 3),
(110, 19, 3),
(110, 20, 3),
(110, 21, 3),
(110, 22, 3),
(110, 23, 3),
(110, 24, 3),
(110, 25, 3),
(110, 26, 3),
(110, 27, 3),
(110, 28, 3),
(110, 29, 3),
(110, 31, 3),
(110, 32, 3),
(110, 33, 3),
(110, 34, 3),
(110, 35, 3),
(110, 36, 3),
(110, 37, 3),
(110, 38, 3),
(110, 39, 3),
(110, 40, 3),
(110, 41, 3),
(110, 47, 3),
(110, 48, 3),
(110, 49, 3),
(110, 50, 3),
(110, 51, 3),
(110, 52, 3),
(110, 55, 3),
(110, 56, 3),
(110, 58, 3),
(110, 59, 3),
(110, 60, 3),
(110, 61, 3),
(110, 62, 3),
(110, 63, 3),
(110, 64, 3),
(110, 65, 3),
(110, 66, 3),
(110, 67, 3),
(110, 69, 3),
(110, 72, 3),
(110, 74, 3),
(110, 77, 3),
(110, 78, 3),
(110, 79, 3),
(110, 80, 3),
(111, 80, 4),
(112, 1, 4),
(112, 3, 1),
(112, 19, 4),
(112, 20, 4),
(112, 21, 4),
(112, 22, 4),
(112, 23, 4),
(112, 24, 4),
(112, 25, 4),
(112, 26, 4),
(112, 27, 4),
(112, 28, 4),
(112, 29, 4),
(112, 31, 4),
(112, 32, 4),
(112, 33, 4),
(112, 34, 4),
(112, 35, 4),
(112, 36, 4),
(112, 37, 4),
(112, 38, 4),
(112, 39, 4),
(112, 40, 4),
(112, 41, 4),
(112, 47, 4),
(112, 48, 4),
(112, 49, 4),
(112, 50, 4),
(112, 51, 4),
(112, 55, 4),
(112, 56, 4),
(112, 58, 4),
(112, 59, 4),
(112, 60, 4),
(112, 61, 4),
(112, 63, 4),
(112, 64, 4),
(112, 65, 4),
(112, 66, 4),
(112, 67, 4),
(112, 69, 4),
(112, 72, 4),
(112, 74, 4),
(112, 77, 4),
(112, 78, 4),
(112, 79, 4),
(112, 80, 5),
(113, 1, 5),
(113, 3, 2),
(113, 19, 5),
(113, 20, 5),
(113, 21, 5),
(113, 22, 5),
(113, 23, 5),
(113, 24, 5),
(113, 25, 5),
(113, 26, 5),
(113, 27, 5),
(113, 28, 5),
(113, 29, 5),
(113, 31, 5),
(113, 32, 5),
(113, 33, 5),
(113, 34, 5),
(113, 35, 5),
(113, 36, 5),
(113, 37, 5),
(113, 38, 5),
(113, 39, 5),
(113, 40, 5),
(113, 41, 5),
(113, 47, 5),
(113, 48, 5),
(113, 49, 5),
(113, 50, 5),
(113, 51, 5),
(113, 55, 5),
(113, 56, 5),
(113, 58, 5),
(113, 59, 5),
(113, 60, 5),
(113, 61, 5),
(113, 63, 5),
(113, 64, 5),
(113, 65, 5),
(113, 66, 5),
(113, 67, 5),
(113, 69, 5),
(113, 72, 5),
(113, 74, 5),
(113, 77, 5),
(113, 78, 5),
(113, 79, 5),
(113, 80, 6),
(114, 1, 6),
(114, 3, 3),
(114, 19, 6),
(114, 20, 6),
(114, 21, 6),
(114, 22, 6),
(114, 23, 6),
(114, 24, 6),
(114, 25, 6),
(114, 26, 6),
(114, 27, 6),
(114, 28, 6),
(114, 29, 6),
(114, 31, 6),
(114, 32, 6),
(114, 33, 6),
(114, 34, 6),
(114, 35, 6),
(114, 36, 6),
(114, 37, 6),
(114, 38, 6),
(114, 39, 6),
(114, 40, 6),
(114, 41, 6),
(114, 47, 6),
(114, 48, 6),
(114, 49, 6),
(114, 50, 6),
(114, 51, 6),
(114, 55, 6),
(114, 56, 6),
(114, 58, 6),
(114, 59, 6),
(114, 60, 6),
(114, 61, 6),
(114, 63, 6),
(114, 64, 6),
(114, 65, 6),
(114, 66, 6),
(114, 67, 6),
(114, 69, 6),
(114, 72, 6),
(114, 74, 6),
(114, 77, 6),
(114, 78, 6),
(114, 79, 6),
(114, 80, 7),
(115, 4, 1),
(116, 4, 2),
(117, 69, 1),
(118, 69, 2),
(119, 69, 3),
(120, 69, 4),
(121, 69, 5),
(122, 69, 1),
(124, 1, 1),
(124, 4, 1),
(124, 5, 1),
(124, 6, 1),
(124, 7, 1),
(124, 8, 1),
(124, 9, 1),
(124, 10, 1),
(124, 11, 1),
(124, 12, 1),
(124, 19, 1),
(124, 20, 1),
(124, 21, 1),
(124, 22, 1),
(124, 23, 1),
(124, 24, 1),
(124, 25, 1),
(124, 26, 1),
(124, 27, 1),
(124, 28, 1),
(124, 29, 1),
(124, 31, 1),
(124, 32, 1),
(124, 33, 1),
(124, 34, 1),
(124, 35, 1),
(124, 36, 1),
(124, 37, 1),
(124, 38, 1),
(124, 39, 1),
(124, 40, 1),
(124, 41, 1),
(124, 47, 1),
(124, 48, 1),
(124, 49, 1),
(124, 50, 1),
(124, 51, 1),
(124, 52, 1),
(124, 55, 1),
(124, 56, 1),
(124, 58, 1),
(124, 59, 1),
(124, 60, 1),
(124, 61, 1),
(124, 62, 1),
(124, 63, 1),
(124, 64, 1),
(124, 65, 1),
(124, 66, 1),
(124, 67, 1),
(124, 69, 1),
(124, 72, 1),
(124, 74, 1),
(124, 77, 1),
(124, 78, 1),
(124, 79, 1),
(124, 80, 1),
(126, 1, 1),
(126, 19, 1),
(126, 20, 1),
(126, 21, 1),
(126, 22, 1),
(126, 23, 1),
(126, 24, 1),
(126, 25, 1),
(126, 26, 1),
(126, 27, 1),
(126, 28, 1),
(126, 29, 1),
(126, 31, 1),
(126, 32, 1),
(126, 33, 1),
(126, 34, 1),
(126, 35, 1),
(126, 36, 1),
(126, 37, 1),
(126, 38, 1),
(126, 39, 1),
(126, 40, 1),
(126, 41, 1),
(126, 47, 1),
(126, 48, 1),
(126, 49, 1),
(126, 50, 1),
(126, 51, 1),
(126, 55, 1),
(126, 56, 1),
(126, 58, 1),
(126, 59, 1),
(126, 60, 1),
(126, 61, 1),
(126, 63, 1),
(126, 64, 1),
(126, 65, 1),
(126, 66, 1),
(126, 67, 1),
(126, 69, 1),
(126, 72, 1),
(126, 74, 1),
(126, 77, 1),
(126, 78, 1),
(126, 79, 1),
(126, 80, 1),
(127, 1, 2),
(127, 4, 2),
(127, 5, 2),
(127, 6, 2),
(127, 7, 2),
(127, 8, 2),
(127, 9, 2),
(127, 10, 2),
(127, 11, 2),
(127, 12, 2),
(127, 19, 2),
(127, 20, 2),
(127, 21, 2),
(127, 22, 2),
(127, 23, 2),
(127, 24, 2),
(127, 25, 2),
(127, 26, 2),
(127, 27, 2),
(127, 28, 2),
(127, 29, 2),
(127, 31, 2),
(127, 32, 2),
(127, 33, 2),
(127, 34, 2),
(127, 35, 2),
(127, 36, 2),
(127, 37, 2),
(127, 38, 2),
(127, 39, 2),
(127, 40, 2),
(127, 41, 2),
(127, 47, 2),
(127, 48, 2),
(127, 49, 2),
(127, 50, 2),
(127, 51, 2),
(127, 52, 2),
(127, 55, 2),
(127, 56, 2),
(127, 58, 2),
(127, 59, 2),
(127, 60, 2),
(127, 61, 2),
(127, 62, 2),
(127, 63, 2),
(127, 64, 2),
(127, 65, 2),
(127, 66, 2),
(127, 67, 2),
(127, 69, 2),
(127, 72, 2),
(127, 74, 2),
(127, 77, 2),
(127, 78, 2),
(127, 79, 2),
(127, 80, 2),
(128, 1, 1),
(128, 4, 1),
(128, 5, 1),
(128, 6, 1),
(128, 7, 1),
(128, 8, 1),
(128, 9, 1),
(128, 10, 1),
(128, 11, 1),
(128, 12, 1),
(128, 19, 1),
(128, 20, 1),
(128, 21, 1),
(128, 22, 1),
(128, 23, 1),
(128, 24, 1),
(128, 25, 1),
(128, 26, 1),
(128, 27, 1),
(128, 28, 1),
(128, 29, 1),
(128, 31, 1),
(128, 32, 1),
(128, 33, 1),
(128, 34, 1),
(128, 35, 1),
(128, 36, 1),
(128, 37, 1),
(128, 38, 1),
(128, 39, 1),
(128, 40, 1),
(128, 41, 1),
(128, 47, 1),
(128, 48, 1),
(128, 49, 1),
(128, 50, 1),
(128, 51, 1),
(128, 52, 1),
(128, 55, 1),
(128, 56, 1),
(128, 58, 1),
(128, 59, 1),
(128, 60, 1),
(128, 61, 1),
(128, 62, 1),
(128, 63, 1),
(128, 64, 1),
(128, 65, 1),
(128, 66, 1),
(128, 67, 1),
(128, 69, 1),
(128, 72, 1),
(128, 74, 1),
(128, 77, 1),
(128, 78, 1),
(128, 79, 1),
(128, 80, 1),
(129, 80, 1),
(129, 1, 1),
(129, 3, 1),
(129, 69, 1),
(129, 79, 1),
(129, 78, 1),
(129, 67, 1),
(129, 66, 1),
(129, 74, 1),
(129, 65, 1),
(129, 77, 1),
(129, 72, 1),
(129, 19, 1),
(129, 20, 1),
(129, 21, 1),
(129, 22, 1),
(129, 23, 1),
(129, 24, 1),
(129, 25, 1),
(129, 26, 1),
(129, 27, 1),
(129, 28, 1),
(129, 29, 1),
(129, 61, 1),
(129, 31, 1),
(129, 32, 1),
(129, 33, 1),
(129, 34, 1),
(129, 35, 1),
(129, 36, 1),
(129, 37, 1),
(129, 38, 1),
(129, 39, 1),
(129, 40, 1),
(129, 41, 1),
(129, 63, 1),
(129, 64, 1),
(129, 47, 1),
(129, 48, 1),
(129, 49, 1),
(129, 50, 1),
(129, 51, 1),
(129, 55, 1),
(129, 56, 1),
(129, 58, 1),
(129, 59, 1),
(129, 60, 1),
(130, 80, 1),
(130, 1, 1),
(130, 3, 1),
(130, 69, 1),
(130, 79, 1),
(130, 78, 1),
(130, 67, 1),
(130, 66, 1),
(130, 74, 1),
(130, 65, 1),
(130, 77, 1),
(130, 72, 1),
(130, 19, 1),
(130, 20, 1),
(130, 21, 1),
(130, 22, 1),
(130, 23, 1),
(130, 24, 1),
(130, 25, 1),
(130, 26, 1),
(130, 27, 1),
(130, 28, 1),
(130, 29, 1),
(130, 61, 1),
(130, 31, 1),
(130, 32, 1),
(130, 33, 1),
(130, 34, 1),
(130, 35, 1),
(130, 36, 1),
(130, 37, 1),
(130, 38, 1),
(130, 39, 1),
(130, 40, 1),
(130, 41, 1),
(130, 63, 1),
(130, 64, 1),
(130, 47, 1),
(130, 48, 1),
(130, 49, 1),
(130, 50, 1),
(130, 51, 1),
(130, 55, 1),
(130, 56, 1),
(130, 58, 1),
(130, 59, 1),
(130, 60, 1),
(132, 80, 1),
(132, 1, 1),
(132, 3, 1),
(132, 69, 1),
(132, 79, 1),
(132, 78, 1),
(132, 67, 1),
(132, 66, 1),
(132, 74, 1),
(132, 65, 1),
(132, 77, 1),
(132, 72, 1),
(132, 19, 1),
(132, 20, 1),
(132, 21, 1),
(132, 22, 1),
(132, 23, 1),
(132, 24, 1),
(132, 25, 1),
(132, 26, 1),
(132, 27, 1),
(132, 28, 1),
(132, 29, 1),
(132, 61, 1),
(132, 31, 1),
(132, 32, 1),
(132, 33, 1),
(132, 34, 1),
(132, 35, 1),
(132, 36, 1),
(132, 37, 1),
(132, 38, 1),
(132, 39, 1),
(132, 40, 1),
(132, 41, 1),
(132, 63, 1),
(132, 64, 1),
(132, 47, 1),
(132, 48, 1),
(132, 49, 1),
(132, 50, 1),
(132, 51, 1),
(132, 55, 1),
(132, 56, 1),
(132, 58, 1),
(132, 59, 1),
(132, 60, 1),
(133, 80, 1),
(133, 1, 1),
(133, 3, 1),
(133, 69, 1),
(133, 79, 1),
(133, 78, 1),
(133, 67, 1),
(133, 66, 1),
(133, 74, 1),
(133, 65, 1),
(133, 77, 1),
(133, 72, 1),
(133, 19, 1),
(133, 20, 1),
(133, 21, 1),
(133, 22, 1),
(133, 23, 1),
(133, 24, 1),
(133, 25, 1),
(133, 26, 1),
(133, 27, 1),
(133, 28, 1),
(133, 29, 1),
(133, 61, 1),
(133, 31, 1),
(133, 32, 1),
(133, 33, 1),
(133, 34, 1),
(133, 35, 1),
(133, 36, 1),
(133, 37, 1),
(133, 38, 1),
(133, 39, 1),
(133, 40, 1),
(133, 41, 1),
(133, 63, 1),
(133, 64, 1),
(133, 47, 1),
(133, 48, 1),
(133, 49, 1),
(133, 50, 1),
(133, 51, 1),
(133, 55, 1),
(133, 56, 1),
(133, 58, 1),
(133, 59, 1),
(133, 60, 1),
(134, 80, 1),
(134, 1, 1),
(134, 3, 1),
(134, 69, 1),
(134, 79, 1),
(134, 78, 1),
(134, 67, 1),
(134, 66, 1),
(134, 74, 1),
(134, 65, 1),
(134, 77, 1),
(134, 72, 1),
(134, 19, 1),
(134, 20, 1),
(134, 21, 1),
(134, 22, 1),
(134, 23, 1),
(134, 24, 1),
(134, 25, 1),
(134, 26, 1),
(134, 27, 1),
(134, 28, 1),
(134, 29, 1),
(134, 61, 1),
(134, 31, 1),
(134, 32, 1),
(134, 33, 1),
(134, 34, 1),
(134, 35, 1),
(134, 36, 1),
(134, 37, 1),
(134, 38, 1),
(134, 39, 1),
(134, 40, 1),
(134, 41, 1),
(134, 63, 1),
(134, 64, 1),
(134, 47, 1),
(134, 48, 1),
(134, 49, 1),
(134, 50, 1),
(134, 51, 1),
(134, 55, 1),
(134, 56, 1),
(134, 58, 1),
(134, 59, 1),
(134, 60, 1),
(126, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_1`
--

CREATE TABLE `nv4_vi_blogs_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_2`
--

CREATE TABLE `nv4_vi_blogs_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_2`
--

INSERT INTO `nv4_vi_blogs_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(15, 2, '2', 0, 1, '', 0, 1498807237, 1498807237, 1, 11, 1498807140, 0, 2, 'Virus tống tiền tấn công hàng loạt ngân hàng, nhà ga châu Âu', 'virus-tong-tien-tan-cong-hang-loat-ngan-hang-nha-ga-chau-au', 'Một mã độc tống tiền giống WannaCry vừa tấn công, gây tê liệt nhiều ngân hàng, sân bay, máy ATM và một số doanh nghiệp lớn tại châu Âu. Theo The Verge, một loại mã độc tống tiền (ransomware) vừa tấn công và khiến nhiều công sở, công ty ở châu Âu phải tạm dừng hoạt động. Trong đó, ảnh hưởng nhiều nhất được ghi nhận là ở Ukraine khi ngân hàng trung ương,', '2017_06/screen-shot-2017-06-27-at-11-4-1765-7833-1498582425.jpg', 'Screen Shot 2017 06 27 at 11 4 1765 7833 1498582425', 1, 1, '6', 1, 0, 29, 0, 0, 0, 0, '', 0),
(16, 2, '2', 0, 1, '', 0, 1498807339, 1498807339, 1, 12, 1498807260, 0, 2, 'Việt Nam chịu tấn công mạng qua IoT nhiều thứ hai thế giới', 'viet-nam-chiu-tan-cong-mang-qua-iot-nhieu-thu-hai-the-gioi', 'ỷ lệ thiết bị IoT như camera an ninh, router... bị nhiễm mã độc, tấn công mạng ở Việt Nam chỉ đứng sau Trung Quốc. Theo báo cáo từ Kaspersky Lab, Việt Nam nằm trong nhóm ba nước hàng đầu chịu ảnh hưởng về các cuộc tấn công nhắm vào những thiết bị Internet of Things (IoT) khi chiếm tỷ lệ tới 15% số lượng các cuộc tấn công trên quy mô toàn cầu,', '2017_06/cctvcamerahacking-2797-1498183530.jpg', '', 1, 1, '6', 1, 0, 26, 0, 5, 1, 0, '', 0),
(17, 2, '2', 0, 1, '', 0, 1498807492, 1498807492, 1, 13, 1498807380, 0, 2, 'Cáp quang biển APG gặp sự cố, Internet Việt Nam bị chậm', 'cap-quang-bien-apg-gap-su-co-internet-viet-nam-bi-cham', 'Tuyến cáp quang biển APG (Asia Pacific Gateway) bị đứt, gây ảnh hưởng đến khả năng kết nối Internet từ Việt Nam đi quốc tế. Theo một nhà cung cấp dịch vụ trên nền Internet, phân đoạn Việt Nam - Hong Kong của hệ thống cáp quang biển APG đã gặp sự cố chiều 20/6. Hiện một số lưu lượng kết nối đã được chuyển sang tuyến cáp quang biển quốc tế AAG.', '2017_06/dut-cap-quang-2-2014916112524.jpg', '', 1, 1, '6', 1, 0, 30, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, '', 0, 1498833206, 1498833206, 1, 14, 1498833120, 0, 2, 'Fidget spinner Trung Quốc phát nổ', 'fidget-spinner-trung-quoc-phat-no', 'Một số đồ chơi spinner được sản xuất tại Trung Quốc được ghi nhận đã phát nổ, có thể do tích hợp pin kém chất lượng. Theo Gizmodo, một bà mẹ ở bang Alabama (Mỹ) cho biết chiếc fidget spinner của con trai bốc cháy khi đang sạc. &quot;Nó được sạc trong gần 45 phút và sau đó lửa bốc lên&quot;, bà Kimberly Allums kể lại.', '2017_06/q9gzn5xhxm1pondhvuwq-9669-1498798169.png', '', 1, 1, '6', 1, 0, 32, 0, 5, 1, 0, '', 0),
(19, 2, '2', 0, 1, '', 0, 1498833340, 1498833353, 1, 15, 1498833180, 0, 2, 'Những bức ảnh đẹp nhất chụp bằng iPhone năm 2017', 'nhung-buc-anh-dep-nhat-chup-bang-iphone-nam-2017', 'iPhone Photography Awards (IPPAwards) là cuộc thi nhiếp ảnh được tổ chức thường niên để chọn ra những bức ảnh đẹp nhất chụp từ điện thoại của Apple. Đây là cuộc thi đầu tiên về iPhone có quy mô quốc tế và hiện đã bước sang năm thứ 10.', '2017_06/iphone-2-1498637989_680x0.jpg', 'iPhone 2 1498637989 680x0', 1, 1, '6', 1, 0, 43, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_3`
--

CREATE TABLE `nv4_vi_blogs_3` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_3`
--

INSERT INTO `nv4_vi_blogs_3` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(4, 3, '3', 0, 1, '', 0, 1498796585, 1498796615, 1, 0, 1498796340, 0, 2, 'Kinh nghiệm cần biết khi chụp ảnh mùa hè', 'kinh-nghiem-can-biet-khi-chup-anh-mua-he', 'Để hạn chế ánh nắng chói của mặt trời, người dùng có thể áp dụng các mẹo dưới đây cho cả máy ảnh chuyên nghiệp hay điện thoại. ất kể mặt trời đang ở vị trí nào, trong điều kiện gì và đang dùng máy ảnh nào thì bố cục luôn là yếu tố cần đáp ứng đầu tiên. Nếu bố cục ảnh lộn xộn thì không có thủ thuật nào hỗ trợ hay khắc phục được sai lầm.', '2017_06/ky-thuat-chup-anh-phong-canh-d-7242-8953-1498555535.jpg', '', 1, 1, '6', 1, 0, 32, 0, 5, 1, 0, '', 0),
(5, 3, '3', 0, 1, '', 0, 1498797699, 1498797699, 1, 1, 1498797420, 0, 2, 'Cách chụp ảnh đánh lừa như màn hình trong suốt', 'cach-chup-anh-danh-lua-nhu-man-hinh-trong-suot', 'Sử dụng bức ảnh chụp bằng camera ở cùng góc nhìn, giảm độ sáng màn hình để có được hiệu ứng như màn hình trong suốt. Những bức ảnh có hiệu ứng như điện thoại có màn hình trong suốt đang được nhiều người dùng ưa chuộng, đặc biệt là sau khi chiếc Galaxy S8 với màn hình &quot;vô cực&quot; bán ra.', '2017_06/2-5569-1494749713.jpg', '', 1, 1, '6', 1, 0, 25, 0, 5, 1, 0, '', 0),
(6, 3, '3', 0, 1, '', 0, 1498798236, 1498798236, 1, 2, 1498798020, 0, 2, 'Cách nâng cấp iOS 11 beta cho iPhone, iPad', 'cach-nang-cap-ios-11-beta-cho-iphone-ipad', 'Người dùng đã có thể tải về và cài đặt bản thử nghiệm hệ điều hành mà Apple vừa trình làng cho các thiết bị di động. Hiện iOS 11 mới được cung cấp dưới dạng Developer Preview, tức phiên bản thử nghiệm dành cho các nhà phát triển. Tuy nhiên, người dùng thông thường cũng có thể trải nghiệm sớm nền tảng này.', '2017_06/nhung-thiet-bi-ho-tro-ios-11-9810-1496711399.png', '', 1, 1, '6', 1, 0, 21, 0, 5, 1, 0, '', 0),
(13, 3, '3', 0, 1, '', 0, 1498806699, 1498806699, 1, 9, 1498806600, 0, 2, 'Máy tính Windows cần tải ngay bản cập nhật này', 'may-tinh-windows-can-tai-ngay-ban-cap-nhat-nay', 'Microsoft vừa phát hành bản vá lỗi quan trọng cho tất cả các phiên bản Windows bao gồm cả Windows 10, ngăn tấn công mạng, chiếm quyền điều khiển máy tính. Một trong các lỗ hổng ảnh hưởng tất cả các phiên bản Windows được Microsoft khắc phục trong bản cập nhật Patch Tuesday mang số hiệu', '2017_06/windows-10-1497540345.jpg', '', 1, 1, '6', 1, 0, 26, 0, 0, 0, 0, '', 0),
(14, 3, '3', 0, 1, '', 0, 1498806804, 1498806804, 1, 10, 1498806720, 0, 2, 'Công cụ kiểm tra mã độc Wanna Cry', 'cong-cu-kiem-tra-ma-doc-wanna-cry', 'Ngày 15-5, nhiều công ty an ninh mạng đã phát hành công cụ miễn phí giúp người dùng kiểm tra máy tính của mình có bị lỗ hổng bảo mật đang bị Wanna Cry tấn công hay không. Công ty Bkav cung cấp công cụ miễn phí (trên website của Bkav) giúp người sử dụng quét xem máy tính có đang bị nhiễm Wanna Crypt không.', '2017_06/wannacrypt-1494835967.jpg', '', 1, 1, '6', 1, 0, 33, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_4`
--

CREATE TABLE `nv4_vi_blogs_4` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_4`
--

INSERT INTO `nv4_vi_blogs_4` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(20, 4, '4', 0, 1, '', 0, 1498833727, 1498874429, 1, 19, 1498874429, 0, 2, 'Tạo localhost chuyên nghiệp với Ampps', 'tao-localhost-chuyen-nghiep-voi-ampps', 'Có rất nhiều phần mềm tạo localhost trên máy tính. Và có hàng tá lý do để mình nói rằng Ampps dùng tốt hơn XAMPP. Bạn có thể thấy trên blog mình khi hướng dẫn localhost đều mang XAMPP ra, đơn giản là nó dễ dùng, không nhiều chức năng gây rối cho người mới tìm hiểu chứ máy mình chẳng cài XAMPP bao giờ, một là Ampps, hai là Vagrant.', '2017_06/ampps-auto-install_1.jpg', 'ampps auto install', 1, 1, '6', 1, 0, 36, 0, 5, 1, 0, '', 0),
(21, 5, '4,5', 0, 1, '', 0, 1498833819, 1498833819, 1, 16, 1498833720, 0, 2, 'Hướng dẫn ẩn link khi không đăng nhập thành viên trong nukeviet', 'huong-dan-an-link-khi-khong-dang-nhap-thanh-vien-trong-nukeviet', 'Bài viết này mình sẽ hướng dẫn các bạn ẩn link trong bài viết news của nukeviet, nó giống như các bài viết trên các diễn đàn bắt buộc bạn phải đăng nhập mới nhìn thấy link. Khá đơn giản là chỉ thêm vài dòng code,', '2017_06/utbeo.png', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(22, 5, '4,5', 0, 1, 'Anh Út Beo', 0, 1498833894, 1498833894, 1, 17, 1498833780, 0, 2, 'Hướng dẫn 2 domain chạy cùng 1 code nukeviet', 'huong-dan-2-domain-chay-cung-1-code-nukeviet', 'Bạn gì mình cũng quên mất tên có nhắn tin nhờ hướng dẫn 2 domain chạy cùng 1 web, mỗi domain được trỏ đến 1 modules khác nhau, 1 giao diện khác nhau. Về giao diện bạn cần chọn trong modules tương ứng nhé, còn về config để chạy được bạn làm như sau:', '2017_06/nukevietnews.jpg', '', 1, 1, '6', 1, 0, 38, 0, 0, 0, 0, '', 0),
(23, 5, '4,5', 0, 1, '', 0, 1498833953, 1510758144, 1, 18, 1498833900, 0, 2, 'Thêm hình ảnh cho tin mới tin cũ trong nukeviet', 'them-hinh-anh-cho-tin-moi-tin-cu-trong-nukeviet', 'Mặc định trong Nukeviet khi xem 1 bản tin nó chỉ hiện các bản tin khác chỉ là những đường link và không có hình ảnh minh họa. Út Beo sẽ hướng dẫn các bạn thêm hình minh họa và chia nó làm hai cột sang hai bên khác nhau.', '2017_06/anhutbeo.png', '', 1, 1, '6', 1, 0, 39, 0, 5, 1, 0, '', 0),
(26, 4, '4', 0, 1, 'Hồ Ngọc Triển', 0, 1498877951, 1498877951, 1, 20, 1498877760, 0, 2, 'Hướng dẫn tắt tính năng autosave của trình soạn thảo ckeditor cho nukeviet và các mã nguồn khác', 'huong-dan-tat-tinh-nang-autosave-cua-trinh-soan-thao-ckeditor-cho-nukeviet-va-cac-ma-nguon-khac', 'Autosave là một plugin của ckeditor đã tích hợp mặc định trong trình soạn thảo NukeViet từ các phiên bản NukeViet 4. Đây là một plugin khá hay của ckeditor làm hạn chế việc mất nội dung trong quá trình soạn thảo vì nhiều lý do, song một điều gây khó chịu cho người sử dụng là thường hiển thị hộp thoại', '2017_07/tat-autosave.jpg', 'Tat autosave', 1, 1, '6', 1, 0, 49, 0, 5, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_5`
--

CREATE TABLE `nv4_vi_blogs_5` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_5`
--

INSERT INTO `nv4_vi_blogs_5` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(21, 5, '4,5', 0, 1, '', 0, 1498833819, 1498833819, 1, 16, 1498833720, 0, 2, 'Hướng dẫn ẩn link khi không đăng nhập thành viên trong nukeviet', 'huong-dan-an-link-khi-khong-dang-nhap-thanh-vien-trong-nukeviet', 'Bài viết này mình sẽ hướng dẫn các bạn ẩn link trong bài viết news của nukeviet, nó giống như các bài viết trên các diễn đàn bắt buộc bạn phải đăng nhập mới nhìn thấy link. Khá đơn giản là chỉ thêm vài dòng code,', '2017_06/utbeo.png', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(22, 5, '4,5', 0, 1, 'Anh Út Beo', 0, 1498833894, 1498833894, 1, 17, 1498833780, 0, 2, 'Hướng dẫn 2 domain chạy cùng 1 code nukeviet', 'huong-dan-2-domain-chay-cung-1-code-nukeviet', 'Bạn gì mình cũng quên mất tên có nhắn tin nhờ hướng dẫn 2 domain chạy cùng 1 web, mỗi domain được trỏ đến 1 modules khác nhau, 1 giao diện khác nhau. Về giao diện bạn cần chọn trong modules tương ứng nhé, còn về config để chạy được bạn làm như sau:', '2017_06/nukevietnews.jpg', '', 1, 1, '6', 1, 0, 38, 0, 0, 0, 0, '', 0),
(23, 5, '4,5', 0, 1, '', 0, 1498833953, 1510758144, 1, 18, 1498833900, 0, 2, 'Thêm hình ảnh cho tin mới tin cũ trong nukeviet', 'them-hinh-anh-cho-tin-moi-tin-cu-trong-nukeviet', 'Mặc định trong Nukeviet khi xem 1 bản tin nó chỉ hiện các bản tin khác chỉ là những đường link và không có hình ảnh minh họa. Út Beo sẽ hướng dẫn các bạn thêm hình minh họa và chia nó làm hai cột sang hai bên khác nhau.', '2017_06/anhutbeo.png', '', 1, 1, '6', 1, 0, 39, 0, 5, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_6`
--

CREATE TABLE `nv4_vi_blogs_6` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_7`
--

CREATE TABLE `nv4_vi_blogs_7` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_7`
--

INSERT INTO `nv4_vi_blogs_7` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(7, 9, '7,9', 0, 1, '', 0, 1498798998, 1498798998, 1, 3, 1498798800, 0, 2, 'Hướng dẫn đọc file đuôi .shs trên Windows 7&#x002F;8', 'huong-dan-doc-file-duoi-shs-tren-windows-7-8', 'Thường xuyên làm việc với những file word, nhất là dân văn phòng, công chức. Sau khi bạn nâng cấp từ Windows XP lên Windows 7/8 với Microsoft offices phiên bản cao hơn như 2007 trở lên hoặc việc copy file word từ máy tính này qua máy khác hay sang usb, ổ cứng để lưu lại, thường thì bạn sẽ suy nghĩ file tài liệu này đã bị hư do virus,', '2017_06/img01.jpg', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(8, 9, '7,9', 0, 1, '', 0, 1498800181, 1498800356, 1, 4, 1498800000, 0, 2, 'Xóa bỏ protect, password ở file Excel một cách dễ dàng', 'xoa-bo-protect-password-o-file-excel-mot-cach-de-dang', 'Bạn là dân kế toán, hoặc đang soạn thảo một tài liệu quan trọng nào đó, bạn đã đặt password bảo vệ cho file exel này của bạn, nhưng đôi khi bạn quên mất password mình đã đặt là gì dẫn đến bạn không thể xem hoặc chỉnh sửa lại nội dung trong file exel đó của bạn.', '2017_06/screenhunter_01-feb01-12.15.jpg', 'ScreenHunter 01 Feb  01 12 15', 1, 1, '6', 1, 0, 38, 0, 5, 1, 0, '', 0),
(9, 9, '7,9', 0, 1, '', 0, 1498804320, 1498804320, 1, 5, 1498804080, 0, 2, 'Cách sử dụng thành thạo Word cho người mới', 'cach-su-dung-thanh-thao-word-cho-nguoi-moi', 'Word như một siêu phẩm của Microsoft, lĩnh vực nào cũng dùng đến nó. Vậy làm thế nào để sử dụng Word thành thạo mà lại mang tính thẩm mỹ cao? Bài viết này Xứ Quảng TEAM chia sẻ đến bạn cách sử dụng thành thạo Word theo kinh nghiệm đã định dạng nhiều bài tiểu luận.', '2017_06/thanh-thao-word-1.png', 'Thanh thao Word 1', 1, 1, '4', 1, 0, 32, 0, 0, 0, 0, '', 0),
(10, 8, '7,8', 0, 1, '', 0, 1498804530, 1498804530, 1, 6, 1498804380, 0, 2, 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 'huong-dan-nang-cap-len-windows-10-mien-phi', 'Windows 10 hiện tại không còn cho nâng cấp miễn phí kể từ cuối tháng 7 năm ngoái rồi nhưng Congtoan xin mách bạn một cách mà bạn vẫn có thể nâng cấp lên miễn phí bằng cách thông qua chương trình cập nhật Windows 10 dành cho người dùng sử dụng các công nghệ hỗ trợ, bạn có thể cập nhật Windows 10 cho chiếc máy tính của mình miễn là máy đang sử dụng Windows 7/8/8.1 bản quyền. Cách làm như sau:', '2017_06/huong-dan-nang-cap-len-windows-10-mien-phi.jpg', 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 1, 1, '6', 1, 0, 24, 0, 0, 0, 0, '', 0),
(11, 8, '7,8', 0, 1, '', 0, 1498804749, 1498806341, 1, 8, 1498806341, 0, 2, 'Các phím tắt cần biết trong Windows 10 giúp bạn pro hơn', 'cac-phim-tat-can-biet-trong-windows-10-giup-ban-pro-hon', 'Máy tính của bạn đang sử dụng hệ hành Windows 10 nhưng bạn chưa hiểu rõ được hết các tính năng của Windows 10. Việc sử dụng những phím tắt sẽ giúp bạn sử dụng Windows 10 một cách hiệu quả và nhanh chóng hơn đồng thời hiểu rõ hơn các tính năng của Windows 10.', '2017_06/windows-10-shortcuts1.jpg', '', 1, 1, '6', 1, 0, 34, 0, 5, 1, 0, '', 0),
(12, 8, '7,8', 0, 1, '', 0, 1498806309, 1498806309, 1, 7, 1498806180, 0, 2, 'Hướng dẫn vô hiệu hóa vĩnh viễn Windows Defender trên Windows 10', 'huong-dan-vo-hieu-hoa-vinh-vien-windows-defender-tren-windows-10', 'Windows Defender là một công cụ chống virus mặc định được tích hợp sẵn trên Windows 10. Đa số người dùng đều tin tưởng rằng đây là phần mềm bảo vệ tốt cho máy tính. Tuy nhiên nó chỉ bảo vệ ở mức cơ bản chứ không chuyên dụng như các phần mềm thứ 3. Người dùng nên cài đặt 1 phần mềm diệt virus của bên thứ 3', '2017_06/va2otzx.jpg', 'Va2OtZX', 1, 1, '6', 1, 0, 33, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_8`
--

CREATE TABLE `nv4_vi_blogs_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_8`
--

INSERT INTO `nv4_vi_blogs_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(10, 8, '7,8', 0, 1, '', 0, 1498804530, 1498804530, 1, 6, 1498804380, 0, 2, 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 'huong-dan-nang-cap-len-windows-10-mien-phi', 'Windows 10 hiện tại không còn cho nâng cấp miễn phí kể từ cuối tháng 7 năm ngoái rồi nhưng Congtoan xin mách bạn một cách mà bạn vẫn có thể nâng cấp lên miễn phí bằng cách thông qua chương trình cập nhật Windows 10 dành cho người dùng sử dụng các công nghệ hỗ trợ, bạn có thể cập nhật Windows 10 cho chiếc máy tính của mình miễn là máy đang sử dụng Windows 7/8/8.1 bản quyền. Cách làm như sau:', '2017_06/huong-dan-nang-cap-len-windows-10-mien-phi.jpg', 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 1, 1, '6', 1, 0, 24, 0, 0, 0, 0, '', 0),
(11, 8, '7,8', 0, 1, '', 0, 1498804749, 1498806341, 1, 8, 1498806341, 0, 2, 'Các phím tắt cần biết trong Windows 10 giúp bạn pro hơn', 'cac-phim-tat-can-biet-trong-windows-10-giup-ban-pro-hon', 'Máy tính của bạn đang sử dụng hệ hành Windows 10 nhưng bạn chưa hiểu rõ được hết các tính năng của Windows 10. Việc sử dụng những phím tắt sẽ giúp bạn sử dụng Windows 10 một cách hiệu quả và nhanh chóng hơn đồng thời hiểu rõ hơn các tính năng của Windows 10.', '2017_06/windows-10-shortcuts1.jpg', '', 1, 1, '6', 1, 0, 34, 0, 5, 1, 0, '', 0),
(12, 8, '7,8', 0, 1, '', 0, 1498806309, 1498806309, 1, 7, 1498806180, 0, 2, 'Hướng dẫn vô hiệu hóa vĩnh viễn Windows Defender trên Windows 10', 'huong-dan-vo-hieu-hoa-vinh-vien-windows-defender-tren-windows-10', 'Windows Defender là một công cụ chống virus mặc định được tích hợp sẵn trên Windows 10. Đa số người dùng đều tin tưởng rằng đây là phần mềm bảo vệ tốt cho máy tính. Tuy nhiên nó chỉ bảo vệ ở mức cơ bản chứ không chuyên dụng như các phần mềm thứ 3. Người dùng nên cài đặt 1 phần mềm diệt virus của bên thứ 3', '2017_06/va2otzx.jpg', 'Va2OtZX', 1, 1, '6', 1, 0, 33, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_9`
--

CREATE TABLE `nv4_vi_blogs_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_9`
--

INSERT INTO `nv4_vi_blogs_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(7, 9, '7,9', 0, 1, '', 0, 1498798998, 1498798998, 1, 3, 1498798800, 0, 2, 'Hướng dẫn đọc file đuôi .shs trên Windows 7&#x002F;8', 'huong-dan-doc-file-duoi-shs-tren-windows-7-8', 'Thường xuyên làm việc với những file word, nhất là dân văn phòng, công chức. Sau khi bạn nâng cấp từ Windows XP lên Windows 7/8 với Microsoft offices phiên bản cao hơn như 2007 trở lên hoặc việc copy file word từ máy tính này qua máy khác hay sang usb, ổ cứng để lưu lại, thường thì bạn sẽ suy nghĩ file tài liệu này đã bị hư do virus,', '2017_06/img01.jpg', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(8, 9, '7,9', 0, 1, '', 0, 1498800181, 1498800356, 1, 4, 1498800000, 0, 2, 'Xóa bỏ protect, password ở file Excel một cách dễ dàng', 'xoa-bo-protect-password-o-file-excel-mot-cach-de-dang', 'Bạn là dân kế toán, hoặc đang soạn thảo một tài liệu quan trọng nào đó, bạn đã đặt password bảo vệ cho file exel này của bạn, nhưng đôi khi bạn quên mất password mình đã đặt là gì dẫn đến bạn không thể xem hoặc chỉnh sửa lại nội dung trong file exel đó của bạn.', '2017_06/screenhunter_01-feb01-12.15.jpg', 'ScreenHunter 01 Feb  01 12 15', 1, 1, '6', 1, 0, 38, 0, 5, 1, 0, '', 0),
(9, 9, '7,9', 0, 1, '', 0, 1498804320, 1498804320, 1, 5, 1498804080, 0, 2, 'Cách sử dụng thành thạo Word cho người mới', 'cach-su-dung-thanh-thao-word-cho-nguoi-moi', 'Word như một siêu phẩm của Microsoft, lĩnh vực nào cũng dùng đến nó. Vậy làm thế nào để sử dụng Word thành thạo mà lại mang tính thẩm mỹ cao? Bài viết này Xứ Quảng TEAM chia sẻ đến bạn cách sử dụng thành thạo Word theo kinh nghiệm đã định dạng nhiều bài tiểu luận.', '2017_06/thanh-thao-word-1.png', 'Thanh thao Word 1', 1, 1, '4', 1, 0, 32, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_admins`
--

CREATE TABLE `nv4_vi_blogs_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_block`
--

CREATE TABLE `nv4_vi_blogs_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_block`
--

INSERT INTO `nv4_vi_blogs_block` (`bid`, `id`, `weight`) VALUES
(1, 4, 15),
(2, 4, 10),
(1, 5, 14),
(2, 5, 9),
(1, 6, 13),
(2, 6, 8),
(2, 7, 7),
(1, 10, 12),
(2, 10, 6),
(2, 11, 5),
(1, 12, 11),
(1, 13, 10),
(1, 14, 9),
(1, 15, 8),
(2, 15, 4),
(1, 16, 7),
(1, 17, 6),
(1, 18, 5),
(1, 19, 4),
(2, 21, 3),
(1, 22, 3),
(1, 23, 2),
(3, 18, 3),
(3, 15, 1),
(3, 14, 2),
(4, 22, 4),
(1, 26, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_block_cat`
--

CREATE TABLE `nv4_vi_blogs_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_block_cat`
--

INSERT INTO `nv4_vi_blogs_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Mới', 'moi', '', '', 1, '', 1498795677, 1500006062),
(2, 0, 4, 'Tin nổi bật', 'tin-noi-bat', '', '', 2, '', 1498795684, 1498795684),
(3, 0, 4, 'Tiêu điểm trong tháng', 'tieu-diem-trong-thang', '', '', 3, '', 1498870756, 1498870756),
(4, 0, 4, 'Bản tin', 'ban-tin-xu-quang-team', '', '', 4, '', 1498872183, 1542782571);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_cat`
--

CREATE TABLE `nv4_vi_blogs_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_cat`
--

INSERT INTO `nv4_vi_blogs_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin từ TEAM', 'Tin từ Nhóm Phát triển Xứ Quảng TEAM', 'ban-tin-xu-quang-team', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498794477, 1505783941, '6', 2),
(2, 0, 'Đời sống số', '', 'doi-song-so', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498794495, 1498794495, '6', 2),
(3, 0, 'Kinh nghiệm', '', 'kinh-nghiem', '', '', '', 0, 3, 3, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498794519, 1498794519, '6', 2),
(4, 0, 'Góc lập trình', '', 'goc-lap-trinh', '', '', '', 0, 4, 4, 0, 'viewcat_page_new', 2, '5,6', 3, 2, 0, '', '', '', 1498794536, 1498794536, '6', 2),
(5, 4, 'Nukeviet', 'Mã nguồn mở Nukeviet', 'nukeviet', '', '', '', 0, 1, 5, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498794687, 1498794687, '6', 1),
(6, 4, 'Joomla - Wordpress', '', 'joomla-wordpress', '', '', '', 0, 2, 6, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498794725, 1498794725, '6', 1),
(7, 0, 'Thủ thuật tin học', '', 'thu-thuat-tin-hoc', '', '', '', 0, 5, 7, 0, 'viewcat_page_new', 2, '8,9', 3, 2, 0, '', '', '', 1498798757, 1498798757, '6', 2),
(8, 7, 'Windows 10', '', 'windows-10', '', '', '', 0, 1, 8, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498798772, 1498798772, '6', 1),
(9, 7, 'Thủ thuật Office', '', 'thu-thuat-office', '', '', '', 0, 2, 9, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1498798803, 1498798803, '6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_config_post`
--

CREATE TABLE `nv4_vi_blogs_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_config_post`
--

INSERT INTO `nv4_vi_blogs_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_detail`
--

CREATE TABLE `nv4_vi_blogs_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_detail`
--

INSERT INTO `nv4_vi_blogs_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(4, '', '', '<p style=\"text-align: justify;\">Người chụp ảnh nên nắm vững ít nhất một vài quy tắc cần thiết của bố cục, trong đó dễ nhớ nhất là quy tắc một phần ba. Đó là việc chia khung hình thành 9 phần bởi 2 đường kẻ dọc và 2 đường kẻ ngang và bạn nên đặt chủ thể hoặc phần quan trọng của bức ảnh tại 4 điểm của các đường giao nhau.</p><p style=\"text-align: justify;\">Để mặt trời ra sau lưng người chụp</p><div style=\"text-align:center\"><img alt=\"kinh-nghiem-can-biet-khi-chup-anh-mua-he-1\" data-natural-width=\"500\" src=\"http://img.f5.sohoa.vnecdn.net/2017/06/27/photographer-sun-1405-1498555535.jpg\" /></div><p style=\"text-align: justify;\">Theo&nbsp;<em>Makeuseof</em>, nguyên tắc quan trọng đầu tiên khi chụp ảnh mùa hè là điều chỉnh để mình ở trước và mặt trời ở phía sau lưng. Nếu mặt trời đi vào khung hình của ống kính, bức ảnh sẽ bị lóe sáng, hay còn gọi là hiệu ứng Flare.</p><p style=\"text-align: justify;\">Hãy di chuyển xung quanh và đảm bảo lưng của bạn quay về phía mặt trời. Ngoài ra, vào buổi trưa khi mặt trời ở trên cao, người chụp có thể di chuyển một vài bước lên phía trước để đảm bảo đúng nguyên tắc này.</p><p style=\"text-align: justify;\">Tận dụng mặt trời tạo ánh sáng ven khi chụp ảnh chân dung&nbsp;</p><div style=\"text-align:center\"><img alt=\"kinh-nghiem-can-biet-khi-chup-anh-mua-he-2\" data-natural-width=\"500\" src=\"http://img.f5.sohoa.vnecdn.net/2017/06/27/Beth03C-1149-1498555535.jpg\" /></div><p style=\"text-align: justify;\">Ánh sáng ven (RIM Light) là thuật ngữ dùng cho những tấm ảnh có ánh sáng từ phía sau khiến vùng viền của chủ thể rất sáng.&nbsp;Khi chụp chân dung hoặc bất kỳ chủ đề nào với mặt trời phía sau, bạn sẽ thấy ánh sáng mặt trời đã tách chủ thể khỏi khung nền ở phía sau. Chụp chân dung là trường hợp đặc biệt được làm trái với quy tắc đặt mặt trời ở sau lưng phía trên.</p><p style=\"text-align: justify;\">Điều này cũng giúp tránh ánh nắng quá mạnh chiếu lên khuôn mặt, có thể làm mất chi tiết hoặc gây khó chịu cho người mẫu.&nbsp;Tuy nhiên, để tránh ánh sáng gây lóa trên ống kính, cần xoay máy ảnh để&nbsp;mặt trời gần như bị che khuất bởi người mà bạn đang định chụp.</p><p style=\"text-align: justify;\">Kỹ thuật này đòi hỏi thời gian và sự luyện tập, với những người mới bắt đầu có thể thực hành trên phần tóc của đối tượng.&nbsp;Nếu chủ thể và phần nền đằng sau đã có hai màu khác nhau và tách ra khá riêng lẻ, bạn không cần phải sử dụng kỹ thuật này.</p><p style=\"text-align: justify;\">Cách chụp khi mặt trời ở một phía</p><div style=\"text-align:center\"><img alt=\"photographer sun side 1169 1498555535\" data-natural-width=\"500\" height=\"332\" src=\"/uploads/blogs/2017_06/photographer-sun-side-1169-1498555535.jpg\" width=\"500\" /></div><p style=\"text-align: justify;\">Cách này áp dụng khi ánh sáng mặt trời chiếu thẳng từ&nbsp;trái sang phải hoặc ngược lại trong khi người chụp và chủ thể không thể thay đổi vị trí.</p><p style=\"text-align: justify;\">Khi đó, hãy yêu cầu chủ đề hoặc mô hình quay sao cho vai hướng về phía ánh sáng. Sau đó, họ quay ba phần tư khuôn mặt về phía vai đó. Hiệu quả mang lại sẽ thật sự bất ngờ.</p><p style=\"text-align: justify;\">Quy tắc&nbsp;Sunny f/16</p><div style=\"text-align:center\"><img alt=\"photographer sunny f16 2102 1498555535\" data-natural-width=\"399\" height=\"379\" src=\"/uploads/blogs/2017_06/photographer-sunny-f16-2102-1498555535.jpg\" width=\"399\" /></div><p style=\"text-align: justify;\">Đây là một trong những quy tắc khá lâu đời trong nhiếp ảnh, áp dụng khi chụp ngoài trời với ánh nắng mặt trời chiếu trực tiếp.&nbsp;Quy tắc này hướng dẫn người chụp cài đặt khẩu độ, tốc độ màn trập và ISO.</p><p style=\"text-align: justify;\">Cụ thể,&nbsp;hãy đặt khẩu độ lên f/16. Sau đó, chỉ thay đổi ISO và tốc độ màn trập để&nbsp;điều chỉnh cho bức ảnh. Trong hầu hết các trường hợp, cài đặt tốt nhất là ISO 100 và tốc độ màn trập là 1/100.&nbsp;Bất cứ khi nào bạn thay đổi ISO, hãy thay đổi tốc độ màn trập tương ứng. Ví dụ, nếu đặt ISO thành 400, hãy thay đổi tốc độ màn trập thành 1/400.</p><p style=\"text-align: justify;\">Chụp ảnh khi mặt trời xuống thấp</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td style=\"text-align: justify;\">			<div style=\"text-align:center\"><img alt=\"photographer sun is low 7794 1498555535\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"332\" src=\"/uploads/blogs/2017_06/photographer-sun-is-low-7794-1498555535.jpg\" width=\"500\" /></div>			</td>		</tr>	</tbody></table><p style=\"text-align: justify;\">Đây là một trong những nguyên tắc đơn giản để cải thiện nhanh ảnh của bạn. Hãy chụp ảnh&nbsp;sau khi mặt trời mọc hoặc ngay trước lúc hoàng hôn. Đây được coi là &quot;giờ vàng&quot; trong nhiếp ảnh bởi ánh sáng tự nhiên nhất và không sợ bị lóe sáng mạnh khi chiếu ống kính về phía mặt trời.</p><p style=\"text-align: justify;\">Không để mặt trời lặn phía sau</p><div style=\"text-align:center\"><img alt=\"kinh-nghiem-can-biet-khi-chup-anh-mua-he-6\" data-natural-width=\"500\" src=\"http://img.f5.sohoa.vnecdn.net/2017/06/27/photographer-shoot-silhouettes-5461-1498555535.jpg\" /></div><p style=\"text-align: justify;\">Trong cả hai giờ cài đặt chụp lúc giờ vàng, dù khá đơn giản nhưng đừng để mặt trời lặn phía sau chủ thể. Thay vào đó, nên để nó ngay trong khung hình. Hình ảnh ghi được là cách khá tốt để thể hiện tâm trạng, đặc biệt nếu đó là bóng người đang thực hiện một hành động.</p><p style=\"text-align: justify;\">Với điện thoại thông minh, hãy chắc chắn bạn đã tắt HDR trong ứng dụng máy ảnh. Với máy DSLR, ngoài việc tắt HDR, người dùng có thể để tự động phơi sáng.</p><p style=\"text-align: justify;\">Chụp với biểu đồ Histogram</p><table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">	<tbody>		<tr>			<td style=\"text-align: justify;\">			<div style=\"text-align:center\"><img alt=\"sun photos histogram beach dar 2548 9222 1498555535\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"291\" src=\"/uploads/blogs/2017_06/sun-photos-histogram-beach-dar-2548-9222-1498555535.jpg\" width=\"500\" /></div>			</td>		</tr>		<tr>			<td>			<p style=\"text-align: justify;\">Điều chỉnh các thông số để biểu đồ di chuyển sang phải.</p>			</td>		</tr>	</tbody></table><p style=\"text-align: justify;\">Ngoài quy tắc Sunny f/16, người dùng sử dụng máy DSLR có thể dựa vào biểu đồ ánh sáng histogram để điều chỉnh thông số khi chụp ngoài trời nắng. Mẹo này phù hợp với người chưa am hiểu rõ cách điều chỉnh các thông số ISO, khẩu độ, tốc độ màn trập... trên máy.</p><p style=\"text-align: justify;\">Về cơ bản, khi trời nắng, hãy thay đổi biểu đồ để các giá trị được đẩy về phía bên phải. Ý tưởng là làm cho hình ảnh sáng hơn bình thường bởi vì nếu không máy ảnh của bạn sẽ tự bù sáng khi chụp.</p><p style=\"text-align: justify;\">Có thể sử dụng đèn flash</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td style=\"text-align: justify;\">			<div style=\"text-align:center\"><img alt=\"flash 7453 1498555535\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"283\" src=\"/uploads/blogs/2017_06/flash-7453-1498555535.jpg\" width=\"500\" /></div>			</td>		</tr>		<tr>			<td>			<p style=\"text-align: justify;\">Hình bên phải sử dụng flash khiến ánh sáng trở nên hài hòa hơn.</p>			</td>		</tr>	</tbody></table><p style=\"text-align: justify;\">Mục đích sử dụng của đèn flash là để tăng cường ánh sáng tự nhiên trong điều kiện trời nắng. Sử dụng đèn flash đúng lúc sẽ tạo ra hiệu quả như việc sử dụng thiết bị để hắt hoặc tản sáng. Điều này khá hữu ích trong việc chụp chân dung.</p><p style=\"text-align: justify;\">Tuy nhiên, hãy chú ý tới cài đặt tốc độ của máy khi chụp.&nbsp;Trong hầu hết các tình huống, người dùng nên đặt đèn flash với cường độ ánh sáng giảm đi một nửa.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(5, '', '', '<p>Cách thức thực hiện cũng rất đơn giản. Người dùng chỉ cần đưa máy chụp ở cùng góc nhìn với khoảng cách tầm 20 đến 30 cm tới bề mặt phía dưới. Giảm độ sáng màn hình và phóng to ảnh tràn màn hình cũng như điều chỉnh kích thước để tương đương với các vật thể phía sau.&nbsp;</p>&nbsp;<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"a3 7136 1494824003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"305\" src=\"/uploads/blogs/2017_06/a3-7136-1494824003.jpg\" width=\"500\" /></div>			</td>		</tr>		<tr>			<td>			<p>Trào lưu chụp ảnh màn hình trong suốt gần đây được yêu thích trở lại khi có sự xuất hiện của các smartphone viền màn hình siêu mỏng. ẢNh:&nbsp;<em>Huỳnh&nbsp;Thủy.&nbsp;</em></p>			</td>		</tr>	</tbody></table><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"DSC 4569 7091 1494824003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"334\" src=\"/uploads/blogs/2017_06/dsc-4569-7091-1494824003.jpg\" width=\"500\" /></div>			</td>		</tr>	</tbody></table><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"dsc 4571 1530 1494824003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"334\" src=\"/uploads/blogs/2017_06/dsc-4571-1530-1494824003.jpg\" width=\"500\" /></div>			</td>		</tr>	</tbody></table><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"dsc 4572 1977 1494824003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"334\" src=\"/uploads/blogs/2017_06/dsc-4572-1977-1494824003.jpg\" width=\"500\" /></div>			</td>		</tr>	</tbody></table><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"dsc 4638 9650 1494824003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"334\" src=\"/uploads/blogs/2017_06/dsc-4638-9650-1494824003.jpg\" width=\"500\" /></div>			</td>		</tr>	</tbody></table>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(6, '', '', '<p style=\"text-align: justify;\">Để thực hiện, dùng trình duyệt Safari trên chính thiết bị cần nâng cấp rồi tải về file cấu hình iOS 11&nbsp;<a href=\"https://userscloud.com/qz7iuz9ke34s\">tại đây</a>. iPhone, iPad sẽ hiện thông báo cài đặt, bấm&nbsp;<em>Install</em>và nhập passcode (nếu có) để xác thực.</p><p style=\"text-align: justify;\">Thiết bị chạy iOS của người dùng sẽ được yêu cầu khởi động lại. Sau đó, bạn vào&nbsp;<em>Settings &gt; General &gt; Software Update</em>&nbsp;sẽ thấy thông báo cho phép cài đặt iOS 11&nbsp;Developer beta với dung lượng tải về khoảng 2 GB.</p><p style=\"text-align: justify;\">Những máy hỗ trợ nâng cấp lên iOS 11 có iPhone 5s, iPad mini 2, iPad Air, iPod touch thế hệ 6 và những thiết bị đời mới hơn.</p><p style=\"text-align: justify;\">Do là bản thử nghiệm nên hệ điều hành hoạt động chưa thực sự ổn định, người dùng cần sao lưu dữ liệu trước khi tiến hành nâng cấp và vẫn có thể trở về phiên bản iOS 10 khi cần.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(7, '', '', '<div style=\"text-align: justify;\">thực ra không phải vậy, Congtoan xin hướng dẫn cách đơn giản sau đây để bạn đọc được file .shs một cách đơn giản.&nbsp;</div><p style=\"text-align: justify;\">– Đối với Win XP và bạn&nbsp;đang dùng Microsoft Offices 2003. Mở file tài liệu đuôi .shs lên bình thường &gt; sau đó bạn chọn&nbsp;<strong>Save copy as…</strong>&nbsp;để lưu lại dưới dạng file .doc.</p><p style=\"text-align: justify;\">– Còn nếu dùng Win 7/8 và thường chạy Office 2007 hoặc 2010, 2013 thì bạn sẽ thấy thông báo lỗi. File mở ra có dạng ô vuông, lỗi và không thể đọc được. Để khắc phục bạn&nbsp;<a href=\"https://www.congtoan.net/download.php?url=http://www.fshare.vn/file/2SJZ4AV9CO5B\" target=\"_blank\">tải file sửa lỗi</a>&nbsp;này về máy tính</p><p style=\"text-align: justify;\">– Sau khi tải về tiến hành giải nén và mở thư mục bạn vừa tải về và thấy có 2 file như hình ở trên<br  /><br  />&nbsp;</p><p style=\"text-align: justify;\">– Copy và dán file&nbsp;<strong>shscrap.dll</strong>&nbsp;vào thư mục sau:&nbsp;<strong>C:\\ Windows\\ System32</strong>&nbsp;(Nếu bạn đang chạy Win 7 64 bit thì cần copy file đó vào cả thư mục&nbsp;<strong>C:\\Windows\\SysWOW64</strong>).</p><div style=\"text-align:center\"><img alt=\"img02\" height=\"184\" src=\"/uploads/blogs/2017_06/img02.jpg\" width=\"571\" /></div><p style=\"text-align: justify;\">– Tiếp theo chạy file&nbsp;<strong>shscrap.reg</strong>&nbsp;trong thư mục bạn mới giải nén ra và chọn Ok để chạy.</p><p style=\"text-align: justify;\">– Nháy chuột phải vào file .shs ở trên chọn&nbsp;<strong>Open with…</strong>&nbsp;=&gt; Chọn&nbsp;<strong>Sell scrap object handler</strong>&nbsp;để mở .</p><div style=\"text-align:center\"><img alt=\"img03\" height=\"213\" src=\"/uploads/blogs/2017_06/img03.jpg\" width=\"518\" /></div><p style=\"text-align: justify;\"><br  />Như vậy bạn đã mở file một cách bình thường. Nhưng để mọi máy mở được thì bạn hãy lưu file bằng cách Save copy as… để lưu lại dưới dạng file .doc thông thường.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(8, '', '', '<div style=\"text-align: justify;\">Cách xóa password, unproteced file exel sau đây mà Congtoan giới thiệu sau đây sẽ giúp các bạn vô hiệu hóa chức năng đó của exel, và bạn có thể chỉnh sửa, xem file exel của bạn thoải mái. Cách này quá đơn giản so với việc dùng phần mềm dò password của file exel.<br  />Các bạn lần lượt làm theo các bước sau nhé.<br  />– Mở file Exel cần ghỡ bảo vệ, password lên, khi click vào một cell hay một worksheet thì nó sẽ hiện thông báo dữ liệu của file đã được bảo vệ, bạn cần unprotected hoặc xóa password đi mới được.&nbsp;</div><p style=\"text-align: justify;\">Demo hình Congtoan hướng dẫn trên Microsoft Exel 2007 nhé. Bạn click vào menu&nbsp;<strong>View &gt; Macro</strong>&nbsp;như hình:</p><div style=\"text-align:center\"><img alt=\"screenhunter 0520feb 20012012 17\" height=\"429\" src=\"/uploads/blogs/2017_06/screenhunter_0520feb.20012012.17.jpg\" width=\"616\" /></div><p style=\"text-align: justify;\">Hiện ra bảng như hình dưới, chọn&nbsp;<strong>Record Macro</strong>&nbsp;&gt; click&nbsp;<strong>Ok</strong></p><div style=\"text-align:center\"><img alt=\"screenhunter 0220feb 20012012 16\" height=\"386\" src=\"/uploads/blogs/2017_06/screenhunter_0220feb.20012012.16.jpg\" width=\"800\" /></div><p style=\"text-align: justify;\">Và sau đó click trở lại&nbsp;<strong>Macro</strong>&nbsp;&gt;&nbsp;<strong>Stop recording</strong><br  />Tiếp đến, chọn lại&nbsp;<strong>Macro</strong>&nbsp;&gt;&nbsp;<strong>View macro</strong></p><div style=\"text-align:center\"><img alt=\"screenhunter 0420feb 20012012 17\" height=\"363\" src=\"/uploads/blogs/2017_06/screenhunter_0420feb.20012012.17.jpg\" width=\"507\" /></div><p style=\"text-align: justify;\">Hiện ra bảng như hình dưới:</p><div style=\"text-align:center\"><img alt=\"screenhunter 0520feb 20012012 17\" height=\"429\" src=\"/uploads/blogs/2017_06/screenhunter_0520feb.20012012.17.jpg\" width=\"616\" /></div><p style=\"text-align: justify;\">Và sau đó click&nbsp;<strong>Edit</strong><br  />Chương trình soạn thảo Visual bacsic sẽ được mở ra như hình dưới:</p><div style=\"text-align:center\"><img alt=\"screenhunter 0620feb 20012012 17\" height=\"549\" src=\"/uploads/blogs/2017_06/screenhunter_0620feb.20012012.17.jpg\" width=\"800\" /></div><p style=\"text-align: justify;\">Bạn có thấy đoạn mã hiện lên</p><blockquote><p style=\"text-align: justify;\">Sub Macro1 (1)<br  />‘<br  />‘Macro1 Macro<br  />‘<br  />‘<br  />End sub</p></blockquote><p style=\"text-align: justify;\"><strong>Bạn thay thế bằng đoạn mã sau:</strong></p><blockquote><p style=\"text-align: justify;\">Sub Macro1()<br  />‘<br  />‘ Breaks worksheet and workbook structure passwords. Jason S<br  />‘ probably originator of base code algorithm modified for coverage<br  />‘ of workbook structure / windows passwords and for multiple passwords<br  />‘ MrToan https://congtoan.net<br  />‘ Reveals hashed passwords NOT original passwords<br  />Const DBLSPACE As String = vbNewLine &amp; vbNewLine<br  />Const AUTHORS As String = DBLSPACE &amp; vbNewLine &amp; “Adapted from Bob McCormick base code by” &amp; “MrToan https://congtoan.net”<br  />Const HEADER As String = “AllInternalPasswords User Message”<br  />Const VERSION As String = DBLSPACE &amp; “Version 1.0 8 Sep 2008”<br  />Const REPBACK As String = DBLSPACE &amp; “Please report failure to&nbsp;jasonblr@gmail.com&nbsp;”<br  />Const ALLCLEAR As String = DBLSPACE &amp; “The workbook should be cleared”<br  />Const MSGNOPWORDS1 As String = “There were no passwords on ” &amp; AUTHORS &amp; VERSION<br  />Const MSGNOPWORDS2 As String = “There was no protection to ” &amp; “workbook structure or windows.” &amp; DBLSPACE</p><p style=\"text-align: justify;\">Const MSGTAKETIME As String = “After pressing OK button this ” &amp; “will take some time.” &amp; DBLSPACE &amp; “Amount of time ” &amp; “depends on how many different passwords, the ”</p><p style=\"text-align: justify;\">Const MSGPWORDFOUND1 As String = “You had a Worksheet ” &amp; “Structure or Windows Password set.” &amp; DBLSPACE &amp; “The password found was: ” &amp; DBLSPACE &amp; “$$” &amp; DBLSPACE &amp; “Note it down for potential future use in other workbooks by ” &amp; “the same person who set this password.” &amp; DBLSPACE &amp; “Now to check and clear other passwords.” &amp; AUTHORS &amp; VERSION<br  />Const MSGPWORDFOUND2 As String = “You had a Worksheet ” &amp; “password set.” &amp; DBLSPACE &amp; “The password found was: ” &amp; DBLSPACE &amp; “$$” &amp; DBLSPACE &amp; “Note it down for potential ” &amp; “future use in other workbooks by same person who ” &amp; “set this password.” &amp; DBLSPACE &amp; “Now to check and clear ” &amp; “other passwords.” &amp; AUTHORS &amp; VERSION<br  />Const MSGONLYONE As String = “Only structure / windows ” &amp; “protected with the password that was just found.” &amp; ALLCLEAR &amp; AUTHORS &amp; VERSION &amp; REPBACK<br  />Dim w1 As Worksheet, w2 As Worksheet<br  />Dim i As Integer, j As Integer, k As Integer, l As Integer<br  />Dim m As Integer, n As Integer, i1 As Integer, i2 As Integer<br  />Dim i3 As Integer, i4 As Integer, i5 As Integer, i6 As Integer<br  />Dim PWord1 As String<br  />Dim ShTag As Boolean, WinTag As Boolean<br  />Application.ScreenUpdating = False<br  />With ActiveWorkbook<br  />WinTag = .ProtectStructure Or .ProtectWindows<br  />End With<br  />ShTag = False<br  />For Each w1 In Worksheets<br  />ShTag = ShTag Or w1.ProtectContents<br  />Next w1<br  />If Not ShTag And Not WinTag Then<br  />MsgBox MSGNOPWORDS1, vbInformation, HEADER<br  />Exit Sub<br  />End If<br  />MsgBox MSGTAKETIME, vbInformation, HEADER<br  />If Not WinTag Then<br  />MsgBox MSGNOPWORDS2, vbInformation, HEADER<br  />Else<br  />On Error Resume Next<br  />Do ‘dummy do loop<br  />For i = 65 To 66: For j = 65 To 66: For k = 65 To 66<br  />For l = 65 To 66: For m = 65 To 66: For i1 = 65 To 66<br  />For i2 = 65 To 66: For i3 = 65 To 66: For i4 = 65 To 66<br  />For i5 = 65 To 66: For i6 = 65 To 66: For n = 32 To 126<br  />With ActiveWorkbook<br  />.Unprotect Chr(i) &amp; Chr(j) &amp; Chr(k) &amp; Chr(l) &amp; Chr(m) &amp; Chr(i1) &amp; Chr(i2) &amp; Chr(i3) &amp; Chr(i4) &amp; Chr(i5) &amp; Chr(i6) &amp; Chr(n)<br  />If .ProtectStructure = False And .ProtectWindows = False Then<br  />PWord1 = Chr(i) &amp; Chr(j) &amp; Chr(k) &amp; Chr(l) &amp; Chr(m) &amp; Chr(i1) &amp; Chr(i2) &amp; Chr(i3) &amp; Chr(i4) &amp; Chr(i5) &amp; Chr(i6) &amp; Chr(n)<br  />MsgBox Application.Substitute(MSGPWORDFOUND1, “$$”, PWord1), vbInformation, HEADER<br  />Exit Do ‘Bypass all for…nexts<br  />End If<br  />End With<br  />Next: Next: Next: Next: Next: Next<br  />Next: Next: Next: Next: Next: Next<br  />Loop Until True<br  />On Error GoTo 0<br  />End If<br  />If WinTag And Not ShTag Then<br  />MsgBox MSGONLYONE, vbInformation, HEADER<br  />Exit Sub<br  />End If<br  />On Error Resume Next<br  />For Each w1 In Worksheets<br  />‘Attempt clearance with PWord1<br  />w1.Unprotect PWord1<br  />Next w1<br  />On Error GoTo 0<br  />ShTag = False<br  />For Each w1 In Worksheets<br  />‘Checks for all clear ShTag triggered to 1 if not.<br  />ShTag = ShTag Or w1.ProtectContents<br  />Next w1<br  />If ShTag Then<br  />For Each w1 In Worksheets<br  />With w1<br  />If .ProtectContents Then<br  />On Error Resume Next<br  />Do ‘Dummy do loop<br  />For i = 65 To 66: For j = 65 To 66: For k = 65 To 66<br  />For l = 65 To 66: For m = 65 To 66: For i1 = 65 To 66<br  />For i2 = 65 To 66: For i3 = 65 To 66: For i4 = 65 To 66<br  />For i5 = 65 To 66: For i6 = 65 To 66: For n = 32 To 126<br  />.Unprotect Chr(i) &amp; Chr(j) &amp; Chr(k) &amp; Chr(l) &amp; Chr(m) &amp; Chr(i1) &amp; Chr(i2) &amp; Chr(i3) &amp; Chr(i4) &amp; Chr(i5) &amp; Chr(i6) &amp; Chr(n)<br  />If Not .ProtectContents Then<br  />PWord1 = Chr(i) &amp; Chr(j) &amp; Chr(k) &amp; Chr(l) &amp; Chr(m) &amp; Chr(i1) &amp; Chr(i2) &amp; Chr(i3) &amp; Chr(i4) &amp; Chr(i5) &amp; Chr(i6) &amp; Chr(n)<br  />MsgBox Application.Substitute(MSGPWORDFOUND2, “$$”, PWord1), vbInformation, HEADER<br  />‘leverage finding Pword by trying on other sheets<br  />For Each w2 In Worksheets<br  />w2.Unprotect PWord1<br  />Next w2<br  />Exit Do ‘Bypass all for…nexts<br  />End If<br  />Next: Next: Next: Next: Next: Next<br  />Next: Next: Next: Next: Next: Next<br  />Loop Until True<br  />On Error GoTo 0<br  />End If<br  />End With<br  />Next w1<br  />End If<br  />MsgBox ALLCLEAR &amp; AUTHORS &amp; VERSION &amp; REPBACK, vbInformation, HEADER<br  />‘<br  />End Sub</p></blockquote><p style=\"text-align: justify;\">Cuối cùng, thực thi đoạn Macro này bằng cách:<br  />Click menu&nbsp;<strong>View</strong>&nbsp;&gt;&nbsp;<strong>Macros &gt; View Macros &gt;&gt; Run</strong></p><div style=\"text-align:center\"><img alt=\"screenhunter 0520feb 20012012 17\" height=\"429\" src=\"/uploads/blogs/2017_06/screenhunter_0520feb.20012012.17.jpg\" width=\"616\" /></div><p style=\"text-align: justify;\">Bạn chờ khoảng 5s để đoạn Macros làm việc.</p><div style=\"text-align:center\"><img alt=\"screenhunter 0720feb 20012012 18\" height=\"360\" src=\"/uploads/blogs/2017_06/screenhunter_0720feb.20012012.18.jpg\" width=\"573\" /></div><p style=\"text-align: justify;\">Password của file exel sẽ được hiện lên, bạn hãy ghi lại nếu cần:</p><div style=\"text-align:center\"><img alt=\"screenhunter 0920feb 20012012 18\" height=\"280\" src=\"/uploads/blogs/2017_06/screenhunter_0920feb.20012012.18.jpg\" width=\"541\" /></div><p style=\"text-align: justify;\">Cuối cùng, thông báo hiện lên toàn bộ password, protected của worksheet của file exel đã bị vô hiệu hóa, ban có thể chỉnh sửa thoải mái rồi đấy.</p><div style=\"text-align:center\"><img alt=\"screenhunter 1220feb 20012012 19\" height=\"276\" src=\"/uploads/blogs/2017_06/screenhunter_1220feb.20012012.19.jpg\" width=\"545\" /></div><p style=\"text-align: justify;\">Vậy là xong rồi, chúc bạn thành công nhé. Congtoan đã thử trên file word 2003, 2007 đều được. Có gì khó khăn comment để được giải đáp nhé.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(9, '', '', '<h2 style=\"text-align: justify;\">1 Các lỗi thường&nbsp;gặp khi sử dụng Word</h2><p style=\"text-align: justify;\">Loại trừ các lỗi thường gặp mang tính kỹ thuật (cài đặt), dưới đây là các lỗi chủ quan của người sử dụng Word mà Hiếu nhận thấy khi xem các bài luận của bàn bè nhờ sửa lỗi.</p><ol>	<li style=\"text-align: justify;\">Vừa làm vừa định dạng (format). Không nên như thế vì mất thời gian rất nhiều, hãy định dạng sau khi xong nội dung.</li>	<li style=\"text-align: justify;\">Ngắt trang không đúng, khi làm xong thì bài nhảy lung tung.</li>	<li style=\"text-align: justify;\">Sử dụng nhiều font chữ trong nội dung, kích cỡ chữ không đồng đều. Theo Hiếu nên sử dụng một font chữ thôi hoặc tối đa là 2.</li>	<li style=\"text-align: justify;\">Đánh số trang không đúng&nbsp;quy định. Các bạn thường đánh số trang luôn mấy trang bìa và trang mục lục nhé.</li>	<li style=\"text-align: justify;\">Mục lục không khớp với nội dung.</li>	<li style=\"text-align: justify;\">Không trích nguồn hình ảnh, tài liệu tham khảo. Giảng viên sẽ thường cho bạn câu hỏi “Cái này ở đâu ra?” nếu như bạn quên đi phần quan trọng này.</li>	<li style=\"text-align: justify;\">Sử dụng hình ảnh chất&nbsp;lượng quá lớn&nbsp;làm file Word nặng. Hãy tập sử dụng một các công cụ giảm kích thước ảnh trực tuyến đi nha.</li>	<li style=\"text-align: justify;\">Bố cục dàn trang không vừa mắt, chữ thục ra thục vô&nbsp;bừa bãi.</li></ol><p style=\"text-align: justify;\">Đây là một số lỗi &nbsp;chủ quan thường gặp khi sử dụng Word, còn các lỗi cài đặt thì trên mạng có rất nhiều kết quả.</p><h2 style=\"text-align: justify;\">Cách sử dụng thành thạo Word</h2><p style=\"text-align: justify;\">Cần cù bù thông minh là đương nhiên rồi, nếu ngày nào cũng đụng vào Word thì mình nghĩ một tuần thôi đã đủ cho bạn sử dụng được Word với tốc độ nhanh. Thế thì mình viết bài này để làm gì? Cùng xem có rút được kinh nghiệm gì không nhé.</p><h3 style=\"text-align: justify;\">Tập sử dụng các phím tắt</h3><p style=\"text-align: justify;\">Sử dụng phím tắt làm tốc độ đáng kể hơn là sử dụng chuột nhấp chức năng trên thanh công cụ. Bạn không cần học hết các phím tắt vì nó quá nhiều. Hãy để ý xem bạn thường làm gì trên thanh cộng cụ, khi để chuột ở đó nó sẽ gọi ý cho bạn phím tắt đấy.&nbsp;</p><p style=\"text-align: justify;\">Nếu để ý những người sử dụng thành thạo Word bạn sẽ hấy họ sử dụng phím tắt nhiều hơn là dùng chuột. Ngoài ra, Hiếu gửi bạn tham khảo thêm một số phím tắt mà Hiếu&nbsp;nhặt trên mạng.</p><figure id=\"attachment_1720\"><div style=\"text-align: justify;\"><div style=\"text-align:center\"><img alt=\"thanh thao word 2\" height=\"521\" sizes=\"(max-width: 737px) 100vw, 737px\" src=\"/uploads/blogs/2017_06/thanh-thao-word-2.png\" srcset=\"https://tranngocminhhieu.com/wp-content/uploads/2017/03/Thanh-thao-Word-2.png 737w, https://tranngocminhhieu.com/wp-content/uploads/2017/03/Thanh-thao-Word-2-100x70.png 100w, https://tranngocminhhieu.com/wp-content/uploads/2017/03/Thanh-thao-Word-2-696x492.png 696w, https://tranngocminhhieu.com/wp-content/uploads/2017/03/Thanh-thao-Word-2-594x420.png 594w\" width=\"737\" /></div></div><figcaption><div style=\"text-align: justify;\">Một số phím tắt trong Word. Nguồn tìm trên Google</div></figcaption></figure><h3 style=\"text-align: justify;\">Tập trung phát triển nội dung trước</h3><p style=\"text-align: justify;\">Hình thức và nội dung là hai điểm chính để chấm bài. Nhưng đừng vội căn chỉnh hình thức, hãy phát triễn nội dung cho đầy đủ, chính xác, đúng chính tả, có trích dẫn đầy đủ. Chỉnh lại hình thức không mất quá nhiều thời gian đâu, nó chỉ phụ thuộc vào mắt nhìn của bạn.</p><p style=\"text-align: justify;\"><strong>Mẹo:</strong></p><ul>	<li style=\"text-align: justify;\">Hãy cứ viết tràn lan từ trên xuống dưới. Miễn là nội dung phần nào rõ phần đó.</li>	<li style=\"text-align: justify;\">Đối với hình ảnh, biểu đồ và bảng thì cần có trích nguồn, tên và đánh số. Đây cũng là một kỹ thuật sử dụng chức năng của Word. Bạn hãy ghi những thông tin đó ngay tấm ảnh, biểu đồ và bảng dưới chân nó. Đến cuối cùng thì chúng ta xử lý luôn một thể. Cách xử lý đúng bạn hãy tham khảo bài viết&nbsp;<a href=\"https://tranngocminhhieu.com/tao-danh-muc-bang-bieu-theo-chuong/\" target=\"_blank\">Tạo danh mục bảng biểu và hình ảnh trong Word</a>.</li></ul><h3 style=\"text-align: justify;\">Định dạng hoàn chỉnh theo chuẩn</h3><p style=\"text-align: justify;\">Bạn được sáng tạo nhưng đừng đi xa với tiêu chuẩn yêu cầu của giảng viên, công ty. Hãy tham khảo các bài đạt chuẩn từ giảng viên hay cấp trên của bạn. Chú ý các đặc điểm mà người ta định dạng như:</p><ul>	<li style=\"text-align: justify;\"><strong>Khổ trang giấy:</strong>&nbsp;thường là&nbsp;A4. Để đứng hay để ngang là tùy vào loại văn bản bạn đang làm.</li>	<li style=\"text-align: justify;\"><strong>Định dạng văn bản:</strong>&nbsp;khi nào&nbsp;<strong>in đậm</strong>,&nbsp;<em>in nghiêng</em>. Đề mục có dễ tìm thấy?</li>	<li style=\"text-align: justify;\"><strong>Định dạng hình ảnh:</strong>&nbsp;đừng chệnh lệnh nhau nhiều về kích thước. Có sự đồng bộ khung và màu (có màu hoặc trắng đen) không?</li>	<li style=\"text-align: justify;\"><strong>Định dạng lề:</strong>&nbsp;chính là 4 cạnh của trang nhưng không đơn giản nhé. Bình thường nhất là 4 lề bằng nhau. Nhưng nếu bạn tinh tế thì sẽ thấy rằng không phải như vậy. Nó phụ thuộc vào bạn chèn header, footer như thế nào (nhiều hay ít). Khi in ra bạn có đóng lại thành tập không, nếu có bạn phải tăng độ dày lề trái để có chổ đóng ghim.</li>	<li style=\"text-align: justify;\"><strong>Định dạng số:</strong>&nbsp;đối với các bài luận bạn hãy tập đánh số theo kiểu thêm nhánh (Ví dụ: 1. Bí kíp tán gái/ 1.1. Những điều cần thiết/ 1.1.1. Đẹp trai/ 1.1.2. Có tiền). Những kiểu định dạng số la mã rồi abc đã cũ rồi.</li></ul><figure id=\"attachment_1669\"><div style=\"text-align: justify;\"><div style=\"text-align:center\"><img alt=\"word template 2\" height=\"539\" sizes=\"(max-width: 526px) 100vw, 526px\" src=\"/uploads/blogs/2017_06/word-template-2.png\" srcset=\"https://tranngocminhhieu.com/wp-content/uploads/2017/03/Word-Template-2.png 526w, https://tranngocminhhieu.com/wp-content/uploads/2017/03/Word-Template-2-356x364.png 356w, https://tranngocminhhieu.com/wp-content/uploads/2017/03/Word-Template-2-410x420.png 410w\" width=\"526\" /></div></div><figcaption><div style=\"text-align: justify;\">Ảnh mẫu về hướng dẫn định dạng font. Trích từ bài viết “Cách tạo và sử dụng Template trong Word”.</div></figcaption></figure><p style=\"text-align: justify;\"><strong>Mẹo:</strong>&nbsp;bạn cảm thấy mệt mõi vì có quá nhiều thứ để định dạng như vậy phải không? Hiếu đã có môt giải pháp cho bạn. Tất cả những gì bạn định dạng sau khi xong thì gộp chung lại nó là một Template của bạn, và bạn không cần phải thực hiện nhiều lần đâu. Hãy tham khảo bài viết&nbsp;Cách tạo Template trong Word&nbsp;chắc chắn sẽ giúp bạn nhiều đấy.</p><h2 style=\"text-align: justify;\">Lời kết</h2><p style=\"text-align: justify;\">Cách sử dụng thành thạo Word cho người mới thì bấy nhiêu đây Hiếu cảm thấy tạm ỗn rồi. Trong quá trình sử dụng chắc chắn bạn sẽ chiêm nghiệm ra nhiều&nbsp;hơn. Hiếu còn định viết một bài để giúp các bạn chuyên nghiệp hơn sau khi thành thạo Word nữa. Đăng ký nhận tin hoặc like page để theo dõi nhé.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(10, '', '', '<p style=\"text-align: justify;\">Trên máy tính cần nâng cấp, bạn mở trình duyệt vào địa chỉ:&nbsp;<a href=\"https://www.congtoan.net/download.php?url=https://www.microsoft.com/en-us/accessibility/windows10upgrade\" target=\"_blank\">https://www.microsoft.com/en-us/accessibility/windows10upgrade</a></p><p style=\"text-align: justify;\">Nhấn vào nút&nbsp;<strong>Upgrade Now</strong>&nbsp;để tải về file hỗ trợ nâng cấp có tên&nbsp;<strong>Windows10Upgrade24074.exe</strong>&nbsp;&gt; nhấp đôi vào để mở cửa sổ nâng cấp, giống cửa sổ Get Windows 10 hồi xưa. Công cụ sẽ tự động kiểm tra yêu cầu cập nhật như cấu hình máy, bộ nhớ trống…</p><div style=\"text-align:center\"><img alt=\"3962292 cai dat windows 10\" height=\"678\" sizes=\"(max-width: 975px) 100vw, 975px\" src=\"/uploads/blogs/2017_06/3962292_cai_dat_windows_10.jpg\" srcset=\"https://www.congtoan.net/wp-content/uploads/2017/02/3962292_Cai_dat_Windows_10.jpg 975w, https://www.congtoan.net/wp-content/uploads/2017/02/3962292_Cai_dat_Windows_10-403x280.jpg 403w, https://www.congtoan.net/wp-content/uploads/2017/02/3962292_Cai_dat_Windows_10-768x534.jpg 768w\" width=\"975\" /></div><p style=\"text-align: justify;\">Khi đã thỏa mãn các điều kiện, công cụ sẽ tự động tải về bộ cài Windows 10 và tự động cài đặt. Mặc dù phương pháp này được Microsoft nói là dành cho những người gặp khó khăn khi sử dụng Windows và cần dùng đến các công cụ trong phần Ease of Access như Screen Reader – đọc các mục, nội dung trên màn hình, Magnifier – phóng to nội dung, vốn dành cho người khiếm thị nhưng khi cài đặt thì công cụ này không kiểm tra thêm, chỉ đơn giản là nhấp vào là chạy nên bạn có thể yên tâm nâng cấp.</p><div style=\"text-align:center\"><img alt=\"3962293 windows 8 1 single language\" height=\"666\" sizes=\"(max-width: 1064px) 100vw, 1064px\" src=\"/uploads/blogs/2017_06/3962293_windows_8.1_single_language.jpg\" srcset=\"https://www.congtoan.net/wp-content/uploads/2017/02/3962293_Windows_8.1_Single_Language.jpg 1064w, https://www.congtoan.net/wp-content/uploads/2017/02/3962293_Windows_8.1_Single_Language-447x280.jpg 447w, https://www.congtoan.net/wp-content/uploads/2017/02/3962293_Windows_8.1_Single_Language-768x481.jpg 768w, https://www.congtoan.net/wp-content/uploads/2017/02/3962293_Windows_8.1_Single_Language-320x200.jpg 320w\" width=\"1064\" /></div><p style=\"text-align: justify;\">Mình đã nâng cấp thành công cho chiếc máy Dell Inspiron 7447 chạy Windows 8.1 Single Language của papa lên Windows 10 Home Single Language mà không gặp bất cứ trở ngại nào. Trải nghiệm sử dụng sau đó cũng không khác gì những bản Windows 10 Home khác.</p><div style=\"text-align:center\"><img alt=\"3962294 windows 10 home single language\" height=\"738\" sizes=\"(max-width: 1404px) 100vw, 1404px\" src=\"/uploads/blogs/2017_06/3962294_windows_10_home_single_language.jpg\" srcset=\"https://www.congtoan.net/wp-content/uploads/2017/02/3962294_Windows_10_Home_Single_Language.jpg 1404w, https://www.congtoan.net/wp-content/uploads/2017/02/3962294_Windows_10_Home_Single_Language-533x280.jpg 533w, https://www.congtoan.net/wp-content/uploads/2017/02/3962294_Windows_10_Home_Single_Language-768x404.jpg 768w\" width=\"1404\" /></div><p style=\"text-align: justify;\">Trên trang hỗ trợ cập nhật Windows 10, Microsoft cho biết hãng chưa công bố thời điểm chất dứt chương trình cập nhật miễn phí nói trên. Khi nào hết sẽ báo, như vậy trước mắt chúng ta cứ thoải mái cập nhật Windows 10 mà không phải lo lắng gì.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(11, '', '', '<h3 style=\"text-align: justify;\">1. Win + I</h3><p style=\"text-align: justify;\">Phím tắt hữu ích nhất dùng để mở ứng dụng cài đặt trên Windows 10 một cách nhanh chóng.</p><h3 style=\"text-align: justify;\">2. Win + A</h3><p style=\"text-align: justify;\">Sử dụng phím tắt Win + A để mở và xem thông báo hiện tại trên bảng Panel mà không cần phải click chuột vào các biểu tượng nhỏ trên thanh Taskbar.</p><h3 style=\"text-align: justify;\">3. Win + S</h3><p style=\"text-align: justify;\">Sử dụng phím tắt Win + S để khởi động Cortana hoặc Search box nhanh chóng.</p><p style=\"text-align: justify;\">Cortana (trợ lý ảo của Microsoft dành cho hệ điều hành Windows với chức năng tương tự như Siri trên iOS hay Google Now trên Android. Bạn chỉ cần ra lệnh bằng giọng nói, Cortana sẽ thực hiện một cách nhanh chóng và đơn giản).</p><h3 style=\"text-align: justify;\">4. Win + C</h3><p style=\"text-align: justify;\">Phím tắt Win + C cũng được dùng để khởi động Cortana như phím tắt Win + S nhưng khác nhau ở chỗ phím tắt Win + S để khởi động Cortana ở chế độ nhập (Input Mode) trên bàn phím, còn phím tắt Win + C để khởi động Cortana ở chế độ nghe (Listening Mode).</p><p style=\"text-align: justify;\">Ngoài ra phím tắt này cực kỳ hữu ích nếu bạn không muốn kích hoạt tính năng “Hey, Cortana”.</p><h3 style=\"text-align: justify;\">5. Win +Ctrl + D</h3><p style=\"text-align: justify;\">Sử dụng nếu bạn muốn tạo và mở một Desktop ảo mới.</p><h3 style=\"text-align: justify;\">6. Win + Ctrl + Mũi tên trái/phải</h3><p style=\"text-align: justify;\">Nếu bạn đang mở nhiều Desktop ảo khác nhau để làm việc. Bạn có thể sử dụng phím tắt Win + Ctrl + Mũi tên trái/phải để điều hướng đến các Desktop ảo khác nhau.</p><h3 style=\"text-align: justify;\">7. Win + Ctrl + F4</h3><p style=\"text-align: justify;\">Đóng Desktop ảo hiện tại.</p><h3 style=\"text-align: justify;\">8. Win + Tab</h3><p style=\"text-align: justify;\">Khởi động tính năng Task View.</p><h3 style=\"text-align: justify;\">9. Ctrl + Alt + Tab</h3><p style=\"text-align: justify;\">Xem các ứng dụng đang mở trên Desktop.</p><h3 style=\"text-align: justify;\">10. Win + Phím mũi tênTrái/Phải/Lên/Xuống</h3><p style=\"text-align: justify;\">Phím tắt Win+ phím mũi tên Trái/Phải/Lên/Xuống để dán cửa sổ đang mở sang trái, phải hoặc phóng to hay thu nhỏ lại.</p><h3 style=\"text-align: justify;\">11. Win + G</h3><p style=\"text-align: justify;\">Trên Windows 10 có một tính năng mặc định khá thú vị và được giấu trong ứng dụng Xbox mà ít người biết đến, đó là Game DVR – tính năng cho phép người dùng quay video toàn bộ hoạt động trên giao diện ứng dụng của mình.</p><p style=\"text-align: justify;\">Sử dụng phím tắt Win + G để mở công cụ Game DVR tool và bắt đầu quay video.</p><h3 style=\"text-align: justify;\">12. Win + Alt + G</h3><p style=\"text-align: justify;\">Quay nhanh video toàn bộ hoạt động trên chương trình hiện tại hoặc cửa sổ game (game windows).</p><h3 style=\"text-align: justify;\">13. Win + Alt + R</h3><p style=\"text-align: justify;\">Sử dụng phím tắt để dừng quay video.</p><h3 style=\"text-align: justify;\">14. Ctrl + A (trong Command Prompt)</h3><p style=\"text-align: justify;\">Chọn tất cả.</p><h3 style=\"text-align: justify;\">15. Ctrl + C ( trong Command Prompt)</h3><p style=\"text-align: justify;\">Sử dụng để sao chép văn bản hoặc xuất dữ liệu trong Command Prompt. Ngoài ra bạn có thể sử dụng phím tắt khác có chức năng tương tự là “Ctrl + Insert”.</p><h3 style=\"text-align: justify;\">16. Ctrl + V (trong Command Prompt)</h3><p style=\"text-align: justify;\">Sử dụng để dán văn bản đã sao chép hoặc nhập dữ liệu trong Command Prompt. Ngoài ra bạn có thể sử dụng phím tắt khác có chức năng tương tự là “Shift + Insert”.</p><h3 style=\"text-align: justify;\">17. Ctrl + M ( trong Command Prompt)</h3><p style=\"text-align: justify;\">Đánh dấu chữ đã chọn, để chọn văn bản hoặc xuất dữ liệu bạn sử dụng Shift + phím mũi tên.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(12, '', '', 'để tăng độ bảo mật cũng như an toàn cho máy tính trong suốt quá trình sử dụng.&nbsp;Tuy nhiên trước khi cài đặt một phần mềm diệt virus khác, người dùng nên vô hiệu hóa Windows Defender đi để tránh xung đột hoặc những thông báo không cần thiết. Nhưng có một khó khăn với người dùng là Windows Defender trên Windows 10 khi bị tắt đi thì sau khi người dùng khởi động lại máy tính, nó sẽ lại tự động bật lên chứ chưa tắt hẳn hoàn toàn.<br  /><br  />Ở bài viết này, diễn đàn sẽ hướng dẫn các bạn 2 cách để vô hiệu hóa vĩnh viễn Windows Defender trên Windows 10.<br  /><br  /><b>Cách 1: Vô hiệu hóa Windows Defender bằng cách sử dụng Group Policy</b><br  /><br  /><b>Bước 1:</b>&nbsp;Sử dụng phím tắt&nbsp;<i>Windows + R</i>&nbsp;để mở hộp thoại&nbsp;<i>Run</i>, tiếp theo bạn gõ &quot;<i>gpedit.msc</i>&quot; vào ô và nhấn&nbsp;<i>Enter</i>.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/fuYSWmx.jpg\" src=\"http://i.imgur.com/fuYSWmx.jpg\" /><br  />​<br  /><b>Bước 2:</b>&nbsp;Hộp thoại&nbsp;<i>Group Policy</i>&nbsp;hiện ra, bạn tiếp tục truy cập theo đường dẫn dưới đây.<br  />Mã:<pre>Local Computer Policy =&gt; Computer Configuration =&gt; Administrative Templates =&gt; Windows Components =&gt; Windows Defender</pre><br  /><b>Bước 3:</b>&nbsp;Sau khi truy cập theo đường dẫn như bước trên, bạn hãy quan sát bên khung bên phải sẽ thấy được mục có tên là &quot;<i>Turn off Windows Defender</i>&quot;.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/Iq1MLo6.jpg\" src=\"http://i.imgur.com/Iq1MLo6.jpg\" /><br  />​<br  /><b>Bước 4:</b>&nbsp;Nhấp 2 lần chuột trái vào mục &quot;<i>Turn off Windows Defender</i>&quot; để mở nó lên và thiết lập &quot;<i>Enabled</i>&quot; cho mục đó, sau đó nhấn&nbsp;<i>Apply</i>&nbsp;và nhấn tiếp&nbsp;<i>OK</i>&nbsp;để xác nhận thiết lập.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/xG83n9q.jpg\" src=\"http://i.imgur.com/xG83n9q.jpg\" /><br  />​<br  /><b>Cách 2: Vô hiệu hóa Windows Defender bằng cách sử dụng Windows Registry</b><br  /><br  /><b>Bước 1:</b>&nbsp;Sử dụng phím tắt&nbsp;<i>Windows + R</i>&nbsp;để mở hộp thoại&nbsp;<i>Run</i>, tiếp theo bạn gõ &quot;<i>regedit</i>&quot; vào ô và nhấn&nbsp;<i>Enter</i>.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/4aq2LmK.jpg\" src=\"http://i.imgur.com/4aq2LmK.jpg\" /><br  />​<br  /><b>Bước 2:</b>&nbsp;Hộp thoại R<i>egistry Editor</i>&nbsp;hiện ra, bạn tiếp tục truy cập theo đường dẫn dưới đây.<br  />Mã:<pre>HKEY_LOCAL_MACHINE \\ SOFTWARE \\ Policies \\ Microsoft \\ Windows Defender</pre><br  /><b>Bước 3:</b>&nbsp;Sau khi truy cập theo đường dẫn như bước trên, bạn hãy quan sát bên khung bên phải sẽ thấy được mục có tên là &quot;<i>DisableAntiSpyware</i>&quot;.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/ExZ08Tt.jpg\" src=\"http://i.imgur.com/ExZ08Tt.jpg\" /><br  />​<br  /><b>Bước 4:</b>&nbsp;Nhấp 2 lần chuột trái vào mục &quot;<i><i>DisableAntiSpyware</i></i>&quot; để mở nó lên và thiết lập lại giá trị là &quot;<i>1</i>&quot;, sau đó nhấn&nbsp;<i>Apply</i>&nbsp;và nhấn tiếp&nbsp;<i>OK</i>&nbsp;để xác nhận thiết lập.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/lLhxCAz.jpg\" src=\"http://i.imgur.com/lLhxCAz.jpg\" /><br  />​<br  />Lúc này khi các bạn vào nơi thiết lập&nbsp;<i>Windows Defender</i>, các bạn sẽ thấy phần thiết lập đã bị khóa lại và làm mờ đi.<br  /><br  /><img alt=\"&#91;​IMG&#93;\" data-url=\"http://i.imgur.com/dk124Ij.jpg\" src=\"http://i.imgur.com/dk124Ij.jpg\" /><br  />​<br  />Chúc các bạn thành công!<br  /><br  /><i>Tham khảo:&nbsp;<a href=\"http://www.ghacks.net/2015/10/25/how-to-disable-windows-defender-in-windows-10-permanently/\" rel=\"nofollow\" target=\"_blank\">ghacks</a></i>​<br  />&nbsp;', '', NULL, 2, '', 0, 1, 1, 1, 0),
(13, '', '', '<p style=\"text-align: justify;\">&nbsp;<a href=\"https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2017-8543\" target=\"_blank\">CVE-2017-8543</a>.&nbsp;</p><p style=\"text-align: justify;\">Một lỗi trong dịch vụ tìm kiếm&nbsp;Windows Search trong Windows chứa lỗ hổng bảo mật, có thể bị khai thác&nbsp;tấn công chạy mã gây hại từ xa, chiếm toàn quyền quản trị một hệ thống.</p><p style=\"text-align: justify;\">Sau động thái bất thường của Microsoft khi phát hành khẩn cấp bản vá lỗi chống mã độc tống tiền&nbsp;WannaCry cho Windows XP dù đã hết hạn hỗ trợ theo vòng đời sản phẩm, người dùng Windows XP tiếp tục nhận bản vá mới trong đợt phát hành này.</p><table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"4\">	<tbody>		<tr>			<td style=\"text-align: justify;\">Bản cập nhật dành cho các phiên bản từ Windows XP, Vista, Windows Server 2003... đến Windows 10, nhằm ngăn chặn các lỗ hổng nguy hiểm có thể bị khai thác tấn công mà nhiều bằng chứng cho thấy chúng có sự hậu thuẫn của các tổ chức chính phủ</td>		</tr>		<tr>			<td>			<p style=\"text-align: justify;\">Trung tâm Phòng thủ Không gian mạng của Microsoft</p>			</td>		</tr>	</tbody></table><p style=\"text-align: justify;\">Một lỗi khác mang số hiệu&nbsp;<a href=\"http://cve-2017-8464/\" target=\"_blank\">CVE-2017-8464</a>&nbsp;đang bị khai thác tấn công. Tội phạm mạng nhắm vào cách thức mà các biểu tượng (icon) hiển thị để nhúng mã độc.</p><p style=\"text-align: justify;\">Trình duyệt web Microsoft Edge và Internet Explorer cũng có vài lỗ hổng bảo mật mang số hiệu CVE-2017-8498, CVE-2017-8530 và&nbsp;CVE-2017-8523, nhưng Microsoft chưa ghi nhận các cuộc tấn công nhắm vào các lỗi này.</p><p style=\"text-align: justify;\">Microsoft khuyến cáo người dùng tải và cài đặt nhanh các tập tin cập nhật từ website Microsoft hoặc bật chế độ cập nhật tự động cho Windows Update.&nbsp;</p><p style=\"text-align: justify;\">Bài học về sự chậm trễ cập nhật các bản vá lỗi phần mềm như Windows đã tiếp tay mã độc WannaCry hoành hành khắp thế giới, người dùng cá nhân lẫn các doanh nghiệp nên hành động ngay trước khi trở thành nạn nhân của một biến thể mã độc mới.</p><p style=\"text-align: justify;\">* Đối với người dùng&nbsp;Windows Server 2008,&nbsp;Windows 7,&nbsp;Windows Server 2008 R2, Windows Server 2012, Windows 8.1, Windows 8.1 RT,&nbsp;Windows Server 2012 R2, Windows 10, hay&nbsp;Windows Server 2016 xem&nbsp;<a href=\"https://support.microsoft.com/help/4025686\" target=\"_blank\"><strong>Tại đây</strong></a>.</p><p style=\"text-align: justify;\">* Đối với người dùng&nbsp;Windows XP,&nbsp;Windows Vista,&nbsp;Windows 8,&nbsp;Windows Server 2003, hay&nbsp;Windows Server 2003 R2 xem&nbsp;<a href=\"https://support.microsoft.com/help/4025687\" target=\"_blank\">Tại đây</a>.</p><p style=\"text-align: justify;\">* Để kiểm tra xem mình đang dùng phiên bản Windows nào, bạn nhấn tổ hợp phím&nbsp;<em>Windows + R</em>, gõ&nbsp;<em><strong>msconfig</strong></em>&nbsp;vào hộp thoại &quot;Run&quot;, rồi nhấn Enter. Thông số máy tính và phiên bản Windows sẽ xuất hiện.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(14, '', '', '<div style=\"text-align: justify;\">Quan trọng hơn, công cụ này có thể kiểm tra và cảnh báo nếu máy tính có chứa lỗ hổng EternalBlue - lỗ hổng mà Wanna Crypt đang khai thác để xâm nhập máy tính.&nbsp;</div><p style=\"text-align: justify;\">Công ty an ninh mạng Vnist cũng phát triển công cụ miễn phí (trên website vnist.vn) cho phép dò quét lỗ hổng MS17-010 trong các dải mạng để phát hiện các máy tính chưa được khắc phục, cập nhật bản vá.</p><p style=\"text-align: justify;\">Việc này giúp các quản trị có thể nhanh chóng kiểm tra sự an toàn của các máy tính trong hệ thống mạng đối với lỗ hổng MS17-010, từ đó có phương án cập nhật bản vá hoặc phòng chống tốt hơn.</p><p style=\"text-align: justify;\">Trước đó, mã độc tống tiền Wanna Crypt chỉ trong vài giờ đã lây nhiễm hơn 100 nghìn máy tính trên thế giới. Ghi nhận bước đầu từ hệ thống giám sát virus của Bkav từ sáng 13-5 đã có những trường hợp lây nhiễm mã độc này tại Việt Nam.</p><p style=\"text-align: justify;\">Con số lây nhiễm được dự báo sẽ tăng mạnh trong tuần này với số lượng lớn máy tính được bật lên khi mọi người đi làm trở lại.</p><p style=\"text-align: justify;\">Wanna Crypt có khả năng quét toàn bộ các máy tính trong cùng mạng để tìm kiếm và lây trực tiếp vào các máy có chứa lỗ hổng EternalBlue mà không cần người dùng phải thao tác trực tiếp với tập tin đính kèm hay đường dẫn độc hại.</p><p style=\"text-align: justify;\">Vì vậy, chỉ cần một máy tính trong cơ quan, doanh nghiệp bị nhiễm mã độc, toàn bộ các máy tính khác trong mạng sẽ có nguy cơ bị mã độc tấn công, mã hoá dữ liệu.</p><p style=\"text-align: justify;\">Theo nhận định của các chuyên gia Bkav, Wanna Crypt có thể xếp vào mức nguy hiểm cao nhất vì vừa lây lan nhanh vừa có tính phá hoại nặng nề.</p><p style=\"text-align: justify;\">Kiểu lây nhiễm của mã độc tuy không mới, nhưng cho thấy xu hướng tận dụng các lỗ hổng mới để tấn công, kiếm tiền sẽ còn được hacker sử dụng nhiều trong thời gian tới, đặc biệt là các lỗ hổng của hệ điều hành.</p><p style=\"text-align: justify;\">Sau khi quét bằng tool, nếu phát hiện máy tính có lỗ hổng, người dùng cần sao chép toàn bộ dữ liệu quan trọng trên máy, cập nhật bản vá cho hệ điều hành bằng cách vào Windows Update → Check for updates để kiểm tra các bản vá mới nhất.</p><p style=\"text-align: justify;\">Để phòng ngừa nguy cơ lây nhiễm mã độc, các chuyên gia khuyến cáo người dùng mở các tập tin văn bản nhận từ Internet trong môi trường cách ly Safe Run và cài phần mềm diệt virus thường trực trên máy tính để được bảo vệ tự động.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(15, '', '', 'mạng viễn thông quốc gia, ga tàu điện ngầm cho tới sân bay Boryspil tại Kiev đã phải tạm dừng hoạt động. Thậm chí, nó còn gây ảnh hưởng đến nhiều máy ATM và trung tâm thương mại lớn tại quốc gia này.&nbsp;<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">	<tbody>		<tr>			<td>			<div style=\"text-align:center\"><img alt=\"screen shot 2017 06 27 at 11 2 5074 1536 1498581003\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" height=\"457\" src=\"/uploads/blogs/2017_06/screen-shot-2017-06-27-at-11-2-5074-1536-1498581003.jpg\" width=\"500\" /></div>			</td>		</tr>		<tr>			<td>			<p>Nhiều máy tính ở một siêu thị phía Đông Ukraine ngưng hoạt động do bị virus Petrwrap tấn công.</p>			</td>		</tr>	</tbody></table><p>Tầm ảnh hưởng của cuộc tấn công còn lan rộng ra cả châu Âu khi công ty vận chuyển hàng hoá nổi tiếng Đan Mạch, Maersk, và một công ty khác ở Nga cho biết nhiều website của họ đã sập. Server của công ty dầu mỏ Rosneft (Nga) cũng bị tấn công trong đợt này và chưa ước tính được mức độ thiệt hại. Ngoài ra, một số công sở và công ty có trụ sở ở Mỹ cũng ghi nhận những cuộc tấn công tương tự từ một loại mã độc tống tiền mới.</p><p>Một chuyên gia từ Kaspersky Lab cho biết loại virus tạo ra cuộc tấn công hàng loạt trên mang tên Petrwrap, biến thể từ mã độc tống tiền có tên Petya từng được phát hiện từ tháng 3. Hiện giờ mới chỉ có 4 trong tổng số 61 công cụ bảo mật có thể phát hiện ra con virus này. Cách thức lây lan của con virus tống tiền mới được cho là nguy hiểm tương tự như WannaCry khi dựa trên lỗ hổng bảo mật Eternal Blue của hệ điều hành Windows.</p><p><br  />Hiện tại, vẫn chưa có cách thức rõ ràng để phòng ngừa và ngăn chặn sự lây lan của loại mã độc tống tiền mới này. Trong quá trình lây nhiễm, virus Petrwrap sẽ mã hoá dữ liệu của máy tính và yêu cầu tiền chuộc bằng Bitcoin, tương đương khoảng 300 USD. Theo&nbsp;<em>The Verge</em>, tính tới cuối ngày 27/6 (giờ Việt Nam), nó đã thực hiện được 8 giao dịch đòi tiền chuộc với tổng số tiền khoảng 2.300 USD.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_blogs_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(16, '', '', '<div style=\"text-align: justify;\">chỉ sau Trung Quốc (17%) nhưng cao hơn khá nhiều so với Nga (8%).&nbsp;</div><p style=\"text-align: justify;\">Các thiết bị thông minh kết nối mạng IoT như đồng hồ, TV, router, hay camera an ninh... ngày càng phổ biến khiến chúng đang trở thành mục tiêu hấp dẫn với tội phạm mạng. Số lượng thiết bị IoT đang sử dụng trên toàn cầu hiện nay được ước tính lên tới hơn 6 tỷ.&nbsp;</p><p style=\"text-align: justify;\">Kaspersky cho biết, tổng số mẫu phần mềm độc hại nhắm đến các thiết bị thông minh được họ phát hiện đã lên tới hơn 7.000, trong đó hơn một nửa xuất hiện chỉ trong 2017.&nbsp;Hầu hết các cuộc tấn công nhắm vào máy ghi hình kỹ thuật số hoặc máy quay IP (63%), và 20% là vào các thiết bị mạng, gồm router, modem DSL ... Khoảng 1% mục tiêu là các thiết bị quen thuộc nhất của người dùng như máy in và thiết bị gia đình thông minh khác.</p><p style=\"text-align: justify;\">Sau khi xâm nhập thành công, tội phạm có thể theo dõi người dùng, tống tiền và thậm chí âm thầm biến thiết bị lây nhiễm trở thành các công cụ tấn công mạng (bonet) như Mirai và Hajim.&nbsp;</p><p style=\"text-align: justify;\">Theo các chuyên gia bảo mật, để đảm bảo an toàn cho thiết bị thông minh kết nối mạng IoT khỏi những cuộc tấn công, người dùng nên hạn chế truy cập từ mạng bên ngoài nếu thấy không cần thiết hoặc tắt tất cả các dịch vụ mạng trong trường hợp không sử dụng đến thiết bị. Bên cạnh đó, trước khi sử dụng thiết bị mới, bắt buộc phải thay đổi mật khẩu mặc định và thiết lập mật khẩu khác. Thường xuyên cập nhật phần mềm của thiết bị lên phiên bản mới nhất cũng là một cách để phòng ngừa các cuộc tấn công.</p><p style=\"text-align: justify;\">Với một số thiết bị đặc biệt có mật khẩu, tài khoản tiêu chuẩn hoặc không thể thay đổi, huỷ kích hoạt thì nên vô hiệu hoá các dịch vụ mạng mà chúng sử dụng hoặc đóng truy cập vào mạng bên ngoài.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(17, '', '', '<div style=\"text-align: justify;\"><br  />Đơn vị quản lý APG chưa thông báo cụ thể thời gian khắc phục sự cố cho các đối tác. Để giảm ảnh hưởng tới việc truy cập Internet của người dùng, một số công ty đang khai thác tuyến cáp này đã mở thêm băng thông dự phòng.<br  /><br  />Tuyến cáp APG có chiều dài 10.400 km, đặt ngầm dưới biển Thái Bình Dương, được đầu tư bởi các doanh nghiệp quốc tế và 4 công ty Việt Nam gồm FPT, VNPT, Viettel và CMC. Với băng thông tối đa lên đến 54 Tb/giây (4 Tb/giây lúc khai trương), đây là tuyến cáp quang biển có dung lượng lớn nhất hoạt động tại châu Á.<br  /><br  />Tuyến APG có tốc độ gấp đôi AAG lúc mới khai trương và gấp 20 lần khi khai thác tối đa. Việc đưa vào sử dụng tuyến cáp quang biển APG được chờ đợi giúp giảm phụ thuộc vào tuyến AAG vốn liên tục gián đoạn trong năm qua.</div>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(18, '', '', '<p style=\"text-align: justify;\">So với những chiếc spinner thông thường, sản phẩm mà con bà&nbsp;Allums sử dụng có thêm pin bên trong và loa bluetooth để phát nhạc. Thị trường cũng xuất hiện một số mẫu đồ chơi kiểu này tích hợp đèn LED phát sáng nhiều màu.</p><p style=\"text-align: justify;\">Sau khi dập tắt đám cháy,&nbsp;Allums đã tìm bao bì của chiếc fidget spinner để xem nhà sản xuất của nó là ai, thì thấy dòng chữ &quot;Made in China&quot; (Được sản xuất tại Trung Quốc) trên hộp sản phẩm.</p><p style=\"text-align: justify;\">Trường hợp tương tự xảy ra với Michelle Carr, một bà mẹ khác đến từ Michigan (Mỹ). &quot;Nó là món đồ chơi quay quay đơn giản mà bọn trẻ rất thích, tuy nhiên mức độ an toàn của những chiếc spinner này thì chưa chắc chắn&quot;, cô nói.</p><p style=\"text-align: justify;\">Ủy ban An toàn sản phẩm tiêu dùng Mỹ cho biết đang điều tra các sự cố mà người dùng gặp phải. Cơ quan này khuyến cáo người dùng không sạc pin qua đêm khi đang ngủ, sử dụng đúng bộ sạc của nhà sản xuất.</p><p style=\"text-align: justify;\">Tháng này, hải quan Đức đã thu giữ và tính phá hủy 35 tấn fidget spinner có nguồn gốc từ Trung Quốc&nbsp;do thiếu giấy tờ nhập khẩu và có thể gây nguy hiểm cho người dùng.</p><p style=\"text-align: justify;\">Fidget spinner là món đồ chơi thuộc dạng nghịch trên tay, cấu tạo gồm một trục quay có ổ bi và các cánh. Nó được quảng cáo giúp người dùng giải tỏa căng thẳng, hỗ trợ một số bệnh tâm lý nhưng hiệu quả chưa được kiểm chứng.</p><p style=\"text-align: justify;\">Món đồ chơi đơn giản này từng gây &quot;sốt&quot; tại Mỹ hay nhiều quốc gia khác và vẫn khá &quot;hot&quot; trên thị trường. Fidget spinner chủ yếu được sản xuất ở Trung Quốc.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(19, '', '', '<p><em>Giải nhất</em>:&nbsp;Dock Worker (Công nhân bốc xếp)<br  />Tác giả:&nbsp;Cork (Ireland)<br  />Điện thoại: iPhone 6s</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhì&amp;lt;/em&amp;gt;: The Performer (Nghệ sĩ đường phố)&amp;lt;br /&amp;gt;	Tác giả: Yeow-Kwang Yeo (Singapore)&amp;lt;br /&amp;gt;	Điện thoại: iPhone 6 Plus&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903709\" id=\"vne_slide_image_2\" src=\"http://img.f7.sohoa.vnecdn.net/2017/06/28/iPhone-3-1498637990_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhì</em>:&nbsp;The Performer (Nghệ sĩ đường phố)<br  />Tác giả:&nbsp;Yeow-Kwang Yeo (Singapore)<br  />Điện thoại: iPhone 6 Plus</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải ba&amp;lt;/em&amp;gt;: The City Palace (Cung điện thành phố)&amp;lt;br /&amp;gt;	Tác giả: Kuanglong Zhang (Trung Quốc)&amp;lt;br /&amp;gt;	Điện thoại: iPhone 7&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903710\" id=\"vne_slide_image_3\" src=\"http://img.f8.sohoa.vnecdn.net/2017/06/28/iPhone-4-1498637990_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải ba</em>:&nbsp;The City Palace (Cung điện thành phố)<br  />Tác giả:&nbsp;Kuanglong Zhang (Trung Quốc)<br  />Điện thoại: iPhone 7</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Động vật&amp;lt;/em&amp;gt;: Francesca Tonegutti (Italia)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903711\" id=\"vne_slide_image_4\" src=\"http://img.f8.sohoa.vnecdn.net/2017/06/28/iPhone-6_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Động vật</em>: Francesca Tonegutti (Italia)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Hoa:&amp;lt;/em&amp;gt; Sidney Po (Philippines)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903712\" id=\"vne_slide_image_5\" src=\"http://img.f5.sohoa.vnecdn.net/2017/06/28/iPhone-7-1498639168_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Hoa:</em>&nbsp;Sidney Po (Philippines)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Tự nhiên&amp;lt;/em&amp;gt;: Aaron Sandberg (Mỹ)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903713\" id=\"vne_slide_image_6\" src=\"http://img.f8.sohoa.vnecdn.net/2017/06/28/iPhone-9-1498639387_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Tự nhiên</em>:&nbsp;Aaron Sandberg (Mỹ)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Chân dung: &amp;lt;/em&amp;gt;Gabriel Ribeiro (Brazil)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903714\" id=\"vne_slide_image_7\" src=\"http://img.f7.sohoa.vnecdn.net/2017/06/28/iPhone-10-1498639387_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Chân dung:&nbsp;</em>Gabriel Ribeiro (Brazil)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Con người:&amp;lt;/em&amp;gt; Dina Alfasi (Israel)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903715\" id=\"vne_slide_image_8\" src=\"http://img.f8.sohoa.vnecdn.net/2017/06/28/iPhone-11-1498639387_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Con người:</em>&nbsp;Dina Alfasi (Israel)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Tĩnh vật:&amp;lt;/em&amp;gt; David Hayes (Mỹ)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903716\" id=\"vne_slide_image_9\" src=\"http://img.f6.sohoa.vnecdn.net/2017/06/28/iPhone-12-1498639387_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Tĩnh vật:</em>&nbsp;David Hayes (Mỹ)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Hoàng hôn&amp;lt;/em&amp;gt;: Kuanglong Zhang (Trung Quốc)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903717\" id=\"vne_slide_image_10\" src=\"http://img.f7.sohoa.vnecdn.net/2017/06/28/iPhone-13-1498639600_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Hoàng hôn</em>:&nbsp;Kuanglong Zhang (Trung Quốc)</p><br  />&nbsp;<br  /><img alt=\"\" data-component-caption=\"&#039;&#039;&amp;lt;p&amp;gt;	&amp;lt;em&amp;gt;Giải nhất thể loại Du lịch&amp;lt;/em&amp;gt;: Jen Pollack Bianco (Mỹ)&amp;lt;/p&amp;gt;&#039;&#039;\" data-reference-id=\"24903718\" id=\"vne_slide_image_11\" src=\"http://img.f8.sohoa.vnecdn.net/2017/06/28/iPhone-14-1498639600_680x0.jpg\" /><a>&nbsp;</a><p><em>Giải nhất thể loại Du lịch</em>:&nbsp;Jen Pollack Bianco (Mỹ)</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(20, '', '', '<h3 id=\"ftoc-heading-1\" style=\"text-align: justify;\">Vậy tại sao mình lại thích sử dụng Ampps hơn?</h3><p style=\"text-align: justify;\">Có hàng tá lý do để mình nói rằng Ampps dùng tốt hơn XAMPP. Bạn có thể thấy trên blog mình khi hướng dẫn localhost đều mang XAMPP ra, đơn giản là nó dễ dùng, không nhiều chức năng gây rối cho người mới tìm hiểu chứ máy mình chẳng cài XAMPP bao giờ, một là Ampps, hai là Vagrant.</p><p style=\"text-align: justify;\">Thôi lê thê vậy đủ rồi, có một số lý do để mình thích dùng Ampps hơn là vì:</p><ul>	<li style=\"text-align: justify;\">Hỗ trợ MongoDB.</li>	<li style=\"text-align: justify;\">Luôn cập nhật phpMyAdmin và MySQL bản mới nhất. Tình trạng hai phiên bản MySQL và phpMyAdmin không “ăn rơ” với nhau dễ khiến bạn gặp lỗi SQL khi tạo database hoặc import database, XAMPP phiên bản mới nhất là ví dụ điển hình.</li>	<li style=\"text-align: justify;\">Hỗ trợ thêm domain ảo vào localhost nhanh, giống như bạn thêm domain vào host vậy, nó tự sửa file hosts trên máy tính của.</li>	<li style=\"text-align: justify;\">Tạo nhiều tài khoản FTP cho localhost.</li>	<li style=\"text-align: justify;\">Có công cụ backup dữ liệu localhost.</li>	<li style=\"text-align: justify;\">Hỗ trợ nhiều phiên bản PHP khác nhau, quản lý module PHP dễ dàng và sửa cấu hình PHP cũng dễ dàng.</li>	<li style=\"text-align: justify;\">Quản lý module Apache dễ dàng qua bảng điều khiển.</li>	<li style=\"text-align: justify;\">Và quan trọng, hỗ trợ tính năng cài tự động hàng trăm mã nguồn khác nhau của Softaculous. Mình không biết&nbsp;nói mình đã tiết kiệm thời gian như thế nào khi làm việc localhost thông qua tính năng này.</li>	<li style=\"text-align: justify;\">Hỗ trợ nhiều hệ điều hành/nền tảng khác nhau.</li>	<li style=\"text-align: justify;\">Và thậm chí có thể sử dụng nó để làm web server vì nó có đủ các tính năng tiêu chuẩn.</li></ul><h3 id=\"ftoc-heading-2\" style=\"text-align: justify;\">Hướng dẫn cài Ampps</h3><h4 id=\"ftoc-heading-3\" style=\"text-align: justify;\">Chuẩn bị khi dùng Windows</h4><p style=\"text-align: justify;\">Nếu bạn dùng Windows, hãy chắc chắn là tập tin&nbsp;<code>C:\\Windows\\system32\\drive\\etc\\hosts</code>&nbsp;được cấp quyền chỉnh sửa. Bạn vào thư mục&nbsp;<em>C:\\Windows\\system32\\drive\\etc\\</em>&nbsp;và click chuột phải vào tập tin&nbsp;<em>hosts</em>&nbsp;rồi chọn&nbsp;<em>Properties</em>.</p><div style=\"text-align:center\"><img alt=\"hosts properties\" height=\"598\" src=\"/uploads/blogs/2017_06/hosts-properties.png\" srcset=\"https://thachpham.com/wp-content/uploads/2015/07/hosts-properties.png 797w, https://thachpham.com/wp-content/uploads/2015/07/hosts-properties-210x158.png 210w, https://thachpham.com/wp-content/uploads/2015/07/hosts-properties-176x133.png 176w\" width=\"797\" /></div><p style=\"text-align: justify;\">Sau đó bạn chọn tab&nbsp;<strong>Security</strong>, ấn nút&nbsp;<strong>Edit</strong>&nbsp;để sửa quyền, chọn phần&nbsp;<strong>User</strong>&nbsp;và đánh dấu&nbsp;<strong>Full Control</strong>. Sau đó ấn Ok để lưu lại toàn bộ.</p><div style=\"text-align:center\"><img alt=\"hosts properties security\" height=\"511\" src=\"/uploads/blogs/2017_06/hosts-properties-security.png\" srcset=\"https://thachpham.com/wp-content/uploads/2015/07/hosts-properties-security.png 750w, https://thachpham.com/wp-content/uploads/2015/07/hosts-properties-security-285x195.png 285w\" width=\"750\" /></div><p style=\"text-align: justify;\">Xong. Mục đích của việc này là để Ampps có thể sửa tập tin hosts khi bạn thêm tên miền ảo vào. Còn ở trên Mac hay Linux thì nó đã sử dụng quyền sudo nên không cần.</p><h3 id=\"ftoc-heading-4\" style=\"text-align: justify;\">Cài đặt Ampps</h3><p style=\"text-align: justify;\">Bạn truy cập vào trang&nbsp;<a data-wpel-link=\"external\" href=\"http://ampps.com/download\" rel=\"nofollow external noopener noreferrer\" target=\"_blank\">http://ampps.com/download</a>&nbsp;và chọn phiên bản phù hợp với hệ điều hành bạn đang sử dụng. Gói cài đặt hơi lớn, khoảng 160MB.</p><div style=\"text-align:center\"><img alt=\"download ampps\" height=\"649\" src=\"/uploads/blogs/2017_06/download-ampps.jpg\" srcset=\"https://thachpham.com/wp-content/uploads/2015/11/download-ampps.jpg 970w, https://thachpham.com/wp-content/uploads/2015/11/download-ampps-768x514.jpg 768w\" width=\"970\" /></div><p style=\"text-align: justify;\">Sau đó chạy tập tin vừa tải về và cài đặt như cách cài một phần mềm bình thường.</p><div style=\"text-align:center\"><img alt=\"cai dat ampps\" height=\"398\" src=\"/uploads/blogs/2017_06/cai-dat-ampps.jpg\" width=\"513\" /></div><p style=\"text-align: justify;\">Sau khi cài đặt xong bạn&nbsp;có thể mở phần mềm lên và khởi động Apache và MySQL. &nbsp;Và nếu nó hỏi cấp phần mềm vào tường lửa, bạn nên chọn cả hai cái như hình rồi chọn&nbsp;<em>Allow access</em>.</p><div style=\"text-align:center\"><img alt=\"cai dat ampps 02\" height=\"384\" src=\"/uploads/blogs/2017_06/cai-dat-ampps-02.jpg\" width=\"540\" /></div><p style=\"text-align: justify;\">Sau khi khởi động xong Apache và MySQL nó sẽ trông như thế này.</p><div style=\"text-align:center\"><img alt=\"cai dat ampps 03\" height=\"387\" src=\"/uploads/blogs/2017_06/cai-dat-ampps-03.jpg\" width=\"488\" /></div><p style=\"text-align: justify;\">Và để vào bảng điều khiển, bạn có thể ấn vào biểu tượng ngôi nhà hoặc truy cập vào đường dẫn http://localhost/ampps.</p><h3 id=\"ftoc-heading-5\" style=\"text-align: justify;\">Thiết lập mật khẩu root cho MySQL</h3><p style=\"text-align: justify;\">Nếu bạn muốn dùng tài khoản root của MySQL để làm việc thì mật khẩu mặc định của nó là mysql. Nhưng bạn có thể đổi lại bằng cách truy cập vào bảng điều khiển, chọn&nbsp;<strong>Security Center</strong>.</p><div style=\"text-align:center\"><img alt=\"ampps change root mysql pw\" height=\"378\" src=\"/uploads/blogs/2017_06/ampps-change-root-mysql-pw.jpg\" width=\"750\" /></div><p style=\"text-align: justify;\">Chọn Change MySQL root Password và thiết lập mật khẩu mới cho root. Ở phần Old Password bạn nhập mật khẩu cũ là mysql nhé.</p><div style=\"text-align:center\"><img alt=\"ampps change root mysql pw 1\" height=\"378\" src=\"/uploads/blogs/2017_06/ampps-change-root-mysql-pw_1.jpg\" srcset=\"https://thachpham.com/wp-content/uploads/2015/11/ampps-change-root-mysql-pw02.jpg 901w, https://thachpham.com/wp-content/uploads/2015/11/ampps-change-root-mysql-pw02-768x331.jpg 768w\" width=\"750\" /></div><h3 id=\"ftoc-heading-6\" style=\"text-align: justify;\">Thêm một tên miền ảo vào Ampps</h3><p style=\"text-align: justify;\">Để thêm một tên miền ảo, bạn vào mục&nbsp;<strong>Add Domain</strong>&nbsp;trong bảng điều khiển và thêm vào. Tên miền ảo bạn nên đặt là không trùng với bất cứ website nào khác, mình hay chọn tên miền kiểu abc.dev cho nó “phong cách”.</p><div style=\"text-align:center\"><img alt=\"ampps add database\" height=\"438\" src=\"/uploads/blogs/2017_06/ampps-add-database.jpg\" srcset=\"https://thachpham.com/wp-content/uploads/2015/11/ampps-add-domain.jpg 998w, https://thachpham.com/wp-content/uploads/2015/11/ampps-add-domain-768x377.jpg 768w\" width=\"874\" /></div><p style=\"text-align: justify;\">Sau khi thêm xong, bạn truy cập vào tên miền vừa thêm vào ở trình duyệt, nếu nó hiển thị ra như hình bên dưới hoặc tương tự bên dưới là đã thêm đúng.<br  />Trường hợp bạn không truy cập vào được sau khi thêm tên miền là do tập tin hosts nó không tự sửa được. Bạn hãy khai báo tên miền cho localhost sau khi thêm xong bằng cách vào&nbsp;<code>C:\\Windows\\System32\\drive\\etc</code>và mở tập tin hosts ra thêm với cấu trúc.</p><p style=\"text-align: justify;\">&nbsp;</p><pre style=\"text-align: justify;\">127.0.0.1 xuquangteam</pre><p style=\"text-align: justify;\">Thay xuquangteam thành tên miền bạn vừa thêm.</p><h3 id=\"ftoc-heading-7\" style=\"text-align: justify;\">Cài tự động một mã nguồn</h3><p style=\"text-align: justify;\">Nếu bạn cần cài tự động WordPress, Drupal, Magento,…..vào website ở localhost thì vào lại bảng điều khiển Ampps rồi chọn mã nguồn bên cột tay trái. Sau đó vào mục Install mà cài.</p><div style=\"text-align:center\"><img alt=\"ampps auto install\" height=\"513\" src=\"/uploads/blogs/2017_06/ampps-auto-install.jpg\" srcset=\"https://thachpham.com/wp-content/uploads/2015/11/ampps-auto-install.jpg 1189w, https://thachpham.com/wp-content/uploads/2015/11/ampps-auto-install-768x331.jpg 768w\" width=\"1189\" /></div><p style=\"text-align: justify;\">Lưu ý phần&nbsp;<strong>In Directory</strong>, nếu bạn cần cài vào thư mục gốc của tên miền thì xóa nó đi. Ví dụ mặc định cài WordPress nó sẽ khai báo là<code>wp</code>&nbsp;tức là bạn sẽ truy cập vào website với đường dẫn&nbsp;<code>http://domain.dev/wp/</code>.</p><h3 id=\"ftoc-heading-8\" style=\"text-align: justify;\">Tạo database</h3><p style=\"text-align: justify;\">Để tạo database trong Ampps thì bạn vào bảng điều khiển, chọn&nbsp;<strong>Add Database</strong>.</p><div style=\"text-align:center\"><img alt=\"ampps add database\" height=\"438\" src=\"/uploads/blogs/2017_06/ampps-add-database.jpg\" srcset=\"https://thachpham.com/wp-content/uploads/2015/11/ampps-add-database.jpg 874w, https://thachpham.com/wp-content/uploads/2015/11/ampps-add-database-768x385.jpg 768w\" width=\"874\" /></div><p style=\"text-align: justify;\">Và nhập tên database cần tạo vào để tạo.</p><div style=\"text-align:center\"><img alt=\"ampps add database02\" height=\"338\" src=\"/uploads/blogs/2017_06/ampps-add-database02.jpg\" width=\"743\" /></div><p style=\"text-align: justify;\">Sau khi tạo xong, thông tin truy cập database của bạn sẽ có dạng là:</p><ul>	<li style=\"text-align: justify;\">Databse Host:<code>localhost</code>, dĩ nhiên rồi.</li>	<li style=\"text-align: justify;\">Database Name: Tên database vừa tạo.</li>	<li style=\"text-align: justify;\">Database User:<code>root</code></li>	<li style=\"text-align: justify;\">Databse Password: Mật khẩu root MySQL mà bạn đã đổi ở phía trên, mặc định là<code>mysql</code>.</li></ul><h3 id=\"ftoc-heading-9\" style=\"text-align: justify;\">Lời kết</h3><p style=\"text-align: justify;\">Như vậy qua bài trên chắc bạn cũng thấy Ampps rất tiện lợi trong việc sử dụng thế nào, mọi chức năng đều làm giống như các localhost bình thường (có thể hơi thừa khi nói ra) nên cách sử dụng với các thao tác như chuyển website về localhost này nọ đều làm y chang nhé. Hy vọng sau bài giới thiệu này, bạn sẽ trải nghiệm qua thử Ampps và cảm thấy nó thật xứng đáng để thay thế các ứng dụng tạo localhost tiêu chuẩn hiện tại.</p>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(21, '', '', '1. Bạn mở file&nbsp;modules/news/theme.php lên và tìm&nbsp;<blockquote><p>function detail_theme (&nbsp;</p></blockquote>Sẽ thấy dòng&nbsp;<blockquote><p>global $global_config,</p></blockquote>Thêm vào sau nó&nbsp;<blockquote><p>$user_info,</p></blockquote>Nhìn xuống dưới sẽ thấy&nbsp;<blockquote><p>$xtpl-&gt;assign( &#039;LANG&#039;, $lang_module );</p></blockquote>Thêm xuống dưới nó<blockquote><p>if( empty( $user_info ) ) { $replace = &#039;&lt;strong style=&quot;cursor: pointer&quot; onclick=&quot;alert(\\&#039;Bạn phải đăng nhập để xem liên kết\\&#039;)&quot;&gt; Bạn phải đăng nhập để xem liên kết &lt;/strong&gt;&#039;; $news_contents&#91;&#039;bodytext&#039;&#93; = preg_replace( &#039;/&lt;a&#91;^&gt;&#93;*&gt;.*&lt;\\/a&gt;/siU&#039;, $replace, $news_contents&#91;&#039;bodytext&#039;&#93; ); }</p></blockquote><br  /><br  />&nbsp;chúc các bạn thành công', '', NULL, 2, '', 0, 1, 1, 1, 0),
(22, '', '', '<div style=\"text-align: justify;\">Mở file index.php ngang hàng với root tìm đoạn:<br  />// Referer + Gqueries<br  />if ($client_info&#91;&#039;is_myreferer&#039;&#93; === 0 and !defined(&#039;NV_IS_MY_USER_AGENT&#039;)) {<br  />&nbsp; &nbsp; require NV_ROOTDIR . &#039;/includes/core/referer.php&#039;;<br  />}<br  /><br  />Thêm xuống bên dưới nó đoạn này<br  />if( ! isset( $global_config&#91;&#039;site_home_module&#039;&#93; ) or empty( $global_config&#91;&#039;site_home_module&#039;&#93; ) ) $global_config&#91;&#039;site_home_module&#039;&#93; = &#039;news&#039;;<br  />if( NV_MY_DOMAIN == &#039;http://xuquang.vn&#039; ) $global_config&#91;&#039;site_home_module&#039;&#93; = &#039;news&#039;;<br  />if( NV_MY_DOMAIN == &#039;http://abcdeft.com&#039; ) $global_config&#91;&#039;site_home_module&#039;&#93; = &#039;shops&#039;;<br  /><br  />Lưu lại và xem hậu quả&nbsp;</div>', '', NULL, 2, '', 0, 1, 1, 1, 0),
(23, '', '', 'Mở file&nbsp;detail.tpl trong modules News<br  />tìm&nbsp;&lt;!-- BEGIN: related_new --&gt; và thay toàn bộ nội dung này<pre><code class=\"language-xml\">&lt;div class=&quot;col-md-12&quot;&gt;    	&lt;p class=&quot;h3&quot;&gt;&lt;i class=&quot;fa fa-thumbs-o-up&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;&amp;nbsp;&amp;nbsp;&lt;strong&gt;{LANG.related_new}&lt;/strong&gt;&amp;nbsp;&lt;span class=&quot;icon_new&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;            &lt;div class=&quot;clearfix&quot;&gt;            &lt;ul class=&quot;related&quot;&gt;        		&lt;!-- BEGIN: loop --&gt;      	&lt;li class=&quot;clearfix&quot;&gt;				        		&lt;li&gt;        			                    &lt;a href=&quot;{RELATED_NEW.link}&quot; &lt;!-- BEGIN: tooltip --&gt;data-content=&quot;{RELATED_NEW.hometext}&quot; data-img=&quot;{RELATED_NEW.imghome}&quot; data-rel=&quot;tooltip&quot; data-placement=&quot;{TOOLTIP_POSITION}&quot;&lt;!-- END: tooltip --&gt; title=&quot;{RELATED_NEW.title}&quot;&gt;&lt;img src=&quot;{RELATED_NEW.imghome}&quot; alt=&quot;{RELATED_NEW.title}&quot; width=&quot;65&quot; class=&quot;img-thumbnail pull-left &quot; /&gt;{RELATED_NEW.title}&lt;/a&gt;        			                    &lt;em&gt;({RELATED_NEW.time})&lt;/em&gt;        		&lt;/li&gt;        		&lt;!-- END: loop --&gt;        	&lt;/ul&gt;            &lt;/div&gt;        &lt;/div&gt;</code></pre>Tìm tiếp theo&nbsp;&lt;!-- BEGIN: related --&gt; và thay toàn bộ nội dung trong đó bằng cái này<pre><code>&lt;div class=&quot;col-md-12&quot;&gt;    	&lt;p class=&quot;h3&quot;&gt;&lt;i class=&quot;fa fa-thumbs-o-down&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;&amp;nbsp;&amp;nbsp;&lt;strong&gt;{LANG.related}&lt;/strong&gt;&lt;/p&gt;              &lt;div class=&quot;clearfix&quot;&gt;               &lt;ul class=&quot;related&quot;&gt;        		&lt;!-- BEGIN: loop --&gt;				&lt;li class=&quot;clearfix&quot;&gt;        		&lt;li&gt;                    &lt;a href=&quot;{RELATED.link}&quot; &lt;!-- BEGIN: tooltip --&gt;data-content=&quot;{RELATED.hometext}&quot; data-img=&quot;{RELATED.imghome}&quot; data-rel=&quot;tooltip&quot; data-placement=&quot;{TOOLTIP_POSITION}&quot;&lt;!-- END: tooltip --&gt; title=&quot;{RELATED.title}&quot;&gt;&lt;img src=&quot;{RELATED.imghome}&quot; alt=&quot;{RELATED.title}&quot; width=&quot;65&quot; class=&quot;img-thumbnail pull-left &quot; /&gt;{RELATED.title}&lt;/a&gt;        			&lt;em&gt;({RELATED.time})&lt;/em&gt;        			&lt;!-- BEGIN: newday --&gt;        			&lt;span class=&quot;icon_new&quot;&gt;&amp;nbsp;&lt;/span&gt;        			&lt;!-- END: newday --&gt;        		&lt;/li&gt;        		&lt;!-- END: loop --&gt;        	&lt;/ul&gt;        &lt;/div&gt;        &lt;/div&gt;</code></pre>Lưu và F5 trang web để xem hậu quả&nbsp;', '', '', 2, '', 0, 1, 1, 1, 0),
(26, '', '', 'hỏi lại việc khôi phục nội dung trước đó trong khi người viết không có nhu cầu. tạm thời các bạn làm theo bên dưới để tạm thời tắt tính năng này, bạn sẽ không còn bị làm phiền với cái hộp thoại này nữa!<br  /><br  /><strong>1. Sửa tập tin cấu hình ckeditor</strong><br  />Mở&nbsp;<code>assets/editors/ckeditor/config.js</code><br  />Tìm<pre><code>CKEDITOR.editorConfig = function( config ) {</code></pre>Thêm bên dưới<pre><code>config.removePlugins= &#039;autosave&#039;;</code></pre><strong>2. Dọn dẹp hệ thống</strong><br  />Truy cập&nbsp;<strong>ACP / Công cụ web / Làm sạch cache</strong>&nbsp;để các thay đổi có hiệu lực', '', NULL, 2, '', 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_logs`
--

CREATE TABLE `nv4_vi_blogs_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_rows`
--

CREATE TABLE `nv4_vi_blogs_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_rows`
--

INSERT INTO `nv4_vi_blogs_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(4, 3, '3', 0, 1, '', 0, 1498796585, 1498796615, 1, 0, 1498796340, 0, 2, 'Kinh nghiệm cần biết khi chụp ảnh mùa hè', 'kinh-nghiem-can-biet-khi-chup-anh-mua-he', 'Để hạn chế ánh nắng chói của mặt trời, người dùng có thể áp dụng các mẹo dưới đây cho cả máy ảnh chuyên nghiệp hay điện thoại. ất kể mặt trời đang ở vị trí nào, trong điều kiện gì và đang dùng máy ảnh nào thì bố cục luôn là yếu tố cần đáp ứng đầu tiên. Nếu bố cục ảnh lộn xộn thì không có thủ thuật nào hỗ trợ hay khắc phục được sai lầm.', '2017_06/ky-thuat-chup-anh-phong-canh-d-7242-8953-1498555535.jpg', '', 1, 1, '6', 1, 0, 32, 0, 5, 1, 0, '', 0),
(5, 3, '3', 0, 1, '', 0, 1498797699, 1498797699, 1, 1, 1498797420, 0, 2, 'Cách chụp ảnh đánh lừa như màn hình trong suốt', 'cach-chup-anh-danh-lua-nhu-man-hinh-trong-suot', 'Sử dụng bức ảnh chụp bằng camera ở cùng góc nhìn, giảm độ sáng màn hình để có được hiệu ứng như màn hình trong suốt. Những bức ảnh có hiệu ứng như điện thoại có màn hình trong suốt đang được nhiều người dùng ưa chuộng, đặc biệt là sau khi chiếc Galaxy S8 với màn hình &quot;vô cực&quot; bán ra.', '2017_06/2-5569-1494749713.jpg', '', 1, 1, '6', 1, 0, 25, 0, 5, 1, 0, '', 0),
(6, 3, '3', 0, 1, '', 0, 1498798236, 1498798236, 1, 2, 1498798020, 0, 2, 'Cách nâng cấp iOS 11 beta cho iPhone, iPad', 'cach-nang-cap-ios-11-beta-cho-iphone-ipad', 'Người dùng đã có thể tải về và cài đặt bản thử nghiệm hệ điều hành mà Apple vừa trình làng cho các thiết bị di động. Hiện iOS 11 mới được cung cấp dưới dạng Developer Preview, tức phiên bản thử nghiệm dành cho các nhà phát triển. Tuy nhiên, người dùng thông thường cũng có thể trải nghiệm sớm nền tảng này.', '2017_06/nhung-thiet-bi-ho-tro-ios-11-9810-1496711399.png', '', 1, 1, '6', 1, 0, 21, 0, 5, 1, 0, '', 0),
(7, 9, '7,9', 0, 1, '', 0, 1498798998, 1498798998, 1, 3, 1498798800, 0, 2, 'Hướng dẫn đọc file đuôi .shs trên Windows 7&#x002F;8', 'huong-dan-doc-file-duoi-shs-tren-windows-7-8', 'Thường xuyên làm việc với những file word, nhất là dân văn phòng, công chức. Sau khi bạn nâng cấp từ Windows XP lên Windows 7/8 với Microsoft offices phiên bản cao hơn như 2007 trở lên hoặc việc copy file word từ máy tính này qua máy khác hay sang usb, ổ cứng để lưu lại, thường thì bạn sẽ suy nghĩ file tài liệu này đã bị hư do virus,', '2017_06/img01.jpg', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(8, 9, '7,9', 0, 1, '', 0, 1498800181, 1498800356, 1, 4, 1498800000, 0, 2, 'Xóa bỏ protect, password ở file Excel một cách dễ dàng', 'xoa-bo-protect-password-o-file-excel-mot-cach-de-dang', 'Bạn là dân kế toán, hoặc đang soạn thảo một tài liệu quan trọng nào đó, bạn đã đặt password bảo vệ cho file exel này của bạn, nhưng đôi khi bạn quên mất password mình đã đặt là gì dẫn đến bạn không thể xem hoặc chỉnh sửa lại nội dung trong file exel đó của bạn.', '2017_06/screenhunter_01-feb01-12.15.jpg', 'ScreenHunter 01 Feb  01 12 15', 1, 1, '6', 1, 0, 38, 0, 5, 1, 0, '', 0),
(9, 9, '7,9', 0, 1, '', 0, 1498804320, 1498804320, 1, 5, 1498804080, 0, 2, 'Cách sử dụng thành thạo Word cho người mới', 'cach-su-dung-thanh-thao-word-cho-nguoi-moi', 'Word như một siêu phẩm của Microsoft, lĩnh vực nào cũng dùng đến nó. Vậy làm thế nào để sử dụng Word thành thạo mà lại mang tính thẩm mỹ cao? Bài viết này Xứ Quảng TEAM chia sẻ đến bạn cách sử dụng thành thạo Word theo kinh nghiệm đã định dạng nhiều bài tiểu luận.', '2017_06/thanh-thao-word-1.png', 'Thanh thao Word 1', 1, 1, '4', 1, 0, 32, 0, 0, 0, 0, '', 0),
(10, 8, '7,8', 0, 1, '', 0, 1498804530, 1498804530, 1, 6, 1498804380, 0, 2, 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 'huong-dan-nang-cap-len-windows-10-mien-phi', 'Windows 10 hiện tại không còn cho nâng cấp miễn phí kể từ cuối tháng 7 năm ngoái rồi nhưng Congtoan xin mách bạn một cách mà bạn vẫn có thể nâng cấp lên miễn phí bằng cách thông qua chương trình cập nhật Windows 10 dành cho người dùng sử dụng các công nghệ hỗ trợ, bạn có thể cập nhật Windows 10 cho chiếc máy tính của mình miễn là máy đang sử dụng Windows 7/8/8.1 bản quyền. Cách làm như sau:', '2017_06/huong-dan-nang-cap-len-windows-10-mien-phi.jpg', 'Hướng dẫn nâng cấp lên Windows 10 miễn phí', 1, 1, '6', 1, 0, 24, 0, 0, 0, 0, '', 0),
(11, 8, '7,8', 0, 1, '', 0, 1498804749, 1498806341, 1, 8, 1498806341, 0, 2, 'Các phím tắt cần biết trong Windows 10 giúp bạn pro hơn', 'cac-phim-tat-can-biet-trong-windows-10-giup-ban-pro-hon', 'Máy tính của bạn đang sử dụng hệ hành Windows 10 nhưng bạn chưa hiểu rõ được hết các tính năng của Windows 10. Việc sử dụng những phím tắt sẽ giúp bạn sử dụng Windows 10 một cách hiệu quả và nhanh chóng hơn đồng thời hiểu rõ hơn các tính năng của Windows 10.', '2017_06/windows-10-shortcuts1.jpg', '', 1, 1, '6', 1, 0, 34, 0, 5, 1, 0, '', 0),
(12, 8, '7,8', 0, 1, '', 0, 1498806309, 1498806309, 1, 7, 1498806180, 0, 2, 'Hướng dẫn vô hiệu hóa vĩnh viễn Windows Defender trên Windows 10', 'huong-dan-vo-hieu-hoa-vinh-vien-windows-defender-tren-windows-10', 'Windows Defender là một công cụ chống virus mặc định được tích hợp sẵn trên Windows 10. Đa số người dùng đều tin tưởng rằng đây là phần mềm bảo vệ tốt cho máy tính. Tuy nhiên nó chỉ bảo vệ ở mức cơ bản chứ không chuyên dụng như các phần mềm thứ 3. Người dùng nên cài đặt 1 phần mềm diệt virus của bên thứ 3', '2017_06/va2otzx.jpg', 'Va2OtZX', 1, 1, '6', 1, 0, 33, 0, 0, 0, 0, '', 0),
(13, 3, '3', 0, 1, '', 0, 1498806699, 1498806699, 1, 9, 1498806600, 0, 2, 'Máy tính Windows cần tải ngay bản cập nhật này', 'may-tinh-windows-can-tai-ngay-ban-cap-nhat-nay', 'Microsoft vừa phát hành bản vá lỗi quan trọng cho tất cả các phiên bản Windows bao gồm cả Windows 10, ngăn tấn công mạng, chiếm quyền điều khiển máy tính. Một trong các lỗ hổng ảnh hưởng tất cả các phiên bản Windows được Microsoft khắc phục trong bản cập nhật Patch Tuesday mang số hiệu', '2017_06/windows-10-1497540345.jpg', '', 1, 1, '6', 1, 0, 26, 0, 0, 0, 0, '', 0),
(14, 3, '3', 0, 1, '', 0, 1498806804, 1498806804, 1, 10, 1498806720, 0, 2, 'Công cụ kiểm tra mã độc Wanna Cry', 'cong-cu-kiem-tra-ma-doc-wanna-cry', 'Ngày 15-5, nhiều công ty an ninh mạng đã phát hành công cụ miễn phí giúp người dùng kiểm tra máy tính của mình có bị lỗ hổng bảo mật đang bị Wanna Cry tấn công hay không. Công ty Bkav cung cấp công cụ miễn phí (trên website của Bkav) giúp người sử dụng quét xem máy tính có đang bị nhiễm Wanna Crypt không.', '2017_06/wannacrypt-1494835967.jpg', '', 1, 1, '6', 1, 0, 33, 0, 0, 0, 0, '', 0),
(15, 2, '2', 0, 1, '', 0, 1498807237, 1498807237, 1, 11, 1498807140, 0, 2, 'Virus tống tiền tấn công hàng loạt ngân hàng, nhà ga châu Âu', 'virus-tong-tien-tan-cong-hang-loat-ngan-hang-nha-ga-chau-au', 'Một mã độc tống tiền giống WannaCry vừa tấn công, gây tê liệt nhiều ngân hàng, sân bay, máy ATM và một số doanh nghiệp lớn tại châu Âu. Theo The Verge, một loại mã độc tống tiền (ransomware) vừa tấn công và khiến nhiều công sở, công ty ở châu Âu phải tạm dừng hoạt động. Trong đó, ảnh hưởng nhiều nhất được ghi nhận là ở Ukraine khi ngân hàng trung ương,', '2017_06/screen-shot-2017-06-27-at-11-4-1765-7833-1498582425.jpg', 'Screen Shot 2017 06 27 at 11 4 1765 7833 1498582425', 1, 1, '6', 1, 0, 29, 0, 0, 0, 0, '', 0),
(16, 2, '2', 0, 1, '', 0, 1498807339, 1498807339, 1, 12, 1498807260, 0, 2, 'Việt Nam chịu tấn công mạng qua IoT nhiều thứ hai thế giới', 'viet-nam-chiu-tan-cong-mang-qua-iot-nhieu-thu-hai-the-gioi', 'ỷ lệ thiết bị IoT như camera an ninh, router... bị nhiễm mã độc, tấn công mạng ở Việt Nam chỉ đứng sau Trung Quốc. Theo báo cáo từ Kaspersky Lab, Việt Nam nằm trong nhóm ba nước hàng đầu chịu ảnh hưởng về các cuộc tấn công nhắm vào những thiết bị Internet of Things (IoT) khi chiếm tỷ lệ tới 15% số lượng các cuộc tấn công trên quy mô toàn cầu,', '2017_06/cctvcamerahacking-2797-1498183530.jpg', '', 1, 1, '6', 1, 0, 26, 0, 5, 1, 0, '', 0),
(17, 2, '2', 0, 1, '', 0, 1498807492, 1498807492, 1, 13, 1498807380, 0, 2, 'Cáp quang biển APG gặp sự cố, Internet Việt Nam bị chậm', 'cap-quang-bien-apg-gap-su-co-internet-viet-nam-bi-cham', 'Tuyến cáp quang biển APG (Asia Pacific Gateway) bị đứt, gây ảnh hưởng đến khả năng kết nối Internet từ Việt Nam đi quốc tế. Theo một nhà cung cấp dịch vụ trên nền Internet, phân đoạn Việt Nam - Hong Kong của hệ thống cáp quang biển APG đã gặp sự cố chiều 20/6. Hiện một số lưu lượng kết nối đã được chuyển sang tuyến cáp quang biển quốc tế AAG.', '2017_06/dut-cap-quang-2-2014916112524.jpg', '', 1, 1, '6', 1, 0, 30, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, '', 0, 1498833206, 1498833206, 1, 14, 1498833120, 0, 2, 'Fidget spinner Trung Quốc phát nổ', 'fidget-spinner-trung-quoc-phat-no', 'Một số đồ chơi spinner được sản xuất tại Trung Quốc được ghi nhận đã phát nổ, có thể do tích hợp pin kém chất lượng. Theo Gizmodo, một bà mẹ ở bang Alabama (Mỹ) cho biết chiếc fidget spinner của con trai bốc cháy khi đang sạc. &quot;Nó được sạc trong gần 45 phút và sau đó lửa bốc lên&quot;, bà Kimberly Allums kể lại.', '2017_06/q9gzn5xhxm1pondhvuwq-9669-1498798169.png', '', 1, 1, '6', 1, 0, 32, 0, 5, 1, 0, '', 0),
(19, 2, '2', 0, 1, '', 0, 1498833340, 1498833353, 1, 15, 1498833180, 0, 2, 'Những bức ảnh đẹp nhất chụp bằng iPhone năm 2017', 'nhung-buc-anh-dep-nhat-chup-bang-iphone-nam-2017', 'iPhone Photography Awards (IPPAwards) là cuộc thi nhiếp ảnh được tổ chức thường niên để chọn ra những bức ảnh đẹp nhất chụp từ điện thoại của Apple. Đây là cuộc thi đầu tiên về iPhone có quy mô quốc tế và hiện đã bước sang năm thứ 10.', '2017_06/iphone-2-1498637989_680x0.jpg', 'iPhone 2 1498637989 680x0', 1, 1, '6', 1, 0, 43, 0, 0, 0, 0, '', 0),
(20, 4, '4', 0, 1, '', 0, 1498833727, 1498874429, 1, 19, 1498874429, 0, 2, 'Tạo localhost chuyên nghiệp với Ampps', 'tao-localhost-chuyen-nghiep-voi-ampps', 'Có rất nhiều phần mềm tạo localhost trên máy tính. Và có hàng tá lý do để mình nói rằng Ampps dùng tốt hơn XAMPP. Bạn có thể thấy trên blog mình khi hướng dẫn localhost đều mang XAMPP ra, đơn giản là nó dễ dùng, không nhiều chức năng gây rối cho người mới tìm hiểu chứ máy mình chẳng cài XAMPP bao giờ, một là Ampps, hai là Vagrant.', '2017_06/ampps-auto-install_1.jpg', 'ampps auto install', 1, 1, '6', 1, 0, 36, 0, 5, 1, 0, '', 0),
(21, 5, '4,5', 0, 1, '', 0, 1498833819, 1498833819, 1, 16, 1498833720, 0, 2, 'Hướng dẫn ẩn link khi không đăng nhập thành viên trong nukeviet', 'huong-dan-an-link-khi-khong-dang-nhap-thanh-vien-trong-nukeviet', 'Bài viết này mình sẽ hướng dẫn các bạn ẩn link trong bài viết news của nukeviet, nó giống như các bài viết trên các diễn đàn bắt buộc bạn phải đăng nhập mới nhìn thấy link. Khá đơn giản là chỉ thêm vài dòng code,', '2017_06/utbeo.png', '', 1, 1, '6', 1, 0, 31, 0, 0, 0, 0, '', 0),
(22, 5, '4,5', 0, 1, 'Anh Út Beo', 0, 1498833894, 1498833894, 1, 17, 1498833780, 0, 2, 'Hướng dẫn 2 domain chạy cùng 1 code nukeviet', 'huong-dan-2-domain-chay-cung-1-code-nukeviet', 'Bạn gì mình cũng quên mất tên có nhắn tin nhờ hướng dẫn 2 domain chạy cùng 1 web, mỗi domain được trỏ đến 1 modules khác nhau, 1 giao diện khác nhau. Về giao diện bạn cần chọn trong modules tương ứng nhé, còn về config để chạy được bạn làm như sau:', '2017_06/nukevietnews.jpg', '', 1, 1, '6', 1, 0, 38, 0, 0, 0, 0, '', 0),
(23, 5, '4,5', 0, 1, '', 0, 1498833953, 1510758144, 1, 18, 1498833900, 0, 2, 'Thêm hình ảnh cho tin mới tin cũ trong nukeviet', 'them-hinh-anh-cho-tin-moi-tin-cu-trong-nukeviet', 'Mặc định trong Nukeviet khi xem 1 bản tin nó chỉ hiện các bản tin khác chỉ là những đường link và không có hình ảnh minh họa. Út Beo sẽ hướng dẫn các bạn thêm hình minh họa và chia nó làm hai cột sang hai bên khác nhau.', '2017_06/anhutbeo.png', '', 1, 1, '6', 1, 0, 39, 0, 5, 1, 0, '', 0),
(26, 4, '4', 0, 1, 'Hồ Ngọc Triển', 0, 1498877951, 1498877951, 1, 20, 1498877760, 0, 2, 'Hướng dẫn tắt tính năng autosave của trình soạn thảo ckeditor cho nukeviet và các mã nguồn khác', 'huong-dan-tat-tinh-nang-autosave-cua-trinh-soan-thao-ckeditor-cho-nukeviet-va-cac-ma-nguon-khac', 'Autosave là một plugin của ckeditor đã tích hợp mặc định trong trình soạn thảo NukeViet từ các phiên bản NukeViet 4. Đây là một plugin khá hay của ckeditor làm hạn chế việc mất nội dung trong quá trình soạn thảo vì nhiều lý do, song một điều gây khó chịu cho người sử dụng là thường hiển thị hộp thoại', '2017_07/tat-autosave.jpg', 'Tat autosave', 1, 1, '6', 1, 0, 49, 0, 5, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_sources`
--

CREATE TABLE `nv4_vi_blogs_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_tags`
--

CREATE TABLE `nv4_vi_blogs_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_tags_id`
--

CREATE TABLE `nv4_vi_blogs_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_tmp`
--

CREATE TABLE `nv4_vi_blogs_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blogs_tmp`
--

INSERT INTO `nv4_vi_blogs_tmp` (`id`, `admin_id`, `time_edit`, `time_late`, `ip`) VALUES
(2, 1, 1498796086, 1498796086, ''),
(1, 1, 1498796090, 1498796090, ''),
(15, 1, 1498807252, 1498807282, '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blogs_topics`
--

CREATE TABLE `nv4_vi_blogs_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Tư vấn', 'Tu-van', '', '0123456789', '', 'admin@gmail.com', '', '', '[]', 'Tư vấn', '1/1/1/0', 1, 1, 1),
(2, 'Phòng kinh doanh', 'Phong-kinh-doanh', '', '0123456789', '', '', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '[]', '', '1/1/1/0', 1, 2, 0),
(3, 'Phòng Kỹ thuật', 'Phong-Ky-thuat', '', '0123456789', '', 'admin@gmail.com', '', 'Bộ phận tiếp nhận và hổ trợ khách hàng', '[]', '', '1/1/1/0', 1, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '', '6', 'about', '', 1, '', 0, 1),
(2, 0, 1, 'Blogs Cntt', '/index.php?language=vi&nv=blogs', '', '', '', 2, 2, 0, '23,24,25,26,29', '6', 'blogs', '', 1, '', 0, 1),
(29, 2, 1, 'Thủ thuật tin học', '/index.php?language=vi&nv=blogs&amp;op=thu-thuat-tin-hoc', '', '', '', 5, 9, 1, '30,31', '6', 'blogs', 'thu-thuat-tin-hoc', 1, '', 1, 1),
(4, 0, 1, 'Thống kê', '/index.php?language=vi&nv=statistics', '', '', '', 3, 12, 0, '', '2', 'statistics', '', 1, '', 0, 1),
(27, 26, 1, 'Nukeviet', '/index.php?language=vi&nv=blogs&amp;op=nukeviet', '', '', '', 1, 7, 2, '', '6', 'blogs', 'nukeviet', 1, '', 1, 1),
(7, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 4, 13, 0, '', '6', 'contact', '', 1, '', 0, 1),
(28, 26, 1, 'Joomla - Wordpress', '/index.php?language=vi&nv=blogs&amp;op=joomla-wordpress', '', '', '', 2, 8, 2, '', '6', 'blogs', 'joomla-wordpress', 1, '', 1, 1),
(26, 2, 1, 'Góc lập trình', '/index.php?language=vi&nv=blogs&amp;op=goc-lap-trinh', '', '', '', 4, 6, 1, '27,28', '6', 'blogs', 'goc-lap-trinh', 1, '', 1, 1),
(25, 2, 1, 'Kinh nghiệm', '/index.php?language=vi&nv=blogs&amp;op=kinh-nghiem', '', '', '', 3, 5, 1, '', '6', 'blogs', 'kinh-nghiem', 1, '', 1, 1),
(24, 2, 1, 'Đời sống số', '/index.php?language=vi&nv=blogs&amp;op=doi-song-so', '', '', '', 2, 4, 1, '', '6', 'blogs', 'doi-song-so', 1, '', 1, 1),
(23, 2, 1, 'Tin từ TEAM', '/index.php?language=vi&nv=blogs&amp;op=ban-tin-xu-quang-team', '', '', '', 1, 3, 1, '', '6', 'blogs', 'ban-tin-xu-quang-team', 1, '', 1, 1),
(30, 29, 1, 'Windows 10', '/index.php?language=vi&nv=blogs&amp;op=windows-10', '', '', '', 1, 10, 2, '', '6', 'blogs', 'windows-10', 1, '', 1, 1),
(31, 29, 1, 'Thủ thuật Office', '/index.php?language=vi&nv=blogs&amp;op=thu-thuat-office', '', '', '', 2, 11, 2, '', '6', 'blogs', 'thu-thuat-office', 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 1, 0, 2, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 7, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 8, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 9, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 6, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 4, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(56, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(57, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(65, 'content', 'content', 'Content', '', 'blogs', 1, 1, 7, ''),
(66, 'detail', 'detail', 'Detail', '', 'blogs', 1, 0, 5, ''),
(67, 'groups', 'groups', 'Groups', '', 'blogs', 1, 0, 4, ''),
(68, 'instant-rss', 'instant-rss', 'Instant-rss', '', 'blogs', 0, 0, 0, ''),
(69, 'main', 'main', 'Main', '', 'blogs', 1, 0, 1, ''),
(70, 'print', 'print', 'Print', '', 'blogs', 0, 0, 0, ''),
(71, 'rating', 'rating', 'Rating', '', 'blogs', 0, 0, 0, ''),
(72, 'rss', 'rss', 'Rss', '', 'blogs', 1, 1, 9, ''),
(73, 'savefile', 'savefile', 'Savefile', '', 'blogs', 0, 0, 0, ''),
(74, 'search', 'search', 'Search', '', 'blogs', 1, 1, 6, ''),
(75, 'sendmail', 'sendmail', 'Sendmail', '', 'blogs', 0, 0, 0, ''),
(76, 'sitemap', 'sitemap', 'Sitemap', '', 'blogs', 0, 0, 0, ''),
(77, 'tag', 'tag', 'Tag', '', 'blogs', 1, 0, 8, ''),
(78, 'topic', 'topic', 'Topic', '', 'blogs', 1, 0, 3, ''),
(79, 'viewcat', 'viewcat', 'Viewcat', '', 'blogs', 1, 0, 2, ''),
(80, 'main', 'main', 'Main', '', 'home', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'left-main-right', 'teamxuquang_newsplus_ver1'),
(0, 'left-main-right', 'xuquangnews_plus_v2'),
(0, 'main', 'mobile_default'),
(1, 'main', 'mobile_default'),
(1, 'main-right', 'default'),
(1, 'main-right', 'teamxuquang_newsplus_ver1'),
(1, 'main-right', 'xuquangnews_plus_v2'),
(3, 'main-right', 'default'),
(3, 'main-right', 'teamxuquang_newsplus_ver1'),
(3, 'main-right', 'xuquangnews_plus_v2'),
(4, 'main', 'mobile_default'),
(4, 'main-right', 'default'),
(4, 'main-right', 'teamxuquang_newsplus_ver1'),
(4, 'main-right', 'xuquangnews_plus_v2'),
(5, 'main', 'mobile_default'),
(5, 'main-right', 'default'),
(5, 'main-right', 'teamxuquang_newsplus_ver1'),
(5, 'main-right', 'xuquangnews_plus_v2'),
(6, 'main', 'mobile_default'),
(6, 'main-right', 'default'),
(6, 'main-right', 'teamxuquang_newsplus_ver1'),
(6, 'main-right', 'xuquangnews_plus_v2'),
(7, 'main', 'mobile_default'),
(7, 'main-right', 'default'),
(7, 'main-right', 'teamxuquang_newsplus_ver1'),
(7, 'main-right', 'xuquangnews_plus_v2'),
(8, 'main', 'mobile_default'),
(8, 'main-right', 'default'),
(8, 'main-right', 'teamxuquang_newsplus_ver1'),
(8, 'main-right', 'xuquangnews_plus_v2'),
(9, 'main', 'mobile_default'),
(9, 'main-right', 'default'),
(9, 'main-right', 'teamxuquang_newsplus_ver1'),
(9, 'main-right', 'xuquangnews_plus_v2'),
(10, 'main-right', 'default'),
(10, 'main-right', 'teamxuquang_newsplus_ver1'),
(10, 'main-right', 'xuquangnews_plus_v2'),
(11, 'main', 'mobile_default'),
(11, 'main-right', 'default'),
(11, 'main-right', 'teamxuquang_newsplus_ver1'),
(11, 'main-right', 'xuquangnews_plus_v2'),
(12, 'main', 'mobile_default'),
(12, 'main-right', 'default'),
(12, 'main-right', 'teamxuquang_newsplus_ver1'),
(12, 'main-right', 'xuquangnews_plus_v2'),
(19, 'main', 'mobile_default'),
(19, 'main-right', 'default'),
(19, 'main-right', 'teamxuquang_newsplus_ver1'),
(19, 'main-right', 'xuquangnews_plus_v2'),
(20, 'main', 'mobile_default'),
(20, 'main-right', 'default'),
(20, 'main-right', 'teamxuquang_newsplus_ver1'),
(20, 'main-right', 'xuquangnews_plus_v2'),
(21, 'main', 'mobile_default'),
(21, 'main-right', 'default'),
(21, 'main-right', 'teamxuquang_newsplus_ver1'),
(21, 'main-right', 'xuquangnews_plus_v2'),
(22, 'main', 'mobile_default'),
(22, 'main-right', 'default'),
(22, 'main-right', 'teamxuquang_newsplus_ver1'),
(22, 'main-right', 'xuquangnews_plus_v2'),
(23, 'main', 'mobile_default'),
(23, 'main-right', 'default'),
(23, 'main-right', 'teamxuquang_newsplus_ver1'),
(23, 'main-right', 'xuquangnews_plus_v2'),
(24, 'main', 'mobile_default'),
(24, 'main-right', 'default'),
(24, 'main-right', 'teamxuquang_newsplus_ver1'),
(24, 'main-right', 'xuquangnews_plus_v2'),
(25, 'main', 'mobile_default'),
(25, 'main-right', 'default'),
(25, 'main-right', 'teamxuquang_newsplus_ver1'),
(25, 'main-right', 'xuquangnews_plus_v2'),
(26, 'main', 'mobile_default'),
(26, 'main-right', 'default'),
(26, 'main-right', 'teamxuquang_newsplus_ver1'),
(26, 'main-right', 'xuquangnews_plus_v2'),
(27, 'main-right', 'default'),
(27, 'main-right', 'teamxuquang_newsplus_ver1'),
(27, 'main-right', 'xuquangnews_plus_v2'),
(28, 'main', 'mobile_default'),
(28, 'main-right', 'default'),
(28, 'main-right', 'teamxuquang_newsplus_ver1'),
(28, 'main-right', 'xuquangnews_plus_v2'),
(29, 'main', 'mobile_default'),
(29, 'main-right', 'default'),
(29, 'main-right', 'teamxuquang_newsplus_ver1'),
(29, 'main-right', 'xuquangnews_plus_v2'),
(31, 'main', 'mobile_default'),
(31, 'main-right', 'default'),
(31, 'main-right', 'teamxuquang_newsplus_ver1'),
(31, 'main-right', 'xuquangnews_plus_v2'),
(32, 'main', 'mobile_default'),
(32, 'main-right', 'default'),
(32, 'main-right', 'teamxuquang_newsplus_ver1'),
(32, 'main-right', 'xuquangnews_plus_v2'),
(33, 'main', 'mobile_default'),
(33, 'main-right', 'default'),
(33, 'main-right', 'teamxuquang_newsplus_ver1'),
(33, 'main-right', 'xuquangnews_plus_v2'),
(34, 'main', 'mobile_default'),
(34, 'main-right', 'default'),
(34, 'main-right', 'teamxuquang_newsplus_ver1'),
(34, 'main-right', 'xuquangnews_plus_v2'),
(35, 'main', 'mobile_default'),
(35, 'main-right', 'default'),
(35, 'main-right', 'teamxuquang_newsplus_ver1'),
(35, 'main-right', 'xuquangnews_plus_v2'),
(36, 'main', 'mobile_default'),
(36, 'main-right', 'default'),
(36, 'main-right', 'teamxuquang_newsplus_ver1'),
(36, 'main-right', 'xuquangnews_plus_v2'),
(37, 'main', 'mobile_default'),
(37, 'main-right', 'default'),
(37, 'main-right', 'teamxuquang_newsplus_ver1'),
(37, 'main-right', 'xuquangnews_plus_v2'),
(38, 'main', 'mobile_default'),
(38, 'main-right', 'default'),
(38, 'main-right', 'teamxuquang_newsplus_ver1'),
(38, 'main-right', 'xuquangnews_plus_v2'),
(39, 'main', 'mobile_default'),
(39, 'main-right', 'default'),
(39, 'main-right', 'teamxuquang_newsplus_ver1'),
(39, 'main-right', 'xuquangnews_plus_v2'),
(40, 'main', 'mobile_default'),
(40, 'main-right', 'default'),
(40, 'main-right', 'teamxuquang_newsplus_ver1'),
(40, 'main-right', 'xuquangnews_plus_v2'),
(41, 'main', 'mobile_default'),
(41, 'main-right', 'default'),
(41, 'main-right', 'teamxuquang_newsplus_ver1'),
(41, 'main-right', 'xuquangnews_plus_v2'),
(47, 'main', 'mobile_default'),
(47, 'main-right', 'default'),
(47, 'main-right', 'teamxuquang_newsplus_ver1'),
(47, 'main-right', 'xuquangnews_plus_v2'),
(48, 'main', 'mobile_default'),
(48, 'main-right', 'default'),
(48, 'main-right', 'teamxuquang_newsplus_ver1'),
(48, 'main-right', 'xuquangnews_plus_v2'),
(49, 'main', 'mobile_default'),
(49, 'main-right', 'default'),
(49, 'main-right', 'teamxuquang_newsplus_ver1'),
(49, 'main-right', 'xuquangnews_plus_v2'),
(50, 'main', 'mobile_default'),
(50, 'main-right', 'default'),
(50, 'main-right', 'teamxuquang_newsplus_ver1'),
(50, 'main-right', 'xuquangnews_plus_v2'),
(51, 'main-right', 'default'),
(51, 'main-right', 'teamxuquang_newsplus_ver1'),
(51, 'main-right', 'xuquangnews_plus_v2'),
(52, 'main', 'mobile_default'),
(52, 'main-right', 'default'),
(52, 'main-right', 'teamxuquang_newsplus_ver1'),
(52, 'main-right', 'xuquangnews_plus_v2'),
(55, 'main', 'mobile_default'),
(55, 'main-right', 'default'),
(55, 'main-right', 'teamxuquang_newsplus_ver1'),
(55, 'main-right', 'xuquangnews_plus_v2'),
(56, 'main', 'mobile_default'),
(56, 'main-right', 'default'),
(56, 'main-right', 'teamxuquang_newsplus_ver1'),
(56, 'main-right', 'xuquangnews_plus_v2'),
(58, 'main', 'mobile_default'),
(58, 'main-right', 'default'),
(58, 'main-right', 'teamxuquang_newsplus_ver1'),
(58, 'main-right', 'xuquangnews_plus_v2'),
(59, 'main', 'mobile_default'),
(59, 'main-right', 'default'),
(59, 'main-right', 'teamxuquang_newsplus_ver1'),
(59, 'main-right', 'xuquangnews_plus_v2'),
(60, 'main', 'mobile_default'),
(60, 'main-right', 'default'),
(60, 'main-right', 'teamxuquang_newsplus_ver1'),
(60, 'main-right', 'xuquangnews_plus_v2'),
(61, 'main', 'mobile_default'),
(61, 'main-right', 'default'),
(61, 'main-right', 'teamxuquang_newsplus_ver1'),
(61, 'main-right', 'xuquangnews_plus_v2'),
(62, 'main', 'mobile_default'),
(62, 'main-right', 'default'),
(62, 'main-right', 'teamxuquang_newsplus_ver1'),
(62, 'main-right', 'xuquangnews_plus_v2'),
(63, 'main', 'mobile_default'),
(63, 'main-right', 'default'),
(63, 'main-right', 'teamxuquang_newsplus_ver1'),
(63, 'main-right', 'xuquangnews_plus_v2'),
(64, 'main', 'mobile_default'),
(64, 'main-right', 'default'),
(64, 'main-right', 'teamxuquang_newsplus_ver1'),
(64, 'main-right', 'xuquangnews_plus_v2'),
(65, 'main', 'mobile_default'),
(65, 'main-right', 'default'),
(65, 'main-right', 'teamxuquang_newsplus_ver1'),
(65, 'main-right', 'xuquangnews_plus_v2'),
(66, 'main', 'mobile_default'),
(66, 'main-right', 'default'),
(66, 'main-right', 'teamxuquang_newsplus_ver1'),
(66, 'main-right', 'xuquangnews_plus_v2'),
(67, 'main', 'mobile_default'),
(67, 'main-right', 'default'),
(67, 'main-right', 'teamxuquang_newsplus_ver1'),
(67, 'main-right', 'xuquangnews_plus_v2'),
(68, 'left-main-right', 'default'),
(69, 'main', 'mobile_default'),
(69, 'main-right', 'default'),
(69, 'main-right-home', 'teamxuquang_newsplus_ver1'),
(69, 'main-right-home', 'xuquangnews_plus_v2'),
(70, 'left-main-right', 'default'),
(71, 'left-main-right', 'default'),
(72, 'main', 'mobile_default'),
(72, 'main-right', 'default'),
(72, 'main-right', 'teamxuquang_newsplus_ver1'),
(72, 'main-right', 'xuquangnews_plus_v2'),
(73, 'left-main-right', 'default'),
(74, 'main', 'mobile_default'),
(74, 'main-right', 'default'),
(74, 'main-right', 'teamxuquang_newsplus_ver1'),
(74, 'main-right', 'xuquangnews_plus_v2'),
(75, 'left-main-right', 'default'),
(76, 'left-main-right', 'default'),
(77, 'main', 'mobile_default'),
(77, 'main-right', 'default'),
(77, 'main-right', 'teamxuquang_newsplus_ver1'),
(77, 'main-right', 'xuquangnews_plus_v2'),
(78, 'main', 'mobile_default'),
(78, 'main-right', 'default'),
(78, 'main-right', 'teamxuquang_newsplus_ver1'),
(78, 'main-right', 'xuquangnews_plus_v2'),
(79, 'main', 'mobile_default'),
(79, 'main-right', 'default'),
(79, 'main-right', 'teamxuquang_newsplus_ver1'),
(79, 'main-right', 'xuquangnews_plus_v2'),
(80, 'main', 'mobile_default'),
(80, 'main-right', 'default'),
(80, 'main-right', 'teamxuquang_newsplus_ver1'),
(80, 'main-right', 'xuquangnews_plus_v2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`, `gid`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1512027798, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1, 0),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1512027798, 1, 1, '', '', '', '', '6', 4, 0, '', 1, 1, 0),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1512027798, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 1, 0),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1512027798, 1, 1, '', '', '', '', '6', 6, 1, '', 0, 1, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1512027798, 1, 1, '', '', '', 'online, statistics', '6', 7, 1, '', 0, 1, 0),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1512027798, 1, 1, '', '', '', '', '6', 8, 0, '', 1, 1, 0),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1512027798, 1, 1, '', '', '', '', '6', 9, 1, '', 0, 1, 0),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1512027798, 1, 0, '', '', '', '', '6', 10, 1, '', 0, 1, 0),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1512027798, 0, 1, '', '', '', '', '6', 11, 1, '', 0, 1, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1512027798, 1, 1, '', '', '', '', '6', 12, 1, '', 0, 1, 0),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1512027798, 1, 1, '', '', '', '', '6', 13, 0, '', 1, 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1512027798, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 1, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1512027798, 1, 1, '', '', '', '', '6', 15, 1, '', 1, 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1512027798, 0, 1, '', '', '', '', '6', 16, 0, '', 0, 1, 0),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1512027798, 1, 0, '', '', '', '', '6', 17, 1, '', 0, 1, 0),
('blogs', 'news', 'blogs', 'blogs', 'news', 'Blogs Cntt', '', '', 1512032350, 1, 1, '', '', '', '', '6', 3, 1, '', 1, 1, 0),
('home', 'home', 'home', 'home', 'home', 'Trang chủ', '', '', 1512053895, 1, 0, '', '', '', '', '6', 1, 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_referer_stats`
--

INSERT INTO `nv4_vi_referer_stats` (`host`, `total`, `month01`, `month02`, `month03`, `month04`, `month05`, `month06`, `month07`, `month08`, `month09`, `month10`, `month11`, `month12`, `last_update`) VALUES
('netquangdev', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1512798970),
('localhost', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1514039810);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật &#40;Quyền riêng tư&#41;', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br  /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br  /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br  /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br  /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br  /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br  /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a> <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br  /> <br  /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br  /> <br  /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br  /> <br  /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">&nbsp;</p>', 'bảo mật', 0, '4', '', 0, 1, 1, 1512027798, 1512028455, 1, 3, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br  /> <br  /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br  /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br  /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br  /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br  /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br  /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br  /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br  /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br  /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng và phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL)&nbsp;<br  /> - Website này do TEAM Xứ Quảng chúng tôi sở hữu, điều hành và duy trì.&nbsp;</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br  /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br  /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br  /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br  /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br  /> - Làm xáo trộn trật tự công cộng.<br  /> - Hành vi liên quan đến tội phạm.<br  /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br  /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br  /> - Nói xấu, làm nhục, phỉ báng người khác.<br  /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br  /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br  /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br  /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br  /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br  /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br  /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br  /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br  /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br  /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br  /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1512027798, 1512028585, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Chỉ mục cho bảng `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Chỉ mục cho bảng `nv4_banip`
--
ALTER TABLE `nv4_banip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Chỉ mục cho bảng `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Chỉ mục cho bảng `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Chỉ mục cho bảng `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Chỉ mục cho bảng `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Chỉ mục cho bảng `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Chỉ mục cho bảng `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Chỉ mục cho bảng `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Chỉ mục cho bảng `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Chỉ mục cho bảng `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Chỉ mục cho bảng `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Chỉ mục cho bảng `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Chỉ mục cho bảng `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Chỉ mục cho bảng `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Chỉ mục cho bảng `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Chỉ mục cho bảng `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Chỉ mục cho bảng `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Chỉ mục cho bảng `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_1`
--
ALTER TABLE `nv4_vi_blogs_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_2`
--
ALTER TABLE `nv4_vi_blogs_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_3`
--
ALTER TABLE `nv4_vi_blogs_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_4`
--
ALTER TABLE `nv4_vi_blogs_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_5`
--
ALTER TABLE `nv4_vi_blogs_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_6`
--
ALTER TABLE `nv4_vi_blogs_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_7`
--
ALTER TABLE `nv4_vi_blogs_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_8`
--
ALTER TABLE `nv4_vi_blogs_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_9`
--
ALTER TABLE `nv4_vi_blogs_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_admins`
--
ALTER TABLE `nv4_vi_blogs_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_block`
--
ALTER TABLE `nv4_vi_blogs_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_block_cat`
--
ALTER TABLE `nv4_vi_blogs_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_cat`
--
ALTER TABLE `nv4_vi_blogs_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_config_post`
--
ALTER TABLE `nv4_vi_blogs_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_detail`
--
ALTER TABLE `nv4_vi_blogs_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_logs`
--
ALTER TABLE `nv4_vi_blogs_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_rows`
--
ALTER TABLE `nv4_vi_blogs_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_sources`
--
ALTER TABLE `nv4_vi_blogs_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_tags`
--
ALTER TABLE `nv4_vi_blogs_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_tags_id`
--
ALTER TABLE `nv4_vi_blogs_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_tmp`
--
ALTER TABLE `nv4_vi_blogs_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_blogs_topics`
--
ALTER TABLE `nv4_vi_blogs_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Chỉ mục cho bảng `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Chỉ mục cho bảng `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Chỉ mục cho bảng `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Chỉ mục cho bảng `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Chỉ mục cho bảng `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nv4_banip`
--
ALTER TABLE `nv4_banip`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT cho bảng `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_1`
--
ALTER TABLE `nv4_vi_blogs_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_2`
--
ALTER TABLE `nv4_vi_blogs_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_3`
--
ALTER TABLE `nv4_vi_blogs_3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_4`
--
ALTER TABLE `nv4_vi_blogs_4`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_5`
--
ALTER TABLE `nv4_vi_blogs_5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_6`
--
ALTER TABLE `nv4_vi_blogs_6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_7`
--
ALTER TABLE `nv4_vi_blogs_7`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_8`
--
ALTER TABLE `nv4_vi_blogs_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_9`
--
ALTER TABLE `nv4_vi_blogs_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_block_cat`
--
ALTER TABLE `nv4_vi_blogs_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_cat`
--
ALTER TABLE `nv4_vi_blogs_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_logs`
--
ALTER TABLE `nv4_vi_blogs_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_rows`
--
ALTER TABLE `nv4_vi_blogs_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_sources`
--
ALTER TABLE `nv4_vi_blogs_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_tags`
--
ALTER TABLE `nv4_vi_blogs_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blogs_topics`
--
ALTER TABLE `nv4_vi_blogs_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
