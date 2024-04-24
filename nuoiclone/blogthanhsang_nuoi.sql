-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 15, 2018 lúc 09:24 AM
-- Phiên bản máy phục vụ: 10.0.34-MariaDB-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blogthanhsang_nuoi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_block` tinyint(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  `maximum_facebook_accounts` int(11) NOT NULL,
  `cache_privilege` text NOT NULL,
  `cache_setting` text NOT NULL,
  `password` varchar(250) NOT NULL,
  `last_online_time` int(11) NOT NULL,
  `auto` tinyint(1) NOT NULL,
  `timezone` varchar(250) NOT NULL,
  `expiration_date` datetime NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `ref` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `type`, `is_active`, `is_block`, `create_date`, `maximum_facebook_accounts`, `cache_privilege`, `cache_setting`, `password`, `last_online_time`, `auto`, `timezone`, `expiration_date`, `full_name`, `email`, `ref`) VALUES
('#default', 'PORTAL', 1, 0, 2008, 0, '', 'array (\n  \'config_name\' => \'C??ng ty c?»? ph??§n gi??£i ph??p c??ng ngh?»? cao TCV\',\n  \'config_representative\' => \'B?¹i Ti???n Ä???i\',\n  \'config_representative_nationality\' => \'Vi?»?t Nam\',\n  \'config_representative_position\' => \'Gi??m Ä?»?c\',\n  \'config_address\' => \'12/41 Tr??§n Qu?»?c Ho? n H?  N?»?i  Vi?»?t Nam\',\n  \'config_phone\' => \'0934635884\',\n  \'config_fax\' => \'0934635884\',\n  \'config_tax\' => \'0934635884\',\n  \'config_account\' => \'0934635884\',\n  \'config_account_bank\' => \'VietcomBank\',\n  \'config_currency\' => \'VND\',\n  \'config_email\' => \'thanhpt@tcv.vn\',\n  \'config_website\' => \'http://tcv.vn\',\n  \'config_template\' => \'default\',\n  \'language_default\' => \'1\',\n  \'use_cache\' => \'1\',\n  \'rewrite\' => \'0\',\n  \'use_double_click\' => \'0\',\n  \'use_log\' => \'0\',\n  \'use_recycle_bin\' => \'0\',\n  \'website_keywords\' => \'\',\n  \'website_desciption\' => \'Vietnamnay li??n k???t Ä??»? th?»?nh vÆ°?»£ng, th??c Ä???©y thÆ°Æ?ng m???i Ä?i?»?n t?»­ Vi?»?t Nam\',\n  \'google_analytics\' => \'\',\n  \'site_title_1\' => \'C?»?ng th??ng tin Ä?i?»?n t?»­ V?¹ng duy??n h??£i mi?»n Trung \',\n  \'email_support_online_1\' => \'lienhe@vietccr.vn\',\n  \'email_webmaster_1\' => \'noreply@vietnamnay.com\',\n  \'pass_email_webmaster_1\' => \'aggies.123\',\n  \'title_email_webmaster_1\' => \'K?­nh ch? o qu?­ kh??ch\',\n  \'support_online_1\' => \'\',\n  \'support_skype_1\' => \'\',\n  \'company_address_1\' => \'118 L?? L?»£i, H??£i Ch?¢u, Ä?  n??µng\',\n  \'company_phone_1\' => \'0511.3656556\',\n  \'company_fax_1\' => \'0511.3656677\',\n  \'contact_information_1\' => \'<div>\r\n<div><strong>Ch&uacute;ng t&ocirc;i khuy???n kh&iacute;ch qu&yacute; v?»? li&ecirc;n l???c v?»?i ch&uacute;ng t&ocirc;i qua thÆ° Ä?i?»?n t?»­, ho??·c Ä?i?»?n tho???i Ä??»? ch&uacute;ng t&ocirc;i c&oacute; th?»? ph&uacute;c Ä?&aacute;p qu&yacute; v?»? nhanh nh???t.&nbsp;</strong></div>\r\n<div>\r\n<p>Ä?»?a ch?»? nh??­n thÆ° c?»§a ch&uacute;ng t&ocirc;i theo Ä?Æ°?»ng bÆ°u Ä?i?»?n:&nbsp;<strong>Qu?»¹ Nghi&ecirc;n c?»©u ph&aacute;t tri?»?n mi?»n Trung -&nbsp;Ph&ograve;ng VÄ?n thÆ° &ndash; S?»? 118 L&ecirc; L?»£i, H??£i Ch&acirc;u, Ä&agrave; n??µng, Vi?»?t Nam.</strong></p>\r\n</div>\r\n<p>Ho??·c th&ocirc;ng qua&nbsp;: s?»? Ä?i?»?n tho???i: <strong>0511.3656677</strong>,&nbsp;ÄÆ°?»ng d&acirc;y n&oacute;ng: <strong>0511.3656677. </strong></p>\r\n<p><strong>H&atilde;y g?»i cho ch&uacute;ng t&ocirc;i,&nbsp;c&aacute;c chuy&ecirc;n vi&ecirc;n c?»§a ch&uacute;ng t&ocirc;i s??½ tr??£ l?»i c&acirc;u h?»i c?»§a qu&yacute; v?»? b??±ng ti???ng Vi?»?t ho??·c ti???ng Anh, t?»« 8h s&aacute;ng t?»?i 5h30 chi?»u c&aacute;c ng&agrave;y t?»« th?»© 2 Ä????n th?»© 6 h&agrave;ng tu??§n, gi?» Vi?»?t Nam, tr?»« ng&agrave;y l?»?, t???t theo quy Ä??»?nh. N?»?i dung trao Ä??»?i c?»§a qu&yacute; v?»? s??½ Ä?Æ°?»£c ghi &acirc;m.</strong></p>\r\n<p>Email:&nbsp;<a href=\"mailto:lienhe@vietccr.vn\"><strong>lienhe@vietccr.vn</strong></a></p>\r\n<p><strong>Ho??·c c&oacute; th?»? nh??­p n?»?i dung y&ecirc;u c??§u v&agrave;o Form dÆ°?»?i Ä?&acirc;y, ch&uacute;ng t&ocirc;i s??½ tr??£ l?»i ngay sau khi nh??­n Ä?Æ°?»£c </strong>:</p>\r\n</div>\r\n<p>&nbsp;</p>\',\n  \'received_notification_from_contact\' => \'0\',\n  \'is_active\' => \'0\',\n  \'notification_when_interrption\' => \'\',\n  \'site_title_2\' => \'\',\n  \'email_support_online_2\' => \'\',\n  \'email_webmaster_2\' => \'\',\n  \'pass_email_webmaster_2\' => \'\',\n  \'title_email_webmaster_2\' => \'\',\n  \'support_online_2\' => \'\',\n  \'support_skype_2\' => \'\',\n  \'company_address_2\' => \'\',\n  \'company_phone_2\' => \'\',\n  \'company_fax_2\' => \'\',\n  \'contact_information_2\' => \'\',\n  \'business_registration_licence_1\' => \'Gi???y ph?©p s?»? 218/GP-TTÄT, C?»?c Qu??£n l?½ PTTH&TTÄT, B?»? TTTT ng? y 09/12/2011\',\n  \'business_registration_licence_2\' => \'\',\n  \'currency_default\' => \'VND\',\n  \'site_icon_1\' => \'upload/default/icon//12.2011/10.jpg\',\n  \'time_auto_update\' => \'\',\n  \'member_point\' => \'\',\n  \'company_hotline_1\' => \'0511.3656556\',\n  \'company_hotline_2\' => \'\',\n  \'up_time_point\' => \'1\',\n  \'up_status_point\' => \'10\',\n  \'item_per_page_history\' => \'20\',\n  \'tags\' => \'iphone,m??y n?©n kh?­,m??y Ä?o Ä?i?»?n,tuy?»?n nh?¢n vi??n,nh?¢n vi??n,t?¬m vi?»?c l? m,nh?¢n s?»±,tuy?»?n dinh,gi??o d?»?c,y t???,vi?»?c l? m,3gs,3GS,k??? to??n,m??y c??ng ngh?»?,nokia,sam sung,4GS,qu??£ng ninh,h?  n?»?i\',\n  \'website_description\' => \'\',\n  \'enterprise_tags\' => \'Du l?»?ch, Giao th??ng , v??­n t??£i , m?¢y tre, c??ng nghi?»?p, Ä?i?»?n l???nh\',\n  \'google_api\' => \'http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAA3e7VlO1zoHx2TwVAedVwhhTO96_MOe08dpjWjsS-pUmreROeuxT2bNkdGqG-6-vxh4-lRJbCk3AhDw\',\n  \'check_session\' => \'0\',\n  \'site_title\' => \'\',\n);', '', 1272449301, 0, '', '0000-00-00 00:00:00', '', '', ''),
('#news', 'PORTAL', 1, 0, 0, 0, '', 'array (\n  \'website_title\' => \'Há»‡ thá»‘ng Facebook Marketing\',\n  \'website_description\' => \'Há»‡ thá»‘ng Facebook Marketing\',\n  \'website_keyword\' => \'tool facebook, pháº§n má»m facebook, tool Ä‘Äƒng tin facebook, tool dang bai facebook, Ä‘Äƒng tin tá»± Ä‘á»™ng, Tool nuï¿½i Nick facebook, tá»± Ä‘á»™ng káº¿t báº¡n, tá»± Ä‘á»™ng Ä‘á»“ng ï¿½ káº¿t báº¡n, Ä‘Äƒng bï¿½i lï¿½n fanpage, Ä‘Äƒng bï¿½i lï¿½n Group, Tá»± Ä‘á»™ng Ä‘Äƒng bï¿½i theo lá»‹ch háº¹n\',\n  \'google_analytics\' => \'<script>\r\n  (function(i,s,o,g,r,a,m){i[\\\'GoogleAnalyticsObject\\\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\\\'script\\\',\\\'https://www.google-analytics.com/analytics.js\\\',\\\'ga\\\');\r\n\r\n  ga(\\\'create\\\', \\\'UA-50190897-1\\\', \\\'auto\\\');\r\n  ga(\\\'send\\\', \\\'pageview\\\');\r\n\r\n</script>\r\n\r\n\r\n<!--Start of Zendesk Chat Script-->\r\n<script type=\"text/javascript\">\r\nwindow.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=\r\nd.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.\r\n_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute(\"charset\",\"utf-8\");\r\n$.src=\"https://v2.zopim.com/?4pg7YXpZOIHrMivPrp2OIcxYpXN0TJBG\";z.t=+new Date;$.\r\ntype=\"text/javascript\";e.parentNode.insertBefore($,e)})(document,\"script\");\r\n</script>\r\n<!--End of Zendesk Chat Script-->\',\n  \'timezone\' => \'Asia/Ho_Chi_Minh\',\n  \'default_language\' => \'1\',\n  \'register\' => \'1\',\n  \'auto_active_user\' => \'1\',\n  \'maximum_account_default\' => \'3\',\n  \'default_deplay_post_now\' => \'20\',\n  \'minimum_deplay_post_now\' => \'22\',\n  \'default_deplay\' => \'1\',\n  \'minimum_deplay\' => \'23\',\n  \'facebook_id\' => \'4324\',\n  \'facebook_secret\' => \'24324\',\n  \'google_id\' => \'234234\',\n  \'google_secret\' => \'2342342\',\n  \'twitter_id\' => \'424\',\n  \'twitter_secret\' => \'324234234\',\n  \'facebook_page\' => \'4324\',\n  \'twitter_page\' => \'324234\',\n  \'pinterest_page\' => \'4234234\',\n  \'instagram_page\' => \'4234234\',\n  \'website_logo\' => \'upload/news/icon//32.2017/147.PhP\',\n  \'chinh_sach\' => \'fuck\',\n  \'website_icon\' => \'upload/news/icon//32.2017/147.php\',\n  \'percen_profit\' => \'20\',\n  \'show_ruoi\' => \'1\',\n  \'con_ruoi\' => \'0\',\n  \'sobcoin_reward\' => \'\',\n  \'hotline\' => \'\',\n  \'payment_info\' => \'<p><strong>Äá»ƒ th&ecirc;m nhiá»u hÆ¡n&nbsp;10000&nbsp;t&agrave;i khoáº£n v&agrave; thá»i gian sá»­ dá»¥ng l&acirc;u hÆ¡n báº¡n cáº§n n&acirc;ng cáº¥p t&agrave;i khoáº£n cá»§a m&igrave;nh.</strong></p>\r\n<h4>GI&Aacute; N&Acirc;NG Cáº¤P T&Agrave;I KHOáº¢N:&nbsp;<strong>4k/ 1 acc/ 1 th&aacute;ng</strong></h4>\r\n<h4>D&Ugrave;NG TRá»ŒN Äá»œI:&nbsp;<strong>2 triá»‡u/ 20 acc - 3 triá»‡u/ 30 acc ...</strong></h4>\r\n<p><strong>V&iacute; dá»¥:&nbsp;</strong>Báº¡n muá»‘n sá»­ dá»¥ng 20 t&agrave;i khoáº£n Facebook trong 2 th&aacute;ng th&igrave; sá»‘ tiá»n báº¡n cáº§n thanh to&aacute;n cho ch&uacute;ng t&ocirc;i l&agrave;: 4.000 x 20 x 2 = 160.000 VNÄ&nbsp;<br /><br /></p>\r\n<div>Äá»ƒ n&acirc;ng cáº¥p t&agrave;i khoáº£n vui l&ograve;ng chuyá»ƒn tiá»n cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin sau:</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>VIETCOMBANK</h4>\r\n<div>Chá»§ t&agrave;i khoáº£n:&nbsp;<strong>PHáº M TRUNG TH&Agrave;NH</strong><br />Sá»‘ t&agrave;i khoáº£n:&nbsp;<strong>049 1000 400 127</strong><br /><strong>Ng&acirc;n h&agrave;ng Vietcombank - Chi nh&aacute;nh ThÄƒng Long - H&agrave; Ná»™i</strong><br />Ná»™i dung:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>PAYPAL</h4>\r\n<div>TK paypal:&nbsp;<strong>thanhpt294@gmail.com</strong></div>\r\n<div>Ná»™i dung ghi:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n<div>Tá»· gi&aacute; USD:&nbsp;<strong>21,000 VNÄ/ 1 USD</strong></div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Má»i tháº¯c máº¯c xin li&ecirc;n há»‡ theo HOTLINE:&nbsp;<strong>0969 857 408</strong></strong><br />Hoáº·c qua sky:&nbsp;<strong>thanhpt294</strong>&nbsp;|&nbsp;<a href=\"https://www.facebook.com/messages/requests/t/thanh290484\" target=\"_blank\">Facebook SMS</a></div>\',\n  \'notice_title\' => \'\',\n  \'notice\' => \'\',\n);', '', 0, 0, '', '0000-00-00 00:00:00', '', '', ''),
('demo@gpcorp.vn', 'USER', 1, 0, 1490613266, 0, '$this->groups=array (\n);$this->actions=array (\n);', 'array (\n);', '24892e7c5679077d5d36cbb974d7eaeb', 0, 0, 'UTC', '2019-05-28 00:00:00', 'BlogThanhSang', 'demo@gpcorp.vn', ''),
('admin@blogthanhsang.com', 'USER', 1, 0, 2008, 10000, '$this->groups=array (\n  3 => \n  array (\n    \'id\' => \'3\',\n  ),\n);$this->actions=array (\n);', 'array (\n);', '80304c53626560551f00048af3ee8cb8', 1531617775, 0, 'Asia/Ho_Chi_Minh', '2027-03-30 00:00:00', 'admin', 'admin@blogthanhsang.com', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_privilege`
--

CREATE TABLE `account_privilege` (
  `id` int(11) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL DEFAULT '0',
  `portal_id` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `parameters` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_related`
--

CREATE TABLE `account_related` (
  `id` int(11) NOT NULL,
  `child_id` varchar(255) NOT NULL DEFAULT '0',
  `parent_id` varchar(255) NOT NULL DEFAULT '0',
  `join_date` date NOT NULL DEFAULT '0000-00-00',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_real` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `account_related`
--

INSERT INTO `account_related` (`id`, `child_id`, `parent_id`, `join_date`, `is_active`, `is_real`) VALUES
(1, 'admin@blogthanhsang.com', '3', '2011-01-21', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_setting`
--

CREATE TABLE `account_setting` (
  `id` int(11) NOT NULL,
  `account_id` varchar(250) NOT NULL,
  `setting_id` varchar(250) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `account_setting`
--

INSERT INTO `account_setting` (`id`, `account_id`, `setting_id`, `value`) VALUES
(1, '#news', 'website_title', 'Há»‡ thá»‘ng Facebook Marketing'),
(2, '#news', 'website_description', 'Há»‡ thá»‘ng Facebook Marketing'),
(3, '#news', 'website_keyword', 'tool facebook, pháº§n má»m facebook, tool Ä‘Äƒng tin facebook, tool dang bai facebook, Ä‘Äƒng tin tá»± Ä‘á»™ng, Tool nuï¿½i Nick facebook, tá»± Ä‘á»™ng káº¿t báº¡n, tá»± Ä‘á»™ng Ä‘á»“ng ï¿½ káº¿t báº¡n, Ä‘Äƒng bï¿½i lï¿½n fanpage, Ä‘Äƒng bï¿½i lï¿½n Group, Tá»± Ä‘á»™ng Ä‘Äƒng bï¿½i theo lá»‹ch háº¹n'),
(26, '#news', 'google_analytics', '<script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-50190897-1\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n\r\n\r\n<!--Start of Zendesk Chat Script-->\r\n<script type=\"text/javascript\">\r\nwindow.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=\r\nd.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.\r\n_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute(\"charset\",\"utf-8\");\r\n$.src=\"https://v2.zopim.com/?4pg7YXpZOIHrMivPrp2OIcxYpXN0TJBG\";z.t=+new Date;$.\r\ntype=\"text/javascript\";e.parentNode.insertBefore($,e)})(document,\"script\");\r\n</script>\r\n<!--End of Zendesk Chat Script-->'),
(4, '#news', 'timezone', 'Asia/Ho_Chi_Minh'),
(5, '#news', 'default_language', '1'),
(6, '#news', 'register', '1'),
(7, '#news', 'auto_active_user', '1'),
(8, '#news', 'maximum_account_default', '3'),
(9, '#news', 'default_deplay_post_now', '20'),
(10, '#news', 'minimum_deplay_post_now', '22'),
(11, '#news', 'default_deplay', '1'),
(12, '#news', 'minimum_deplay', '23'),
(13, '#news', 'facebook_id', '4324'),
(14, '#news', 'facebook_secret', '24324'),
(15, '#news', 'google_id', '234234'),
(16, '#news', 'google_secret', '2342342'),
(17, '#news', 'twitter_id', '424'),
(18, '#news', 'twitter_secret', '324234234'),
(19, '#news', 'facebook_page', '4324'),
(20, '#news', 'twitter_page', '324234'),
(21, '#news', 'pinterest_page', '4234234'),
(22, '#news', 'instagram_page', '4234234'),
(23, '#news', 'website_logo', 'upload/news/icon//32.2017/147.PhP'),
(24, '#news', 'chinh_sach', 'fuck'),
(25, '#news', 'website_icon', 'upload/news/icon//32.2017/147.php'),
(27, '#news', 'percen_profit', '20'),
(28, '#news', 'show_ruoi', '1'),
(29, '#news', 'con_ruoi', '0'),
(30, '#news', 'sobcoin_reward', ''),
(31, '#news', 'hotline', ''),
(32, '#news', 'payment_info', '<p><strong>Äá»ƒ th&ecirc;m nhiá»u hÆ¡n&nbsp;10000&nbsp;t&agrave;i khoáº£n v&agrave; thá»i gian sá»­ dá»¥ng l&acirc;u hÆ¡n báº¡n cáº§n n&acirc;ng cáº¥p t&agrave;i khoáº£n cá»§a m&igrave;nh.</strong></p>\r\n<h4>GI&Aacute; N&Acirc;NG Cáº¤P T&Agrave;I KHOáº¢N:&nbsp;<strong>4k/ 1 acc/ 1 th&aacute;ng</strong></h4>\r\n<h4>D&Ugrave;NG TRá»ŒN Äá»œI:&nbsp;<strong>2 triá»‡u/ 20 acc - 3 triá»‡u/ 30 acc ...</strong></h4>\r\n<p><strong>V&iacute; dá»¥:&nbsp;</strong>Báº¡n muá»‘n sá»­ dá»¥ng 20 t&agrave;i khoáº£n Facebook trong 2 th&aacute;ng th&igrave; sá»‘ tiá»n báº¡n cáº§n thanh to&aacute;n cho ch&uacute;ng t&ocirc;i l&agrave;: 4.000 x 20 x 2 = 160.000 VNÄ&nbsp;<br /><br /></p>\r\n<div>Äá»ƒ n&acirc;ng cáº¥p t&agrave;i khoáº£n vui l&ograve;ng chuyá»ƒn tiá»n cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin sau:</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>VIETCOMBANK</h4>\r\n<div>Chá»§ t&agrave;i khoáº£n:&nbsp;<strong>PHáº M TRUNG TH&Agrave;NH</strong><br />Sá»‘ t&agrave;i khoáº£n:&nbsp;<strong>049 1000 400 127</strong><br /><strong>Ng&acirc;n h&agrave;ng Vietcombank - Chi nh&aacute;nh ThÄƒng Long - H&agrave; Ná»™i</strong><br />Ná»™i dung:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>PAYPAL</h4>\r\n<div>TK paypal:&nbsp;<strong>thanhpt294@gmail.com</strong></div>\r\n<div>Ná»™i dung ghi:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n<div>Tá»· gi&aacute; USD:&nbsp;<strong>21,000 VNÄ/ 1 USD</strong></div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Má»i tháº¯c máº¯c xin li&ecirc;n há»‡ theo HOTLINE:&nbsp;<strong>0969 857 408</strong></strong><br />Hoáº·c qua sky:&nbsp;<strong>thanhpt294</strong>&nbsp;|&nbsp;<a href=\"https://www.facebook.com/messages/requests/t/thanh290484\" target=\"_blank\">Facebook SMS</a></div>'),
(33, '#news', 'notice_title', ''),
(34, '#news', 'notice', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block`
--

CREATE TABLE `block` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL DEFAULT '0',
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `container_id` int(11) NOT NULL DEFAULT '0',
  `region` varchar(32) NOT NULL DEFAULT '',
  `position` int(10) NOT NULL DEFAULT '0',
  `skin_name` varchar(50) NOT NULL DEFAULT 'default',
  `layout` varchar(50) NOT NULL DEFAULT 'default',
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `block`
--

INSERT INTO `block` (`id`, `module_id`, `page_id`, `container_id`, `region`, `position`, `skin_name`, `layout`, `name`) VALUES
(1, 1, 1, 0, 'center', 1, 'default', 'default', ''),
(2, 2, 2, 0, 'center', 1, 'default', 'default', ''),
(3, 3, 4, 0, 'center', 1, 'default', 'default', ''),
(4, 4, 3, 0, 'center', 1, 'default', 'default', ''),
(5, 5, 5, 0, 'center', 1, 'default', 'default', ''),
(6, 6, 6, 0, 'center', 1, 'default', 'default', ''),
(7, 7, 7, 0, 'center', 1, 'default', 'default', ''),
(12962, 315, 1018, 0, 'content', 3, 'default', 'default', ''),
(600, 103, 75, 0, 'center', 1, 'default', 'default', ''),
(745, 134, 88, 0, 'center', 2, 'default', 'default', ''),
(13053, 473, 1040, 0, 'content', 3, 'default', 'default', ''),
(12957, 451, 1017, 0, 'content', 3, 'default', 'default', ''),
(12956, 315, 1017, 0, 'content', 2, 'default', 'default', ''),
(12961, 452, 1018, 0, 'content', 4, 'default', 'default', ''),
(13052, 315, 1040, 0, 'content', 2, 'default', 'default', ''),
(12953, 450, 1016, 0, 'content', 6, 'default', 'default', ''),
(13067, 478, 1044, 0, 'content', 3, 'default', 'default', ''),
(12938, 40, 1012, 0, 'content', 1, 'default', 'default', ''),
(12964, 315, 1013, 0, 'content', 2, 'default', 'default', ''),
(12945, 448, 1014, 0, 'content', 3, 'default', 'default', ''),
(12944, 315, 1014, 0, 'content', 2, 'default', 'default', ''),
(13063, 315, 1043, 0, 'content', 2, 'default', 'default', ''),
(12949, 449, 1015, 0, 'content', 3, 'default', 'default', ''),
(12948, 315, 1015, 0, 'content', 2, 'default', 'default', ''),
(12965, 447, 1013, 0, 'content', 3, 'default', 'default', ''),
(12968, 315, 1016, 0, 'content', 5, 'default', 'default', ''),
(13066, 315, 1044, 0, 'content', 2, 'default', 'default', ''),
(12970, 315, 1019, 0, 'content', 2, 'default', 'default', ''),
(12972, 453, 1019, 0, 'content', 3, 'default', 'default', ''),
(12976, 454, 1020, 0, 'content', 3, 'default', 'default', ''),
(12975, 315, 1020, 0, 'content', 2, 'default', 'default', ''),
(13064, 477, 1043, 0, 'content', 3, 'default', 'default', ''),
(12980, 455, 1021, 0, 'content', 3, 'default', 'default', ''),
(12979, 315, 1021, 0, 'content', 2, 'default', 'default', ''),
(12984, 456, 1022, 0, 'content', 3, 'default', 'default', ''),
(12983, 315, 1022, 0, 'content', 2, 'default', 'default', ''),
(12988, 457, 1023, 0, 'content', 3, 'default', 'default', ''),
(12987, 315, 1023, 0, 'content', 2, 'default', 'default', ''),
(12992, 458, 1024, 0, 'content', 3, 'default', 'default', ''),
(12991, 315, 1024, 0, 'content', 2, 'default', 'default', ''),
(13076, 481, 1047, 0, 'content', 3, 'default', 'default', ''),
(13073, 315, 1047, 0, 'content', 2, 'default', 'default', ''),
(13070, 479, 1045, 0, 'content', 3, 'default', 'default', ''),
(12999, 460, 1026, 0, 'content', 3, 'default', 'default', ''),
(12998, 315, 1026, 0, 'content', 2, 'default', 'default', ''),
(13059, 315, 1042, 0, 'content', 2, 'default', 'default', ''),
(13003, 461, 1027, 0, 'content', 3, 'default', 'default', ''),
(13002, 315, 1027, 0, 'content', 2, 'default', 'default', ''),
(13072, 315, 1046, 0, 'content', 2, 'default', 'default', ''),
(13007, 462, 1028, 0, 'content', 3, 'default', 'default', ''),
(13006, 315, 1028, 0, 'content', 2, 'default', 'default', ''),
(13011, 463, 1029, 0, 'content', 3, 'default', 'default', ''),
(13010, 315, 1029, 0, 'content', 2, 'default', 'default', ''),
(13061, 476, 1042, 0, 'content', 3, 'default', 'default', ''),
(13015, 464, 1030, 0, 'content', 3, 'default', 'default', ''),
(13014, 315, 1030, 0, 'content', 2, 'default', 'default', ''),
(13057, 475, 1041, 13056, 'content', 1, 'default', 'default', ''),
(13019, 465, 1031, 0, 'content', 3, 'default', 'default', ''),
(13018, 315, 1031, 0, 'content', 2, 'default', 'default', ''),
(13075, 480, 1046, 0, 'content', 3, 'default', 'default', ''),
(13023, 466, 1032, 0, 'content', 3, 'default', 'default', ''),
(13022, 315, 1032, 0, 'content', 2, 'default', 'default', ''),
(13027, 467, 1033, 0, 'content', 3, 'default', 'default', ''),
(13026, 315, 1033, 0, 'content', 2, 'default', 'default', ''),
(13068, 315, 1045, 0, 'content', 2, 'default', 'default', ''),
(13032, 469, 1035, 0, 'content', 3, 'default', 'default', ''),
(13031, 315, 1035, 0, 'content', 2, 'default', 'default', ''),
(13036, 470, 1036, 0, 'content', 3, 'default', 'default', ''),
(13035, 315, 1036, 0, 'content', 2, 'default', 'default', ''),
(13056, 474, 1041, 0, 'content', 1, 'default', 'default', ''),
(13040, 471, 1037, 0, 'content', 3, 'default', 'default', ''),
(13039, 315, 1037, 0, 'content', 2, 'default', 'default', ''),
(13050, 40, 1038, 0, 'content', 3, 'default', 'default', ''),
(13043, 308, 1038, 0, 'content', 2, 'default', 'default', ''),
(13047, 472, 1039, 0, 'content', 3, 'default', 'default', ''),
(13046, 315, 1039, 0, 'content', 2, 'default', 'default', ''),
(13079, 482, 1048, 0, 'content', 3, 'default', 'default', ''),
(13078, 315, 1048, 0, 'content', 2, 'default', 'default', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block_setting`
--

CREATE TABLE `block_setting` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL DEFAULT '0',
  `setting_id` varchar(200) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `block_setting`
--

INSERT INTO `block_setting` (`id`, `block_id`, `setting_id`, `value`) VALUES
(7213, 677, '45_cache', '<div class=\"advertisment-bound\" style=\" <?php if(Module::get_setting(\'extend_css\')){ echo Module::get_setting(\'extend_css\'); }?>\">\n<?php if(Module::get_setting(\'title\')){?>\n<div class=\"advertisment-title\"><?php echo Portal::language(Module::get_setting(\'title\'));?></div>\n<?php }?>\n<?php\n					if(isset($this->map[\'items\']) and is_array($this->map[\'items\']))\n					{\n						foreach($this->map[\'items\'] as $key1=>&$item1)\n						{\n							if($key1!=\'current\')\n							{\n								$this->map[\'items\'][\'current\'] = &$item1;?>\n<?php\n$height = \'\'; $width = \'\';\nif(isset($this->map[\'items\'][\'current\'][\'height\']) and $this->map[\'items\'][\'current\'][\'height\']) $height = \'height=\"\'.$this->map[\'items\'][\'current\'][\'height\'].\'px\"\';\nif(isset($this->map[\'items\'][\'current\'][\'width\']) and $this->map[\'items\'][\'current\'][\'width\']) $width = \'width=\"\'.$this->map[\'items\'][\'current\'][\'width\'].\'px\"\';\n?>\n\n<?php\nif(strpos($this->map[\'items\'][\'current\'][\'image_url\'],\'.swf\'))\n{\n	?>\n	<embed src=\"<?php echo $this->map[\'items\'][\'current\'][\'image_url\'];?>\" wmode=\"transparent\" quality=\"high\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"<?php echo $this->map[\'items\'][\'current\'][\'width\'];?>\" height=\"<?php echo $this->map[\'items\'][\'current\'][\'height\'];?>\"></embed>\n	<?php\n}\nelse\n{\n	if($this->map[\'items\'][\'current\'][\'url\']!=\"\")\n	{\n		echo \'<a target=\"_blank\" href=\"\'.Url::build_current(array(\'cmd\'=>\'click\',\'id\'=>$this->map[\'items\'][\'current\'][\'id\'])).\'\"><img src=\"\'.$this->map[\'items\'][\'current\'][\'image_url\'].\'\" title=\"\'.$this->map[\'items\'][\'current\'][\'name\'].\'\" alt=\"\'.$this->map[\'items\'][\'current\'][\'name\'].\'\" \'.$width.\' \'.$height.\' style=\"\'.Module::get_setting(\'internal_css\').\'\"></a>\';\n	}\n	else\n	{\n		echo \'<img src=\"\'.$this->map[\'items\'][\'current\'][\'image_url\'].\'\" title=\"\'.$this->map[\'items\'][\'current\'][\'name\'].\'\" alt=\"\'.$this->map[\'items\'][\'current\'][\'name\'].\'\" \'.$width.\' \'.$height.\' style=\"\'.Module::get_setting(\'internal_css\').\'\">\';\n	}\n}\n?>\n\n							\n						<?php\n							}\n						}\n					unset($this->map[\'items\'][\'current\']);\n					} ?>\n<?php if(User::can_admin(MODULE_MANAGEADVERTISMENT,ANY_CATEGORY)){?>\n<div align=\"center\">[<a target=\"_blank\" style=\" <?php echo Module::get_setting(\'manage_link_extra\');?>\" href=\"<?php echo Url::build(\'manage_advertisment\',array(\'page_id\'=>Url::get(\'page\'),\'region\'=>Module::$current->data[\'name\']))?>\"><?php echo Portal::language(\'adv_list\');?></a>]&nbsp;[<a target=\"_blank\" style=\" <?php echo Module::get_setting(\'manage_link_extra\');?>\" href=\"<?php echo Url::build(\'manage_advertisment\',array(\'cmd\'=>\'add\',\'page_id\'=>Url::get(\'page\'),\'region\'=>Module::$current->data[\'name\']))?>\"><?php echo Portal::language(\'add_adv\');?></a>]</div>\n<?php }?>\n</div>\n<?php $title = Module::get_setting(\'title\')?Portal::language(Module::get_setting(\'title\')):\'\';?>'),
(34025, 13043, '308_html', '<section class=\"content\">\r\n        <div class=\"container-fluid\">\r\n            <div class=\"row\">\r\n	            <div class=\"col-lg-9 col-md-9 col-sm-9 col-xs-9\">\r\n                    <div class=\"card\">\r\n                        <div class=\"header\">\r\n                            <h2>\r\n                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i> TÃ i khoáº£n Ä‘Ã£ háº¿t thá»i gian sá»­ dá»¥ng. Vui lÃ²ng nÃ¢ng cáº¥p Ä‘á»ƒ sá»­ dá»¥ng tiáº¿p dá»‹ch vá»¥\r\n                            </h2>\r\n                        </div>\r\n                        <div class=\"body\">\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-12 mb0\">\r\n<?php echo Portal::get_setting(\'payment_info\');?>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n	</div>\r\n</section>\r\n'),
(34026, 13043, '308_use_php', 'on');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_1` varchar(255) NOT NULL,
  `description_1` text NOT NULL,
  `brief_1` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `structure_id` bigint(20) NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `url` varchar(255) NOT NULL,
  `total_item` int(11) NOT NULL,
  `portal_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `name_id` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `last_time_update` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `is_hot` int(2) NOT NULL,
  `is_tour` tinyint(1) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `keywords` text NOT NULL,
  `seo_title` varchar(500) NOT NULL,
  `seo_keywords` varchar(500) NOT NULL,
  `seo_description` varchar(500) NOT NULL,
  `is_home` tinyint(1) NOT NULL,
  `show_product` int(1) NOT NULL,
  `is_footer` int(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `show_news` tinyint(1) NOT NULL,
  `link_mobile` varchar(250) NOT NULL,
  `is_map_home` tinyint(1) NOT NULL,
  `title_map_home` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name_1`, `description_1`, `brief_1`, `type`, `structure_id`, `icon_url`, `image_url`, `banner_url`, `color`, `url`, `total_item`, `portal_id`, `status`, `name_id`, `time`, `last_time_update`, `position`, `banner`, `is_hot`, `is_tour`, `layout`, `keywords`, `seo_title`, `seo_keywords`, `seo_description`, `is_home`, `show_product`, `is_footer`, `is_mobile`, `show_news`, `link_mobile`, `is_map_home`, `title_map_home`) VALUES
(1, 'Danh m?»?c g?»?c', '', '', 'ROOT', 1000000000000000000, '', '', '', '', '', 0, '#news', 'SHOW', 'danh-muc-goc', 0, 0, 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, '', 0, ''),
(924, 'Th?»i trang', '', '', 'NEWS', 1040000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'thoi-trang', 1483638986, 1483638986, 0, '', 0, 0, '', '# Thowfi trang Thoi trang', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(925, 'Ä?»i s?»?ng', '', '', 'NEWS', 1050000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'doi-song', 1483638990, 1483638990, 0, '', 0, 0, '', '# ddowfi soosng doi song', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(926, 'Ä?»?c l???', '', '', 'NEWS', 1060000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'doc-la', 1483636986, 0, 0, '', 0, 0, '', '# ddoojc laj doc la', '', '', '', 0, 0, 0, 0, 0, '', 0, ''),
(923, 'Kh??m ph??', '', '', 'NEWS', 1030000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'kham-pha', 1483636954, 0, 0, '', 0, 0, '', '# Khasm phas Kham pha', '', '', '', 0, 0, 0, 0, 0, '', 0, ''),
(922, 'T?¢m s?»±', '', '', 'NEWS', 1020000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'tam-su', 1483638981, 1483638981, 0, '', 0, 0, '', '# Taam suwj Tam su', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(921, 'Gi??£i tr?­', '', '', 'NEWS', 1010000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'giai-tri', 1483638974, 1483638974, 0, '', 0, 0, '', '# Giari tris Giai tri', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(927, 'S?»©c kh?»e', '', '', 'NEWS', 1070000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'suc-khoe', 1483638995, 1483638995, 0, '', 0, 0, '', '# Suwsc khore Suc khoe', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(928, 'Ch?²m sao', '', '', 'NEWS', 1080000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'chom-sao', 1483638999, 1483638999, 0, '', 0, 0, '', '# Chofm sao Chom sao', '', '', '', 1, 0, 0, 0, 0, '', 0, ''),
(929, 'Video', '', '', 'NEWS', 1090000000000000000, '', '', '', '', '', 0, '#news', 'HOME', 'video', 1483637038, 0, 0, '', 0, 0, '', '# Video Video', '', '', '', 0, 0, 0, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `privilege` text NOT NULL,
  `privilege_module` text NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `last_time_update` int(11) NOT NULL,
  `portal_id` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`id`, `name`, `privilege`, `privilege_module`, `user_id`, `time`, `last_time_update`, `portal_id`) VALUES
(5, 'Ph?²ng k??? to??n', 'array (\n  2337 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2337\',\n    \'portal_id\' => \'#news\',\n  ),\n  2338 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2338\',\n    \'portal_id\' => \'#news\',\n  ),\n  2339 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2339\',\n    \'portal_id\' => \'#news\',\n  ),\n  2340 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2340\',\n    \'portal_id\' => \'#news\',\n  ),\n)', 'array (\n  2337 => \n  array (\n    \'module_id\' => \'152\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2338 => \n  array (\n    \'module_id\' => \'29\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2339 => \n  array (\n    \'module_id\' => \'152\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2340 => \n  array (\n    \'module_id\' => \'206\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n)', 'manhtien', 1437382206, 1437382212, '#news'),
(6, 'Mod', 'array (\n  733 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'733\',\n    \'portal_id\' => \'#news\',\n  ),\n  2259 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2259\',\n    \'portal_id\' => \'#news\',\n  ),\n  2260 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2260\',\n    \'portal_id\' => \'#news\',\n  ),\n  2279 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2279\',\n    \'portal_id\' => \'#news\',\n  ),\n  2280 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2280\',\n    \'portal_id\' => \'#news\',\n  ),\n  2329 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2329\',\n    \'portal_id\' => \'#news\',\n  ),\n  2337 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2337\',\n    \'portal_id\' => \'#news\',\n  ),\n  2338 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2338\',\n    \'portal_id\' => \'#news\',\n  ),\n  2339 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2339\',\n    \'portal_id\' => \'#news\',\n  ),\n  2340 => \n  array (\n    \'status\' => 1,\n    \'category_id\' => \'2340\',\n    \'portal_id\' => \'#news\',\n  ),\n)', 'array (\n  733 => \n  array (\n    \'module_id\' => \'32\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2259 => \n  array (\n    \'module_id\' => \'29\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2260 => \n  array (\n    \'module_id\' => \'32\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2279 => \n  array (\n    \'module_id\' => \'36\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2280 => \n  array (\n    \'module_id\' => \'37\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2329 => \n  array (\n    \'module_id\' => \'200\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2337 => \n  array (\n    \'module_id\' => \'152\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2338 => \n  array (\n    \'module_id\' => \'29\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2339 => \n  array (\n    \'module_id\' => \'152\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n  2340 => \n  array (\n    \'module_id\' => \'206\',\n    \'view\' => 1,\n    \'view_detail\' => 1,\n    \'add\' => 1,\n    \'edit\' => 1,\n    \'delete\' => 1,\n    \'reserve\' => 0,\n    \'special\' => 0,\n    \'admin\' => 1,\n  ),\n)', 'manhtien', 1437384399, 1437384817, '#news');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department_user`
--

CREATE TABLE `department_user` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `account_id` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_accounts`
--

CREATE TABLE `facebook_accounts` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `fid` varchar(32) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `token_name` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `token_status` tinyint(1) NOT NULL,
  `status` int(1) DEFAULT '1',
  `total_friend` int(11) NOT NULL,
  `total_like` int(11) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_bot`
--

CREATE TABLE `facebook_bot` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `account_id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `message` varchar(250) NOT NULL,
  `time_post_show` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `flimit` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_fake_link`
--

CREATE TABLE `facebook_fake_link` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `caption` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `link_redirect` varchar(500) NOT NULL,
  `mobile_link_redirect` varchar(500) NOT NULL,
  `domain` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `code` varchar(50) NOT NULL,
  `hitcount` int(11) NOT NULL,
  `bot_check` int(11) NOT NULL,
  `fake_link` varchar(500) NOT NULL,
  `bot_view` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `facebook_fake_link`
--

INSERT INTO `facebook_fake_link` (`id`, `title`, `caption`, `description`, `image_url`, `link_redirect`, `mobile_link_redirect`, `domain`, `time`, `user_id`, `code`, `hitcount`, `bot_check`, `fake_link`, `bot_view`) VALUES
(2, 'Tuáº§n lá»… vÃ ng Even náº¡p tháº» X2 Game TrÃªn Apple vÃ  cÃ¡c game Mobile khuyáº¿n mÃ£i Ä‘áº¿n 100% giÃ¡ trá»‹ tháº» Náº¡p vá»›i khÃ¡ch hÃ ng may máº¯n', 'â˜Žï¸â˜Žï¸â˜Žï¸â˜Žï¸Hotline : 0947.469.333 - 0945.694.899', 'â˜€ Dá»‹ch vá»¥ náº¡p Gem, Diamond, Kim nguyÃªn báº£o , Kim cÆ°Æ¡ng, VÃ ng cá»§a 2 há»‡ Ä‘iá»u hÃ nh iOS \r\n- Dá»‹ch vá»¥ náº¡p uy tÃ­n nháº­n Ä‘áº¡i lÃ½ toÃ n quá»‘c khÃ´ng giá»›i háº¡n sá»‘ láº§n náº¡p cÃ¡c gÃ³i thá»i gian náº¡p tá»« 5 phÃºt Ä‘áº¿n 60 phÃºt .\r\nâš¡ Náº¡p Game 24/24 . Ã¡p dá»¥ng táº¥t cáº£ cÃ¡c Game IOS- ANDROI\r\nPhá»¥ vá»¥ náº¡p 24/24h Táº¥t cáº£ cÃ¡c ngÃ y trong tuáº§n cáº£ ká»ƒ chá»§ nháº­t vÃ  ngÃ y lá»…\r\nQuÃ½ khÃ¡ch cáº§n thÃªm gÃ³i VIP hÆ¡n vui lÃ²ng liÃªn há»‡ trá»±c tiáº¿p chÃºng tÃ´i\r\nâ˜Žï¸â˜Žï¸â˜Žï¸â˜Žï¸Hotline : 0947.469.333 - 0945.694.899\r\nChÃºng tÃ´i hiá»‡n Ä‘ang má»Ÿ rá»™ng Ä‘áº¡i lÃ½ Ä‘áº·c biá»‡t vá»›i cÃ¡c Game thá»§ muá»‘n há»£p tÃ¡c hÃ£y liÃªn há»‡ vá»›i chÃºng tÃ´i ngay hÃ´m nay Ä‘á»ƒ Ä‘Æ°á»£c triáº¿t kháº¥u giÃ¡ tá»‘t nháº¥t \r\nNáº¡p trá»±c tiáº¿p táº¡i há»‡ thá»‘ng Showroom trÃªn toÃ n quá»‘c ', 'http://ungdungdangtin.net//skins/news/libraries/elFinder/php/../files/18300880_1832077610377557_6471792624634524735_n.png', 'https://www.facebook.com/N%E1%BA%A1p-Game-Mobile-Androi-IOS-H%C3%A0-N%E1%BB%99i-1832077233710928/?hc_ref=PAGES_TIMELINE&fref=nf', 'https://www.facebook.com/N%E1%BA%A1p-Game-Mobile-Androi-IOS-H%C3%A0-N%E1%BB%99i-1832077233710928/?hc_ref=PAGES_TIMELINE&fref=nf', 'http://tinmoinhat.gotdns.ch/', 1493883083, 'v0tkan01@gmail.com', 'q7CRzjHZ9', 0, 3, '', 0),
(17, '', '', '', '', 'http://bit.ly/2nHxymG', 'http://bit.ly/2nHxymG', 'http://tinhotqua123.ga/', 1494243523, 'demo@gpcorp.vn', 'XHXkTfkfD', 9, 0, 'http://newfeedday.info/', 0),
(18, '', '', '', '', 'http://vitimes.net?pc=1', 'http://vitimes.net?mobile=1', 'http://tinhotqua123.ga/', 1494259766, 'vitimes.net@gmail.com', 'tDOMQMMHt', 1, 0, 'http://google.com', 0),
(19, '', '', '', '', 'http://vitimes.net?pc=1', 'http://vitimes.net?mobile=1', 'http://tinhotqua123.ga/', 1494259940, 'vitimes.net@gmail.com', 'N7x1MzCSZ', 0, 0, 'http://google.com', 0),
(11, '', '', '', '', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://tinhotqua123.ga/', 1494151949, 'nuoinickviet@gmail.com', 'QCSgOfSRy', 3, 0, 'http://news.zing.vn/3-hoa-hau-a-hau-han-quoc-tay-trang-vi-be-boi-tinh-duc-post691671.html', 0),
(12, '', '', '', '', 'http://angiejoile.info/thailand/atittaya-chaiyasing-330.html', 'http://angiejoile.info/thailand/atittaya-chaiyasing-330.html', 'http://tinhotqua123.ga/', 1494152261, 'nuoinickviet@gmail.com', 'd73tKzZAG', 107, 0, 'http://www.tinmoi.vn/tin-tuc-moi-nhat-vu-tai-nan-giao-thong-o-gia-lai-khien-12-nguoi-chet-011450983.html', 0),
(13, '', '', '', '', 'http://thuockidieu.info/tin-tuc/canh-bao-tuyet-doi-dung-bao-gio-lam-dieu-nay-neu-khong-muon-gap-ma.html', 'http://thuockidieu.info/tin-tuc/canh-bao-tuyet-doi-dung-bao-gio-lam-dieu-nay-neu-khong-muon-gap-ma.html', 'http://tinhotqua123.ga/', 1494152831, 'nuoinickviet@gmail.com', 'mS2DS2cEO', 154, 0, 'http://www.tinmoi.vn/tin-tuc-moi-nhat-vu-tai-nan-giao-thong-o-gia-lai-khien-12-nguoi-chet-011450983.html', 0),
(10, '', '', '', '', 'http://angiejoile.info/japan/hot-girl-japan-01.html', 'http://angiejoile.info/japan/hot-girl-japan-01.html', 'http://tinhotqua123.gq/', 1494151594, 'nuoinickviet@gmail.com', 'N8XOfCGNP', 3, 0, 'http://vnexpress.net/tin-tuc/the-gioi/nguoi-viet-5-chau/nhat-ban-tai-bat-giu-nghi-pham-sat-hai-nhat-linh-3578846.html?', 0),
(9, '', '', '', '', 'http://angiejoile.info/vietnam/hot-girl-viet-nam-album-47-335.html', 'http://angiejoile.info/vietnam/hot-girl-viet-nam-album-47-335.html', 'http://tinhotqua123.ga/', 1494151273, 'nuoinickviet@gmail.com', 'GB4KzM7FL', 1, 0, 'http://giaitri.vnexpress.net/photo/quoc-te/nhan-sac-quen-tuoi-cua-hoa-hau-han-quoc-1988-3573219.html', 0),
(7, 'E Äang KhÃ³ Chá»‹u Máº¥y A Click VÃ o Äá»ƒ Láº¡i Mail Nha', 'Há»“ Ngá»c Huyá»n', 'BÆ°á»›m ÄÃªm KhÃ¡t TÃ¬nh', 'http://tinhotqua123.tk//skins/news/libraries/elFinder/php/../files/18300998_1843986529198353_3773739317810322673_n.jpg', 'https://www.youtube.com/watch?v=QLBCF5DQOQE', 'https://www.youtube.com/watch?v=QLBCF5DQOQE', 'http://tinhotqua123.tk/', 1494001983, 'quachphat1@gmail.com', 'O6OCP8nz9', 0, 3, 'https://www.youtube.com/channel/UCbYiWAYgTy8_zo1QIEw0caA/videos', 0),
(8, 'Nhá»¯ng loáº¡i cÃ¢y nÃªn trá»“ng trÆ°á»›c nhÃ  Ä‘á»ƒ Ä‘Ã³n tÃ i lá»™c, xua tan tÃ  khÃ­', 'Theo Sá»©c khá»e Ä‘á»i sá»‘ng', 'Trong quan niá»‡m thÃ´ng thÆ°á»ng, trá»“ng cÃ¢y á»Ÿ phÃ­a trÆ°á»›c nhÃ  vá»«a táº¡o khÃ´ng gian sá»‘ng xanh, vá»«a táº¡o khÃ´ng khÃ­ trong lÃ nh. NhÆ°ng Ã­t ngÆ°á»i biáº¿t, trá»“ng cÃ¢y phÃ­a trÆ°á»›c nhÃ  cÅ©ng cáº§n lÆ°u Ã½ lá»±a chá»n.', 'http://giadinh.vcmedia.vn/k:2016/10-1468633019848/nhung-loai-cay-nen-trong-truoc-nha-de-don-tai-loc-xua-ta-khi.jpg', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://tinhotqua123.ga/', 1494149279, 'nuoinickviet@gmail.com', 'bdQNE6egL', 7, 3, 'http://suckhoedoisong.vn/bao-ngu-giup-nam-gioi-sung-man-n28548.html', 6),
(14, '', '', '', '', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://angiejoile.info/china/xiamei-jiang-312.html', 'http://tinhotqua123.ga/', 1494154744, 'nuoinickviet@gmail.com', 'eGtRjkASK', 3, 0, 'http://giaitri.vnexpress.net/photo/sao-dep-sao-xau/luu-diec-phi-dep-nhat-tuan-voi-vay-tre-vai-3580907.html', 0),
(20, '', '', '', '', 'http://thuockidieu.info/tin-tuc/bat-heo-rung-lam-moi-nhau-3-thanh-nien-viet-o-han-quoc-bi-can-chet-da-man.html', 'http://thuockidieu.info/tin-tuc/bat-heo-rung-lam-moi-nhau-3-thanh-nien-viet-o-han-quoc-bi-can-chet-da-man.html', 'http://tinhotqua123.ga/', 1494266696, 'nuoinickviet@gmail.com', '4czLOQgcY', 15, 0, 'http://thuockidieu.info/tin-tuc/bat-heo-rung-lam-moi-nhau-3-thanh-nien-viet-o-han-quoc-bi-can-chet-da-man.html', 0),
(21, '', '', '', '', 'http://www.wirelesstube.mobi/?sl=646109-4b9b1&data1=Track1&data2=Track2  ADVANCED', 'http://www.wirelesstube.mobi/?sl=646109-4b9b1&data1=Track1&data2=Track2  ADVANCED', 'http://tinhotqua123.ga/', 1494319993, 'tongtuyen909@gmail.com', 'MBat4hrxs', 1, 0, 'https://www.youtube.com/watch?v=1nDj1wpykWI', 0),
(22, '', '', '', '', 'http://greenyhouse.com/phan-biet-hat-oc-cho-my-va-hat-oc-cho-trung-quoc.html', 'http://greenyhouse.com/phan-biet-hat-oc-cho-my-va-hat-oc-cho-trung-quoc.html', 'http://tinhotqua123.ga/', 1494331203, 'phatbatbai@gmail.com', 'g9WHScaM1', 2, 0, 'http://thanhnien.vn/thoi-su/vu-dung-sung-cuop-ngan-hang-o-tra-vinh-khoi-to-le-lam-hung-833553.html', 0),
(23, '', '', '', '', 'https://vitimes.net/nguong-chin-mat-khi-lo-buoc-chan-vao-bao-tang-sung-suong-nhat-the-gioi-vt111257.html?utm_source=vitimes.net&utm_medium=testttt&utm_campaign=vitimes.net', 'https://vitimes.net/nguong-chin-mat-khi-lo-buoc-chan-vao-bao-tang-sung-suong-nhat-the-gioi-vt111257.html?utm_source=vitimes.net&utm_medium=testttt&utm_campaign=vitimes.net', 'http://tinhotqua123.ga/', 1494339113, 'demo@gpcorp.vn', 'r8ZptWOrb', 57, 0, 'http://www.phapluatso.net/rung-ron-giet-nguoi-yeu-roi-lot-da-mat-de-huy-nhan-dang.html', 0),
(24, '', '', '', '', 'http://travelvl789.com/tag/phat-hien-xac-dan-ong-bi-cat-bo-phan-sinh-duc/?utm_source=Hien&utm_medium=Hien&utm_campaign=Hien', 'http://travelvl789.com/tag/phat-hien-xac-dan-ong-bi-cat-bo-phan-sinh-duc/?utm_source=Hien&utm_medium=Hien&utm_campaign=Hien', 'http://tinhotqua123.ga/', 1494665208, 'demo@gpcorp.vn', 'EWbz7Ghn9', 7, 0, 'http://eva.vn/lam-me/thoi-quen-sai-lam-cua-hang-nghin-me-viet-khien-con-nho-de-phai-nhap-vien-khan-cap-c10a309474.html', 0),
(26, '', '', '', '', 'http://thuockidieu.info/song-khoe/5-luu-y-tuyet-doi-tranh-khi-an-xoai-neu-khong-muon-ruoc-hoa-vao-than.html', 'http://thuockidieu.info/song-khoe/5-luu-y-tuyet-doi-tranh-khi-an-xoai-neu-khong-muon-ruoc-hoa-vao-than.html', 'http://tinhotqua123.tk/', 1494699429, 'demo@gpcorp.vn', 'xRCaNzRkG', 2801, 0, 'http://www.tinmoi.vn/5-luu-y-tuyet-doi-tranh-khi-an-xoai-neu-khong-muon-ruoc-hoa-vao-than-011451506.html', 0),
(28, '', '', '', '', 'http://thuockidieu.info/tin-tuc/gameshow-xay-ra-scandal-giua-nghe-si-trung-dan-va-huong-giang-thuc-te-bua-den-the-nay.html', 'http://thuockidieu.info/tin-tuc/gameshow-xay-ra-scandal-giua-nghe-si-trung-dan-va-huong-giang-thuc-te-bua-den-the-nay.html', 'http://tinhotqua123.ml/', 1494813642, 'demo@gpcorp.vn', '8wRp6DQy4', 155, 0, 'http://www.tinmoi.vn/gameshow-xay-ra-scandal-giua-nghe-si-trung-dan-va-huong-giang-thuc-te-bua-den-the-nay-011451594.html', 0),
(31, '', '', '', '', 'https://www.youtube.com/watch?v=LDAyjr5ISEE', 'http://www.sexytubes.mobi/?sl=1143051-f2fa1&data1=Track1&data2=Track2  ADVANCED', 'http://tinhotqua123.gq/', 1494820040, 'demo@gpcorp.vn', 'H6KLheZpq', 3, 0, 'https://www.youtube.com/watch?v=LDAyjr5ISEE', 0),
(30, '', '', '', '', 'https://www.youtube.com/watch?v=LDAyjr5ISEE', 'http://www.sexytubes.mobi/?sl=1143051-f2fa1&data1=Track1&data2=Track2  ADVANCED', 'http://tinhotqua123.ml/', 1494819890, 'demo@gpcorp.vn', 'DKHY8zbwX', 1, 0, 'lovemmo.com', 0),
(32, '', '', '', '', 'http://thuockidieu.info/tin-tuc/truy-tim-chiec-taxi-chay-nhu-bay-voi-2-canh-cua-mo-toang.html', 'http://thuockidieu.info/tin-tuc/truy-tim-chiec-taxi-chay-nhu-bay-voi-2-canh-cua-mo-toang.html', 'http://tinhotqua123.tk/', 1494861787, 'khanhpg1609@gmail.com', '2Qmd7A5w2', 72, 0, 'http://dantri.com.vn/xa-hoi/truy-tim-chiec-taxi-chay-nhu-bay-voi-2-canh-cua-mo-toang-20170515200536147.htm', 0),
(33, '', '', '', '', 'http://thuockidieu.info/tin-tuc/diem-mat-3-con-giap-nhan-ha-giau-co-sau-tuoi-40-lam-it-tien-cung-ngap-nha.html', 'http://thuockidieu.info/tin-tuc/diem-mat-3-con-giap-nhan-ha-giau-co-sau-tuoi-40-lam-it-tien-cung-ngap-nha.html', 'http://tinhotqua123.tk/', 1494901397, 'loadpage@gmail.com', '65rrwsfW2', 416, 0, 'http://thuockidieu.info/tin-tuc/diem-mat-3-con-giap-nhan-ha-giau-co-sau-tuoi-40-lam-it-tien-cung-ngap-nha.html', 0),
(34, '', '', '', '', 'http://instantfwding.com/display.cfm?fp=Tv4HH0%2FAgO85gGAj7rJ9lfI1sr1H1N2sbxkh%2B%2Bqhi4OKl7NlyE41u2FHNbivWq5VEmEWjyv6eysoaq5bRDvZtKMiyupfzYMd36son9FPJQu2UXeA63ce4MdcbgnxpGtdhVRWMaahhE56pu0aRYPSvAscgdEqTP8Zi%2FqudQmFdXgegSmq4JGcADoWzlX3OuB1nSGXbARMv8%2BO94cbz8Hb2Q%3D%3D&yep=P9sEqcX0sV9qQhEjFE9EAwnK8n35voVhWIRNAuMkXN%2BuaD8FEWaoGEZ1xwu%2FHxNIbFToQihZRZARAAtx%2FKr8iD8CCFARiC7RS%2FocglgoDzt4pncM2qsRRinDTMujdH6QERv47ZMNeukWk%2BSfV1KnhJxaiQo14HdsJ6uW57XwV4%2Fe5j9GjX4nsQPiltmXwS9aQjNjMNdVoG5BdH1DPRsii', 'http://ponsearch.club/privacy.html', 'http://tinhotqua123.ga/', 1495036091, 'demo@gpcorp.vn', 'ZdOqs2tRx', 1, 0, 'https://www.vietcombank.com.vn/', 0),
(35, '', '', '', '', 'http://ponnews.com/', 'http://ponsearch.club/privacy.html', 'http://tinhotqua123.ml/', 1495036247, 'demo@gpcorp.vn', 'SkWBrnAEW', 19, 0, 'https://www.vietcombank.com.vn/', 0),
(36, '', '', '', '', 'http://thuockidieu.info/tin-tuc/chac-son-tung-cung-khong-ngo-bao-thai-lan-lai-dat-cho-minh-biet-danh-nay.html', 'http://thuockidieu.info/tin-tuc/chac-son-tung-cung-khong-ngo-bao-thai-lan-lai-dat-cho-minh-biet-danh-nay.html', 'http://tinhotqua123.cf/', 1495036442, 'loadpage@gmail.com', 'hNk8z3W5c', 97, 0, 'http://thuockidieu.info/tin-tuc/chac-son-tung-cung-khong-ngo-bao-thai-lan-lai-dat-cho-minh-biet-danh-nay.html', 0),
(37, '', '', '', '', 'http://www.nytimes.com/pages/todayspaper/index.html', 'http://bit.ly/2qY6WjL', 'http://tinhotqua123.ml/', 1495037056, 'dreamitvn@gmail.com', 'TTP3rj2XA', 22, 0, 'https://www.youtube.com/watch?v=ffRij0eN4UM', 0),
(38, '', '', '', '', 'http://w1.hotanime.me/?mt', 'http://w1.hotanime.me/?mb', 'http://tinhotqua123.ga/', 1495038548, 'demo@gpcorp.vn', 'FMkDrwba9', 1, 0, 'http://w1.hotanime.me/watch/boruto-naruto-next-generations-episode-007.html?s=6&r=718', 0),
(39, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ga/', 1495041526, 'demo@gpcorp.vn', 'NRn8ck2Qd', 2, 0, 'VNexpress.net', 0),
(40, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495041752, 'demo@gpcorp.vn', 'chSeKHGOp', 2, 0, 'http://www.yan.vn/', 0),
(41, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495041929, 'demo@gpcorp.vn', 'rTp6OnBKs', 3, 0, 'http://www.phapluatso.net/rung-ron-giet-nguoi-yeu-roi-lot-da-mat-de-huy-nhan-dang.html', 0),
(42, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495042084, 'demo@gpcorp.vn', 'xcKwRkkAR', 2, 0, 'http://www.yan.vn/hien-tuong-la-o-anh-nhung-con-vat-khong-lo-dat-bo-128858.html', 0),
(43, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ga/', 1495042232, 'demo@gpcorp.vn', 'tRxYxRF5B', 1, 0, 'http://eva.vn/lam-me/thoi-quen-sai-lam-cua-hang-nghin-me-viet-khien-con-nho-de-phai-nhap-vien-khan-cap-c10a309474.html', 0),
(44, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ga/', 1495042326, 'demo@gpcorp.vn', 'h5deGx1WL', 0, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(45, '', '', '', '', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/hiep-3-roi-ma-vo-van-con-t-r-i-n-h-chong-noi-dien-tat-toi-tap-roi-dung-hinh-khi-thay-dieu/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495042379, 'demo@gpcorp.vn', 'RG1c7f6gZ', 32, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(46, '', '', '', '', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495043868, 'demo@gpcorp.vn', 'YxbhXmPEX', 1, 0, 'http://www.yan.vn/am-anh-voi-nhung-quy-than-an-nup-trong-cac-nha-ve-sinh-o-nhat-ban-v-128814.html', 0),
(47, '', '', '', '', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495043970, 'demo@gpcorp.vn', 'WkGr8NHH3', 1, 0, 'http://www.yan.vn/mot-tu-chat-danh-cho-con-loc-thoi-trang-den-tu-cu-ba-64-tuoi-121835.html', 0),
(48, '', '', '', '', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem-dau-vet-thi/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495044039, 'demo@gpcorp.vn', 'a1Gz4nqQY', 1, 0, 'http://www.yan.vn/hien-tuong-la-o-anh-nhung-con-vat-khong-lo-dat-bo-128858.html', 0),
(49, '', '', '', '', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/cu-moi-lan-doi-hoi-la-vo-lai-keu-den-dotoi-lien-rinh-em-tam-xong-len-vao-xem/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495044177, 'demo@gpcorp.vn', 'BQRbw4b4X', 3, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(50, '', '', '', '', 'http://tapchitin36s.com/moi-nguoi-cho-hoi-la-co-ay-dang-chat-cai-gi-ma-phai-mang-theo-2-qua-nui-nang-the/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/moi-nguoi-cho-hoi-la-co-ay-dang-chat-cai-gi-ma-phai-mang-theo-2-qua-nui-nang-the/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ga/', 1495044309, 'demo@gpcorp.vn', 'DdqW28rGF', 0, 0, 'http://www.yan.vn/bo-anh-cho-thay-cuoc-song-nay-chi-toan-nhung-dieu-nghich-ly-121937.html', 0),
(103, '', '', '', '', 'https://www.youtube.com/edit?o=U&video_id=LuZTKKPaXcs', 'https://www.youtube.com/edit?o=U&video_id=LuZTKKPaXcs', 'http://tinhotqua123.tk/', 1495523620, 'demo@gpcorp.vn', 'wSnsLs49c', 2, 0, 'http://www.yan.vn/loat-anh-yeu-nhau-bien-thai-khong-ai-bang-cua-khoi-my-kelvin-khanh-129336.html', 0),
(104, '', '', '', '', 'https://www.youtube.com/watch?v=LuZTKKPaXcs', 'https://www.youtube.com/watch?v=LuZTKKPaXcs', 'http://tinhotqua123.ga/', 1495523938, 'demo@gpcorp.vn', '24eqkbq6n', 3, 0, 'http://www.yan.vn/loat-anh-yeu-nhau-bien-thai-khong-ai-bang-cua-khoi-my-kelvin-khanh-129336.html', 0),
(52, '', '', '', '', 'http://gostream.vn', 'http://gostream.vn/abcdef', 'http://tinhotqua123.ga/', 1495068101, 'demo@gpcorp.vn', 'wjm5Ahq2M', 0, 0, 'http://dantri.com.vn', 0),
(53, '', '', '', '', 'http://w1.hotanime.me/watch/one-piece-episode-788.html?d=pc', 'http://w1.hotanime.me/watch/one-piece-episode-788.html?d=m', 'http://tinhotqua123.ga/', 1495071951, 'demo@gpcorp.vn', 'YT5Ag6jaF', 0, 0, 'http://w1.hotanime.me/watch/one-piece-episode-788.html?r=517', 0),
(54, '', '', '', '', 'http://w1.hotanime.me/watch/one-piece-episode-788.html?d=pc', 'http://w1.hotanime.me/watch/one-piece-episode-788.html?d=m', 'http://tinhotqua123.tk/', 1495072005, 'demo@gpcorp.vn', 'rWy9xDqTh', 3, 0, 'http://w1.hotanime.me/watch/one-piece-episode-788.html?r=517', 0),
(55, '', '', '', '', 'http://tapchitin36s.com/tong-hop-tat-ca-cac-tu-the-q-u-a-n-h-e/', 'http://tapchitin36s.com/tong-hop-tat-ca-cac-tu-the-q-u-a-n-h-e/', 'http://tinhotqua123.gq/', 1495095125, 'demo@gpcorp.vn', 'T5C8tnT4D', 1, 0, 'http://www.yan.vn/kinh-hoang-nhung-thu-dang-so-duoc-phat-hien-trong-co-the-loai-tran-125735.html', 0),
(56, '', '', '', '', 'http://news360s.net/purchase-customized-term-papers-for-any-school/', 'http://news360s.net/purchase-customized-term-papers-for-any-school/', 'http://tinhotqua123.gq/', 1495096887, 'demo@gpcorp.vn', 'AdqPXsRtT', 5, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(57, '', '', '', '', 'http://news360s.net/purchase-customized-term-papers-for-any-school/', 'http://news360s.net/purchase-customized-term-papers-for-any-school/', 'http://tinhotqua123.tk/', 1495098450, 'demo@gpcorp.vn', 'f33T42H5y', 6, 0, 'http://2sao.vn/cho-toi-sat-ngay-toa-xac-nhan-thuan-tinh-ly-hon-truong-quynh-anh-va-tim-van-cuc-ky-nong-nan-n-119664.html', 0),
(58, '', '', '', '', 'http://tapchitin36s.com/ly-nha-ky-noi-gi-ve-tam-pano-gay-tranh-cai-tai-lhp-cannes/', 'http://tapchitin36s.com/ly-nha-ky-noi-gi-ve-tam-pano-gay-tranh-cai-tai-lhp-cannes/', 'http://tinhotqua123.ga/', 1495100562, 'demo@gpcorp.vn', 'MNtOhpr2F', 0, 0, 'http://www.yan.vn/iu-bat-ngo-duoc-psy-tang-banh-sinh-nhat-ngay-tren-truong-quay-129025.html', 0),
(59, '', '', '', '', 'http://tapchitin36s.com/ly-nha-ky-noi-gi-ve-tam-pano-gay-tranh-cai-tai-lhp-cannes/', 'http://tapchitin36s.com/ly-nha-ky-noi-gi-ve-tam-pano-gay-tranh-cai-tai-lhp-cannes/', 'http://tinhotqua123.gq/', 1495100571, 'demo@gpcorp.vn', 'RFRq8GdOa', 0, 0, 'http://www.yan.vn/iu-bat-ngo-duoc-psy-tang-banh-sinh-nhat-ngay-tren-truong-quay-129025.html', 0),
(60, '', '', '', '', 'http://vmnet.info/ben-trong-nha-xac-benh-vien-cho-ray/?utm_source=nguyennga&utm_medium=referral', 'http://vmnet.info/ben-trong-nha-xac-benh-vien-cho-ray/?utm_source=nguyennga&utm_medium=referral', 'http://tinhotqua123.tk/', 1495102371, 'demo@gpcorp.vn', 'LntAOna9E', 1, 0, 'http://new.eva.vn/lang-sao/viet-anh-nguoi-phan-xu-tu-choi-binh-luan-truoc-tin-hon-nhan-lan-2-ran-nut-c20a310432.html', 0),
(61, '', '', '', '', 'http://tapchitin16s.com/dai-gia-sai-gon-treo-thuong-tram-trieu-truy-na-co-dau-om-100kg-vang-bo-tron-trong-dem-tan-hon/', 'http://tapchitin16s.com/dai-gia-sai-gon-treo-thuong-tram-trieu-truy-na-co-dau-om-100kg-vang-bo-tron-trong-dem-tan-hon/', 'http://tinhotqua123.cf/', 1495102553, 'demo@gpcorp.vn', 'Wn7yGp4XS', 3, 0, 'http://news.zing.vn/nha-nuoc-khong-nen-tao-ra-nhung-con-ga-cong-nghiep-post747293.html#home_featured|noibat0', 0),
(62, '', '', '', '', 'http://www.yan.vn/12-su-khac-biet-giua-phu-nu-truong-thanh-va-nang-tre-con-128715.html', 'http://tapchitin36s.com/du-ban-la-nam-hay-nu-va-dang-o-do-tuoi-nao-cung-nen-doc-bai-nay/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495112001, 'demo@gpcorp.vn', 'ftt27zZAA', 1, 0, 'http://plo.vn/an-ninh-trat-tu/bo-cong-an-phong-ngua-khac-phuc-thiet-hai-tu-wannacry-702923.html', 0),
(63, '', '', '', '', 'http://plo.vn/an-ninh-trat-tu/bo-cong-an-phong-ngua-khac-phuc-thiet-hai-tu-wannacry-702923.html', 'http://tapchitin36s.com/du-ban-la-nam-hay-nu-va-dang-o-do-tuoi-nao-cung-nen-doc-bai-nay/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495112059, 'demo@gpcorp.vn', 'qmBLxHNaq', 14, 0, 'http://www.yan.vn/12-su-khac-biet-giua-phu-nu-truong-thanh-va-nang-tre-con-128715.html', 0),
(64, '', '', '', '', 'http://www.yan.vn/su-giau-co-dien-ro-cua-dubai-da-dat-den-dinh-cao-cua-nhan-loai-121973.html', 'http://tapchitin36s.com/su-giau-co-dien-ro-cua-dubai-da-dat-den-dinh-cao-cua-nhan-loai/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495113020, 'demo@gpcorp.vn', 'fs9nY2mF1', 2, 0, 'http://www.yan.vn/su-giau-co-dien-ro-cua-dubai-da-dat-den-dinh-cao-cua-nhan-loai-121973.html', 0),
(65, '', '', '', '', 'http://tapchitin36s.com/su-giau-co-dien-ro-cua-dubai-da-dat-den-dinh-cao-cua-nhan-loai/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/su-giau-co-dien-ro-cua-dubai-da-dat-den-dinh-cao-cua-nhan-loai/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495113817, 'demo@gpcorp.vn', 'BWPC94wt1', 2, 0, 'http://www.yan.vn/12-su-khac-biet-giua-phu-nu-truong-thanh-va-nang-tre-con-128715.html', 0),
(66, '', '', '', '', 'http://tapchitin36s.com/ban-can-tinh-chuyen-lau-dai-neu-ca-hai-da-co-cung-nhung-cam-nhan-nay/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/ban-can-tinh-chuyen-lau-dai-neu-ca-hai-da-co-cung-nhung-cam-nhan-nay/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495122135, 'demo@gpcorp.vn', 'KS5PKW9ht', 14, 0, 'http://www.yan.vn/anh-cuoi-chat-cua-nam-ga-mot-ben-va-em-mot-ben-129049.html', 0),
(67, '', '', '', '', 'http://www.phapluatso.net/bat-trom-dem-nhay-vao-nha-2-nguoi-bi-khoi-to-bat-boi-thuong-800-trieu.html', 'http://tapchitin36s.com/bi-ep-lay-chong-gia-dem-tan-hon-toi-khoa-cua-phong-tam-nhung-sau-do/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495123240, 'demo@gpcorp.vn', 'Hp66crKjD', 2129, 0, 'http://www.phapluatso.net/bat-trom-dem-nhay-vao-nha-2-nguoi-bi-khoi-to-bat-boi-thuong-800-trieu.html', 0),
(68, '', '', '', '', 'http://tapchitin36s.com/bi-ep-lay-chong-gia-dem-tan-hon-toi-khoa-cua-phong-tam-nhung-sau-do/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/bi-ep-lay-chong-gia-dem-tan-hon-toi-khoa-cua-phong-tam-nhung-sau-do/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495123863, 'demo@gpcorp.vn', 'MnOkMHjAc', 50, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(69, '', '', '', '', 'http://tapchitin36s.com/bi-mat-khung-khiep-tu-vet-can-la-noi-bau-nguc-vo/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/bi-mat-khung-khiep-tu-vet-can-la-noi-bau-nguc-vo/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495124276, 'demo@gpcorp.vn', 'gnQtg9gkH', 483, 0, 'http://www.phapluatso.net/tai-xe-taxi-ke-phut-mo-bung-cua-lao-nhanh-tren-dai-lo-de-cuu-nguoi.html', 0),
(70, '', '', '', '', 'http://tapchitin36s.com/nguoi-viet-dang-giet-nhau-vi-tien-tat-ca-do-tien-va-long-tham/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/nguoi-viet-dang-giet-nhau-vi-tien-tat-ca-do-tien-va-long-tham/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.cf/', 1495125230, 'demo@gpcorp.vn', '51MWEhF6g', 759, 0, 'http://www.yan.vn/ban-can-tinh-chuyen-lau-dai-neu-ca-hai-da-co-cung-nhung-cam-nhan-nay-121671.html', 0),
(71, '', '', '', '', 'http://tapchitin36s.com/bi-ep-lay-chong-gia-dem-tan-hon-toi-khoa-cua-phong-tam-nhung-sau-do/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/bi-ep-lay-chong-gia-dem-tan-hon-toi-khoa-cua-phong-tam-nhung-sau-do/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ga/', 1495127882, 'demo@gpcorp.vn', 'qwKeptde2', 2, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(72, '', '', '', '', 'https://goo.gl/wu2vf0', 'https://goo.gl/wu2vf0', 'http://tinhotqua123.gq/', 1495157352, 'demo@gpcorp.vn', 'fEWBeKeqg', 432, 0, 'http://www.yan.vn/ly-nha-ky-dep-kieu-sa-dai-cac-tren-tham-do-lhp-cannes-2017-129081.html', 0),
(73, '', '', '', '', 'https://goo.gl/V7YQrO', 'https://goo.gl/V7YQrO', 'http://tinhotqua123.ml/', 1495159170, 'demo@gpcorp.vn', 'XX5TNdCew', 157, 0, 'http://www.yan.vn/cung-nua-kia-lam-it-nhat-310-dieu-nay-khi-tinh-yeu-da-chin-muoi-121838.html', 0),
(74, '', '', '', '', 'http://bit.ly/2q22ChY', 'http://bit.ly/2q22ChY', 'http://tinhotqua123.gq/', 1495165233, 'demo@gpcorp.vn', 'QFBSAj978', 2878, 0, 'http://www.phapluatso.net/bat-trom-dem-nhay-vao-nha-2-nguoi-bi-khoi-to-bat-boi-thuong-800-trieu.html', 0),
(75, '', '', '', '', 'https://www.youtube.com/watch?v=cITnkRccGpk', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.tk/', 1495167062, 'demo@gpcorp.vn', 'WrsnDp8QT', 0, 0, 'https://www.youtube.com/watch?v=sZHl-KMpST0', 0),
(76, '', '', '', '', 'https://www.youtube.com/watch?v=cITnkRccGpk', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495167114, 'demo@gpcorp.vn', 'b6DS1Y1EG', 2, 0, 'https://www.youtube.com/watch?v=sZHl-KMpST0', 0),
(77, '', '', '', '', 'https://www.youtube.com/watch?v=Xdt2_BXyPR8', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495167845, 'demo@gpcorp.vn', '17QS3Owyp', 3, 0, 'https://www.youtube.com/watch?v=Xdt2_BXyPR8', 0),
(78, '', '', '', '', 'https://www.youtube.com/watch?v=yKA3fWfJWrc', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495167978, 'demo@gpcorp.vn', 'BOT1AZ5sN', 1, 0, 'https://www.youtube.com/watch?v=yKA3fWfJWrc', 0),
(79, '', '', '', '', 'https://www.youtube.com/watch?v=C_dkDstgxys', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495168086, 'demo@gpcorp.vn', 'XKpbSxrMB', 1, 0, 'https://www.youtube.com/watch?v=C_dkDstgxys', 0),
(80, '', '', '', '', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.gq/', 1495168208, 'demo@gpcorp.vn', '6jBXeNTZp', 1, 0, 'https://www.youtube.com/results?search_query=g%C3%A1i+v%E1%BA%BFu+bjw', 0),
(81, '', '', '', '', 'https://goo.gl/BVvh0V', 'http://tapchitin36s.com/chong-dat-gai-ve-em-thoai-mai-di-co-ta/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.ml/', 1495168419, 'demo@gpcorp.vn', 'QqPDOLXwK', 2, 0, 'https://goo.gl/BVvh0V', 0),
(82, '', '', '', '', 'https://www.youtube.com/watch?v=7t5grGSWumI', 'http://tapchitin16s.com/no-nguc-vi-bom-silicon-dao/', 'http://tinhotqua123.tk/', 1495168576, 'demo@gpcorp.vn', 'wd48w6PFs', 0, 0, 'https://www.youtube.com/watch?v=7t5grGSWumI', 0),
(83, '', '', '', '', 'https://www.youtube.com/watch?v=7t5grGSWumI', 'http://tapchitin16s.com/no-nguc-vi-bom-silicon-dao/', 'http://tinhotqua123.gq/', 1495168606, 'demo@gpcorp.vn', 'mTnjD2NaC', 1, 0, 'https://www.youtube.com/watch?v=7t5grGSWumI', 0),
(84, '', '', '', '', 'https://www.facebook.com/BeMoon5Tuoi', 'm.facebook.com/BeMoon5Tuoi', 'http://tinhotqua123.ga/', 1495182375, 'clonebm5t@gmail.com', 'RYTD24rb7', 0, 0, 'https://www.facebook.com/BeMoon5Tuoi', 0),
(85, '', '', '', '', 'http://bit.ly/2q2QPju', 'http://bit.ly/2q2QPju', 'http://tinhotqua123.tk/', 1495187318, 'demo@gpcorp.vn', 'xe9E3TeW1', 1, 0, 'http://eva.vn/lang-sao/huyen-my-thue-luat-su-kien-den-cung-neu-co-gai-to-cao-khong-xin-loi-cong-khai-c20a310556.html', 0),
(86, '', '', '', '', 'https://goo.gl/zWTnMV', 'https://goo.gl/zWTnMV', 'http://tinhotqua123.ml/', 1495187850, 'demo@gpcorp.vn', 'eHQ12jRzr', 2463, 0, 'http://eva.vn/lam-dep/khong-the-tin-noi-day-la-ket-qua-cua-phi-thanh-van-khi-phau-thuat-ham-den-lan-thu-6-c58a310449.html', 0),
(87, '', '', '', '', 'https://goo.gl/5ntwhb', 'https://goo.gl/5ntwhb', 'http://tinhotqua123.cf/', 1495188705, 'demo@gpcorp.vn', 'HS4rrF2nQ', 11376, 0, 'http://www.phapluatso.net/gay-tai-nan-mac-nan-nhan-vung-vay-keu-cuu-tai-xe-co-tinh-3-lan-can-qua-nguoi.html', 0),
(88, '', '', '', '', 'https://biturl.io/jcb9g4', 'https://biturl.io/jcb9g4', 'http://tinhotqua123.ml/', 1495205997, 'hai.pnvietnam@gmail.com', '5HWNmtRXO', 2, 0, 'https://biturl.io/jcb9g4', 0),
(89, '', '', '', '', 'https://goo.gl/dZiSF7', 'https://goo.gl/dZiSF7', 'http://tinhotqua123.gq/', 1495251815, 'demo@gpcorp.vn', 's427D1sG2', 7209, 0, 'http://www.phapluatso.net/gia-lai-bo-nhiem-con-gai-bi-thu-huyen-lam-pho-phong-sai-quy-trinh.html', 0),
(90, '', '', '', '', 'https://goo.gl/ENHOz0', 'https://goo.gl/ENHOz0', 'http://tinhotqua123.tk/', 1495253504, 'demo@gpcorp.vn', 'Of68jB1BC', 0, 0, 'http://eva.vn/thoi-trang/hai-dai-my-nhan-hang-dau-han-quoc-van-khong-thoat-bi-che-mac-xau-c36a310498.html', 0),
(91, '', '', '', '', 'https://goo.gl/ENHOz0', 'https://goo.gl/ENHOz0', 'http://tinhotqua123.cf/', 1495253609, 'demo@gpcorp.vn', 'n4XLh7hrp', 6161, 0, 'http://www.phapluatso.net/da-bat-duoc-nghi-pham-cuop-ngan-hang-tai-tra-vinh.html', 0),
(92, '', '', '', '', 'https://goo.gl/xjWOuJ', 'https://goo.gl/xjWOuJ', 'http://tinhotqua123.ml/', 1495254454, 'demo@gpcorp.vn', 'r7K8mdXYC', 1, 0, 'http://www.yan.vn/phan-doi-nguoi-vien-man-ke-co-doc-cua-4-my-nam-thu-vai-trien-chieu-128993.html', 0),
(93, '', '', '', '', 'https://goo.gl/ZQa06P', 'https://goo.gl/ZQa06P', 'http://tinhotqua123.ml/', 1495254952, 'demo@gpcorp.vn', 'TmaTHMYOx', 2041, 0, 'http://www.yan.vn/loat-anh-boc-tran-bo-mat-that-cua-the-gioi-chung-ta-dang-song-124902.html', 0),
(94, '', '', '', '', 'https://goo.gl/bLbjJu', 'https://goo.gl/bLbjJu', 'http://tinhotqua123.ml/', 1495255910, 'demo@gpcorp.vn', 'dEhDfj2Hb', 646, 0, 'http://www.yan.vn/nhung-tai-nan-don-tho-trong-luc-thang-hoa-o-cac-dia-diem-sai-trai-125599.html', 0),
(95, '', '', '', '', 'https://goo.gl/WBrfEM', 'https://goo.gl/WBrfEM', 'http://tinhotqua123.ml/', 1495256596, 'demo@gpcorp.vn', 'sRkp839kk', 251, 0, 'http://www.yan.vn/ngo-ngang-nam-nghe-si-nhat-ban-co-guong-mat-qua-giong-luhan-129133.html', 0),
(96, '', '', '', '', 'https://goo.gl/A6OkoK', 'https://goo.gl/A6OkoK', 'http://tinhotqua123.ml/', 1495256752, 'demo@gpcorp.vn', 'nbOfYx6WO', 4503, 0, 'http://tiin.vn/chuyen-muc/yeu/co-dau-trung-quoc-suyt-bi-thieu-vi-chup-anh-nghe-thuat.html', 0),
(232, '', '', '', '', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', 'http://tinhotqua123.gq/', 1502798033, 'demo@gpcorp.vn', '1bSKEB5EY', 0, 0, 'http://duhoc.dantri.com.vn/', 0),
(233, '', '', '', '', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', 'http://tinhotqua123.cf/', 1502798089, 'demo@gpcorp.vn', 'K5xwXnsjM', 0, 0, 'http://duhoc.dantri.com.vn/', 0),
(98, '', '', '', '', 'https://goo.gl/WKEEUr', 'https://goo.gl/WKEEUr', 'http://tinhotqua123.ml/', 1495257381, 'demo@gpcorp.vn', 'zh4z8cG48', 4267, 0, 'https://barackobama.com/defend-progress-on-health-care-reform/?source=socnet_fb_aca_20161103_bo_accesible_defend_2&utm_medium=social&utm_source=fb_bo&utm_campaign=socnet_fb_aca_20161103_bo_accesible_defend_2&utm_content=20161103_bo_accesible_defend_2', 0),
(99, '', '', '', '', 'http://www.yan.vn/diem-danh-nhung-my-nhan-viet-so-huu-vong-eo-nho-bac-nhat-vbiz-122162.html', 'http://tapchitin36s.com/diem-danh-nhung-my-nhan-viet-so-huu-vong-eo-nho-bac-nhat-v-biz/?utm_source=T&utm_medium=T&utm_campaign=T', 'http://tinhotqua123.cf/', 1495267765, 'demo@gpcorp.vn', 'gfxKBsK8H', 2, 0, 'http://www.yan.vn/diem-danh-nhung-my-nhan-viet-so-huu-vong-eo-nho-bac-nhat-vbiz-122162.html', 0),
(100, '', '', '', '', 'https://goo.gl/UxfgIa', 'https://goo.gl/UxfgIa', 'http://tinhotqua123.tk/', 1495357165, 'demo@gpcorp.vn', '36E9S2Z1b', 0, 0, 'http://www.phapluatso.net/dieu-gi-da-khien-ong-doan-ngoc-hai-mat-tich-trong-nhung-chien-dich-don-dep-via-he-gan-day.html', 0),
(101, '', '', '', '', 'https://goo.gl/UxfgIa', 'https://goo.gl/UxfgIa', 'http://tinhotqua123.cf/', 1495357219, 'demo@gpcorp.vn', 'nR2FdRKYk', 1991, 0, 'http://www.phapluatso.net/dieu-gi-da-khien-ong-doan-ngoc-hai-mat-tich-trong-nhung-chien-dich-don-dep-via-he-gan-day.html', 0),
(102, '', '', '', '', 'https://goo.gl/PMuFYv', 'https://goo.gl/PMuFYv', 'http://tinhotqua123.ml/', 1495359794, 'demo@gpcorp.vn', 'E4MnHSz9m', 607, 0, 'http://www.yan.vn/het-hon-voi-cat-se-cho-viec-ngoi-khong-cua-pham-bang-bang-129248.html', 0),
(105, '', '', '', '', 'https://www.youtube.com/watch?v=LuZTKKPaXcs', 'https://www.youtube.com/watch?v=LuZTKKPaXcs', 'http://tinhotqua123.cf/', 1495556057, 'admin@gpcorp.vn', 'CrZHB8mXh', 0, 0, 'http://www.yan.vn/loat-anh-yeu-nhau-bien-thai-khong-ai-bang-cua-khoi-my-kelvin-khanh-129336.html', 0),
(106, '', '', '', '', 'http://marktoday24h.com/baca-dulu-baru-komentardipaksa-menikah-dengan-kakek-gadis-ini-terkejut-setelah-apa-yang-diberikan-kakek-ini-padanya.html', 'http://marktoday24h.com/baca-dulu-baru-komentardipaksa-menikah-dengan-kakek-gadis-ini-terkejut-setelah-apa-yang-diberikan-kakek-ini-padanya.html', 'http://tinhotqua123.cf/', 1495688102, 'demo@gpcorp.vn', 'Oa4N5gXF8', 2389, 0, 'http://idnews247.info/baca-dulu-baru-komentardipaksa-menikah-dengan-kakek-gadis-ini-terkejut-setelah-apa-yang-diberikan-kakek-ini-padanya/', 0),
(107, '', '', '', '', 'https://www.youtube.com/watch?v=wfjVcwCz4n0', 'https://www.youtube.com/watch?v=wfjVcwCz4n0', 'http://tinhotqua123.ga/', 1495733114, 'lamhht.039@gmail.com', 'NMe2BFCZg', 2, 0, 'https://www.youtube.com/watch?v=wfjVcwCz4n0', 0),
(113, '', '', '', '', 'http://nghiakhi.com/tag/quay-len-ngoc-trinh-va-dan-mau-thay-do-sieu-hot/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/quay-len-ngoc-trinh-va-dan-mau-thay-do-sieu-hot/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.ml/', 1495766938, 'truonghuynhminhcong020292@gmail.com', 'Ne1HfkFnr', 11818, 0, 'http://bongdaso.com/Arsenal-chi-m%E1%BB%A9c-l%C6%B0%C6%A1ng-ch%C6%B0a-t%E1%BB%ABng-c%C3%B3-v%C3%AC-Sanchez-_Art_176950.aspx', 0),
(114, '', '', '', '', 'http://nghiakhi.com/tag/clip-quay-len-chan-dai/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/clip-quay-len-chan-dai/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.ml/', 1495767905, 'truonghuynhminhcong020292@gmail.com', 'YmGtHObeD', 3, 0, 'http://bongdaso.com/Man-City-ch%C3%ADnh-th%E1%BB%A9c-th%E1%BA%A3i-lo%E1%BA%A1i-4-c%E1%BA%A7u-th%E1%BB%A7-_Art_176944.aspx', 0),
(115, '', '', '', '', 'http://nghiakhi.com/tag/chu-cho-thong-minh/?utm_source=Hien&utm_campaign=Hien&utm_medium=Hien', 'http://nghiakhi.com/tag/chu-cho-thong-minh/?utm_source=Hien&utm_campaign=Hien&utm_medium=Hien', 'http://tinhotqua123.tk/', 1495769493, 'nguyendinhhien2@gmail.com', 'zZQSeNRKP', 1, 0, 'http://inspired.daikynguyenvn.com/?p=411829', 0),
(116, '', '', '', '', 'http://nghiakhi.com/tag/chu-cho-thong-minh/?utm_source=Hien&utm_campaign=Hien&utm_medium=Hien', 'http://nghiakhi.com/tag/chu-cho-thong-minh/?utm_source=Hien&utm_campaign=Hien&utm_medium=Hien', 'http://tinhotqua123.ml/', 1495769802, 'nguyendinhhien2@gmail.com', 'GeFPhEcqe', 597, 0, 'http://inspired.daikynguyenvn.com/?p=411829', 0),
(117, '', '', '', '', 'http://fb.com', 'http://marktoday24h.com', 'http://tinhotqua123.ml/', 1495782032, 'huynhdatblog@gmail.com', '8f9nnGkg3', 1, 0, 'http://google.com', 0),
(118, '', '', '', '', 'http://nghiakhi.com/tag/hotgirl-huong-bella/?utm_source=cuong&utm_medium=cuong&utm_campaign=cuong', 'http://nghiakhi.com/tag/hotgirl-huong-bella/?utm_source=cuong&utm_medium=cuong&utm_campaign=cuong', 'http://tinhotqua123.gq/', 1495791256, 'dinhcuong1932000qnn@gmail.com', 'RRepzN2zd', 0, 0, 'https://www.youtube.com/watch?v=2TzJXeH9IP8', 0),
(119, '', '', '', '', 'http://nghiakhi.com/tag/ba-tung-le-thi-huyen-anh-da-tro-lai-va-lo-lieu-hon-xua/?utm_source=cuong&utm_medium=cuong&utm_campaign=cuong', 'http://nghiakhi.com/tag/ba-tung-le-thi-huyen-anh-da-tro-lai-va-lo-lieu-hon-xua/?utm_source=cuong&utm_medium=cuong&utm_campaign=cuong', 'http://tinhotqua123.gq/', 1495806277, 'nguyendinhcuong1932000qnn@gmail.com', 'jtXLyynAF', 0, 0, 'https://www.youtube.com/watch?v=_9pZiwWHeWw', 0),
(120, '', '', '', '', 'http://nghiakhi.com/tag/clip-quay-len-chan-dai/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/clip-quay-len-chan-dai/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.cf/', 1495812750, 'truonghuynhminhcong020292@gmail.com', 'dEEqY1G1s', 2, 0, 'facebook.com', 0),
(121, '', '', '', '', 'http://www.mogs.com', 'http://www.mogs.com', 'http://tinhotqua123.tk/', 1495831709, 'chris@barrelmail.com', '1QczbBfzd', 1, 0, 'http://edition.cnn.com/2017/05/26/politics/james-comey-fbi-investigation-fake-russian-intelligence/index.html', 0),
(122, '', '', '', '', 'www.youtube.com', 'https://www.youtube.com/watch?v=wfjVcwCz4n0', 'http://tinhotqua123.cf/', 1495838287, 'lamhht.039@gmail.com', 'ZyaNYT1kT', 2, 0, 'https://www.youtube.com/watch?v=wfjVcwCz4n0', 0),
(124, '', '', '', '', 'http://nghiakhi.com/tag/phat-hien-xac-thieu-nu-xinh-dep-mat-tich-o-san-bay-noi-tren-song/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/phat-hien-xac-thieu-nu-xinh-dep-mat-tich-o-san-bay-noi-tren-song/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.ml/', 1495876944, 'truonghuynhminhcong020292@gmail.com', 'gsDf6G7qf', 3, 0, 'http://www.24h.com.vn/bong-da/mourinho-an-3-pep-trang-tay-chuong-moi-cua-cuoc-chien-c48a877375.html', 0),
(125, '', '', '', '', 'http://nghiakhi.com/tag/phat-hien-xac-thieu-nu-xinh-dep-mat-tich-o-san-bay-noi-tren-song/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/phat-hien-xac-thieu-nu-xinh-dep-mat-tich-o-san-bay-noi-tren-song/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.ml/', 1495937796, 'truonghuynhminhcong020292@gmail.com', 'M5WPz5fn3', 2, 0, '24h.com.vn', 0),
(126, '', '', '', '', 'https://goo.gl/dChkSt', 'https://goo.gl/dChkSt', 'http://tinhotqua123.ga/', 1496041624, 'thmcong210991@gmail.com', 'M5ZDD7pS2', 0, 0, 'http://news.zing.vn/thu-tuong-nguyen-xuan-phuc-tham-my-tap-trung-vao-hop-tac-thuong-mai-post748857.html', 0),
(127, '', '', '', '', 'http://bit.ly/2rfKq8R', 'http://bit.ly/2rfKq8R', 'http://tinhotqua123.cf/', 1496068913, 'demo@gpcorp.vn', 'TPGZxPSfp', 0, 0, 'http://www.phapluatso.net/dieu-gi-da-khien-ong-doan-ngoc-hai-mat-tich-trong-nhung-chien-dich-don-dep-via-he-gan-day.html', 0),
(128, '', '', '', '', 'http://bit.ly/2rfKq8R', 'http://bit.ly/2rfKq8R', 'http://tinhotqua123.cf/', 1496069021, 'demo@gpcorp.vn', 'WjqEnNEHM', 2, 0, 'http://susanafrioni.com/2015/08/are-you-afraid-to-be-too-sexy-or-too-radiant/', 0),
(132, '', '', '', '', 'http://tin28.info/cong-dong-mang/nu-dien-vien-av-nhat-ban-lam-gi-sau-khi-giai-nghe.html', 'http://tin28.info/cong-dong-mang/nu-dien-vien-av-nhat-ban-lam-gi-sau-khi-giai-nghe.html', 'http://tinhotqua123.gq/', 1496114379, 'loadpage@gmail.com', '7g4aK5yjC', 5, 0, 'http://tin28.info/cong-dong-mang/nu-dien-vien-av-nhat-ban-lam-gi-sau-khi-giai-nghe.html', 0),
(131, '', '', '', '', 'https://goo.gl/fW28UD', 'https://goo.gl/fW28UD', 'http://tinhotqua123.ml/', 1496106044, 'thmcong210991@gmail.com', 'z1TTtYkme', 1, 0, 'http://thethao.vnexpress.net/', 0),
(130, '', '', '', '', 'http://bit.ly/2rfKq8R', 'http://bit.ly/2rfKq8R', 'http://tinhotqua123.cf/', 1496069272, 'demo@gpcorp.vn', '3LHDXFktM', 6, 0, 'https://www.dirtyfox.net/video/uporn-alexis-crystal-sex-table/', 0),
(133, '', '', '', '', 'http://tin28.info/video/mv-noi-nay-co-anh-che-loi-chia-tay-cap-3-sieu-lay-sieu-hai-cua-teen-thpt-nang-khieu.html', 'http://tin28.info/video/mv-noi-nay-co-anh-che-loi-chia-tay-cap-3-sieu-lay-sieu-hai-cua-teen-thpt-nang-khieu.html', 'http://tinhotqua123.gq/', 1496114736, 'loadpage@gmail.com', 'ywBhd9mXw', 0, 0, 'http://tin28.info/video/mv-noi-nay-co-anh-che-loi-chia-tay-cap-3-sieu-lay-sieu-hai-cua-teen-thpt-nang-khieu.html', 0),
(134, '', '', '', '', 'https://www.facebook.com/CaoCuongHTP112', 'https://www.facebook.com/CaoCuongHTP112', 'http://tinhotqua123.gq/', 1496115445, 'demo@gpcorp.vn', '7LkNNPDbQ', 2, 0, 'https://www.facebook.com/CaoCuong1234', 0),
(135, '', '', '', '', 'https://www.facebook.com/671799169696555/videos/1935620263384616/', 'https://www.facebook.com/671799169696555/videos/1935620263384616/', 'http://tinhotqua123.ml/', 1496128059, 'hiennguyendinh@gmail.om', '6eq1RFPLm', 1, 0, 'http://news.zing.vn/', 0),
(136, '', '', '', '', 'https://www.facebook.com/671799169696555/videos/1935620263384616/', 'https://www.facebook.com/671799169696555/videos/1935620263384616/', 'http://tinhotqua123.ml/', 1496128233, 'hiennguyendinh@gmail.om', 'qXHWbWnRS', 1, 0, 'https://www.facebook.com/671799169696555/videos/1935620263384616/', 0),
(137, '', '', '', '', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.gq/', 1496198814, 'thmcong210991@gmail.com', 'BLNZAb1tB', 3, 0, 'http://imgur.com/qzuIpj0', 0),
(138, '', '', '', '', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.gq/', 1496199846, 'thmcong210991@gmail.com', 'ePWONyOpa', 1, 0, 'http://imgur.com/C2lZ7SS', 0),
(139, '', '', '', '', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/thanh-nien-lieu-mang-quay-len-tao-bao/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.tk/', 1496200748, 'thmcong210991@gmail.com', 'CCFLEpxsY', 0, 0, 'http://imgur.com/rnG9Sza', 0),
(140, '', '', '', '', 'http://nghiakhi.com/tag/co-y-ta-cham-soc-benh-nhan-tan-tinh/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/co-y-ta-cham-soc-benh-nhan-tan-tinh/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.gq/', 1496200947, 'thmcong210991@gmail.com', 'mWrtQm6XL', 1, 0, 'http://imgur.com/rnG9Sza', 0),
(141, '', '', '', '', 'http://nghiakhi.com/tag/co-y-ta-cham-soc-benh-nhan-tan-tinh/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/co-y-ta-cham-soc-benh-nhan-tan-tinh/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.gq/', 1496201205, 'thmcong210991@gmail.com', 'EG9Ws1TM6', 2, 0, 'http://imgur.com/Q0dYufp', 0),
(148, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496416612, 'blacklep94@gmail.com', '6bcS3pDqq', 133, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(143, '', '', '', '', 'http://videosonlinehot111111.link/j2f6t8sqxatjsOMTUxMw==.html', 'http://videosonlinehot111111.link/j2f6t8sqxatjsOMTUxMw==.html', 'http://tinhotqua123.gq/', 1496288332, 'blacklep94@gmail.com', 'EeKPwnsRO', 1, 0, 'https://www.youtube.com/watch?v=rTnHLpPrGGA', 0),
(144, '', '', '', '', 'Facebook.com/acc767', 'Facebook.com/acc767', 'http://tinhotqua123.tk/', 1496289051, 'quangdangminh5@gmail.com', 'QnkFxLP62', 0, 0, 'Facebook.com/acc767', 0),
(145, '', '', '', '', 'https://www.google.com.vn/', 'https://www.google.com.vn/', 'http://tinhotqua123.gq/', 1496384686, 'siwutan@getapet.net', 'O6CTTzMcP', 0, 0, 'http://dantri.com.vn/the-thao.htm', 0),
(146, '', '', '', '', 'https://www.google.com.vn/', 'https://www.google.com.vn/', 'http://tinhotqua123.gq/', 1496384976, 'siwutan@getapet.net', 'zdWNTpkGp', 2, 0, 'https://www.youtube.com/watch?v=ElqptEf4Gtk', 0),
(147, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496413538, 'blacklep94@gmail.com', 'yYpPwBRkN', 215, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(149, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.tk/', 1496417095, 'blacklep94@gmail.com', '6deDEMqgC', 1, 0, 'https://www.youtube.com/watch?v=rTnHLpPrGGA', 0),
(150, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ga/', 1496460036, 'blacklep94@gmail.com', '94C6AbnFs', 3, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(151, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496460419, 'blacklep94@gmail.com', 's8bdh1jgF', 29, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(152, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ml/', 1496460923, 'blacklep94@gmail.com', 'LK8RPa9SK', 8, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(153, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ga/', 1496461440, 'blacklep94@gmail.com', 'c7MQE2r89', 2, 0, 'https://www.facebook.com/', 0),
(154, '', '', '', '', 'Ceccon', 'á»ˆuurhhfjjf', 'http://tinhotqua123.ml/', 1496626639, 'cuteo@cuteo.com', 'cwPnLOf6n', 0, 0, 'Concec', 0),
(155, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496664047, 'blacklep773@gmail.com', '9FrhSRkAW', 27, 0, 'http://google.com', 0),
(156, '', '', '', '', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496666164, 'blacklep773@gmail.com', 'eBjz2phht', 19, 0, 'https://www.facebook.com/', 0),
(157, '', '', '', '', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496718651, 'blacklep773@gmail.com', '4mHLTYOKP', 138, 0, 'https://www.youtube.com/watch?v=rTnHLpPrGGA', 0),
(158, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://tinhotqua123.tk/', 1496719610, 'blacklep773@gmail.com', 'RDCws7tAg', 0, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(159, '', '', '', '', 'https://www.youtube.com/watch?v=tcE29MeAvcM', 'lovemmo.com', 'http://tinhotqua123.cf/', 1496719993, 'ngochuanpt1@gmail.com', 'j2CFSzkSZ', 2, 0, 'http://www.xaluan.com/modules.php?name=News&file=article&sid=1798948', 0),
(160, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ml/', 1496720009, 'blacklep773@gmail.com', 'ZEgLTxkY6', 62, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0);
INSERT INTO `facebook_fake_link` (`id`, `title`, `caption`, `description`, `image_url`, `link_redirect`, `mobile_link_redirect`, `domain`, `time`, `user_id`, `code`, `hitcount`, `bot_check`, `fake_link`, `bot_view`) VALUES
(161, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ga/', 1496720297, 'blacklep773@gmail.com', 'WSTRmrP35', 2, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(162, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496720448, 'blacklep773@gmail.com', 'MpePnbndz', 2, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(163, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496721455, 'blacklep773@gmail.com', 'saStbY2R3', 3, 0, 'https://www.youtube.com/watch?v=WPzqIhe6rqY', 0),
(164, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.ml/', 1496811049, 'blacklep773@gmail.com', 'msffKyd7q', 3, 0, 'https://www.facebook.com/', 0),
(165, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496812082, 'blacklep773@gmail.com', 'jjWzwasD4', 0, 0, 'https://www.facebook.com/', 0),
(166, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496813494, 'blacklep773@gmail.com', '4NkQt2Kwg', 24, 0, 'https://www.facebook.com/', 0),
(167, '', '', '', '', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496813928, 'blacklep773@gmail.com', 'HddfhRZKf', 168, 0, 'https://www.facebook.com/', 0),
(168, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://tinhotqua123.ga/', 1496890260, 'blacklep773@gmail.com', 'GfQOhx6Tf', 3, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(169, '', '', '', '', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://www.girlsvideosonline.info/?sl=1597708-9fc70&data1=Track1&data2=Track2', 'http://tinhotqua123.cf/', 1496890708, 'blacklep773@gmail.com', 'N8F6mD3EP', 14, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(170, '', '', '', '', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://www.faptubes.mobi/?sl=1585492-ff7c5&data1=Track1&data2=Track2', 'http://tinhotqua123.tk/', 1496891046, 'blacklep773@gmail.com', 'jfWdEyrQm', 5, 0, 'https://www.youtube.com/watch?v=O6oieRnzivk', 0),
(171, '', '', '', '', 'http://kiemtienononline2706.blogspot.com', 'kiemtienononline2706.blogspot.com', 'http://tinhotqua123.gq/', 1496908965, 'phamthien2706@gmail.com', 'an2KczWTz', 1, 0, 'http://kiemtienononline2706.blogspot.com', 0),
(172, '', '', '', '', 'http://google.com', 'http://google.com', 'http://tinhotqua123.gq/', 1496912260, 'phanleson@gmail.com', 'fSDFj3sXf', 0, 0, 'http://vnexpress.net/tin-tuc/thoi-su/ong-truong-trong-nghia-thu-hoi-san-golf-se-giup-tan-son-nhat-giam-un-tac-3596711.html', 0),
(173, '', '', '', '', 'https://biturl.io/jcb9g4', 'https://biturl.io/jcb9g4', 'http://tinhotqua123.gq/', 1497002244, 'conloctinhyeu_quanghai@yahoo.com', 'AGSwRODCz', 69, 0, 'https://biturl.io/jcb9g4', 0),
(174, '', '', '', '', 'fwqf', 'fwqf', 'http://tinhotqua123.gq/', 1497008443, 'gefgw@gmail.com', 'xsHLh9m5s', 0, 0, 'fqwfwq', 0),
(175, '', '', '', '', 'http://google.com', 'http://xpornhub.top/ramdom.html', 'http://tinhotqua123.ga/', 1497031902, 'khanhduy3110@gmail.com', 'TOdsnZ6zh', 3, 0, 'http://airfaresearch.club/notntfbbot7f2be1b45d278ac18804b79207a24c53?id=NjAy', 0),
(176, '', '', '', '', 'http://nghiakhi.com/tag/phim-xxx/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/phim-xxx/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.ml/', 1497197287, 'demo@gpcorp.vn', 'mxWbktY3w', 0, 0, 'https://www.google.com.vn/?gws_rd=ssl', 0),
(177, '', '', '', '', 'https://goo.gl/GrPTur', 'https://goo.gl/GrPTur', 'http://tinhotqua123.ml/', 1497197393, 'demo@gpcorp.vn', '6WnQMceft', 1646, 0, 'http://imgur.com/a/uE9p5', 0),
(178, '', '', '', '', 'https://goo.gl/2otIz1', 'https://goo.gl/2otIz1', 'http://tinhotqua123.tk/', 1497197705, 'demo@gpcorp.vn', 'Bj1GexKet', 0, 0, 'http://imgur.com/a/8Rve7', 0),
(179, '', '', '', '', 'https://goo.gl/2otIz1', 'https://goo.gl/2otIz1', 'http://tinhotqua123.gq/', 1497197884, 'demo@gpcorp.vn', 'eQWAQSyBf', 10, 0, 'http://imgur.com/a/8Rve7', 0),
(180, '', '', '', '', 'https://goo.gl/2otIz1', 'https://goo.gl/2otIz1', 'http://tinhotqua123.ga/', 1497198232, 'demo@gpcorp.vn', 'GCjeqdNAn', 0, 0, 'http://imgur.com/a/Rq7sq', 0),
(181, '', '', '', '', 'https://goo.gl/PmoUDv', 'https://goo.gl/PmoUDv', 'http://tinhotqua123.ml/', 1497198454, 'demo@gpcorp.vn', 'WZb8XSeM2', 0, 0, 'http://imgur.com/a/Rq7sq', 0),
(182, '', '', '', '', 'https://goo.gl/PmoUDv', 'https://goo.gl/PmoUDv', 'http://tinhotqua123.ga/', 1497198566, 'demo@gpcorp.vn', 'byKgKCTyq', 1, 0, 'http://imgur.com/a/Rq7sq', 0),
(183, '', '', '', '', 'https://goo.gl/PmoUDv', 'https://goo.gl/PmoUDv', 'http://tinhotqua123.ml/', 1497198914, 'demo@gpcorp.vn', 'j51FWHp2P', 0, 0, 'http://dantri.com.vn/', 0),
(184, '', '', '', '', 'https://goo.gl/PmoUDv', 'https://goo.gl/PmoUDv', 'http://tinhotqua123.ml/', 1497198973, 'demo@gpcorp.vn', '4DZm2KQ9Q', 5, 0, 'http://imgur.com/a/7Vikz', 0),
(185, '', '', '', '', 'https://goo.gl/FQxsWQ', 'https://goo.gl/FQxsWQ', 'http://tinhotqua123.cf/', 1497262330, 'demo@gpcorp.vn', '93TEsF9rf', 3, 0, 'https://www.youtube.com/watch?v=fqHu4wGH0i4', 0),
(186, '', '', '', '', 'http://1nangvang.blogspot.com/', 'http://1nangvang.blogspot.com/', 'http://tinhotqua123.gq/', 1497339606, 'demo@gpcorp.vn', '7WXWMWWG4', 0, 0, 'http://www.dantri.com.vn/', 0),
(187, '', '', '', '', 'FUCK', 'FUCK', 'http://tinhotqua123.gq/', 1497344058, 'demo@gpcorp.vn', 'rtaL5K44C', 0, 0, 'FUCK', 0),
(188, '', '', '', '', 'https://www.facebook.com/profile.php?id=100018190711530', 'https://www.facebook.com/profile.php?id=100018190711530', 'http://tinhotqua123.gq/', 1497430486, 'rosestillfaded15102106@gmail.com', 'HcQEdwBfj', 0, 0, 'https://www.facebook.com/profile.php?id=100018190711530', 0),
(189, '', '', '', '', 'http://nghiakhi.com/tag/co-giao-cap-1-nen-nguoi-yeu-sieu-hot/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://nghiakhi.com/tag/co-giao-cap-1-nen-nguoi-yeu-sieu-hot/#utm_source=Cong&utm_medium=Cong&utm_campaign=Cong', 'http://tinhotqua123.cf/', 1497445669, 'demo@gpcorp.vn', 'kCfh6YY2L', 1466, 0, 'http://hyundaigiadinh.org/Ckrur.html?id=VFZSRk5HWkVSWGhPZWtFdw%3D%3D', 0),
(190, '', '', '', '', 'shafou.com', 'shafou.com', 'http://tinhotqua123.gq/', 1497526490, 'demo@gpcorp.vn', 'cAcR6erBD', 10, 0, 'http://www.24h.com.vn/', 0),
(191, '', '', '', '', 'http://dailyarabnews.net/', 'http://bit.ly/2tDF84I', 'http://tinhotqua123.ga/', 1497855898, 'hoangnguyenquy@gmail.com', 'TF23CXpbZ', 0, 0, 'http://vnexpress.net/infographics/giao-thong/so-sanh-tan-son-nhat-voi-cac-cang-hang-khong-khu-vuc-3601449.html', 0),
(192, '', '', '', '', 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 'http://tinhotqua123.gq/', 1497929537, 'hai.educity@gmail.com', 'MLLn23cK5', 1, 0, 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 0),
(193, '', '', '', '', 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 'http://tinhotqua123.cf/', 1497940338, 'hai.educity@gmail.com', 'Pt7gNKrLz', 2, 0, 'http://livetravelnews.com/du-hoc-han-quoc-vua-hoc-vua-lam-thang-50-trieu.html', 0),
(194, '', '', '', '', 'wowphim.com', 'wowphim.com', 'http://tinhotqua123.gq/', 1498119679, 'demo@gpcorp.vn', 'AWsX5Hpcq', 3, 0, 'www.wowphimm.com', 0),
(195, '', '', '', '', 'http://www.health.com/', 'http://frogsnew.com/SmartLinksTitanVN/', 'http://tinhotqua123.ga/', 1498157238, 'nnamads@gmail.com', 'w9wnzNY1L', 1, 0, 'http://www.health.com/', 0),
(196, '', '', '', '', 'http://www.health.com/', 'http://frogsnew.com/SmartLinksTitanVN/', 'http://tinhotqua123.cf/', 1498157266, 'nnamads@gmail.com', 'hbt46jp4y', 11, 0, 'http://www.health.com/', 0),
(197, '', '', '', '', 'http://genk.vn/', 'http://gamek.vn/', 'http://tinhotqua123.cf/', 1498169450, 'nnamads@gmail.com', 's5KNXLpyz', 6, 0, 'http://frogsnew.com/2206BcxIKvQhNn/', 0),
(198, '', '', '', '', 'http://rongbay.com', 'http://enbac.com', 'http://tinhotqua123.gq/', 1498275620, 'haivan@gmail.com', 'ntcPSxgXa', 0, 0, 'http://dantri.com', 0),
(199, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/hai-huoc-voi-mon-chao-chui-ha-noi.html', 'http://1nangvang.blogspot.com/2017/06/hai-huoc-voi-mon-chao-chui-ha-noi.html', 'http://tinhotqua123.cf/', 1498354724, 'demo@gpcorp.vn', 'kyf2nDh3q', 1, 0, 'http://dantri.com.vn/', 0),
(200, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/phim-cuoc-chien-ngam-ban-full-hd-phim.html', 'http://1nangvang.blogspot.com/2017/06/phim-cuoc-chien-ngam-ban-full-hd-phim.html', 'http://tinhotqua123.cf/', 1498355997, 'demo@gpcorp.vn', '6xMEmzTkG', 43, 0, 'https://www.galaxycine.vn/dat-ve/cuoc-chien-ngam', 0),
(201, '', '', '', '', 'http://frogsnew.com/SmartLinksTitanVN/', 'http://frogsnew.com/SmartLinksTitanVN/', 'http://tinhotqua123.cf/', 1498406638, 'nnamads@gmail.com', '5RpfdbkGO', 13, 0, 'http://frogsnew.com/2506ZIiSKovozPs/', 0),
(202, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://tinhotqua123.gq/', 1498439532, 'demo@gpcorp.vn', 'yGh8PGb7b', 2, 0, 'http://infonet.vn/nguoi-phu-nu-bi-di-dao-vao-co-vi-bi-nghi-bat-coc-tre-em-da-doan-tu-voi-gia-dinh-post230590.info', 0),
(203, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://tinhotqua123.gq/', 1498440263, 'demo@gpcorp.vn', 'tFMgE7SFk', 0, 0, 'http://www.24h.com.vn/tin-tuc-trong-ngay/clip-nguoi-dan-di-dao-vao-co-nguoi-phu-nu-nghi-bat-coc-tre-em-c46a883969.html', 0),
(204, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://tinhotqua123.tk/', 1498440333, 'demo@gpcorp.vn', 'e7rjz1QLk', 0, 0, 'http://www.24h.com.vn/tin-tuc-trong-ngay/clip-nguoi-dan-di-dao-vao-co-nguoi-phu-nu-nghi-bat-coc-tre-em-c46a883969.html', 0),
(205, '', '', '', '', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://1nangvang.blogspot.com/2017/06/nguoi-phu-nu-bi-di-dao-vao-co-do-nghi.html', 'http://tinhotqua123.gq/', 1498440397, 'demo@gpcorp.vn', 'FPs8OFbpd', 1, 0, 'http://www.24h.com.vn/tin-tuc-trong-ngay/clip-nguoi-dan-di-dao-vao-co-nguoi-phu-nu-nghi-bat-coc-tre-em-c46a883969.html', 0),
(206, '', '', '', '', 'http://ihuyetlanh.racing/nobotd921c3c762b1522c475ac8fc0811bb0f?id=ODAz', 'http://ihuyetlanh.racing/nobotd921c3c762b1522c475ac8fc0811bb0f?id=ODAz', 'http://tinhotqua123.tk/', 1498440518, 'demo@gpcorp.vn', 'EqbRCTRLQ', 90, 0, 'http://dantri.com.vn/xa-hoi/nguoi-phu-nu-bi-dan-vay-bat-ke-dao-tra-hoi-vi-nghi-bat-coc-tre-em-2017062607232906.htm', 0),
(210, '', '', '', '', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://tinhotqua123.gq/', 1498801917, 'demo@gpcorp.vn', 'QxqFDbOXN', 2, 0, 'http://sexgai.net/chich-em-teen-buom-hong-xinh-dep-cuc-hay/', 0),
(207, '', '', '', '', 'https://goo.gl/9hFrza', 'https://goo.gl/9hFrza', 'http://tinhotqua123.gq/', 1498635823, 'scam1@gmail.com', 'pZFNGN4MZ', 5, 0, 'https://goo.gl/9hFrza', 0),
(209, '', '', '', '', 'https://landber.com/web/search/eyJsb2FpVGluIjowLCJ2aWV3cG9ydCI6eyJub3J0aGVhc3QiOnsibGF0IjoyMS4zODUwMjcsImxvbiI6MTA2LjAxOTg4NTl9LCJzb3V0aHdlc3QiOnsibGF0IjoyMC41NjIzMjMsImxvbiI6MTA1LjI4NTQ2NTl9fSwiZGlhQ2hpbmgiOnsidGluaEtob25nRGF1IjoiSE4iLCJmdWxsTmFtZSI6IkjDoCBO4buZaSJ9LCJsaW1pdCI6MjUsInBhZ2VObyI6MSwiaXNJbmNsdWRlQ291bnRJblJlc3BvbnNlIjpmYWxzZSwidXBkYXRlTGFzdFNlYXJjaCI6dHJ1ZSwibG9haU5oYURhdCI6WyIxIl0sImdpYUJFVFdFRU4iOlsxMDAwLDIwMDBdfQ==', 'https://landber.com/web/search/eyJsb2FpVGluIjowLCJ2aWV3cG9ydCI6eyJub3J0aGVhc3QiOnsibGF0IjoyMS4zODUwMjcsImxvbiI6MTA2LjAxOTg4NTl9LCJzb3V0aHdlc3QiOnsibGF0IjoyMC41NjIzMjMsImxvbiI6MTA1LjI4NTQ2NTl9fSwiZGlhQ2hpbmgiOnsidGluaEtob25nRGF1IjoiSE4iLCJmdWxsTmFtZSI6IkjDoCBO4buZaSJ9LCJsaW1pdCI6MjUsInBhZ2VObyI6MSwiaXNJbmNsdWRlQ291bnRJblJlc3BvbnNlIjpmYWxzZSwidXBkYXRlTGFzdFNlYXJjaCI6dHJ1ZSwibG9haU5oYURhdCI6WyIxIl0sImdpYUJFVFdFRU4iOlsxMDAwLDIwMDBdfQ==', 'http://tinhotqua123.gq/', 1498727915, 'haiyen6919@gmail.com', 'y1Os1FYhL', 1, 0, 'https://landber.com/web/detail/ban-can-ho-chung-cu/du-an-dang-xa-1-gia-lam-ha-noi/Ads_01_12178592', 0),
(211, '', '', '', '', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://tinhotqua123.gq/', 1498802188, 'demo@gpcorp.vn', '45nax4MEk', 2, 0, 'http://sexgai.net/', 0),
(212, '', '', '', '', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 'http://tinhotqua123.gq/', 1498802326, 'demo@gpcorp.vn', 'enKBQFXyk', 2, 0, 'http://ihuyetlanh.racing/nobot37f0e884fbad9667e38940169d0a3c95?id=ODAz', 0),
(215, '', '', '', '', 'https://www.youtube.com/watch?v=k3G4gFrgnOc&list=PL-NPqASF8CchkJN6Rszd4Ry_GhZpdvKYd', 'https://www.youtube.com/watch?v=k3G4gFrgnOc&list=PL-NPqASF8CchkJN6Rszd4Ry_GhZpdvKYd', 'http://tinhotqua123.gq/', 1498815216, 'demo@gpcorp.vn', 'yEEFc8geP', 5, 0, 'http://marktoday24h.com/pasangan-remaja-tanpa-segan-silu-muatnaik-gambar-aksi-sambil-tuttt-di-hutan-namun-apa-yg-berlaku-selanjutnya-pasangan-ini-ternyata-amat-menjijikkan.html', 0),
(239, '', '', '', '', 'https://www.google.com.vn', 'https://www.google.com.vn', 'http://tinhotqua123.gq/', 1503324030, 'demo@gpcorp.vn', 'FYst3SDBP', 0, 0, 'https://www.facebook.com/nangvang265', 0),
(240, '', '', '', '', 'http://1nangvang.blogspot.com/', 'http://1nangvang.blogspot.com/', 'http://tinhotqua123.ga/', 1503324075, 'demo@gpcorp.vn', 'Snrm6PSSN', 0, 0, 'http://dantri.com.vn/', 0),
(216, '', '', '', '', 'http://bit.ly/2qUiHew', 'http://bit.ly/2qUiHew', 'http://tinhotqua123.gq/', 1498849420, 'demo@gpcorp.vn', 'XbMFdL27F', 8, 0, 'http://vnexpress.net/tin-tuc/the-gioi/cuoc-song-do-day/hong-kong-noi-vuc-tham-giau-ngheo-sau-nhat-40-nam-qua-3606480.html', 0),
(217, '', '', '', '', 'http://kenh80.store/chang-trai-di-taxi-het-12-trieu-tu-thanh-hoa-den-nha-trang-de-chia-tay-nguoi-yeu-va-cai-ket-sap-mat/', 'http://kenh80.store/chang-trai-di-taxi-het-12-trieu-tu-thanh-hoa-den-nha-trang-de-chia-tay-nguoi-yeu-va-cai-ket-sap-mat/', 'http://tinhotqua123.gq/', 1499063892, 'demo@gpcorp.vn', 'Ya9X5NX8D', 0, 0, 'http://news.zing.vn/nguoi-chu-bi-trau-huc-chet-co-hon-10-nam-kinh-nghiem-post759599.html', 0),
(218, '', '', '', '', 'https://www.facebook.com/ThanhVanChi3D/videos/789886341178572/', 'https://m.facebook.com/ThanhVanChi3D/videos/789886341178572/', 'http://tinhotqua123.gq/', 1499156791, 'ducanhtran235@gmail.com', '2ZHaOfFeg', 12, 0, 'https://www.facebook.com/ThanhVanChi3D/', 0),
(219, '', '', '', '', 'xvideos.com', 'xnxx.com', 'http://tinhotqua123.tk/', 1499351015, 'demo@gpcorp.vn', 'H32782QAO', 1, 0, 'google.com', 0),
(220, '', '', '', '', 'https://www.facebook.com/', 'https://www.facebook.com/', 'http://tinhotqua123.gq/', 1499491035, 'nhat@gmail.com', 'GaNpPxDbK', 0, 0, 'https://www.facebook.com/', 0),
(221, '', '', '', '', 'vlxx.tv', 'https://www.youtube.com/watch?v=q3JmZ1OUw4w', 'http://tinhotqua123.ml/', 1499496217, 'demo@gpcorp.vn', 'HBKjepfOm', 1, 0, 'https://www.youtube.com/watch?v=q3JmZ1OUw4w', 0),
(222, '', '', '', '', 'https://www.youtube.com/watch?v=t1my8egE0IY', 'https://www.youtube.com/watch?v=t1my8egE0IY', 'http://tinhotqua123.gq/', 1499499410, 'demo@gpcorp.vn', 'cspxaOEO9', 0, 0, 'https://www.facebook.com/kimanh99.girlxinh', 0),
(223, '', '', '', '', 'http://hotfacevn.000webhostapp.com/thi-sinh/103380.html', 'http://hotfacevn.000webhostapp.com/thi-sinh/103380.html', 'http://tinhotqua123.gq/', 1499598226, 'fakelink@gmail.com', 'rYb7KaNY2', 4, 0, 'hotfacevtv.vn', 0),
(224, '', '', '', '', 'https://hahamarkne.blogspot.com/2017/07/mama-menemukan-celana-dalam-anak-9.html#', 'https://hahamarkne.blogspot.com/2017/07/mama-menemukan-celana-dalam-anak-9.html#', 'http://tinhotqua123.ml/', 1499740669, 'demo@gpcorp.vn', 'YcCwakNmO', 0, 0, 'https://indotoday12hh.blogspot.com/2017/07/mama-menemukan-celana-dalam-anak-9.html', 0),
(225, '', '', '', '', 'https://www.youtube.com/watch?v=30v5oOV2QHE', 'https://www.facebook.com/permalink.php?story_fbid=1896974753961598&id=1617161421942934', 'http://tinhotqua123.ga/', 1499933341, 'taivuminh@gmail.com', 'cmP34zTTy', 1, 0, 'https://tinhayqua.com', 0),
(231, '', '', '', '', 'http://facebook.com', 'http://facebook.com', 'http://tinhotqua123.gq/', 1502427966, 'demo@gpcorp.vn', '3g5t4EGdg', 0, 0, 'http://google.com', 0),
(227, '', '', '', '', 'tanglike.ml', 'tanglike.ml', 'http://tinhotqua123.gq/', 1500017929, 'demo@gpcorp.vn', 'eZdwEFXbC', 2, 0, 'TÄƒng Like Facebook', 0),
(228, '', '', '', '', 'http://www.techrum.vn/threads/lo-dien-dien-thoai-thuong-hieu-viet-asanzo-sap-ra-mat-thiet-ke-nhu-iphone-7-gia-duoi-5-trieu.147719/', 'http://www.techrum.vn/threads/lo-dien-dien-thoai-thuong-hieu-viet-asanzo-sap-ra-mat-thiet-ke-nhu-iphone-7-gia-duoi-5-trieu.147719/', 'http://tinhotqua123.ml/', 1500570758, 'tuanlevic@gmail.com', '5X1gDsFDa', 2, 0, 'mivietnam.com', 0),
(229, '', '', '', '', 'https://infoaz247.blogspot.my/2017/07/kuasa-allah-julia-perez-masih-hidup.html', 'https://infoaz247.blogspot.my/2017/07/kuasa-allah-julia-perez-masih-hidup.html', 'http://tinhotqua123.gq/', 1501420875, 'demo@gpcorp.vn', 'HRw5tLhqt', 0, 0, 'vnexpress.net', 0),
(230, '', '', '', '', 'Girl', 'Girl', 'http://tinhotqua123.tk/', 1501751737, 'demo@gpcorp.vn', 'RS7dy3Aq2', 0, 0, 'Girl', 0),
(234, '', '', '', '', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', 'http://tinhotqua123.ga/', 1502798123, 'demo@gpcorp.vn', 'X9dGb9QpY', 0, 0, 'http://dantri.com.vn/', 0),
(235, '', '', '', '', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', 'http://tinhotqua123.gq/', 1502798512, 'demo@gpcorp.vn', 'fpY1wWsGL', 0, 0, 'http://duhoc.dantri.com.vn/', 0),
(236, '', '', '', '', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', ' http://member.civi.vn/cpc/?sid=11858&bid=10022100', 'http://tinhotqua123.gq/', 1502956493, 'demo@gpcorp.vn', '8ANgtn96p', 0, 0, 'http://duhoc.dantri.com.vn/', 0),
(241, '', '', '', '', 'https://goo.gl/xSVdGb', 'https://goo.gl/xSVdGb', 'http://tinhotqua123.tk/', 1503372392, 'demo@gpcorp.vn', 'PEOPeAXkP', 0, 0, 'http://www.bbc.com/news/world-europe-41007410', 0),
(243, '', '', '', '', 'Http://fb.com', 'Http://fb.com', 'http://tinhotqua123.gq/', 1503512146, 'demo@gpcorp.vn', 'dGK9xLSG1', 0, 0, 'Http://google.com', 0),
(244, '', '', '', '', 'http://tienphat-automation.com/c441-CPM1A.aspx', 'https://www.youtube.com/watch?v=hZ_5GLnS8q0', 'http://tinhotqua123.gq/', 1504022040, 'demo@gpcorp.vn', 'AcGEyFyDn', 0, 0, 'https://www.youtube.com/watch?v=hZ_5GLnS8q0', 0),
(245, '', '', '', '', 'http://tienphat-automation.com/c441-CPM1A.aspx', 'https://www.youtube.com/watch?v=hZ_5GLnS8q0', 'http://tinhotqua123.ml/', 1504022168, 'demo@gpcorp.vn', 'bNO89Y5Y7', 0, 0, 'https://www.youtube.com/watch?v=hZ_5GLnS8q0', 0),
(246, '', '', '', '', 'https://www.youtube.com/watch?v=p48lxzEIoyI', 'https://www.facebook.com/vy.nguyen.scorbra?ref=br_rs', 'http://tinhotqua123.tk/', 1504027277, 'demo@gpcorp.vn', 'SYmNQ3gXx', 0, 0, 'hey you', 0),
(247, '', '', '', '', 'http://link4ad.net/nAOfPzda', 'http://link4ad.net/nAOfPzda', 'http://tinhotqua123.ga/', 1504071996, 'thinhsieusaoclud@gmail.com', '9zbpFW2dC', 0, 0, 'http://vipfb.us', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_groups`
--

CREATE TABLE `facebook_groups` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_help`
--

CREATE TABLE `facebook_help` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `time` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `facebook_help`
--

INSERT INTO `facebook_help` (`id`, `title`, `content`, `time`, `level`, `position`) VALUES
(1, 'ThÃªm tÃ i khoáº£n Facebook vÃ o há»‡ thá»‘ng', '<p><span style=\"color: #ff0000;\"><em>Ch&uacute; &yacute;: Ä‘&acirc;y l&agrave; c&ocirc;ng viá»‡c Ä‘áº§u ti&ecirc;n báº¡n pháº£i l&agrave;m khi sá»­ dá»¥ng á»¨ng dá»¥ng Ä‘Äƒng tin,&nbsp;náº¿u kh&ocirc;ng c&oacute; t&agrave;i khoáº£n Facebook báº¡n kh&ocirc;ng thá»ƒ thá»±c hiá»‡n c&aacute;c thao t&aacute;c tr&ecirc;n á»¨ng dá»¥ng Ä‘Äƒng tin nhÆ°: Ä‘Äƒng b&agrave;i l&ecirc;n tÆ°á»ng, Ä‘Äƒng b&agrave;i l&ecirc;n fanpage, group ...</em></span></p>\r\n<p><strong>Tá»« Menu -&gt; T&agrave;i khoáº£n Facebook</strong></p>\r\n<p><strong>BÆ°á»›c 1: </strong></p>\r\n<p>Tá»« menu nháº¥n v&agrave;o <a href=\"?page=facebook_accounts&amp;portal=news\" target=\"_blank\"><strong>T&agrave;i khoáº£n Facebook</strong></a>, m&agrave;n h&igrave;nh hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c t&agrave;i khoáº£n Facebook báº¡n Ä‘&atilde; th&ecirc;m.</p>\r\n<p><img src=\"upload/news/Help/tai-khoan-facebook.png\" alt=\"\" width=\"800\" height=\"384\" /></p>\r\n<p>&nbsp;</p>\r\n<p>+ Nháº¥n v&agrave;o v&agrave;o <strong>Th&ecirc;m t&agrave;i khoáº£n</strong> (Ä‘á»ƒ th&ecirc;m 1 t&agrave;i khoáº£n), hoáº·c <strong>Th&ecirc;m h&agrave;ng loáº¡t</strong> (Ä‘á»ƒ th&ecirc;m nhiá»u t&agrave;i khoáº£n báº±ng Token 1 l&uacute;c).</p>\r\n<p><strong>BÆ°á»›c 2: </strong></p>\r\n<p><strong><span style=\"text-decoration: underline;\">C&aacute;ch 1:</span> Nháº¥n <img src=\"upload/news/Help/Screenshot_12.png\" alt=\"\" width=\"131\" height=\"60\" />&nbsp;Ä‘á»ƒ th&ecirc;m 1 t&agrave;i khoáº£n facebook v&agrave;o há»‡ thá»‘ng.</strong></p>\r\n<p><img src=\"upload/news/Help/them-tai-khoan-fb.png\" alt=\"\" width=\"800\" height=\"386\" /></p>\r\n<p>1/ Náº¿u Ä‘&atilde; c&oacute; sáºµn Token th&igrave; copy/ paste token v&agrave;o &ocirc; <strong>Access Token -&gt; nháº¥n Ghi láº¡i</strong></p>\r\n<p>2/ Náº¿u chÆ°a c&oacute; Token th&igrave; nháº¥n v&agrave;o Tab t&agrave;i khoáº£n Facebook, nháº­p email/máº­t kháº©u t&agrave;i khoáº£n khoáº£n Facebook -&gt; Chá»n á»©ng dá»¥ng (Iphone/ IOS/ Page IOS) -&gt; nháº¥n Get Access Token</p>\r\n<p><img src=\"upload/news/Help/tab-tai-khoan-facebook.png\" alt=\"\" width=\"800\" height=\"309\" /></p>\r\n<p>=&gt; Ngay sau khi nháº¥n xong Get Access Token -&gt; th&igrave; m&agrave;n h&igrave;nh sáº½ chuyá»ƒn sang tab<strong> Access Token</strong> vá»›i Token cá»§a email/máº­t kháº©u Ä‘&atilde; Ä‘Æ°á»£c láº¥y v&agrave; Ä‘iá»n sáºµn</p>\r\n<p><img src=\"upload/news/Help/Screenshot_1.png\" alt=\"\" width=\"800\" height=\"207\" /></p>\r\n<p><strong>&nbsp; &nbsp; =&gt; Nháº¥n ghi láº¡i Ä‘á»ƒ th&ecirc;m t&agrave;i khoáº£n Facebook v&agrave;o há»‡ thá»‘ng.</strong></p>\r\n<p><em>LÆ°u &yacute;:</em></p>\r\n<ul>\r\n<li><em>Äá»ƒ thao t&aacute;c Ä‘áº§y Ä‘á»§ c&aacute;c t&iacute;nh nÄƒng tr&ecirc;n há»‡ thá»‘ng th&igrave; Token cá»§a nick Facebook pháº£i full quyá»n (Token full quyá»n c&oacute; dáº¡ng EAAA).</em></li>\r\n<li><em>Trong má»™t sá»‘ trÆ°á»ng há»£p viá»‡c láº¥y token tá»« email/máº­t kháº©u xáº£y ra lá»—i, facebook báº¯t x&aacute;c nháº­n tr&igrave;nh duyá»‡t, trÆ°á»›c khi láº¥y token báº±ng email/máº­t kháº©u vui l&ograve;ng Ä‘Äƒng nháº­p nick Facebook tr&ecirc;n tr&igrave;nh duyá»‡t trÆ°á»›c rá»“i sau Ä‘&oacute; má»›i láº¥y Token.</em></li>\r\n</ul>\r\n<p>&nbsp;3/ Láº¥y Access Token tá»« á»©ng dá»¥ng b&ecirc;n thá»© 3&nbsp;<strong>Graph API Explorer</strong>&nbsp;</p>\r\n<p>- Äá»ƒ láº¥y Token tá»«&nbsp;<strong>Graph API Explorer, </strong>pháº£i Ä‘Äƒng nháº­p sáºµn nick facebook tr&ecirc;n tr&igrave;nh duyá»‡t sau Ä‘&oacute; tiáº¿n h&agrave;nh láº¥y token.</p>\r\n<p>&nbsp;- Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_2.png\" alt=\"\" width=\"147\" height=\"41\" />, m&agrave;n h&igrave;nh hiá»ƒn thi</p>\r\n<p><img src=\"upload/news/Help/Screenshot_3.png\" alt=\"\" width=\"800\" height=\"715\" /></p>\r\n<p>-&gt; chá»n tiáº¿p tá»¥c vá»›i tÆ° c&aacute;ch Hy</p>\r\n<p><img src=\"upload/news/Help/Screenshot_5.png\" alt=\"\" width=\"800\" height=\"707\" /></p>\r\n<p>=&gt; Chá»n má»i ngÆ°á»i -&gt; Nháº¥n OK -&gt; Nháº¥n Ok -&gt; M&agrave;n h&igrave;nh hiá»ƒn thá»‹</p>\r\n<p><img src=\"upload/news/Help/Screenshot_6.png\" alt=\"\" width=\"800\" height=\"280\" /></p>\r\n<p>=&gt; Thao t&aacute;c tháº­t nhanh Copy Ä‘Æ°á»ng link tr&ecirc;n thanh Ä‘á»‹a (https://www.facebook.com/connect/login_success.html#access_token=EAACEdEose0cBADDAm7DgU4dP67FQzj30oOERYPJDgjLhzOsZBaMUG3D0qZCyZCWGbj3yqRT7Si103qpXZBmisJsjLQgdMDroPcQMvYfIQytbXRWgpgPa98eooOBriBkVWn1mQQquXWDPVkJyuvFn4XRZBqac4R9MZD&amp;expires_in=5183932&amp;code=AQB_IwlNQnYD_zH8w14vrZG7fb7fyuJUjxdaHbtRjYCCOetxq1rx3CJZ6-yhbJJl7Ns2JTr_RMdXc7TAGGrw4ffedbjl8_yxfrwJXHmPZ_ZGrOz5uZpkF5-yF6vuTdK78gfsjkn-eKzJ21k6gPcWRR7G2CNJpo005ITVN1iM2x0Noqi07GMEldrzSmxXQ3O-yX3BOKbeAwrSLxvhT-Ape2qnHzQ9B6RBvf2ohZGirHkAYGxlW8fe_eyU6x7sAkYkAonNWd00BUegCqdgCwRml9u3-6mURMhI3rlzo_PeW7hNq-poc8X3ZADT-Enf-ZqWK6U8cvEk65_qWWBzg8eLphtz) <strong>chá»‰ rá»“i paste v&agrave;o &ocirc; Access Token.&nbsp;</strong></p>\r\n<p><strong>=&gt; Nháº¥n ghi láº¡i</strong></p>\r\n<p>4/ Láº¥y Token tá»« á»©ng dá»¥ng b&ecirc;n thá»© 3&nbsp;<strong>Tel Aviv, Israel.</strong></p>\r\n<p>- Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_8.png\" alt=\"\" width=\"243\" height=\"43\" />, m&agrave;n h&igrave;nh hiá»ƒn thá»‹</p>\r\n<p><img src=\"upload/news/Help/Screenshot_9.png\" alt=\"\" width=\"800\" height=\"719\" /></p>\r\n<p>=&gt; nháº¥n <strong>tiáº¿p tá»¥c vá»›i tÆ° c&aacute;ch Pháº¡m</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_10.png\" alt=\"\" width=\"800\" height=\"706\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>=&gt; </strong>Chá»n <strong>má»i ngÆ°á»i</strong> rá»“i nháº¥n tiáº¿p OK -&gt; Ok</p>\r\n<p><img src=\"upload/news/Help/Screenshot_11.png\" alt=\"\" width=\"800\" height=\"592\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Copy Ä‘Æ°á»ng link tr&ecirc;n thanh Ä‘á»‹a chá»‰&nbsp;<a href=\"http://www.fbzeus.com/auth/redirect#access_token=EAAOdJA4inqsBACcbVPiAnUZAT3Um8EOt21AJHIUNcdzdJzh0gV5C0AqZBfuwZBWq1UJK6hpXzhpApSQ0VohEReaPkm5P7qXZCPzri4XF5cpZAYUV59aiioXLfyuGCeupWRbZBBdCm0ZCTBHJohWq0zqQzY4eWiaWdrSPbEV1lFbqQZDZD&amp;expires_in=5183999\">http://www.fbzeus.com/auth/redirect#access_token=EAAOdJA4inqsBACcbVPiAnUZAT3Um8EOt21AJHIUNcdzdJzh0gV5C0AqZBfuwZBWq1UJK6hpXzhpApSQ0VohEReaPkm5P7qXZCPzri4XF5cpZAYUV59aiioXLfyuGCeupWRbZBBdCm0ZCTBHJohWq0zqQzY4eWiaWdrSPbEV1lFbqQZDZD&amp;expires_in=5183999</a></p>\r\n<p>=&gt; Copy/paste v&agrave;o &ocirc; Access Token&nbsp;</p>\r\n<p>=&gt; Nháº¥n Ghi láº¡i Ä‘á»ƒ th&ecirc;m t&agrave;i khoáº£n Facebook v&agrave;o há»‡ thá»‘ng</p>\r\n<p><strong><span style=\"text-decoration: underline;\">C&aacute;ch 2</span>: &nbsp;Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_13.png\" alt=\"\" width=\"123\" height=\"50\" />&nbsp;Ä‘á»ƒ th&ecirc;m nhiá»u t&agrave;i khoáº£n Facebook c&ugrave;ng l&uacute;c v&agrave;o há»‡ thá»‘ng.</strong></p>\r\n<p>- Äá»ƒ thá»±c hiá»‡n thao t&aacute;c n&agrave;y cáº§n pháº£i c&oacute; danh s&aacute;ch c&aacute;c token, má»—i token tr&ecirc;n 1 d&ograve;ng</p>\r\n<p>- Copy danh s&aacute;ch token rá»“i paste v&agrave;o &ocirc; Access Token&nbsp;</p>\r\n<p><img src=\"upload/news/Help/Screenshot_14.png\" alt=\"\" width=\"800\" height=\"417\" /></p>\r\n<p>&nbsp;</p>\r\n<p>=&gt; Nháº¥n<img src=\"upload/news/Help/Screenshot_15.png\" alt=\"\" width=\"76\" height=\"47\" />&nbsp;Ä‘á»ƒ th&ecirc;m danh s&aacute;ch t&agrave;i khoáº£n facebook n&agrave;y v&agrave;o há»‡ thá»‘ng.</p>\r\n<p>LÆ°u &yacute;:&nbsp;</p>\r\n<p>-&nbsp;Access Token l&agrave; 1 chuá»—i Ä‘Æ°á»£c m&atilde; h&oacute;a Ä‘áº¡i diá»‡n cho 1 nick facebook, to&agrave;n bá»™ c&aacute;c thao t&aacute;c thá»±c hiá»‡n tr&ecirc;n Token Ä‘á»u tÆ°Æ¡ng Ä‘Æ°Æ¡ng vá»›i thao t&aacute;c tr&ecirc;n ch&iacute;nh nick Facebook Ä‘&oacute;.</p>\r\n<p>- Äá»ƒ thá»±c hiá»‡n c&aacute;c thao t&aacute;c tr&ecirc;n há»‡ thá»‘ng cáº§n c&oacute; Token full quyá»n (Token full quyá»n c&oacute; dáº¡ng EAAA).</p>\r\n<p>&nbsp;</p>', 1495509614, 2, 0),
(2, 'ÄÄƒng bÃ i tá»± Ä‘á»™ng', '', 1495523538, 1, 1),
(3, 'ÄÄƒng tá»± Ä‘á»™ng', '<p><strong>Tá»« Menu -&gt; ÄÄƒng b&agrave;i tá»± Ä‘á»™ng -&gt; ÄÄƒng tá»± Ä‘á»™ng, m&agrave;n h&igrave;nh hiá»ƒn thá»‹</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_1_1.png\" alt=\"\" width=\"800\" height=\"399\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p>-&nbsp;Click chá»n tab Text/Link/Image/Video/Multi Image Ä‘á»ƒ Ä‘Äƒng b&agrave;i dáº¡ng&nbsp;Text/Link/Image/Video/Multi Image.</p>\r\n<p><strong>1/ Click chá»n tab Text</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_2_1.png\" alt=\"\" width=\"800\" height=\"798\" /></strong></p>\r\n<p>+ Nháº­p&nbsp;</p>\r\n<ul>\r\n<li>Message: Ná»™i dung Ä‘Äƒng l&ecirc;n</li>\r\n<li>Delay: thá»i gian chá» giá»¯a c&aacute;c láº§n Ä‘Äƒng</li>\r\n</ul>\r\n<p><strong>2/ Click chá»n tab Link</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_8_1.png\" alt=\"\" width=\"534\" height=\"586\" /></strong></p>\r\n<p><strong>+ Nháº­p</strong></p>\r\n<ul>\r\n<li>Message</li>\r\n<li>Link</li>\r\n<li>Ti&ecirc;u Ä‘á» b&agrave;i viáº¿t</li>\r\n<li>Caption</li>\r\n<li>Description: ná»™i dung b&agrave;i viáº¿t</li>\r\n</ul>\r\n<p><strong>=&gt; Khi nháº­p xong nh&igrave;n sang b&ecirc;n pháº£i m&agrave;n h&igrave;nh c&oacute; chá»©c nÄƒng xem b&agrave;i trÆ°á»›c khi Ä‘Äƒng l&ecirc;n Facebook</strong></p>\r\n<p><img src=\"upload/news/Help/Screenshot_8_2.png\" alt=\"\" width=\"498\" height=\"526\" /></p>\r\n<p><strong>3/ Click tab Image</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_9_1.png\" alt=\"\" width=\"527\" height=\"399\" /></strong></p>\r\n<p><strong>+ Nháº­p</strong></p>\r\n<ul>\r\n<li><strong>Message: ná»™i dung Ä‘Äƒng</strong></li>\r\n<li><strong>Image: Ä‘Æ°á»ng dáº«n áº£nh Ä‘Äƒng, c&oacute; thá»ƒ copy Ä‘Æ°á»ng dáº«n áº£nh tá»« 1 nÆ¡i kh&aacute;c rá»“i paste v&agrave;o &ocirc; Image, hoáº·c upload áº£nh l&ecirc;n server rá»“i láº¥y Ä‘Æ°á»ng link Paste v&agrave;o.</strong></li>\r\n</ul>\r\n<p><strong>4/Click tab Video</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_9_2.png\" alt=\"\" width=\"529\" height=\"402\" /></strong></p>\r\n<p><strong>Nháº­p:</strong></p>\r\n<p><strong>+ </strong>Message: ná»™i dung Ä‘Äƒng</p>\r\n<p><strong>+ </strong>ÄÆ°á»ng link video: l&agrave; Ä‘Æ°á»ng dáº«n tá»›i file video (mp4, mp4,flv ...). Há»‡ thá»‘ng c&oacute; thá»ƒ Ä‘Äƒng link youtube trá»± tiáº¿p l&ecirc;n Facebook m&agrave; kh&ocirc;ng cáº§n download video. Link youtube c&oacute; dáº¡ng&nbsp;<a href=\"https://www.youtube.com/watch?v=vIaaf7vh_Gw\">https://www.youtube.com/watch?v=vIaaf7vh_Gw</a></p>\r\n<p>&nbsp;</p>\r\n<p><strong>5/ Click tab Multi Image</strong></p>\r\n<p><img src=\"upload/news/Help/Screenshot_10_1.png\" alt=\"\" width=\"507\" height=\"326\" /></p>\r\n<p><strong>Nháº­p</strong></p>\r\n<p>+Message: ná»™i dung cáº§n Ä‘Äƒng</p>\r\n<p>+Copy/ Paste Ä‘Æ°á»ng dáº«n áº£nh v&agrave;o &ocirc; Enter Image Url &nbsp;-&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/add-image.png\" alt=\"\" width=\"97\" height=\"43\" />, láº·p láº¡i bÆ°á»›c n&agrave;y náº¿u muá»‘n th&ecirc;m nhiá»u áº£nh.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>=&gt; Tick chá»n All Profile (lá»c ra c&aacute;c Nick Facebook)/ All Group (lá»c ra c&aacute;c nh&oacute;m Facebook)/ All Pages (lá»c ra c&aacute;c Fanpage) sáº½ hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c nick/group/Fanpage tÆ°Æ¡ng á»©ng</strong></p>\r\n<p><img src=\"upload/news/Help/Screenshot_3_1.png\" alt=\"\" width=\"800\" height=\"180\" /></p>\r\n<p>&nbsp;</p>\r\n<p>=&gt; Tick chá»n c&aacute;c Nick, Nh&oacute;m, fanpage tÆ°Æ¡ng á»©ng</p>\r\n<p><img src=\"upload/news/Help/Screenshot_4.png\" alt=\"\" width=\"800\" height=\"361\" /></p>\r\n<p>+ Nháº¥n&nbsp;<img src=\"upload/news/Help/luu-mau.png\" alt=\"\" width=\"99\" height=\"42\" />&nbsp;náº¿u muá»‘n sá»­ dá»¥ng láº¡i b&agrave;i Ä‘Äƒng n&agrave;y.</p>\r\n<p>+ Nháº¥n&nbsp;<img src=\"upload/news/Help/dang-ngay.png\" alt=\"\" width=\"103\" height=\"38\" />&nbsp;náº¿u muá»‘n Ä‘Äƒng ngay tin n&agrave;y l&ecirc;n c&aacute;c Nick, nh&oacute;m, Fanpage facebook vá»«a chá»n.</p>\r\n<p>+ Nháº¥n&nbsp;<img src=\"upload/news/Help/len-lich-dang.png\" alt=\"\" width=\"119\" height=\"39\" />&nbsp;náº¿u muá»‘n l&ecirc;n lá»‹ch Ä‘Äƒng b&agrave;i n&agrave;y. Khi nháº¥n l&ecirc;n lá»‹ch m&agrave;n h&igrave;nh l&ecirc;n lá»‹ch hiá»ƒn thá»‹</p>\r\n<p><img src=\"upload/news/Help/Screenshot_5_1.png\" alt=\"\" width=\"499\" height=\"354\" /></p>\r\n<p>&nbsp;=&gt; Chá»n thá»i gian báº¯t Ä‘áº§u Ä‘Äƒng trong &ocirc; <strong>Time Post, </strong>chá»n thá»i gian chá» giá»¯a c&aacute;c láº§n Ä‘Äƒng trong &ocirc; <strong>Delay (Minutes)</strong></p>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_7_1.png\" alt=\"\" width=\"124\" height=\"42\" />&nbsp;Ä‘á»ƒ l&ecirc;n lá»‹ch Ä‘Äƒng cho b&agrave;i viáº¿t.</p>\r\n<p>+ Náº¿u kh&ocirc;ng muá»‘n nháº­p th&ocirc;ng tin, sá»­ dá»¥ng láº¡i c&aacute;c b&agrave;i Ä‘Äƒng trÆ°á»›c Ä‘&oacute; th&igrave; chá»n 1 b&agrave;i trong máº«u Ä‘&atilde; lÆ°u&nbsp;</p>\r\n<p><img src=\"upload/news/Help/Screenshot_12_1.png\" alt=\"\" width=\"539\" height=\"106\" /></p>\r\n<p>Äá»ƒ Ä‘iá»n c&aacute;c th&ocirc;ng tin v&agrave;o &ocirc;.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1495523638, 2, 2),
(4, 'Lá»‹ch Ä‘Äƒng', '<p><strong>Tá»« menu -&gt; ÄÄƒng b&agrave;i tá»± Ä‘á»™ng -&gt; Lá»‹ch Ä‘Äƒng</strong></p>\r\n<p>- Hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c b&agrave;i Ä‘Äƒng Ä‘Æ°á»£c l&ecirc;n lá»‹ch theo thá»i gian, Ä‘Æ°á»£c thá»±c hiá»‡n á»Ÿ má»¥c&nbsp;<strong><a href=\"?page=help&amp;id=3&amp;portal=news\" target=\"_blank\">ÄÄƒng tá»± Ä‘á»™ng</a></strong></p>\r\n<p>- C&aacute;c b&agrave;i l&ecirc;n lá»‹ch sáº½ Ä‘Æ°á»£c há»‡ thá»‘ng tá»± Ä‘á»™ng cháº¡y khi tá»›i giá», ngÆ°á»i d&ugrave;ng kh&ocirc;ng cáº§n pháº£i thao t&aacute;c</p>\r\n<p><img src=\"upload/news/Help/Screenshot_13_1.png\" alt=\"\" width=\"800\" height=\"408\" /></p>\r\n<p>=&gt; Trong pháº§n lá»‹ch Ä‘Äƒng sáº½ cho biáº¿t tráº¡ng th&aacute;i cá»§a tá»«ng b&agrave;i Ä‘Äƒng</p>\r\n<p>+ Processing: b&agrave;i Ä‘Äƒng Ä‘&atilde; l&ecirc;n lá»‹ch v&agrave; Ä‘ang chá» Ä‘Æ°á»£c xá»­ l&yacute; (chÆ°a tá»›i giá» xá»­ l&yacute;)</p>\r\n<p>+ Complete: b&agrave;i Ä‘Äƒng Ä‘&atilde; Ä‘Æ°á»£c Ä‘Äƒng th&agrave;nh c&ocirc;ng</p>\r\n<p>+ Failure: b&agrave;i Ä‘Äƒng lá»—i -&gt; di chuá»™t v&agrave;o sáº½ hiá»ƒn thá»‹ th&ocirc;ng b&aacute;o lá»—i</p>\r\n<p>&nbsp;</p>', 1495523652, 2, 3),
(5, 'Máº«u bÃ i Ä‘Äƒng', '<p><strong>Tá»« Menu -&gt; ÄÄƒng b&agrave; tá»± Ä‘á»™ng -&gt; Máº«u b&agrave;i Ä‘Äƒng</strong></p>\r\n<p>- Hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c b&agrave;i Ä‘Äƒng&nbsp;Ä‘Æ°á»£c lÆ°u Ä‘á»ƒ sá»­ dá»¥ng láº¡i á»Ÿ bÆ°á»›c&nbsp;<strong><a href=\"?page=save_post&amp;cmd=add&amp;portal=news\" target=\"_blank\">ÄÄƒng b&agrave;i tá»± Ä‘á»™ng</a></strong></p>\r\n<p><img src=\"upload/news/Help/Screenshot_14_1.png\" alt=\"\" width=\"800\" height=\"340\" /></p>', 1495523666, 2, 4),
(6, 'BÃ¡o cÃ¡o thá»‘ng kÃª', '<p><strong>Tá»« Menu -&gt; ÄÄƒng b&agrave;i tá»± Ä‘á»™ng -&gt; B&aacute;o c&aacute;o thá»‘ng k&ecirc;</strong></p>\r\n<p>- Thá»‘ng k&ecirc; to&agrave;n bá»™ th&ocirc;ng tin vá» t&agrave;i khoáº£n Ä‘ang d&ugrave;ng nhÆ°: sá»‘ lÆ°á»£ng t&agrave;i khoáº£n Facebook, sá»‘ Group, sá»‘ Fanpage, tá»•ng lÆ°á»£ng like Fanpage Ä‘ang c&oacute;, sá»‘ lÆ°á»£ng c&aacute;c b&agrave;i Ä‘Äƒng, b&agrave;i Ä‘Äƒng th&agrave;nh c&ocirc;ng, b&agrave;i Ä‘Äƒng lá»—i</p>\r\n<p><img src=\"upload/news/Help/Screenshot_15_1.png\" alt=\"\" width=\"800\" height=\"465\" /></p>', 1495523761, 2, 5),
(7, 'NuÃ´i nhÃ³m Facebook', '', 1495523864, 1, 7),
(8, 'Tá»± Ä‘á»™ng Ä‘Äƒng lÃªn nhÃ³m', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nh&oacute;m Facebook -&gt; ÄÄƒng tá»± Ä‘á»™ng l&ecirc;n nh&oacute;m</strong></p>\r\n<p><strong>Thá»±c hiá»‡n:</strong> xem á»Ÿ má»¥c <a href=\"?page=help&amp;id=3&amp;portal=news\"><strong>ÄÄƒng tá»± Ä‘á»™ng</strong></a>, tick chá»n&nbsp;<img src=\"upload/news/Help/Screenshot_16.png\" alt=\"\" width=\"452\" height=\"57\" /></p>', 1495523916, 2, 8),
(9, 'Tá»± Ä‘á»™ng tham gia nhÃ³m', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nh&oacute;m Facebook -&gt; Tá»± Ä‘á»™ng tham gia nh&oacute;m</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_17.png\" alt=\"\" width=\"800\" height=\"361\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>BÆ°á»›c 1: chá»n t&agrave;i khoáº£n facebook tÆ°Æ¡ng á»©ng</strong></p>\r\n<p><strong>BÆ°á»›c 2: nháº­p tá»« kh&oacute;a li&ecirc;n quan tá»›i t&ecirc;n nh&oacute;m cáº§n t&igrave;m</strong></p>\r\n<p><strong>BÆ°á»›c 3: nháº¥n v&agrave;o T&igrave;m kiáº¿m -&gt; hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c nh&oacute;m c&oacute; t&ecirc;n tr&ugrave;ng vá»›i tá»« kh&oacute;a t&igrave;m kiáº¿m</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_18.png\" alt=\"\" width=\"800\" height=\"328\" /></strong></p>\r\n<p><strong>BÆ°á»›c 4: tick chá»n v&agrave;o t&ecirc;n c&aacute;c nh&oacute;m cáº§n tham gia</strong></p>\r\n<p><strong>BÆ°á»›c 5: Ä‘iá»u chá»‰nh khoáº£ng c&aacute;ch giá»¯a 2 láº§n gá»­i y&ecirc;u cáº§u tham gia nh&oacute;m</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_19.png\" alt=\"\" width=\"800\" height=\"62\" /></strong></p>\r\n<p><strong>BÆ°á»›c 6: nháº¥n&nbsp;<img src=\"upload/news/Help/tham-gia.png\" alt=\"\" width=\"175\" height=\"62\" />Ä‘á»ƒ l&ecirc;n lá»‹ch gá»­i y&ecirc;u cáº§u tham gia c&aacute;c nh&oacute;m.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>=&gt; Khi nháº¥n Tham gia, há»‡ thá»‘ng sáº½ lÆ°u láº¡i th&ocirc;ng tin v&agrave; tá»± Ä‘á»™ng gá»­i y&ecirc;u cáº§u tham gia v&agrave;o nh&oacute;m theo thá»i gian. C&oacute; thá»ƒ xem lá»‹ch thá»±c hiá»‡n á»Ÿ&nbsp;<a href=\"?page=schedules_group&amp;portal=news\" target=\"_blank\">Lá»‹ch thá»±c hiá»‡n nh&oacute;m</a>.</strong></p>', 1495523941, 2, 9),
(10, 'Tá»± Ä‘á»™ng má»i báº¡n vÃ o nhÃ³m', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nh&oacute;m Facebook -&gt; Tá»± Ä‘á»™ng má»i báº¡n v&agrave;o nh&oacute;m</strong></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>LÆ°u &yacute;:</strong></span></p>\r\n<ul>\r\n<li>Äá»ƒ sá»­ dá»¥ng chá»©c nÄƒng n&agrave;y, t&agrave;i khoáº£n Facebook Ä‘Æ°á»£c chá»n pháº£i l&agrave; admin cá»§a nh&oacute;m cáº§n má»i.</li>\r\n<li>Khi <strong><a href=\"?page=facebook_accounts&amp;cmd=add&amp;portal=news\" target=\"_blank\">th&ecirc;m t&agrave;i khoáº£n facebook</a></strong>, token sá»­ dá»¥ng pháº£i full quyá»n (token dáº¡ng EAAA)</li>\r\n</ul>\r\n<p><strong><span style=\"text-decoration: underline;\">Thá»±c hiá»‡n:</span></strong></p>\r\n<p><strong><span style=\"text-decoration: underline;\"><img src=\"upload/news/Help/Screenshot_20.png\" alt=\"\" width=\"800\" height=\"366\" /></span></strong></p>\r\n<ul>\r\n<li><strong>BÆ°á»›c 1: Chá»n t&agrave;i khoáº£n facebook</strong></li>\r\n<li><strong>BÆ°á»›c 2: chá»n nh&oacute;m&nbsp;</strong></li>\r\n<li><strong>BÆ°á»›c 3: T&iacute;ck chá»n danh s&aacute;ch báº¡n b&egrave; cáº§n má»i</strong></li>\r\n<li><strong>BÆ°á»›c 4: Ä‘iá»u chá»‰nh khoáº£ng c&aacute;ch giá»¯a 2 láº§n má»i (thá»i gian l&agrave; gi&acirc;y).</strong></li>\r\n<li><strong>BÆ°á»›c 5: nháº¥n&nbsp;<img src=\"upload/news/Help/len-lich.png\" alt=\"\" width=\"169\" height=\"52\" />&nbsp;Ä‘á»ƒ má»i báº¡n b&egrave; v&agrave;o nh&oacute;m</strong></li>\r\n</ul>\r\n<p>=&gt; Khi nháº¥n L&ecirc;n lá»‹ch th&igrave; to&agrave;n bá»™ th&ocirc;ng tin sáº½ Ä‘Æ°á»£c lÆ°u láº¡i tr&ecirc;n há»‡ thá»‘ng, há»‡ thá»‘ng sáº½ thá»±c hiá»‡n c&aacute;c lá»i má»i n&agrave;y khi tá»›i giá».</p>\r\n<p>=&gt; C&oacute; thá»ƒ xem lá»‹ch thá»±c hiá»‡n táº¡i&nbsp;<strong><a href=\"?page=schedules_group&amp;portal=news\" target=\"_blank\">Lá»‹ch thá»±c hiá»‡n nh&oacute;m</a></strong></p>', 1495523961, 2, 10),
(11, 'Tá»± Ä‘á»™ng up top bÃ i viáº¿t', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nh&oacute;m Facebook -&gt; Tá»± Ä‘á»™ng up top b&agrave;i viáº¿t</strong></p>\r\n<p>-&nbsp;Theo cÆ¡ cháº¿ vá» nh&oacute;m cá»§a Facebook, má»—i b&agrave;i Ä‘Äƒng l&ecirc;n Nh&oacute;m sáº½ Ä‘Æ°á»£c hiá»ƒn thá»‹ l&ecirc;n Ä‘áº§u ti&ecirc;n (sau b&agrave;i Ghim)&nbsp;tr&ecirc;n tÆ°á»ng&nbsp;nh&oacute;m, khi c&oacute; 1 b&agrave;i má»›i Ä‘Æ°á»£c Ä‘Äƒng th&igrave; b&agrave;i má»›i sáº½ l&ecirc;n Ä‘áº§u v&agrave; Ä‘áº©y c&aacute;c b&agrave;i xuá»‘ng cÅ© hÆ¡n. Vá»›i c&aacute;c b&agrave;i cÅ© Ä‘&atilde; Ä‘Äƒng tá»« trÆ°á»›c, khi c&oacute; b&igrave;nh luáº­n má»›i th&igrave; b&agrave;i n&agrave;y sáº½ Ä‘Æ°á»£c Facebook l&agrave;m má»›i v&agrave; Ä‘áº©y l&ecirc;n Ä‘áº§u nh&oacute;m.</p>\r\n<p>-&nbsp;Chá»©c nÄƒng Up top sáº½ gi&uacute;p b&agrave;i cá»§a báº¡n kh&ocirc;ng bá»‹ tr&ocirc;i, lu&ocirc;n á»Ÿ tr&ecirc;n Ä‘áº§u cá»§a Nh&oacute;m.</p>\r\n<p><img src=\"upload/news/Help/Screenshot_21.png\" alt=\"\" width=\"800\" height=\"381\" /></p>\r\n<p><strong>BÆ°á»›c 1:</strong> chá»n t&agrave;i khoáº£n Facebook</p>\r\n<p><strong>BÆ°á»›c 2:</strong></p>\r\n<p>+ Nháº­p ID b&agrave;i viáº¿t tr&ecirc;n nh&oacute;m cáº§n up top, náº¿u muá»‘n th&ecirc;m nhiá»u ID th&igrave; nháº¥n Enter sau Ä‘&oacute; nháº­p tiáº¿p ID cá»§a b&agrave;i kh&aacute;c.</p>\r\n<p>+ Náº¿u muá»‘n 1 b&agrave;i Ä‘Æ°á»£c up top nhiá»u láº§n th&igrave; paste ID b&agrave;i, rá»“i nháº¥n Enter paste ID, enter paste ID..</p>\r\n<p><img src=\"upload/news/Help/Screenshot_22.png\" alt=\"\" width=\"800\" height=\"189\" /></p>\r\n<p><strong>BÆ°á»›c 3:</strong> nháº­p ná»™i dung comment</p>\r\n<p><strong>BÆ°á»›c 4:</strong> nháº¥n <strong>Báº¯t Ä‘áº§u </strong>Ä‘á»ƒ l&ecirc;n lá»‹ch comment</p>\r\n<p>=&gt; Äá»ƒ xem láº¡i lá»‹ch comment m&agrave; há»‡ thá»‘ng sáº½ thá»±c hiá»‡n nháº¥n v&agrave;o <a href=\"?page=schedules_group&amp;portal=news\" target=\"_blank\"><strong>Lá»‹ch thá»±c hiá»‡n nh&oacute;m</strong></a> Ä‘á»ƒ xem láº¡i.</p>', 1495523983, 2, 11),
(12, 'Lá»‹ch thá»±c hiá»‡n nhÃ³m', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nh&oacute;m Facebook -&gt; Lá»‹ch thá»±c hiá»‡n nh&oacute;</strong></p>\r\n<p>- Hiá»ƒn thá»‹ danh s&aacute;ch c&aacute;c thao t&aacute;c Ä‘&atilde;&nbsp;Ä‘Æ°á»£c ngÆ°á»i d&ugrave;ng l&ecirc;n lá»‹ch, há»‡ thá»‘ng&nbsp;tá»± Ä‘á»™ng cháº¡y nhÆ°: tá»± Ä‘á»™ng tham gia nh&oacute;m, tá»± Ä‘á»™ng má»i báº¡n b&egrave; v&agrave;o nh&oacute;m, tá»± Ä‘á»™ng up top nh&oacute;m</p>\r\n<p><img src=\"upload/news/Help/Screenshot_23.png\" alt=\"\" width=\"800\" height=\"389\" /></p>\r\n<ul>\r\n<li>Hiá»ƒn thá»‹ chi tiáº¿t t&agrave;i khoáº£n n&agrave;o sáº½ c&oacute; h&agrave;nh Ä‘á»™ng g&igrave; v&agrave;o l&uacute;c máº¥y giá»</li>\r\n<li>Tráº¡ng th&aacute;i cá»§a tá»«ng thao t&aacute;c nhÆ°: Processing, Complete ...</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1495524006, 2, 12),
(13, 'NuÃ´i nick facebook', '', 1495524022, 1, 13),
(14, 'Tá»± Ä‘á»™ng káº¿t báº¡n', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Tá»± Ä‘á»™ng káº¿t báº¡n</strong></p>\r\n<p>- Chá»©c nÄƒng n&agrave;y sáº½ tá»± Ä‘á»™ng gá»­i c&aacute;c lá»i má»i káº¿t báº¡n tá»›i ngÆ°á»i d&ugrave;ng Facebook&nbsp;</p>\r\n<p>- Token cá»§a nick facebook pháº£i full quyá»n (Token full quyá»n c&oacute; dáº¡ng EAAA)</p>\r\n<p><img src=\"upload/news/Help/Screenshot_24.png\" alt=\"\" width=\"800\" height=\"423\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Thá»±c hiá»‡n</strong></p>\r\n<p><strong>- Chá»n t&agrave;i khoáº£n Facebook</strong></p>\r\n<p><strong>- Nháº­p Facebook ID</strong></p>\r\n<ul>\r\n<li>Náº¿u Facebook ID l&agrave; ID ngÆ°á»i d&ugrave;ng th&igrave; c&oacute; thá»ƒ tick chá»n <strong>Báº¡n b&egrave;</strong> Ä‘á»ƒ láº¥y danh s&aacute;ch báº¡n b&egrave; cá»§a ngÆ°á»i n&agrave;y, hoáº·c tich chá»n <strong>NgÆ°á»i theo d&otilde;i</strong> Ä‘á»ƒ láº¥y danh s&aacute;ch ngÆ°á»i theo d&otilde;i cá»§a ngÆ°á»i n&agrave;y</li>\r\n<li>Náº¿u Facebook ID l&agrave; ID cá»§a nh&oacute;m th&igrave; tick chá»n <strong>Th&agrave;nh vi&ecirc;n nh&oacute;m </strong>Ä‘á»ƒ láº¥y danh s&aacute;ch c&aacute;c th&agrave;nh vi&ecirc;n cá»§a nh&oacute;m n&agrave;y.</li>\r\n<li>Náº¿u Facebook ID l&agrave; ID cá»§a b&agrave;i Ä‘Äƒng th&igrave; tick chá»n <strong>B&agrave;i Ä‘Äƒng </strong>Ä‘á»ƒ láº¥y danh s&aacute;ch ngÆ°á»i d&ugrave;ng Ä‘&atilde; like, comment, share b&agrave;i Ä‘Äƒng n&agrave;y</li>\r\n</ul>\r\n<p><strong>- Nháº¥n <img src=\"upload/news/Help/lay-danh-sach.png\" alt=\"\" width=\"126\" height=\"37\" />&nbsp;-&gt; hiá»ƒn thá»‹ danh s&aacute;ch ngÆ°á»i d&ugrave;ng Facebook cáº§n káº¿t báº¡n</strong></p>\r\n<p><img src=\"upload/news/Help/Screenshot_26.png\" alt=\"\" width=\"800\" height=\"344\" /></p>\r\n<p>T&iacute;ch chá»n danh s&aacute;ch ngÆ°á»i d&ugrave;ng cáº§n gá»­i lá»i má»i káº¿t báº¡n</p>\r\n<p><strong>- Äiá»u chá»‰nh khoáº£ng c&aacute;ch thá»i gian giá»¯a 2 láº§n gá»­i lá»i má»i káº¿t báº¡n</strong></p>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_27.png\" alt=\"\" width=\"800\" height=\"55\" /></strong></p>\r\n<p><strong>- Nháº¥n&nbsp;<img src=\"upload/news/Help/bat-dau.png\" alt=\"\" width=\"171\" height=\"54\" />Ä‘á»ƒ thá»±c hiá»‡n gá»­i y&ecirc;u cáº§u káº¿t báº¡n.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>=&gt; Nháº¥n&nbsp;&nbsp;<a href=\"?page=schedules_friend&amp;portal=news\" target=\"_blank\">Lá»‹ch thá»±c hiá»‡n</a>&nbsp;Ä‘á»ƒ xem lá»‹ch thá»±c hiá»‡n c&aacute;c láº§n gá»­i y&ecirc;u cáº§u káº¿t báº¡n.</strong></p>', 1495524035, 2, 14),
(15, 'Káº¿t báº¡n theo list UID', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Káº¿t báº¡n theo list UID</strong></p>\r\n<p>- Chá»©c nÄƒng cho ph&eacute;p tá»± Ä‘á»™ng gá»­i lá»i má»i káº¿t báº¡n tá»›i ngÆ°á»i d&ugrave;ng Facebook theo danh s&aacute;ch c&aacute;c UID Facebook.</p>\r\n<p><img src=\"upload/news/Help/Screenshot_28.png\" alt=\"\" width=\"800\" height=\"408\" /></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n</strong></span></p>\r\n<ul>\r\n<li>Chá»n t&agrave;i khoáº£n Facebook</li>\r\n<li>Nháº­p danh s&aacute;ch c&aacute;c UID ngÆ°á»i d&ugrave;ng, má»—i UID c&aacute;ch nhau bá»Ÿi dáº§u pháº©y (,)</li>\r\n<li>Nháº¥n&nbsp;<img src=\"upload/news/Help/bat-dau.png\" alt=\"\" width=\"171\" height=\"54\" />Ä‘á»ƒ thá»±c hiá»‡n gá»­i lá»i má»i káº¿t báº¡n.</li>\r\n<li>Äiá»u chá»‰nh khoáº£ng c&aacute;ch giá»¯a 2 láº§n gá»­i lá»i má»i káº¿t báº¡n (Thá»i gian c&agrave;ng l&acirc;u th&igrave; tá»· lá»‡ die nick c&agrave;ng tháº¥p)</li>\r\n</ul>\r\n<p><strong>Nháº¥n <a href=\"?page=schedules_friend&amp;portal=news\" target=\"_blank\">Lá»‹ch thá»±c hiá»‡n</a>&nbsp;Ä‘á»ƒ xem lá»‹ch thá»±c hiá»‡n c&aacute;c lá»i má»i káº¿t báº¡n</strong></p>', 1495524072, 2, 15),
(16, 'Tá»± Ä‘á»™ng cháº¥p nháº­n káº¿t báº¡n', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Tá»± Ä‘á»™ng cháº¥p nháº­n káº¿t báº¡n</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p tá»± Ä‘á»™ng Ä‘á»“ng &yacute; l&agrave; báº¡n vá»›i c&aacute;c t&agrave;i khoáº£n Facebook Ä‘&atilde; gá»­i y&ecirc;u cáº§u káº¿t báº¡n.</li>\r\n<li>Äá»ƒ thá»±c hiá»‡n chá»©c nÄƒng n&agrave;y token t&agrave;i khoáº£n facebook pháº£i full quyá»n (Token dáº¡ng EAAA).</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_29.png\" alt=\"\" width=\"800\" height=\"429\" /></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n</strong></span></p>\r\n<ul>\r\n<li>BÆ°á»›c 1: chá»n t&agrave;i khoáº£n Facebook</li>\r\n<li>BÆ°á»›c 2: Tick chá»n v&agrave;o c&aacute;c t&agrave;i khoáº£n Facebook Ä‘á»“ng &yacute; l&agrave; báº¡n</li>\r\n<li>BÆ°á»›c 3: chá»n Ä‘iá»u kiá»‡n Ä‘á»“ng &yacute; káº¿t báº¡n\r\n<ul>\r\n<li>Chá»n Nam/ Ná»¯/ Táº¥t cáº£</li>\r\n<li>Chá»n sá»‘ lÆ°á»£ng báº¡n chung c&oacute; giá»¯a 2 ngÆ°á»i</li>\r\n</ul>\r\n</li>\r\n<li>BÆ°á»›c 4: nháº¥n&nbsp;<img src=\"upload/news/Help/bat-dau.png\" alt=\"\" width=\"171\" height=\"54\" />&nbsp;Ä‘á»ƒ thá»±c hiá»‡n Ä‘á»“ng &yacute; l&agrave; báº¡n.</li>\r\n</ul>\r\n<p><strong>Nháº¥n <a href=\"?page=schedules_friend&amp;portal=news\" target=\"_blank\">Lá»‹ch thá»±c hiá»‡n</a>&nbsp;Ä‘á»ƒ xem láº¡i c&aacute;c thao t&aacute;c Ä‘á»“ng &yacute; káº¿t báº¡n.</strong></p>', 1495524167, 2, 16),
(17, 'Tá»± Ä‘á»™ng há»§y káº¿t báº¡n', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebok -&gt; Tá»± Ä‘á»™ng há»§y káº¿t báº¡n</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p há»§y káº¿t báº¡n vá»›i c&aacute;c t&agrave;i khoáº£n Facebook Ä‘&atilde; l&agrave; báº¡n</li>\r\n<li>Token cá»§a t&agrave;i khoáº£n Facebook pháº£i full quyá»n (Token dáº¡ng EAAA)</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_30.png\" alt=\"\" width=\"800\" height=\"401\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n</strong></span></p>\r\n<ul>\r\n<li>BÆ°á»›c 1: chá»n t&agrave;i khoáº£n Facebook</li>\r\n<li>BÆ°á»›c 2: tich chá»n c&aacute;c t&agrave;i khoáº£n cáº§n há»§y káº¿t báº¡n</li>\r\n<li>BÆ°á»›c 3: nháº¥n&nbsp;<img src=\"upload/news/Help/bat-dau.png\" alt=\"\" width=\"171\" height=\"54\" />&nbsp;Ä‘á»ƒ thá»±c hiá»‡n lá»‡nh há»§y.</li>\r\n</ul>\r\n<p><strong>Xem láº¡i nháº­t k&yacute; thá»±c hiá»‡n c&aacute;c lá»‡nh há»§y káº¿t báº¡n&nbsp;<a href=\"?page=schedules_friend&amp;portal=news\" target=\"_blank\">táº¡i Ä‘&acirc;y</a></strong></p>', 1495524182, 2, 17),
(18, 'Copy bÃ i lÃªn trang cÃ¡ nhÃ¢n', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Copy b&agrave;i l&ecirc;n trang c&aacute; nh&acirc;n</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p Ä‘Äƒng ná»™i dung(text, h&igrave;nh áº£nh, video, album áº£nh ...) &nbsp;tá»« 1 b&agrave;i Ä‘Äƒng cá»§a ngÆ°á»i kh&aacute;c l&ecirc;n tÆ°á»ng.</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_1_2.png\" alt=\"\" width=\"800\" height=\"438\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n</strong></span></p>\r\n<p>- BÆ°á»›c 1: chá»n t&agrave;i khoáº£n Facebook Ä‘á»ƒ láº¥y b&agrave;i Ä‘Äƒng</p>\r\n<p>- BÆ°á»›c 2: nháº­p ID b&agrave;i Ä‘Äƒng</p>\r\n<p>- BÆ°á»›c 3: náº¿u ID b&agrave;i Ä‘Äƒng á»Ÿ dáº¡ng</p>\r\n<ul>\r\n<li>Status th&igrave; click v&agrave;o Status</li>\r\n<li>áº¢nh th&igrave; click v&agrave;o áº¢nh</li>\r\n<li>Video th&igrave; click v&agrave;o Video</li>\r\n<li>ALbum th&igrave; click v&agrave;o ALbum</li>\r\n</ul>\r\n<p>- BÆ°á»›c 4: Sá»­a ná»™i dung cáº§n Ä‘Äƒng</p>\r\n<p>- BÆ°á»›c 5: Tick chá»n t&agrave;i khoáº£n Facebook sáº½ Ä‘Äƒng l&ecirc;n</p>\r\n<p><img src=\"upload/news/Help/Screenshot_2_2.png\" alt=\"\" width=\"800\" height=\"243\" /></p>\r\n<p>- BÆ°á»›c 6: nháº¥n&nbsp;<img src=\"upload/news/Help/dang-bai.png\" alt=\"\" width=\"99\" height=\"54\" />&nbsp;Ä‘á»ƒ Ä‘Äƒng b&agrave;i n&agrave;y l&ecirc;n TÆ°á»ng trang c&aacute; nh&acirc;n.</p>\r\n<p><strong>Äá»ƒ xem lá»‹ch thá»±c hiá»‡n Ä‘Äƒng b&agrave;i&nbsp;<a href=\"?page=schedules&amp;portal=news\" target=\"_blank\">nháº¥n v&agrave;o Ä‘&acirc;y</a></strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1495524215, 2, 18),
(19, 'Tá»± Ä‘á»™ng láº¥y bÃ i Ä‘Äƒng cá»§a ngÆ°á»i khÃ¡c', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Tá»± Ä‘á»™ng láº¥y b&agrave;i Ä‘Äƒng cá»§a ngÆ°á»i kh&aacute;c</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p Ä‘Äƒng nhiá»u b&agrave;i viáº¿t (status/h&igrave;nh áº£nh/album áº£nh/video..) tá»« 1 nick facebook kh&aacute;c (Clone ná»™i dung).</li>\r\n</ul>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_3_3.png\" alt=\"\" width=\"800\" height=\"444\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n:</strong></span></p>\r\n<ul>\r\n<li>BÆ°á»›c 1: chá»n t&agrave;i khoáº£n Facebook</li>\r\n<li>BÆ°á»›c 2: nháº­p ID &nbsp;ngÆ°á»i cáº§n láº¥y b&agrave;i</li>\r\n<li>BÆ°á»›c 3: Tick chá»n ná»™i dung cáº§n láº¥y (láº¥y status/ láº¥y link ...)</li>\r\n<li>BÆ°á»›c 4: Äiá»u chá»‰nh giá»›i háº¡n sá»‘ lÆ°á»£ng b&agrave;i Ä‘Äƒng tr&ecirc;n 1 ng&agrave;y</li>\r\n<li>BÆ°á»›c 5: nháº¥n&nbsp;<img src=\"upload/news/Help/len-lich.png\" alt=\"\" width=\"169\" height=\"52\" />&nbsp;Ä‘á»ƒ thá»±c hiá»‡n.</li>\r\n</ul>\r\n<p><strong>=&gt; Äá»ƒ xem lá»‹ch&nbsp;Ä‘Äƒng b&agrave;i&nbsp;<a href=\"?page=schedules&amp;portal=news\" target=\"_blank\">nháº¥n v&agrave;o Ä‘&acirc;y</a></strong></p>', 1495524234, 2, 19),
(20, 'Lá»‹ch thá»±c hiá»‡n', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i nick Facebook -&gt; Lá»‹ch thá»±c hiá»‡n</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y hiá»ƒn thá»‹ lá»‹ch sá»­ thá»±c hiá»‡n(c&aacute;c y&ecirc;u cáº§u káº¿t báº¡n, há»§y káº¿t báº¡n, Ä‘á»“ng &yacute; káº¿t báº¡n ...) cá»§a c&aacute;c nick Facebook&nbsp;</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_4_1.png\" alt=\"\" width=\"800\" height=\"319\" /></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Hiá»ƒn thá»‹ chi tiáº¿t t&agrave;i khoáº£n Facebook n&agrave;o sáº½ thá»±c hiá»‡n thao t&aacute;c g&igrave; v&agrave;o thá»i gian n&agrave;o</li>\r\n<li>Hiá»ƒn thá»‹ tráº¡ng th&aacute;i káº¿t quáº£ c&aacute;c láº§n thá»±c hiá»‡n\r\n<ul>\r\n<li>Processing: thao t&aacute;c Ä‘ang chá» xá»­ l&yacute;</li>\r\n<li>Complete: thao t&aacute;c Ä‘&atilde; thá»±c hiá»‡n th&agrave;nh c&ocirc;ng</li>\r\n<li>Failure: thao t&aacute;c thá»±c hiá»‡n lá»—i, di chá»™t v&agrave;o sáº½ hiá»ƒn thá»‹ th&ocirc;ng b&aacute;o lá»—i.</li>\r\n</ul>\r\n</li>\r\n</ul>', 1495524246, 2, 20),
(21, 'NuÃ´i Page Facebook', '', 1495524319, 1, 21),
(22, 'Tá»± Ä‘á»™ng láº¥y bÃ i Ä‘Äƒng cá»§a page khÃ¡c', '<p><strong>Tá»« Menu -&gt; Nu&ocirc;i Page Facebook -&gt; Tá»± Ä‘á»™ng láº¥y b&agrave;i Ä‘Äƒng cá»§a page kh&aacute;c</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p tá»± Ä‘á»™ng Ä‘Äƒng&nbsp;status/áº¢nh/video/Link... l&ecirc;n Fanpage. Táº¥t cáº£ ná»™i dung Ä‘Æ°á»£c láº¥y tá»« 1 page kh&aacute;c (Clone Page)</li>\r\n<li>T&agrave;i khoáº£n Facebook pháº£i quáº£n l&yacute; (c&oacute; quyá»n admin hoáº·c bi&ecirc;n táº­p vi&ecirc;n) &iacute;t nháº¥t 1 fanpage</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_5_2.png\" alt=\"\" width=\"800\" height=\"458\" /></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n:</strong></span></p>\r\n<ul>\r\n<li>BÆ°á»›c 1: Chá»n t&agrave;i khoáº£n facebook</li>\r\n<li>BÆ°á»›c 2: Chá»n Fanpage cáº§n Ä‘Äƒng b&agrave;i</li>\r\n<li>BÆ°á»›c 3: Nháº­p ID fanpage cáº§n láº¥y ná»™i dung</li>\r\n<li>BÆ°á»›c 4: Ä‘iá»u chá»‰nh giá»›i háº¡n sá»‘ lÆ°á»£ng b&agrave;i Ä‘Äƒng trong 1 ng&agrave;y</li>\r\n<li>BÆ°á»›c 5: Tick chá»n loáº¡i dá»¯ liá»‡u cáº§n láº¥y (Status/Link/áº¢nh/Video)</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/len-lich.png\" alt=\"\" width=\"169\" height=\"52\" />Ä‘á»ƒ há»‡ thá»‘ng tá»± Ä‘á»™ng láº¥y c&aacute;c b&agrave;i tá»« ID page Ä‘Äƒng l&ecirc;n Page Ä‘Æ°á»£c chá»n</p>\r\n<p><strong>Äá»ƒ xem lá»‹ch thá»±c hiá»‡n vui l&ograve;ng <a href=\"?page=schedules_group&amp;portal=news\" target=\"_blank\">nháº¥n v&agrave;o Ä‘&acirc;y</a>.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1495524392, 2, 22),
(23, 'Tool facebook', '', 1495524448, 1, 23),
(24, 'Get token hÃ ng loáº¡t', '<p><strong>Tá»« Menu -&gt; Tool Facebook -&gt; Get token h&agrave;ng loáº¡t</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p láº¥y Token full quyá»n cá»§a nhiá»u t&agrave;i khoáº£n Facebook c&ugrave;ng l&uacute;c.</li>\r\n<li>Token káº¿t quáº£&nbsp;l&agrave; token full quyá»n c&oacute; dáº¡ng EAAA</li>\r\n</ul>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_6_1.png\" alt=\"\" width=\"800\" height=\"320\" /></strong></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n:</strong></span></p>\r\n<ul>\r\n<li>Nháº­p danh s&aacute;ch nick facebook c&oacute; dáº¡ng email(sá»‘ Ä‘iá»‡n thoáº¡i)|máº­t kháº©u</li>\r\n<li>Má»—i nick tr&ecirc;n 1 d&ograve;ng, nháº¥n enter Ä‘á»ƒ xuá»‘ng d&ograve;ng</li>\r\n<li>Chá»n á»©ng dá»¥ng cáº§n láº¥y (Iphone/IOS/Manager Page)</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_7_2.png\" alt=\"\" width=\"138\" height=\"43\" />Ä‘á»ƒ tiá»n h&agrave;nh láº¥y Token cá»§a danh s&aacute;ch Nick</p>\r\n<p>=&gt;&nbsp;Chá» 1 l&aacute;t Ä‘á»ƒ há»‡ thá»‘ng thá»±c hiá»‡n, káº¿t quáº£ tráº£ vá» l&agrave; danh s&aacute;ch token cá»§a c&aacute;c nick Facebook, má»—i token tÆ°Æ¡ng á»©ng vá»›i 1 nick Facebook. Má»—i d&ograve;ng token tÆ°Æ¡ng á»©ng vá»›i 1 nick Facebook</p>', 1495524462, 2, 24),
(25, 'Fake link facebook', '<p><strong>Tá»« Menu -&gt; Tool Facebook -&gt; Fake link Facebook</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p thay tháº¿&nbsp;1 link bá»Ÿi 1 link kh&aacute;c.&nbsp;</li>\r\n<li>Khi chia sáº» l&ecirc;n Facebook, con bot cá»§a Facebook sáº½ qu&eacute;t ra 1 link, nhÆ°ng khi ngÆ°á»i d&ugrave;ng tá»« m&aacute;y t&iacute;nh/Ä‘iá»‡n thoáº¡i click v&agrave;o sáº½ ra 1 link kh&aacute;c.</li>\r\n<li>Chá»©c nÄƒng n&agrave;y c&oacute; thá»ƒ chia sáº» l&ecirc;n Facebook c&aacute;c link Ä‘&atilde; bá»‹ Facebook cháº·n</li>\r\n</ul>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_8_3.png\" alt=\"\" width=\"800\" height=\"328\" /></strong></p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n:&nbsp;</strong></span></p>\r\n<ul>\r\n<li>Nháº­p link hiá»ƒn thá»‹ khi Facebook qu&eacute;t</li>\r\n<li>Nháº­p link chuyá»ƒn Ä‘áº¿n khi ngÆ°á»i d&ugrave;ng click tá»« m&aacute;y t&iacute;nh</li>\r\n<li>Nháº­p link chuyá»ƒn Ä‘áº¿n khi ngÆ°á»i d&ugrave;ng click tá»« Ä‘iá»‡n thoáº¡i</li>\r\n<li>Chá»n t&ecirc;n miá»n chuyá»ƒn trung gian</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_9_3.png\" alt=\"\" width=\"163\" height=\"47\" />Ä‘á»ƒ lÆ°u láº¡i th&ocirc;ng tin.</p>\r\n<p>=&gt;&nbsp;Sau khi nháº¥n Ghi láº¡i th&igrave; 1 link má»›i sáº½ Ä‘Æ°á»£c táº¡o á»Ÿ pháº§n danh s&aacute;ch Link fake Ä‘&atilde; th&ecirc;m</p>\r\n<p><img src=\"upload/news/Help/Screenshot_10_2.png\" alt=\"\" width=\"800\" height=\"373\" /></p>\r\n<p>Copy link á»Ÿ trong &ocirc;&nbsp;<img src=\"upload/news/Help/Screenshot_11_1.png\" alt=\"\" width=\"568\" height=\"38\" />&nbsp;Ä‘i chia sáº» l&ecirc;n Facebook.</p>\r\n<p><img src=\"upload/news/Help/Screenshot_12_2.png\" alt=\"\" width=\"517\" height=\"547\" /></p>\r\n<p><strong>=&gt; Trong qu&aacute; tr&igrave;nh láº¥y link chia sáº» l&ecirc;n Facebook, náº¿u ná»™i dung hiá»ƒn thá»‹ kh&ocirc;ng Ä‘&uacute;ng nhÆ° mong muá»‘n th&igrave;<a href=\"https://developers.facebook.com/tools/debug/\" target=\"_blank\"> nháº¥n v&agrave;o Ä‘&acirc;y</a> Ä‘á»ƒ x&oacute;a cache facebook.</strong></p>', 1495524486, 2, 25),
(26, 'Seeding like', '<p><strong>Tá»« Menu -&gt; Tool Facebook -&gt; Seeding Like</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p sá»­ dá»¥ng to&agrave;n bá»™ t&agrave;i khoáº£n Facebook Ä‘&atilde; th&ecirc;m Ä‘á»ƒ like 1 b&agrave;i viáº¿t/ 1 fanpage/ 1 ná»™i dung báº¥t ká»³</li>\r\n<li>Tá»•ng sá»‘ like c&oacute; thá»ƒ nháº­n Ä‘Æ°á»£c báº±ng sá»‘ nick Facebook th&ecirc;m trong pháº§n&nbsp;<strong><a href=\"?page=facebook_accounts&amp;portal=news\" target=\"_blank\">T&agrave;i khoáº£n Facebook</a></strong></li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_13_2.png\" alt=\"\" width=\"800\" height=\"211\" /></p>\r\n<p><strong><span style=\"text-decoration: underline;\">Thá»±c hiá»‡n:</span></strong></p>\r\n<ul>\r\n<li>Chá»n sá»‘ lÆ°á»£ng like cáº§n Seeding (Sá»‘ lÆ°á»£ng lu&ocirc;n &lt; sá»‘ lÆ°á»£ng t&agrave;i khoáº£n Facebook Ä‘&atilde; th&ecirc;m)</li>\r\n<li>Nháº­p ID status/ Fanpage ..</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_14_2.png\" alt=\"\" width=\"120\" height=\"53\" />&nbsp;Ä‘á»ƒ thá»±c hiá»‡n.</p>\r\n<p>=&gt; Chá» 1 l&uacute;c -&gt; sáº½ hiá»ƒn thá»‹ káº¿t quáº£ sá»‘ like thá»±c hiá»‡n Ä‘Æ°á»£c.</p>', 1495524500, 2, 26),
(27, 'Seeding Comment', '<p><strong>Tá»« menu -&gt; Tool Facebook -&gt; Seeding comment</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p láº¥y to&agrave;n bá»™ sá»‘ t&agrave;i khoáº£n Facebook Ä‘&atilde; th&ecirc;m Ä‘i comment 1 b&agrave;i viáº¿t.</li>\r\n<li>Sá»‘ lÆ°á»£ng comment phá»¥ thuá»™c v&agrave;o sá»‘&nbsp;<a href=\"?page=facebook_accounts&amp;portal=news\" target=\"_blank\">t&agrave;i khoáº£n Facebook Ä‘&atilde; th&ecirc;m</a></li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_15_2.png\" alt=\"\" width=\"800\" height=\"386\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"text-decoration: underline;\">Thá»±c hiá»‡n:</span></strong></p>\r\n<ul>\r\n<li>Nháº­p ná»™i dung comment</li>\r\n<li>Chá»n sá»‘ lÆ°á»£ng seeding</li>\r\n<li>Nháº­p ID b&agrave;i viáº¿t cáº§n comment</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_16_1.png\" alt=\"\" width=\"151\" height=\"45\" />&nbsp;Ä‘á»ƒ thá»±c hiá»‡n</p>\r\n<p>=&gt; Chá» 1 l&uacute;c Ä‘á»ƒ tool cháº¡y, cháº¡y xong sáº½ hiá»ƒn thá»‹ káº¿t quáº£ sá»‘ comment thá»±c hiá»‡n Ä‘Æ°á»£c.</p>', 1495524514, 2, 27),
(28, 'NÃ¢ng cáº¥p tÃ i khoáº£n', '<p><strong>Tá»« Menu -&gt; N&acirc;ng cáº¥p t&agrave;i khoáº£n</strong></p>\r\n<ul>\r\n<li>Vá»›i má»—i 1 ngÆ°á»i d&ugrave;ng khi Ä‘Äƒng k&yacute; sáº½ Ä‘Æ°á»£c d&ugrave;ng thá»­ 3 ng&agrave;y, v&agrave; Ä‘Æ°á»£c th&ecirc;m 3 nick Facebook.</li>\r\n<li>Sau thá»i gian 3 ng&agrave;y t&agrave;i khoáº£n sáº½ kh&ocirc;ng Ä‘Äƒng nháº­p Ä‘Æ°á»£c. Äá»ƒ sá»­ dá»¥ng l&acirc;u hÆ¡n/ th&ecirc;m nhiá»u t&agrave;i khoáº£n Facebook hÆ¡n&nbsp;cáº§n n&acirc;ng cáº¥p t&agrave;i khoáº£n.</li>\r\n</ul>\r\n<p><img src=\"upload/news/Help/Screenshot_18_1.png\" alt=\"\" width=\"800\" height=\"397\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Má»i&nbsp;tháº¯c máº¯c h&atilde;y li&ecirc;n há»‡ vá»›i Admin theo hotline&nbsp;<span style=\"color: #ff0000;\">0969 857 408</span> Ä‘á»ƒ Ä‘Æ°á»£c há»— trá»£ nhanh nháº¥t.</strong></p>', 1495524547, 2, 29),
(29, 'Äá»•i máº­t kháº©u', '<p><strong>Tá»« Menu -&gt; Äá»•i máº­t kháº©u</strong></p>\r\n<ul>\r\n<li>Chá»©c nÄƒng n&agrave;y cho ph&eacute;p Ä‘á»•i th&ocirc;ng tin ngÆ°á»i d&ugrave;ng\r\n<ul>\r\n<li>T&ecirc;n ngÆ°á»i d&ugrave;ng</li>\r\n<li>Máº­t kháº©u sá»­ dá»¥ng</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong><img src=\"upload/news/Help/Screenshot_17_1.png\" alt=\"\" width=\"579\" height=\"575\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Thá»±c hiá»‡n:</strong></span></p>\r\n<ul>\r\n<li>Sá»­a láº¡i t&ecirc;n ngÆ°á»i d&ugrave;ng</li>\r\n<li>Nháº­p máº­t kháº©u má»›i</li>\r\n<li>Nháº­p láº¡i máº­t kháº©u</li>\r\n</ul>\r\n<p>=&gt; Nháº¥n&nbsp;<img src=\"upload/news/Help/Screenshot_15.png\" alt=\"\" width=\"76\" height=\"47\" />Ä‘á»ƒ cáº­p nháº­t th&ocirc;ng tin.</p>', 1495524558, 2, 30),
(30, 'Chá»©c nÄƒng ngÆ°á»i dÃ¹ng', '', 1495524643, 1, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_inbox`
--

CREATE TABLE `facebook_inbox` (
  `id` int(11) NOT NULL,
  `account_id` varchar(50) NOT NULL,
  `account_name` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_payment`
--

CREATE TABLE `facebook_payment` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `total` double NOT NULL,
  `bank` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_schedules`
--

CREATE TABLE `facebook_schedules` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `group_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `message` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `image` text,
  `caption` varchar(255) DEFAULT NULL,
  `time_post` datetime DEFAULT NULL,
  `time_post_show` datetime DEFAULT NULL,
  `delete_post` int(1) DEFAULT '0',
  `deplay` int(11) DEFAULT NULL,
  `repeat_post` int(1) DEFAULT '0',
  `repeat_time` int(11) DEFAULT NULL,
  `repeat_end` date DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `message_error` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_schedules_friend`
--

CREATE TABLE `facebook_schedules_friend` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message_error` text,
  `created` datetime DEFAULT NULL,
  `time_post_show` datetime NOT NULL,
  `uid` varchar(50) NOT NULL,
  `uid_name` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_schedules_group`
--

CREATE TABLE `facebook_schedules_group` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message_error` text,
  `created` datetime DEFAULT NULL,
  `time_post_show` datetime NOT NULL,
  `uid` varchar(50) NOT NULL,
  `uid_name` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `groupid` varchar(50) NOT NULL,
  `group_name` varchar(500) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_token`
--

CREATE TABLE `facebook_token` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `token` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_upgrade_account`
--

CREATE TABLE `facebook_upgrade_account` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `account_quantity` int(11) NOT NULL,
  `month_quantity` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total_price` double NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `function`
--

CREATE TABLE `function` (
  `id` int(11) NOT NULL,
  `name_1` varchar(255) NOT NULL,
  `description_1` text NOT NULL,
  `structure_id` bigint(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `group_name_1` varchar(200) NOT NULL,
  `action` tinytext NOT NULL,
  `extend` varchar(250) NOT NULL,
  `module_id` int(11) NOT NULL,
  `extra` varchar(250) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `column` int(11) NOT NULL,
  `portal_id` varchar(250) NOT NULL,
  `is_parent` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `function`
--

INSERT INTO `function` (`id`, `name_1`, `description_1`, `structure_id`, `image_url`, `icon_url`, `url`, `status`, `group_name_1`, `action`, `extend`, `module_id`, `extra`, `public`, `column`, `portal_id`, `is_parent`) VALUES
(1, 'C??c ch?»©c nÄ?ng qu??£n tr?»? h?»? th?»?ng', '', 1000000000000000000, '', '', '', '', '', '', '', 17, '0', 1, 0, '#news', 0),
(383, 'Nh??­t k?½ truy c??­p', '', 1190600000000000000, '', 'upload/default/icon//clock-history-frame.png', '?page=log', '', '', '', '', 15, '0', 0, 0, '#news', 0),
(382, 'Qu??£n l?½ c???u h?¬nh', '', 1190400000000000000, '', 'upload/default/icon//scissors--plus.png', '?page=setting', '', '', '', '', 208, '0', 0, 0, '#news', 0),
(353, 'H?»? th?»?ng', '', 1190000000000000000, '', '', '', '', '', '', '', 19, '0', 0, 0, '#news', 1),
(2212, 'Qu??£n l?½ SEO', '', 1190500000000000000, '', '', '?page=seo', '', '', '', '', 281, '', 1, 0, '#news', 0),
(2282, 'Qu??£n tr?»? ngÆ°?»i d?¹ng', '', 1160000000000000000, '', '', '', '', '', '', '', 134, '', 1, 0, '#news', 0),
(733, 'Qu??£n tr?»? n?»?i dung', '', 1010000000000000000, '', '', '', '', '', '', '', 32, '', 1, 0, '#news', 0),
(2260, 'Qu??£n l?½ danh s??ch tin t?»©c', '', 1010200000000000000, '', '', '?page=news_admin', '', '', '', '', 32, '', 1, 0, '#news', 0),
(2259, 'Qu??£n l?½ danh m?»?c', '', 1010100000000000000, '', '', '?page=portal_category&type=NEWS', '', '', '', '', 29, '', 1, 0, '#news', 0),
(1610, 'Th?¹ng r??c', '', 1191100000000000000, '', '', '?page=recycle_bin', '', '', '', '', 228, '', 0, 0, '#news', 0),
(2292, 'Danh s??ch ngÆ°?»i d?¹ng', '', 1160100000000000000, '', '', '?page=user_admin', '', '', '', '', 134, '', 1, 0, '#news', 0),
(2314, 'Ph?¢n quy?»n ngÆ°?»i d?¹ng', '', 1160400000000000000, '', '', '?page=grant_privilege', '', '', '', '', 205, '', 1, 0, '#news', 0),
(2315, 'Qu??£n l?½ nh?³m quy?»n', '', 1160300000000000000, '', '', '?page=department_admin', '', '', '', '', 384, '', 1, 0, '#news', 0),
(2350, 'Danh s??ch qu??£ng c??o', '', 1010400000000000000, '', '', '?page=advertisment_admin', '', '', '', '', 36, '', 1, 0, '#news', 0),
(2351, 'C???m qu??£ng c??o', '', 1010600000000000000, '', '', '?page=manage_advertisment', '', '', '', '', 37, '', 1, 0, '#news', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon_url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `code`, `name`, `icon_url`) VALUES
(1, 'VN', 'Ti???ng Vi?»?t', 'upload/default/icon//vn_flag.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log`
--

CREATE TABLE `log` (
  `id` int(10) NOT NULL,
  `portal_id` varchar(20) NOT NULL DEFAULT '0',
  `parameter` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `log`
--

INSERT INTO `log` (`id`, `portal_id`, `parameter`, `user_id`, `time`, `type`, `description`, `module_id`, `title`, `note`) VALUES
(1, '0', '', 'guest', 1498733798, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', ''),
(2, '0', '', 'guest', 1498733857, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', ''),
(3, '0', '', 'guest', 1498733858, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', ''),
(4, '0', '', 'guest', 1498733858, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', ''),
(5, '0', '', 'guest', 1498733859, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', ''),
(6, '0', '', 'guest', 1498733859, 'MYSQL', '<font face=\"Courier New,Courier\" size=2>fetch_all(<pre>array (\n  0 => \'select facebook_bot.id,facebook_bot.message,facebook_bot.time_post_show,facebook_accounts.access_token from facebook_bot inner join facebook_accounts.id = facebook_bot.account_id where', 1387, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'.account_id where facebook_bot.type=1 and facebook_bot.time_post_show<=\"2017-06-\' at line 1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module`
--

CREATE TABLE `module` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `package_id` int(20) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `use_dblclick` tinyint(4) NOT NULL DEFAULT '0',
  `title_1` varchar(255) NOT NULL DEFAULT '',
  `description_1` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `layout` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_module_id` int(11) NOT NULL,
  `update_setting_code` text NOT NULL,
  `create_block_code` text NOT NULL,
  `destroy_block_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `module`
--

INSERT INTO `module` (`id`, `name`, `package_id`, `path`, `use_dblclick`, `title_1`, `description_1`, `type`, `code`, `layout`, `image_url`, `action`, `action_module_id`, `update_setting_code`, `create_block_code`, `destroy_block_code`) VALUES
(1, 'PageAdmin', 2, 'packages/core/modules/PageAdmin/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(2, 'EditPage', 2, 'packages/core/modules/EditPage/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(3, 'ModuleAdmin', 2, 'packages/core/modules/ModuleAdmin/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(4, 'PackageAdmin', 2, 'packages/core/modules/PackageAdmin/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(5, 'ModuleSetting', 2, 'packages/core/modules/ModuleSetting/', 0, 'C???u h?¬nh module', '', '', '', '', '', '', 0, '', '', ''),
(6, 'BlockSetting', 2, 'packages/core/modules/BlockSetting/', 0, 'C???u h?¬nh Block', '', '', '', '', '', '', 0, '', '', ''),
(7, 'PackageWord', 2, 'packages/core/modules/PackageWord/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(40, 'Banner', 4, 'packages/frontend/modules/Banner/', 0, 'Banner', '', '', '', '', '', '', 0, '', '', ''),
(42, 'Frame', 4, 'packages/frontend/modules/Frame/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(45, 'Advertisment', 4, 'packages/frontend/modules/Advertisment/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(103, 'SignOut', 5, 'packages/user/modules/SignOut/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(104, 'SignIn', 5, 'packages/user/modules/SignIn/', 0, 'ÄÄ?ng nh??­p', '', '', '', '', '', '', 0, '', '', ''),
(134, 'UserAdmin', 5, 'packages/user/modules/UserAdmin/', 0, 'Qu??£n l?½ ngÆ°?»i d?¹ng', '', '', '', '', '', '', 0, '', '', ''),
(205, 'Moderator', 5, 'packages/user/modules/Moderator/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(209, 'PersonalAdmin', 5, 'packages/user/modules/PersonalAdmin/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(308, 'Html', 4, 'packages/frontend/modules/Html/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(315, 'MenuList', 4, 'packages/frontend/modules/MenuList/', 0, 'MenuList', '', '', '', '', '', '', 0, '', '', ''),
(403, 'LoginAdmin', 5, 'packages/user/modules/LoginAdmin/', 0, 'LoginAdmin', '', '', '', '', '', '', 0, '', '', ''),
(418, 'IntroHome', 4, 'packages/frontend/modules/IntroHome/', 0, 'IntroHome', '', '', '', '', '', '', 0, '', '', ''),
(447, 'Dashboard', 4, 'packages/frontend/modules/Dashboard/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(448, 'FacebookAccount', 4, 'packages/frontend/modules/FacebookAccount/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(449, 'SchedulesPost', 4, 'packages/frontend/modules/SchedulesPost/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(450, 'SavePost', 4, 'packages/frontend/modules/SavePost/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(451, 'UserManagement', 4, 'packages/frontend/modules/UserManagement/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(452, 'UserSetting', 4, 'packages/frontend/modules/UserSetting/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(453, 'Profile', 4, 'packages/frontend/modules/Profile/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(454, 'AutoMakeFriend', 4, 'packages/frontend/modules/AutoMakeFriend/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(455, 'SchedulesFriend', 4, 'packages/frontend/modules/SchedulesFriend/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(456, 'AutoAcceptFriend', 4, 'packages/frontend/modules/AutoAcceptFriend/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(457, 'AutoCancelFriend', 4, 'packages/frontend/modules/AutoCancelFriend/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(458, 'AddMemGroup', 4, 'packages/frontend/modules/AddMemGroup/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(459, 'GetAccessToken', 4, 'packages/frontend/modules/GetAccessToken/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(460, 'JoinGroup', 4, 'packages/frontend/modules/JoinGroup/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(461, 'SchedulesGroup', 4, 'packages/frontend/modules/SchedulesGroup/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(462, 'GetAccessTokenAll', 4, 'packages/frontend/modules/GetAccessTokenAll/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(463, 'BuffLike', 4, 'packages/frontend/modules/BuffLike/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(464, 'BuffComment', 4, 'packages/frontend/modules/BuffComment/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(465, 'UpTopGroup', 4, 'packages/frontend/modules/UpTopGroup/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(466, 'MessageInbox', 4, 'packages/frontend/modules/MessageInbox/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(467, 'FakeLinkFacebook', 4, 'packages/frontend/modules/FakeLinkFacebook/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(469, 'MakeFriendByUID', 4, 'packages/frontend/modules/MakeFriendByUID/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(470, 'AutoLechProfile', 4, 'packages/frontend/modules/AutoLechProfile/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(471, 'UpgradeManagement', 4, 'packages/frontend/modules/UpgradeManagement/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(472, 'AutoLechPage', 4, 'packages/frontend/modules/AutoLechPage/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(473, 'AutoLechById', 4, 'packages/frontend/modules/AutoLechById/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(474, 'HelpMenu', 4, 'packages/frontend/modules/HelpMenu/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(475, 'HelpContent', 4, 'packages/frontend/modules/HelpContent/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(476, 'HelpAdmin', 4, 'packages/frontend/modules/HelpAdmin/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(477, 'JoinGroupByUID', 4, 'packages/frontend/modules/JoinGroupByUID/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(478, 'MakeMoney', 4, 'packages/frontend/modules/MakeMoney/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(479, 'Payment', 4, 'packages/frontend/modules/Payment/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(480, 'AutoReaction', 4, 'packages/frontend/modules/AutoReaction/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(481, 'AutoComment', 4, 'packages/frontend/modules/AutoComment/', 0, '', '', '', '', '', '', '', 0, '', '', ''),
(482, 'AutoReactionPage', 4, 'packages/frontend/modules/AutoReactionPage/', 0, '', '', '', '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_setting`
--

CREATE TABLE `module_setting` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `style` tinyint(4) NOT NULL,
  `default_value` text NOT NULL,
  `value_list` text NOT NULL,
  `edit_condition` text NOT NULL,
  `view_condition` text NOT NULL,
  `extend` text NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `meta` text NOT NULL,
  `group_column` tinyint(4) NOT NULL,
  `update_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `module_setting`
--

INSERT INTO `module_setting` (`id`, `name`, `description`, `module_id`, `type`, `style`, `default_value`, `value_list`, `edit_condition`, `view_condition`, `extend`, `group_name`, `position`, `meta`, `group_column`, `update_code`) VALUES
('42_extra_css_bound', 'Css bao ngo? i m?»? r?»?ng', '', 42, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 6, '', 1, ''),
('42_extra_css_title', 'Css ti??u Ä??»', '', 42, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 7, '', 0, ''),
('42_frame_icon_title', '??¢nh icon', '', 42, 'IMAGE', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('42_frame_skin_template', 'Giao di?»?n khung', '', 42, 'SELECT', 0, 'skins/vccr/Frame/skins/', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Frame/skins\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('42_frame_template', 'M??«u khung', '', 42, 'SELECT', 0, 'skins/vccr/templates/Frame/layouts/default', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Frame/layouts\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('42_frame_title_link', 'Link c?»§a title', '', 42, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('42_title', 'Ti??u Ä??»', '', 42, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('42_title_category', 'Ti??u Ä??»? theo danh m?»?c', '', 42, 'SELECT', 0, '0', '$this->options = array(\'0\'=>\'NO\',\'1\'=>\'YES\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 0, ''),
('45_cache', 'Cache', '', 45, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Cache', 1, '', 1, ''),
('45_extend_css', 'Css m?»? r?»?ng', '', 45, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 10, '', 1, ''),
('45_frame_skin_template', 'Giao di?»?n khung', '', 45, 'SELECT', 0, 'skins/vccr/Frame/skins/', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = array(\'\')+get_template(\'templates/Frame/skins\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('45_frame_template', 'M??«u khung', '', 45, 'SELECT', 0, 'skins/vccr/templates/Frame/layouts/default', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = array(\'\')+get_template(\'templates/Frame/layouts\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 6, '', 1, ''),
('45_internal_css', 'Css ??£nh qu??£ng c??o', '', 45, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 7, '', 1, ''),
('45_layout_template', 'M??«u layout', '', 45, 'SELECT', 0, 'skins/vnnay/templates/Advertisment/layouts/default', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Advertisment/layouts\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('45_limit', 'S?»? qu??£ng c??o', '', 45, 'INT', 0, '5', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 8, '', 1, ''),
('45_manage_link_extra', 'Css m?»? r?»?ng c?»§a link qu??£n tr?»?', '', 45, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 11, '', 1, ''),
('45_skin_template', 'M??«u giao di?»?n', '', 45, 'SELECT', 0, 'skins/vnnay/templates/Advertisment/skins/default', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Advertisment/skins\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('45_title', 'Ti??u Ä??»', '', 45, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('132_property_value_number', 'S?»? lÆ°?»£ng b??£n ghi gi?? tr?»? thu?»?c t?­nh hi?»?n th?»?', '', 132, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 0, '', 0, ''),
('157_columns', 'C??c c?»?t', '', 157, 'TEXTAREA', 0, 'Column1,Column2', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('157_table_css', 'Css c?»§a b??£ng', '', 157, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('164_cache', 'Cache', '', 164, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'cache', 1, '', 1, ''),
('164_frame_skin_template', 'Giao di?»?n khung', '', 164, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options =  get_template(\'templates/Frame/skins\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('164_frame_template', 'M??«u khung', '', 164, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Frame/layouts\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('164_layout_template', 'M??«u layout', '', 164, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/SignIn/layouts\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('164_skin_template', 'M??«u giao di?»?n', '', 164, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/SignIn/skins\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('165_item_per_page', 'S?»? b??£n ghi', '', 165, 'INT', 0, '5', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('165_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 165, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('171_category_cascade', 'Hi?»?n th?»? c??£ danh m?»?c con', '', 171, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 5, '', 1, ''),
('171_cache', 'LÆ°u cache', '', 171, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Cache', 1, '', 1, ''),
('171_category_id', 'Danh m?»?c', '', 171, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = array(\'\'=>\'All\',\'current\'=>\'Current\')+String::get_list(DB::fetch_all(\'select id, structure_id, name_\'.Portal::language().\' from category where portal_id=\"\'.Portal::$portal_id.\'\" and type=\"NEWS\" order by structure_id\')) +String::get_list(DB::fetch_all(\'select id, structure_id, name_\'.Portal::language().\' from category where portal_id=\"\'.Portal::$portal_id.\'\" and type=\"PRODUCT\" order by structure_id\')) +String::get_list(DB::fetch_all(\'select id, structure_id, name_\'.Portal::language().\' from category where portal_id=\"\'.Portal::$portal_id.\'\" and type=\"MEDIA\" order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 1, '', 1, ''),
('171_category_id_param', 'Tham s?»? truy?»n Ä?i ', '', 171, 'TEXT', 0, 'category_id', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 6, '', 0, ''),
('171_content_css', 'Css b?»? sung', 'Cho ph?©p vi???t css b?»? sung Ä??»? t?¹y bi???n cho template', 171, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 10, '', 1, ''),
('171_extra_condition', 'Äi?»u ki?»?n m?»? r?»?ng', 'Äi?»u ki?»?n m?»? r?»?ng ch?»n d?»? li?»?u', 171, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 6, '', 1, ''),
('171_frame_skin_template', 'Giao di?»?n khung', '', 171, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Frame/skins\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 14, '', 1, ''),
('171_frame_template', 'M??«u khung', '', 171, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Frame/layouts\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 13, '', 1, ''),
('171_hide_columns', 'Khai b??o c??c c?»?t kh??ng hi?»?n th?»?', '', 171, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Template', 19, '', 1, ''),
('171_item_per_page', 'S?»? m?»?c hi?»?n th?»? tr??n m?»?t trang', '', 171, 'TEXT', 0, '10', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 5, '', 1, ''),
('171_level_limit', 'Gi?»?i h???n Ä??»? s?¢u', '', 171, 'SELECT', 0, '2', '$this->options=array(1=>1, 2=>2,3=>3,4=>4,5=>5);', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 5, '', 1, ''),
('171_list_code_template', 'M??«u code c?»§a danh s??ch', '', 171, 'SELECT', 0, 'packages/cms/templates/Navigation/codes/category', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Navigation/codes\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 1, '', 1, ''),
('171_list_layout_template', 'M??«u layout c?»§a danh s??ch', '', 171, 'SELECT', 0, 'packages/cms/templates/Navigation/layouts/default', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Navigation/layouts\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 5, '', 1, ''),
('171_list_skin_template', 'M??«u giao di?»?n c?»§a danh s??ch', '', 171, 'SELECT', 0, 'packages/cms/templates/Navigation/skins/vertical', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_template(\'templates/Navigation/skins\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 9, '', 1, ''),
('171_paging_template', 'M??«u ph?¢n trang', '', 171, 'SELECT', 0, '', 'require_once \'packages/core/includes/utils/dir.php\';\r\n$this->options = get_package_template(\'templates/paging\',\'dir\');', 'User::is_admin()', 'User::is_admin()', '', 'Template', 16, '', 1, ''),
('171_title', 'Ti??u Ä??»', '', 171, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Template', 15, '', 1, ''),
('171_title_check', 'Hi?»?n th?»? ti??u Ä??»', '', 171, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 5, '', 1, ''),
('171_type', 'Lo???i n?»?i dung hi?»?n th?»?', '', 171, 'SELECT', 0, '', '$this->options = array(\'\'=>Portal::language(\'all\'))+String::get_list(DB::fetch_all(\'select code as id,title_\'.Portal::language().\' as name from type where portal_id=\"\'.Portal::$portal_id.\'\"\'));', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 2, '', 1, ''),
('171_url', 'Link Ä????n ', '', 171, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 8, '', 0, ''),
('171_use_rewrite_url', 'S?»­ d?»?ng Rewrite Url', '', 171, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 4, '', 1, ''),
('172_item_per_page', 'S?»? b??£n ghi', '', 172, 'TEXT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u hinh', 1, '', 1, ''),
('172_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 172, 'TEXT', 0, ' and (product.status=\"HOT\" or product.status = \"HOME\")', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u hinh', 2, '', 1, ''),
('173_item_per_page', 'S?»? b??£n ghi tr??n 1 Tab', 'N???u nhi?»u TAB, m?»?i TAB c??ch nhau b?»?i d???u ph??©y', 173, 'TEXT', 0, '12,12,12', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('173_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', 'N???u c?³ nhi?»u TAB, m?»?i Ä?i?»u ki?»?n TAB c??ch nhau b?»?i d???u ph??©y', 173, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('173_number_tab', 'S?»? tab', '', 173, 'SELECT', 0, '3', '$this->options = array(1=>1,2=>2,3=>3,4=>4,5=>5,6=>6);', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('173_order_by', 'S???p x???p d?»? li?»?u theo', 'N???u nhi?»u TAB, m?»?i s???p x???p TAB c??ch nhau b?»?i d???u ph??©y', 173, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('173_title_tab', 'Ti??u Ä??» Tab', 'N???u nhi?»u TAB, m?»?i ti??u Ä??» TAB c??ch nhau b?»?i d???u ph??©y', 173, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('174_item_per_page', 'S?»? b??£n ghi tr??n trang', '', 174, 'TEXT', 0, '12', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('177_layout', 'M??«u layout', '', 177, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'list\',\'category\'=>\'category\',\'gallery\'=>\'gallery\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('177_item_per_page', 'S?»? b??£n ghi tr??n trang', '', 177, 'TEXT', 0, '12', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('177_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u m?»? r?»?ng', '', 177, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('75_type', 'Lo???i n?»?i dung hi?»?n th?»?', '', 75, 'SELECT', 0, '', 'require_once \'cache/tables/default/type.cache.php\';\r\n$this->options = array(\'\'=>Portal::language(\'type_category\'))+String::get_list($type);', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 0, '', 0, ''),
('113_number_tab', 'S?»? tab', '', 113, 'SELECT', 0, '3', '$this->options = array(1=>1,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7);', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('113_item_per_page', 'S?»? b??£n ghi tr??n 1 Tab', 'M?»?i s?»? c?»§a c??c Tab c??ch nhau b?»?i d???u ph??©y', 113, 'TEXT', 0, '12,12,12', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('113_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', 'M?»?i Ä?i?»u ki?»?n c?»§a c??c Tab c??ch nhau b?»?i d???u ph??©y', 113, 'TEXTAREA', 0, '1,1,1', '', 'User::is_admin()', 'User::is_admin()', ' style=\"height:60px;width:100%\"', 'C???u h?¬nh', 3, '', 1, ''),
('113_order_by', 'S???p x???p d?»? li?»?u theo', 'M?»?i s???p x???p c?»§a c??c Tab c??ch nhau b?»?i d???u ph??©y', 113, 'TEXTAREA', 0, 'up_time desc,id desc,hitcount desc', '', 'User::is_admin()', 'User::is_admin()', ' style=\"height:60px;width:100%\"', 'C???u h?¬nh', 4, '', 1, ''),
('113_title_tab', 'Nh?£n cho m?»?i tab', 'M?»?i nh?£n c?»§a c??c Tab c??ch nhau b?»?i d???u ph??©y', 113, 'TEXTAREA', 0, 'hot_product,best_buy_product,promotion_product', '', 'User::is_admin()', 'User::is_admin()', ' style=\"height:60px;width:100%\"', 'C???u h?¬nh', 5, '', 1, ''),
('113_show_view_all', 'Hi?»?n th?»? xem t???t c??£', 'M?»?i hi?»?n th?»? c?»§a c??c Tab c??ch nhau b?»?i d???u ph??©y (1: hi?»?n th?»?, 0: ??©n)', 113, 'TEXT', 0, '1,1,1', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 6, '', 1, ''),
('113_tab_start', 'Tab b???t Ä???§u', '', 113, 'SELECT', 0, '1', '$this->options = array(1=>1,2=>2,3=>3,4=>4,5=>5,6=>6,7=>7);', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('58_item_per_page', 'S?»? tin hi?»?n th?»?', '', 58, 'TEXT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('58_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 58, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', ' style=\"width:100%;height:100px;\"', 'C???u h?¬nh', 2, '', 1, ''),
('58_order_by', 'S???p x???p d?»? li?»?u theo', '', 58, 'SELECT', 0, '', '$this->options = array(\'up_time desc\'=>Portal::language(\'newest\'),\'up_time asc\'=>Portal::language(\'oldest\'),\'hitcount desc\'=>Portal::language(\'hitcount\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('58_is_paging', 'Ph?¢n trang', '', 58, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('121_item_per_page', 'S?»? m?»?c hi?»?n th?»? tr??n m?»?t trang', '', 121, 'TEXT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('67_item_per_page', 'S?»? m?»?c hi?»?n th?»? tr??n m?»?t trang', '', 67, 'TEXT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('121_structure_id', 'L???y t?»« danh m?»?c', '', 121, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select structure_id as id,structure_id, name_\'.Portal::language().\' as name from category where portal_id=\"\'.Portal::$portal_id.\'\" and status!=\"HIDE\" order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('121_order_by', 'S???p x???p d?»? li?»?u theo', '', 121, 'SELECT', 0, 'news.up_time desc', '$this->options = array(\'news.time desc\'=>Portal::language(\'newest\'),\'news.hitcount desc\'=>Portal::language(\'hitcount\'),\'news.position asc\'=>Portal::language(\'position\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('67_is_paging', 'Ph?¢n trang', '', 67, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('67_order_by', 'S???p x???p d?»? li?»?u theo', '', 67, 'SELECT', 0, 'faq.up_time desc', '$this->options = array(\'faq.up_time desc\'=>Portal::language(\'newest\'),\'faq.hitcount desc\'=>Portal::language(\'hitcount\'),\'faq.up_time asc\'=>Portal::language(\'oldest\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('67_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 67, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', ' style=\"width:100%;height:100px\"', 'C???u h?¬nh', 4, '', 1, ''),
('122_item_per_page', 'S?»? lÆ°?»£ng tin ', '', 122, 'TEXT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('122_structure_id', 'L???y t?»« danh m?»?c', '', 122, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select name_\'.Portal::language().\' as name,structure_id as id,structure_id from category where portal_id=\"\'.Portal::$portal_id.\'\" and type=\"NEWS\" order by structure_id\'),\'name\',true,1);', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('122_effect', 'Hi?»?u ?»©ng', '', 122, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'list\',\'scroll\'=>\'scroll\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('122_order_by', 'S???p x???p d?»? li?»?u theo', '', 122, 'SELECT', 0, '', '$this->options = array(\'news.up_time desc\'=>Portal::language(\'newest\'),\'news.up_time asc\'=>Portal::language(\'oldest\'),\'news.hitcount desc\'=>Portal::language(\'hitcount\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('58_title', 'Ti??u Ä??»', '', 58, 'TEXT', 0, 'classified', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('42_param_title', 'Ti??u Ä??»? theo tham s?»?', '', 42, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 0, ''),
('230_item_number', 'S?»? item hi?»?n th?»?', '', 230, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 1, '', 1, ''),
('230_menu_show', 'Hi?»?n th?»? menu c???p 1', '', 230, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 2, '', 1, ''),
('231_item_number', 'S?»? item hi?»?n th?»?', '', 231, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 1, '', 0, ''),
('231_menu_show', 'Hi?»?n th?»? menu c???p 1', '', 231, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 2, '', 0, ''),
('121_layout', 'Ki?»?u giao di?»?n', '', 121, 'SELECT', 0, 'list', '$this->options = array(\'list\'=>\'list\',\'multi\'=>\'multi\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('121_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 121, 'TEXT', 0, ' and news.status=\"HOT\"', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('238_item_per_page', 'S?»? b??£n ghi ', '', 238, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 0, ''),
('238_status', 'L???y tr???ng th??i theo', '', 238, 'SELECT', 0, '', '$this->options = array(\'HOT\'=>Portal::language(\'hot\'),\'NEW\'=>Portal::language(\'new\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('45_is_parent', 'B?» ??p d?»?ng c???u tr??c cha con', '', 45, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 12, '', 1, ''),
('252_item_per_page', 'S?»? b??£n ghi tr??n trang', '', 252, 'INT', 0, '12', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('252_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 252, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('254_type', 'Lo???i d?»? li?»?u', '', 254, 'SELECT', 0, '', '$this->options = String::get_list(Portal::template_cache(\'type\'))+array(\'MEDIA\'=>Portal::language(\'media\'));', 'User::is_admin()', 'User::is_admin()', '', 'D?»? li?»?u', 1, '', 1, ''),
('252_layout', 'M??«u layout', '', 252, 'SELECT', 0, 'list', '$this->options = array(\'list\'=>\'Li?»?t k?? danh s??ch\',\'album\'=>\'Hi?»?n th?»? theo album\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('252_effect', 'Hi?»?u ?»©ng', '', 252, 'SELECT', 0, 'lightbox', '$this->options = array(\'lightbox\'=>\'Lightbox\',\'slide\'=>\'Slide Show\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('254_effect', 'Hi?»?u ?»©ng', '', 254, 'SELECT', 0, 'random', '$this->options=array(\'random\'=>\'random\',\'sliceDown\'=>\'sliceDown\',\'sliceDownLeft\'=>\'sliceDownLeft\',\'sliceUp\'=>\'sliceUp\',\'sliceUpLeft\'=>\'sliceUpLeft\',\'sliceUpDown\'=>\'sliceUpDown\',\'sliceUpDownLeft\'=>\'sliceUpDownLeft\',\'fold\'=>\'fold\',\'fade\'=>\'fade\',\'slideInRight\'=>\'slideInRight\',\'slideInLeft\'=>\'slideInLeft\',\'boxRandom\'=>\'boxRandom\',\'boxRain\'=>\'boxRain\',\'boxRainReverse\'=>\'boxRainReverse\',\'boxRainGrow\'=>\'boxRainGrow\',\'boxRainGrowReverse\'=>\'boxRainGrowReverse\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('254_duration', 'Th?»i gian chuy?»?n', '', 254, 'INT', 0, '3', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('254_paging', 'Hi?»?n th?»? ph?¢n trang Ä?i?»u hÆ°?»?ng', '', 254, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('254_title', 'C?³ ti??u Ä??»', '', 254, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('254_limit', 'S?»? b??£n ghi', '', 254, 'INT', 0, '5', '', 'User::is_admin()', 'User::is_admin()', '', 'D?»? li?»?u', 2, '', 1, ''),
('254_condition', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 254, 'TEXTAREA', 0, 'and status=\"HOME\"', '', 'User::is_admin()', 'User::is_admin()', '', 'D?»? li?»?u', 3, '', 1, ''),
('254_width', 'Ä?»? r?»?ng', '', 254, 'INT', 0, '500', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 6, '', 1, ''),
('254_height', 'Cao', '', 254, 'INT', 0, '240', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 7, '', 1, ''),
('254_navigation', 'Thanh Ä?i?»u hÆ°?»?ng', '', 254, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('121_by_category', 'Theo danh m?»?c hi?»?n t???i', '', 121, 'YESNO', 1, '0', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('256_layout', 'Giao di?»?n', '', 256, 'SELECT', 0, 'list', '$this->options = array(\'list\'=>\'list\',\'full\'=>\'full\',\'all\'=>\'all\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('256_limit', 'S?»? b??£n ghi', '', 256, 'INT', 0, '8', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('277_category_id', 'L???y t?»« danh m?»?c', '', 277, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,name_1 as name,structure_id from category where 1 order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('423_category_id', 'category_id', '', 423, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,name_1 as name,structure_id from category where 1 order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('278_url', 'Link fan page', '', 278, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 12, '', 1, ''),
('282_html', 'M?£ code', '', 282, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('303_layout', 'Giao di?»?n', '', 303, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'Danh s??ch\',\'hitcount\'=>\'LÆ°?»£t xem\',\'gallery\'=>\'ThÆ° vi?»?n ??£nh\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1968, '', 1, ''),
('303_limit', 'S?»? lÆ°?»£ng b??£n ghi', '', 303, 'INT', 0, '10', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1969, '', 1, ''),
('303_order_by', 'S???p x???p theo', '', 303, 'SELECT', 0, '10', '$this->options = array(\'id desc\'=>\'M?»?i nh???t\',\'hitcount desc\'=>\'LÆ°?»£t xem\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1970, '', 1, ''),
('303_show_count', 'S?»? t?»« hi?»?n th?»?', '', 303, 'INT', 0, '10', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1969, '', 1, ''),
('303_by_cat', 'S???p x???p theo', '', 303, 'YESNO', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1971, '', 1, ''),
('308_html', 'M?£ Code', '', 308, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('308_use_php', 'S?»­ d?»?ng PHP', '', 308, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('104_layout', 'Giao di?»?n', '', 104, 'SELECT', 0, '', '$this->options=array(\'sign_in\'=>\'ÄÄ?ng nh??­p\',\'popup\'=>\'Popup\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 0, ''),
('317_layout', 'Giao di?»?n', '', 317, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'M??·c Ä??»?nh\',\'seller\'=>\'B??n ch???y\',\'promotion\'=>\'Khuy???n m???i\',\'new\'=>\'M?»?i v?»\',\'hot\'=>\'Hot\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('373_layout', 'Giao di?»?n', '', 373, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'M??·c Ä??»?nh\',\'tiny\'=>\'Tiny\',\'simple\'=>\'Simple\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 0, ''),
('409_columns', 'columns', '', 409, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 2, ''),
('42_title_color', 'M? u ti??u Ä??»', '', 42, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 5, '', 1, ''),
('171_title_color', 'M? u ti??u Ä??»', '', 171, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Template', 16, '', 1, ''),
('315_layout', 'Giao di?»?n', '', 315, 'SELECT', 0, '', '$this->options=array(\'list\'=>\'M??·c Ä??»?nh\',\'line\'=>\'C?¹ng 1 d?²ng\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 0, ''),
('321_title', 'Ti??u Ä??»', '', 321, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 0, ''),
('321_layout', 'Giao di?»?n', '', 321, 'SELECT', 0, '', '$this->options=array(\'list\'=>\'M??·c Ä??»?nh - items float left\',\'hot\'=>\'HOT\',\'sell\'=>\'B??n ch???y\',\'sale_off\'=>\'Khuy???n m???i\',\'hotweek\'=>\'Hot trong tu??§n\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 0, ''),
('75_layout', 'C???u h?¬nh', '', 75, 'SELECT', 0, 'list', '$this->options = array(\'news\'=>\'Tin t?»©c\');', 'User::is_admin()', 'User::is_admin()', '', 'Tu?»³ ch?»n', 1, '', 0, ''),
('315_category_id', 'ID danh m?»?c n?»?i b??­t', '', 315, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 11, '', 1, ''),
('374_layout', 'Giao di?»?n', '', 374, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'M??·c Ä??»?nh\',\'tab\'=>\'Tab\',\'hot\'=>\'HOT\',\'slide\'=>\'SLIDE\',\'product\'=>\'Product List\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('317_cond', 'Äi?»u ki?»?n l???y d?»? li?»?u', '', 317, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('317_order_by', 'S???p x???p', '', 317, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('317_limit', 'S?»? tin hi?»?n th?»?', '', 317, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('317_position', 'S?»? th?»© t?»±', '', 317, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 2, ''),
('317_ids', 'G?»­i Ä?i danh s??ch m?£', '', 317, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 6, '', 1, ''),
('317_structure_id', 'Danh m?»?c', '', 317, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select structure_id as id, name_\'.Portal::language().\' as name,structure_id from category where type=\"PRODUCT\" and status!=\"HIDE\" and \'.IDStructure::child_cond(ID_ROOT).\' order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('317_not_duplicate', 'Kh??ng l???y d?»? li?»?u tr?¹ng', '', 317, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 7, '', 1, ''),
('317_url', 'Link xem ti???p', '', 317, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 8, '', 1, ''),
('374_url1', 'Link xem ti???p', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 1', 5, '', 1, ''),
('374_url2', 'Link xem ti???p', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 2', 5, '', 1, ''),
('374_title_1', 'Ti??u Ä??»', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 1', 2, '', 1, ''),
('374_order_by_1', 'S???p x???p', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 1', 3, '', 1, ''),
('374_structure_id_1', 'Danh m?»?c', '', 374, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,structure_id as id, structure_id, name_1 as name from category where type=\"PRODUCT\" and \'.IDStructure::child_cond(ID_ROOT).\' order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'Tab 1', 1, '', 2, ''),
('374_structure_id_2', 'Danh m?»?c', '', 374, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,structure_id as id, structure_id, name_1 as name from category where type=\"PRODUCT\" and \'.IDStructure::child_cond(ID_ROOT).\' order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'Tab 2', 2, '', 1, ''),
('374_title_2', 'Ti??u Ä??»', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 2', 2, '', 1, ''),
('374_order_by_2', 'S???p x???p', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 2', 3, '', 1, ''),
('374_limit_1', 'S?»? tin hi?»?n th?»?', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 1', 4, '', 1, ''),
('374_limit_2', 'S?»? tin hi?»?n th?»?', '', 374, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'Tab 2', 4, '', 1, ''),
('320_order_by', 'S???p x???p', '', 320, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('320_not_order', 'Kh??ng hi?»?n th?»? s???p x???p', '', 320, 'CHECKBOX', 0, '0', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('374_position', 'S?»? th?»© t?»±', '', 374, 'INT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('390_layout', 'Giao di?»?n', '', 390, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'M??·c Ä??»?nh\',\'new\'=>\'S??£n ph??©m m?»?i\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('388_show_bottom', 'show_bottom', '', 388, 'CHECKBOX', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('408_class_extra', 'Class extra', '', 408, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('408_title', 'Ti??u Ä??»', '', 408, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('408_category_id', 'Danh m?»?c', '', 408, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,name_\'.Portal::language().\' as name,structure_id from category order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 3, '', 1, ''),
('408_layout', 'Giao di?»?n', '', 408, 'SELECT', 0, '', '$this->options = array(\'list\'=>\'M??·c Ä??»?nh\',\'simple\'=>\'Simple\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 4, '', 1, ''),
('410_category_id', 'Danh m?»?c', '', 410, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,name_\'.Portal::language().\' as name,structure_id from category order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('411_category_id', 'Danh m?»?c', '', 411, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select id,name_\'.Portal::language().\' as name,structure_id from category order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('408_url', 'ÄÆ°?»ng d??«n title', '', 408, 'TEXT', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 1, ''),
('428_structure_id', 'L???y t?»« danh m?»?c', '', 428, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select name_1 as name,structure_id as id,structure_id from category where 1 order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('422_layout', 'Danh m?»?c', '', 422, 'SELECT', 0, '', '$this->options=array(\'\'=>\'list\',\'video\'=>\'video\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 2, ''),
('422_limit', 'S?»? lÆ°?»£ng', '', 422, 'TEXT', 0, '50', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 2, '', 2, ''),
('428_limit', 'S?»? tin', '', 428, 'INT', 0, '9', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('431_limit', 'Hi?»?n th?»?', '', 431, 'INT', 0, '6', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('325_layout', 'Danh m?»?c', '', 325, 'SELECT', 0, '', '$this->options=array(\'\'=>\'list\',\'video\'=>\'video\',\'customer\'=>\'customer\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 0, ''),
('316_layout', 'M??«u giao di?»?n', '', 316, 'SELECT', 0, '', '$this->options = array(\'\'=>\'Slide\',\'big\'=>\'??¢nh danh m?»?c\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 1, ''),
('425_columm', 'columm', '', 425, 'TEXTAREA', 0, '', '', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 3, ''),
('429_structure_id', 'L???y t?»« danh m?»?c', '', 429, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select name_1 as name,structure_id as id,structure_id from category where 1 order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('327_structure_id', 'L???y t?»« danh m?»?c', '', 327, 'SELECT', 0, '', '$this->options = String::get_list(DB::fetch_all(\'select name_1 as name,structure_id as id,structure_id from category where 1 order by structure_id\'));', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 0, '', 1, ''),
('428_layout', 'Danh m?»?c', '', 428, 'SELECT', 0, '', '$this->options=array(\'\'=>\'list\',\'gird\'=>\'gird\',\'care\'=>\'Trang tin\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 2, ''),
('44_layout', 'Danh m?»?c', '', 44, 'SELECT', 0, '', '$this->options=array(\'\'=>\'list\',\'gird\'=>\'gird\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 2, ''),
('441_layout', 'Danh m?»?c', '', 441, 'SELECT', 0, '', '$this->options=array(\'\'=>\'list\',\'gird\'=>\'gird\');', 'User::is_admin()', 'User::is_admin()', '', 'C???u h?¬nh', 1, '', 2, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_table`
--

CREATE TABLE `module_table` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL DEFAULT '0',
  `table` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `structure_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `skin_name` varchar(50) NOT NULL DEFAULT 'default',
  `title_1` varchar(255) NOT NULL,
  `description_1` text NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `package`
--

INSERT INTO `package` (`id`, `structure_id`, `name`, `skin_name`, `title_1`, `description_1`, `type`) VALUES
(1, 1000000000000000000, 'root', 'default', '', '', 'NORMAL'),
(2, 1050000000000000000, 'core', 'default', 'Nh?¢n h?»? th?»?ng', '', 'NORMAL'),
(4, 1060000000000000000, 'frontend', 'default', 'Giao di?»?n ', '', 'NORMAL'),
(5, 1020000000000000000, 'user', 'default', 'NgÆ°?»i d?¹ng', '', 'NORMAL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `layout` varchar(255) NOT NULL,
  `skin` varchar(50) NOT NULL DEFAULT 'default',
  `help_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title_1` varchar(255) NOT NULL DEFAULT '',
  `description_1` text NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `read_only` tinyint(4) NOT NULL DEFAULT '0',
  `show` tinyint(4) NOT NULL DEFAULT '1',
  `cachable` tinyint(4) NOT NULL DEFAULT '0',
  `cache_param` varchar(50) NOT NULL DEFAULT '',
  `params` varchar(255) NOT NULL DEFAULT '',
  `site_map_show` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL DEFAULT '',
  `condition` text NOT NULL,
  `is_use_sapi` tinyint(4) NOT NULL,
  `keyword_1` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `package_id`, `layout_id`, `layout`, `skin`, `help_id`, `name`, `title_1`, `description_1`, `customer_id`, `read_only`, `show`, `cachable`, `cache_param`, `params`, `site_map_show`, `type`, `condition`, `is_use_sapi`, `keyword_1`) VALUES
(1, 2, 93, 'packages/core/layouts/simple.php', 'default', 0, 'page', 'Trang', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(2, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'edit_page', 'S?»­a trang', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(3, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'package', 'Package', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(4, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'module', 'Module', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(5, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'module_setting', 'C???u h?¬nh module', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(6, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'block_setting', 'C???u h?¬nh block', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(7, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'package_word', 'Ng??n ng?»? h?»? th?»?ng', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(12, 2, 0, 'packages/core/layouts/simple.php', 'default', 0, 'log', 'Nh??­t k?½ truy c??­p', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(75, 5, 0, 'packages/core/layouts/simple.php', 'default', 0, 'sign_out', 'Logout', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(88, 5, 0, 'packages/core/layouts/simple.php', 'default', 0, 'user_admin', 'Qu??£n l?½ ngÆ°?»i d?¹ng', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1014, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'facebook_accounts', 'Quáº£n lÃ½ tÃ i khoáº£n facebook', 'Quáº£n lÃ½ tÃ i khoáº£n facebook', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1015, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'schedules', 'Lá»‹ch Ä‘Äƒng tin ', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1016, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'save_post', 'ÄÄƒng tin tá»± Ä‘á»™ng', 'ÄÄƒng tin tá»± Ä‘á»™ng', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1017, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'user_management', 'User Management', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1018, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'user_setting', 'User Setting', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1012, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'home', 'Home', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1013, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'dashboard', 'BÃ¡o cÃ¡o thÃ´ng kÃª Ä‘Äƒng', 'BÃ¡o cÃ¡o thÃ´ng kÃª Ä‘Äƒng', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1019, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'profile', 'Profile', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1020, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_make_friend', 'Tá»± Ä‘á»™ng káº¿t báº¡n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1021, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'schedules_friend', 'Lá»‹ch thá»±c hiá»‡n nuÃ´i nick', 'Lá»‹ch thá»±c hiá»‡n nuÃ´i nick', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1022, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_accept_friend', 'Tá»± Ä‘á»™ng cháº¥p nháº­n káº¿t báº¡n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1023, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_cancel_friend', 'Tá»± Ä‘á»™ng há»§y káº¿t báº¡n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1024, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'add_mem_group', 'Má»i báº¡n bÃ¨ vÃ o nhÃ³m', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1040, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_lech_by_id', 'Copy bÃ i lÃªn trang cÃ¡ nhÃ¢n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1026, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'join_group', 'Tá»± Ä‘á»™ng tham gia nhÃ³m', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1027, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'schedules_group', 'Lá»‹ch thá»±c hiá»‡n nhÃ³m', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1028, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'get_token_full', 'Tool get token full', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1029, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'seeding_like', 'Seeding like', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1030, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'seeding_comment', 'Seeding Comment', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1031, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'up_top_group', 'Tá»± Ä‘á»™ng up top bÃ i viáº¿t', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1032, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'message_inbox', 'Danh sÃ¡ch inbox', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1033, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'fake_link_facebook', 'Fake Link Facebook', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1035, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'make_friend_by_uid', 'Káº¿t báº¡n theo list UID', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1036, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_lech_profile', 'Tá»± Ä‘á»™ng láº¥y bÃ i Ä‘Äƒng tá»« ngÆ°á»i khÃ¡c', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1037, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'upgrade_management', 'Quáº£n lÃ½ nÃ¢ng cáº¥p tÃ i khoáº£n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1038, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'upgrade_account', 'NÃ¢ng cáº¥p tÃ i khoáº£n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1039, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_lech_page', 'Tá»± Ä‘á»™ng láº¥y bÃ i Ä‘Äƒng cá»§a page khÃ¡c', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1041, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'help', 'HÆ°á»›ng dáº«n sá»­ dá»¥ng', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1042, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'help_management', 'Quáº£n lÃ½ hÆ°á»›ng dáº«n sá»­ dá»¥ng', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1043, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'join_group_by_uid', 'Tham gia nhÃ³m theo list UID', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1044, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'make_money', 'Kiáº¿m tiá»n', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1045, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'payment', 'Thanh toÃ¡n hoa há»“ng thÃ nh viÃªn', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1046, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_reaction', 'Tá»± Ä‘á»™ng thá»ƒ hiá»‡n cáº£m xÃºc cÃ¡c bÃ i viáº¿t trÃªn newfeed', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1047, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_comment', 'Tá»± Ä‘á»™ng comment cÃ¡c bÃ i viáº¿t trÃªn newfeed', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, ''),
(1048, 4, 0, 'packages/frontend/layouts/simple.php', 'default', 0, 'auto_reaction_page', 'Tá»± Ä‘á»™ng tháº£ tim bÃ i Ä‘Äƒng cá»§a page', '', 0, 0, 1, 0, '', '', 1, 'SYSTEM', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `party`
--

CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `vip` int(11) NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `birth_date` date NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `website` varchar(250) NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portal_language`
--

CREATE TABLE `portal_language` (
  `id` int(11) NOT NULL,
  `portal_id` varchar(250) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `portal_language`
--

INSERT INTO `portal_language` (`id`, `portal_id`, `language_id`) VALUES
(153, '#demo', 1),
(152, '#default', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `portal_id` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `account_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_module`
--

CREATE TABLE `privilege_module` (
  `id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `view_detail` tinyint(4) NOT NULL DEFAULT '0',
  `add` tinyint(4) NOT NULL DEFAULT '0',
  `edit` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `special` tinyint(4) NOT NULL DEFAULT '0',
  `reserve` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `privilege_module`
--

INSERT INTO `privilege_module` (`id`, `privilege_id`, `module_id`, `view`, `view_detail`, `add`, `edit`, `delete`, `special`, `reserve`, `admin`) VALUES
(1202, 497, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1214, 509, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1632, 927, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1648, 943, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1649, 944, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1650, 945, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1652, 947, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1563, 858, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1555, 850, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1551, 846, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1547, 842, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1543, 838, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1527, 822, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(515, 513, 45, 1, 1, 1, 1, 1, 0, 0, 0),
(514, 512, 45, 1, 1, 1, 1, 1, 0, 0, 0),
(513, 511, 45, 1, 1, 1, 1, 1, 0, 0, 0),
(512, 510, 45, 1, 1, 1, 1, 1, 0, 0, 0),
(1656, 951, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1660, 955, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1608, 903, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1545, 840, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1051, 346, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1063, 358, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1371, 666, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1713, 1008, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1692, 987, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1668, 963, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1500, 795, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1544, 839, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1587, 882, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1398, 693, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1414, 709, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1415, 710, 134, 1, 1, 1, 1, 1, 0, 0, 1),
(1416, 711, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1418, 713, 205, 1, 1, 1, 1, 1, 0, 0, 1),
(1422, 717, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1426, 721, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1434, 729, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1458, 753, 45, 1, 1, 1, 1, 1, 0, 0, 1),
(1479, 774, 45, 1, 1, 1, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `save`
--

CREATE TABLE `save` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `message` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `caption` varchar(255) DEFAULT NULL,
  `url` text,
  `image` text,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `id` varchar(255) NOT NULL,
  `vars` varchar(65000) NOT NULL,
  `time` int(11) NOT NULL,
  `last_active_time` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `ip` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`id`, `vars`, `time`, `last_active_time`, `user_id`, `ip`) VALUES
('4umv2bnp6vmtvtv2jt9rva9jv3', '', 1302139756, 1311432590, '', ''),
('uvans3h9akv38hnsp7rp712tk7', '', 1301987888, 0, 'dinhhoach', ''),
('hev8g8pcabq5engs45gv53tvc0', '', 1311492061, 0, 'ccnn', ''),
('ofeu5ovi0odq7r4hba15jtuio5', '', 1302246372, 0, 'shop91', ''),
('8juaas14uka5rq6d1d2kd2h452', '', 1306555139, 0, 'tinhle', ''),
('uentc5kpbqqg2rbn5hflp27uu6', '', 1304051921, 0, 'minhhue_c1_py', ''),
('lq3d4plabdgbsmt5gk3a53hqt2', '', 1308156309, 0, 'congyen0608', ''),
('epnvs0d7giltu9t3i8qcq947k0', '', 1307981230, 0, 'theanh571', ''),
('4r886mgpjfidluj31sqpht1sd5', '', 1307931451, 0, 'tongtrang', ''),
('ev80b9r20mpthapnas10thtio0', '', 1306739932, 0, 'quanghuy_0910', ''),
('l3hv53dbbgjf24ffalvr90fji6', '', 1308969798, 0, 'shop95', ''),
('690p0947vpd7pslb3jvqoiug05', '', 1308402093, 0, 'huyhoangpccc114', ''),
('qt2t7gme9htp5je9u2ki2ugk53', '', 1307092756, 0, 'vqt', ''),
('3spg0e9duvhmp0bqd2hdmfjuh4', '', 1311559587, 0, 'Luongquyen', ''),
('lvs2931k9v979guim6go8vp6q6', '', 1308242199, 0, 'office', ''),
('8dmvbkv1dd9bova6qidqr2kg02', '', 1308640129, 0, 'buithanhphong', ''),
('v22o4kfl0l2rpm63apm49govs4', '', 1311560098, 0, 'Buihaanh', ''),
('qid4paidk5gn8145ui7o53n507', '', 1311302501, 0, 'toivanlatoi_k10', ''),
('u3bh1nkd0rubr6m993qfbcg544', '', 1308872193, 0, 'manhtien1', ''),
('e95pu8qereevfg1rrngcb67e54', '', 1311432226, 0, 'Quanghieu0304', ''),
('63gk3pm22thp2htts070uv1m37', '', 1311034775, 0, 'minhquan', ''),
('v70hq7g8qvg4bupe6f8hn8uoi3', '', 1311560879, 0, 'uyenpm', ''),
('f20g6nh0kdd1lga6g1n0r11732', '', 1311125724, 0, 'truonghung2011', ''),
('rn59nmlnnpepim0o1vso6kjjb4', '', 1311060822, 0, 'vuongquoc', ''),
('hvklqn6erj6gfaoeanv04puao1', '', 1311085472, 0, 'Elblanco', ''),
('hvkc3rcmvjkvccgdr052apov35', '', 1311153547, 0, 'anlongfoods', ''),
('o02td5q0g2duvonl7h4j9jrts5', '', 1311133391, 0, 'ducgold', ''),
('03eg6b91u0ib5h9l4p8n2thbf3', '', 1311136262, 0, 'quangdv', ''),
('k05nageogdoeo7hpnabiorerk1', '', 1311144228, 0, 'ls.huyen', ''),
('ssgj357nejrjgh1b4p26j0obn4', '', 1311306888, 0, 'cuachongchay', ''),
('b5ji6de23t1q1p9prejukm5gj3', '', 1311411905, 0, 'cuongdc', ''),
('jotvk8cvbg5rv2p7dmbe8uefb5', '', 1311240831, 0, 'ketcauonline2006', ''),
('cl98gk6u2pbi3i03o0peb6fai4', '', 1311502560, 0, 'hoa_snow', ''),
('1quu47kvktq18iv7to1p3brfs0', '', 1311159372, 0, 'hoangcodo', ''),
('5temq92sik4ink98idug01hc94', '', 1311308324, 0, 'hainguyentx', ''),
('nibbr15ai10agcmm0ub92d69g2', '', 1311220445, 0, 'baovinh1711', ''),
('lqvctus7rc6l91ffd282epgsr5', '', 1311385346, 0, 'huynhphong_htp', ''),
('vge291i8jon7jpvc5dtsjjar27', '', 1314349245, 0, 'thanhpt294', ''),
('i3jdtu128ie00n8rjbg0sic3h3', '', 1311326024, 0, 'phutungotoduk', ''),
('7994jssda2q5l65l4gaq7jfb25', '', 1311382280, 0, 'nobita48', ''),
('s6mequmqh4ub5pdr76n75m67p6', '', 1311558913, 0, 'nguyenthuongevi', ''),
('g65a0mogcan0kigcrjt8kqgh51', '', 1311387853, 0, 'tan_td', ''),
('ckvm5keog45ila0hmhm95sfbh7', '', 1311525767, 0, 'nguyenmaihoang', ''),
('ckif174d8m2e1l66vso6pmtc13', '', 1311560311, 0, 'truonggiang', ''),
('hl3j6j8lnenm244ilgo68ru4b4', '', 1311419091, 0, 'thinhndfpt', ''),
('pqjkrrmvgrua468ja9p4echvr1', '', 1311432462, 0, 'haudn1988', ''),
('70d5hcb94880trkcum8lksmic2', '', 1322553962, 0, 'thanhpt', ''),
('k0s3m2eoelr4kt8igikk09cim2', '', 1329466570, 0, 'admin', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `default_value` text NOT NULL,
  `style` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `account_type`, `type`, `default_value`, `style`) VALUES
('website_title', '', 'PORTAL', 'TEXT', '423424', 0),
('website_description', '', 'PORTAL', 'TEXT', '423424', 0),
('website_keyword', '', 'PORTAL', 'TEXT', '432424', 0),
('timezone', '', 'PORTAL', 'TEXT', 'Asia/Ho_Chi_Minh', 0),
('default_language', '', 'PORTAL', 'TEXT', '1', 0),
('register', '', 'PORTAL', 'TEXT', '1', 0),
('auto_active_user', '', 'PORTAL', 'TEXT', '1', 0),
('maximum_account_default', '', 'PORTAL', 'TEXT', '1', 0),
('default_deplay_post_now', '', 'PORTAL', 'TEXT', '5', 0),
('minimum_deplay_post_now', '', 'PORTAL', 'TEXT', '5', 0),
('default_deplay', '', 'PORTAL', 'TEXT', '5', 0),
('minimum_deplay', '', 'PORTAL', 'TEXT', '5', 0),
('facebook_id', '', 'PORTAL', 'TEXT', '4324', 0),
('facebook_secret', '', 'PORTAL', 'TEXT', '24324', 0),
('google_id', '', 'PORTAL', 'TEXT', '234234', 0),
('google_secret', '', 'PORTAL', 'TEXT', '2342342', 0),
('twitter_id', '', 'PORTAL', 'TEXT', '424', 0),
('twitter_secret', '', 'PORTAL', 'TEXT', '324234234', 0),
('facebook_page', '', 'PORTAL', 'TEXT', '4324', 0),
('twitter_page', '', 'PORTAL', 'TEXT', '324234', 0),
('pinterest_page', '', 'PORTAL', 'TEXT', '4234234', 0),
('instagram_page', '', 'PORTAL', 'TEXT', '4234234', 0),
('website_logo', '', 'PORTAL', 'TEXT', 'upload/news/icon//12.2017/1490172123_2017-03-22_103728.png', 0),
('chinh_sach', '', 'PORTAL', 'TEXT', 'fuck', 0),
('website_icon', '', 'PORTAL', 'TEXT', 'upload/news/icon//12.2017/favicon.ico', 0),
('google_analytics', '', 'PORTAL', 'TEXT', 'r424', 0),
('percen_profit', '', 'PORTAL', 'TEXT', '20', 0),
('show_ruoi', '', 'PORTAL', 'TEXT', '1', 0),
('con_ruoi', '', 'PORTAL', 'TEXT', '1', 0),
('sobcoin_reward', '', 'PORTAL', 'TEXT', '', 0),
('hotline', '', 'PORTAL', 'TEXT', '', 0),
('payment_info', '', 'PORTAL', 'TEXT', '<p><strong>Äá»ƒ th&ecirc;m nhiá»u hÆ¡n&nbsp;10000&nbsp;t&agrave;i khoáº£n v&agrave; thá»i gian sá»­ dá»¥ng l&acirc;u hÆ¡n báº¡n cáº§n n&acirc;ng cáº¥p t&agrave;i khoáº£n cá»§a m&igrave;nh.</strong></p>\r\n<h4>GI&Aacute; N&Acirc;NG Cáº¤P T&Agrave;I KHOáº¢N:&nbsp;<strong>4k/ 1 acc/ 1 th&aacute;ng</strong></h4>\r\n<h4>D&Ugrave;NG TRá»ŒN Äá»œI:&nbsp;<strong>2 triá»‡u/ 20 acc - 3 triá»‡u/ 30 acc ...</strong></h4>\r\n<p><strong>V&iacute; dá»¥:&nbsp;</strong>Báº¡n muá»‘n sá»­ dá»¥ng 20 t&agrave;i khoáº£n Facebook trong 2 th&aacute;ng th&igrave; sá»‘ tiá»n báº¡n cáº§n thanh to&aacute;n cho ch&uacute;ng t&ocirc;i l&agrave;: 4.000 x 20 x 2 = 160.000 VNÄ&nbsp;<br /><br /></p>\r\n<div>Äá»ƒ n&acirc;ng cáº¥p t&agrave;i khoáº£n vui l&ograve;ng chuyá»ƒn tiá»n cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin sau:</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>VIETCOMBANK</h4>\r\n<div>Chá»§ t&agrave;i khoáº£n:&nbsp;<strong>PHáº M TRUNG TH&Agrave;NH</strong><br />Sá»‘ t&agrave;i khoáº£n:&nbsp;<strong>049 1000 400 127</strong><br /><strong>Ng&acirc;n h&agrave;ng Vietcombank - Chi nh&aacute;nh ThÄƒng Long - H&agrave; Ná»™i</strong><br />Ná»™i dung:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n</div>\r\n<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-6\">\r\n<h4>PAYPAL</h4>\r\n<div>TK paypal:&nbsp;<strong>thanhpt294@gmail.com</strong></div>\r\n<div>Ná»™i dung ghi:&nbsp;<strong>email t&agrave;i khoáº£n cá»§a báº¡n</strong></div>\r\n<div>Tá»· gi&aacute; USD:&nbsp;<strong>21,000 VNÄ/ 1 USD</strong></div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Má»i tháº¯c máº¯c xin li&ecirc;n há»‡ theo HOTLINE:&nbsp;<strong>0969 857 408</strong></strong><br />Hoáº·c qua sky:&nbsp;<strong>thanhpt294</strong>&nbsp;|&nbsp;<a href=\"https://www.facebook.com/messages/requests/t/thanh290484\" target=\"_blank\">Facebook SMS</a></div>', 0),
('notice_title', '', 'PORTAL', 'TEXT', '', 0),
('notice', '', 'PORTAL', 'TEXT', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `file_size` float NOT NULL,
  `time` int(11) NOT NULL,
  `code` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `upload`
--

INSERT INTO `upload` (`id`, `name`, `width`, `height`, `file_size`, `time`, `code`) VALUES
(8, 'VÄ?n b??£n', 0, 0, 3, 1306988991, 'DOC'),
(10, '??¢nh', 3000, 3000, 3, 1306989244, 'JPG'),
(11, '??¢nh Ä??»?ng', 1000, 10000, 5, 1306990455, 'PNG'),
(12, '??¢nh', 500, 500, 10, 1307008987, 'JPEG'),
(13, 'VÄ?n b??£n', 0, 0, 5, 1307009001, 'DOCX'),
(14, '??¢nh Ä??»?ng', 1000, 1000, 5, 1307009050, 'GIF'),
(15, 'Flash', 0, 0, 5, 1307068509, 'SWF'),
(17, 'File n?©n', 0, 0, 5, 1308026768, 'RAR'),
(18, 'Pdf', 0, 0, 5, 1308026840, 'PDF'),
(22, 'bmp', 0, 0, 10, 1311241598, 'bmp'),
(21, 'ICON', 0, 0, 1, 1311183555, 'ICO'),
(23, 'VÄ?n b??£n', 0, 0, 1000, 1443032417, 'txt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `client` varchar(200) NOT NULL,
  `time` int(11) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `country` varchar(200) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `portal_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visit_page`
--

CREATE TABLE `visit_page` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `page` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
--

CREATE TABLE `word` (
  `id` varbinary(100) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '15',
  `value_1` mediumtext NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `word`
--

INSERT INTO `word` (`id`, `package_id`, `value_1`, `time`) VALUES
(0x41646d696e, 4, 'Admin', 0),
(0x54797065, 4, 'Type', 0),
(0x46756c6c6e616d65, 4, 'Fullname', 0),
(0x757064617465, 4, 'Update', 0),
(0x4c6f676f7574, 4, 'Logout', 0),
(0x4d41494e5f4e415649474154494f4e, 4, 'MAIN NAVIGATION', 0),
(0x64617368626f617264, 4, 'Dashboard', 0),
(0x5363686564756c655f706f7374, 4, 'Schedule post', 0),
(0x4164645f706f7374, 4, 'Add post', 0),
(0x536176655f706f7374, 4, 'Save post', 0),
(0x46616365626f6f6b5f6163636f756e7473, 4, 'Facebook accounts', 0),
(0x41444d494e5f41524541, 4, 'ADMIN AREA', 0),
(0x557365725f6d616e6167656d656e74, 4, 'User management', 0),
(0x53657474696e6773, 4, 'Settings', 0),
(0x416374696f6e, 4, 'Action', 0),
(0x416374697665, 4, 'Active', 0),
(0x4465616374697665, 4, 'Deactive', 0),
(0x44656c657465, 4, 'Delete', 0),
(0x4164645f6e6577, 4, 'Add new', 0),
(0x456d61696c, 4, 'Email', 0),
(0x4d6178696d756d5f66616365626f6f6b5f6163636f756e7473, 4, 'Maximum facebook accounts', 0),
(0x45787069726174696f6e5f64617465, 4, 'Expiration date', 0),
(0x54696d657a6f6e65, 4, 'Timezone', 0),
(0x537461747573, 4, 'Status', 0),
(0x4368616e676564, 4, 'Changed', 0),
(0x43726561746564, 4, 'Created', 0),
(0x4f7074696f6e, 4, 'Option', 0),
(0x7365636f6e6473, 4, 'Seconds', 0),
(0x6d696e75746573, 4, 'Minutes', 0),
(0x47454e4152414c, 4, 'GENARAL', 0),
(0x504f53545f414e445f5343484544554c45, 4, 'POST AND SCHEDULE', 0),
(0x4c4f47494e5f534f4349414c, 4, 'LOGIN SOCIAL', 0),
(0x4c494e4b5f534f4349414c5f50414745, 4, 'LINK SOCIAL PAGE', 0),
(0x576562736974655f6e616d65, 4, 'Website name', 0),
(0x576562736974655f6465736372697074696f6e, 4, 'Website description', 0),
(0x576562736974655f6b6579776f726473, 4, 'Website keywords', 0),
(0x576562736974655f6c6f676f, 4, 'Website logo', 0),
(0x76696577, 4, 'View', 0),
(0x64656c657465, 4, 'Delete', 0),
(0x576562736974655f69636f6e, 4, 'Website icon', 0),
(0x54696d657a6f6e655f736572766572, 4, 'Timezone server', 0),
(0x44656661756c745f6c616e6775616765, 4, 'Default language', 0),
(0x52656769737465725f75736572, 4, 'Register user', 0),
(0x4175746f5f6163746976655f75736572, 4, 'Auto active user', 0),
(0x44656661756c745f6d6178696d756d5f66616365626f6f6b5f6163636f756e7473, 4, 'Default maximum facebook accounts', 0),
(0x44656661756c745f64656c61795f65766572795f706f73745f6f6e5f706f73745f6e6f77, 4, 'Default delay every post on post now', 0),
(0x4d696e696d756d5f64656c61795f65766572795f706f73745f6f6e5f706f73745f6e6f77, 4, 'Minimum delay every post on post now', 0),
(0x44656661756c745f64656c61795f65766572795f706f73745f6f6e5f7363686564756c65, 4, 'Default delay every post on schedule', 0),
(0x4d696e696d756d5f64656c61795f65766572795f706f73745f6f6e5f7363686564756c65, 4, 'Minimum delay every post on schedule', 0),
(0x5375626d6974, 4, 'Submit', 0),
(0x546f74616c5f61727469636c65, 4, 'Total article', 0),
(0x546f74616c5f70726f63657373, 4, 'Total process', 0),
(0x546f74616c5f73756363657373, 4, 'Total success', 0),
(0x546f74616c5f6661696c757265, 4, 'Total failure', 0),
(0x546f74616c5f70726f63657373696e67, 4, 'Total processing', 0),
(0x50726f66696c65, 4, 'Profile', 0),
(0x47726f7570, 4, 'Group', 0),
(0x50616765, 4, 'Page', 0),
(0x5265706f72745f62795f646179, 4, 'Report by day', 0),
(0x6c6173745f6f6e6c696e655f74696d65, 4, 'Last online time', 0),
(0x41726520796f75207375726520796f752077616e7420746f2064656c6574652074686973206974656d3f, 4, 'Are you sure you want to delete this item?', 0),
(0x74696d657a6f6e65, 4, 'Timezone', 0),
(0x616374697665, 4, 'Active', 0),
(0x6c6173745f6f6e6c696e65, 4, 'Last online', 0),
(0x41726520796f75207375726520796f752077616e7420746f2064656c6574652074686973206974656d733f, 4, 'Are you sure you want to delete this items?', 0),
(0x4164645f75736572, 4, 'Add user', 0),
(0x50617373776f7264, 4, 'Password', 0),
(0x52655f70617373776f7264, 4, 'Re password', 0),
(0x4164642075736572207375636365737366756c6c79, 4, 'Add user successfully', 0),
(0x5570646174655f75736572, 4, 'Update user', 0),
(0x50617373776f726420696e636f7272656374, 4, 'Password incorrect', 0),
(0x50617373776f7264206973207265717569726564, 4, 'Password is required', 0),
(0x456d61696c20616c726561647920657869737473, 4, 'Email already exists', 0),
(0x5570646174652075736572207375636365737366756c6c79, 4, 'Update user successfully', 0),
(0x41726520796f75207375726520796f752077616e7420746f206163746976652074686973206974656d733f, 4, 'Are you sure you want to active this items?', 0),
(0x41726520796f75207375726520796f752077616e7420746f2064697361626c652074686973206974656d733f, 4, 'Are you sure you want to disable this items?', 0),
(0x557064617465207375636365737366756c6c79, 4, 'Update successfully', 0),
(0x4164642046616365626f6f6b206163636f756e74, 4, 'Add Facebook account', 0),
(0x557064617465206661696c757265, 4, 'Update failure', 0),
(0x506c6561736520696e70757420616c6c206669656c6473, 4, 'Please input all fields', 0),
(0x5265676973746572, 4, 'Register', 0),
(0x4c6f67696e, 4, 'Login', 0),
(0x456d61696c5f41646472657373, 4, 'Email Address', 0),
(0x436f6e6669726d5f70617373776f7264, 4, 'Confirm password', 0),
(0x4164645f6163636f756e74, 4, 'Add account', 0),
(0x66616365626f6f6b4944, 4, 'FacebookID', 0),
(0x557365726e616d65, 4, 'Username', 0),
(0x546f6b656e, 4, 'Token', 0),
(0x5570646174655f47726f757073, 4, 'Update Groups', 0),
(0x5570646174655f5061676573, 4, 'Update Pages', 0),
(0x5570646174655f4c696b65645f5061676573, 4, 'Update Liked Pages', 0),
(0x646179206c61206c6f69, 4, 'Day la loi', 0),
(0x536176655f6d616e6167656d656e7420, 4, 'Save management ', 0),
(0x4e616d65, 4, 'Name', 0),
(0x43617465676f7279, 4, 'Category', 0),
(0x5363686564756c6573, 4, 'Schedules', 0),
(0x41726520796f75207375726520796f752077616e7420746f2064656c65746520616c6c206974656d733f, 4, 'Are you sure you want to delete all items?', 0),
(0x4163636f756e74, 4, 'Account', 0),
(0x54696d655f506f7374, 4, 'Time Post', 0),
(0x5265706561745f506f7374, 4, 'Repeat Post', 0),
(0x686f757273, 4, 'Hours', 0),
(0x506f73745f6e6f77, 4, 'Post now', 0),
(0x5363686564756c65, 4, 'Schedule', 0),
(0x54696d655f706f7374, 4, 'Time post', 0),
(0x44656c6179, 4, 'Delay', 0),
(0x4175746f5f70617573655f61667465725f636f6d706c657465, 4, 'Auto pause after complete', 0),
(0x54696d655f7061757365, 4, 'Time pause', 0),
(0x456e645f646179, 4, 'End day', 0),
(0x536176655f7468655f7363686564756c65, 4, 'Save the schedule', 0),
(0x5061757365, 4, 'Pause', 0),
(0x526573756d65, 4, 'Resume', 0),
(0x54696d655f6c656674, 4, 'Time left', 0),
(0x50726576696577, 4, 'Preview', 0),
(0x416c6c5f50726f66696c6573, 4, 'All Profiles', 0),
(0x416c6c5f47726f757073, 4, 'All Groups', 0),
(0x416c6c5f5061676573, 4, 'All Pages', 0),
(0x416c6c5f4c696b65645f5061676573, 4, 'All Liked Pages', 0),
(0x53656c6563745f63617465676f7279, 4, 'Select category', 0),
(0x557064617465, 4, 'Update', 0),
(0x557365726e616d65206f722070617373776f726420696e636f7272656374, 4, 'Username or password incorrect', 0),
(0x5265676973746572207375636365737366756c6c79, 4, 'Register successfully', 0),
(0x5375636365737366756c6c79, 4, 'Successfully', 0),
(0x706f737473, 4, 'Posts', 0),
(0x4c6f67696e207375636365737366756c6c79, 4, 'Login successfully', 0),
(0x50726976616379, 4, 'Privacy', 0),
(0x4c696e6b, 4, 'Link', 0),
(0x50726f63657373, 4, 'Process', 0),
(0x56697369745f70616765, 4, 'Visit page', 0),
(0x6c6973745f7469746c65, 2, 'List title', 0),
(0x64656c6574655f6361636865, 2, 'Delete cache', 0),
(0x416464, 2, 'Add', 0),
(0x4164645f626c6f636b, 2, 'Add block', 0),
(0x7061636b616765732f61646d696e, 2, 'Packages/admin', 0),
(0x6e616d65, 2, 'Name', 0),
(0x706f7274616c, 2, 'Portal', 0),
(0x736561726368, 2, 'Search', 0),
(0x636865636b5f616c6c, 2, 'Check all', 0),
(0x736f7274, 2, 'Sort', 0),
(0x7469746c65, 2, 'Title', 0),
(0x7061636b6167655f6964, 2, 'Package id', 0),
(0x706172616d73, 2, 'Params', 0),
(0x45646974, 2, 'Edit', 0),
(0x6475706c6963617465, 2, 'Duplicate', 0),
(0x73656c656374, 2, 'Select', 0),
(0x73656c6563745f616c6c, 2, 'Select all', 0),
(0x73656c6563745f6e6f6e65, 2, 'Select none', 0),
(0x73656c6563745f696e76657274, 2, 'Select invert', 0),
(0x746f70, 2, 'Top', 0),
(0x656469745f6c61796f7574, 2, 'Edit layout', 0),
(0x56697369745f70726f66696c65, 4, 'Visit profile', 0),
(0x56697369742070616765, 4, 'Visit page', 0),
(0x56697369745f67726f7570, 4, 'Visit group', 0),
(0x416c6c5f6163636f756e74, 4, 'All account', 0),
(0x416c6c5f6163636f756e7473, 4, 'All accounts', 0),
(0x53656c656374206174206c656173742061206974656d, 4, 'Select at least a item', 0),
(0x416c6c5f63617465676f72696573, 4, 'All categories', 0),
(0x53656c656374206174206c65617374206120506167652f47726f75702f50726f66696c65, 4, 'Select at least a Page/Group/Profile', 0),
(0x53656c6563742061742043617465676f727920666f722064656c657465, 4, 'Select at Category for delete', 0),
(0x536176655f6c697374, 4, 'Save list', 0),
(0x53617665207375636365737366756c6c79, 4, 'Save successfully', 0),
(0x546865206572726f72206f6363757272656420647572696e672070726f63657373696e67, 4, 'The error occurred during processing', 0),
(0x4d657373616765206973207265717569726564, 4, 'Message is required', 0),
(0x506f7374207375636365737366756c6c79, 4, 'Post successfully', 0),
(0x436f6d706c657465, 4, 'Complete', 0),
(0x4661696c757265, 4, 'Failure', 0),
(0x746f74616c5f70726f66696c65, 4, 'Total profile', 0),
(0x546f74616c5f67726f7570, 4, 'Total group', 0),
(0x546f74616c5f70616765, 4, 'Total page', 0),
(0x546f74616c5f6c696b6564, 4, 'Total liked', 0),
(0x506f7374, 4, 'Post', 0),
(0x526570656174, 4, 'Repeat', 0),
(0x4c696e6b206973207265717569726564, 4, 'Link is required', 0),
(0x506f73745f6f6e5f66616365626f6f6b, 4, 'Post on facebook', 0),
(0x496d61676573206973207265717569726564, 4, 'Images is required', 0),
(0x566964656f206973207265717569726564, 4, 'Video is required', 0),
(0x53756363657373, 4, 'Success', 0),
(0x50726f63657373696e67, 4, 'Processing', 0),
(0x4163636f756e7420686173206265656e2065787069726564, 4, 'Account has been expired', 0),
(0x6475706c69636174655f7469746c65, 2, 'Duplicate title', 0),
(0x706167655f6e616d65, 2, 'Page name', 0),
(0x6465736372697074696f6e, 2, 'Description', 0),
(0x706167655f6c697374, 2, 'Page list', 0),
(0x64656c6574655f6d6f64756c655f6361636865, 2, 'Delete module cache', 0),
(0x53657474696e67, 2, 'Setting', 0),
(0x6164645f7469746c65, 2, 'Add title', 0),
(0x73617665, 2, 'Save', 0),
(0x6261636b, 2, 'Back', 0),
(0x696d6167655f75726c, 2, 'Image url', 0),
(0x74797065, 2, 'Type', 0),
(0x616374696f6e, 2, 'Action', 0),
(0x6f6e, 2, 'On', 0),
(0x7573655f64626c636c69636b, 2, 'Use dblclick', 0),
(0x5570646174655f73657474696e675f636f6465, 2, 'Update setting code', 0),
(0x4372656174655f626c6f636b5f636f6465, 2, 'Create block code', 0),
(0x44657374726f795f626c6f636b5f636f6465, 2, 'Destroy block code', 0),
(0x6d6f64756c655f7461626c65, 2, 'Module table', 0),
(0x7461626c65, 2, 'Table', 0),
(0x5570646174655f70726f66696c65, 4, 'Update profile', 0),
(0x66756c6c6e616d65, 4, 'Fullname', 0),
(0x526570617373776f7264, 4, 'Repassword', 0),
(0x4f6820736f7272792120596f75206861766520657863656564656420746865206e756d626572206f66206163636f756e747320616c6c6f7765642c20596f7520617265206f6e6c7920616c6c6f77656420746f2075706461746520796f7572206163636f, 4, 'Oh sorry! You have exceeded the number of accounts allowed, You are only allowed to update your account', 0),
(0x65787069726174696f6e5f64617465, 4, 'Expiration date', 0),
(0x46616365626f6f6b206163636f756e74206e6f74206578697374, 0, 'Facebook account not exist', 0),
(0x496d616765206973207265717569726564, 4, 'Image is required', 0),
(0x416464206174206c656173742074776f20696d61676573, 4, 'Add at least two images', 0),
(0x416e206163746976652061636365737320746f6b656e206d757374206265207573656420746f20717565727920696e666f726d6174696f6e2061626f7574207468652063757272656e7420757365722e, 4, 'An active access token must be used to query information about the current user.', 0),
(0x556e737570706f72746564206f7065726174696f6e, 4, 'Unsupported operation', 0),
(0x28233830332920536f6d65206f662074686520616c696173657320796f752072657175657374656420646f206e6f742065786973743a20667269656e646c69737473, 4, '(#803) Some of the aliases you requested do not exist: friendlists', 0),
(0x556e6b6e6f776e207061746820636f6d706f6e656e74733a202f666f6c6c6f77657273, 4, 'Unknown path components: /followers', 0),
(0x506c65617365207265647563652074686520616d6f756e74206f66206461746120796f752772652061736b696e6720666f722c207468656e20726574727920796f75722072657175657374, 4, 'Please reduce the amount of data you\'re asking for, then retry your request', 0),
(0x28233130302920547269656420616363657373696e67206e6f6e6578697374696e67206669656c642028666f6c6c6f777329206f6e206e6f64652074797065202847726f757029, 4, '(#100) Tried accessing nonexisting field (follows) on node type (Group)', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a656374207769746820494420273130303031353937333738333536342720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d69, 4, 'Unsupported get request. Object with ID \'100015973783564\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x282331313029205468697320616374696f6e2063616e2062652074616b656e206f6e6c79206f6e207468652063757272656e74207573657220616e642074686520706172616d20276964272028696620616e7929206d7573742062652074686520637572, 4, '(#110) This action can be taken only on the current user and the param \'id\' (if any) must be the current session user.', 0),
(0x2823313229207461676761626c655f667269656e6473206669656c642072657175697265732076657273696f6e2076322e30206f7220686967686572, 4, '(#12) taggable friends field requires version v2.0 or higher', 0),
(0x556e6b6e6f776e207061746820636f6d706f6e656e74733a202f666f6c6c6f776572, 4, 'Unknown path components: /follower', 0),
(0x556e6b6e6f776e207061746820636f6d706f6e656e74733a202f667269656e646c697374, 4, 'Unknown path components: /friendlist', 0),
(0x282331303029204e6f207065726d697373696f6e20746f2061636365737320696e76697461626c655f667269656e64732e, 4, '(#100) No permission to access invitable friends.', 0),
(0x282331322920696e76697461626c655f667269656e6473206669656c642072657175697265732076657273696f6e2076322e30206f7220686967686572, 4, '(#12) invitable friends field requires version v2.0 or higher', 0),
(0x456469742046616365626f6f6b206163636f756e74, 4, 'Edit Facebook account', 0),
(0x556e6b6e6f776e207061746820636f6d706f6e656e74733a202f667269656e642e616464, 4, 'Unknown path components: /friend.add', 0),
(0x556e6b6e6f776e207061746820636f6d706f6e656e74733a202f616464, 4, 'Unknown path components: /add', 0),
(0x28233130302920466f72206669656c642027696e76697461626c655f667269656e6473273a20706172616d206578636c756465645f696473206d75737420626520616e2061727261792e, 4, '(#100) For field \'invitable friends\': param excluded ids must be an array.', 0),
(0x282331302920546f20757365207461676761626c655f667269656e6473206f6e20626568616c66206f662070656f706c652077686f20617265206e6f742061646d696e732c20646576656c6f7065727320616e642074657374657273206f6620796f7572, 4, '(#10) To use taggable friends on behalf of people who are not admins, developers and testers of your app, your use of this endpoint must be reviewed and approved by Facebook. To submit this feature for review please read our documentation on reviewable features: https://developers.facebook.com/docs/apps/review', 0),
(0x546869732066616365626f6f6b206163636f756e7420616c726561647920657869737473, 4, 'This facebook account already exists', 0),
(0x467269656e64, 4, 'Friend', 0),
(0x746f74616c5f667269656e64, 4, 'Total friend', 0),
(0x5570646174655f467269656e64, 4, 'Update Friend', 0),
(0x70726576696577, 4, 'Preview', 0),
(0x6e657874, 4, 'Next', 0),
(0x56696577, 4, 'View', 0),
(0x28233130302920547269656420616363657373696e67206e6f6e6578697374696e67206669656c6420286d656d6265727329206f6e206e6f6465207479706520285573657229, 4, '(#100) Tried accessing nonexisting field (members) on node type (User)', 0),
(0x486176652070726f626c656d20776974682074686973206974656d, 4, 'Have problem with this item', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e7320666f722074686520757365722020617265206e6f7420616c6c6f7765642062656361757365207468652075736572206973206e6f74206120636f6e66, 4, 'Error validating access token: Sessions for the user  are not allowed because the user is not a confirmed user.', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a205468652073657373696f6e20686173206265656e20696e76616c696461746564206265636175736520746865207573657220686173206368616e6765642074686520706173, 4, 'Error validating access token: The session has been invalidated because the user has changed the password.', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a656374207769746820494420276170702720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d697373696e67207065726d6973, 4, 'Unsupported get request. Object with ID \'app\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x5570646174655f467269656e6473, 4, 'Update Friends', 0),
(0x46616365626f6f6b2041707020494420616e642046616365626f6f6b2041707020536563726574206973207265717569726564, 4, 'Facebook App ID and Facebook App Secret is required', 0),
(0x6c61796f7574, 2, 'Layout', 0),
(0x6361636861626c65, 2, 'Cachable', 0),
(0x69735f7573655f73617069, 2, 'Is use sapi', 0),
(0x63616368655f706172616d, 2, 'Cache param', 0),
(0x636f6e646974696f6e, 2, 'Condition', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a20546865207573657220686173206e6f7420617574686f72697a6564206170706c69636174696f6e203134353633343939353530313839352e, 4, 'Error validating access token: The user has not authorized application 145634995501895.', 0),
(0x436865636b5f746f6b656e, 4, 'Check token', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a20546865207573657220697320656e726f6c6c656420696e206120626c6f636b696e672c206c6f676765642d696e20636865636b706f696e74, 4, 'Error validating access token: The user is enrolled in a blocking, logged-in checkpoint', 0),
(0x4269727468646179, 4, 'Birthday', 0),
(0x47726f757073, 4, 'Groups', 0),
(0x5061676573, 4, 'Pages', 0),
(0x496e76616c696420656d61696c20666f726d6174, 4, 'Invalid email format', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e20646f6573206e6f74206d617463682063757272656e742073746f7265642073657373696f6e2e2054686973206d61792062652062656361757365207468, 4, 'Error validating access token: Session does not match current stored session. This may be because the user changed the password since the time the session was created or Facebook has changed the session for security reasons.', 0),
(0x46616365626f6f6b206163636f756e74206e6f7420616374697665, 0, 'Facebook account not active', 0),
(0x426164207369676e6174757265, 4, 'Bad signature', 0),
(0x746f74616c5f6c696b65, 4, 'Total like', 0),
(0x746f74616c, 4, 'Total', 0),
(0x496e76616c6964204f417574682061636365737320746f6b656e2e, 4, 'Invalid OAuth access token.', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e206861732065787069726564206f6e2054687572736461792c2032302d4170722d31372031313a30303a3030205044542e205468652063757272656e7420, 4, 'Error validating access token: Session has expired on Thursday, 20-Apr-17 11:00:00 PDT. The current time is Thursday, 20-Apr-17 20:17:44 PDT.', 0),
(0x53617665, 2, 'Save', 0),
(0x64656c6574655f636f6e6669726d5f7175657374696f6e, 2, 'Delete confirm question', 0),
(0x6d6f64756c655f776f7264735f6f66, 2, 'Module words of', 0),
(0x616c6c5f776f726473, 2, 'All words', 0),
(0x6964, 2, 'Id', 0),
(0x74696d65, 2, 'Time', 0),
(0x46756c6c6e616d65206973207265717569726564, 4, 'Fullname is required', 0),
(0x656469745f7469746c65, 2, 'Edit title', 0),
(0x456d61696c206973207265717569726564, 4, 'Email is required', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a65637420776974682049442027313930383534373132363036303437302720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d, 4, 'Unsupported get request. Object with ID \'1908547126060470\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a20546865207573657220686173206e6f7420617574686f72697a6564206170706c69636174696f6e20313031373230333131313636353332332e, 4, 'Error validating access token: The user has not authorized application 1017203111665323.', 0),
(0x4d657373616765, 4, 'Message', 0),
(0x4d616c666f726d65642061636365737320746f6b656e20454141414155615a41386a6c414241467a49313935766b56775079703134745531666965534f454a573868376f50456e62685264774847666868443848386a52665a4242645532797578686c79, 4, 'Malformed access token EAAAAUaZA8jlABAFzI195vkVwPyp14tU1fieSOEJW8h7oPEnbhRdwHGfhhD8H8jRfZBBdU2yuxhlyaDKwaRhb5I06V01tHirtTS5oIh1lSSZAo87ejGbdjaFZCCakNELQO1pCYctgMhiYZCzuD7S2ZCJErKlqCH4szudjRBULu7wgZDZD\nEAAAAUaZA8jlABAElfeTBt5Gpxtl69DbJZBVYz8a3vW9zrN9ZAw1HEI9kwaM3N36JVynjO3Ec9BKy6EGGsLURcW2Q98jai6t79Fjx5YZBeo4d5dw6N5YVVg4FBkHtht5VJWeVAZBtyqWtU1FCNINaAZCEy800NWuWJdruvDl9j4EwZDZD\nEAAAAUaZA8jlABALtTpyTFZBvGb4SMjerZAUhVb5GZBBB003RBCiwpbqVH6tPPpl9Q5K8EJQuZB1kKWXuEbFwL9dxcz5JRNMDd18ybU9ZBfqyx2iVkIjZAFRuoQyLFhsx4ZC71Sd1Qw2sz8ypqsUqZBlamiA4DX0ZAZC75gCDZBkw8RDJbrpSwpDIHhi1', 0),
(0x4d616c666f726d65642061636365737320746f6b656e2045414146474f5a43445633623042414b785349676c3747773144496134396b637a3241454e754f5659475561666d4e616967436a515057355a416f4b3468394b36345a41313962784b36763072, 4, 'Malformed access token EAAFGOZCDV3b0BAKxSIgl7Gw1DIa49kcz2AENuOVYGUafmNaigCjQPW5ZAoK4h9K64ZA19bxK6v0rZByCkMOVZAGSQLTsGXzPVLRsb3NuQgy1hzcIFfcE4aRFbPYWyPlspkgUa23XhkNiIeUTRDdAw73s6scX9I8JlNyTPuwSiYwZDZD\nEAAFGOZCDV3b0BAEtXdZA7zRnRwNKQyvDVA3RfPNQUDWQ3R9ZCZCh4qsw9iLzDZBdiJLfRArRUIUNjoTEEJhD9cEOsT7DCUoD9wj2fj2SK5aJZAp79n1HZB7wlB85LsGBpMUAJJgD2GwT2vQZCcGZBiSXQ42JhnWLIyjZAM3P2TofSe9wZDZD\nEAAFGOZCDV3b0BAKufR3eQ9yjCG5KSR1YBlEuq3dAHoPkIgEWJW1wgVIkoZBi4ce3xiXrQhYFiZBzCrRvkeriKu8NS07AtYfVB8cLgY80UNl4bAZCVII85TFLQZBburY89IBREoKaXZCK7pkiRWjbMZCEZCfDCUNiwg0a50Q4VZBsZAfAZDZD\n', 0),
(0x496e76616c6964204f417574682061636365737320746f6b656e207369676e61747572652e, 4, 'Invalid OAuth access token signature.', 0),
(0x64656c6574655f7469746c65, 2, 'Delete title', 0),
(0x6578706f7274, 2, 'Export', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e206861732065787069726564206f6e2053617475726461792c2030362d4d61792d31372030393a30303a3030205044542e205468652063757272656e7420, 4, 'Error validating access token: Session has expired on Saturday, 06-May-17 09:00:00 PDT. The current time is Saturday, 06-May-17 09:16:37 PDT.', 0),
(0x4572726f722076616c69646174696e67206170706c69636174696f6e2e20496e76616c6964206170706c69636174696f6e2049442e, 4, 'Error validating application. Invalid application ID.', 0),
(0x757365725f6964, 4, 'User id', 0),
(0x73657474696e675f666f72, 2, 'Setting for', 0),
(0x6f66, 2, 'Of', 0),
(0x6d6f64756c655f73657474696e67, 2, 'Module setting', 0),
(0x646174615f69735f75706461746564, 2, 'Data is updated', 0),
(0x636c6f7365, 2, 'Close', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a205468652073657373696f6e20686173206265656e20696e76616c6964617465642062656361757365207468652075736572206368616e676564207468656972207061737377, 4, 'Error validating access token: The session has been invalidated because the user changed their password or Facebook has changed the session for security reasons.', 0),
(0x28233830332920536f6d65206f662074686520616c696173657320796f752072657175657374656420646f206e6f742065786973743a2031343935353631323230323630363537, 4, '(#803) Some of the aliases you requested do not exist: 1495561220260657', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a656374207769746820494420273632383130313230343034303532322720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d69, 4, 'Unsupported get request. Object with ID \'628101204040522\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x28233130302920547269656420616363657373696e67206e6f6e6578697374696e67206669656c6420286d656d6265727329206f6e206e6f64652074797065202850686f746f29, 4, '(#100) Tried accessing nonexisting field (members) on node type (Photo)', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a656374207769746820494420273831383739373035383236393934372720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d69, 4, 'Unsupported get request. Object with ID \'818797058269947\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x4d616c666f726d65642061636365737320746f6b656e, 4, 'Malformed access token', 0),
(0x416e20756e6b6e6f776e206572726f72206f63637572726564, 4, 'An unknown error occurred', 0),
(0x4d616c666f726d65642061636365737320746f6b656e2045414141414159735837547342414f5134746d636e637752654636566b53516b4a31305a4159724572464278416e5a43545655337931505861746d434372734a6c465074556c6a4a7077597836, 4, 'Malformed access token EAAAAAYsX7TsBAOQ4tmcncwReF6VkSQkJ10ZAYrErFBxAnZCTVU3y1PXatmCCrsJlFPtUljJpwYx6OgALBOT55FOYFba3Idq201zdOXbZA8s3y3VusBLUFkIO9338ZCSwRPouHeeQae5EN1D4DD5lNRNkA5auIEeWDTSRymy2kkRbwmViAaeqaOQp04ej3v9BBcS0gqVmXwZDZD\",\"machine id\":\"y7I4WQ3dwNb4gtfzLBn6KDhO', 0),
(0x50617373776f726473206d757374206265206174206c6561737420362063686172616374657273, 4, 'Passwords must be at least 6 characters', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2054686973206d61792062652062656361757365207468652075736572206c6f67676564206f7574206f72206d61792062652064756520746f20612073797374656d20657272, 4, 'Error validating access token: This may be because the user logged out or may be due to a system error.', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e206861732065787069726564206f6e20547565736461792c2031312d4a756c2d31372031303a30303a3030205044542e205468652063757272656e742074, 4, 'Error validating access token: Session has expired on Tuesday, 11-Jul-17 10:00:00 PDT. The current time is Tuesday, 11-Jul-17 10:04:06 PDT.', 0),
(0x556e737570706f727465642067657420726571756573742e204f626a65637420776974682049442027313430323038333930393930353237362720646f6573206e6f742065786973742c2063616e6e6f74206265206c6f616465642064756520746f206d, 4, 'Unsupported get request. Object with ID \'1402083909905276\' does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 0),
(0x4578706563746564203120272e2720696e2074686520696e707574206265747765656e2074686520706f73746361726420616e6420746865207061796c6f6164, 4, 'Expected 1 \'.\' in the input between the postcard and the payload', 0),
(0x5468652061636365737320746f6b656e20636f756c64206e6f7420626520646563727970746564, 4, 'The access token could not be decrypted', 0),
(0x4572726f722076616c69646174696e67206170706c69636174696f6e2e2043616e6e6f7420676574206170706c69636174696f6e20696e666f2064756520746f20612073797374656d206572726f722e, 4, 'Error validating application. Cannot get application info due to a system error.', 0),
(0x496e76616c6964204a534f4e20666f7220706f737463617264, 4, 'Invalid JSON for postcard', 0),
(0x4572726f722076616c69646174696e672061636365737320746f6b656e3a2053657373696f6e206861732065787069726564206f6e2053756e6461792c2032372d4175672d31372032333a30303a3030205044542e205468652063757272656e74207469, 4, 'Error validating access token: Session has expired on Sunday, 27-Aug-17 23:00:00 PDT. The current time is Monday, 28-Aug-17 00:38:32 PDT.', 0),
(0x486f746c696e65, 4, 'Hotline', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zone`
--

CREATE TABLE `zone` (
  `id` int(11) NOT NULL,
  `structure_id` bigint(20) NOT NULL,
  `name_1` varchar(250) NOT NULL,
  `description_1` longtext NOT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL,
  `radius` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `time` int(11) NOT NULL,
  `map` varchar(250) NOT NULL,
  `region_id` int(11) NOT NULL,
  `file` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `website` varchar(250) NOT NULL,
  `is_footer` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `zone`
--

INSERT INTO `zone` (`id`, `structure_id`, `name_1`, `description_1`, `lat`, `long`, `radius`, `status`, `image_url`, `time`, `map`, `region_id`, `file`, `logo`, `website`, `is_footer`) VALUES
(71, 1290000000000000000, 'H??­u Giang', '', 9.7579, 105.641, 0, 'SHOW', '', 1301330164, '', 0, '', 'upload/default/content/07.2011/HauGiang.jpg', '', 0),
(36, 1300000000000000000, 'H?²a B?¬nh', '', 20.8306, 105.34, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HoaBinh.jpg', '', 0),
(37, 1310000000000000000, 'HÆ°ng Y??n', '', 20.8526, 106.017, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HungYen.jpg', '', 0),
(13, 1010000000000000000, 'An Giang', '', 10.3759, 105.419, 0, 'SHOW', 'upload/default/content/07.2011/1310109018_AnGiang1.jpg', 0, '', 0, '', 'upload/default/content/07.2011/AnGiang1.jpg', '', 0),
(14, 1110000000000000000, 'BR.VÅ©ng T? u', '', 10.4114, 107.136, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/Baria.jpg', '', 0),
(15, 1020000000000000000, 'B???c Li??u', '', 9.26035, 105.752, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BacLieu.jpg', '', 0),
(16, 1040000000000000000, 'B???c K???n', '', 22.1461, 105.828, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BacKan.jpg', '', 0),
(17, 1030000000000000000, 'B???c Giang', '', 21.2909, 106.187, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/1310110005_BacGiang.jpg', '', 0),
(18, 1050000000000000000, 'B???c Ninh', '', 21.1839, 106.056, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BacNinh.jpg', '', 0),
(19, 1060000000000000000, 'B???n Tre', '', 10.2414, 106.376, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BenTre.jpg', '', 0),
(20, 1070000000000000000, 'B?¬nh DÆ°Æ?ng', '', 11.1424, 106.629, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BinhDuong.jpg', '', 0),
(21, 1100000000000000000, 'B?¬nh Ä?»?nh', '', 14.1665, 108.903, 0, 'SHOW', 'upload/default/content/12.2011/ab.jpg', 0, '', 0, '', 'upload/default/content/07.2011/BinhDinh.jpg', 'binhdinh.vietccr.com', 0),
(22, 1080000000000000000, 'B?¬nh PhÆ°?»?c', '', 11.7512, 106.723, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BinhPhuoc.jpg', '', 0),
(23, 1090000000000000000, 'B?¬nh Thu??­n', '', 11.0528, 108.143, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/BinhThuan.jpg', '', 0),
(24, 1130000000000000000, 'C?  Mau', '', 9.18333, 105.15, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/CaMau.jpg', '', 0),
(25, 1120000000000000000, 'Cao B??±ng', '', 22.6637, 106.268, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/CaoBang.jpg', '', 0),
(26, 1140000000000000000, 'C??§n ThÆ?', '', 10.0318, 105.784, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/CanTho.jpg', '', 0),
(11, 1150000000000000000, 'Ä?  N??µng', '', 16.0516, 108.215, 0, 'SHOW', 'upload/default/content/12.2011/Vinh Da nang - Anh trang Intro.jpg', 0, '', 0, '', 'upload/default/content/07.2011/DaNang.jpg', 'danang.vietccr.com', 0),
(27, 1160000000000000000, 'Ä???k L???k', '', 12.71, 108.238, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/DakLak.jpg', '', 0),
(70, 1170000000000000000, 'Ä???k N??ng', '', 12.3018, 107.764, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/DakNong.png', '', 0),
(69, 1180000000000000000, 'Äi?»?n Bi??n', '', 21.8092, 103.082, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/DienBien.jpg', '', 0),
(28, 1190000000000000000, 'Ä?»“ng Nai', '', 11.1098, 107.196, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/DongNai.jpg', '', 0),
(29, 1200000000000000000, 'Ä?»“ng Th??p', '', 10.4938, 105.688, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/DongThap.jpg', '', 0),
(30, 1210000000000000000, 'Gia Lai', '', 13.7737, 108.238, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/GiaLai.jpg', '', 0),
(31, 1220000000000000000, 'H?  Giang', '', 22.8026, 104.978, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HaGiang.jpg', '', 0),
(32, 1230000000000000000, 'H?  Nam', '', 20.5411, 105.914, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HaNam.jpg', '', 0),
(8, 1240000000000000000, 'H?  N?»?i', '<p>H&agrave; N?»?i (ch?»? H&aacute;n: æ²³å?§) l&agrave; th?»§ Ä?&ocirc; c?»§a nÆ°?»?c Vi?»?t Nam, Ä??»“ng th?»i cÅ©ng l&agrave; m?»?t  trung t&acirc;m ch&iacute;nh tr?»?, kinh t???, vÄ?n h&oacute;a, thÆ°Æ?ng m???i v&agrave; du l?»?ch quan tr?»ng  c?»§a Vi?»?t Nam. S&ocirc;ng H?»“ng ch??£y qua l&ograve;ng H&agrave; N?»?i. H&agrave; N?»?i thu?»?c v&ugrave;ng Ä??»“ng  b??±ng B???c B?»? (ch&acirc;u th?»? S&ocirc;ng H?»“ng), gi&aacute;p v?»?i nÄ?m t?»?nh: Th&aacute;i Nguy&ecirc;n ?»? ph&iacute;a  b???c, B???c Ninh v&agrave; HÆ°ng Y&ecirc;n ?»? ph&iacute;a Ä?&ocirc;ng v&agrave; Ä?&ocirc;ng nam, H&agrave; T&acirc;y v&agrave; VÄ©nh Ph&uacute;c ?»?  ph&iacute;a nam v&agrave; ph&iacute;a t&acirc;y.<br /><br />Gi?»?a 1010 v&agrave; 1802 (v?»?i m?»?t s?»? gi&aacute;n Ä?o???n  ng???n), H&agrave; N?»?i l&agrave; kinh Ä?&ocirc; c?»§a nh&agrave; nÆ°?»?c Vi?»?t Nam Ä??»?c l??­p, v&igrave; th??? hi?»?n nay  H&agrave; N?»?i l&agrave; th?»§ Ä?&ocirc; l&acirc;u Ä??»i nh???t t???i Ä&ocirc;ng Nam &Aacute;. Ä???n Ä??»i nh&agrave; Nguy?»?n, kinh  Ä?&ocirc; Ä?Æ°?»£c d?»i Ä????n Hu??? (H&agrave; N?»?i ch?»? gi?»? v?»? tr&iacute; trung t&acirc;m B???c K?»³).<br /><br /><span style=\"font-style: italic;\">H&agrave; N?»?i Ä?ang ti???n t?»?i vi?»?c k?»? ni?»?m 1000 nÄ?m ThÄ?ng Long-Ä&ocirc;ng Ä&ocirc;-H&agrave; N?»?i v&agrave;o th&aacute;ng 10 nÄ?m 2010.<br /><br /></span></p>\r\n<div style=\"text-align: center;\"><span style=\"font-style: italic;\"><img src=\"http://www.cannao.com/upload_images/Image/Logo.jpg\" alt=\"\" /></span></div>\r\n<div style=\"text-align: center;\"><span style=\"font-size: 9px;\">Bi?»?u tÆ°?»£ng c?»§a th&agrave;nh ph?»? H&agrave; N?»?i - Khu&ecirc; VÄ?n C&aacute;c</span></div>\r\n<p><br style=\"font-weight: bold;\" /><span style=\"font-weight: bold;\">C&aacute;c Ä?Æ?n v?»? h&agrave;nh ch&iacute;nh: </span>H&agrave; N?»?i c&oacute; 9 qu??­n n?»?i th&agrave;nh v&agrave; 5 huy?»?n ngo???i th&agrave;nh:</p>\r\n<ol>\r\n<li>Qu??­n Ba Ä&igrave;nh</li>\r\n<li>Qu??­n C??§u Gi???y</li>\r\n<li>Qu??­n Ä?»?ng Äa</li>\r\n<li>Qu??­n Hai B&agrave; TrÆ°ng</li>\r\n<li>Qu??­n Ho&agrave;n Ki???m</li>\r\n<li>Qu??­n Ho&agrave;ng Mai</li>\r\n<li>Qu??­n Long Bi&ecirc;n</li>\r\n<li>Qu??­n T&acirc;y H?»“</li>\r\n<li>Qu??­n Thanh Xu&acirc;n</li>\r\n<li style=\"font-weight: bold;\">Huy?»?n Ä&ocirc;ng Anh</li>\r\n<li style=\"font-weight: bold;\">Huy?»?n Gia L&acirc;m</li>\r\n<li style=\"font-weight: bold;\">Huy?»?n S&oacute;c SÆ?n</li>\r\n<li style=\"font-weight: bold;\">Huy?»?n Thanh Tr&igrave;</li>\r\n<li><span style=\"font-weight: bold;\">Huy?»?n T?»« Li&ecirc;m</span><br style=\"font-weight: bold;\" /></li>\r\n</ol>\r\n<p><span style=\"font-size: 11px;\"><span style=\"font-weight: bold;\">L?»?ch s?»­ v&agrave; t&ecirc;n g?»i</span></span><br /><br /><span style=\"font-weight: bold;\">T&ecirc;n g?»i</span><br /><br />H&agrave;  N?»?i Ä?&atilde; tr??£i qua nhi?»u t&ecirc;n g?»i kh&aacute;c nhau trong l?»?ch s?»­. Trong th?»i k?»³  cai tr?»? c?»§a ngÆ°?»i Trung Qu?»?c n&oacute; t?»«ng c&oacute; t&ecirc;n l&agrave; huy?»?n T?»?ng B&igrave;nh, xu???t  hi?»?n trong s?»­ s&aacute;ch t?»« nh?»?ng nÄ?m 454-456 th?»i Nam B???c tri?»u c?»§a Trung  Qu?»?c.<br /><br />NÄ?m 545, L&yacute; B&iacute; Ä?&aacute;nh th???ng qu&acirc;n nh&agrave; LÆ°Æ?ng l??­p n&ecirc;n nÆ°?»?c V???n  Xu&acirc;n Ä??»?c l??­p. &Ocirc;ng t?»± xÆ°ng L&yacute; Nam Ä???, Ä??»?nh Ä?&ocirc; ?»? mi?»n c?»­a s&ocirc;ng T&ocirc; L?»?ch H&agrave;  N?»?i. &Ocirc;ng cho l??­p Ä?i?»?n V???n Th?» l&agrave; nÆ?i h?»p b&agrave;n vi?»?c nÆ°?»?c. L&yacute; Nam Ä??? cÅ©ng  cho d?»±ng m?»?t ng&ocirc;i ch&ugrave;a l?»?n ?»? phÆ°?»ng Y&ecirc;n Hoa (Y&ecirc;n Ph?»?) t&ecirc;n l&agrave; Khai Qu?»?c,  ti?»n th&acirc;n c?»§a ch&ugrave;a Ch&ugrave;a Tr???n Qu?»?c ng&agrave;y nay.<br /><br />V?» sau H&agrave; N?»?i Ä?Æ°?»£c  Ä??»?i t&ecirc;n g?»i l&agrave; Ä???i La (nguy&ecirc;n l&agrave; t&ecirc;n c?»§a v&ograve;ng th&agrave;nh ngo&agrave;i c&ugrave;ng bao b?»c  l???y v&ograve;ng th&agrave;nh nh?» hÆ?n ?»? trong): s&aacute;ch Kh&acirc;m Ä??»?nh Vi?»?t s?»­ Th&ocirc;ng gi&aacute;m CÆ°Æ?ng  m?»?c c&oacute; vi???t:<br /><br />&nbsp;&nbsp;&nbsp; \"<span style=\"font-style: italic;\">Th&agrave;nh n&agrave;y do  TrÆ°Æ?ng B&aacute; Nghi Ä????p t?»« nÄ?m Ä???i L?»?ch th?»© 2 (767) Ä??»i ÄÆ°?»ng; nÄ?m Trinh  Nguy&ecirc;n th?»© 7 (791), Tri?»?u XÆ°Æ?ng Ä????p th&ecirc;m; nÄ?m Nguy&ecirc;n H&ograve;a th?»© 3 (808),  TrÆ°Æ?ng Chu l???i s?»­a Ä????p l???i; nÄ?m TrÆ°?»ng Kh&aacute;nh th?»© 4 (824), L&yacute; Nguy&ecirc;n Gia  d?»i ph?»§ tr?»? t?»?i b&ecirc;n s&ocirc;ng T&ocirc; L?»?ch, Ä????p m?»?t c&aacute;i th&agrave;nh nh?», g?»i l&agrave; La  Th&agrave;nh; nÄ?m H&agrave;m Th&ocirc;ng th?»© 7 (866), Cao Bi?»n Ä????p ngo???i th&agrave;nh bao quanh  \"kim th&agrave;nh\", cÅ©ng g?»i t&ecirc;n l&agrave; La Th&agrave;nh</span>.\"<br /><br />Long Ä?»? (r?»?n r?»“ng)  cÅ©ng l&agrave; m?»?t t&ecirc;n g?»i c?»§a H&agrave; N?»?i, nhÆ°ng kh&ocirc;ng ph??£i t&ecirc;n g?»i ch&iacute;nh th?»©c,  t&ecirc;n g?»i n&agrave;y xu???t hi?»?n t?»« th?»i Cao Bi?»n. Truy?»n thuy???t k?»? r??±ng, v&agrave;o nÄ?m  866, khi Cao Bi?»n m?»?i Ä????p th&agrave;nh Ä???i La, th???y th??§n nh&acirc;n hi?»?n l&ecirc;n t?»± xÆ°ng  l&agrave; th??§n Long Ä?»?. Do Ä?&oacute; trong s?»­ s&aacute;ch thÆ°?»ng g?»i ThÄ?ng Long l&agrave; Ä????t Long  Ä?»?.<br /><br />Th?»i k?»³ Ä?&ocirc; h?»? PhÆ°Æ?ng B???c nh&agrave; Tu?»³ (581-618), nh&agrave; ÄÆ°?»ng  (618-907), tr?»? s?»? ?»? v&ugrave;ng Long Bi&ecirc;n (B???c Ninh ng&agrave;y nay), t?»?i Ä??»i Tu?»³  ch&uacute;ng m?»?i chuy?»?n Ä????n T?»?ng B&igrave;nh, t?»©c H&agrave; N?»?i.<br /><br />Th&agrave;nh cÅ©ng c&ograve;n c&oacute; t&ecirc;n  l&agrave; Ä???i La. Ä???i La, hay Ä???i La th&agrave;nh, nguy&ecirc;n l&agrave; t&ecirc;n v&ograve;ng th&agrave;nh ngo&agrave;i  c&ugrave;ng bao b?»c l???y Kinh Ä&ocirc;. Theo ki???n tr&uacute;c xÆ°a, Kinh Ä&ocirc; thÆ°?»ng c&oacute; \"Tam  tr&ugrave;ng th&agrave;nh qu&aacute;ch\": trong c&ugrave;ng l&agrave; T?»­ C???m th&agrave;nh (t?»©c b?»©c th&agrave;nh m&agrave;u Ä??»  t&iacute;a) nÆ?i vua v&agrave; ho&agrave;ng t?»?c ?»?, gi?»?a l&agrave; Kinh th&agrave;nh v&agrave; ngo&agrave;i c&ugrave;ng l&agrave; Ä???i La  th&agrave;nh. NÄ?m 866 Cao Bi?»n b?»“i Ä????p th&ecirc;m Ä???i La th&agrave;nh r?»?ng hÆ?n v&agrave; v?»?ng ch&atilde;i  hÆ?n trÆ°?»?c. T?»« Ä?&oacute;, th&agrave;nh n&agrave;y Ä?Æ°?»£c g?»i l&agrave; th&agrave;nh Ä???i La. Th&iacute; d?»? trong Chi???u  d?»i Ä?&ocirc; c?»§a vua L&yacute; Th&aacute;i T?»? vi???t nÄ?m 1010 c&oacute; vi???t: \"... Hu?»?ng chi th&agrave;nh  Ä???i La, Ä?&ocirc; cÅ© c?»§a Cao VÆ°Æ?ng (t?»©c Cao Bi?»n) ?»? gi?»?a khu v?»±c tr?»i Ä????t...\"  (To&agrave;n thÆ°, T??­p I, H, 1993, tr 241).<br /><br />Khi Vi?»?t Nam gi&agrave;nh Ä?Æ°?»£c Ä??»?c  l??­p, H&agrave; N?»?i l&uacute;c Ä?&oacute; tr?»? th&agrave;nh th?»§ Ä?&ocirc; c?»§a Ä???i Vi?»?t t?»« th??? k?»· th?»© 11, v?»?i  t&ecirc;n g?»i ThÄ?ng Long (æ??é¾, c&oacute; nghÄ©a l&agrave; \"r?»“ng bay l&ecirc;n\"), sau khi L&yacute; C&ocirc;ng U??©n  ra chi???u d?»i Ä?&ocirc; nÄ?m 1010. ThÄ?ng Long l&agrave; th?»§ Ä?&ocirc; cho Ä????n nÄ?m 1397, khi  th?»§ Ä?&ocirc; Ä?Æ°?»£c di chuy?»?n v?» Thanh H&oacute;a, (t?»©c T&acirc;y Ä&ocirc;). ThÄ?ng Long khi Ä?&oacute; c&oacute;  t&ecirc;n g?»i l&agrave; Ä&ocirc;ng Ä&ocirc;. S&aacute;ch Ä???i Vi?»?t s?»­ k&yacute; to&agrave;n thÆ° cho bi???t: \"M&ugrave;a h??? th&aacute;ng  4 nÄ?m Äinh S?»­u (1397) l???y Ph&oacute; tÆ°?»?ng L&ecirc; H&aacute;n ThÆ°Æ?ng (t?»©c H?»“ H&aacute;n ThÆ°Æ?ng -  TM) coi ph?»§ Ä?&ocirc; h?»? l&agrave; Ä&ocirc;ng Ä&ocirc;\" (To&agrave;n thÆ° SÄ?d - tr 192). Trong b?»? Kh&acirc;m  Ä??»?nh Vi?»?t s?»­ th&ocirc;ng gi&aacute;m cÆ°Æ?ng m?»?c, s?»­ th??§n nh&agrave; Nguy?»?n ch&uacute; th&iacute;ch: \"Ä&ocirc;ng  Ä&ocirc; t?»©c ThÄ?ng Long, l&uacute;c ???y g?»i Thanh Ho&aacute; l&agrave; T&acirc;y Ä&ocirc;, ThÄ?ng Long l&agrave; Ä&ocirc;ng  Ä&ocirc;\" (CÆ°Æ?ng m?»?c - T??­p 2, H 1998, tr 700).<br /><br />NÄ?m 1408, nÆ°?»?c Ä???i Ngu c?»§a cha con h?» H?»“ b?»? qu&acirc;n Ä??»?i c?»§a nh&agrave; Minh x&acirc;m chi???m v&agrave; Ä&ocirc;ng Ä&ocirc; b?»? ngÆ°?»i Minh Ä??»?i t&ecirc;n th&agrave;nh Ä&ocirc;ng Quan.<br /><br />NÄ?m  1428, sau khi qu&acirc;n Ä??»?i c?»§a L&ecirc; L?»£i gi??£i ph&oacute;ng Ä????t nÆ°?»?c th&igrave; Ä&ocirc;ng Quan  Ä?Æ°?»£c Ä??»?i t&ecirc;n th&agrave;nh Ä&ocirc;ng Kinh - t&ecirc;n g?»i n&agrave;y ngÆ°?»i ch&acirc;u &Acirc;u phi&ecirc;n &acirc;m th&agrave;nh  Tonkin. S&aacute;ch Ä???i Vi?»?t s?»­ k&yacute; to&agrave;n thÆ° cho bi???t s?»± ra Ä??»i c?»§a c&aacute;i t&ecirc;n n&agrave;y  nhÆ° sau: \"M&ugrave;a h???, th&aacute;ng 4 nÄ?m Äinh M&ugrave;i (1427), Vua (t?»©c L&ecirc; L?»£i - TM) t?»«  Ä?i?»?n tranh ?»? B?»“ Ä?», v&agrave;o Ä?&oacute;ng ?»? th&agrave;nh Ä&ocirc;ng Kinh, Ä????i x&aacute; Ä??»?i ni&ecirc;n hi?»?u l&agrave;  Thu??­n Thi&ecirc;n, d?»±ng qu?»?c hi?»?u l&agrave; Ä???i Vi?»?t Ä?&oacute;ng Ä?&ocirc; ?»? Ä&ocirc;ng Kinh. Ng&agrave;y 15 vua  l&ecirc;n ng&ocirc;i ?»? Ä&ocirc;ng Kinh, t?»©c l&agrave; th&agrave;nh ThÄ?ng Long. V&igrave; Thanh H&oacute;a c&oacute; T&acirc;y Ä&ocirc;,  cho n&ecirc;n g?»i th&agrave;nh ThÄ?ng Long l&agrave; Ä&ocirc;ng Kinh\" (To&agrave;n thÆ° - SÄ?d. T??­p 2, tr  293).<br /><br /><span style=\"font-weight: bold;\">Th?»i T&acirc;y SÆ?n, v&igrave; kinh Ä?&ocirc; Ä?&oacute;ng ?»? Ph&uacute; Xu&acirc;n th&agrave;nh c&ograve;n c&oacute; t&ecirc;n l&agrave; B???c Th&agrave;nh.</span><br /><br />NÄ?m  1802, khi nh&agrave; Nguy?»?n chuy?»?n kinh Ä?&ocirc; v?» Hu???, n&oacute; l???i Ä?Æ°?»£c Ä??»?i t&ecirc;n th&agrave;nh  ThÄ?ng Long, nhÆ°ng l??§n n&agrave;y ch?»? \"Long\" (éš?) bi?»?u hi?»?n cho s?»± th?»?nh vÆ°?»£ng,  ch?»© kh&ocirc;ng ph??£i l&agrave; r?»“ng, v?»?i l&yacute; do r??±ng r?»“ng l&agrave; tÆ°?»£ng trÆ°ng cho nh&agrave; vua,  nay vua kh&ocirc;ng ?»? Ä?&acirc;y th&igrave; kh&ocirc;ng Ä?Æ°?»£c d&ugrave;ng ch?»? \"Long\" l&agrave; \"r?»“ng\" (Tr??§n Huy  Li?»?u (ch?»§ bi&ecirc;n), L?»?ch s?»­ th?»§ Ä?&ocirc; H&agrave; N?»?i, H. 1960, tr 81).<br /><br />Sau Ä?&oacute;  vua Gia Long c&ograve;n h??? l?»?nh ph&aacute; b?» ho&agrave;ng th&agrave;nh cÅ©, v&igrave; vua kh&ocirc;ng Ä?&oacute;ng Ä?&ocirc; ?»?  ThÄ?ng Long, m&agrave; ho&agrave;ng th&agrave;nh ThÄ?ng Long l???i r?»?ng qu&aacute;.<br /><br />NÄ?m 1831 vua  Minh M???ng l??­p ra t?»?nh H&agrave; N?»?i: t?»?nh n??±m trong (n?»?i) hai con s&ocirc;ng (h&agrave;) l&agrave;  s&ocirc;ng H?»“ng v&agrave; s&ocirc;ng Ä&aacute;y. Khi Vi?»?t Nam ti???p x&uacute;c v?»?i phÆ°Æ?ng T&acirc;y, t&ecirc;n  H&aacute;n-Vi?»?t c?»§a H&agrave; N?»?i Ä&ocirc;ng Kinh, Ä?Æ°?»£c vi???t th&agrave;nh Tonkin v&agrave; Ä?Æ°?»£c ngÆ°?»i ch&acirc;u  &Acirc;u d&ugrave;ng ph?»? bi???n. NÄ?m 1873, ngÆ°?»i Ph&aacute;p b???t Ä???§u ti???n Ä?&aacute;nh H&agrave; N?»?i v&agrave; 10  nÄ?m sau th&igrave; chi???m to&agrave;n b?»?. T?»« nÄ?m 1887, H&agrave; N?»?i tr?»? th&agrave;nh th?»§ ph?»§ c?»§a <br /><br />NÄ?m  1940, th&agrave;nh ph?»? b?»? ph&aacute;t x&iacute;t Nh??­t x&acirc;m chi???m v&agrave; Ä????n nÄ?m 1945 H&agrave; N?»?i Ä?Æ°?»£c  gi??£i ph&oacute;ng v&agrave; l&agrave; nÆ?i Ä???·t c&aacute;c cÆ? quan c?»§a Ch&iacute;nh ph?»§ nÆ°?»?c Vi?»?t Nam D&acirc;n ch?»§  C?»?ng h&ograve;a. T?»« 1946 Ä????n 1954, H&agrave; N?»?i l&agrave; chi???n Ä??»?a &aacute;c li?»?t gi?»?a Vi?»?t Minh  v&agrave; qu&acirc;n Ä??»?i Ph&aacute;p. Sau khi Ä?Æ°?»£c gi??£i ph&oacute;ng v&agrave;o ng&agrave;y 10 th&aacute;ng 10 nÄ?m 1954,  H&agrave; N?»?i tr?»? th&agrave;nh th?»§ Ä?&ocirc; c?»§a Vi?»?t Nam D&acirc;n ch?»§ C?»?ng h&ograve;a.<br /><br />Trong  Chi???n tranh Vi?»?t Nam, c&aacute;c c&ocirc;ng tr&igrave;nh giao th&ocirc;ng c?»§a H&agrave; N?»?i nhÆ° c??§u v&agrave;  Ä?Æ°?»ng t&agrave;u b?»? bom Ä????n ph&aacute; h?»§y, tuy nhi&ecirc;n ngay l??­p t?»©c Ä?Æ°?»£c s?»­a ch?»?a.  Trong th?»i gian n&agrave;y H&agrave; N?»?i Ä?Æ°?»£c xÆ°ng t?»?ng l&agrave; \"Th?»§ Ä?&ocirc; c?»§a ph??©m gi&aacute; con  ngÆ°?»i\". H&agrave; N?»?i tr?»? th&agrave;nh th?»§ Ä?&ocirc; c?»§a to&agrave;n Vi?»?t Nam sau ng&agrave;y B???c Nam th?»?ng  nh???t 2 th&aacute;ng 7 nÄ?m 1976.<br /><br />H&agrave; N?»?i c&ograve;n c&oacute; nhi?»u c&aacute;c t&ecirc;n g?»i kh&ocirc;ng  ch&iacute;nh th?»©c kh&aacute;c, ch?»§ y???u xu???t hi?»?n trong vÄ?n thÆ? v&agrave; d&acirc;n gian: TrÆ°?»ng An  hay Tr&agrave;ng An (l???y theo t&ecirc;n g?»i c?»§a kinh Ä?&ocirc; c?»§a Trung Qu?»?c th?»i k?»³ nh&agrave;  H&aacute;n v&agrave; nh&agrave; ÄÆ°?»ng); PhÆ°?»£ng Th&agrave;nh hay Ph?»?ng Th&agrave;nh (trong b&agrave;i ph&uacute; c?»§a  Nguy?»?n Gi??£n Thanh); Long Th&agrave;nh, Long Bi&ecirc;n, K??» Ch?»£ (trong d&acirc;n gian);  ThÆ°?»£ng Kinh, Kinh K?»³, H&agrave; Th&agrave;nh, Ho&agrave;ng Di?»?u, ngay sau.<br /><br /><span style=\"font-size: 9px;\">www.Cannao.com theo Wikipedia</span></p>', 21.0333, 105.85, 0, 'SHOW', 'upload/default/zone//1301381597_bg_banner.png', 1297757444, '', 0, 'upload/default/zone//Nguyen Duc Cuong- Nong nan Ha Noi.flv', 'upload/default/content/07.2011/1310125850_HaNoi.jpg', '', 0),
(34, 1250000000000000000, 'H?  TÄ©nh', '', 18.3405, 105.907, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HaTinh.jpg', '', 0),
(35, 1270000000000000000, 'H??£i DÆ°Æ?ng', '', 20.9373, 106.315, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HaiDuong.jpg', '', 0);
INSERT INTO `zone` (`id`, `structure_id`, `name_1`, `description_1`, `lat`, `long`, `radius`, `status`, `image_url`, `time`, `map`, `region_id`, `file`, `logo`, `website`, `is_footer`) VALUES
(10, 1280000000000000000, 'H??£i Ph?²ng', '<p><span id=\"ZoneContent_HSPDockingControl_576\"> </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">I. Giai Ä?o???n t?»« 1986 - 1990: </span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ä???i  h?»?i Ä????i bi?»?u Ä??£ng b?»? th&agrave;nh ph?»? H??£i Ph&ograve;ng l??§n th?»© IX (th&aacute;ng 10/1986);  Ä???i h?»?i Ä????i bi?»?u to&agrave;n qu?»?c l??§n th?»© VI c?»§a Ä??£ng (th&aacute;ng 12/1986): Ä??» ra  Ä?Æ°?»ng l?»?i Ä??»?i m?»?i Ä????t nÆ°?»?c v&agrave; th&agrave;nh ph?»?.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">1. V?» ph&aacute;t tri?»?n kinh t??? </span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&ocirc;ng nghi?»?p: </span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Th&agrave;nh  ph?»? Ä?&atilde; x&uacute;c ti???n s???p x???p l???i c&aacute;c ng&agrave;nh s??£n xu???t c&ocirc;ng nghi?»?p, ti?»?u th?»§  c&ocirc;ng nghi?»?p Ä??»?a phÆ°Æ?ng, Trung Æ°Æ?ng tr&ecirc;n Ä??»?a b&agrave;n theo hÆ°?»?ng chuy?»?n ho???t  Ä??»?ng c?»§a c&aacute;c Ä?Æ?n v?»? c&ocirc;ng nghi?»?p qu?»?c doanh sang kinh doanh x&atilde; h?»?i ch?»§  nghÄ©a, ph&aacute;t huy ti?»m nÄ?ng, th??? m???nh c?»§a th&agrave;nh ph?»? c&ocirc;ng nghi?»?p c&oacute; C??£ng  bi?»?n. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- N&ocirc;ng nghi?»?p:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ä?»?i v?»?i chÆ°Æ?ng tr&igrave;nh s??£n xu???t lÆ°Æ?ng th?»±c, th?»±c ph??©m phÆ°Æ?ng hÆ°?»?ng chung  c?»§a H??£i Ph&ograve;ng Ä????n nÄ?m 1990 v??«n coi \"n&ocirc;ng nghi?»?p l&agrave; m??·t tr??­n h&agrave;ng Ä???§u\".  Ä?»?i m?»?i cÆ? ch??? qu??£n l&yacute;, tÄ?ng cÆ°?»ng &aacute;p d?»?ng ti???n b?»? k?»¹ thu??­t v&agrave;o s??£n xu???t  n&ocirc;ng nghi?»?p l&agrave; gi??£i ph&aacute;p then ch?»?t Ä??»? th?»±c hi?»?n th???ng l?»£i m?»?c ti&ecirc;u Ä?&aacute;p  ?»©ng nhu c??§u lÆ°Æ?ng th?»±c, th?»±c ph??©m c?»§a th&agrave;nh ph?»?. C?»? th?»? ho&aacute; ch?»§ trÆ°Æ?ng  ph&aacute;t tri?»?n kinh t??? nhi?»u th&agrave;nh ph??§n, th&agrave;nh ph?»? khuy???n kh&iacute;ch ph&aacute;t tri?»?n  kinh t??? tÆ° nh&acirc;n v&agrave; kinh t??? gia Ä?&igrave;nh.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Nh?»?ng  k???t qu??£ quan tr?»ng bÆ°?»?c Ä???§u: s??£n lÆ°?»£ng c&ocirc;ng nghi?»?p, n&ocirc;ng nghi?»?p, h&agrave;ng  qua c??£ng trong c&aacute;c nÄ?m 1987, 1988 li&ecirc;n t?»?c tÄ?ng nÄ?m sau cao hÆ?n nÄ?m  trÆ°?»?c, t???o Ä?&agrave; cho H??£i Ph&ograve;ng t?»«ng bÆ°?»?c tho&aacute;t kh?»i kh?»§ng ho??£ng, gi&agrave;nh  th???ng l?»£i m?»?i tr&ecirc;n nh?»?ng ch??·ng Ä?Æ°?»ng ti???p theo. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&ocirc;ng  cu?»?c Ä??»?i m?»?i tr&ecirc;n lÄ©nh v?»±c kinh t??? Ä?Æ°?»£c ti???n h&agrave;nh quy???t li?»?t, t&aacute;o b???o  nhÆ°ng c&oacute; bÆ°?»?c Ä?i v?»?ng ch???c. N?»n kinh t??? th?»? trÆ°?»ng Ä??»?nh hÆ°?»?ng x&atilde; h?»?i ch?»§  nghÄ©a t?»«ng bÆ°?»?c h&igrave;nh th&agrave;nh. Kinh t??? th&agrave;nh ph?»? vÆ°?»£t qua th?»i k?»³ suy  tho&aacute;i, d???t m?»©c tÄ?ng trÆ°?»?ng nhanh, v?»?ng ch???c.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Tuy  nhi&ecirc;n, cÆ? c???u kinh t??? th&agrave;nh ph?»? v??«n ch??­m Ä?Æ°?»£c Ä?i?»u ch?»?nh cho ph&ugrave; h?»£p  v?»?i cÆ? ch??? th?»? trÆ°?»ng. Do ch?»§ quan, ??£nh hÆ°?»?ng c?»§a cÆ? ch??? quan li&ecirc;u, bao  c???p, chÆ°a lÆ°?»ng h???t Ä?Æ°?»£c t&igrave;nh h&igrave;nh di?»?n bi???n kh&oacute; khÄ?n n&ecirc;n Ä??£ng b?»? c&ograve;n  n&ecirc;u nhi?»u ch?»? ti&ecirc;u thi???u cÄ?n c?»© th?»±c ti?»?n. Trong ch?»? Ä????o th?»±c hi?»?n chÆ°a  nh???y b&eacute;n Ä?i?»u ch?»?nh, b?»? khuy???t k?»?p th?»i. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">2. Ph&aacute;t tri?»?n vÄ?n ho&aacute;-x&atilde; h?»?i:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Nh?»?ng kh&oacute; khÄ?n trong gi&aacute;o d?»?c cÅ©ng Ä?Æ°?»£c t??­p trung th&aacute;o g?»?. C&ugrave;ng v?»?i huy  Ä??»?ng m?»?t ph??§n Ä?&oacute;ng g&oacute;p c?»§a nh&acirc;n d&acirc;n, th&agrave;nh ph?»? Ä???§u tÆ° 295 tri?»?u Ä??»“ng  x&acirc;y d?»±ng m?»?i c&aacute;c trÆ°?»ng h?»c v&agrave; 300 tri?»?u Ä??»“ng s?»­a ch?»?a, mua s???m b&agrave;n gh???,  Ä??»“ d&ugrave;ng h?»c t??­p. C&aacute;c lo???i h&igrave;nh gi&aacute;o d?»?c-Ä?&agrave;o t???o Ä?Æ°?»£c Ä?a d???ng ho&aacute; Ä?&aacute;p  ?»©ng nhu c??§u gi&aacute;o d?»?c ph?»? th&ocirc;ng v&agrave; gi&aacute;o d?»?c chuy&ecirc;n nghi?»?p. V?»?i c&aacute;c bi?»?n  ph&aacute;p t&iacute;ch c?»±c, quy m&ocirc; gi&aacute;o d?»?c c?»§a th&agrave;nh ph?»? cÆ? b??£n Ä?Æ°?»£c gi?»? v?»?ng, ch???t  lÆ°?»£ng gi&aacute;o d?»?c bÆ°?»?c Ä???§u c&oacute; chuy?»?n bi???n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Y t???:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> C&ocirc;ng t&aacute;c chÄ?m s&oacute;c s?»©c kho??» nh&acirc;n d&acirc;n bÆ°?»?c Ä???§u c&oacute; ti???n b?»?. Th&agrave;nh u?»·, UBND  th&agrave;nh ph?»? ch?»? Ä????o th?»±c hi?»?n ch?»§ trÆ°Æ?ng cho ph&eacute;p c&aacute;c b?»?nh vi?»?n thu m?»?t  ph??§n vi?»?n ph&iacute; Ä??»? t?»± trang tr??£i; Ä??»“ng th?»i th&agrave;nh ph?»? c&ocirc;ng tr?»£ 144 tri?»?u  Ä??»“ng Ä??»? s?»­a ch?»?a c&aacute;c b?»?nh vi?»?n, tr???m chuy&ecirc;n khoa v&agrave; mua th&ecirc;m thi???t b?»?  cho ng&agrave;nh. NÄ?m 1990, H??£i Ph&ograve;ng l&agrave; m?»?t trong 04 t?»?nh, th&agrave;nh ph?»? d??«n Ä???§u  c??£ nÆ°?»?c v?» c&ocirc;ng t&aacute;c v?»? sinh ph&ograve;ng b?»?nh. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- VÄ?n ho&aacute;: </span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">ho???t Ä??»?ng vÄ?n ho&aacute;, qu??£n l&yacute; nh&agrave; nÆ°?»?c v?» vÄ?n ho&aacute; c&oacute; nhi?»u ti???n b?»?. 100% c&aacute;c x&atilde; kh&ocirc;i ph?»?c m???ng lÆ°?»?i truy?»n thanh. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Gi??£i quy???t vi?»?c l&agrave;m:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> C&aacute;c c???p u?»· Ä??£ng, ch&iacute;nh quy?»n t&iacute;ch c?»±c t&igrave;m m?»i c&aacute;ch t???o vi?»?c l&agrave;m t???i  ch?»?, Ä?Æ°a ngÆ°?»i Ä?i lao Ä??»?ng ?»? nÆ°?»?c ngo&agrave;i. To&agrave;n th&agrave;nh ph?»? huy Ä??»?ng 3,2  tri?»?u ng&agrave;y c&ocirc;ng nghÄ©a v?»? trong Ä?&oacute; 50% s?»? ng&agrave;y c&ocirc;ng ph?»?c v?»? Ä????p Ä?&ecirc;, k&egrave;  ch?»?ng b&atilde;o l?»?t. C&aacute;c gi??£i ph&aacute;p k?»?p th?»i tr&ecirc;n Ä?&atilde; ph??§n n&agrave;o gi??£m b?»?t Ä?Æ°?»£c s?»©c  &eacute;p c?»§a t&igrave;nh tr???ng thi???u nh?»? vi?»?c l&agrave;m.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">3. Qu?»?c ph&ograve;ng an ninh:</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> C&ocirc;ng t&aacute;c x&acirc;y d?»±ng l?»±c lÆ°?»£ng vÅ© trang Ä??»?a phÆ°Æ?ng, d&acirc;n qu&acirc;n, t?»± v?»? Ä?i s&acirc;u  v&agrave;o c?»§ng c?»? ch???t lÆ°?»£ng ch&iacute;nh tr?»?, n&acirc;ng cao tr&igrave;nh Ä??»? v&agrave; kh??£ nÄ?ng s??µn  s&agrave;ng chi???n Ä????u. Quan Ä?i?»?m k???t h?»£p ph&aacute;t tri?»?n kinh t??? Ä?i Ä?&ocirc;i v?»?i c?»§ng c?»?  qu?»?c ph&ograve;ng an ninh Ä?Æ°?»£c u?»?n n???n, ch???n ch?»?nh Ä?&uacute;ng Ä????n hÆ?n. K??? ho???ch ph&ograve;ng  th?»§ nh?»?ng nÆ?i tr?»ng y???u ?»? Ä????t li?»n, v&ugrave;ng bi?»?n v&agrave; h??£i Ä???£o, v&ugrave;ng ven bi?»?n  Ä?Æ°?»£c x&acirc;y d?»±ng v&agrave; thÆ°?»ng xuy&ecirc;n ki?»?m tra, ch?»? Ä????o c?»? th?»?. TrÆ°?»?c nh?»?ng  di?»?n bi???n ph?»©c t???p c?»§a t&igrave;nh h&igrave;nh an ninh, tr??­t t?»±, an to&agrave;n x&atilde; h?»?i, c&ocirc;ng  an th&agrave;nh ph?»? Ä?&atilde; tri?»?n khai th?»±c hi?»?n nhi?»u ch?»§ trÆ°Æ?ng, bi?»?n ph&aacute;p quan  tr?»ng: tÄ?ng cÆ°?»ng gi&aacute;o d?»?c ch&iacute;nh tr?»? tÆ° tÆ°?»?ng, Ä???©y m???nh phong tr&agrave;o thi  Ä?ua to&agrave;n d&acirc;n tham gia b??£o v?»? an ninh t?»? qu?»?c, ph&ograve;ng ch?»?ng t?»?i ph???m.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ä???i  h?»?i Ä??£ng b?»? th&agrave;nh ph?»? l??§n th?»© IX ghi d???u m?»?c quan tr?»ng trong s?»± chuy?»?n  bi???n v?» nh??­n th?»©c, Ä??»?i m?»?i tÆ° duy v&agrave; s?»± l&atilde;nh Ä????o c?»§a Ä??£ng b?»? trong  tri?»?n khai th?»±c hi?»?n c&ocirc;ng cu?»?c Ä??»?i m?»?i to&agrave;n di?»?n do Ä??£ng kh?»?i xÆ°?»?ng v&agrave;  l&atilde;nh Ä????o. S&aacute;ng t???o, nh???y b&eacute;n v?»?i nh?»?ng gi??£i ph&aacute;p ki&ecirc;n quy???t, Ä??»“ng b?»?  trong tri?»?n khai th?»±c hi?»?n; Ngh?»? quy???t Ä???i h?»?i VI c?»§a Ä??£ng, Ngh?»? quy???t  Ä???i h?»?i IX c?»§a Ä??£ng b?»? th&agrave;nh ph?»? Ä?&atilde; nhanh ch&oacute;ng Ä?i v&agrave;o th?»±c ti?»?n v&agrave; Ä?Æ°?»£c  b?»? sung, ph&aacute;t tri?»?n, Ä?Æ°a th&agrave;nh ph?»? H??£i Ph&ograve;ng vÆ°?»£t qua nh?»?ng th&aacute;ch th?»©c  kh???c nghi?»?t c?»§a l?»?ch s?»­, v?»?ng bÆ°?»?c tr&ecirc;n con Ä?Æ°?»ng Ä??»?i m?»?i.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">II. Giai Ä?o???n t?»« 1991 - 1995: </span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">1. Kinh t???: </span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">T&iacute;nh  Ä????n th&aacute;ng 12/1995, th&agrave;nh ph?»? c&oacute; 47 d?»± &aacute;n Ä???§u tÆ° nÆ°?»?c ngo&agrave;i Ä?Æ°?»£c c???p  gi???y ph&eacute;p v?»?i s?»? v?»?n 840 tri?»?u USD. Nhi?»u d?»± &aacute;n l?»?n l??§n Ä???§u ti&ecirc;n Ä?Æ°?»£c  tri?»?n khai th?»±c hi?»?n nhÆ°: Nh&agrave; m&aacute;y xi mÄ?ng Chinfon, c&aacute;c khu ch??? xu???t, khu  du l?»?ch, li&ecirc;n doanh s??£n xu???t th&eacute;p ?»?ng...Ch?»§ trÆ°Æ?ng Ä?&uacute;ng Ä????n ph&aacute;t tri?»?n  kinh t??? Ä??»?i ngo???i Ä?&atilde; mang l???i vi?»?c l&agrave;m cho 6 000 lao Ä??»?ng. H&agrave;ng xu???t  nh??­p kh??©u Ä?Æ°?»£c ph?»?c h?»“i v&agrave; c&oacute; bÆ°?»?c ph&aacute;t tri?»?n m?»?i. Kim ng???ch xu???t kh??©u  nÄ?m 1995 tÄ?ng g???p 2,6 l??§n so v?»?i nÄ?m 1990. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&ocirc;ng nghi?»?p H??£i Ph&ograve;ng</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">:  bÆ°?»?c Ä???§u kh???c ph?»?c kh&oacute; khÄ?n, nÄ?ng ch??·n Ä?Æ°?»£c t&igrave;nh tr???ng sa s&uacute;t, nhanh  ch&oacute;ng ph?»?c h?»“i v&agrave; tÄ?ng trÆ°?»?ng v?»?i t?»?c Ä??»? cao. Gi&aacute; tr?»? t?»?ng s??£n lÆ°?»£ng  c&ocirc;ng nghi?»?p Ä????t nh?»?p Ä??»? tÄ?ng b&igrave;nh qu&acirc;n 24,27%, vÆ°?»£t ch?»? ti&ecirc;u Ä???i h?»?i X  Ä??» ra l&agrave; 6,55%. Kh?»?i lÆ°?»£ng h&agrave;ng qua C??£ng ng&agrave;y m?»?t tÄ?ng: NÄ?m 1995 Ä????t  tr&ecirc;n 4,5 tri?»?u t???n, tÄ?ng g??§n 2 l??§n so v?»?i nÄ?m 1991.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Kinh t??? n&ocirc;ng nghi?»?p-n&ocirc;ng th&ocirc;n: </span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">c&oacute;  nh?»?ng bÆ°?»?c ti???n r&otilde; r?»?t: chuy?»?n d??§n sang kinh t??? h&agrave;ng ho&aacute; v?»?i c&aacute;c phong  tr&agrave;o n&ocirc;ng d&acirc;n t?»± nguy?»?n h?»£p t&aacute;c v?»?i Nh&agrave; nÆ°?»?c x&acirc;y d?»±ng cÆ? s?»? h??? t??§ng n&ocirc;ng  th&ocirc;n, phong tr&agrave;o nu&ocirc;i tr?»“ng thu?»· s??£n, c&aacute;c d?»± &aacute;n ph&aacute;t tri?»?n s??£n xu???t.  N&ocirc;ng d&acirc;n y&ecirc;n t&acirc;m Ä???§u tÆ° v?»?n, s?»©c lao Ä??»?ng cho s??£n xu???t. N&ocirc;ng nghi?»?p vÆ°?»£t  qua c?»­a ??£i 5 t???n/ha/nÄ?m, ?»?n Ä??»?nh ?»? m?»©c tr&ecirc;n 8 t???n/ha/nÄ?m. S??£n lÆ°?»£ng  Ä?&aacute;nh b???t h??£i s??£n tÄ?ng b&igrave;nh qu&acirc;n 4,75%/nÄ?m.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">2. V?» vÄ?n ho&aacute; - x&atilde; h?»?i : </span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">B??±ng  c&aacute;c gi??£i ph&aacute;p Ä??»“ng b?»?, t&iacute;ch c?»±c, c&aacute;c c???p u?»· Ä??£ng, ch&iacute;nh quy?»n, c&aacute;c Ä?o&agrave;n  th?»? Ä?&atilde; t??­p trung l&atilde;nh Ä????o, ch?»? Ä????o l&agrave;m chuy?»?n bi???n t&igrave;nh h&igrave;nh: m?»©c Ä???§u  tÆ° cho c&aacute;c ho???t Ä??»?ng vÄ?n h&oacute;a tÄ?ng t?»« 3,6 t?»· (nÄ?m 1992) l&ecirc;n 9,1 t?»· (nÄ?m  1995). C&ocirc;ng t&aacute;c qu??£n l&yacute; Nh&agrave; nÆ°?»?c tr&ecirc;n lÄ©nh v?»±c vÄ?n h&oacute;a Ä?Æ°?»£c ch???n ch?»?nh  v&agrave; d??§n Ä?i v&agrave;o n?»n n???p. Ä?»i s?»?ng vÄ?n h&oacute;a cÆ? s?»? kh?»?i s???c v?»?i nhi?»u phong  tr&agrave;o s&ocirc;i n?»?i: x&acirc;y d?»±ng n???p s?»?ng vÄ?n minh, gia Ä?&igrave;nh vÄ?n h&oacute;a, c&aacute;c ho???t  Ä??»?ng l?»? h&ocirc;i, vÄ?n ngh?»? qu??§n ch&uacute;ng Ä?Æ°?»£c kh&ocirc;i ph?»?c.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> t?»«ng bÆ°?»?c Ä??»?i m?»?i, t?»· l?»? trÆ°?»ng h?»c cao t??§ng nÄ?m 1994 Ä????t 63,5%. Trong 2  nÄ?m 1993, 1994 c&oacute; 73 trÆ°?»ng cao t??§ng Ä?Æ°?»£c x&acirc;y d?»±ng - l&agrave; con s?»? cao nh???t  trong 40 nÄ?m qua (1955-1995). C&aacute;c ng&agrave;nh h?»c, b??­c h?»c, c???p h?»c ph&aacute;t  tri?»?n c??£ v?» quy m&ocirc; v&agrave; ch???t lÆ°?»£ng v?»?i nhi?»u lo???i h&igrave;nh phong ph&uacute;, Ä?a d???ng.  Coi tr?»ng c??£ gi&aacute;o d?»?c Ä????i tr&agrave; v&agrave; gi&aacute;o d?»?c mÅ©i nh?»n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- <strong><em>Y t???:</em></strong> ti???p t?»?c ph&aacute;t tri?»?n kh&aacute; to&agrave;n di?»?n; v?»«a tÄ?ng cÆ°?»ng y t??? cÆ? s?»?, v?»«a n&acirc;ng  cao ch???t lÆ°?»£ng y t??? chuy&ecirc;n s&acirc;u, li&ecirc;n t?»?c Ä??»?i m?»?i phÆ°Æ?ng th?»©c ho???t Ä??»?ng,  Ä???©y m???nh x&atilde; h?»?i h&oacute;a. </span><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">To&agrave;n  ng&agrave;nh c&oacute; 30,3% c&aacute;n b?»? c&oacute; tr&igrave;nh Ä??»? sau Ä????i h?»c. B&igrave;nh qu&acirc;n c&oacute; 0,73 b&aacute;c  s?»¹/1000 d&acirc;n (to&agrave;n qu?»?c: 0,44%). C&ocirc;ng t&aacute;c d&acirc;n s?»?-k??? ho???ch ho&aacute; gia Ä?&igrave;nh  Ä?Æ°?»£c quan t&acirc;m. T?»? l?»? gi??£m sinh Ä????t 0,75% (ch?»? ti&ecirc;u 0,6%), t?»· l?»? tÄ?ng d&acirc;n  s?»? t?»± nhi&ecirc;n nÄ?m 1995 Ä????t 1,57% (ch?»? ti&ecirc;u: 1,7%). </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&aacute;c chÆ°Æ?ng tr&igrave;nh x&atilde; h?»?i: </span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">nhÆ°  chÆ°Æ?ng tr&igrave;nh x&oacute;a Ä?&oacute;i gi??£m ngh&egrave;o v&agrave; gi??£i quy???t vi?»?c l&agrave;m Ä????t Ä?Æ°?»£c k???t qu??£  r&otilde; n&eacute;t: 10 v???n lÆ°?»£t ngÆ°?»i c&oacute; vi?»?c l&agrave;m, gi??£i quy???t cÆ? b??£n s?»? h?»? Ä?&oacute;i,  gi??£m Ä?&aacute;ng k?»? s?»? h?»? ngh&egrave;o. Cu?»?c v??­n Ä??»?ng Ä??»n Æ?n Ä?&aacute;p nghÄ©a Ä?Æ°?»£c hÆ°?»?ng ?»©ng  t&iacute;ch c?»±c. Phong tr&agrave;o ph&ograve;ng ch?»?ng t?»?i ph???m, t?»? n???n x&atilde; h?»?i di?»?n ra li&ecirc;n  t?»?c Ä??»u kh???p.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Trong  5 nÄ?m ph???n Ä????u, th&agrave;nh ph?»? H??£i Ph&ograve;ng Ä????t Ä?Æ°?»£c nh?»?ng th&agrave;nh t?»±u n?»?i b??­t v?»  kinh t???-x&atilde; h?»?i, b?»? m??·t th&agrave;nh ph?»? c&oacute; nhi?»u bi???n Ä??»?i t&iacute;ch c?»±c, Ä??»i s?»?ng  nh&acirc;n d&acirc;n Ä?Æ°?»£c c??£i thi?»?n, l&ograve;ng tin c?»§a nh&acirc;n d&acirc;n v&agrave;o s?»± nghi?»?p Ä??»?i m?»?i,  v&agrave;o Ä??£ng, v&agrave;o ch??? Ä??»? Ä?Æ°?»£c c?»§ng c?»? v&agrave; n&acirc;ng l&ecirc;n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">III. Giai Ä?o???n t?»« 1996 - 2000:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">1. Kinh t???:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">H??£i  Ph&ograve;ng Ä?&atilde; vÆ°?»£t qua th?»i k?»³ suy tho&aacute;i v?» kinh t???, t?»«ng bÆ°?»?c ph?»?c h?»“i v&agrave;  v?»?ng bÆ°?»?c Ä?i l&ecirc;n, kh??³ng Ä??»?nh vai tr&ograve; th&agrave;nh ph?»? m?»? v?» kinh t???, v&ugrave;ng kinh  t??? tr?»ng Ä?i?»?m c?»§a khu v?»±c ph&iacute;a B???c.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-T?»?ng s??£n ph??©m trong nÆ°?»?c</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> b&igrave;nh qu&acirc;n h&agrave;ng nÄ?m c?»§a th&agrave;nh ph?»? v??«n tÄ?ng 8,56%. C&aacute;c ng&agrave;nh c&ocirc;ng nghi?»?p  tÄ?ng 23,4 % (g???p 3 l??§n so v?»?i nÄ?m 1995), n&ocirc;ng nghi?»?p: 5,55%. CÆ? c???u kinh  t??? chuy?»?n d?»?ch cÆ? b??£n Ä?&uacute;ng hÆ°?»?ng, ph&aacute;t huy Ä?Æ°?»£c th??? m???nh c&ocirc;ng nghi?»?p,  c??£ng bi?»?n, thÆ°Æ?ng m???i du l?»?ch. </span><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ä??§u tÆ° ph&aacute;t tri?»?n kinh t???-x&atilde; h?»?i m?»?i nÄ?m Ä????t g??§n 4 000 t?»· Ä??»“ng. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-C&ocirc;ng nghi?»?p</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> H??£i Ph&ograve;ng chuy?»?n m???nh theo hÆ°?»?ng xu???t kh??©u. Nhi?»u khu c&ocirc;ng nghi?»?p, khu  ch??? xu???t Ä?Æ°?»£c h&igrave;nh th&agrave;nh v&agrave; Ä?i v&agrave;o s??£n xu???t nhÆ°: Khu Nomura, Ä&igrave;nh VÅ©,  VÄ©nh Ni?»?m, Qu&aacute;n Tr?»?... T&iacute;nh Ä????n nÄ?m 2000, H??£i Ph&ograve;ng c&oacute; 87 d?»± &aacute;n Ä?ang c&oacute;  hi?»?u l?»±c v?»?i s?»? v?»?n 1.313.929.506 USD. Xu???t kh??©u tÄ?ng nhanh v?» quy m&ocirc; v&agrave;  t?»?c Ä??»?, Ä????t 1035 tri?»?u USD, g???p 3 l??§n th?»i k?»³ 1991-1995, th?»? trÆ°?»ng  li&ecirc;n t?»?c Ä?Æ°?»£c m?»? r?»?ng, tÄ?ng 2 l??§n so v?»?i nÄ?m 1995. H&agrave;ng ho&aacute; qua C??£ng  tÄ?ng t?»« 4.515 tri?»?u t???n nÄ?m 1995 l&ecirc;n 7,5 tri?»?u t???n nÄ?m 2000. </span><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ho???t Ä??»?ng du l?»?ch tÄ?ng kh&aacute;.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- N&ocirc;ng nghi?»?p v&agrave; thu?»· s??£n</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> tÆ°Æ?ng Ä??»?i ?»?n Ä??»?nh. Vi?»?c chuy?»?n d?»?ch cÆ? c???u n&ocirc;ng nghi?»?p, c??£i bi???n cÆ? c???u  kinh t??? n&ocirc;ng th&ocirc;n Ä?Æ°?»£c Ä???©y m???nh theo hÆ°?»?ng c&ocirc;ng nghi?»?p h&oacute;a, hi?»?n Ä????i  h&oacute;a. NÄ?ng su???t l&uacute;a Ä????t 50 t???/1ha/1v?»?. T?»· tr?»ng c&ocirc;ng nghi?»?p, d?»?ch v?»?  trong n&ocirc;ng nghi?»?p tÄ?ng. M&ocirc; h&igrave;nh kinh t??? trang tr???i ph&aacute;t tri?»?n v?»?i 533  trang tr???i n&ocirc;ng-l&acirc;m-thu?»· s??£n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&ocirc;ng t&aacute;c qu??£n l&yacute;, quy ho???ch, ph&aacute;t tri?»?n cÆ? s?»? h??? t??§ng</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> c&oacute; bÆ°?»?c ti???n tri?»?n kh&aacute; to&agrave;n di?»?n. C&aacute;c d?»± &aacute;n quan tr?»ng nhÆ°: Qu?»?c l?»? 5,  c??§u Ti&ecirc;n C?»±u, c??§u L???c Long, tuy???n Ä?Æ°?»ng 5 ch???y Ä????n C??£ng Ch&ugrave;a V??½... Ä?Æ°?»£c  ho&agrave;n th&agrave;nh v&agrave; Ä?Æ°a v&agrave;o s?»­ d?»?ng Ä?&atilde; l&agrave;m thay Ä??»?i di?»?n m???o th&agrave;nh ph?»?. 100%  s?»? x&atilde; c&oacute; Ä?i?»?n lÆ°?»?i, c&oacute; b&aacute;c s?»¹, Ä?i?»?m bÆ°u Ä?i?»?n vÄ?n ho&aacute;...To&agrave;n th&agrave;nh ph?»? cÆ?  b??£n kh&ocirc;ng c&ograve;n h?»? Ä?&oacute;i, s?»? h?»? ngh&egrave;o gi??£m t?»« 18% (nÄ?m 1995) c&ograve;n 5,8% (nÄ?m  2000).</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Di?»?n  m???o Ä?&ocirc; th?»?, n&ocirc;ng th&ocirc;n, h??£i Ä???£o ng&agrave;y c&agrave;ng kh?»?i s???c. Nhi?»u ng&agrave;nh c&ocirc;ng  nghi?»?p mÅ©i nh?»n Ä?Æ°?»£c h&igrave;nh th&agrave;nh: c&ocirc;ng nghi?»?p Ä?&oacute;ng t&agrave;u bi?»?n, s??£n xu???t xi  mÄ?ng, th&eacute;p x&acirc;y d?»±ng, gi&agrave;y d&eacute;p...</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">2. VÄ?n ho&aacute; - x&atilde; h?»?i:</span></strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> C&ugrave;ng v?»?i t??­p trung ph&aacute;t tri?»?n kinh t???, nhi?»?m v?»? ph&aacute;t tri?»?n vÄ?n ho&aacute;,  gi&aacute;o d?»?c, y t???, khoa h?»c, c&ocirc;ng ngh?»? Ä?Æ°?»£c c&aacute;c c???p u?»· Ä??£ng, ch&iacute;nh quy?»n  th?»±c s?»± coi tr?»ng.</span></em></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o</span></em></strong><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">:</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ch?»§ trÆ°Æ?ng x&atilde; h?»?i ho&aacute; gi&aacute;o d?»?c Ä?Æ°?»£c tri?»?n khai r?»?ng r&atilde;i ?»? c&aacute;c ng&agrave;nh  h?»c, b??­c h?»c, c???p h?»c v?»?i nhi?»u lo???i h&igrave;nh trÆ°?»ng l?»?p. Ä???n nÄ?m 2000, to&agrave;n  th&agrave;nh ph?»? c&oacute; 96,7% s?»? x&atilde; c&oacute; trÆ°?»ng h?»c cao t??§ng. Gi&aacute;o d?»?c Ä????i tr&agrave; v&agrave;  gi&aacute;o d?»?c mÅ©i nh?»n c&oacute; bÆ°?»?c ph&aacute;t tri?»?n kh&aacute;: nÄ?m 1999, th&agrave;nh ph?»? cÆ? b??£n  ho&agrave;n th&agrave;nh ph?»? c??­p trung h?»c cÆ? s?»?.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">5  nÄ?m (1996-2000), to&agrave;n th&agrave;nh ph?»? c&oacute; tr&ecirc;n 500 h?»c sinh Ä?o???t gi??£i qu?»?c gia  v&agrave; 10 gi??£i qu?»?c t???. Gi&aacute;o d?»?c Ä????i h?»c c&oacute; bÆ°?»?c ph&aacute;t tri?»?n m?»?i: c&aacute;c trÆ°?»ng  Ä???i h?»c Y, Ä???i h?»c D&acirc;n l??­p, Ä???i h?»c SÆ° ph???m, Cao Ä???³ng c?»?ng Ä??»“ng Ä?Æ°?»£c  th&agrave;nh l??­p, Ä?&aacute;p ?»©ng nhu c??§u Ä?&agrave;o t???o ?»? b??­c Ä????i h?»c v&agrave; chuy&ecirc;n nghi?»?p.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Khoa h?»c-c&ocirc;ng ngh?»?: </span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">ph&aacute;t  tri?»?n v?»?i g??§n 120 Ä??» t&agrave;i v&agrave; tr&ecirc;n 10 d?»± &aacute;n s??£n xu???t th?»­ nghi?»?m. Ä??§u tÆ°  t?»« ng&acirc;n s&aacute;ch th&agrave;nh ph?»? cho ph&aacute;t tri?»?n khoa h?»c-c&ocirc;ng ngh?»? t?»« 4,81 t?»·  (b??±ng 0,74% ng&acirc;n s&aacute;ch nÄ?m 1997) l&ecirc;n 9 t?»· (Ä????t 1,4% ng&acirc;n s&aacute;ch nÄ?m 2000).  Vi?»?c nghi&ecirc;n c?»©u c&aacute;c v???n Ä??» thu?»?c c&aacute;c lÄ©nh v?»±c khoa h?»c x&atilde; h?»?i v&agrave; nh&acirc;n  vÄ?n Ä?Æ°?»£c quan t&acirc;m. Nhi?»u k???t qu??£ nghi&ecirc;n c?»©u, Ä?i?»u tra cÆ? b??£n Ä?&atilde; Ä?Æ°?»£c s?»­  d?»?ng l&agrave;m cÄ?n c?»© x&acirc;y d?»±ng quy ho???ch ph&aacute;t tri?»?n kinh t???-x&atilde; h?»?i th&agrave;nh ph?»?  Ä????n nÄ?m 2010; Ä??»?i ngÅ© c&aacute;n b?»?, chuy&ecirc;n gia gi?»i tÄ?ng g???p 2 l??§n so v?»?i nÄ?m  1996.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- H?»? th?»?ng y t???</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> t?»« th&agrave;nh ph?»? Ä????n cÆ? s?»? Ä?Æ°?»£c c?»§ng c?»?, ph&aacute;t tri?»?n, Ä??»?i m?»?i trang thi???t b?»?  chuy&ecirc;n m&ocirc;n, t?»«ng bÆ°?»?c hi?»?n Ä????i ho&aacute;. Ä???n nÄ?m 2000, th&agrave;nh ph?»? c&oacute; 20 b?»?nh  vi?»?n v?»?i 7 b?»?nh vi?»?n tuy???n th&agrave;nh ph?»? v&agrave; 13 b?»?nh vi?»?n huy?»?n v?»?i 3500  giÆ°?»ng b?»?nh, 216 tr???m y t??? cÆ? s?»?, 9 trung t&acirc;m v&agrave; tr???m chuy&ecirc;n khoa thu?»?c  ng&agrave;nh. H?»? th?»?ng y t??? chuy&ecirc;n s&acirc;u Ä?Æ°?»£c t?»? ch?»©c t?»?t.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Ä?»i s?»?ng vÄ?n ho&aacute;</span></em></strong><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">:</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> t?»«ng bÆ°?»?c Ä?Æ°?»£c c??£i thi?»?n. Nhi?»u n&eacute;t Ä???¹p trong sinh ho???t vÄ?n ho&aacute;, thu??§n  phong m?»¹ t?»?c Ä?Æ°?»£c ph?»?c h?»“i v&agrave; ph&aacute;t tri?»?n. Ä???o Ä??»©c l?»?i s?»?ng x&atilde; h?»?i Ä?&atilde; v&agrave;  Ä?ang h&igrave;nh th&agrave;nh nhi?»u n&eacute;t m?»?i. T&iacute;nh t&iacute;ch c?»±c, ch?»§ Ä??»?ng d??§n thay th??? t&iacute;nh  b?»? Ä??»?ng, tr&ocirc;ng ch?», ?»· l???i. Nh?»?ng vi?»?c l&agrave;m thi???t th?»±c, hÆ°?»?ng v?» c?»?i  ngu?»“n, Ä??»n Æ?n, Ä?&aacute;p nghÄ©a, xo&aacute; Ä?&oacute;i, gi??£m ngh&egrave;o Ä?&atilde; tr?»? th&agrave;nh phong tr&agrave;o  qu??§n ch&uacute;ng r?»?ng r&atilde;i. Ä?»i s?»?ng vÄ?n ho&aacute; cÆ? s?»? s&ocirc;i Ä??»?ng kh?»?i s???c v?»?i nh?»?ng  cu?»?c v??­n Ä??»?ng &ldquo;<em>To&agrave;n d&acirc;n Ä?o&agrave;n k???t x&acirc;y d?»±ng Ä??»i s?»?ng vÄ?n ho&aacute;</em>&rdquo;<em>,</em> x&acirc;y d?»±ng l&agrave;ng, khu d&acirc;n cÆ° vÄ?n ho&aacute;.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">3. C&ocirc;ng t&aacute;c x&acirc;y d?»±ng Ä??£ng, x&acirc;y d?»±ng ch&iacute;nh quy?»n, v??­n Ä??»?ng qu??§n ch&uacute;ng</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">:  Ä?Æ°?»£c Ä???©y m???nh. S?»? ngÆ°?»i xin gia nh??­p Ä??£ng tÄ?ng b&igrave;nh qu&acirc;n g???p 2 Ä????n 3  l??§n so v?»?i nh?»?ng nÄ?m 1991-1994. Hi?»?u l?»±c, hi?»?u qu??£ ho???t Ä??»?ng c?»§a c&aacute;c c???p  ch&iacute;nh quy?»n t?»«ng bÆ°?»?c Ä?Æ°?»£c n&acirc;ng l&ecirc;n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">IV. GIAI ÄO?? N T?»? 2001 - 2005:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Tri?»?n  khai th?»±c hi?»?n Ngh?»? quy???t Ä???i h?»?i IX c?»§a Ä??£ng, Ngh?»? quy???t Ä???i h?»?i XII  Ä??£ng b?»? th&agrave;nh ph?»?, nh???t l&agrave; Ä?Æ°?»£c B?»? Ch&iacute;nh tr?»? ra Ngh?»? quy???t s?»? 32-NQ/TW  ng&agrave;y 5/8/2003 &ldquo;v?» x&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n th&agrave;nh ph?»? H??£i Ph&ograve;ng trong th?»i  k?»³ c&ocirc;ng nghi?»?p h&oacute;a, hi?»?n Ä????i h&oacute;a Ä????t nÆ°?»?c&rdquo;, Ä??£ng b?»?, qu&acirc;n v&agrave; d&acirc;n H??£i  Ph&ograve;ng Ä?&atilde; ph&aacute;t huy tinh th??§n Ä?o&agrave;n k???t, ch?»§ Ä??»?ng, s&aacute;ng t???o, n???m th?»i cÆ?,  vÆ°?»£t qua nhi?»u kh&oacute; khÄ?n, th&aacute;ch th?»©c, n?»? l?»±c ph???n Ä????u Ä????t Ä?Æ°?»£c nh?»?ng  th&agrave;nh t?»±u quan tr?»ng.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">1. Kinh t???:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Kinh t??? th&agrave;nh ph?»? ph&aacute;t tri?»?n tÆ°Æ?ng Ä??»?i to&agrave;n di?»?n, t?»?c Ä??»? tÄ?ng trÆ°?»?ng kh&aacute; cao v&agrave; li&ecirc;n t?»?c Ä?Æ°?»£c n&acirc;ng l&ecirc;n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- <strong><em>T?»?c Ä??»? tÄ?ng GDP b&igrave;nh qu&acirc;n 5 nÄ?m</em></strong> Ä????t 11,1%, g???p g??§n 1,5 l??§n m?»©c tÄ?ng b&igrave;nh qu&acirc;n chung c?»§a c??£ nÆ°?»?c; GDP b&igrave;nh qu&acirc;n Ä???§u ngÆ°?»i Ä????t 1.070 USD. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- <strong><em>CÆ? c???u kinh t??? chuy?»?n d?»?ch t&iacute;ch c?»±c, Ä?&uacute;ng hÆ°?»?ng</em></strong>;  t?»· tr?»ng nh&oacute;m ng&agrave;nh c&ocirc;ng nghi?»?p - x&acirc;y d?»±ng chi???m 36,58%; nh&oacute;m ng&agrave;nh  d?»?ch v?»? chi???m 50,44%; nh&oacute;m ng&agrave;nh n&ocirc;ng-l&acirc;m-thu?»· s??£n chi???m 12,98%. C&ocirc;ng  nghi?»?p ph&aacute;t tri?»?n nhanh, gi?»? vai tr&ograve; quan tr?»ng th&uacute;c Ä???©y t?»?c Ä??»? tÄ?ng  trÆ°?»?ng kinh t???; gi&aacute; tr?»? s??£n xu???t li&ecirc;n t?»?c tÄ?ng, b&igrave;nh qu&acirc;n Ä????t 19,9%/nÄ?m.  M?»?t s?»? ng&agrave;nh, s??£n ph??©m mÅ©i nh?»n, c&oacute; l?»£i th???, hÆ°?»?ng v?» xu???t kh??©u Ä?Æ°?»£c  Ä???§u tÆ° l?»?n, Ä????t t?»?c Ä??»? tÄ?ng trÆ°?»?ng cao nhÆ°: c&ocirc;ng nghi?»?p Ä?&oacute;ng m?»?i v&agrave; s?»­a  ch?»?a t&agrave;u thu?»·, s??£n xu???t, l???p r&aacute;p &ocirc; t&ocirc;, xe m&aacute;y, c&aacute;n th&eacute;p, c???u ki?»?n th&eacute;p,  v??­t li?»?u x&acirc;y d?»±ng, s??£n xu???t m&aacute;y m&oacute;c, thi???t b?»?, sÆ?n, gi&agrave;y d&eacute;p, may m??·c,  ch??? bi???n thu?»· s??£n&hellip;</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-  N&ocirc;ng nghi?»?p, n&ocirc;ng th&ocirc;n ph&aacute;t tri?»?n kh&aacute; to&agrave;n di?»?n, cÆ? c???u kinh t??? chuy?»?n  d?»?ch Ä?&uacute;ng hÆ°?»?ng sang s??£n xu???t h&agrave;ng ho&aacute;, ph?»?c v?»? Ä?&ocirc; th?»?, xu???t kh??©u; n&acirc;ng  t?»· tr?»ng c&ocirc;ng nghi?»?p v&agrave; d?»?ch v?»?. T&iacute;ch c?»±c ti???p thu, chuy?»?n giao, ?»©ng  d?»?ng ti???n b?»? khoa h?»c v&agrave; c&ocirc;ng ngh?»?, Ä???©y m???nh d?»“n Ä?i?»n, Ä??»?i th?»­a. NÄ?ng  su???t, gi&aacute; tr?»? s??£n xu???t v&agrave; thu nh??­p b&igrave;nh qu&acirc;n tr&ecirc;n Ä?Æ?n v?»? di?»?n t&iacute;ch tÄ?ng  nhanh. Gi&aacute; tr?»? s??£n xu???t n&ocirc;ng-l&acirc;m-ngÆ° nghi?»?p tÄ?ng b&igrave;nh qu&acirc;n 6,3%/nÄ?m;  xu???t hi?»?n nhi?»u c&aacute;nh Ä??»“ng Ä????t gi&aacute; tr?»? s??£n xu???t t?»« 50 Ä????n 100 tri?»?u  Ä??»“ng/ha/nÄ?m tr?»? l&ecirc;n. Thu?»· s??£n Ä?Æ°?»£c quan t&acirc;m Ä???§u tÆ°, ph&aacute;t tri?»?n kh&aacute; to&agrave;n  di?»?n, gi&aacute; tr?»? s??£n xu???t tÄ?ng b&igrave;nh qu&acirc;n 17,38%/nÄ?m. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Kinh  t??? bi?»?n ph&aacute;t tri?»?n Ä??»“ng b?»? tr&ecirc;n nhi?»u lÄ©nh v?»±c. Nhi?»u ng&agrave;nh Ä?Æ°?»£c t??­p  trung Ä???§u tÆ°, c&oacute; bÆ°?»?c ph&aacute;t tri?»?n m?»?i c??£ v?» quy m&ocirc; v&agrave; ch???t lÆ°?»£ng, t??­p  trung v&agrave;o c&aacute;c lÄ©nh v?»±c d?»?ch v?»? c??£ng bi?»?n, x&acirc;y d?»±ng c&aacute;c khu c&ocirc;ng nghi?»?p  ven bi?»?n, t??­p trung Ä?&oacute;ng m?»?i v&agrave; s?»­a ch?»?a t&agrave;u bi?»?n v&agrave; c&aacute;c phÆ°Æ?ng ti?»?n  n?»?i, thu?»· s??£n, du l?»?ch bi?»?n Ä???£o&hellip;</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Kinh t??? d?»?ch v?»?</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ph&aacute;t tri?»?n nhanh v&agrave; Ä?a d???ng: D?»?ch v?»? v??­n t??£i li&ecirc;n t?»?c Ä??»?i m?»?i nhanh  phÆ°Æ?ng ti?»?n, ph&aacute;t tri?»?n Ä?a d???ng, Ä?&aacute;p ?»©ng Ä?Æ°?»£c nhu c??§u ng&agrave;y c&agrave;ng l?»?n c?»§a  th?»? trÆ°?»ng. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Du l?»?ch</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> c&oacute; bÆ°?»?c ph&aacute;t tri?»?n m?»?i, nh???t l&agrave; t???i 2 khu v?»±c tr?»ng Ä?i?»?m du l?»?ch qu?»?c  gia l&agrave; Ä?»“ SÆ?n v&agrave; C&aacute;t B&agrave;, t?»?ng lÆ°?»£ng kh&aacute;ch tÄ?ng b&igrave;nh qu&acirc;n 27,7%/nÄ?m. <em>Ho???t Ä??»?ng thÆ°Æ?ng m???i v&agrave; xu???t nh??­p kh??©u</em> ph&aacute;t tri?»?n kh&aacute; m???nh, t?»?ng m?»©c lÆ°u chuy?»?n h&agrave;ng ho&aacute; tÄ?ng b&igrave;nh qu&acirc;n  23,6%/nÄ?m, t?»?ng kim ng???ch xu???t kh??©u tÄ?ng b&igrave;nh qu&acirc;n 21,78%/nÄ?m. <em>BÆ°u ch&iacute;nh vi?»?n th&ocirc;ng</em> ph&aacute;t tri?»?n nhanh, Ä????t b&igrave;nh qu&acirc;n 17 m&aacute;y Ä?i?»?n tho???i/100d&acirc;n v&agrave;o nÄ?m 2005, ph&aacute;t tri?»?n m?»?t s?»? lo???i h&igrave;nh d?»?ch v?»? m?»?i. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Tri?»?n  khai chÆ°Æ?ng tr&igrave;nh h?»?i nh??­p kinh t??? qu?»?c t??? Ä????t k???t qu??£ bÆ°?»?c Ä???§u quan  tr?»ng. Huy Ä??»?ng c&aacute;c ngu?»“n v?»?n Ä???§u tÆ° ph&aacute;t tri?»?n Ä????t b&igrave;nh qu&acirc;n 9.130 t?»·  Ä??»“ng/nÄ?m. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-T&agrave;i ch&iacute;nh ng&acirc;n s&aacute;ch kh&aacute; ?»?n Ä??»?nh, thu n?»?i Ä??»?a tÄ?ng b&igrave;nh qu&acirc;n 22,2%/nÄ?m. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Quan  h?»? s??£n xu???t Ä?Æ°?»£c c?»§ng c?»? v&agrave; Ä??»?i m?»?i, doanh nghi?»?p nh&agrave; nÆ°?»?c ti???p t?»?c  Ä?Æ°?»£c Ä??»?i m?»?i, s???p x???p Ä????t k???t qu??£ t?»?t, g&oacute;p ph??§n gi?»? vai tr&ograve; ch?»§ Ä????o,  Ä?&oacute;ng g&oacute;p l?»?n cho ng&acirc;n s&aacute;ch nh&agrave; nÆ°?»?c; kinh t??? h?»£p t&aacute;c x&atilde; Ä?Æ°?»£c quan t&acirc;m  c?»§ng c?»? v?»?i nh?»?ng m&ocirc; h&igrave;nh m?»?i thi???t th?»±c; kinh t??? tÆ° nh&acirc;n Ä?Æ°?»£c khuy???n  kh&iacute;ch t???o Ä?i?»u ki?»?n ph&aacute;t tri?»?n nhanh; kinh t??? cÆ? v?»?n Ä???§u tÆ° nÆ°?»?c ngo&agrave;i  ng&agrave;y c&agrave;ng c&oacute; vai tr&ograve; quan tr?»ng n&acirc;ng cao nÄ?ng l?»±c s??£n xu???t, Ä???©y m???nh  xu???t kh??©u, Ä??»?i m?»?i c&ocirc;ng ngh?»? v&agrave; h&igrave;nh th&agrave;nh c&aacute;c s??£n ph??©m c&oacute; h&agrave;m lÆ°?»£ng  ch???t x&aacute;m cao.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Thu  h&uacute;t v?»?n FDI ti???p t?»?c tÄ?ng, Æ°?»?c t&iacute;nh trong 5 nÄ?m thu h&uacute;t 125 d?»± &aacute;n v?»?i  t?»?ng s?»? v?»?n Ä?Ä?ng k&yacute; m?»?i v&agrave; b?»? sung tr&ecirc;n 780 tri?»?u USD, Ä?&oacute;ng g&oacute;p 15,9%  v&agrave;o GDP to&agrave;n th&agrave;nh ph?»?. C&aacute;c th?»? trÆ°?»ng cÆ? b??£n d??§n h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t  tri?»?n. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">2. VÄ?n ho&aacute; &ndash; x&atilde; h?»?i:</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> c&oacute; chuy?»?n bi???n t&iacute;ch c?»±c ti???n b?»?, g???n v?»?i ph&aacute;t tri?»?n kinh t???, g&oacute;p ph??§n n&acirc;ng cao Ä??»i s?»?ng v??­t ch???t v&agrave; tinh th??§n c?»§a nh&acirc;n d&acirc;n. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ph&aacute;t tri?»?n kh&aacute; to&agrave;n di?»?n; gi?»? v?»?ng k???t qu??£ ph?»? c??­p gi&aacute;o d?»?c ti?»?u h?»c  Ä?&uacute;ng Ä??»? tu?»?i; Ä????t chu??©n qu?»?c gia v?» ph?»? c??­p b??­c trung h?»c cÆ? s?»?, t&iacute;ch  c?»±c th?»±c hi?»?n ph?»? c??­p gi&aacute;o d?»?c b??­c trung h?»c v&agrave; ngh?»; n&acirc;ng c???p trÆ°?»ng  Ä???i h?»c sÆ° ph???m H??£i Ph&ograve;ng th&agrave;nh trÆ°?»ng Ä???i h?»c H??£i Ph&ograve;ng Ä?&agrave;o t???o Ä?a  ng&agrave;nh; ngu?»“n nh&acirc;n l?»±c ph&aacute;t tri?»?n c??£ v?» s?»? lÆ°?»£ng v&agrave; ch???t lÆ°?»£ng; t?»· l?»? lao  Ä??»?ng qua Ä?&agrave;o t???o Ä????t 39%, trong Ä?&oacute; 25,5% t?»?ng s?»? lao Ä??»?ng Ä?Æ°?»£c Ä?&agrave;o t???o  ngh?». </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&aacute;c lÄ©nh v?»±c chÄ?m s&oacute;c s?»©c kho??» nh&acirc;n d&acirc;n, d&acirc;n s?»?, gia Ä?&igrave;nh v&agrave; tr??» em, th?»? d?»?c th?»? thao</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ti???p t?»?c ph&aacute;t tri?»?n. m???ng lÆ°?»?i y t??? cÆ? s?»? Ä?Æ°?»£c tÄ?ng cÆ°?»ng v?» cÆ? s?»? v??­t  ch???t v&agrave; Ä??»?i ngÅ©, tr&ecirc;n 60% s?»? x&atilde; Ä????t chu??©n qu?»?c gia v?» y t??? x&atilde;; cÆ? b??£n  ho&agrave;n th&agrave;nh c&aacute;c m?»?c ti&ecirc;u, ch?»? ti&ecirc;u v?» d&acirc;n s?»? giai Ä?o???n 2001 &ndash; 2005; t?»· l?»?  tÄ?ng d&acirc;n s?»? t?»± nhi&ecirc;n gi??£m c&ograve;n 1%; phong tr&agrave;o th?»? d?»?c th?»? thao qu??§n  ch&uacute;ng ph&aacute;t tri?»?n kh&aacute; s&acirc;u r?»?ng, th?»? thao th&agrave;nh t&iacute;ch cao ti???p t?»?c l&agrave; m?»?t  trong nh?»?ng trung t&acirc;m m???nh c?»§a c??£ nÆ°?»?c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-<strong><em> Nhi?»?m v?»? x&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n n?»n vÄ?n ho&aacute; Vi?»?t Nam</em></strong> ti&ecirc;n ti???n Ä???­m Ä?&agrave; b??£n s???c d&acirc;n t?»?c Ä????t Ä?Æ°?»£c nh?»?ng k???t qu??£ bÆ°?»?c Ä???§u quan  tr?»ng. Nh??­n th?»©c c?»§a c&aacute;n b?»?, Ä???£ng vi&ecirc;n v&agrave; nh&acirc;n d&acirc;n v?» vai tr&ograve; c?»§a vÄ?n  ho&aacute; l&agrave; n?»n t??£ng tinh th??§n c?»§a x&atilde; h?»?i Ä?Æ°?»£c n&acirc;ng cao. Ä??©y m???nh x&acirc;y d?»±ng  m&ocirc;i trÆ°?»ng vÄ?n ho&aacute; v&agrave; Ä??»i s?»?ng vÄ?n ho&aacute; ?»? cÆ? s?»? theo hÆ°?»?ng &ldquo;x&atilde; h?»?i ho&aacute;&rdquo;  Ä????t nhi?»u k???t qu??£ t&iacute;ch c?»±c. 92,6% s?»? l&agrave;ng, khu d&acirc;n cÆ° x&acirc;y d?»±ng l&agrave;ng, khu  d&acirc;n cÆ° vÄ?n ho&aacute;, 100% x&atilde; c&oacute; nh&agrave; vÄ?n ho&aacute;&hellip;</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- V?» th?»±c hi?»?n c&aacute;c ch&iacute;nh s&aacute;ch x&atilde; h?»?i:</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> gi??£i quy???t vi?»?c l&agrave;m cho 188.300 lao Ä??»?ng; t?»· l?»? h?»? ngh&egrave;o Ä????n nÄ?m 2005  gi??£m c&ograve;n 3%, ho&agrave;n th&agrave;nh chÆ°Æ?ng tr&igrave;nh h?»? tr?»£ h?»? ngh&egrave;o xo&aacute; 6.500 ng&ocirc;i nh&agrave;  tranh, v&aacute;ch Ä????t; S?»? ngÆ°?»i tham gia b??£o hi?»?m x&atilde; h?»?i tÄ?ng g??§n 10%/nÄ?m. M&ocirc;  h&igrave;nh x&acirc;y d?»±ng c?»?m d&acirc;n cÆ°, phÆ°?»ng, x&atilde; kh&ocirc;ng c&oacute; t?»?i ph???m ma tu&yacute; v&agrave; t?»? n???n  x&atilde; h?»?i Ä?Æ°?»£c nhi?»u cÆ? s?»? hÆ°?»?ng ?»©ng. X&acirc;y d?»±ng v&agrave; Ä?Æ°a v&agrave;o ho???t Ä??»?ng Trung  t&acirc;m gi&aacute;o d?»?c &ndash; lao Ä??»?ng x&atilde; h?»?i.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">3. C&ocirc;ng t&aacute;c x&acirc;y d?»±ng Ä??£ng</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> v&agrave; Cu?»?c v??­n Ä??»?ng x&acirc;y d?»±ng, ch?»?nh Ä??»?n Ä??£ng Ä?Æ°?»£c t??­p trung l&atilde;nh Ä????o, ch?»?  Ä????o th?»±c hi?»?n Ä????t k???t qu??£ r&otilde; n&eacute;t. T?»? ch?»©c cÆ? s?»? Ä???£ng trong s???ch, v?»?ng  m???nh tÄ?ng t?»« 71,8% nÄ?m 2001 l&ecirc;n 75,9% nÄ?m 2004; cÆ? s?»? y???u k&eacute;m t?»« 1,8%  nÄ?m 2001 gi??£m c&ograve;n 1,35% nÄ?m 2004; c&ocirc;ng t&aacute;c ph&aacute;t tri?»?n Ä??£ng Ä?Æ°?»£c coi  tr?»ng, Ä???©y m???nh, Ä?&atilde; k???t n???p Ä?Æ°?»£c 13.000 Ä???£ng vi&ecirc;n, ph??§n l?»?n l&agrave; tu?»?i tr??»,  hÆ?n 1/3 c&oacute; tr&igrave;nh Ä??»? Ä????i h?»c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">V. Giai Ä?o???n 2006 &ndash; 2010:</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Th&agrave;nh  ph?»? t??­p trung cao Ä??»? tri?»?n khai th?»±c hi?»?n Ngh?»? quy???t Ä???i h?»?i X c?»§a  Ä??£ng, Ngh?»? quy???t Ä???i h?»?i XIII Ä??£ng b?»? th&agrave;nh ph?»? v&agrave; ti???p t?»?c Ä???©y m???nh  th?»±c hi?»?n Ngh?»? quy???t s?»? 32-NQ/TW c?»§a B?»? Ch&iacute;nh tr?»? &ldquo;<em>v?» x&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n th&agrave;nh ph?»? H??£i Ph&ograve;ng trong th?»i k?»³ c&ocirc;ng nghi?»?p h&oacute;a, hi?»?n Ä????i h&oacute;a Ä????t nÆ°?»?c</em>&rdquo;. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">1- V?» ph&aacute;t tri?»?n <span style=\"letter-spacing: -0.2pt;\">kinh t??? </span></span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-T?»?ng s??£n ph??©m trong nÆ°?»?c</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> (GDP): do ??£nh hÆ°?»?ng c?»§a kh?»§ng ho??£ng t&agrave;i ch&iacute;nh v&agrave; suy tho&aacute;i kinh t??? th???  gi?»?i n&ecirc;n kh&ocirc;ng Ä????t m?»?c ti&ecirc;u Ä???i h?»?i Ä??» ra (12-13%/nÄ?m), song b&igrave;nh qu&acirc;n  trong 5 nÄ?m v??«n Ä????t 11,15%, g???p 1,5 l??§n m?»©c tÄ?ng b&igrave;nh qu&acirc;n chung c?»§a c??£  nÆ°?»?c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- CÆ? c???u kinh t??? chuy?»?n d?»?ch theo hÆ°?»?ng ti&ecirc;n ti???n, </span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">t?»·  tr?»ng GDP c?»§a c&aacute;c nh&oacute;m ng&agrave;nh c&ocirc;ng nghi?»?p - x&acirc;y d?»±ng v&agrave; d?»?ch v?»? t?»« 87%  nÄ?m 2005 (d?»?ch v?»? 50,8%) l&ecirc;n 90% nÄ?m 2010 (d?»?ch v?»? 53%). T?»?ng v?»?n Ä???§u tÆ°  to&agrave;n x&atilde; h?»?i Æ°?»?c Ä????t 117 ngh&igrave;n t?»· Ä??»“ng, tÄ?ng 30,1% so v?»?i m?»?c ti&ecirc;u Ä???i  h?»?i. </span><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">TÄ?ng nhanh v?»?n Ä???§u tÆ° tr?»±c ti???p nÆ°?»?c ngo&agrave;i. Ngu?»“n nh&acirc;n l?»±c <span style=\"letter-spacing: 0.1pt;\">t?»«ng bÆ°?»?c Ä?&aacute;p ?»©ng y&ecirc;u c??§u ph&aacute;t tri?»?n th&agrave;nh ph?»? theo hÆ°?»?ng c&ocirc;ng nghi?»?p h&oacute;a, hi?»?n Ä????i h&oacute;a. </span></span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">T&agrave;i  ch&iacute;nh, ng&acirc;n s&aacute;ch kh&aacute; ?»?n Ä??»?nh, cÆ? b??£n Ä?&aacute;p ?»©ng nhu c??§u chi thÆ°?»ng xuy&ecirc;n,  ph&aacute;t sinh Ä??»?t xu???t v&agrave; tÄ?ng chi Ä???§u tÆ° ph&aacute;t tri?»?n. Thu ng&acirc;n s&aacute;ch tr&ecirc;n Ä??»?a  b&agrave;n tÄ?ng cao, ho&agrave;n th&agrave;nh vÆ°?»£t m?»©c k??? ho???ch (b&igrave;nh qu&acirc;n 5 nÄ?m thu ng&acirc;n  s&aacute;ch tr&ecirc;n Ä??»?a b&agrave;n Ä????t 22,36%/nÄ?m, thu n?»?i Ä??»?a Ä????t 15%/nÄ?m).</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: 0.1pt;\">-C&ocirc;ng nghi?»?p ti???p t?»?c gi?»? vai tr&ograve; ch?»§ l?»±c,</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: 0.1pt;\"> g&oacute;p ph??§n quan tr?»ng h&agrave;ng Ä???§u v&agrave;o tÄ?ng trÆ°?»?ng kinh t???, xu???t kh??©u, thu  h&uacute;t lao Ä??»?ng; t???o Ä?i?»u ki?»?n th&uacute;c Ä???©y ph&aacute;t tri?»?n d?»?ch v?»?, Ä?&ocirc; th?»?, chuy?»?n  d?»?ch cÆ? c???u kinh t??? n&ocirc;ng nghi?»?p, n&ocirc;ng th&ocirc;n. T??­p</span><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> trung Ä???§u tÆ°, ph&aacute;t tri?»?n s??£n ph??©m mÅ©i nh?»n, quan tr?»ng, l&agrave;m n?»n t??£ng  cho c&ocirc;ng nghi?»?p ho&aacute;, hi?»?n Ä????i ho&aacute;, nhÆ° Ä?&oacute;ng v&agrave; s?»­a ch?»?a t&agrave;u bi?»?n, cÆ? kh&iacute;  quy m&ocirc; l?»?n, ph&ocirc;i th&eacute;p, th&eacute;p t???m, xi mÄ?ng, nhi?»?t Ä?i?»?n, ph&acirc;n b&oacute;n DAP&hellip;  H&igrave;nh th&agrave;nh m?»?t s?»? ng&agrave;nh k?»¹ thu??­t cao nhÆ° s??£n xu???t m&aacute;y m&oacute;c thi???t b?»? Ä?i?»?n,  Ä?i?»?n t?»­; d?»?ng c?»? y t???, d?»?ng c?»? ch&iacute;nh x&aacute;c; thi???t b?»? vÄ?n ph&ograve;ng v&agrave; m&aacute;y  t&iacute;nh&hellip; T?»«ng bÆ°?»?c h&igrave;nh th&agrave;nh trung t&acirc;m c&ocirc;ng nghi?»?p Ä?&oacute;ng t&agrave;u, s??£n xu???t kim  lo???i c?»§a v&ugrave;ng v&agrave; c??£ nÆ°?»?c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-  Kinh t??? d?»?ch v?»? ph&aacute;t tri?»?n Ä?a d???ng, Ä?&uacute;ng Ä??»?nh hÆ°?»?ng, ch???t lÆ°?»£ng v&agrave; hi?»?u  qu??£ Ä?Æ°?»£c n&acirc;ng l&ecirc;n; GDP chi???m t?»· tr?»ng cao; tÄ?ng trÆ°?»?ng b&igrave;nh qu&acirc;n  12,39%/nÄ?m. Ho???t Ä??»?ng d?»?ch v?»? c??£ng bi?»?n ph&aacute;t tri?»?n nhanh. S??£n lÆ°?»£ng h&agrave;ng  th&ocirc;ng qua c&aacute;c c??£ng tr&ecirc;n Ä??»?a b&agrave;n Ä????t m?»?c ti&ecirc;u Ä???i h?»?i Ä??» ra trÆ°?»?c 2 nÄ?m<sup>. </sup>NÄ?m 2009 Ä????t 32,5 tri?»?u t???n, tÄ?ng 13,7%. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: -0.2pt;\">Ho???t Ä??»?ng thÆ°Æ?ng m???i</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: -0.2pt;\"> ph&aacute;t tri?»?n kh&aacute; nhanh v&agrave; to&agrave;n di?»?n. H??? t??§ng thÆ°Æ?ng m???i Ä?Æ°?»£c quan t&acirc;m Ä???§u  tÆ°, th&ecirc;m nhi?»u trung t&acirc;m thÆ°Æ?ng m???i, si&ecirc;u th?»? hi?»?n Ä????i; h?»? th?»?ng kho,  b&atilde;i trung chuy?»?n Ä?&aacute;p ?»©ng y&ecirc;u c??§u Ä??»? H??£i Ph&ograve;ng gi?»? vai tr&ograve; trung t&acirc;m ph&aacute;t  lu?»“ng h&agrave;ng ho&aacute; c?»§a v&ugrave;ng v&agrave; c??£ nÆ°?»?c. Kim ng???ch xu???t kh??©u nÄ?m 2009 Ä????t  1.687 tri?»?u USD, tÄ?ng 11,7% (d?»± ki???n nÄ?m 2010 Ä????t 1,94 t?»· USD). </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Du l?»?ch</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> c&oacute; bÆ°?»?c ph&aacute;t tri?»?n kh&aacute;, cÆ? s?»? h??? t??§ng du l?»?ch Ä?Æ°?»£c Ä???§u tÆ°, th&ecirc;m nhi?»u  kh&aacute;ch s???n, nh&agrave; h&agrave;ng, nhi?»u c&ocirc;ng tr&igrave;nh vÄ?n ho&aacute; l?»?ch s?»­ Ä?Æ°?»£c t&ocirc;n t???o. Ä???n  nÄ?m 2010, d?»± ki???n thu h&uacute;t kho??£ng 4,2 tri?»?u lÆ°?»£t kh&aacute;ch (ch?»? ti&ecirc;u Ä???i h?»?i  5,6 tri?»?u lÆ°?»£t kh&aacute;ch). </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">BÆ°u ch&iacute;nh, vi?»?n th&ocirc;ng</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ti???p t?»?c ph&aacute;t tri?»?n m???nh; m???ng vi?»?n th&ocirc;ng Ä?&atilde; ph?»§ kh???p th&agrave;nh ph?»?, c??£ Ä???£o  B???ch Long V?»¹. C&aacute;c d?»?ch v?»? ?»©ng d?»?ng c&ocirc;ng ngh?»? th&ocirc;ng tin ph&aacute;t tri?»?n kh&aacute;  nhanh, ph?»?c v?»? Ä????c l?»±c cho ho???t Ä??»?ng c?»§a b?»? m&aacute;y h&agrave;nh ch&iacute;nh v&agrave; doanh  nghi?»?p. M??­t Ä??»? Ä?i?»?n tho???i Ä????t 250 thu&ecirc; bao/100 d&acirc;n; internet Ä????t 7,5  thu&ecirc; bao/100 d&acirc;n, quy Ä??»?i m??­t Ä??»? d&acirc;n s?»? s?»­ d?»?ng internet Ä????t 45%. <em>C&aacute;c lo???i h&igrave;nh d?»?ch v?»? m?»?i</em>... ph&aacute;t tri?»?n kh&aacute; nhanh<span style=\"letter-spacing: 0.1pt;\">&hellip;g&oacute;p ph??§n t???o ra s??£n ph??©m c&oacute; nÄ?ng su???t v&agrave; ch???t lÆ°?»£ng cao, Ä????t ti&ecirc;u chu??©n an to&agrave;n v?»? sinh th?»±c ph??©m, b??£o v?»? m&ocirc;i trÆ°?»ng sinh th&aacute;i.</span></span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Kinh t??? n&ocirc;ng nghi?»?p </span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">chuy?»?n  d?»?ch nhanh hÆ?n theo hÆ°?»?ng c&ocirc;ng nghi?»?p ho&aacute;, hi?»?n Ä????i ho&aacute;; b??£o Ä???£m an  ninh lÆ°Æ?ng th?»±c. Gi&aacute; tr?»? s??£n xu???t tÄ?ng b&igrave;nh qu&acirc;n 4,54%/nÄ?m, Ä????t k???  ho???ch. H&igrave;nh th&agrave;nh v&agrave; ph&aacute;t tri?»?n kh&aacute; nhanh c&aacute;c v&ugrave;ng s??£n xu???t n&ocirc;ng s??£n t??­p  trung c&oacute; gi&aacute; tr?»? kinh t??? cao hÆ?n. Vi?»?c ?»©ng d?»?ng ti???n b?»? khoa h?»c, c&ocirc;ng  ngh?»? trong Ä?&aacute;nh b???t, nu&ocirc;i tr?»“ng v&agrave; ch??? bi???n mang l???i hi?»?u qu??£ t&iacute;ch c?»±c  hÆ?n. H??£i Ph&ograve;ng Ä?&atilde; ng&agrave;y c&agrave;ng kh??³ng Ä??»?nh r&otilde; hÆ?n l&agrave; trung t&acirc;m s??£n xu???t  gi?»?ng thu?»·-h??£i s??£n ?»? mi?»n B???c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Kinh t??? bi?»?n</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">,  khai th&aacute;c kh&aacute; to&agrave;n di?»?n c&aacute;c y???u t?»? t&agrave;i nguy&ecirc;n, l?»£i th??? bi?»?n v&agrave; c??£ng  bi?»?n; ti???p t?»?c Ä???§u tÆ° c&aacute;c ng&agrave;nh kinh t??? bi?»?n truy?»n th?»?ng Ä??»? n&acirc;ng cao  nÄ?ng l?»±c, c&oacute; t?»?c Ä??»? ph&aacute;t tri?»?n nhanh, s?»©c c???nh tranh Ä?Æ°?»£c c??£i thi?»?n;  kh??³ng Ä??»?nh r&otilde; hÆ?n vai tr&ograve; l&agrave; m?»?t trong nh?»?ng tr?»ng Ä?i?»?m kinh t??? bi?»?n c?»§a  c??£ nÆ°?»?c. X&acirc;y d?»±ng, tri?»?n khai quy ho???ch ph&aacute;t tri?»?n kinh t??? bi?»?n H??£i  Ph&ograve;ng Ä????n nÄ?m 2020 ph&ugrave; h?»£p v?»?i quy ho???ch chung c?»§a c??£ nÆ°?»?c. X&acirc;y d?»±ng Quy  ho???ch chung Khu kinh t??? Ä&igrave;nh VÅ© - C&aacute;t H??£i Ä????n nÄ?m 2025 theo hÆ°?»?ng l&agrave;  m?»?t trung t&acirc;m kinh t??? bi?»?n Ä?a ng&agrave;nh, Ä?a lÄ©nh v?»±c c?»§a V&ugrave;ng Duy&ecirc;n h??£i B???c  b?»? v&agrave; c??£ nÆ°?»?c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&aacute;c th&agrave;nh ph??§n kinh t??? ti???p t?»?c Ä?Æ°?»£c quan t&acirc;m t???o Ä?i?»u ki?»?n thu??­n l?»£i Ä??»? ph&aacute;t tri?»?n</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">,  nÄ?ng l?»±c c???nh tranh c?»§a c&aacute;c doanh nghi?»?p Ä?Æ°?»£c n&acirc;ng l&ecirc;n. Ä?»?i ngÅ© doanh  nh&acirc;n v&agrave; doanh nghi?»?p ph&aacute;t tri?»?n nhanh, quy m&ocirc; ng&agrave;y c&agrave;ng l?»?n. <em>Kinh t??? nh&agrave; nÆ°?»?c</em> s?»­ d?»?ng c&oacute; hi?»?u qu??£ hÆ?n v?»?n, t&agrave;i s??£n c?»§a Nh&agrave; nÆ°?»?c v&agrave; huy Ä??»?ng v?»?n x&atilde;  h?»?i, t???o Ä??»?ng l?»±c m???nh m??½ v&agrave; cÆ? ch??? qu??£n l&yacute; nÄ?ng Ä??»?ng cho doanh nghi?»?p,  gi?»? v?»?ng vai tr&ograve; ch?»§ Ä????o trong m?»?t s?»? ng&agrave;nh quan tr?»ng v&agrave; ph&aacute;t tri?»?n cÆ?  s?»? h??? t??§ng thi???t y???u. <em>Kinh t??? t??­p th?»?</em> ti???p t?»?c Ä?Æ°?»£c c?»§ng c?»?, c&oacute;  Ä?&oacute;ng g&oacute;p kh&aacute; t&iacute;ch c?»±c v&agrave;o tÄ?ng trÆ°?»?ng kinh t??? th&agrave;nh ph?»?, nh???t l&agrave; th&uacute;c  Ä???©y ph&aacute;t tri?»?n kinh t??? - x&atilde; h?»?i n&ocirc;ng th&ocirc;n, gi??£m ngh&egrave;o, gi??£i quy???t vi?»?c  l&agrave;m, x&acirc;y d?»±ng c?»?ng Ä??»“ng&hellip; <em>Kinh t??? tÆ° nh&acirc;n</em> ph&aacute;t tri?»?n nhanh s?»?  lÆ°?»£ng, quy m&ocirc;, m?»? r?»?ng lÄ©nh v?»±c ho???t Ä??»?ng, thu h&uacute;t v?»?n l?»?n c?»§a to&agrave;n x&atilde;  h?»?i, g&oacute;p ph??§n quan tr?»ng gi??£i quy???t vi?»?c l&agrave;m v&agrave; Ä?&oacute;ng g&oacute;p ng&agrave;y c&agrave;ng l?»?n  v&agrave;o t?»?ng GDP c?»§a th&agrave;nh ph?»?. GDP chi???m t?»· tr?»ng 26,3% t?»?ng GDP (nÄ?m 2005  l&agrave;16%). <em>Kinh t??? c&oacute; v?»?n Ä???§u tÆ° nÆ°?»?c ngo&agrave;i</em> g&oacute;p ph??§n t&iacute;ch c?»±c n&acirc;ng  cao tr&igrave;nh Ä??»? c&ocirc;ng ngh?»?, t???o n&ecirc;n nhi?»u ng&agrave;nh ngh?», s??£n ph??©m m?»?i, n&acirc;ng cao  nÄ?ng l?»±c xu???t kh??©u, th&uacute;c Ä???©y ph&aacute;t tri?»?n th?»? trÆ°?»ng trong nÆ°?»?c v&agrave; c&aacute;c  ho???t Ä??»?ng d?»?ch v?»? kh&aacute;c; g&oacute;p ph??§n t&iacute;ch c?»±c gia tÄ?ng nÄ?ng l?»±c s??£n xu???t c?»§a  m?»?t s?»? ng&agrave;nh quan tr?»ng.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- M&ocirc;i trÆ°?»ng Ä???§u tÆ° kinh doanh ti???p t?»?c Ä?Æ°?»£c c??£i thi?»?n, nÄ?ng l?»±c c???nh tranh c?»§a th&agrave;nh ph?»? Ä?Æ°?»£c n&acirc;ng l&ecirc;n.</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ban h&agrave;nh nhi?»u ch?»§ trÆ°Æ?ng, cÆ? ch??? ch&iacute;nh s&aacute;ch thu??­n l?»£i, h?»? tr?»£ doanh  nghi?»?p n&acirc;ng cao nÄ?ng l?»±c c???nh tranh; tÄ?ng s?»? doanh nghi?»?p c&oacute; kh??£ nÄ?ng  c???nh tranh. C&aacute;c th?»? trÆ°?»ng cÆ? b??£n Ä?&atilde; h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t tri?»?n r&otilde; n&eacute;t,  Ä?&oacute;ng g&oacute;p ng&agrave;y c&agrave;ng t?»?t hÆ?n cho s?»± ph&aacute;t tri?»?n c?»§a th&agrave;nh ph?»?. Ch?»§ Ä??»?ng  tri?»?n khai th?»±c hi?»?n chÆ°Æ?ng tr&igrave;nh h?»?i nh??­p kinh t??? qu?»?c t???. CÆ? ch??? ch&iacute;nh  s&aacute;ch Ä?Æ°?»£c th&agrave;nh ph?»? x&acirc;y d?»±ng, k?»?p th?»i s?»­a Ä??»?i, b?»? sung. Huy Ä??»?ng v&agrave; s?»­  d?»?ng c&oacute; hi?»?u qu??£ c&aacute;c ngu?»“n l?»±c v&agrave; s?»± h?»£p t&aacute;c qu?»?c t???, t???o th&ecirc;m s?»©c m???nh  m?»?i cho ph&aacute;t tri?»?n kinh t??? - x&atilde; h?»?i, t???o ti?»n Ä??» v&agrave; cÆ? s?»? quan tr?»ng  cho vi?»?c h?»?i nh??­p kinh t??? qu?»?c t??? v&agrave; s?»± ph&aacute;t tri?»?n nhanh, b?»n v?»?ng c?»§a  th&agrave;nh ph?»?.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-C&ocirc;ng t&aacute;c Ä??»?i ngo???i</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">,  tr?»ng t&acirc;m l&agrave; kinh t??? Ä??»?i ngo???i v&agrave; c&aacute;c chÆ°Æ?ng tr&igrave;nh h?»£p t&aacute;c ph&aacute;t tri?»?n  v?»?i nhi?»u Ä??»?a phÆ°Æ?ng Ä?Æ°?»£c tri?»?n khai c&oacute; hi?»?u qu??£. Ti???p t?»?c c?»§ng c?»?, m?»?  r?»?ng quan h?»? h?»£p t&aacute;c v?»?i c&aacute;c Ä??»?a phÆ°Æ?ng trong v&ugrave;ng kinh t??? tr?»ng Ä?i?»?m  ph&iacute;a B???c, v&ugrave;ng Ä??»“ng b??±ng s&ocirc;ng H?»“ng v&agrave; c??£ nÆ°?»?c, nh???t l&agrave; Th?»§ Ä?&ocirc; H&agrave; N?»?i,  t?»?nh Qu??£ng Ninh. T&iacute;ch c?»±c tham gia, th&uacute;c Ä???©y qu&aacute; tr&igrave;nh x&acirc;y d?»±ng c&aacute;c  tuy???n h&agrave;nh lang, v&agrave;nh Ä?ai kinh t??? Vi?»?t Nam-Trung Qu?»?c. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-C&ocirc;ng t&aacute;c l&atilde;nh Ä????o, ch?»? Ä????o tri?»?n khai th?»±c hi?»?n Ngh?»? quy???t s?»? 32-NQ/TW c?»§a B?»? Ch&iacute;nh tr?»?</span></em></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> v?» x&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n th&agrave;nh ph?»? H??£i Ph&ograve;ng trong th?»i k?»³ c&ocirc;ng nghi?»?p  ho&aacute;, hi?»?n Ä????i ho&aacute; Ä????t nÆ°?»?c Ä?Æ°?»£c t??­p trung cao, ph?»?i h?»£p c&oacute; hi?»?u qu??£ v?»?i  c&aacute;c b?»?, ng&agrave;nh Trung Æ°Æ?ng c&oacute; li&ecirc;n quan, tri?»?n khai Ä??»“ng b?»? v?»?i tinh th??§n  ch?»§ Ä??»?ng, kh??©n trÆ°Æ?ng, Ä????t Ä?Æ°?»£c k???t qu??£ quan tr?»ng, g&oacute;p ph??§n Ä??»? th&agrave;nh  ph?»? ph&aacute;t tri?»?n to&agrave;n di?»?n hÆ?n trong nhi?»u lÄ©nh v?»±c.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ä??©y  m???nh vi?»?c ph?»?i h?»£p v?»?i c&aacute;c Ä??»?a phÆ°Æ?ng trong c??£ nÆ°?»?c, Ä???·c bi?»?t l&agrave; c&aacute;c  Ä??»?a phÆ°Æ?ng trong v&ugrave;ng kinh t??? tr?»ng Ä?i?»?m B???c b?»? v&agrave; v&ugrave;ng Ä??»“ng b??±ng s&ocirc;ng  H?»“ng, nh??±m ph&aacute;t huy l?»£i th??? t?»«ng Ä??»?a phÆ°Æ?ng trong vi?»?c th?»±c hi?»?n Ngh?»?  quy???t</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Ä??©y m???nh ph&aacute;t tri?»?n Ä?&ocirc; th?»?, x&acirc;y d?»±ng cÆ? s?»? h??? t??§ng n&ocirc;ng th&ocirc;n</span></em></strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">. </span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ä&ocirc;  th?»? ph&aacute;t tri?»?n c??£ v?» quy m&ocirc; v&agrave; di?»?n m???o theo Ä?&uacute;ng ti&ecirc;u ch&iacute; Ä?&ocirc; th?»? lo???i I  trung t&acirc;m c???p qu?»?c gia, v?»?i b??£n s???c l&agrave; Ä?&ocirc; th?»? c??£ng bi?»?n vÄ?n minh, hi?»?n  Ä????i. Th&agrave;nh l??­p qu??­n m?»?i DÆ°Æ?ng Kinh v&agrave; chuy?»?n th?»? x&atilde; Ä?»“ SÆ?n th&agrave;nh qu??­n.  Ph&aacute;t tri?»?n khu Ä?&ocirc; th?»? m?»?i, c??£i t???o, n&acirc;ng c???p Ä?&ocirc; th?»? cÅ© v?»?i h?»? th?»?ng d?»?ch  v?»? giao th&ocirc;ng, c???p, tho&aacute;t nÆ°?»?c, Ä?i?»?n, th&ocirc;ng tin li&ecirc;n l???c, c&ocirc;ng vi&ecirc;n c&acirc;y  xanh, v?»? sinh Ä?&ocirc; th?»?, vÄ?n ho&aacute;, th?»? d?»?c th?»? thao, du l?»?ch, y t???&hellip; t?»«ng  bÆ°?»?c Ä?Æ°?»£c Ä???§u tÆ° Ä??»“ng b?»?. <em>C&ocirc;ng t&aacute;c ph&aacute;t tri?»?n v&agrave; qu??£n l&yacute; Ä?&ocirc; th?»?</em> Ä?Æ°?»£c tÄ?ng cÆ°?»ng, c&oacute; ti???n b?»?. Ä&atilde; v&agrave; Ä?ang x&acirc;y d?»±ng quy ho???ch Ä?&ocirc; th?»? du  l?»?ch Ä?»“ SÆ?n, khu Ä?&ocirc; th?»? B???c s&ocirc;ng C???m; Ä?&ocirc; th?»? b?» Nam s&ocirc;ng C???m, hai b?»  s&ocirc;ng L???ch Tray, Nam Tr&agrave;ng C&aacute;t &hellip;</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">CÆ?  b??£n ho&agrave;n th&agrave;nh chÆ°Æ?ng tr&igrave;nh Ä?i?»?n n&ocirc;ng th&ocirc;n, 100% tuy???n Ä?Æ°?»ng huy?»?n Ä?Æ°?»£c  tr??£i nh?»±a, Ä????t ti&ecirc;u chu??©n c???p V Ä??»“ng b??±ng, tr&ecirc;n 90% Ä?Æ°?»ng li&ecirc;n x&atilde; v&agrave;  Ä?Æ°?»ng th&ocirc;n x&oacute;m Ä?Æ°?»£c tr??£i nh?»±a ho??·c b&ecirc; t&ocirc;ng; tr&ecirc;n 90% s?»? d&acirc;n n&ocirc;ng th&ocirc;n  Ä?Æ°?»£c d&ugrave;ng nÆ°?»?c h?»£p v?»? sinh; 100% s?»? x&atilde; c&oacute; nh&agrave; vÄ?n ho&aacute; v&agrave; Ä?i?»?m bÆ°u Ä?i?»?n  vÄ?n ho&aacute;. N&acirc;ng cao ch???t lÆ°?»£ng chÄ?m s&oacute;c s?»©c kho??», kh&aacute;m ch?»?a b?»?nh cho ngÆ°?»i  d&acirc;n; c&aacute;c chÆ°Æ?ng tr&igrave;nh qu?»?c gia v?» y t???, d&acirc;n s?»?, tr??» em Ä?Æ°?»£c t?»? ch?»©c  th?»±c hi?»?n t?»?t, 100% x&atilde; c&oacute; tr???m y t??? v&agrave; b&aacute;c s?»¹. B?»? m??·t n&ocirc;ng th&ocirc;n c&oacute; nhi?»u  kh?»?i s???c, Ä??»i s?»?ng c?»§a n&ocirc;ng d&acirc;n Ä?Æ°?»£c c??£i thi?»?n, d&acirc;n ch?»§ cÆ? s?»? Ä?Æ°?»£c Ä???£m  b??£o; c&aacute;c gi&aacute; tr?»? vÄ?n h&oacute;a truy?»n th?»?ng Ä?Æ°?»£c ph?»?c h?»“i, ph&aacute;t huy. S?»± nghi?»?p  c&ocirc;ng nghi?»?p ho&aacute;, hi?»?n Ä????i ho&aacute; n&ocirc;ng nghi?»?p, n&ocirc;ng th&ocirc;n c&oacute; nhi?»u chuy?»?n  bi???n, Ä????t k???t qu??£ bÆ°?»?c Ä???§u. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&ocirc;ng  t&aacute;c qu??£n l&yacute;, khai th&aacute;c, s?»­ d?»?ng t&agrave;i nguy&ecirc;n Ä?Æ°?»£c ch&uacute; tr?»ng, hi?»?u qu??£  t?»«ng bÆ°?»?c n&acirc;ng l&ecirc;n; c&ocirc;ng t&aacute;c b??£o v?»? m&ocirc;i trÆ°?»ng Ä?Æ°?»£c tÄ?ng cÆ°?»ng. X&acirc;y  d?»±ng, th?»±c hi?»?n chÆ°Æ?ng tr&igrave;nh b??£o v?»? m&ocirc;i trÆ°?»ng th&agrave;nh ph?»? Ä????n nÄ?m 2020. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">2</span></em></strong><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-  C&aacute;c lÄ©nh v?»±c vÄ?n h&oacute;a, gi&aacute;o d?»?c-Ä?&agrave;o t???o, y t???, khoa h?»c v&agrave; c&ocirc;ng ngh?»?  ti???p t?»?c c&oacute; bÆ°?»?c ph&aacute;t tri?»?n v?» quy m&ocirc;, n&acirc;ng cao v?» ch???t lÆ°?»£ng; t?»«ng bÆ°?»?c  th?»±c hi?»?n c&aacute;c ch&iacute;nh s&aacute;ch v?» ti???n b?»? v&agrave; c&ocirc;ng b??±ng x&atilde; h?»?i, Ä????t k???t qu??£ r&otilde;  n&eacute;t.</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-X&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n vÄ?n h&oacute;a</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ä????t k???t qu??£ t&iacute;ch c?»±c. Ä???o Ä??»©c, l?»?i s?»?ng, n???p s?»?ng vÄ?n h&oacute;a c&oacute; chuy?»?n  bi???n ti???n b?»?. Phong tr&agrave;o &ldquo;to&agrave;n d&acirc;n Ä?o&agrave;n k???t x&acirc;y d?»±ng Ä??»i s?»?ng vÄ?n h&oacute;a&rdquo;  ti???p t?»?c ph&aacute;t tri?»?n. H?»? th?»?ng thi???t ch??? vÄ?n h&oacute;a Ä?Æ°?»£c Ä???§u tÆ° x&acirc;y d?»±ng  Ä??»“ng b?»? hÆ?n. C&aacute;c ho???t Ä??»?ng s&aacute;ng t???o vÄ?n h?»c-ngh?»? thu??­t Ä?Æ°?»£c ch&uacute; tr?»ng.  C&aacute;c cÆ? quan b&aacute;o ch&iacute; v&agrave; h?»? th?»?ng th&ocirc;ng tin Ä????i ch&uacute;ng Ä?Æ°?»£c Ä???§u tÆ°, n&acirc;ng  c???p v?» cÆ? s?»? v??­t ch???t, k?»¹ thu??­t hi?»?n Ä????i v&agrave; Ä??»“ng b?»? hÆ?n; ch???t lÆ°?»£ng,  hi?»?u qu??£ ho???t Ä??»?ng Ä?Æ°?»£c n&acirc;ng l&ecirc;n. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Gi&aacute;o d?»?c-Ä?&agrave;o t???o</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ph&aacute;t tri?»?n, g???n k???t ch??·t ch??½ hÆ?n v?»?i ph&aacute;t tri?»?n kinh t???-x&atilde; h?»?i. Gi?»?  v?»?ng k???t qu??£ ph?»? c??­p gi&aacute;o d?»?c ti?»?u h?»c v&agrave; trung h?»c cÆ? s?»?; cÆ? b??£n ho&agrave;n  th&agrave;nh ph?»? c??­p gi&aacute;o d?»?c b??­c ph?»? th&ocirc;ng trung h?»c v&agrave; ngh?». CÆ? s?»? v??­t ch???t,  thi???t b?»? trÆ°?»ng h?»c Ä?Æ°?»£c tÄ?ng cÆ°?»ng Ä?&aacute;ng k?»? (T?»?ng v?»?n Ä???§u tÆ° ph&aacute;t tri?»?n  lÄ©nh v?»±c gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o chi???m 1,4% t?»?ng v?»?n Ä???§u tÆ° to&agrave;n x&atilde; h?»?i nÄ?m  2009; chi ng&acirc;n s&aacute;ch cho gi&aacute;o d?»?c v&agrave; Ä?&agrave;o t???o chi???m kho??£ng 10% t?»?ng chi  Ä???§u tÆ° ph&aacute;t tri?»?n). </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&ocirc;ng  t&aacute;c Ä?&agrave;o t???o ngh?» Ä?Æ°?»£c Ä???©y m???nh th&ecirc;m m?»?t bÆ°?»?c, ch???t lÆ°?»£ng c&oacute; chuy?»?n bi???n  ti???n b?»?. T?»· l?»? lao Ä??»?ng Ä?&atilde; qua Ä?&agrave;o t???o Ä????t 65% , trong Ä?&oacute; lao Ä??»?ng qua  Ä?&agrave;o t???o ngh?» Ä????t 43%.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- Ho???t Ä??»?ng nghi&ecirc;n c?»©u, ?»©ng d?»?ng khoa h?»c v&agrave; c&ocirc;ng ngh?»?</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ä?Æ°?»£c tri?»?n khai kh&aacute; Ä??»“ng b?»? v&agrave; hi?»?u qu??£, ph?»?c v?»? c&aacute;c ch?»§ trÆ°Æ?ng, gi??£i  ph&aacute;p l&atilde;nh Ä????o, ch?»? Ä????o ph&aacute;t tri?»?n kinh t??? - x&atilde; h?»?i, c?»§ng c?»? qu?»?c ph&ograve;ng -  an ninh, x&acirc;y d?»±ng Ä??£ng v&agrave; h?»? th?»?ng ch&iacute;nh tr?»? c?»§a Ä??£ng b?»? th&agrave;nh ph?»?; h?»?  tr?»£ c&aacute;c doanh nghi?»?p ch?»§ Ä??»?ng h?»?i nh??­p kinh t??? qu?»?c t???. Ti?»m l?»±c khoa  h?»c v&agrave; c&ocirc;ng ngh?»? Ä?Æ°?»£c tÄ?ng cÆ°?»ng; ph&aacute;t tri?»?n Ä??»?i ngÅ© c&aacute;n b?»? khoa h?»c v&agrave;  c&ocirc;ng ngh?»? <em>(T?»?ng s?»? c&aacute;n b?»? c&oacute; tr&igrave;nh Ä??»? Ä????i h?»c, th???c s?»¹, ti???n s?»¹ (nÄ?m  2009) l&agrave; 23.122 (trong Ä?&oacute;: th???c s?»¹ v&agrave; ti???n s?»¹: 1.352); tÄ?ng so v?»?i nÄ?m  2005 l&agrave; 3.828 ngÆ°?»i (trong Ä?&oacute; th???c s?»¹, ti???n s?»¹ tÄ?ng 407 ngÆ°?»i).</em></span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-S?»± nghi?»?p y t???, chÄ?m s&oacute;c s?»©c kho??» nh&acirc;n d&acirc;n</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> c&oacute; chuy?»?n bi???n ti???n b?»?. Ph&ograve;ng, ch?»?ng, d??­p t???t k?»?p th?»i c&aacute;c lo???i d?»?ch  b?»?nh. Ch&uacute; tr?»ng Ä???§u tÆ°, ?»©ng d?»?ng m?»?t s?»? k?»¹ thu??­t y t??? ti&ecirc;n ti???n. Y t??? cÆ?  s?»? Ä?Æ°?»£c quan t&acirc;m, cÆ? b??£n Ä????t chu??©n qu?»?c gia. Th?»±c hi?»?n x&atilde; h?»?i ho&aacute;, c&ocirc;ng  b??±ng trong kh&aacute;m, ch?»?a b?»?nh Ä????t k???t qu??£ t&iacute;ch c?»±c. Th&agrave;nh ph?»? Ä?&atilde; ti???p c??­n  m?»©c sinh thay th???, t?»· l?»? ph&aacute;t tri?»?n d&acirc;n s?»? t?»± nhi&ecirc;n duy tr&igrave; dÆ°?»?i 1%;  ch???t lÆ°?»£ng d&acirc;n s?»? Ä?Æ°?»£c n&acirc;ng l&ecirc;n. C&ocirc;ng t&aacute;c gia Ä?&igrave;nh v&agrave; tr??» em ti???p t?»?c  Ä?Æ°?»£c quan t&acirc;m, Ä????t Ä?Æ°?»£c nh?»?ng k???t qu??£ r&otilde; n&eacute;t.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Phong tr&agrave;o th?»? d?»?c th?»? thao</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> qu??§n ch&uacute;ng ph&aacute;t tri?»?n, thu h&uacute;t 25,5% d&acirc;n s?»? thÆ°?»ng xuy&ecirc;n tham gia  luy?»?n. Ti???p t?»?c gi?»? v?»?ng l&agrave; m?»?t trong nh?»?ng trung t&acirc;m th?»? thao m???nh t?»?p  Ä???§u c??£ nÆ°?»?c v?» th?»? thao th&agrave;nh t&iacute;ch cao. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-Th?»±c hi?»?n ch&iacute;nh s&aacute;ch x&atilde; h?»?i, gi??£i quy???t v???n Ä??» b?»©c x&uacute;c v&agrave; th?»±c hi?»?n c&ocirc;ng b??±ng x&atilde; h?»?i</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ä?Æ°?»£c quan t&acirc;m th?»±c hi?»?n, c&oacute; ti???n b?»? r&otilde; tr&ecirc;n nhi?»u m??·t. T???o vi?»?c l&agrave;m m?»?i  cho ngÆ°?»i lao Ä??»?ng b&igrave;nh qu&acirc;n Ä????t 4,46 v???n lÆ°?»£t ngÆ°?»i/nÄ?m. Th?»±c hi?»?n t?»?t  c&ocirc;ng t&aacute;c chÄ?m s&oacute;c thÆ°Æ?ng binh, b?»?nh binh, gia Ä?&igrave;nh li?»?t s?»¹ v&agrave; ngÆ°?»i c&oacute;  c&ocirc;ng. Tri?»?n khai k?»?p th?»i c&aacute;c cÆ? ch???, ch&iacute;nh s&aacute;ch an sinh x&atilde; h?»?i c?»§a Nh&agrave;  nÆ°?»?c v&agrave; th&agrave;nh ph?»?. ChÆ°Æ?ng tr&igrave;nh gi??£m ngh&egrave;o Ä????t hi?»?u qu??£ cao, s?»? h?»? ngh&egrave;o  gi??£m c&ograve;n 3,86% (theo chu??©n ngh&egrave;o giai Ä?o???n 2006-2010). C&ocirc;ng t&aacute;c ph&ograve;ng,  ch?»?ng c&aacute;c t?»? n???n x&atilde; h?»?i ti???p t?»?c Ä?Æ°?»£c tÄ?ng cÆ°?»ng.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">3-  Qu?»?c ph&ograve;ng-an ninh Ä?Æ°?»£c c?»§ng c?»? v&agrave; tÄ?ng cÆ°?»ng, an ninh ch&iacute;nh tr?»?, tr??­t  t?»± an to&agrave;n x&atilde; h?»?i ?»?n Ä??»?nh v&agrave; gi?»? v?»?ng. H?»? th?»?ng ch&iacute;nh tr?»? Ä?Æ°?»£c</span></strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> <strong>x&acirc;y d?»±ng v?»?ng ch???c, ho???t Ä??»?ng c&oacute; hi?»?u qu??£.</strong></span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">D&acirc;n  ch?»§ x&atilde; h?»?i ch?»§ nghÄ©a v&agrave; s?»©c m???nh kh?»?i Ä????i Ä?o&agrave;n k???t to&agrave;n d&acirc;n ti???p t?»?c  Ä?Æ°?»£c c?»§ng c?»?, m?»? r?»?ng, ph&aacute;t huy; ho???t Ä??»?ng c?»§a M??·t tr??­n T?»? qu?»?c v&agrave; c&aacute;c  Ä?o&agrave;n th?»? nh&acirc;n d&acirc;n, c&aacute;c t?»? ch?»©c x&atilde; h?»?i Ä?Æ°?»£c Ä??»?i m?»?i, n&acirc;ng cao ch???t lÆ°?»£ng  v&agrave; hi?»?u qu??£ ho???t Ä??»?ng. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&aacute;c  c???p ch&iacute;nh quy?»n dÆ°?»£c c?»§ng c?»?, n&acirc;ng cao hi?»?u l?»±c, hi?»?u qu??£ v&agrave; Ä???©y m???nh  c??£i c&aacute;ch h&agrave;nh ch&iacute;nh, c??£i c&aacute;ch tÆ° ph&aacute;p Ä?Æ°?»£c ch&uacute; tr?»ng Ä???©y m???nh, Ä????t Ä?Æ°?»£c  nh?»?ng k???t qu??£ kh&aacute; to&agrave;n di?»?n v&agrave; r&otilde; n&eacute;t. Ch?»§ trÆ°Æ?ng th&iacute; Ä?i?»?m kh&ocirc;ng t?»? ch?»©c  h?»?i Ä??»“ng nh&acirc;n d&acirc;n t???i 7 qu??­n, 7 huy?»?n v&agrave; 70 phÆ°?»ng Ä?Æ°?»£c ch?»? Ä????o th?»±c  hi?»?n Ä???£m b??£o nghi&ecirc;m t&uacute;c, Ä?&uacute;ng quy Ä??»?nh, ?»?n Ä??»?nh v&agrave; ph&aacute;t tri?»?n. Ä??©y m???nh  c??£i c&aacute;ch h&agrave;nh ch&iacute;nh kh&aacute; Ä??»“ng b?»? tr&ecirc;n c&aacute;c lÄ©nh v?»±c, Ä????t k???t qu??£ r&otilde; n&eacute;t,  nh???t l&agrave; trong th?»±c hi?»?n c??£i c&aacute;ch th?»§ t?»?c h&agrave;nh ch&iacute;nh.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">T?»?  ch?»©c, b?»? m&aacute;y c&aacute;c s?»?, ng&agrave;nh, qu??­n, huy?»?n Ä?Æ°?»£c ki?»?n to&agrave;n theo Ä?&uacute;ng ch?»?  Ä????o c?»§a Ch&iacute;nh ph?»§. Ch&uacute; tr?»ng Ä?&agrave;o t???o, b?»“i dÆ°?»?ng Ä??»?i ngÅ© c&aacute;n b?»?, c&ocirc;ng  ch?»©c. C??£i c&aacute;ch t&agrave;i ch&iacute;nh c&ocirc;ng Ä????t k???t qu??£ kh&aacute; t&iacute;ch c?»±c. Coi tr?»ng ?»©ng  d?»?ng c&ocirc;ng ngh?»? th&ocirc;ng tin, &aacute;p d?»?ng ISO h&agrave;nh ch&iacute;nh, thi???t th?»±c c??£i ti???n  phÆ°Æ?ng ph&aacute;p, l?» l?»?i l&agrave;m vi?»?c, n&acirc;ng cao ch???t lÆ°?»£ng, hi?»?u qu??£ c&ocirc;ng t&aacute;c.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">T??­p  trung l&atilde;nh Ä????o, ch?»? Ä????o t&iacute;ch c?»±c, Ä??»“ng b?»?, th?»±c ch???t, c&oacute; chi?»u s&acirc;u  chi???n lÆ°?»£c c??£i c&aacute;ch tÆ° ph&aacute;p Ä????n nÄ?m 2020, Ä????t Ä?Æ°?»£c k???t qu??£ bÆ°?»?c Ä???§u quan  tr?»ng. <span style=\"letter-spacing: 0.1pt;\">C&ocirc;ng t&aacute;c ph&ograve;ng, ch?»?ng tham nhÅ©ng, l&atilde;ng ph&iacute; Ä?Æ°?»£c quan t&acirc;m ch?»? Ä????o, tri?»?n khai Ä??»“ng b?»? c&aacute;c</span> nhi?»?m v?»?, gi??£i ph&aacute;p ph&ograve;ng ng?»«a, ph&aacute;t hi?»?n, x?»­ l&yacute; tham nhÅ©ng v?»?i Ä???©y  m???nh c??£i c&aacute;ch h&agrave;nh ch&iacute;nh v&agrave; th?»±c hi?»?n d&acirc;n ch?»§ ?»? cÆ? s?»?, g&oacute;p ph??§n h???n ch???  c&aacute;c v?»? vi?»?c tham nhÅ©ng m?»?i ph&aacute;t sinh; ch?»? Ä????o gi??£i quy???t v?» cÆ? b??£n c&aacute;c  v?»? vi?»?c tham nhÅ©ng t?»“n Ä??»ng<span style=\"letter-spacing: 0.1pt;\">. </span><span style=\"letter-spacing: 0.1pt;\">Nh??­n th?»©c v&agrave; t&iacute;nh ti?»n phong, gÆ°Æ?ng m??«u c?»§a c&aacute;n b?»?, Ä???£ng vi&ecirc;n trong Ä????u tranh ph&ograve;ng, ch?»?ng tham nhÅ©ng Ä?Æ°?»£c n&acirc;ng l&ecirc;n.</span></span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">4-  C&ocirc;ng t&aacute;c x&acirc;y d?»±ng Ä??£ng Ä?Æ°?»£c Th&agrave;nh u?»· v&agrave; c&aacute;c c???p u?»· t??­p trung l&atilde;nh Ä????o,  ch?»? Ä????o, Ä?i v&agrave;o chi?»u s&acirc;u, ho&agrave;n th&agrave;nh to&agrave;n di?»?n c&aacute;c nhi?»?m v?»? th?»? hi?»?n s?»±  Ä??»?i m?»?i v&agrave; hi?»?u qu??£ Ä?Æ°?»£c n&acirc;ng l&ecirc;n r&otilde; n&eacute;t tr&ecirc;n nhi?»u m??·t, g&oacute;p ph??§n tr?»±c  ti???p n&acirc;ng cao nÄ?ng l?»±c l&atilde;nh Ä????o, s?»©c chi???n Ä????u c?»§a to&agrave;n Ä??£ng b?»?</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- C&ocirc;ng t&aacute;c tÆ° tÆ°?»?ng</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> ti???p t?»?c Ä?Æ°?»£c Ä??»?i m?»?i, tri?»?n khai t&iacute;ch c?»±c, thÆ°?»ng xuy&ecirc;n v&agrave; c&oacute; hi?»?u  qu??£. Th&agrave;nh u?»·, c&aacute;c c???p u?»· t??­p trung cao ch?»? Ä????o th?»±c hi?»?n Cu?»?c v??­n Ä??»?ng  &ldquo;H?»c t??­p v&agrave; l&agrave;m theo t???m gÆ°Æ?ng Ä????o Ä??»©c H?»“ Ch&iacute; Minh&rdquo;, Ä?&atilde; Ä????t Ä?Æ°?»£c nh?»?ng  k???t qu??£ bÆ°?»?c Ä???§u c&oacute; &yacute; nghÄ©a quan tr?»ng v?» x&acirc;y d?»±ng n?»n t??£ng Ä????o Ä??»©c x&atilde;  h?»?i, kh???c ph?»?c v&agrave; Ä???©y l&ugrave;i m?»?t bÆ°?»?c t&igrave;nh tr???ng suy tho&aacute;i ch&iacute;nh tr?»? tÆ°  tÆ°?»?ng, Ä????o Ä??»©c, l?»?i s?»?ng trong m?»?t b?»? ph??­n c&aacute;n b?»?, Ä???£ng vi&ecirc;n. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Nh&igrave;n  chung, tÆ° tÆ°?»?ng c&aacute;n b?»?, Ä???£ng vi&ecirc;n v&agrave; nh&acirc;n d&acirc;n ph???n kh?»?i, tin tÆ°?»?ng v&agrave;o  nh?»?ng th&agrave;nh t?»±u c?»§a Ä????t nÆ°?»?c v&agrave; th&agrave;nh ph?»? Ä????t Ä?Æ°?»£c c&ugrave;ng tri?»?n v?»ng, th?»i  cÆ? ph&aacute;t tri?»?n m?»?i trong nh?»?ng nÄ?m ti???p theo. S?»± Ä??»“ng thu??­n v?» nh??­n th?»©c  ch&iacute;nh tr?»? tÆ° tÆ°?»?ng, ni?»m tin v&agrave;o s?»± l&atilde;nh Ä????o c?»§a Ä??£ng ti???p t?»?c Ä?Æ°?»£c  c?»§ng c?»? v&agrave; n&acirc;ng cao.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">- <em>C&ocirc;ng t&aacute;c x&acirc;y d?»±ng, c?»§ng c?»? t?»? ch?»©c Ä???£ng v&agrave; c&ocirc;ng t&aacute;c Ä???£ng vi&ecirc;n</em> thÆ°?»ng xuy&ecirc;n Ä?Æ°?»£c coi tr?»ng, tri?»?n khai kh&aacute; to&agrave;n di?»?n, ch???t lÆ°?»£ng, hi?»?u  qu??£ Ä?Æ°?»£c n&acirc;ng l&ecirc;n. N&acirc;ng cao ch???t lÆ°?»£ng sinh ho???t chi b?»? v?»?i nh?»?ng c&aacute;ch  l&agrave;m Ä??»?i m?»?i, s&aacute;ng t???o, c&oacute; chi?»u s&acirc;u, Ä????t hi?»?u qu??£ r&otilde; n&eacute;t. T?»· l?»? t?»? ch?»©c  cÆ? s?»? Ä???£ng trong s???ch v?»?ng m???nh Ä????t 76,7%, t?»? ch?»©c cÆ? s?»? Ä???£ng y???u k&eacute;m  Ä?Æ°?»£c kh???c ph?»?c v?» cÆ? b??£n, gi??£m t?»« 1,35% Ä???§u nhi?»?m k?»³ xu?»?ng c&ograve;n 0,32%.  C&ocirc;ng t&aacute;c ph&aacute;t tri?»?n, qu??£n l&yacute; v&agrave; n&acirc;ng cao ch???t lÆ°?»£ng Ä???£ng vi&ecirc;n c&oacute; chuy?»?n  bi???n ti???n b?»?. Ä?»?i ngÅ© Ä???£ng vi&ecirc;n m?»?i Ä?Æ°?»£c k???t n???p Ä???£m b??£o v?» s?»? lÆ°?»£ng, cÆ?  c???u, tr??» h&oacute;a, tr&igrave;nh Ä??»? Ä?Æ°?»£c n&acirc;ng cao. Trong 5 nÄ?m k???t n???p Ä?Æ°?»£c 16.867  Ä???£ng vi&ecirc;n (Ä????t ch?»? ti&ecirc;u Ä???i h?»?i XIII). C&ocirc;ng t&aacute;c b??£o v?»? ch&iacute;nh tr?»? n?»?i b?»?  Ä?Æ°?»£c tÄ?ng cÆ°?»ng,...</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&ocirc;ng  t&aacute;c c&aacute;n b?»? Ä?Æ°?»£c tri?»?n khai kh&aacute; Ä??»“ng b?»?, c&oacute; Ä??»?i m?»?i. C&ocirc;ng t&aacute;c Ä?&agrave;o t???o,  b?»“i dÆ°?»?ng c&aacute;n b?»? Ä?Æ°?»£c ch&uacute; tr?»ng. Vi?»?c b?»? nhi?»?m, b?»? nhi?»?m l???i c&aacute;n b?»? v&agrave;  gi?»?i thi?»?u c&aacute;n b?»? ?»©ng c?»­ Ä?Æ°?»£c th?»±c hi?»?n nghi&ecirc;m t&uacute;c, Ä?&uacute;ng quy tr&igrave;nh, c&ocirc;ng  khai, d&acirc;n ch?»§. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">-C&ocirc;ng t&aacute;c ki?»?m tra, gi&aacute;m s&aacute;t</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\"> Ä?Æ°?»£c tÄ?ng cÆ°?»ng, th?»±c hi?»?n nghi&ecirc;m t&uacute;c, c&oacute; tr?»ng t&acirc;m, tr?»ng Ä?i?»?m. U?»· ban  ki?»?m tra c???p u?»· c&aacute;c c???p Ä?Æ°?»£c ki?»?n to&agrave;n, n&acirc;ng cao v?» ch???t lÆ°?»£ng, t?»? ch?»©c  th?»±c hi?»?n nghi&ecirc;m t&uacute;c, c&oacute; hi?»?u qu??£ c&aacute;c nhi?»?m v?»? ki?»?m tra, gi&aacute;m s&aacute;t theo  quy Ä??»?nh c?»§a Äi?»u l?»? Ä??£ng. T?»« nÄ?m 2006 Ä????n h???t qu&yacute; I/2010: Ki?»?m tra khi  c&oacute; d???u hi?»?u vi ph???m 482 Ä???£ng vi&ecirc;n v&agrave; 88 t?»? ch?»©c Ä???£ng; thi h&agrave;nh k?»· lu??­t  1.017 Ä???£ng vi&ecirc;n v&agrave; 19 t?»? ch?»©c Ä???£ng.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: -0.2pt;\">- C&ocirc;ng t&aacute;c d&acirc;n v??­n</span></em><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\'; letter-spacing: -0.2pt;\"> Ä?Æ°?»£c tÄ?ng cÆ°?»ng, thi???t th?»±c c?»§ng c?»? m?»?i quan h?»? m??­t thi???t gi?»?a Ä??£ng v&agrave;  nh&acirc;n d&acirc;n. Ä??©y m???nh x&acirc;y d?»±ng th?»±c hi?»?n c&aacute;c quy ch??? d&acirc;n ch?»§ ?»? cÆ? s?»? v&agrave;  Ph&aacute;p l?»?nh th?»±c hi?»?n d&acirc;n ch?»§ ?»? x&atilde;, phÆ°?»ng, th?»? tr???n. Ho???t Ä??»?ng gi&aacute;m s&aacute;t  c?»§a M??·t tr??­n T?»? qu?»?c v&agrave; c&aacute;c Ä?o&agrave;n th?»? nh&acirc;n d&acirc;n Ä?Æ°?»£c tÄ?ng cÆ°?»ng. D&acirc;n ch?»§  tr?»±c ti???p v&agrave; d&acirc;n ch?»§ Ä????i di?»?n Ä?Æ°?»£c ph&aacute;t huy t?»?t hÆ?n. Ch?»§ Ä??»?ng Ä?i s&acirc;u  t?»?ng k???t m&ocirc; h&igrave;nh &ldquo;d&acirc;n v??­n kh&eacute;o&rdquo;. Ph&aacute;t Ä??»?ng phong tr&agrave;o thi Ä?ua v&agrave; Ä???©y  m???nh c&ocirc;ng t&aacute;c d&acirc;n v??­n c?»§a ch&iacute;nh quy?»n c&aacute;c c???p Ä????t hi?»?u qu??£ kh&aacute; r&otilde; n&eacute;t. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">5  nÄ?m qua, Ä??£ng b?»?, qu&acirc;n v&agrave; d&acirc;n th&agrave;nh ph?»? Ä?o&agrave;n k???t, nÄ?ng Ä??»?ng, s&aacute;ng t???o,  n?»? l?»±c, quy???t t&acirc;m cao trong tri?»?n khai th?»±c hi?»?n Ngh?»? quy???t Ä???i h?»?i  XIII.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><strong><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">VI. Kh&aacute;i qu&aacute;t 25 nÄ?m H??£i Ph&ograve;ng th?»±c hi?»?n c&ocirc;ng cu?»?c Ä?»?i m?»?i (1986-2010):</span></strong></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Qua 25 nÄ?m th?»±c hi?»?n Ä?Æ°?»ng l?»?i Ä??»?i m?»?i c?»§a Ä??£ng, 20 nÄ?m th?»±c hi?»?n CÆ°Æ?ng lÄ©nh nÄ?m 1991 c?»§a Ä??£ng, <span style=\"letter-spacing: -0.2pt;\">Ä??£ng  b?»?, qu&acirc;n v&agrave; d&acirc;n th&agrave;nh ph?»? Ä?&atilde; v?»?ng tin v&agrave;o s?»± l&atilde;nh Ä????o c?»§a Ä??£ng, ki&ecirc;n  Ä??»?nh m?»?c ti&ecirc;u Ä??»?c l??­p d&acirc;n t?»?c g???n li?»n v?»?i ch?»§ nghÄ©a x&atilde; h?»?i v&agrave; con Ä?Æ°?»ng  Ä?i l&ecirc;n ch?»§ nghÄ©a x&atilde; h?»?i ?»? nÆ°?»?c ta. Qu&aacute;n tri?»?t s&acirc;u s???c Ä?Æ°?»ng l?»?i Ä??»?i m?»?i  v&agrave; CÆ°Æ?ng lÄ©nh c?»§a Ä??£ng, Ä??£ng b?»?, qu&acirc;n v&agrave; d&acirc;n th&agrave;nh ph?»? Ä?&atilde; nh??­n th?»©c  ng&agrave;y c&agrave;ng Ä???§y Ä??»§ hÆ?n v?»? th???, ti?»m nÄ?ng, l?»£i th???, Ä??» ra chi???n lÆ°?»£c ph&aacute;t  tri?»?n th&agrave;nh ph?»? trong th?»i k?»³ Ä???©y m???nh c&ocirc;ng nghi?»?p h&oacute;a, hi?»?n Ä????i h&oacute;a m?»?t  c&aacute;ch Ä?&uacute;ng Ä????n v&agrave; c&oacute; quy???t t&acirc;m cao, ch?»§ Ä??»?ng, s&aacute;ng t???o trong t?»? ch?»©c  th?»±c hi?»?n, gi&agrave;nh Ä?Æ°?»£c nh?»?ng th&agrave;nh t?»±u to l?»?n, to&agrave;n di?»?n, t???o s?»± bi???n Ä??»?i  s&acirc;u s???c, cÆ? b??£n tr&ecirc;n m?»i m??·t c?»§a Ä??»i s?»?ng x&atilde; h?»?i th&agrave;nh ph?»?, g&oacute;p ph??§n  c&ugrave;ng c??£ nÆ°?»?c ra kh?»i t&igrave;nh tr???ng kh?»§ng ho??£ng kinh t??? v&agrave; k&eacute;m ph&aacute;t tri?»?n.</span> </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Trong  10 nÄ?m th?»±c hi?»?n chi???n lÆ°?»£c ph&aacute;t tri?»?n kinh t???-x&atilde; h?»?i c?»§a Ä????t nÆ°?»?c  2001-2010, kinh t??? th&agrave;nh ph?»? ?»?n Ä??»?nh, tÄ?ng trÆ°?»?ng kh&aacute; nhanh v&agrave; to&agrave;n  di?»?n; quy m&ocirc; kinh t??? Ä?Æ°?»£c m?»? r?»?ng, nÄ?ng l?»±c s??£n xu???t-kinh doanh Ä?Æ°?»£c  n&acirc;ng l&ecirc;n, Ä???·c bi?»?t l&agrave; n?»?i l?»±c. GDP tÄ?ng li&ecirc;n t?»?c v?»?i t?»?c Ä??»? b&igrave;nh qu&acirc;n  11,1%/nÄ?m; cÆ? c???u kinh t??? chuy?»?n d?»?ch Ä?&uacute;ng hÆ°?»?ng c&ocirc;ng nghi?»?p ho&aacute;, hi?»?n  Ä????i ho&aacute;, t?»· tr?»ng 2 nh&oacute;m ng&agrave;nh c&ocirc;ng nghi?»?p-d?»?ch v?»? tÄ?ng t?»« 82,22% nÄ?m  2000 l&ecirc;n 90% nÄ?m 2010 (t?»?c Ä??»? tÄ?ng b&igrave;nh qu&acirc;n 12%/nÄ?m); th?»? trÆ°?»ng xu???t  kh??©u Ä?Æ°?»£c m?»? r?»?ng, tÄ?ng nhanh v?» gi&aacute; tr?»?, ch?»§ng lo???i s??£n ph??©m v?»?i kim  ng???ch xu???t kh??©u tÄ?ng b&igrave;nh qu&acirc;n 20%/nÄ?m (nÄ?m 2010 g???p tr&ecirc;n 6 l??§n nÄ?m  2000). Thu h&uacute;t v?»?n Ä???§u tÆ° ph&aacute;t tri?»?n tÄ?ng nhanh, b&igrave;nh qu&acirc;n 19,1%/nÄ?m.  NÄ?ng l?»±c s??£n xu???t c?»§a nhi?»u ng&agrave;nh kinh t??? tÄ?ng m???nh. Thu ng&acirc;n s&aacute;ch g???p  hÆ?n 6 l??§n, Ä????t t?»?c Ä??»? tÄ?ng trÆ°?»?ng b&igrave;nh qu&acirc;n 20,23%/nÄ?m, trong Ä?&oacute; thu n?»?i  Ä??»?a tÄ?ng b&igrave;nh qu&acirc;n 18,83%/nÄ?m. T?»· l?»? Ä?&ocirc; th?»? ho&aacute; tÄ?ng nhanh (d&acirc;n s?»? Ä?&ocirc;  th?»? t?»« 35% nÄ?m 2000 l&ecirc;n 48% nÄ?m 2010), l??­p th&ecirc;m 2 qu??­n m?»?i v&agrave; chuy?»?n 1  th?»? x&atilde; th&agrave;nh qu??­n; quy m&ocirc; v&agrave; di?»?n m???o Ä?&ocirc; th?»? ph&aacute;t tri?»?n r&otilde; n&eacute;t. Qu&aacute;  tr&igrave;nh c&ocirc;ng nghi?»?p ho&aacute;, hi?»?n Ä????i ho&aacute; n&ocirc;ng nghi?»?p, n&ocirc;ng th&ocirc;n c&oacute; nhi?»u  chuy?»?n bi???n. CÆ? s?»? h??? t??§ng k?»¹ thu??­t v&agrave; x&atilde; h?»?i, nh???t l&agrave; h??? t??§ng giao  th&ocirc;ng, c??£ng bi?»?n Ä?Æ°?»£c ch&uacute; tr?»ng Ä???§u tÆ°, theo hÆ°?»?ng hi?»?n Ä????i, t???o n?»n  t??£ng Ä???©y nhanh qu&aacute; tr&igrave;nh ph&aacute;t tri?»?n H??£i Ph&ograve;ng tr?»? th&agrave;nh th&agrave;nh ph?»? c??£ng,  c&ocirc;ng nghi?»?p vÄ?n minh hi?»?n Ä????i. Quan h?»? s??£n xu???t ph&aacute;t tri?»?n v&agrave; ng&agrave;y c&agrave;ng  ph&ugrave; h?»£p hÆ?n, t???o Ä?i?»u ki?»?n ph&aacute;t tri?»?n l?»±c lÆ°?»£ng s??£n xu???t. C&aacute;c th?»? ch???,  cÆ? ch???, ch&iacute;nh s&aacute;ch c?»§a Nh&agrave; nÆ°?»?c Ä?&atilde; Ä?Æ°?»£c ch?»§ Ä??»?ng, t&iacute;ch c?»±c tri?»?n khai &aacute;p  d?»?ng, Ä????t hi?»?u qu??£ r&otilde;. LÄ©nh v?»±c vÄ?n h&oacute;a, x&atilde; h?»?i Ä????t Ä?Æ°?»£c nhi?»u th&agrave;nh  t?»±u quan tr?»ng. Khoa h?»c c&ocirc;ng ngh?»? bÆ°?»?c Ä???§u g???n v?»?i th?»±c t??? s??£n xu???t,  Ä??»i s?»?ng x&atilde; h?»?i, ph&aacute;t huy hi?»?u qu??£ t&iacute;ch c?»±c. C&ocirc;ng t&aacute;c Ä??»?i ngo???i v&agrave; m?»?  r?»?ng kh&ocirc;ng gian kinh t??? Ä?Æ°?»£c Ä???©y m???nh. C??£i c&aacute;ch h&agrave;nh ch&iacute;nh Ä?Æ°?»£c t??­p  trung cao, nh???t l&agrave; c??£i c&aacute;ch th?»§ t?»?c h&agrave;nh ch&iacute;nh. Nh??­n th?»©c c?»§a nh&acirc;n d&acirc;n  v?» b??£o v?»? m&ocirc;i trÆ°?»ng ng&agrave;y c&agrave;ng Ä?Æ°?»£c n&acirc;ng l&ecirc;n. T&igrave;nh h&igrave;nh ch&iacute;nh tr?»?, tr??­t  t?»± an to&agrave;n x&atilde; h?»?i Ä?Æ°?»£c gi?»? v?»?ng, qu?»?c ph&ograve;ng, an ninh Ä?Æ°?»£c b??£o Ä???£m. Ä???i  Ä?o&agrave;n k???t d&acirc;n t?»?c Ä?Æ°?»£c tÄ?ng cÆ°?»ng. D&acirc;n ch?»§ x&atilde; h?»?i ch?»§ nghÄ©a Ä?Æ°?»£c ph&aacute;t  huy. Ä?»i s?»?ng v??­t ch???t v&agrave; tinh th??§n c?»§a nh&acirc;n d&acirc;n Ä?Æ°?»£c Ä?Æ°?»£c c??£i thi?»?n r&otilde;  r?»?t; thu nh??­p th?»±c t??? c?»§a ngÆ°?»i d&acirc;n nÄ?m 2010 g???p hÆ?n 5 l??§n so v?»?i nÄ?m  2000; ph&uacute;c l?»£i x&atilde; h?»?i v&agrave; an sinh x&atilde; h?»?i Ä?Æ°?»£c coi tr?»ng v&agrave; t?»«ng bÆ°?»?c m?»?  r?»?ng, t?»· l?»? h?»? ngh&egrave;o gi??£m nhanh. H?»? th?»?ng ch&iacute;nh tr?»? Ä?Æ°?»£c ki?»?n to&agrave;n, Ä??»?i  m?»?i n?»?i dung, phÆ°Æ?ng th?»©c v&agrave; n&acirc;ng cao hi?»?u qu??£ ho???t Ä??»?ng. Ä??£ng b?»? th&agrave;nh  ph?»? trÆ°?»?ng th&agrave;nh c??£ v?» ch&iacute;nh tr?»?, tÆ° tÆ°?»?ng v&agrave; t?»? ch?»©c, nÄ?ng l?»±c, s?»©c  chi???n Ä????u Ä?Æ°?»£c n&acirc;ng cao; nh??­n th?»©c v?» cÆ? h?»?i, th&aacute;ch th?»©c c?»§a Ä????t nÆ°?»?c  cÅ©ng nhÆ° ti?»m nÄ?ng, l?»£i th???, vai tr&ograve; c?»§a th&agrave;nh ph?»? trong s?»± nghi?»?p c&ocirc;ng  nghi?»?p ho&aacute;, hi?»?n Ä????i ho&aacute; Ä????t nÆ°?»?c ng&agrave;y c&agrave;ng r&otilde; v&agrave; Ä???©y Ä??»§ hÆ?n.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Tuy  nhi&ecirc;n, b&ecirc;n c???nh nh?»?ng th&agrave;nh t?»±u Ä????t Ä?Æ°?»£c, th&agrave;nh ph?»? c&ograve;n m?»?t s?»? h???n ch???,  y???u k&eacute;m: Kinh t??? tuy tÄ?ng trÆ°?»?ng nhanh nhÆ°ng chÆ°a b?»n v?»?ng, quy m&ocirc; kinh  t??? c&ograve;n nh?», tÄ?ng trÆ°?»?ng kinh t??? ch?»§ y???u theo chi?»u r?»?ng, nÄ?ng su???t hi?»?u  qu??£ c&ograve;n h???n ch???, chÆ°a tÆ°Æ?ng x?»©ng v?»?i ti?»m nÄ?ng, v?»? tr&iacute;, vai tr&ograve; l&agrave; c?»±c  tÄ?ng trÆ°?»?ng quan tr?»ng c?»§a v&ugrave;ng kinh t??? tr?»ng Ä?i?»?m ph&iacute;a B???c. Ph&aacute;t tri?»?n  v&agrave; qu??£n l&yacute; Ä?&ocirc; th?»? c&ograve;n nhi?»u b???t c??­p; t?»?c Ä??»? ph&aacute;t tri?»?n Ä?&ocirc; th?»?, Ä?&ocirc; th?»?  ho&aacute; n&ocirc;ng th&ocirc;n chÆ°a Ä?&aacute;p ?»©ng y&ecirc;u c??§u. Qu??£n l&yacute; s?»­ d?»?ng <span style=\"letter-spacing: -0.1pt;\">Ä????t Ä?ai c&ograve;n</span> b?»? bu&ocirc;ng l?»ng, g&acirc;y <span style=\"letter-spacing: -0.1pt;\">thi???u s&oacute;t, khuy???t Ä?i?»?m ?»? m?»?t s?»? nÆ?i. </span>H?»?  th?»?ng c&aacute;c gi??£i ph&aacute;p an sinh x&atilde; h?»?i Ä?Æ°?»£c quan t&acirc;m hÆ?n, song k???t qu??£ Ä????t  Ä?Æ°?»£c thi???u v?»?ng ch???c. X&atilde; h?»?i ho&aacute; trong c&aacute;c lÄ©nh v?»±c vÄ?n ho&aacute;-x&atilde; h?»?i ch??­m.  Ch???t lÆ°?»£ng ngu?»“n nh&acirc;n l?»±c chÆ°a cao. T?»? n???n ma tu&yacute;, m???i d&acirc;m, tai n???n  giao th&ocirc;ng c&ograve;n di?»?n bi???n ph?»©c t???p. T&igrave;nh h&igrave;nh an ninh ch&iacute;nh tr?»?, tr??­t t?»±  an to&agrave;n x&atilde; h?»?i ?»? m?»?t s?»? Ä??»?a b&agrave;n tr?»ng Ä?i?»?m v&agrave; khu v?»±c n&ocirc;ng th&ocirc;n, nh???t l&agrave;  khu v?»±c ph??£i th?»±c hi?»?n gi??£i ph&oacute;ng m??·t b??±ng, giao Ä????t Ä??»? tri?»?n khai c&aacute;c  d?»± &aacute;n c&ograve;n ti?»m ??©n y???u t?»? m???t ?»?n Ä??»?nh.Vi?»?c gi??£i quy???t m?»?t s?»? v?»? khi???u  n???i, t?»? c&aacute;o ph?»©c t???p, b?»©c x&uacute;c c&ograve;n ch??­m, k&eacute;o d&agrave;i. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Trong  su?»?t ch??·ng Ä?Æ°?»ng 55 nÄ?m (1955-2010), c&ugrave;ng v?»?i c??£ nÆ°?»?c, Ä??£ng b?»?, ch&iacute;nh  quy?»n, qu&acirc;n d&acirc;n th&agrave;nh ph?»? H??£i Ph&ograve;ng Ä?&atilde; tr??£i qua m?»?t giai Ä?o???n l?»?ch s?»­  h&agrave;o h&ugrave;ng, th?»±c hi?»?n hai nhi?»?m v?»? chi???n lÆ°?»£c: chi???n Ä????u b??£o v?»? Ä??»?c l??­p,  t?»± do v&agrave; x&acirc;y d?»±ng Ch?»§ nghÄ©a x&atilde; h?»?i. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">Ph&aacute;t  huy cao Ä??»? tinh th??§n c&aacute;ch m???ng ti???n c&ocirc;ng, Ä??£ng b?»?, nh&acirc;n d&acirc;n H??£i Ph&ograve;ng  Ä?&atilde; l&agrave;m th???t b???i m?»i &acirc;m mÆ°u th?»§ Ä?o???n c?»§a c&aacute;c th??? l?»±c th&ugrave; Ä??»?ch, mu?»?n bi???n  H??£i Ph&ograve;ng th&agrave;nh m?»?t &ldquo;th&agrave;nh ph?»? ch???t&rdquo; sau khi th?»±c d&acirc;n Ph&aacute;p ph??£i r&uacute;t kh?»i  mi?»n B???c nÆ°?»?c ta; ho??·c mu?»?n bi???n mi?»n B???c Vi?»?t Nam, trong Ä?&oacute; c&oacute; H??£i  Ph&ograve;ng tr?»? v?» &ldquo;th?»i k?»³ Ä??»“ Ä?&aacute;&rdquo; trong chi???n tranh ph&aacute; ho???i hu?»· di?»?t c?»§a Ä????  qu?»?c M?»¹. T?»« trong gian kh?»?, Ä??£ng b?»?, qu&acirc;n d&acirc;n ta Ä?&atilde; chi???n Ä????u b??£o v?»? v&agrave;  x&acirc;y d?»±ng H??£i Ph&ograve;ng t?»« th&agrave;nh ph?»? c??£ng v?»?n b?»? Ä?&aacute;nh ph&aacute; xÆ? x&aacute;c, ti&ecirc;u Ä?i?»u  trong chi???n tranh c?»§a th?»±c d&acirc;n, Ä???? qu?»?c, tr?»? th&agrave;nh th&agrave;nh ph?»? C??£ng hi?»?n  Ä????i, gi&agrave;u Ä???¹p h&ocirc;m nay. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">C&oacute;  Ä?Æ°?»£c nh?»?ng th&agrave;nh t?»±u quan tr?»ng Ä?&oacute;, l&agrave; do 55 nÄ?m qua, Ä??£ng b?»?, ch&iacute;nh  quy?»n qu&acirc;n v&agrave; d&acirc;n th&agrave;nh ph?»? C??£ng H??£i Ph&ograve;ng lu&ocirc;n t&acirc;m ni?»?m l&agrave;m theo Ä?&uacute;ng  Ä?Æ°?»ng l?»?i, quan Ä?i?»?m c?»§a Ä??£ng v&agrave; nh?»?ng l?»i cÄ?n d??·n c?»§a Ch?»§ t?»?ch H?»“ Ch&iacute;  Minh k&iacute;nh y&ecirc;u qua 9 l??§n NgÆ°?»i quan t&acirc;m v?» thÄ?m v&agrave; l&agrave;m vi?»?c t???i H??£i  Ph&ograve;ng. </span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">55  nÄ?m qua, Ä??£ng b?»?, ch&iacute;nh quy?»n qu&acirc;n v&agrave; d&acirc;n th&agrave;nh ph?»? lu&ocirc;n lu&ocirc;n ki&ecirc;n Ä??»?nh  ch?»§ nghÄ©a M&aacute;c-L&ecirc;nin v&agrave; TÆ° tÆ°?»?ng H?»“ Ch&iacute; Minh, nh?»?ng quan Ä?i?»?m Ä?Æ°?»ng l?»?i  c?»§a Ä??£ng, ch&iacute;nh s&aacute;ch ph&aacute;p lu??­t c?»§a Nh&agrave; nÆ°?»?c; n???m ch???c th?»i cÆ?, v??­n d?»?ng  s&aacute;ng t???o v&agrave;o Ä?i?»u ki?»?n c?»? th?»? c?»§a th&agrave;nh ph?»? nh??±m ph&aacute;t huy t?»?i Ä?a ti?»m  nÄ?ng, l?»£i th??? trong s?»± nghi?»?p x&acirc;y d?»±ng v&agrave; b??£o v?»? th&agrave;nh ph?»?. Bi???t tranh  th?»§ cao nh???t s?»± l&atilde;nh Ä????o, ch?»? Ä????o c?»§a B?»? Ch&iacute;nh tr?»?, Ban B&iacute; thÆ°, Ban Ch???p  h&agrave;nh Trung Æ°Æ?ng Ä??£ng, c?»§a Nh&agrave; nÆ°?»?c, Qu?»?c h?»?i, Ch&iacute;nh ph?»§, c&aacute;c b?»?, ban,  ng&agrave;nh, MTTQ v&agrave; c&aacute;c Ä?o&agrave;n th?»? ?»? Trung Æ°Æ?ng v&agrave; s?»± h?»? tr?»£ gi&uacute;p Ä??»? c?»§a c&aacute;c  t?»?nh, th&agrave;nh ph?»? trong c??£ nÆ°?»?c<strong><em>. </em></strong>Kh&ocirc;ng ng?»«ng c?»§ng c?»? v&agrave; ph&aacute;t  huy s?»©c m???nh kh?»?i Ä????i Ä?o&agrave;n k???t to&agrave;n d&acirc;n dÆ°?»?i s?»± l&atilde;nh Ä????o c?»§a Ä??£ng, t&ocirc;n  tr?»ng v&agrave; ph&aacute;t huy quy?»n l&agrave;m ch?»§ c?»§a nh&acirc;n d&acirc;n th&ocirc;ng qua th?»±c hi?»?n Quy ch???  d&acirc;n ch?»§ ?»? cÆ? s?»? v&agrave; vai tr&ograve; c?»§a M??·t tr??­n T?»? qu?»?c v&agrave; c&aacute;c Ä?o&agrave;n th?»? nh&acirc;n  d&acirc;n. ThÆ°?»ng xuy&ecirc;n khÆ?i d??­y v&agrave; ph&aacute;t huy truy?»n th?»?ng c&aacute;ch m???ng, &yacute; th?»©c  l&agrave;m ch?»§, ph??©m ch???t nÄ?ng Ä??»?ng, s&aacute;ng t???o c?»§a ngÆ°?»i H??£i Ph&ograve;ng. Coi tr?»ng  t?»?ng k???t th?»±c ti?»?n Ä??»? c&oacute; ch?»§ trÆ°Æ?ng ph&ugrave; h?»£p, k?»?p th?»i ph&aacute;t hi?»?n nh&acirc;n t?»?  m?»?i, kh???c ph?»?c nh?»?ng y???u k&eacute;m, x&aacute;c Ä??»?nh Ä?Æ°?»£c nhi?»?m v?»? tr?»ng t&acirc;m, kh&acirc;u Ä??»?t  ph&aacute; Ä??»? t???o s?»©c b??­t trong qu&aacute; tr&igrave;nh x&acirc;y d?»±ng v&agrave; ph&aacute;t tri?»?n th&agrave;nh ph?»?.  Kh&ocirc;ng ng?»«ng Ä??»?i m?»?i, n&acirc;ng cao ch???t lÆ°?»£ng ho???t Ä??»?ng c?»§a h?»? th?»?ng ch&iacute;nh  tr?»?, quan t&acirc;m Ä????n Ä?&agrave;o t???o nh&acirc;n l?»±c, ph&aacute;t huy n?»?i l?»±c, thu h&uacute;t nh&acirc;n t&agrave;i  Ä??»? ph&aacute;t tri?»?n th&agrave;nh ph?»?.</span></p>\r\n<p style=\"line-height: 16.5pt; text-align: justify;\"><span style=\"font-size: 10pt; color: black; font-family: \'Arial\',\'sans-serif\';\">K?»·  ni?»?m 55 nÄ?m Ng&agrave;y gi??£i ph&oacute;ng H??£i Ph&ograve;ng (13/5/1955-13/5/2010), m?»?i ngÆ°?»i  d&acirc;n Ä????t C??£ng ch&uacute;ng ta c&oacute; quy?»n t?»± h&agrave;o r??±ng: dÆ°?»?i s?»± l&atilde;nh Ä????o c?»§a Ä??£ng,  Nh&agrave; nÆ°?»?c, Qu?»?c h?»?i, Ch&iacute;nh ph?»§, Ä??£ng b?»?, ch&iacute;nh quy?»n, qu&acirc;n d&acirc;n th&agrave;nh ph?»?  H??£i Ph&ograve;ng Ä?&atilde; g&oacute;p ph??§n x?»©ng Ä?&aacute;ng Ä??»? gi&agrave;nh th???ng l?»£i v??» vang trong cu?»?c  kh&aacute;ng chi???n ch?»?ng M?»¹ c?»©u nÆ°?»?c, ho&agrave;n th&agrave;nh s?»± nghi?»?p gi??£i ph&oacute;ng d&acirc;n t?»?c,  gi&agrave;nh Ä??»?c l??­p v&agrave; th?»?ng nh???t T?»? qu?»?c. Ch&uacute;ng ta cÅ©ng c&oacute; quy?»n t?»± h&agrave;o r??±ng,  ng&agrave;y nay, H??£i Ph&ograve;ng Ä?ang ti???p t?»?c l&agrave; m?»?t trong nh?»?ng Ä??»?a phÆ°Æ?ng Ä?i Ä???§u  trong c&ocirc;ng cu?»?c Ä??»?i m?»?i, c&ugrave;ng c??£ nÆ°?»?c Ä?i l&ecirc;n theo con Ä?Æ°?»ng x&atilde; h?»?i ch?»§  nghÄ©a. V?»?i cÆ? s?»? v??­t ch???t k?»¹ thu??­t v&agrave; quy m&ocirc; kinh t??? ng&agrave;y c&agrave;ng ti???p t?»?c  ph&aacute;t tri?»?n r&otilde; n&eacute;t; cÆ? c???u kinh t??? chuy?»?n d?»?ch t&iacute;ch c?»±c theo hÆ°?»?ng ti&ecirc;n  ti???n; ti?»m nÄ?ng, l?»£i th??? c?»§a th&agrave;nh ph?»? c??£ng Ä?Æ°?»£c khai th&aacute;c, ph&aacute;t huy  to&agrave;n di?»?n v&agrave; hi?»?u qu??£ hÆ?n, v?»? th???, vai tr&ograve; c?»§a th&agrave;nh ph?»? Ä?ang ng&agrave;y c&agrave;ng  Ä?Æ°?»£c n&acirc;ng cao, Ä?&oacute;ng g&oacute;p ng&agrave;y c&agrave;ng l?»?n v&agrave;o s?»± ph&aacute;t tri?»?n chung c?»§a v&ugrave;ng  kinh t??? tr?»ng Ä?i?»?m B???c b?»? v&agrave; c??£ nÆ°?»?c; t???o n?»n t??£ng v?»?ng ch???c Ä??»? H??£i  Ph&ograve;ng t?»± tin ph&aacute;t tri?»?n trong bÆ°?»?c ti???p theo, cÆ? b??£n tr?»? th&agrave;nh th&agrave;nh ph?»?  c&ocirc;ng nghi?»?p vÄ?n minh, hi?»?n Ä????i trÆ°?»?c nÄ?m 2020./.</span></p>\r\n<p>&nbsp;</p>', 20.8614, 106.68, 0, 'SHOW', 'upload/default/zone//1301389635_bg_banner.png', 0, '', 0, 'upload/default/zone//1301389726_bonjour Vietnam.flv', 'upload/default/content/07.2011/HaiPhong.jpg', '', 0);
INSERT INTO `zone` (`id`, `structure_id`, `name_1`, `description_1`, `lat`, `long`, `radius`, `status`, `image_url`, `time`, `map`, `region_id`, `file`, `logo`, `website`, `is_footer`) VALUES
(1, 1000000000000000000, 'To? n Qu?»?c', '<p>Theo truy?»n thuy???t v?» th?»i <a href=\"http://vi.wikipedia.org/wiki/H%E1%BB%93ng_B%C3%A0ng\">H?»“ng B&agrave;ng</a>, c&aacute;ch Ä?&acirc;y hÆ?n 4000 nÄ?m<sup><a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam#cite_note-5\">[6]</a></sup> c&aacute;c t?»?c ngÆ°?»i Vi?»?t c?»? (<a href=\"http://vi.wikipedia.org/wiki/B%C3%A1ch_Vi%E1%BB%87t\">B&aacute;ch Vi?»?t</a>) Ä?&atilde; x&acirc;y d?»±ng n&ecirc;n nh&agrave; nÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/X%C3%ADch_Qu%E1%BB%B7\">X&iacute;ch Qu?»·</a> c&oacute; l&atilde;nh th?»? r?»?ng l?»?n t???i khu v?»±c ng&agrave;y nay l&agrave; mi?»n nam <a title=\"S&ocirc;ng DÆ°Æ?ng T?»­\" href=\"http://vi.wikipedia.org/wiki/S%C3%B4ng_D%C6%B0%C6%A1ng_T%E1%BB%AD\">s&ocirc;ng DÆ°Æ?ng T?»­</a> (<a href=\"http://vi.wikipedia.org/wiki/Trung_Qu%E1%BB%91c\">Trung Qu?»?c</a>)<sup><a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam#cite_note-6\">[7]</a></sup>. T?»?i th??? k?»· 7 trÆ°?»?c c&ocirc;ng nguy&ecirc;n (TCN), ngÆ°?»i <a href=\"http://vi.wikipedia.org/wiki/L%E1%BA%A1c_Vi%E1%BB%87t\">L???c Vi?»?t</a>, m?»?t trong nh?»?ng nh&oacute;m t?»?c Vi?»?t ?»? ph&iacute;a Nam Ä?&atilde; l??­p n&ecirc;n nh&agrave; nÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/V%C4%83n_Lang\">VÄ?n Lang</a> t???i khu v?»±c m&agrave; ng&agrave;y nay l&agrave; <a href=\"http://vi.wikipedia.org/wiki/Mi%E1%BB%81n_B%E1%BA%AFc_Vi%E1%BB%87t_Nam\">mi?»n B???c Vi?»?t Nam</a>, v&agrave; k??? ti???p l&agrave; nh&agrave; nÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/%C3%82u_L%E1%BA%A1c\">&Acirc;u L???c</a> v&agrave;o gi?»?a th??? k?»· 3 trÆ°?»?c c&ocirc;ng nguy&ecirc;n<sup><a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam#cite_note-7\">[8]</a></sup></p>\r\n<p>B???t Ä???§u t?»« th??? k?»· 2 TCN, ngÆ°?»i Vi?»?t ?»? Ä?&acirc;y b?»? c&aacute;c tri?»u Ä????i phong ki???n <a href=\"http://vi.wikipedia.org/wiki/Trung_Qu%E1%BB%91c\">Trung Qu?»?c</a> cai tr?»? trong <a title=\"B???c thu?»?c\" href=\"http://vi.wikipedia.org/wiki/B%E1%BA%AFc_thu%E1%BB%99c\">hÆ?n 1000 nÄ?m</a>. Sau nhi?»u l??§n kh?»?i nghÄ©a kh&ocirc;ng th&agrave;nh c?»§a <a href=\"http://vi.wikipedia.org/wiki/B%C3%A0_Tri%E1%BB%87u\">B&agrave; Tri?»?u</a>, <a title=\"Mai Th&uacute;c Loan\" href=\"http://vi.wikipedia.org/wiki/Mai_Th%C3%BAc_Loan\">Mai Th&uacute;c Loan</a>,...ho??·c ch?»? gi&agrave;nh Ä??»?c l??­p ng???n c?»§a <a href=\"http://vi.wikipedia.org/wiki/Hai_B%C3%A0_Tr%C6%B0ng\">Hai B&agrave; TrÆ°ng</a>, <a title=\"L&yacute; Nam Ä???\" href=\"http://vi.wikipedia.org/wiki/L%C3%BD_Nam_%C4%90%E1%BA%BF\">L&yacute; B&iacute;</a>... Ä????n nÄ?m 905 <a href=\"http://vi.wikipedia.org/wiki/Kh%C3%BAc_Th%E1%BB%ABa_D%E1%BB%A5\">Kh&uacute;c Th?»«a D?»?</a> Ä?&atilde; gi&agrave;nh quy?»n t?»± ch?»§ cho ngÆ°?»i Vi?»?t, v&agrave; Vi?»?t Nam ch&iacute;nh th?»©c gi&agrave;nh Ä?Æ°?»£c Ä??»?c l??­p l&acirc;u d&agrave;i sau tr??­n chi???n l?»?ch s?»­ tr&ecirc;n <a href=\"http://vi.wikipedia.org/wiki/S%C3%B4ng_B%E1%BA%A1ch_%C4%90%E1%BA%B1ng\">s&ocirc;ng B???ch Ä??±ng</a> do <a href=\"http://vi.wikipedia.org/wiki/Ng%C3%B4_Quy%E1%BB%81n\">Ng&ocirc; Quy?»n</a> ch?»? huy trÆ°?»?c Ä?o&agrave;n qu&acirc;n <a href=\"http://vi.wikipedia.org/wiki/Nam_H%C3%A1n\">Nam H&aacute;n</a> nÄ?m 938.</p>\r\n<p>Sau khi gi&agrave;nh Ä?Æ°?»£c Ä??»?c l??­p, t?»« th??? k?»· 10 Ä????n th??? k?»· 14 <a href=\"http://vi.wikipedia.org/wiki/D%C3%A2n_t%E1%BB%99c_Vi%E1%BB%87t_Nam\">d&acirc;n t?»?c Vi?»?t Nam</a> Ä?&atilde; x&acirc;y d?»±ng Ä????t nÆ°?»?c tr&ecirc;n cÆ? s?»? <a href=\"http://vi.wikipedia.org/wiki/Ph%E1%BA%ADt_gi%C3%A1o\">Ph??­t gi&aacute;o</a>, t?»? ch?»©c ch&iacute;nh quy?»n tÆ°Æ?ng t?»± th?»? ch??? ch&iacute;nh tr?»? c?»§a c&aacute;c tri?»u Ä????i <a href=\"http://vi.wikipedia.org/wiki/Trung_Qu%E1%BB%91c\">Trung Qu?»?c</a>, ??£nh hÆ°?»?ng c?»§a <a href=\"http://vi.wikipedia.org/wiki/Nho_gi%C3%A1o\">Nho gi&aacute;o</a> d??§n tÄ?ng l&ecirc;n t?»« th??? k?»· 15. Trong su?»?t th?»i k?»³ phong ki???n, nh?»?ng l??§n ch?»?ng l???i s?»± x&acirc;m lÆ°?»£c b?»?i c&aacute;c tri?»u Ä????i phÆ°Æ?ng B???c c?»§a <a href=\"http://vi.wikipedia.org/wiki/Ng%C6%B0%E1%BB%9Di_H%C3%A1n\">ngÆ°?»i H&aacute;n</a>, <a href=\"http://vi.wikipedia.org/wiki/M%C3%B4ng_C%E1%BB%95\">M&ocirc;ng C?»?</a>, <a title=\"M&atilde;n Thanh\" href=\"http://vi.wikipedia.org/wiki/M%C3%A3n_Thanh\">M&atilde;n Thanh</a> v&agrave; v?»?i nh?»?ng l??§n x&acirc;m chi???m m?»? r?»?ng l&atilde;nh th?»? d??§n xu?»?ng ph&iacute;a nam nÆ?i <a href=\"http://vi.wikipedia.org/wiki/Ng%C6%B0%E1%BB%9Di_Ch%C4%83m\">ngÆ°?»i ChÄ?m</a>, <a href=\"http://vi.wikipedia.org/wiki/Ng%C6%B0%E1%BB%9Di_Khmer\">ngÆ°?»i Khmer</a> sinh s?»?ng, Vi?»?t Nam c&oacute; ranh gi?»?i Ä??»?a l&yacute; g??§n nhÆ° hi?»?n nay v&agrave;o nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1757\">1757</a></p>\r\n<p>Ä???n gi?»?a th??? k?»· 19, c&ugrave;ng v?»?i c&aacute;c nÆ°?»?c ?»? <a href=\"http://vi.wikipedia.org/wiki/%C4%90%C3%B4ng_D%C6%B0%C6%A1ng\">Ä&ocirc;ng DÆ°Æ?ng</a>, Vi?»?t Nam tr?»? th&agrave;nh <a href=\"http://vi.wikipedia.org/wiki/Thu%E1%BB%99c_%C4%91%E1%BB%8Ba\">thu?»?c Ä??»?a</a> c?»§a <a href=\"http://vi.wikipedia.org/wiki/Ph%C3%A1p\">Ph&aacute;p</a>. Trong <a title=\"Th??? chi???n th?»© hai\" href=\"http://vi.wikipedia.org/wiki/Th%E1%BA%BF_chi%E1%BA%BFn_th%E1%BB%A9_hai\">Th??? chi???n th?»© hai</a>, <a title=\"Ä??? qu?»?c Nh??­t\" href=\"http://vi.wikipedia.org/wiki/%C4%90%E1%BA%BF_qu%E1%BB%91c_Nh%E1%BA%ADt\">ph&aacute;t x&iacute;t Nh??­t</a> chi???m Vi?»?t Nam v&agrave; to&agrave;n th?»? Ä&ocirc;ng DÆ°Æ?ng, ngay sau khi hay tin Ä???? qu?»?c Nh??­t Ä???§u h&agrave;ng qu&acirc;n <a title=\"Ä?»“ng Minh\" href=\"http://vi.wikipedia.org/wiki/%C4%90%E1%BB%93ng_Minh\">Ä?»“ng Minh</a>, <a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Minh\">Vi?»?t Minh</a> Ä?&atilde; gi&agrave;nh l???i ch&iacute;nh quy?»n t?»« tay <a title=\"Nh??­t\" href=\"http://vi.wikipedia.org/wiki/Nh%E1%BA%ADt\">Nh??­t</a>. Ng&agrave;y <a href=\"http://vi.wikipedia.org/wiki/2_th%C3%A1ng_9\">2 th&aacute;ng 9</a> nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1945\">1945</a>, <a href=\"http://vi.wikipedia.org/wiki/H%E1%BB%93_Ch%C3%AD_Minh\">H?»“ Ch&iacute; Minh</a> Ä??»c <a title=\"Tuy&ecirc;n ng&ocirc;n Ä?»?c l??­p Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/Tuy%C3%AAn_ng%C3%B4n_%C4%90%E1%BB%99c_l%E1%BA%ADp_Vi%E1%BB%87t_Nam\">Tuy&ecirc;n ng&ocirc;n Ä?»?c l??­p</a> th&agrave;nh l??­p nÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a\">Vi?»?t Nam D&acirc;n ch?»§ C?»?ng h&ograve;a</a>, nh&agrave; nÆ°?»?c t?»± ch?»§ Ä???§u ti&ecirc;n c?»§a nÆ°?»?c Vi?»?t Nam hi?»?n Ä????i.</p>\r\n<p>Sau <a title=\"Th??? chi???n th?»© hai\" href=\"http://vi.wikipedia.org/wiki/Th%E1%BA%BF_chi%E1%BA%BFn_th%E1%BB%A9_hai\">Th??? chi???n th?»© hai</a>, ngÆ°?»i Ph&aacute;p mu?»?n chi???m l???i thu?»?c Ä??»?a Ä&ocirc;ng DÆ°Æ?ng nhÆ°ng v???p ph??£i s?»± ph??£n kh&aacute;ng quy???t li?»?t c?»§a ngÆ°?»i Vi?»?t Nam do l?»±c lÆ°?»£ng <a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Minh\">Vi?»?t Minh</a> l&atilde;nh Ä????o. Sau chi???n th???ng c?»§a Vi?»?t Minh t???i chi???n trÆ°?»ng <a title=\"Tr??­n Äi?»?n Bi&ecirc;n Ph?»§\" href=\"http://vi.wikipedia.org/wiki/Tr%E1%BA%ADn_%C4%90i%E1%BB%87n_Bi%C3%AAn_Ph%E1%BB%A7\">Äi?»?n Bi&ecirc;n Ph?»§</a> ng&agrave;y <a href=\"http://vi.wikipedia.org/wiki/7_th%C3%A1ng_5\">7 th&aacute;ng 5</a> nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1954\">1954</a>, Ph&aacute;p bu?»?c ph??£i r&uacute;t kh?»i Ä&ocirc;ng DÆ°Æ?ng. <a title=\"Hi?»?p Ä??»?nh Gen&egrave;ve\" href=\"http://vi.wikipedia.org/wiki/Hi%E1%BB%87p_%C4%91%E1%BB%8Bnh_Gen%C3%A8ve\">Hi?»?p Ä??»?nh Gen&egrave;ve</a> Ä?Æ°?»£c k&yacute; k???t Ä?&atilde; ch???m d?»©t &aacute;ch Ä?&ocirc; h?»? g??§n m?»?t trÄ?m nÄ?m c?»§a th?»±c d&acirc;n Ph&aacute;p  t???i Vi?»?t Nam, Ä??»“ng th?»i chia nÆ°?»?c Vi?»?t Nam th&agrave;nh hai v&ugrave;ng t??­p k???t qu&acirc;n  s?»± cho <a title=\"Qu&acirc;n Ä?»?i Nh&acirc;n D&acirc;n Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/Qu%C3%A2n_%C4%90%E1%BB%99i_Nh%C3%A2n_D%C3%A2n_Vi%E1%BB%87t_Nam\">Qu&acirc;n Ä?»?i Nh&acirc;n D&acirc;n Vi?»?t Nam</a> ?»? ph&iacute;a B???c v&agrave; qu&acirc;n Ä??»?i <a title=\"Li&ecirc;n Hi?»?p Ph&aacute;p\" href=\"http://vi.wikipedia.org/wiki/Li%C3%AAn_Hi%E1%BB%87p_Ph%C3%A1p\">Li&ecirc;n Hi?»?p Ph&aacute;p</a> ?»? ph&iacute;a Nam, l???y <a href=\"http://vi.wikipedia.org/wiki/V%C4%A9_tuy%E1%BA%BFn_17\">vÄ© tuy???n 17</a> l&agrave;m ranh gi?»?i, d?»± ki???n sau hai nÄ?m s??½ ti???n h&agrave;nh t?»?ng tuy?»?n c?»­ c??£ nÆ°?»?c.</p>\r\n<p>Tuy nhi&ecirc;n, v&igrave; nhi?»u t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i, Ä???·c bi?»?t l&agrave; s?»± can thi?»?p ch&iacute;nh tr?»? c?»§a <a href=\"http://vi.wikipedia.org/wiki/Hoa_K%E1%BB%B3\">Hoa K?»³</a> v&agrave; s?»± b&aacute;c b?» t?»?ng tuy?»?n c?»­ to&agrave;n qu?»?c c?»§a <a title=\"Ch&iacute;nh quy?»n\" href=\"http://vi.wikipedia.org/wiki/Ch%C3%ADnh_quy%E1%BB%81n\">ch&iacute;nh quy?»n</a> <a href=\"http://vi.wikipedia.org/wiki/Ng%C3%B4_%C4%90%C3%ACnh_Di%E1%BB%87m\">Ng&ocirc; Ä&igrave;nh Di?»?m</a> n&ecirc;n trong ho&agrave;n c??£nh l?»?ch s?»­ Ä?&oacute;, hi?»?p Ä??»?nh Gen&egrave;ve Ä?&atilde; kh&ocirc;ng Ä?Æ°?»£c th?»±c thi. NÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_C%E1%BB%99ng_h%C3%B2a\">Vi?»?t Nam C?»?ng h&ograve;a</a>, th&agrave;nh l??­p ?»? <a title=\"Mi?»n Nam Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/Mi%E1%BB%81n_Nam_Vi%E1%BB%87t_Nam\">mi?»n Nam</a>, Ä?Æ°?»£c <a href=\"http://vi.wikipedia.org/wiki/Hoa_K%E1%BB%B3\">Hoa K?»³</a> h??­u thu??«n v&agrave; Ä?Æ°?»£c c&ocirc;ng nh??­n b?»?i nhi?»u qu?»?c gia th&acirc;n <a title=\"M?»¹\" href=\"http://vi.wikipedia.org/wiki/M%E1%BB%B9\">M?»¹</a>, v?»?i m?»?t ch&iacute;nh quy?»n n??±m trong tay nh?»?ng ngÆ°?»i kh&ocirc;ng tham gia chi???n tranh ch?»?ng x&acirc;m lÆ°?»£c ho??·c th??­m ch&iacute; Ä?&atilde; t?»«ng c?»?ng t&aacute;c v?»?i <a href=\"http://vi.wikipedia.org/wiki/Ph%C3%A1p\">Ph&aacute;p</a>. T???i <a title=\"Mi?»n B???c Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/Mi%E1%BB%81n_B%E1%BA%AFc_Vi%E1%BB%87t_Nam\">mi?»n B???c</a>, nÆ°?»?c <a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a\">Vi?»?t Nam D&acirc;n ch?»§ C?»?ng h&ograve;a</a> theo m&ocirc; h&igrave;nh <a title=\"X&atilde; h?»?i ch?»§ nghÄ©a\" href=\"http://vi.wikipedia.org/wiki/X%C3%A3_h%E1%BB%99i_ch%E1%BB%A7_ngh%C4%A9a\">x&atilde; h?»?i ch?»§ nghÄ©a</a>, dÆ°?»?i s?»± l&atilde;nh Ä????o c?»§a <a title=\"Ä??£ng Lao Ä?»?ng Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/%C4%90%E1%BA%A3ng_Lao_%C4%90%E1%BB%99ng_Vi%E1%BB%87t_Nam\">Ä??£ng Lao Ä?»?ng Vi?»?t Nam</a> Ä?Æ°?»£c <a href=\"http://vi.wikipedia.org/wiki/Li%C3%AAn_X%C3%B4\">Li&ecirc;n X&ocirc;</a>, <a href=\"http://vi.wikipedia.org/wiki/Trung_Qu%E1%BB%91c\">Trung Qu?»?c</a> h??­u thu??«n v&agrave; Ä?Æ°?»£c c&aacute;c nÆ°?»?c trong <a title=\"Kh?»?i x&atilde; h?»?i ch?»§ nghÄ©a\" href=\"http://vi.wikipedia.org/wiki/Kh%E1%BB%91i_x%C3%A3_h%E1%BB%99i_ch%E1%BB%A7_ngh%C4%A9a\">kh?»?i x&atilde; h?»?i ch?»§ nghÄ©a</a> kh&aacute;c c&ocirc;ng nh??­n v&agrave; gi&uacute;p Ä??»?.</p>\r\n<p>NÄ?m 1960, <a title=\"M??·t Tr??­n D&acirc;n T?»?c Gi??£i Ph&oacute;ng Mi?»n Nam Vi?»?t Nam\" href=\"http://vi.wikipedia.org/wiki/M%E1%BA%B7t_Tr%E1%BA%ADn_D%C3%A2n_T%E1%BB%99c_Gi%E1%BA%A3i_Ph%C3%B3ng_Mi%E1%BB%81n_Nam_Vi%E1%BB%87t_Nam\">M??·t Tr??­n D&acirc;n T?»?c Gi??£i Ph&oacute;ng Mi?»n Nam Vi?»?t Nam</a> Ä?Æ°?»£c th&agrave;nh l??­p t?»« nh?»?ng ngÆ°?»i <a title=\"Kh&aacute;ng chi???n ch?»?ng Ph&aacute;p\" href=\"http://vi.wikipedia.org/wiki/Kh%C3%A1ng_chi%E1%BA%BFn_ch%E1%BB%91ng_Ph%C3%A1p\">kh&aacute;ng chi???n ch?»?ng Ph&aacute;p</a> cÅ©, xung Ä??»?t ?»? mi?»n Nam Vi?»?t Nam d??«n Ä????n m?»?t cu?»?c chi???n tranh k&eacute;o d&agrave;i su?»?t g??§n hai th??­p k?»·. NÄ?m <a href=\"http://vi.wikipedia.org/wiki/1964\">1964</a>,  Hoa K?»³ ch&iacute;nh th?»©c can thi?»?p qu&acirc;n s?»±, Ä?Æ°a qu&acirc;n M?»¹ v&agrave;o chi???n Ä????u tr?»±c  ti???p t???i chi???n trÆ°?»ng Nam Vi?»?t Nam v&agrave; th?»±c hi?»?n c&aacute;c Ä??»£t n&eacute;m <a href=\"http://vi.wikipedia.org/wiki/Bom\">bom</a> v&agrave;o B???c Vi?»?t Nam, Ä???·c bi?»?t c&oacute; s?»­ d?»?ng <a href=\"http://vi.wikipedia.org/wiki/M%C3%A1y_bay\">m&aacute;y bay</a> <a title=\"B-52\" href=\"http://vi.wikipedia.org/wiki/B-52\">B-52</a> v&agrave;o nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1972\">1972</a>. Ä???n th&aacute;ng 1 nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1973\">1973</a>,  sau nh?»?ng t?»?n th???t vÆ°?»£t ngÆ°?»?ng ch?»?u Ä??»±ng tr&ecirc;n chi???n trÆ°?»ng Vi?»?t Nam,  c&ugrave;ng v?»?i nh?»?ng kh&oacute; khÄ?n tr&ecirc;n ch&iacute;nh trÆ°?»ng M?»¹ c?»?ng v?»?i t&aacute;c Ä??»?ng c?»§a phong  tr&agrave;o ph??£n chi???n trong nÆ°?»?c v&agrave; tr&ecirc;n <a href=\"http://vi.wikipedia.org/wiki/Th%E1%BA%BF_gi%E1%BB%9Bi\">th??? gi?»?i</a>, Hoa K?»³ k&yacute; <a title=\"Hi?»?p Ä??»?nh Paris\" href=\"http://vi.wikipedia.org/wiki/Hi%E1%BB%87p_%C4%91%E1%BB%8Bnh_Paris\">Hi?»?p Ä??»?nh Paris</a>, v&agrave; r&uacute;t qu&acirc;n kh?»i Vi?»?t Nam. <a href=\"http://vi.wikipedia.org/wiki/Chi%E1%BA%BFn_tranh_Vi%E1%BB%87t_Nam\">Chi???n tranh Vi?»?t Nam</a> k???t th&uacute;c v&agrave;o ng&agrave;y <a href=\"http://vi.wikipedia.org/wiki/30_th%C3%A1ng_4\">30 th&aacute;ng 4</a> nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1975\">1975</a> khi ch&iacute;nh quy?»n t?»?ng th?»?ng <a href=\"http://vi.wikipedia.org/wiki/D%C6%B0%C6%A1ng_V%C4%83n_Minh\">DÆ°Æ?ng VÄ?n Minh</a> c?»§a Vi?»?t Nam C?»?ng H&ograve;a Ä???§u h&agrave;ng trÆ°?»?c l?»±c lÆ°?»£ng <a title=\"Qu&acirc;n Gi??£i Ph&oacute;ng Mi?»n Nam\" href=\"http://vi.wikipedia.org/wiki/Qu%C3%A2n_Gi%E1%BA%A3i_Ph%C3%B3ng_Mi%E1%BB%81n_Nam\">Qu&acirc;n Gi??£i Ph&oacute;ng Mi?»n Nam</a> ti???n v&agrave;o S&agrave;i G&ograve;n.</p>\r\n<p>NÄ?m <a href=\"http://vi.wikipedia.org/wiki/1976\">1976</a>, nÆ°?»?c Vi?»?t Nam th?»?ng nh???t Ä??»?i qu?»?c hi?»?u th&agrave;nh nÆ°?»?c C?»?ng ho&agrave; X&atilde; h?»?i Ch?»§ nghÄ©a Vi?»?t Nam; <a title=\"S&agrave;i G&ograve;n\" href=\"http://vi.wikipedia.org/wiki/S%C3%A0i_G%C3%B2n\">S&agrave;i G&ograve;n</a> - <a href=\"http://vi.wikipedia.org/wiki/Ch%E1%BB%A3_L%E1%BB%9Bn\">Ch?»£ L?»?n</a> Ä??»?i t&ecirc;n th&agrave;nh <a href=\"http://vi.wikipedia.org/wiki/Th%C3%A0nh_ph%E1%BB%91_H%E1%BB%93_Ch%C3%AD_Minh\">Th&agrave;nh ph?»? H?»“ Ch&iacute; Minh</a>.  Sau chi???n tranh, do h??­u qu??£ chi???n tranh l&acirc;u d&agrave;i, s?»± c???m v??­n c?»§a Hoa K?»³,  v&agrave; nhi?»u ch&iacute;nh s&aacute;ch sai l??§m Ä?&atilde; Ä?Æ°a Vi?»?t Nam v&agrave;o c&aacute;c kh?»§ng ho??£ng tr??§m  tr?»ng v?» kinh t??? v&agrave; x&atilde; h?»?i. <a title=\"Ä???i h?»?i Ä??£ng C?»?ng s??£n Vi?»?t Nam VI\" href=\"http://vi.wikipedia.org/wiki/%C4%90%E1%BA%A1i_h%E1%BB%99i_%C4%90%E1%BA%A3ng_C%E1%BB%99ng_s%E1%BA%A3n_Vi%E1%BB%87t_Nam_VI\">Ä???i h?»?i Ä??£ng l??§n VI</a> nÄ?m <a href=\"http://vi.wikipedia.org/wiki/1986\">1986</a> ch???p thu??­n <a title=\"Ch&iacute;nh s&aacute;ch Ä?»?i m?»?i\" href=\"http://vi.wikipedia.org/wiki/Ch%C3%ADnh_s%C3%A1ch_%C4%90%E1%BB%95i_m%E1%BB%9Bi\">ch&iacute;nh s&aacute;ch Ä?»?i m?»?i</a> theo Ä?&oacute; c??£i t?»? b?»? m&aacute;y nh&agrave; nÆ°?»?c, v&agrave; chuy?»?n Ä??»?i n?»n kinh t??? theo hÆ°?»?ng kinh t??? th?»? trÆ°?»ng Ä??»?nh hÆ°?»?ng ch?»§ nghÄ©a x&atilde; h?»?i. Gi?»?a <a href=\"http://vi.wikipedia.org/wiki/Th%E1%BA%ADp_ni%C3%AAn_1990\">th??­p ni&ecirc;n 1990</a>, Vi?»?t Nam b???t Ä???§u h?»?i nh??­p v&agrave;o c?»?ng Ä??»“ng qu?»?c t???. NÄ?m <a href=\"http://vi.wikipedia.org/wiki/1995\">1995</a>, Vi?»?t Nam gia nh??­p kh?»?i <a title=\"ASEAN\" href=\"http://vi.wikipedia.org/wiki/ASEAN\">ASEAN</a>, sau khi b&igrave;nh thÆ°?»ng h&oacute;a quan h?»? v?»?i <a title=\"M?»¹\" href=\"http://vi.wikipedia.org/wiki/M%E1%BB%B9\">M?»¹</a> m?»?t nÄ?m trÆ°?»?c Ä?&oacute;. Hi?»?n nay, Vi?»?t Nam l&agrave; th&agrave;nh vi&ecirc;n c?»§a nhi?»u t?»? ch?»©c qu?»?c t??? nhÆ° <a href=\"http://vi.wikipedia.org/wiki/Li%C3%AAn_Hi%E1%BB%87p_Qu%E1%BB%91c\">Li&ecirc;n Hi?»?p Qu?»?c</a>, <a href=\"http://vi.wikipedia.org/wiki/C%E1%BB%99ng_%C4%91%E1%BB%93ng_Ph%C3%A1p_ng%E1%BB%AF\">C?»?ng Ä??»“ng Ph&aacute;p ng?»?</a>, <a title=\"ASEAN\" href=\"http://vi.wikipedia.org/wiki/ASEAN\">ASEAN</a>, <a title=\"APEC\" href=\"http://vi.wikipedia.org/wiki/APEC\">APEC</a>. Ng&agrave;y 11 th&aacute;ng 1 nÄ?m 2007, Vi?»?t Nam ch&iacute;nh th?»©c tr?»? th&agrave;nh th&agrave;nh vi&ecirc;n th?»© 150 c?»§a <a href=\"http://vi.wikipedia.org/wiki/T%E1%BB%95_ch%E1%BB%A9c_Th%C6%B0%C6%A1ng_m%E1%BA%A1i_Th%E1%BA%BF_gi%E1%BB%9Bi\">T?»? ch?»©c ThÆ°Æ?ng m???i Th??? gi?»?i</a> (WTO) sau 11 nÄ?m Ä?&agrave;m ph&aacute;n.<sup><a href=\"http://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam#cite_note-8\">[9]</a></sup> V&agrave;o ng&agrave;y 16 th&aacute;ng 10 nÄ?m 2007 Vi?»?t Nam Ä?&atilde; Ä?Æ°?»£c b??§u l&agrave;m m?»?t trong c&aacute;c th&agrave;nh vi&ecirc;n kh&ocirc;ng thÆ°?»ng tr?»±c c?»§a <a href=\"http://vi.wikipedia.org/wiki/H%E1%BB%99i_%C4%91%E1%BB%93ng_B%E1%BA%A3o_an_Li%C3%AAn_Hi%E1%BB%87p_Qu%E1%BB%91c\">H?»?i Ä??»“ng B??£o an Li&ecirc;n Hi?»?p Qu?»?c</a> cho nhi?»?m k?»³ 2008-2009.</p>', 21.0333, 105.85, 0, 'SHOW', 'upload/default/zone//1301386757_bg_banner.png', 0, '', 0, 'upload/default/zone//bonjour Vietnam.flv', '', '', 0),
(38, 1320000000000000000, 'Kh??nh H?²a', '', 12.2234, 108.903, 0, 'SHOW', 'upload/default/content/12.2011/Nha Trang.jpg', 0, '', 0, '', 'upload/default/content/07.2011/KhanhHoa.jpg', 'khanhhoa.vietccr.com', 0),
(39, 1330000000000000000, 'Ki??n Giang', '', 9.82496, 105.126, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/kienGiang.png', '', 0),
(40, 1340000000000000000, 'Kon Tum', '', 14.3497, 108, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/KonTum.jpg', '', 0),
(41, 1350000000000000000, 'Lai Ch?¢u', '', 22.3555, 103.266, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/LaiChau.jpg', '', 0),
(42, 1360000000000000000, 'L???ng SÆ?n', '', 21.8537, 106.762, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/LangSon.jpg', '', 0),
(43, 1370000000000000000, 'L? o Cai', '', 22.2759, 104.193, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/LaoCai.jpg', '', 0),
(44, 1380000000000000000, 'L?¢m Ä?»“ng', '', 11.5753, 108.143, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/1310112977_LamDong.jpg', '', 0),
(45, 1390000000000000000, 'Long An', '', 10.6852, 106.205, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/LongAn.jpg', '', 0),
(46, 1400000000000000000, 'Nam Ä?»?nh', '', 20.42, 106.168, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/NamDinh.jpg', '', 0),
(47, 1410000000000000000, 'Ngh?»? An', '', 19.1484, 104.845, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/NgheAn.jpg', '', 0),
(48, 1420000000000000000, 'Ninh B?¬nh', '', 20.2506, 105.974, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/NinhBinh.jpg', '', 0),
(49, 1430000000000000000, 'Ninh Thu??­n', '', 11.6994, 108.903, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/NinhThuan.jpg', '', 0),
(50, 1440000000000000000, 'Ph?? Th?»', '', 21.4253, 105.231, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/PhuTho.jpg', '', 0),
(51, 1450000000000000000, 'Ph?? Y??n', '', 13.0882, 109.093, 0, 'SHOW', 'upload/default/content/12.2011/PY.jpg', 0, '', 0, '', 'upload/default/content/07.2011/PhuYen.jpg', 'phuyen.vietccr.com', 0),
(52, 1460000000000000000, 'Qu??£ng B?¬nh', '', 17.4628, 106.252, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/QuangBinh.jpg', '', 0),
(53, 1470000000000000000, 'Qu??£ng Nam', '', 15.598, 107.858, 0, 'SHOW', 'upload/default/content/12.2011/QuangNam.jpg', 0, '', 0, '', 'upload/default/content/07.2011/QuangNam.jpg', 'quangnam.vietccr.com', 0),
(54, 1480000000000000000, 'Qu??£ng Ng?£i', '', 15.1238, 108.812, 0, 'SHOW', 'upload/default/content/12.2011/Quang Ngai.jpg', 0, '', 0, '', 'upload/default/content/07.2011/QuangNgai.jpg', 'quangngai.vietccr.com', 0),
(55, 1490000000000000000, 'Qu??£ng Ninh', '', 21.2432, 107.196, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/QuangNinh.jpg', '', 0),
(56, 1500000000000000000, 'Qu??£ng Tr?»?', '', 16.7017, 107.154, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/QuangTri.jpg', '', 0),
(57, 1510000000000000000, 'S?³c TrÄ?ng', '', 9.61737, 105.876, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/SocTrang.jpg', '', 0),
(58, 1520000000000000000, 'SÆ?n La  ', '', 21.327, 103.914, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/SonLa.jpg', '', 0),
(59, 1530000000000000000, 'T?¢y Ninh', '', 11.3675, 106.119, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/TayNinh.jpg', '', 0),
(60, 1550000000000000000, 'Th??i B?¬nh', '', 20.4464, 106.337, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/ThaiBinh.jpg', '', 0),
(61, 1560000000000000000, 'Th??i Nguy??n', '', 21.5672, 105.825, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/ThaiNguyen.jpg', '', 0),
(62, 1540000000000000000, 'Thanh H?³a', '', 19.8067, 105.785, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/ThanhHoa.jpg', '', 0),
(12, 1570000000000000000, 'Th?»«a Thi??n Hu???', '', 16.4635, 107.585, 0, 'SHOW', 'upload/default/content/12.2011/Cau Truong Tien Hue - Anh trang intro.jpg', 0, '', 0, '', 'upload/default/content/07.2011/ThuaThienhue.jpg', 'thuathienhue.vietccr.com', 0),
(63, 1580000000000000000, 'Ti?»n Giang', '', 10.419, 106.299, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/TienGiang.jpg', '', 0),
(9, 1590000000000000000, 'TP.H?»“ Ch?­ Minh', '', 0, 0, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/HoChiMinh.jpg', '', 0),
(64, 1600000000000000000, 'Tr?  Vinh  ', '', 9.81274, 106.299, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/TraVinh.jpg', '', 0),
(65, 1610000000000000000, 'Tuy??n Quang', '', 21.7767, 105.228, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/TuyenQuang.jpg', '', 0),
(66, 1620000000000000000, 'VÄ©nh Long', '', 10.2448, 105.959, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/VinhLong.jpg', '', 0),
(67, 1630000000000000000, 'VÄ©nh Ph??c', '', 21.3609, 105.547, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/VinhPhuc.jpg', '', 0),
(68, 1640000000000000000, 'Y??n B??i', '', 21.7168, 104.899, 0, 'SHOW', '', 0, '', 0, '', 'upload/default/content/07.2011/YenBai.jpg', '', 0),
(72, 1011100000000000000, 'An Ph??', '', 10.8512, 105.103, 0, 'SHOW', '', 1354444355, '', 0, '', '', '', 0),
(73, 1010200000000000000, 'Ch?¢u Ä?»?c ', '', 10.6821, 105.082, 0, 'SHOW', '', 1354444367, '', 0, '', '', '', 0),
(74, 1010300000000000000, 'Ch?¢u Ph??', '', 10.5815, 105.231, 0, 'SHOW', '', 1354444410, '', 0, '', '', '', 0),
(75, 1010400000000000000, 'Ch?¢u Th? nh', '', 10.4067, 105.243, 0, 'SHOW', '', 1354444420, '', 0, '', '', '', 0),
(76, 1010500000000000000, 'Ch?»£ M?»?i', '', 10.5445, 105.402, 0, 'SHOW', '', 1354444428, '', 0, '', '', '', 0),
(77, 1010600000000000000, 'Long Xuy??n', '', 10.3759, 105.419, 0, 'SHOW', '', 1354444479, '', 0, '', '', '', 0),
(78, 1010700000000000000, 'Ph?? T?¢n', '', 10.6666, 105.29, 0, 'SHOW', '', 1354444524, '', 0, '', '', '', 0),
(79, 1010800000000000000, 'T?¢n Ch?¢u', '', 10.7899, 105.243, 0, 'SHOW', '', 1354444584, '', 0, '', '', '', 0),
(80, 1010900000000000000, 'Tho???i SÆ?n', '', 10.2759, 105.243, 0, 'SHOW', '', 1354444594, '', 0, '', '', '', 0),
(81, 1011000000000000000, 'T?»?nh Bi??n', '', 10.5491, 105.009, 0, 'SHOW', '', 1354444600, '', 0, '', '', '', 0),
(82, 1011100000000000000, 'Tri T??n', '', 10.4182, 105, 0, 'SHOW', '', 1354444608, '', 0, '', '', '', 0),
(83, 1110100000000000000, 'B?  R?»?a', '', 10.5089, 107.182, 0, 'SHOW', '', 1354444640, '', 0, '', '', '', 0),
(84, 1110200000000000000, 'Ch?¢u Ä?»©c', '', 10.6285, 107.243, 0, 'SHOW', '', 1354444650, '', 0, '', '', '', 0),
(85, 1110300000000000000, 'C??n Ä??£o', '', 8.70439, 106.653, 0, 'SHOW', '', 1354444660, '', 0, '', '', '', 0),
(86, 1110400000000000000, 'Ä???t Ä?»', '', 10.4728, 107.314, 0, 'SHOW', '', 1354444666, '', 0, '', '', '', 0),
(87, 1110500000000000000, 'Long Äi?»n', '', 10.4813, 107.21, 0, 'SHOW', '', 1354444676, '', 0, '', '', '', 0),
(88, 1110600000000000000, 'T?¢n Th? nh', '', 10.4114, 107.136, 0, 'SHOW', '', 1354444681, '', 0, '', '', '', 0),
(89, 1110700000000000000, 'VÅ©ng T? u ', '', 10.4114, 107.136, 0, 'SHOW', '', 1354444691, '', 0, '', '', '', 0),
(90, 1110800000000000000, 'Xuy??n M?»?c', '', 10.6178, 107.432, 0, 'SHOW', '', 1354444697, '', 0, '', '', '', 0),
(91, 1020100000000000000, 'B???c Li??u', '', 9.26035, 105.752, 0, 'SHOW', '', 1354444721, '', 0, '', '', '', 0),
(92, 1020200000000000000, 'Ä??ng H??£i', '', 9.16306, 105.454, 0, 'SHOW', '', 1354444759, '', 0, '', '', '', 0),
(93, 1020300000000000000, 'Gi?? Rai', '', 9.26014, 105.375, 0, 'SHOW', '', 1354444767, '', 0, '', '', '', 0),
(94, 1020400000000000000, 'H?²a B?¬nh', '', 9.27348, 105.63, 0, 'SHOW', '', 1354444779, '', 0, '', '', '', 0),
(95, 1020500000000000000, 'H?»“ng D?¢n', '', 9.5539, 105.452, 0, 'SHOW', '', 1354444791, '', 0, '', '', '', 0),
(96, 1020600000000000000, 'PhÆ°?»?c Long', '', 9.45297, 105.465, 0, 'SHOW', '', 1354444796, '', 0, '', '', '', 0),
(97, 1020700000000000000, 'VÄ©nh L?»£i', '', 9.28593, 105.725, 0, 'SHOW', '', 1354444801, '', 0, '', '', '', 0),
(98, 1040100000000000000, 'Ba B?»?', '', 22.3637, 105.735, 0, 'SHOW', '', 1354444824, '', 0, '', '', '', 0),
(99, 1040200000000000000, 'B???c K???n', '', 22.1461, 105.828, 0, 'SHOW', '', 1354444832, '', 0, '', '', '', 0),
(100, 1040300000000000000, 'B???ch Th??ng ', '', 22.2361, 105.853, 0, 'SHOW', '', 1354444841, '', 0, '', '', '', 0),
(101, 1040400000000000000, 'Ch?»£ Ä?»“n', '', 22.1965, 105.547, 0, 'SHOW', '', 1354444847, '', 0, '', '', '', 0),
(102, 1040500000000000000, 'Ch?»£ M?»?i ', '', 22.0833, 105.7, 0, 'SHOW', '', 1354444858, '', 0, '', '', '', 0),
(103, 1040600000000000000, 'Na R?¬', '', 22.1407, 106.111, 0, 'SHOW', '', 1354444867, '', 0, '', '', '', 0),
(104, 1040700000000000000, 'Ng?¢n SÆ?n', '', 22.4282, 106.017, 0, 'SHOW', '', 1354444876, '', 0, '', '', '', 0),
(105, 1040800000000000000, 'P??c N??·m', '', 22.6126, 105.67, 0, 'SHOW', '', 1354444884, '', 0, '', '', '', 0),
(106, 1030100000000000000, 'B???c Giang ', '', 21.2909, 106.187, 0, 'SHOW', '', 1354444897, '', 0, '', '', '', 0),
(107, 1030200000000000000, 'Hi?»?p Ho? ', '', 21.3459, 105.946, 0, 'SHOW', '', 1354444903, '', 0, '', '', '', 0),
(108, 1030300000000000000, 'L???ng Giang', '', 21.3646, 106.229, 0, 'SHOW', '', 1354444908, '', 0, '', '', '', 0),
(109, 1030400000000000000, 'L?»?c Nam', '', 21.2966, 106.409, 0, 'SHOW', '', 1354444915, '', 0, '', '', '', 0),
(110, 1030500000000000000, 'L?»?c Ng???n ', '', 21.4354, 106.676, 0, 'SHOW', '', 1354444949, '', 0, '', '', '', 0),
(111, 1030600000000000000, 'SÆ?n Ä?»?ng', '', 21.352, 106.885, 0, 'SHOW', '', 1354444965, '', 0, '', '', '', 0),
(112, 1030700000000000000, 'T?¢n Y??n', '', 21.3785, 106.088, 0, 'SHOW', '', 1354444972, '', 0, '', '', '', 0),
(113, 1030800000000000000, 'Vi?»?t Y??n', '', 21.2859, 106.088, 0, 'SHOW', '', 1354444978, '', 0, '', '', '', 0),
(114, 1030900000000000000, 'Y??n DÅ©ng', '', 21.2257, 106.229, 0, 'SHOW', '', 1354444983, '', 0, '', '', '', 0),
(115, 1031000000000000000, 'Y??n Th???', '', 21.5129, 106.135, 0, 'SHOW', '', 1354444989, '', 0, '', '', '', 0),
(116, 1050100000000000000, 'B???c Ninh', '', 21.1839, 106.056, 0, 'SHOW', '', 1354445003, '', 0, '', '', '', 0),
(117, 1050200000000000000, 'Gia B?¬nh', '', 21.0541, 106.179, 0, 'SHOW', '', 1354445009, '', 0, '', '', '', 0),
(118, 1050300000000000000, 'LÆ°Æ?ng T? i', '', 21.0278, 106.24, 0, 'SHOW', '', 1354445014, '', 0, '', '', '', 0),
(119, 1050400000000000000, 'Qu??? V?µ', '', 21.1377, 106.182, 0, 'SHOW', '', 1354445022, '', 0, '', '', '', 0),
(120, 1050500000000000000, 'Thu??­n Th? nh', '', 21.0438, 106.076, 0, 'SHOW', '', 1354445027, '', 0, '', '', '', 0),
(121, 1050600000000000000, 'Ti??n Du', '', 21.1178, 106.029, 0, 'SHOW', '', 1354445033, '', 0, '', '', '', 0),
(122, 1050700000000000000, 'T?»« SÆ?n', '', 21.1196, 105.962, 0, 'SHOW', '', 1354445039, '', 0, '', '', '', 0),
(123, 1050800000000000000, 'Y??n Phong', '', 21.1941, 105.958, 0, 'SHOW', '', 1354445046, '', 0, '', '', '', 0),
(124, 1060100000000000000, 'Ba Tri', '', 10.0418, 106.594, 0, 'SHOW', '', 1354445062, '', 0, '', '', '', 0),
(125, 1060200000000000000, 'B???n Tre', '', 10.2414, 106.376, 0, 'SHOW', '', 1354445099, '', 0, '', '', '', 0),
(126, 1060300000000000000, 'B?¬nh Ä???i', '', 10.1785, 106.703, 0, 'SHOW', '', 1354445105, '', 0, '', '', '', 0),
(127, 1060400000000000000, 'Ch?¢u Th? nh', '', 10.3068, 106.37, 0, 'SHOW', '', 1354445111, '', 0, '', '', '', 0),
(128, 1060500000000000000, 'Ch?»£ L??ch', '', 10.2411, 106.17, 0, 'SHOW', '', 1354445116, '', 0, '', '', '', 0),
(129, 1060600000000000000, 'Gi?»“ng Tr??m', '', 10.1643, 106.505, 0, 'SHOW', '', 1354445121, '', 0, '', '', '', 0),
(130, 1060700000000000000, 'M?» C? y B???c', '', 10.1701, 106.288, 0, 'SHOW', '', 1354445127, '', 0, '', '', '', 0),
(131, 1060800000000000000, 'M?» C? y Nam', '', 10.0468, 106.37, 0, 'SHOW', '', 1354445132, '', 0, '', '', '', 0),
(132, 1060900000000000000, 'Th???nh Ph??', '', 9.94817, 106.505, 0, 'SHOW', '', 1354445138, '', 0, '', '', '', 0),
(133, 1070100000000000000, 'B???n C??t', '', 11.1013, 106.582, 0, 'SHOW', '', 1354445433, '', 0, '', '', '', 0),
(134, 1070200000000000000, 'D??§u Ti???ng', '', 11.2672, 106.368, 0, 'SHOW', '', 1354445438, '', 0, '', '', '', 0),
(135, 1070300000000000000, 'DÄ© An', '', 10.9156, 106.769, 0, 'SHOW', '', 1354445445, '', 0, '', '', '', 0),
(136, 1070400000000000000, 'Ph?? Gi??o', '', 11.2656, 106.771, 0, 'SHOW', '', 1354445451, '', 0, '', '', '', 0),
(137, 1070500000000000000, 'T?¢n Uy??n', '', 11.1111, 106.794, 0, 'SHOW', '', 1354445456, '', 0, '', '', '', 0),
(138, 1070600000000000000, 'Th?»§ D??§u M?»?t', '', 10.993, 106.656, 0, 'SHOW', '', 1354445462, '', 0, '', '', '', 0),
(139, 1070700000000000000, 'Thu??­n An', '', 10.9302, 106.712, 0, 'SHOW', '', 1354445471, '', 0, '', '', '', 0),
(140, 1080100000000000000, 'B?¬nh Long', '', 11.6922, 106.606, 0, 'SHOW', '', 1354445484, '', 0, '', '', '', 0),
(141, 1080200000000000000, 'B?¹ ÄÄ?ng', '', 11.7693, 107.148, 0, 'SHOW', '', 1354445490, '', 0, '', '', '', 0),
(142, 1080300000000000000, 'B?¹ Ä?»?p', '', 11.9892, 106.794, 0, 'SHOW', '', 1354445496, '', 0, '', '', '', 0),
(143, 1080400000000000000, 'B?¹ Gia M??­p', '', 12.0392, 107.054, 0, 'SHOW', '', 1354445502, '', 0, '', '', '', 0),
(144, 1080500000000000000, 'ChÆ?n Th? nh', '', 11.4388, 106.617, 0, 'SHOW', '', 1354445510, '', 0, '', '', '', 0),
(145, 1080600000000000000, 'Ä?»“ng Ph??', '', 11.5123, 106.991, 0, 'SHOW', '', 1354445515, '', 0, '', '', '', 0),
(146, 1080700000000000000, 'Ä?»“ng Xo? i', '', 11.5333, 106.917, 0, 'SHOW', '', 1354445521, '', 0, '', '', '', 0),
(147, 1080800000000000000, 'H?»?n Qu??£n', '', 11.6015, 106.653, 0, 'SHOW', '', 1354445528, '', 0, '', '', '', 0),
(148, 1080900000000000000, 'L?»?c Ninh', '', 11.8037, 106.582, 0, 'SHOW', '', 1354445536, '', 0, '', '', '', 0),
(149, 1081000000000000000, 'PhÆ°?»?c Long', '', 11.8337, 106.995, 0, 'SHOW', '', 1354445544, '', 0, '', '', '', 0),
(150, 1090100000000000000, 'B???c B?¬nh', '', 11.2552, 108.38, 0, 'SHOW', '', 1354445557, '', 0, '', '', '', 0),
(151, 1090200000000000000, 'Ä?»©c Linh', '', 11.1977, 107.551, 0, 'SHOW', '', 1354445562, '', 0, '', '', '', 0),
(152, 1090300000000000000, 'H? m T?¢n', '', 10.6727, 107.757, 0, 'SHOW', '', 1354445568, '', 0, '', '', '', 0),
(153, 1090400000000000000, 'H? m Thu??­n B???c', '', 11.1117, 108.132, 0, 'SHOW', '', 1354445573, '', 0, '', '', '', 0),
(154, 1090500000000000000, 'H? m Thu??­n Nam', '', 10.8503, 107.906, 0, 'SHOW', '', 1354445579, '', 0, '', '', '', 0),
(155, 1090600000000000000, 'La Gi', '', 10.7157, 107.799, 0, 'SHOW', '', 1354445584, '', 0, '', '', '', 0),
(156, 1090700000000000000, 'Phan Thi???t', '', 10.9223, 108.11, 0, 'SHOW', '', 1354445591, '', 0, '', '', '', 0),
(157, 1090800000000000000, 'Ph?? Qu?½', '', 10.5335, 108.944, 0, 'SHOW', '', 1354445596, '', 0, '', '', '', 0),
(158, 1090900000000000000, 'T??nh Linh', '', 11.0981, 107.678, 0, 'SHOW', '', 1354445604, '', 0, '', '', '', 0),
(159, 1091000000000000000, 'Tuy Phong', '', 11.3179, 108.658, 0, 'SHOW', '', 1354445610, '', 0, '', '', '', 0),
(160, 1130100000000000000, 'C?  Mau', '', 9.18333, 105.15, 0, 'SHOW', '', 1354445629, '', 0, '', '', '', 0),
(161, 1130200000000000000, 'C??i NÆ°?»?c', '', 8.93415, 105.009, 0, 'SHOW', '', 1354445634, '', 0, '', '', '', 0),
(162, 1130300000000000000, 'Ä??§m DÆ?i', '', 8.99442, 105.194, 0, 'SHOW', '', 1354445642, '', 0, '', '', '', 0),
(163, 1130400000000000000, 'NÄ?m CÄ?n', '', 8.76975, 104.991, 0, 'SHOW', '', 1354445647, '', 0, '', '', '', 0),
(164, 1130500000000000000, 'Ng?»c Hi?»?n', '', 8.66773, 105.003, 0, 'SHOW', '', 1354445653, '', 0, '', '', '', 0),
(165, 1130600000000000000, 'Ph?? T?¢n', '', 8.94129, 104.857, 0, 'SHOW', '', 1354445659, '', 0, '', '', '', 0),
(166, 1130700000000000000, 'Th?»?i B?¬nh', '', 9.34736, 105.173, 0, 'SHOW', '', 1354445666, '', 0, '', '', '', 0),
(167, 1130800000000000000, 'Tr??§n VÄ?n Th?»i', '', 9.09244, 104.968, 0, 'SHOW', '', 1354445672, '', 0, '', '', '', 0),
(168, 1130900000000000000, 'U Minh', '', 9.40474, 104.968, 0, 'SHOW', '', 1354445679, '', 0, '', '', '', 0),
(169, 1120100000000000000, 'B??£o L???c', '', 22.9475, 105.681, 0, 'SHOW', '', 1354445817, '', 0, '', '', '', 0),
(170, 1120200000000000000, 'B??£o L?¢m', '', 22.8315, 105.492, 0, 'SHOW', '', 1354445825, '', 0, '', '', '', 0),
(171, 1120300000000000000, 'Cao B??±ng', '', 22.6637, 106.268, 0, 'SHOW', '', 1354445831, '', 0, '', '', '', 0),
(172, 1120400000000000000, 'H??? Lang', '', 22.7042, 106.7, 0, 'SHOW', '', 1354445836, '', 0, '', '', '', 0),
(173, 1120500000000000000, 'H?  Qu??£ng', '', 22.9025, 106.135, 0, 'SHOW', '', 1354445842, '', 0, '', '', '', 0),
(174, 1120600000000000000, 'H?²a An', '', 22.6833, 106.3, 0, 'SHOW', '', 1354445850, '', 0, '', '', '', 0),
(175, 1120700000000000000, 'Nguy??n B?¬nh', '', 22.6505, 105.967, 0, 'SHOW', '', 1354445857, '', 0, '', '', '', 0),
(176, 1120800000000000000, 'Ph?»?c H?²a', '', 22.5393, 106.511, 0, 'SHOW', '', 1354445863, '', 0, '', '', '', 0),
(177, 1120900000000000000, 'Qu??£ng Uy??n', '', 22.688, 106.444, 0, 'SHOW', '', 1354445870, '', 0, '', '', '', 0),
(178, 1121000000000000000, 'Th???ch An', '', 22.4664, 106.323, 0, 'SHOW', '', 1354445877, '', 0, '', '', '', 0),
(179, 1121100000000000000, 'Th??ng N??ng', '', 22.7846, 105.983, 0, 'SHOW', '', 1354446033, '', 0, '', '', '', 0),
(180, 1121200000000000000, 'Tr?  LÄ©nh', '', 22.7903, 106.323, 0, 'SHOW', '', 1354446041, '', 0, '', '', '', 0),
(181, 1121300000000000000, 'Tr?¹ng Kh??nh', '', 22.831, 106.529, 0, 'SHOW', '', 1354446049, '', 0, '', '', '', 0),
(182, 1140100000000000000, 'B?¬nh Th?»§y', '', 10.0726, 105.741, 0, 'SHOW', '', 1354446069, '', 0, '', '', '', 0),
(183, 1140200000000000000, 'C??i RÄ?ng', '', 9.99924, 105.804, 0, 'SHOW', '', 1354446074, '', 0, '', '', '', 0),
(184, 1140300000000000000, 'C?» Ä?»', '', 10.1135, 105.454, 0, 'SHOW', '', 1354446080, '', 0, '', '', '', 0),
(185, 1140400000000000000, 'Ninh Ki?»u', '', 10.0281, 105.764, 0, 'SHOW', '', 1354446086, '', 0, '', '', '', 0),
(186, 1140500000000000000, '?” M??n', '', 10.0318, 105.784, 0, 'SHOW', '', 1354446091, '', 0, '', '', '', 0),
(187, 1140600000000000000, 'Phong Äi?»n', '', 10.0063, 105.653, 0, 'SHOW', '', 1354446097, '', 0, '', '', '', 0),
(188, 1140700000000000000, 'Th?»?i Lai', '', 10.0016, 105.524, 0, 'SHOW', '', 1354446103, '', 0, '', '', '', 0),
(189, 1140800000000000000, 'Th?»?t N?»?t', '', 10.2725, 105.53, 0, 'SHOW', '', 1354446109, '', 0, '', '', '', 0),
(190, 1140900000000000000, 'VÄ©nh Th???nh', '', 10.1844, 105.337, 0, 'SHOW', '', 1354446124, '', 0, '', '', '', 0),
(191, 1160100000000000000, 'Bu??n Ä??n', '', 12.8792, 107.716, 0, 'SHOW', '', 1354446171, '', 0, '', '', '', 0),
(192, 1160200000000000000, 'Bu??n H?»“', '', 12.8628, 108.261, 0, 'SHOW', '', 1354446176, '', 0, '', '', '', 0),
(193, 1160300000000000000, 'Bu??n Ma Thu?»?t', '', 12.6662, 108.038, 0, 'SHOW', '', 1354446182, '', 0, '', '', '', 0),
(194, 1160400000000000000, 'CÆ° Kuin', '', 12.5811, 108.19, 0, 'SHOW', '', 1354446187, '', 0, '', '', '', 0),
(195, 1160500000000000000, 'CÆ° M\'gar', '', 12.818, 108.075, 0, 'SHOW', '', 1354446194, '', 0, '', '', '', 0),
(196, 1160600000000000000, 'Ea H\'leo', '', 13.3512, 108.155, 0, 'SHOW', '', 1354446200, '', 0, '', '', '', 0),
(197, 1160700000000000000, 'Ea Kar', '', 12.7982, 108.546, 0, 'SHOW', '', 1354446207, '', 0, '', '', '', 0),
(198, 1160800000000000000, 'Ea S??p', '', 13.1862, 107.764, 0, 'SHOW', '', 1354446213, '', 0, '', '', '', 0),
(199, 1160900000000000000, 'Kr??ng Ana', '', 12.4824, 108.024, 0, 'SHOW', '', 1354446219, '', 0, '', '', '', 0),
(200, 1161000000000000000, 'Kr??ng B??ng ', '', 12.473, 108.475, 0, 'SHOW', '', 1354446226, '', 0, '', '', '', 0),
(201, 1161100000000000000, 'Kr??ng Buk', '', 13.0227, 108.19, 0, 'SHOW', '', 1354446232, '', 0, '', '', '', 0),
(202, 1161200000000000000, 'Kr??ng NÄ?ng', '', 12.9494, 108.362, 0, 'SHOW', '', 1354446239, '', 0, '', '', '', 0),
(203, 1161300000000000000, 'Kr??ng Pak', '', 12.744, 108.38, 0, 'SHOW', '', 1354446245, '', 0, '', '', '', 0),
(204, 1161400000000000000, 'L???k', '', 12.365, 108.161, 0, 'SHOW', '', 1354446251, '', 0, '', '', '', 0),
(205, 1161500000000000000, 'M\'DrÄ?k', '', 12.7556, 108.735, 0, 'SHOW', '', 1354446258, '', 0, '', '', '', 0),
(206, 1170100000000000000, 'CÆ° J??t', '', 12.6573, 107.866, 0, 'SHOW', '', 1355063711, '', 0, '', '', '', 0),
(207, 1170200000000000000, 'Ä???k Glong', '', 12.1014, 107.802, 0, 'SHOW', '', 1355063721, '', 0, '', '', '', 0),
(208, 1170300000000000000, 'Ä???k Mil', '', 12.4503, 107.623, 0, 'SHOW', '', 1355063766, '', 0, '', '', '', 0),
(209, 1170400000000000000, 'Ä???k R\'L???p', '', 11.9213, 107.527, 0, 'SHOW', '', 1355063772, '', 0, '', '', '', 0),
(210, 1170500000000000000, 'Ä???k Song', '', 12.2922, 107.596, 0, 'SHOW', '', 1355063778, '', 0, '', '', '', 0),
(211, 1170600000000000000, 'Gia NghÄ©a', '', 12.0036, 107.688, 0, 'SHOW', '', 1355063784, '', 0, '', '', '', 0),
(212, 1170700000000000000, 'Kr??ng N??', '', 12.3427, 107.811, 0, 'SHOW', '', 1355063790, '', 0, '', '', '', 0),
(213, 1170800000000000000, 'Tuy Ä?»©c', '', 12.1576, 107.434, 0, 'SHOW', '', 1355063796, '', 0, '', '', '', 0),
(214, 1180100000000000000, 'Äi?»?n Bi??n', '', 21.2045, 103.036, 0, 'SHOW', '', 1355063816, '', 0, '', '', '', 0),
(215, 1180200000000000000, 'Äi?»?n Bi??n Ä??ng', '', 21.2835, 103.22, 0, 'SHOW', '', 1355063822, '', 0, '', '', '', 0),
(216, 1180300000000000000, 'Äi?»?n Bi??n Ph?»§', '', 21.4094, 103.036, 0, 'SHOW', '', 1355063828, '', 0, '', '', '', 0),
(217, 1180400000000000000, 'MÆ°?»ng ??¢ng', '', 21.5254, 103.229, 0, 'SHOW', '', 1355063834, '', 0, '', '', '', 0),
(218, 1180500000000000000, 'MÆ°?»ng Ch? ', '', 21.7489, 103.086, 0, 'SHOW', '', 1355063840, '', 0, '', '', '', 0),
(219, 1180600000000000000, 'MÆ°?»ng Lay', '', 22.0499, 103.163, 0, 'SHOW', '', 1355063845, '', 0, '', '', '', 0),
(220, 1180700000000000000, 'MÆ°?»ng Nh?©', '', 22.0833, 102.576, 0, 'SHOW', '', 1355063851, '', 0, '', '', '', 0),
(221, 1180800000000000000, 'T?»§a Ch?¹a', '', 21.9232, 103.405, 0, 'SHOW', '', 1355063858, '', 0, '', '', '', 0),
(222, 1180900000000000000, 'Tu??§n Gi??o', '', 21.6427, 103.405, 0, 'SHOW', '', 1355063914, '', 0, '', '', '', 0),
(223, 1190100000000000000, 'Bi??n H?²a', '', 10.9574, 106.843, 0, 'SHOW', '', 1355063926, '', 0, '', '', '', 0),
(224, 1190200000000000000, 'C??©m M?»¹', '', 10.8226, 107.267, 0, 'SHOW', '', 1355063932, '', 0, '', '', '', 0),
(225, 1190300000000000000, 'Ä?»?nh Qu??n', '', 11.1577, 107.274, 0, 'SHOW', '', 1355063937, '', 0, '', '', '', 0),
(226, 1190400000000000000, 'Long Kh??nh', '', 10.9443, 107.231, 0, 'SHOW', '', 1355063944, '', 0, '', '', '', 0),
(227, 1190500000000000000, 'Long Th? nh', '', 10.7933, 107.014, 0, 'SHOW', '', 1355063951, '', 0, '', '', '', 0),
(228, 1190600000000000000, 'NhÆ?n Tr???ch', '', 10.6969, 106.891, 0, 'SHOW', '', 1355063957, '', 0, '', '', '', 0),
(229, 1190700000000000000, 'T?¢n Ph??', '', 11.2677, 107.429, 0, 'SHOW', '', 1355063963, '', 0, '', '', '', 0),
(230, 1190800000000000000, 'Th?»?ng Nh???t', '', 10.948, 106.833, 0, 'SHOW', '', 1355063968, '', 0, '', '', '', 0),
(231, 1190900000000000000, 'Tr??£ng Bom', '', 10.9495, 106.998, 0, 'SHOW', '', 1355063973, '', 0, '', '', '', 0),
(232, 1191000000000000000, 'VÄ©nh C?»­u', '', 11.3049, 107.061, 0, 'SHOW', '', 1355063978, '', 0, '', '', '', 0),
(233, 1191100000000000000, 'Xu?¢n L?»?c', '', 10.9322, 107.234, 0, 'SHOW', '', 1355063984, '', 0, '', '', '', 0),
(234, 1200100000000000000, 'Cao L?£nh', '', 10.455, 105.634, 0, 'SHOW', '', 1355064000, '', 0, '', '', '', 0),
(235, 1200200000000000000, 'Ch?¢u Th? nh', '', 10.2051, 105.806, 0, 'SHOW', '', 1355064009, '', 0, '', '', '', 0),
(236, 1200300000000000000, 'H?»“ng Ng?»±', '', 10.8255, 105.395, 0, 'SHOW', '', 1355064015, '', 0, '', '', '', 0),
(237, 1200400000000000000, 'Lai Vung', '', 10.2938, 105.659, 0, 'SHOW', '', 1355064026, '', 0, '', '', '', 0),
(238, 1200500000000000000, 'L???p V?²', '', 10.3577, 105.521, 0, 'SHOW', '', 1355064032, '', 0, '', '', '', 0),
(239, 1200600000000000000, 'Sa Ä?©c', '', 10.3008, 105.766, 0, 'SHOW', '', 1355064037, '', 0, '', '', '', 0),
(240, 1200700000000000000, 'Tam N??ng', '', 10.7193, 105.547, 0, 'SHOW', '', 1355064043, '', 0, '', '', '', 0),
(241, 1200800000000000000, 'T?¢n H?»“ng', '', 10.8761, 105.477, 0, 'SHOW', '', 1355064048, '', 0, '', '', '', 0),
(242, 1200900000000000000, 'Thanh B?¬nh', '', 10.5555, 105.492, 0, 'SHOW', '', 1355064054, '', 0, '', '', '', 0),
(243, 1201000000000000000, 'Th??p MÆ°?»i', '', 10.5303, 105.829, 0, 'SHOW', '', 1355064059, '', 0, '', '', '', 0),
(244, 1210100000000000000, 'An Kh??', '', 14.0279, 108.689, 0, 'SHOW', '', 1355064076, '', 0, '', '', '', 0),
(245, 1210200000000000000, 'Ayun Pa', '', 13.3743, 108.399, 0, 'SHOW', '', 1355064081, '', 0, '', '', '', 0),
(246, 1210300000000000000, 'ChÆ° PÄ?h', '', 14.1765, 107.929, 0, 'SHOW', '', 1355064086, '', 0, '', '', '', 0),
(247, 1210400000000000000, 'ChÆ° Pr??ng', '', 13.5419, 107.764, 0, 'SHOW', '', 1355064091, '', 0, '', '', '', 0),
(248, 1210500000000000000, 'ChÆ° PÆ°h', '', 13.4731, 108.095, 0, 'SHOW', '', 1355064097, '', 0, '', '', '', 0),
(249, 1210600000000000000, 'ChÆ° S??', '', 13.7141, 108.066, 0, 'SHOW', '', 1355064102, '', 0, '', '', '', 0),
(250, 1210700000000000000, 'Ä???k Äoa', '', 14.1135, 108.167, 0, 'SHOW', '', 1355064113, '', 0, '', '', '', 0),
(251, 1210800000000000000, 'ÄÄ?k PÆ?', '', 13.9464, 108.594, 0, 'SHOW', '', 1355064120, '', 0, '', '', '', 0),
(252, 1210900000000000000, 'Ä?»©c CÆ?', '', 13.7752, 107.622, 0, 'SHOW', '', 1355064127, '', 0, '', '', '', 0),
(253, 1211000000000000000, 'Ia Grai', '', 13.9539, 107.622, 0, 'SHOW', '', 1355064134, '', 0, '', '', '', 0),
(254, 1211100000000000000, 'Ia Pa', '', 13.5261, 108.57, 0, 'SHOW', '', 1355064141, '', 0, '', '', '', 0),
(255, 1211200000000000000, 'K\'Bang', '', 14.1433, 108.603, 0, 'SHOW', '', 1355064147, '', 0, '', '', '', 0),
(256, 1211300000000000000, 'K??ng Chro', '', 13.7037, 108.57, 0, 'SHOW', '', 1355064154, '', 0, '', '', '', 0),
(257, 1211400000000000000, 'Kr??ng Pa', '', 13.216, 108.673, 0, 'SHOW', '', 1355064162, '', 0, '', '', '', 0),
(258, 1211500000000000000, 'Mang Yang', '', 14.0427, 108.253, 0, 'SHOW', '', 1355064169, '', 0, '', '', '', 0),
(259, 1211600000000000000, 'Ph?? Thi?»?n', '', 13.4589, 108.285, 0, 'SHOW', '', 1355064174, '', 0, '', '', '', 0),
(260, 1211700000000000000, 'Pleiku', '', 13.9718, 108.015, 0, 'SHOW', '', 1355064179, '', 0, '', '', '', 0),
(261, 1220100000000000000, 'B???c M??', '', 22.8026, 104.978, 0, 'SHOW', '', 1355064199, '', 0, '', '', '', 0),
(262, 1220200000000000000, 'B???c Quang', '', 22.3607, 104.799, 0, 'SHOW', '', 1355064205, '', 0, '', '', '', 0),
(263, 1220300000000000000, 'Ä?»“ng VÄ?n', '', 23.2247, 105.243, 0, 'SHOW', '', 1355064210, '', 0, '', '', '', 0),
(264, 1220400000000000000, 'H?  Giang', '', 22.8026, 104.978, 0, 'SHOW', '', 1355064215, '', 0, '', '', '', 0),
(265, 1220500000000000000, 'Ho? ng Su Ph?¬', '', 22.6486, 104.705, 0, 'SHOW', '', 1355064223, '', 0, '', '', '', 0),
(266, 1220600000000000000, 'M??o V???c', '', 23.1341, 105.454, 0, 'SHOW', '', 1355064228, '', 0, '', '', '', 0),
(267, 1220700000000000000, 'Qu??£n B???', '', 23.0872, 104.986, 0, 'SHOW', '', 1355064234, '', 0, '', '', '', 0),
(268, 1220800000000000000, 'Quang B?¬nh', '', 22.8026, 104.978, 0, 'SHOW', '', 1355064240, '', 0, '', '', '', 0),
(269, 1220900000000000000, 'V?»? Xuy??n', '', 22.7241, 104.892, 0, 'SHOW', '', 1355064246, '', 0, '', '', '', 0),
(270, 1221000000000000000, 'X?­n M??§n', '', 22.4966, 104.873, 0, 'SHOW', '', 1355064252, '', 0, '', '', '', 0),
(271, 1221100000000000000, 'Y??n Minh', '', 23.1185, 105.156, 0, 'SHOW', '', 1355064257, '', 0, '', '', '', 0),
(272, 1230100000000000000, 'B?¬nh L?»?c', '', 20.503, 106.041, 0, 'SHOW', '', 1355064274, '', 0, '', '', '', 0),
(273, 1230200000000000000, 'Duy Ti??n', '', 20.6381, 105.958, 0, 'SHOW', '', 1355064279, '', 0, '', '', '', 0),
(274, 1230300000000000000, 'Kim B??£ng', '', 20.5669, 105.853, 0, 'SHOW', '', 1355064284, '', 0, '', '', '', 0),
(275, 1230400000000000000, 'L?½ Nh?¢n', '', 20.5553, 106.099, 0, 'SHOW', '', 1355064289, '', 0, '', '', '', 0),
(276, 1230500000000000000, 'Ph?»§ L?½', '', 20.5411, 105.914, 0, 'SHOW', '', 1355064297, '', 0, '', '', '', 0),
(277, 1230600000000000000, 'Thanh Li??m', '', 20.4699, 105.899, 0, 'SHOW', '', 1355064303, '', 0, '', '', '', 0),
(278, 1240100000000000000, 'Ba Ä?¬nh', '', 21.0359, 105.826, 0, 'SHOW', '', 1355064362, '', 0, '', '', '', 0),
(279, 1240200000000000000, 'Ba V?¬', '', 21.0639, 105.372, 0, 'SHOW', '', 1355064369, '', 0, '', '', '', 0),
(280, 1240300000000000000, 'C??§u Gi???y', '', 21.0343, 105.797, 0, 'SHOW', '', 1355064375, '', 0, '', '', '', 0),
(281, 1240400000000000000, 'ChÆ°Æ?ng M?»¹', '', 20.8626, 105.665, 0, 'SHOW', '', 1355064381, '', 0, '', '', '', 0),
(282, 1240500000000000000, 'Äan PhÆ°?»£ng', '', 21.1051, 105.676, 0, 'SHOW', '', 1355064387, '', 0, '', '', '', 0),
(283, 1240600000000000000, 'Ä??ng Anh', '', 21.1479, 105.846, 0, 'SHOW', '', 1355064394, '', 0, '', '', '', 0),
(284, 1240700000000000000, 'Ä?»?ng Äa', '', 21.0135, 105.827, 0, 'SHOW', '', 1355064401, '', 0, '', '', '', 0),
(285, 1240800000000000000, 'Gia L?¢m', '', 21.0319, 105.958, 0, 'SHOW', '', 1355064406, '', 0, '', '', '', 0),
(286, 1240900000000000000, 'H?  Ä??ng', '', 20.9558, 105.756, 0, 'SHOW', '', 1355064412, '', 0, '', '', '', 0),
(287, 1241000000000000000, 'Hai B?  TrÆ°ng', '', 21.0041, 105.855, 0, 'SHOW', '', 1355064418, '', 0, '', '', '', 0),
(288, 1241100000000000000, 'Ho? i Ä?»©c', '', 21.0333, 105.7, 0, 'SHOW', '', 1355064424, '', 0, '', '', '', 0),
(289, 1241200000000000000, 'Ho? n Ki???m', '', 21.0287, 105.852, 0, 'SHOW', '', 1355064429, '', 0, '', '', '', 0),
(290, 1241300000000000000, 'Ho? ng Mai', '', 20.9714, 105.864, 0, 'SHOW', '', 1355064439, '', 0, '', '', '', 0),
(291, 1241400000000000000, 'Long Bi??n', '', 21.0387, 105.888, 0, 'SHOW', '', 1355064445, '', 0, '', '', '', 0),
(292, 1241500000000000000, 'M?? Linh', '', 21.1829, 105.712, 0, 'SHOW', '', 1355064452, '', 0, '', '', '', 0),
(293, 1241600000000000000, 'M?»¹ Ä?»©c', '', 20.6728, 105.712, 0, 'SHOW', '', 1355064460, '', 0, '', '', '', 0),
(294, 1241700000000000000, 'Ph?? Xuy??n', '', 20.7352, 105.911, 0, 'SHOW', '', 1355064467, '', 0, '', '', '', 0),
(295, 1241800000000000000, 'Ph??c Th?»', '', 21.1139, 105.583, 0, 'SHOW', '', 1355064472, '', 0, '', '', '', 0),
(296, 1241900000000000000, 'Qu?»?c Oai', '', 20.9725, 105.606, 0, 'SHOW', '', 1355064479, '', 0, '', '', '', 0),
(297, 1242000000000000000, 'S?³c SÆ?n', '', 21.2623, 105.853, 0, 'SHOW', '', 1355064486, '', 0, '', '', '', 0),
(298, 1242100000000000000, 'SÆ?n T?¢y', '', 21.1032, 105.497, 0, 'SHOW', '', 1355064492, '', 0, '', '', '', 0),
(299, 1242200000000000000, 'T?¢y H?»“', '', 21.0651, 105.824, 0, 'SHOW', '', 1355064499, '', 0, '', '', '', 0),
(300, 1242300000000000000, 'Th???ch Th???t', '', 21.0044, 105.512, 0, 'SHOW', '', 1355064505, '', 0, '', '', '', 0),
(301, 1242400000000000000, 'Thanh Oai', '', 20.8643, 105.77, 0, 'SHOW', '', 1355064512, '', 0, '', '', '', 0),
(302, 1242500000000000000, 'Thanh Tr?¬', '', 20.9272, 105.841, 0, 'SHOW', '', 1355064520, '', 0, '', '', '', 0),
(303, 1242600000000000000, 'Thanh Xu?¢n', '', 20.9938, 105.811, 0, 'SHOW', '', 1355064527, '', 0, '', '', '', 0),
(304, 1242700000000000000, 'ThÆ°?»ng T?­n', '', 20.8555, 105.864, 0, 'SHOW', '', 1355064534, '', 0, '', '', '', 0),
(305, 1242800000000000000, 'T?»« Li??m', '', 21.052, 105.747, 0, 'SHOW', '', 1355064540, '', 0, '', '', '', 0),
(306, 1242900000000000000, '?»?ng H?²a', '', 20.7104, 105.806, 0, 'SHOW', '', 1355064548, '', 0, '', '', '', 0),
(307, 1250100000000000000, 'C??©m Xuy??n', '', 18.2569, 106.002, 0, 'SHOW', '', 1355064575, '', 0, '', '', '', 0),
(308, 1250200000000000000, 'Can L?»?c', '', 18.4516, 105.712, 0, 'SHOW', '', 1355064580, '', 0, '', '', '', 0),
(309, 1250300000000000000, 'Ä?»©c Th?»', '', 18.5401, 105.586, 0, 'SHOW', '', 1355064586, '', 0, '', '', '', 0),
(310, 1250400000000000000, 'H?  TÄ©nh', '', 18.3405, 105.907, 0, 'SHOW', '', 1355064592, '', 0, '', '', '', 0),
(311, 1250500000000000000, 'H?»“ng LÄ©nh', '', 18.5302, 105.706, 0, 'SHOW', '', 1355064598, '', 0, '', '', '', 0),
(312, 1250600000000000000, 'HÆ°Æ?ng Kh??', '', 18.1757, 105.712, 0, 'SHOW', '', 1355064603, '', 0, '', '', '', 0),
(313, 1250700000000000000, 'HÆ°Æ?ng SÆ?n', '', 18.5118, 105.266, 0, 'SHOW', '', 1355064609, '', 0, '', '', '', 0),
(314, 1250800000000000000, 'K?»³ Anh', '', 18.0774, 106.29, 0, 'SHOW', '', 1355064617, '', 0, '', '', '', 0),
(315, 1250900000000000000, 'L?»?c H? ', '', 18.4818, 105.899, 0, 'SHOW', '', 1355064622, '', 0, '', '', '', 0),
(316, 1251000000000000000, 'Nghi Xu?¢n', '', 18.6642, 105.756, 0, 'SHOW', '', 1355064630, '', 0, '', '', '', 0);
INSERT INTO `zone` (`id`, `structure_id`, `name_1`, `description_1`, `lat`, `long`, `radius`, `status`, `image_url`, `time`, `map`, `region_id`, `file`, `logo`, `website`, `is_footer`) VALUES
(317, 1251100000000000000, 'Th???ch H? ', '', 18.3013, 105.853, 0, 'SHOW', '', 1355064636, '', 0, '', '', '', 0),
(318, 1251200000000000000, 'VÅ© Quang', '', 18.3621, 105.471, 0, 'SHOW', '', 1355064642, '', 0, '', '', '', 0),
(319, 1270100000000000000, 'B?¬nh Giang', '', 20.8704, 106.193, 0, 'SHOW', '', 1355064803, '', 0, '', '', '', 0),
(320, 1270200000000000000, 'C??©m Gi? ng', '', 20.948, 106.229, 0, 'SHOW', '', 1355064807, '', 0, '', '', '', 0),
(321, 1270300000000000000, 'Ch?­ Linh', '', 21.133, 106.383, 0, 'SHOW', '', 1355064813, '', 0, '', '', '', 0),
(322, 1270400000000000000, 'Gia L?»?c', '', 20.869, 106.296, 0, 'SHOW', '', 1355064818, '', 0, '', '', '', 0),
(323, 1270500000000000000, 'H??£i DÆ°Æ?ng', '', 20.9373, 106.315, 0, 'SHOW', '', 1355064826, '', 0, '', '', '', 0),
(324, 1270600000000000000, 'Kim Th? nh', '', 20.9373, 106.315, 0, 'SHOW', '', 1355064831, '', 0, '', '', '', 0),
(325, 1270700000000000000, 'Kinh M??n', '', 21.0127, 106.511, 0, 'SHOW', '', 1355064837, '', 0, '', '', '', 0),
(326, 1270800000000000000, 'Nam S??ch', '', 20.9955, 106.335, 0, 'SHOW', '', 1355064843, '', 0, '', '', '', 0),
(327, 1270900000000000000, 'Ninh Giang', '', 20.7267, 106.398, 0, 'SHOW', '', 1355064850, '', 0, '', '', '', 0),
(328, 1271000000000000000, 'Thanh H? ', '', 20.9295, 106.417, 0, 'SHOW', '', 1355064856, '', 0, '', '', '', 0),
(329, 1271100000000000000, 'Thanh Mi?»?n', '', 20.788, 106.238, 0, 'SHOW', '', 1355064862, '', 0, '', '', '', 0),
(330, 1271200000000000000, 'T?»© K?»³', '', 20.8195, 106.404, 0, 'SHOW', '', 1355064867, '', 0, '', '', '', 0),
(331, 1280100000000000000, 'An DÆ°Æ?ng', '', 20.8654, 106.613, 0, 'SHOW', '', 1355064927, '', 0, '', '', '', 0),
(332, 1280200000000000000, 'An L?£o', '', 20.8218, 106.557, 0, 'SHOW', '', 1355064932, '', 0, '', '', '', 0),
(333, 1280300000000000000, 'B???ch Long VÄ©', '', 20.1369, 107.731, 0, 'SHOW', '', 1355064937, '', 0, '', '', '', 0),
(334, 1280400000000000000, 'C??t H??£i', '', 20.8037, 106.897, 0, 'SHOW', '', 1355064943, '', 0, '', '', '', 0),
(335, 1280500000000000000, 'Ä?»“ SÆ?n', '', 20.7224, 106.759, 0, 'SHOW', '', 1355064948, '', 0, '', '', '', 0),
(336, 1280600000000000000, 'DÆ°Æ?ng Kinh', '', 20.7784, 106.718, 0, 'SHOW', '', 1355064953, '', 0, '', '', '', 0),
(337, 1280700000000000000, 'H??£i An', '', 20.8614, 106.68, 0, 'SHOW', '', 1355064959, '', 0, '', '', '', 0),
(338, 1280800000000000000, 'H?»“ng B? ng', '', 20.8747, 106.65, 0, 'SHOW', '', 1355064965, '', 0, '', '', '', 0),
(339, 1280900000000000000, 'Ki???n An', '', 20.8097, 106.635, 0, 'SHOW', '', 1355064971, '', 0, '', '', '', 0),
(340, 1281000000000000000, 'Ki???n Th?»?y', '', 20.7317, 106.664, 0, 'SHOW', '', 1355064977, '', 0, '', '', '', 0),
(341, 1281100000000000000, 'L?? Ch?¢n', '', 20.8548, 106.681, 0, 'SHOW', '', 1355064982, '', 0, '', '', '', 0),
(342, 1281200000000000000, 'Ng?? Quy?»n', '', 20.8579, 106.703, 0, 'SHOW', '', 1355064988, '', 0, '', '', '', 0),
(343, 1281300000000000000, 'Th?»§y Nguy??n', '', 20.9524, 106.653, 0, 'SHOW', '', 1355064997, '', 0, '', '', '', 0),
(344, 1281400000000000000, 'Ti??n L?£ng', '', 20.6925, 106.594, 0, 'SHOW', '', 1355065003, '', 0, '', '', '', 0),
(345, 1281500000000000000, 'VÄ©nh B??£o', '', 20.6893, 106.479, 0, 'SHOW', '', 1355065008, '', 0, '', '', '', 0),
(346, 1290100000000000000, 'Ch?¢u Th? nh', '', 9.92163, 105.807, 0, 'SHOW', '', 1355065045, '', 0, '', '', '', 0),
(347, 1290200000000000000, 'Ch?¢u Th? nh A', '', 9.92075, 105.63, 0, 'SHOW', '', 1355065050, '', 0, '', '', '', 0),
(348, 1290300000000000000, 'Long M?»¹', '', 9.65528, 105.524, 0, 'SHOW', '', 1355065056, '', 0, '', '', '', 0),
(349, 1290400000000000000, 'Ng?£ B??£y', '', 9.82526, 105.817, 0, 'SHOW', '', 1355065062, '', 0, '', '', '', 0),
(350, 1290500000000000000, 'Ph?»?ng Hi?»?p', '', 9.82526, 105.817, 0, 'SHOW', '', 1355065069, '', 0, '', '', '', 0),
(351, 1290600000000000000, 'V?»? Thanh', '', 9.77319, 105.454, 0, 'SHOW', '', 1355065074, '', 0, '', '', '', 0),
(352, 1290700000000000000, 'V?»? Th?»§y', '', 9.74796, 105.506, 0, 'SHOW', '', 1355065079, '', 0, '', '', '', 0),
(353, 1300100000000000000, 'Cao Phong', '', 20.702, 105.331, 0, 'SHOW', '', 1355065113, '', 0, '', '', '', 0),
(354, 1300200000000000000, 'Ä?  B???c', '', 20.8746, 105.252, 0, 'SHOW', '', 1355065118, '', 0, '', '', '', 0),
(355, 1300300000000000000, 'H?²a B?¬nh', '', 20.8306, 105.34, 0, 'SHOW', '', 1355065124, '', 0, '', '', '', 0),
(356, 1300400000000000000, 'Kim B??i', '', 20.6901, 105.524, 0, 'SHOW', '', 1355065131, '', 0, '', '', '', 0),
(358, 1300600000000000000, 'K?»³ SÆ?n', '', 20.8824, 105.357, 0, 'SHOW', '', 1355065143, '', 0, '', '', '', 0),
(359, 1300700000000000000, 'L???c SÆ?n', '', 20.4413, 105.454, 0, 'SHOW', '', 1355065154, '', 0, '', '', '', 0),
(360, 1300800000000000000, 'L???c Th?»§y', '', 20.483, 105.759, 0, 'SHOW', '', 1355065159, '', 0, '', '', '', 0),
(361, 1300900000000000000, 'LÆ°Æ?ng SÆ?n', '', 20.8937, 105.518, 0, 'SHOW', '', 1355065164, '', 0, '', '', '', 0),
(362, 1301000000000000000, 'Mai Ch?¢u', '', 20.6598, 105.092, 0, 'SHOW', '', 1355065169, '', 0, '', '', '', 0),
(363, 1301100000000000000, 'T?¢n L???c', '', 20.6228, 105.243, 0, 'SHOW', '', 1355065174, '', 0, '', '', '', 0),
(364, 1301200000000000000, 'Y??n Th?»§y', '', 20.4032, 105.618, 0, 'SHOW', '', 1355065185, '', 0, '', '', '', 0),
(365, 1310100000000000000, '??n Thi', '', 20.81, 106.099, 0, 'SHOW', '', 1355065203, '', 0, '', '', '', 0),
(366, 1310200000000000000, 'HÆ°ng Y??n', '', 20.8526, 106.017, 0, 'SHOW', '', 1355065208, '', 0, '', '', '', 0),
(367, 1310300000000000000, 'Kho??i Ch?¢u', '', 20.8316, 105.993, 0, 'SHOW', '', 1355065213, '', 0, '', '', '', 0),
(368, 1310400000000000000, 'Kim Ä?»?ng', '', 20.7472, 106.029, 0, 'SHOW', '', 1355065219, '', 0, '', '', '', 0),
(369, 1310500000000000000, 'M?»¹ H? o', '', 20.9257, 106.099, 0, 'SHOW', '', 1355065225, '', 0, '', '', '', 0),
(370, 1310600000000000000, 'Ph?¹ C?»«', '', 20.7083, 106.193, 0, 'SHOW', '', 1355065230, '', 0, '', '', '', 0),
(371, 1310700000000000000, 'Ti??n L?»?', '', 20.6919, 106.123, 0, 'SHOW', '', 1355065236, '', 0, '', '', '', 0),
(372, 1310800000000000000, 'VÄ?n Giang', '', 20.9376, 105.93, 0, 'SHOW', '', 1355065241, '', 0, '', '', '', 0),
(373, 1310900000000000000, 'VÄ?n L?¢m', '', 20.9766, 106.052, 0, 'SHOW', '', 1355065246, '', 0, '', '', '', 0),
(374, 1311000000000000000, 'Y??n M?»¹', '', 20.884, 106.036, 0, 'SHOW', '', 1355065251, '', 0, '', '', '', 0),
(375, 1320100000000000000, 'Cam L?¢m', '', 11.9088, 109.148, 0, 'SHOW', '', 1355065337, '', 0, '', '', '', 0),
(376, 1320200000000000000, 'Cam Ranh', '', 11.9088, 109.148, 0, 'SHOW', '', 1355065342, '', 0, '', '', '', 0),
(377, 1320300000000000000, 'Di??n Kh??nh', '', 12.257, 109.045, 0, 'SHOW', '', 1355065347, '', 0, '', '', '', 0),
(378, 1320400000000000000, 'Kh??nh SÆ?n', '', 12.0249, 108.926, 0, 'SHOW', '', 1355065352, '', 0, '', '', '', 0),
(379, 1320500000000000000, 'Kh??nh VÄ©nh', '', 12.2744, 108.918, 0, 'SHOW', '', 1355065357, '', 0, '', '', '', 0),
(380, 1320600000000000000, 'Nha Trang', '', 12.2388, 109.197, 0, 'SHOW', '', 1355065364, '', 0, '', '', '', 0),
(381, 1320700000000000000, 'Ninh H?²a', '', 12.4861, 109.131, 0, 'SHOW', '', 1355065370, '', 0, '', '', '', 0),
(382, 1320800000000000000, 'TrÆ°?»ng Sa', '', 11.2661, 110.562, 0, 'SHOW', '', 1355065375, '', 0, '', '', '', 0),
(383, 1320900000000000000, 'V???n Ninh', '', 12.7243, 109.263, 0, 'SHOW', '', 1355065380, '', 0, '', '', '', 0),
(384, 1330100000000000000, 'An Bi??n', '', 9.80646, 105.056, 0, 'SHOW', '', 1355065398, '', 0, '', '', '', 0),
(385, 1330200000000000000, 'An Minh', '', 9.66472, 104.95, 0, 'SHOW', '', 1355065403, '', 0, '', '', '', 0),
(386, 1330300000000000000, 'Ch?¢u Th? nh', '', 9.88895, 105.149, 0, 'SHOW', '', 1355065408, '', 0, '', '', '', 0),
(387, 1330400000000000000, 'Gi?»“ng Ri?»ng', '', 9.89848, 105.296, 0, 'SHOW', '', 1355065414, '', 0, '', '', '', 0),
(388, 1330500000000000000, 'G?² Quao', '', 9.75251, 105.29, 0, 'SHOW', '', 1355065419, '', 0, '', '', '', 0),
(389, 1330600000000000000, 'H?  Ti??n', '', 10.3819, 104.49, 0, 'SHOW', '', 1355065424, '', 0, '', '', '', 0),
(390, 1330700000000000000, 'H?²n Ä???t', '', 10.1985, 104.921, 0, 'SHOW', '', 1355065431, '', 0, '', '', '', 0),
(391, 1330800000000000000, 'Ki??n H??£i', '', 9.70695, 104.356, 0, 'SHOW', '', 1355065435, '', 0, '', '', '', 0),
(392, 1330900000000000000, 'Ki??n LÆ°Æ?ng', '', 10.2908, 104.694, 0, 'SHOW', '', 1355065443, '', 0, '', '', '', 0),
(393, 1331000000000000000, 'Ph?? Qu?»?c', '', 10.2289, 103.957, 0, 'SHOW', '', 1355065449, '', 0, '', '', '', 0),
(394, 1331100000000000000, 'R???ch Gi??', '', 10.0215, 105.091, 0, 'SHOW', '', 1355065454, '', 0, '', '', '', 0),
(395, 1331200000000000000, 'T?¢n Hi?»?p', '', 10.1136, 105.281, 0, 'SHOW', '', 1355065460, '', 0, '', '', '', 0),
(396, 1331300000000000000, 'U Minh ThÆ°?»£ng', '', 9.59919, 105.091, 0, 'SHOW', '', 1355065467, '', 0, '', '', '', 0),
(397, 1331400000000000000, 'VÄ©nh Thu??­n', '', 9.51065, 105.26, 0, 'SHOW', '', 1355065474, '', 0, '', '', '', 0),
(398, 1350100000000000000, 'Lai Ch?¢u', '', 22.3555, 103.266, 0, 'SHOW', '', 1355065493, '', 0, '', '', '', 0),
(399, 1350200000000000000, 'MÆ°?»ng T??', '', 22.4004, 102.714, 0, 'SHOW', '', 1355065498, '', 0, '', '', '', 0),
(400, 1350300000000000000, 'Phong Th?»?', '', 22.5419, 103.291, 0, 'SHOW', '', 1355065503, '', 0, '', '', '', 0),
(401, 1350400000000000000, 'Phong Th?»?', '', 22.5419, 103.291, 0, 'SHOW', '', 1355065512, '', 0, '', '', '', 0),
(402, 1350500000000000000, 'S?¬n H?»“', '', 22.3049, 103.313, 0, 'SHOW', '', 1355065519, '', 0, '', '', '', 0),
(403, 1350600000000000000, 'Tam ÄÆ°?»ng', '', 22.3292, 103.605, 0, 'SHOW', '', 1355065526, '', 0, '', '', '', 0),
(404, 1350700000000000000, 'T?¢n Uy??n', '', 22.0869, 103.683, 0, 'SHOW', '', 1355065532, '', 0, '', '', '', 0),
(405, 1350800000000000000, 'Than Uy??n', '', 21.8922, 103.775, 0, 'SHOW', '', 1355065538, '', 0, '', '', '', 0),
(406, 1340100000000000000, 'Ä???k Glei', '', 15.0318, 107.752, 0, 'SHOW', '', 1355065614, '', 0, '', '', '', 0),
(407, 1340200000000000000, 'Ä???k H? ', '', 14.502, 107.918, 0, 'SHOW', '', 1355065621, '', 0, '', '', '', 0),
(408, 1340300000000000000, 'Ä???k T??', '', 14.6614, 107.817, 0, 'SHOW', '', 1355065630, '', 0, '', '', '', 0),
(409, 1340400000000000000, 'Kon Pl??ng', '', 14.7977, 108.285, 0, 'SHOW', '', 1355065635, '', 0, '', '', '', 0),
(410, 1340500000000000000, 'Kon R??«y', '', 14.5608, 108.167, 0, 'SHOW', '', 1355065642, '', 0, '', '', '', 0),
(411, 1340600000000000000, 'Kon Tum', '', 14.3497, 108, 0, 'SHOW', '', 1355065655, '', 0, '', '', '', 0),
(412, 1340700000000000000, 'Ng?»c H?»“i', '', 14.671, 107.622, 0, 'SHOW', '', 1355065662, '', 0, '', '', '', 0),
(413, 1340800000000000000, 'Sa Th??§y', '', 14.4022, 107.796, 0, 'SHOW', '', 1355065669, '', 0, '', '', '', 0),
(414, 1340900000000000000, 'Tu MÆ? R??ng', '', 14.9106, 108.001, 0, 'SHOW', '', 1355065674, '', 0, '', '', '', 0),
(415, 1360100000000000000, 'B???c SÆ?n', '', 21.898, 106.321, 0, 'SHOW', '', 1355065690, '', 0, '', '', '', 0),
(416, 1360200000000000000, 'B?¬nh Gia', '', 21.9549, 106.373, 0, 'SHOW', '', 1355065695, '', 0, '', '', '', 0),
(417, 1360300000000000000, 'Cao L?»?c', '', 21.9036, 106.841, 0, 'SHOW', '', 1355065701, '', 0, '', '', '', 0),
(418, 1360400000000000000, 'Chi LÄ?ng', '', 21.8537, 106.762, 0, 'SHOW', '', 1355065706, '', 0, '', '', '', 0),
(419, 1360500000000000000, 'Ä?¬nh L??­p', '', 21.5464, 107.097, 0, 'SHOW', '', 1355065712, '', 0, '', '', '', 0),
(420, 1360600000000000000, 'H?»?u LÅ©ng', '', 21.566, 106.299, 0, 'SHOW', '', 1355065719, '', 0, '', '', '', 0),
(421, 1360700000000000000, 'L???ng SÆ?n', '', 21.8537, 106.762, 0, 'SHOW', '', 1355065725, '', 0, '', '', '', 0),
(422, 1360800000000000000, 'L?»?c B?¬nh', '', 21.7645, 106.918, 0, 'SHOW', '', 1355065731, '', 0, '', '', '', 0),
(423, 1360900000000000000, 'Tr? ng Ä?»?nh', '', 22.2873, 106.488, 0, 'SHOW', '', 1355065737, '', 0, '', '', '', 0),
(424, 1361000000000000000, 'VÄ?n L?£ng', '', 22.0925, 106.582, 0, 'SHOW', '', 1355065743, '', 0, '', '', '', 0),
(425, 1361100000000000000, 'VÄ?n Quan', '', 21.8629, 106.538, 0, 'SHOW', '', 1355065748, '', 0, '', '', '', 0),
(426, 1370100000000000000, 'B???c H? ', '', 22.5437, 104.295, 0, 'SHOW', '', 1355065770, '', 0, '', '', '', 0),
(427, 1370200000000000000, 'B??£o Th???ng', '', 22.3267, 104.147, 0, 'SHOW', '', 1355065775, '', 0, '', '', '', 0),
(428, 1370300000000000000, 'B??£o Y??n', '', 22.2763, 104.449, 0, 'SHOW', '', 1355065780, '', 0, '', '', '', 0),
(429, 1370400000000000000, 'B??t X??t', '', 22.5435, 103.887, 0, 'SHOW', '', 1355065786, '', 0, '', '', '', 0),
(430, 1370500000000000000, 'L? o Cai', '', 22.2759, 104.193, 0, 'SHOW', '', 1355065791, '', 0, '', '', '', 0),
(431, 1370600000000000000, 'MÆ°?»ng KhÆ°Æ?ng', '', 22.7615, 104.122, 0, 'SHOW', '', 1355065797, '', 0, '', '', '', 0),
(432, 1370700000000000000, 'Sapa', '', 22.3364, 103.844, 0, 'SHOW', '', 1355065829, '', 0, '', '', '', 0),
(433, 1370800000000000000, 'Si Ma Cai', '', 22.666, 104.263, 0, 'SHOW', '', 1355065834, '', 0, '', '', '', 0),
(434, 1370900000000000000, 'VÄ?n B? n', '', 22.0894, 104.193, 0, 'SHOW', '', 1355065840, '', 0, '', '', '', 0),
(435, 1380100000000000000, 'B??£o L?¢m', '', 11.6187, 107.827, 0, 'SHOW', '', 1355065857, '', 0, '', '', '', 0),
(436, 1380200000000000000, 'B??£o L?»?c', '', 11.5306, 107.778, 0, 'SHOW', '', 1355065884, '', 0, '', '', '', 0),
(437, 1380300000000000000, 'C??t Ti??n', '', 11.6903, 107.361, 0, 'SHOW', '', 1355065892, '', 0, '', '', '', 0),
(438, 1380400000000000000, 'Ä??? Huoai', '', 11.4101, 107.645, 0, 'SHOW', '', 1355065898, '', 0, '', '', '', 0),
(439, 1380500000000000000, 'Ä?  L???t', '', 11.9404, 108.458, 0, 'SHOW', '', 1355065904, '', 0, '', '', '', 0),
(440, 1380600000000000000, 'Ä??? T??»h', '', 11.5238, 107.485, 0, 'SHOW', '', 1355065909, '', 0, '', '', '', 0),
(441, 1380700000000000000, 'Äam R??ng', '', 12.0598, 108.095, 0, 'SHOW', '', 1355065915, '', 0, '', '', '', 0),
(442, 1380800000000000000, 'Di Linh', '', 11.5347, 108.095, 0, 'SHOW', '', 1355065925, '', 0, '', '', '', 0),
(443, 1380900000000000000, 'ÄÆ?n DÆ°Æ?ng', '', 11.7452, 108.546, 0, 'SHOW', '', 1355065932, '', 0, '', '', '', 0),
(444, 1381000000000000000, 'Ä?»©c Tr?»ng', '', 11.6419, 108.31, 0, 'SHOW', '', 1355065939, '', 0, '', '', '', 0),
(445, 1381100000000000000, 'L???c DÆ°Æ?ng', '', 12.0257, 108.439, 0, 'SHOW', '', 1355065944, '', 0, '', '', '', 0),
(446, 1381200000000000000, 'L?¢m H? ', '', 11.7907, 108.19, 0, 'SHOW', '', 1355065950, '', 0, '', '', '', 0),
(447, 1390100000000000000, 'B???n L?»©c', '', 10.6316, 106.494, 0, 'SHOW', '', 1355066013, '', 0, '', '', '', 0),
(448, 1390200000000000000, 'C??§n ÄÆ°?»?c', '', 10.5035, 106.603, 0, 'SHOW', '', 1355066019, '', 0, '', '', '', 0),
(449, 1390300000000000000, 'C??§n Giu?»?c', '', 10.6044, 106.672, 0, 'SHOW', '', 1355066026, '', 0, '', '', '', 0),
(450, 1390400000000000000, 'Ch?¢u Th? nh', '', 10.4641, 106.476, 0, 'SHOW', '', 1355066031, '', 0, '', '', '', 0),
(451, 1390500000000000000, 'Ä?»©c H?²a', '', 10.8701, 106.417, 0, 'SHOW', '', 1355066040, '', 0, '', '', '', 0),
(452, 1390600000000000000, 'Ä?»©c Hu?»?', '', 10.8778, 106.276, 0, 'SHOW', '', 1355066045, '', 0, '', '', '', 0),
(453, 1390700000000000000, 'M?»?c H?³a', '', 10.7482, 105.941, 0, 'SHOW', '', 1355066051, '', 0, '', '', '', 0),
(454, 1390800000000000000, 'T?¢n An', '', 10.5311, 106.413, 0, 'SHOW', '', 1355066057, '', 0, '', '', '', 0),
(455, 1390900000000000000, 'T?¢n HÆ°ng', '', 10.8365, 105.662, 0, 'SHOW', '', 1355066063, '', 0, '', '', '', 0),
(456, 1391000000000000000, 'T?¢n Th???nh', '', 10.6034, 106.049, 0, 'SHOW', '', 1355066069, '', 0, '', '', '', 0),
(457, 1391100000000000000, 'T?¢n Tr?»?', '', 10.5082, 106.514, 0, 'SHOW', '', 1355066075, '', 0, '', '', '', 0),
(458, 1391200000000000000, 'Th???nh H?³a', '', 10.6486, 106.176, 0, 'SHOW', '', 1355066081, '', 0, '', '', '', 0),
(459, 1391300000000000000, 'Th?»§ Th?»«a', '', 10.5996, 106.405, 0, 'SHOW', '', 1355066087, '', 0, '', '', '', 0),
(460, 1391400000000000000, 'VÄ©nh HÆ°ng', '', 10.8903, 105.785, 0, 'SHOW', '', 1355066094, '', 0, '', '', '', 0),
(461, 1400100000000000000, 'Giao Th?»§y', '', 20.2314, 106.464, 0, 'SHOW', '', 1355066138, '', 0, '', '', '', 0),
(462, 1400200000000000000, 'H??£i H??­u', '', 20.1569, 106.276, 0, 'SHOW', '', 1355066145, '', 0, '', '', '', 0),
(463, 1400300000000000000, 'M?»¹ L?»?c', '', 20.4416, 106.108, 0, 'SHOW', '', 1355066150, '', 0, '', '', '', 0),
(464, 1400400000000000000, 'Nam Ä?»?nh', '', 20.42, 106.168, 0, 'SHOW', '', 1355066156, '', 0, '', '', '', 0),
(465, 1400500000000000000, 'Nam Tr?»±c', '', 20.3359, 106.217, 0, 'SHOW', '', 1355066161, '', 0, '', '', '', 0),
(466, 1400600000000000000, 'NghÄ©a HÆ°ng', '', 20.0732, 106.182, 0, 'SHOW', '', 1355066167, '', 0, '', '', '', 0),
(467, 1400700000000000000, 'Tr?»±c Ninh', '', 20.2434, 106.217, 0, 'SHOW', '', 1355066173, '', 0, '', '', '', 0),
(468, 1400800000000000000, 'V?»? B??£n', '', 20.3701, 106.099, 0, 'SHOW', '', 1355066178, '', 0, '', '', '', 0),
(469, 1400900000000000000, 'Xu?¢n TrÆ°?»ng', '', 20.2993, 106.358, 0, 'SHOW', '', 1355066184, '', 0, '', '', '', 0),
(470, 1401000000000000000, '? Y??n', '', 20.3685, 105.993, 0, 'SHOW', '', 1355066189, '', 0, '', '', '', 0),
(471, 1410100000000000000, 'Anh SÆ?n', '', 18.9551, 105.34, 0, 'SHOW', '', 1355066213, '', 0, '', '', '', 0),
(472, 1410200000000000000, 'Con Cu??ng', '', 19.0483, 104.882, 0, 'SHOW', '', 1355066219, '', 0, '', '', '', 0),
(473, 1410300000000000000, 'C?»­a L?²', '', 18.8167, 105.717, 0, 'SHOW', '', 1355066224, '', 0, '', '', '', 0),
(474, 1410400000000000000, 'Di?»?n Ch?¢u', '', 19.018, 105.571, 0, 'SHOW', '', 1355066229, '', 0, '', '', '', 0),
(475, 1410500000000000000, 'Ä?? LÆ°Æ?ng', '', 18.8989, 105.304, 0, 'SHOW', '', 1355066234, '', 0, '', '', '', 0),
(476, 1410600000000000000, 'HÆ°ng Nguy??n', '', 18.6632, 105.632, 0, 'SHOW', '', 1355066241, '', 0, '', '', '', 0),
(477, 1410700000000000000, 'K?»³ SÆ?n', '', 19.3855, 104.183, 0, 'SHOW', '', 1355066246, '', 0, '', '', '', 0),
(478, 1410800000000000000, 'Nam Ä? n', '', 18.6983, 105.524, 0, 'SHOW', '', 1355066251, '', 0, '', '', '', 0),
(479, 1410900000000000000, 'Nghi L?»?c', '', 18.8142, 105.584, 0, 'SHOW', '', 1355066256, '', 0, '', '', '', 0),
(480, 1411000000000000000, 'NghÄ©a Ä? n', '', 19.4003, 105.43, 0, 'SHOW', '', 1355066262, '', 0, '', '', '', 0),
(481, 1411100000000000000, 'Qu??? Phong', '', 19.6863, 104.956, 0, 'SHOW', '', 1355066270, '', 0, '', '', '', 0),
(482, 1411200000000000000, 'Qu?»³ Ch?¢u', '', 19.5523, 105.095, 0, 'SHOW', '', 1355066279, '', 0, '', '', '', 0),
(483, 1411300000000000000, 'Qu?»³ H?»£p', '', 19.3203, 105.181, 0, 'SHOW', '', 1355066284, '', 0, '', '', '', 0),
(484, 1411400000000000000, 'Qu?»³nh LÆ°u', '', 19.22, 105.641, 0, 'SHOW', '', 1355066290, '', 0, '', '', '', 0),
(485, 1411500000000000000, 'T?¢n K?»³', '', 19.0407, 105.269, 0, 'SHOW', '', 1355066296, '', 0, '', '', '', 0),
(486, 1411600000000000000, 'Th??i H?²a', '', 19.0461, 105.093, 0, 'SHOW', '', 1355066301, '', 0, '', '', '', 0),
(487, 1411700000000000000, 'Thanh ChÆ°Æ?ng', '', 18.7861, 105.339, 0, 'SHOW', '', 1355066306, '', 0, '', '', '', 0),
(488, 1411800000000000000, 'TÆ°Æ?ng DÆ°Æ?ng', '', 19.264, 104.566, 0, 'SHOW', '', 1355066315, '', 0, '', '', '', 0),
(489, 1411900000000000000, 'Vinh', '', 18.6796, 105.681, 0, 'SHOW', '', 1355066321, '', 0, '', '', '', 0),
(490, 1412000000000000000, 'Y??n Th? nh', '', 19.0007, 105.468, 0, 'SHOW', '', 1355066328, '', 0, '', '', '', 0),
(491, 1420100000000000000, 'Gia Vi?»?n', '', 20.3353, 105.853, 0, 'SHOW', '', 1355066352, '', 0, '', '', '', 0),
(492, 1420200000000000000, 'Hoa LÆ°', '', 20.2488, 105.911, 0, 'SHOW', '', 1355066357, '', 0, '', '', '', 0),
(493, 1420300000000000000, 'Kim SÆ?n', '', 20.0462, 106.099, 0, 'SHOW', '', 1355066364, '', 0, '', '', '', 0),
(494, 1420400000000000000, 'Nho Quan', '', 20.2976, 105.759, 0, 'SHOW', '', 1355066369, '', 0, '', '', '', 0),
(495, 1420500000000000000, 'Ninh B?¬nh', '', 20.2506, 105.974, 0, 'SHOW', '', 1355066375, '', 0, '', '', '', 0),
(496, 1420600000000000000, 'Tam Äi?»?p', '', 20.1457, 105.899, 0, 'SHOW', '', 1355066380, '', 0, '', '', '', 0),
(497, 1420700000000000000, 'Y??n Kh??nh', '', 20.1872, 106.076, 0, 'SHOW', '', 1355066385, '', 0, '', '', '', 0),
(498, 1420800000000000000, 'Y??n M??', '', 20.137, 105.993, 0, 'SHOW', '', 1355066390, '', 0, '', '', '', 0),
(499, 1430100000000000000, 'B??c ?i', '', 11.8334, 108.855, 0, 'SHOW', '', 1355066408, '', 0, '', '', '', 0),
(500, 1430200000000000000, 'Ninh H??£i', '', 11.7032, 109.164, 0, 'SHOW', '', 1355066413, '', 0, '', '', '', 0),
(501, 1430300000000000000, 'Ninh PhÆ°?»?c', '', 11.485, 108.855, 0, 'SHOW', '', 1355066418, '', 0, '', '', '', 0),
(502, 1430400000000000000, 'Ninh SÆ?n', '', 11.6889, 108.736, 0, 'SHOW', '', 1355066423, '', 0, '', '', '', 0),
(503, 1430500000000000000, 'Phan Rang - Th??p Ch? m', '', 11.5826, 108.991, 0, 'SHOW', '', 1355066429, '', 0, '', '', '', 0),
(504, 1430600000000000000, 'Thu??­n B???c', '', 11.7533, 109.069, 0, 'SHOW', '', 1355066433, '', 0, '', '', '', 0),
(505, 1430700000000000000, 'Thu??­n Nam', '', 10.8416, 107.87, 0, 'SHOW', '', 1355066439, '', 0, '', '', '', 0),
(506, 1440100000000000000, 'C??©m Kh??', '', 21.4298, 105.056, 0, 'SHOW', '', 1355066457, '', 0, '', '', '', 0),
(507, 1440200000000000000, 'Äoan H?¹ng', '', 21.6309, 105.176, 0, 'SHOW', '', 1355066463, '', 0, '', '', '', 0),
(508, 1440300000000000000, 'H??? H?²a', '', 21.5638, 105.005, 0, 'SHOW', '', 1355066467, '', 0, '', '', '', 0),
(509, 1440400000000000000, 'L?¢m Thao', '', 21.3243, 105.287, 0, 'SHOW', '', 1355066479, '', 0, '', '', '', 0),
(510, 1440500000000000000, 'Ph?¹ Ninh', '', 21.4753, 105.284, 0, 'SHOW', '', 1355066485, '', 0, '', '', '', 0),
(511, 1440600000000000000, 'Ph?? Th?»', '', 21.4253, 105.231, 0, 'SHOW', '', 1355066489, '', 0, '', '', '', 0),
(512, 1440700000000000000, 'Tam N??ng', '', 21.2859, 105.231, 0, 'SHOW', '', 1355066494, '', 0, '', '', '', 0),
(513, 1440800000000000000, 'T?¢n SÆ?n', '', 21.1665, 104.989, 0, 'SHOW', '', 1355066501, '', 0, '', '', '', 0),
(514, 1440900000000000000, 'Thanh Ba', '', 21.4994, 105.136, 0, 'SHOW', '', 1355066506, '', 0, '', '', '', 0),
(515, 1441000000000000000, 'Thanh SÆ?n', '', 21.2173, 105.187, 0, 'SHOW', '', 1355066513, '', 0, '', '', '', 0),
(516, 1441100000000000000, 'Thanh Th?»§y', '', 21.1443, 105.287, 0, 'SHOW', '', 1355066518, '', 0, '', '', '', 0),
(517, 1441200000000000000, 'Vi?»?t Tr?¬', '', 21.3055, 105.428, 0, 'SHOW', '', 1355066524, '', 0, '', '', '', 0),
(518, 1441300000000000000, 'Y??n L??­p', '', 21.3558, 105.07, 0, 'SHOW', '', 1355066529, '', 0, '', '', '', 0),
(519, 1460100000000000000, 'B?»? Tr???ch', '', 17.5047, 106.299, 0, 'SHOW', '', 1355066559, '', 0, '', '', '', 0),
(520, 1460200000000000000, 'Ä?»“ng H?»?i', '', 17.4659, 106.598, 0, 'SHOW', '', 1355066565, '', 0, '', '', '', 0),
(521, 1460300000000000000, 'L?»? Th?»§y', '', 17.1065, 106.676, 0, 'SHOW', '', 1355066570, '', 0, '', '', '', 0),
(522, 1460400000000000000, 'Minh H?³a', '', 17.8167, 105.917, 0, 'SHOW', '', 1355066575, '', 0, '', '', '', 0),
(523, 1460500000000000000, 'Qu??£ng Ninh', '', 17.2395, 106.462, 0, 'SHOW', '', 1355066581, '', 0, '', '', '', 0),
(524, 1460600000000000000, 'Qu??£ng Tr???ch', '', 17.864, 106.393, 0, 'SHOW', '', 1355066585, '', 0, '', '', '', 0),
(525, 1460700000000000000, 'Tuy??n H?³a', '', 17.9319, 105.972, 0, 'SHOW', '', 1355066592, '', 0, '', '', '', 0),
(526, 1570100000000000000, 'A LÆ°?»?i', '', 16.2899, 107.237, 0, 'SHOW', '', 1355066610, '', 0, '', '', '', 0),
(527, 1570200000000000000, 'Hu???', '', 16.4635, 107.585, 0, 'SHOW', '', 1355066616, '', 0, '', '', '', 0),
(528, 1570300000000000000, 'HÆ°Æ?ng Th?»§y', '', 16.4203, 107.67, 0, 'SHOW', '', 1355066620, '', 0, '', '', '', 0),
(529, 1570400000000000000, 'HÆ°Æ?ng Tr? ', '', 16.417, 107.417, 0, 'SHOW', '', 1355066626, '', 0, '', '', '', 0),
(530, 1570500000000000000, 'Nam Ä??ng', '', 16.125, 107.671, 0, 'SHOW', '', 1355066632, '', 0, '', '', '', 0),
(531, 1570600000000000000, 'Phong Äi?»n', '', 16.5031, 107.338, 0, 'SHOW', '', 1355066638, '', 0, '', '', '', 0),
(532, 1570700000000000000, 'Ph?? L?»?c', '', 16.2819, 107.864, 0, 'SHOW', '', 1355066644, '', 0, '', '', '', 0),
(533, 1570800000000000000, 'Ph?? Vang', '', 16.4912, 107.74, 0, 'SHOW', '', 1355066650, '', 0, '', '', '', 0),
(534, 1570900000000000000, 'Qu??£ng Äi?»n', '', 16.5902, 107.515, 0, 'SHOW', '', 1355066657, '', 0, '', '', '', 0),
(535, 1150100000000000000, 'C??©m L?»?', '', 16.0154, 108.196, 0, 'SHOW', '', 1355066675, '', 0, '', '', '', 0),
(536, 1150200000000000000, 'H??£i Ch?¢u', '', 16.0472, 108.22, 0, 'SHOW', '', 1355066680, '', 0, '', '', '', 0),
(537, 1150300000000000000, 'H?²a Vang', '', 16.0586, 108.024, 0, 'SHOW', '', 1355066685, '', 0, '', '', '', 0),
(538, 1150400000000000000, 'Ho? ng Sa', '', 16.2013, 111.674, 0, 'SHOW', '', 1355066690, '', 0, '', '', '', 0),
(539, 1150500000000000000, 'Li??n Chi?»?u', '', 16.1532, 108.107, 0, 'SHOW', '', 1355066701, '', 0, '', '', '', 0),
(540, 1150600000000000000, 'NgÅ© H? nh SÆ?n', '', 16.0453, 108.239, 0, 'SHOW', '', 1355066708, '', 0, '', '', '', 0),
(541, 1150700000000000000, 'SÆ?n Tr? ', '', 16.107, 108.252, 0, 'SHOW', '', 1355066714, '', 0, '', '', '', 0),
(542, 1150800000000000000, 'Thanh Kh??', '', 16.0642, 108.187, 0, 'SHOW', '', 1355066719, '', 0, '', '', '', 0),
(543, 1470100000000000000, 'B???c Tr?  My', '', 15.3203, 108.214, 0, 'SHOW', '', 1355066741, '', 0, '', '', '', 0),
(544, 1470200000000000000, 'Ä???i L?»?c', '', 15.8365, 107.977, 0, 'SHOW', '', 1355066746, '', 0, '', '', '', 0),
(545, 1470300000000000000, 'Äi?»?n B? n', '', 15.9065, 108.214, 0, 'SHOW', '', 1355066754, '', 0, '', '', '', 0),
(546, 1470400000000000000, 'Ä??ng Giang', '', 15.9264, 107.716, 0, 'SHOW', '', 1355066759, '', 0, '', '', '', 0),
(547, 1470500000000000000, 'Duy Xuy??n', '', 15.8408, 108.284, 0, 'SHOW', '', 1355066764, '', 0, '', '', '', 0),
(548, 1470600000000000000, 'Hi?»?p Ä?»©c', '', 15.5591, 108.081, 0, 'SHOW', '', 1355066770, '', 0, '', '', '', 0),
(549, 1470700000000000000, 'H?»?i An', '', 15.8801, 108.338, 0, 'SHOW', '', 1355066774, '', 0, '', '', '', 0),
(550, 1470800000000000000, 'Nam Giang', '', 15.6629, 107.622, 0, 'SHOW', '', 1355066780, '', 0, '', '', '', 0),
(551, 1470900000000000000, 'Nam Tr?  My', '', 15.0827, 108.095, 0, 'SHOW', '', 1355066785, '', 0, '', '', '', 0),
(552, 1471000000000000000, 'N??ng SÆ?n', '', 15.6558, 107.977, 0, 'SHOW', '', 1355066791, '', 0, '', '', '', 0),
(553, 1471100000000000000, 'N??i Th? nh', '', 15.4275, 108.638, 0, 'SHOW', '', 1355066800, '', 0, '', '', '', 0),
(554, 1471200000000000000, 'Ph?? Ninh', '', 15.5743, 108.404, 0, 'SHOW', '', 1355066808, '', 0, '', '', '', 0),
(555, 1471300000000000000, 'PhÆ°?»?c SÆ?n', '', 15.3763, 107.811, 0, 'SHOW', '', 1355066814, '', 0, '', '', '', 0),
(556, 1471400000000000000, 'Qu??? SÆ?n', '', 15.6848, 108.167, 0, 'SHOW', '', 1355066820, '', 0, '', '', '', 0),
(557, 1471500000000000000, 'Tam K?»³', '', 15.5667, 108.483, 0, 'SHOW', '', 1355066827, '', 0, '', '', '', 0),
(558, 1471600000000000000, 'T?¢y Giang', '', 15.8853, 107.489, 0, 'SHOW', '', 1355066832, '', 0, '', '', '', 0),
(559, 1471700000000000000, 'ThÄ?ng B?¬nh', '', 15.689, 108.38, 0, 'SHOW', '', 1355066839, '', 0, '', '', '', 0),
(560, 1471800000000000000, 'Ti??n PhÆ°?»?c', '', 15.4964, 108.261, 0, 'SHOW', '', 1355066846, '', 0, '', '', '', 0),
(561, 1480100000000000000, 'Ba TÆ?', '', 14.7635, 108.733, 0, 'SHOW', '', 1355066865, '', 0, '', '', '', 0),
(562, 1480200000000000000, 'B?¬nh SÆ?n', '', 15.3167, 108.784, 0, 'SHOW', '', 1355066869, '', 0, '', '', '', 0),
(563, 1480300000000000000, 'Ä?»©c Ph?»?', '', 14.8116, 108.959, 0, 'SHOW', '', 1355066874, '', 0, '', '', '', 0),
(564, 1480400000000000000, 'L?½ SÆ?n', '', 15.3823, 109.123, 0, 'SHOW', '', 1355066879, '', 0, '', '', '', 0),
(565, 1480500000000000000, 'Minh Long', '', 14.9659, 108.689, 0, 'SHOW', '', 1355066884, '', 0, '', '', '', 0),
(566, 1480600000000000000, 'M?»? Ä?»©c', '', 14.9351, 108.888, 0, 'SHOW', '', 1355066889, '', 0, '', '', '', 0),
(567, 1480700000000000000, 'NghÄ©a H? nh', '', 15.0027, 108.784, 0, 'SHOW', '', 1355066894, '', 0, '', '', '', 0),
(568, 1480800000000000000, 'Qu??£ng Ng?£i', '', 15.1238, 108.812, 0, 'SHOW', '', 1355066900, '', 0, '', '', '', 0),
(569, 1480900000000000000, 'SÆ?n H? ', '', 15.0432, 108.57, 0, 'SHOW', '', 1355066905, '', 0, '', '', '', 0),
(570, 1481000000000000000, 'SÆ?n T?¢y', '', 14.9488, 108.356, 0, 'SHOW', '', 1355066911, '', 0, '', '', '', 0),
(571, 1481100000000000000, 'SÆ?n T?»?nh', '', 15.1499, 108.799, 0, 'SHOW', '', 1355066917, '', 0, '', '', '', 0),
(572, 1481200000000000000, 'T?¢y Tr? ', '', 15.1734, 108.356, 0, 'SHOW', '', 1355066921, '', 0, '', '', '', 0),
(573, 1481300000000000000, 'Tr?  B?»“ng', '', 15.252, 108.521, 0, 'SHOW', '', 1355066927, '', 0, '', '', '', 0),
(574, 1481400000000000000, 'TÆ° NghÄ©a', '', 15.1066, 108.748, 0, 'SHOW', '', 1355066934, '', 0, '', '', '', 0),
(575, 1100100000000000000, 'An L?£o', '', 14.5615, 108.908, 0, 'SHOW', '', 1355066952, '', 0, '', '', '', 0),
(576, 1100200000000000000, 'An NhÆ?n', '', 13.8862, 109.107, 0, 'SHOW', '', 1355066957, '', 0, '', '', '', 0),
(577, 1100300000000000000, 'Ho? i ??n', '', 14.304, 108.855, 0, 'SHOW', '', 1355066961, '', 0, '', '', '', 0),
(578, 1100400000000000000, 'Ho? i NhÆ?n', '', 14.4287, 109.009, 0, 'SHOW', '', 1355066966, '', 0, '', '', '', 0),
(579, 1100500000000000000, 'Ph?¹ C??t', '', 13.9492, 109.046, 0, 'SHOW', '', 1355066971, '', 0, '', '', '', 0),
(580, 1100600000000000000, 'Ph?¹ M?»¹', '', 14.2158, 109.117, 0, 'SHOW', '', 1355066976, '', 0, '', '', '', 0),
(581, 1100700000000000000, 'Quy NhÆ?n', '', 13.783, 109.22, 0, 'SHOW', '', 1355066982, '', 0, '', '', '', 0),
(582, 1100800000000000000, 'T?¢y SÆ?n', '', 13.9479, 108.855, 0, 'SHOW', '', 1355066988, '', 0, '', '', '', 0),
(583, 1100900000000000000, 'Tuy PhÆ°?»?c', '', 13.8263, 109.161, 0, 'SHOW', '', 1355066994, '', 0, '', '', '', 0),
(584, 1101000000000000000, 'V?¢n Canh', '', 13.6162, 108.995, 0, 'SHOW', '', 1355066999, '', 0, '', '', '', 0),
(585, 1101100000000000000, 'VÄ©nh Th???nh', '', 14.1137, 108.782, 0, 'SHOW', '', 1355067007, '', 0, '', '', '', 0),
(586, 1450100000000000000, 'Ä??ng H?²a', '', 12.9581, 109.355, 0, 'SHOW', '', 1355067033, '', 0, '', '', '', 0),
(587, 1450200000000000000, 'Ä?»“ng Xu?¢n', '', 13.4083, 108.95, 0, 'SHOW', '', 1355067037, '', 0, '', '', '', 0),
(588, 1450300000000000000, 'Ph?? H?²a', '', 13.0607, 109.164, 0, 'SHOW', '', 1355067044, '', 0, '', '', '', 0),
(589, 1450400000000000000, 'SÆ?n H?²a', '', 13.1432, 108.95, 0, 'SHOW', '', 1355067052, '', 0, '', '', '', 0),
(590, 1450500000000000000, 'S??ng C??§u', '', 13.5, 109.167, 0, 'SHOW', '', 1355067060, '', 0, '', '', '', 0),
(591, 1450600000000000000, 'S??ng Hinh', '', 12.8786, 108.95, 0, 'SHOW', '', 1355067067, '', 0, '', '', '', 0),
(592, 1450700000000000000, 'T?¢y H?²a', '', 12.9286, 109.164, 0, 'SHOW', '', 1355067073, '', 0, '', '', '', 0),
(593, 1450800000000000000, 'Tuy An', '', 13.2977, 109.236, 0, 'SHOW', '', 1355067079, '', 0, '', '', '', 0),
(594, 1450900000000000000, 'Tuy H?²a', '', 13.0822, 109.316, 0, 'SHOW', '', 1355067086, '', 0, '', '', '', 0),
(595, 1490100000000000000, 'Ba Ch??½', '', 21.2731, 107.296, 0, 'SHOW', '', 1355067115, '', 0, '', '', '', 0),
(596, 1490200000000000000, 'B?¬nh Li??u', '', 21.5243, 107.4, 0, 'SHOW', '', 1355067118, '', 0, '', '', '', 0),
(597, 1490300000000000000, 'C??©m Ph??£', '', 21.0167, 107.317, 0, 'SHOW', '', 1355067125, '', 0, '', '', '', 0),
(598, 1490400000000000000, 'C?? T??', '', 21.0088, 107.798, 0, 'SHOW', '', 1355067131, '', 0, '', '', '', 0),
(599, 1490500000000000000, 'Ä??§m H? ', '', 21.355, 107.595, 0, 'SHOW', '', 1355067151, '', 0, '', '', '', 0),
(600, 1490600000000000000, 'Ä??ng Tri?»u', '', 21.0958, 106.606, 0, 'SHOW', '', 1355067157, '', 0, '', '', '', 0),
(601, 1490700000000000000, 'H??? Long', '', 20.9712, 107.045, 0, 'SHOW', '', 1355067163, '', 0, '', '', '', 0),
(602, 1490800000000000000, 'H??£i H? ', '', 21.4182, 107.716, 0, 'SHOW', '', 1355067176, '', 0, '', '', '', 0),
(603, 1490900000000000000, 'Ho? nh B?»“', '', 21.0552, 107.041, 0, 'SHOW', '', 1355067184, '', 0, '', '', '', 0),
(604, 1491000000000000000, 'M?³ng C??i', '', 21.5333, 107.967, 0, 'SHOW', '', 1355067189, '', 0, '', '', '', 0),
(605, 1491100000000000000, 'Ti??n Y??n', '', 21.3348, 107.394, 0, 'SHOW', '', 1355067193, '', 0, '', '', '', 0),
(606, 1491200000000000000, 'U??ng B?­', '', 21.0365, 106.782, 0, 'SHOW', '', 1355067199, '', 0, '', '', '', 0),
(607, 1491300000000000000, 'V?¢n Ä?»“n', '', 21.0694, 107.42, 0, 'SHOW', '', 1355067205, '', 0, '', '', '', 0),
(608, 1491400000000000000, 'Y??n HÆ°ng', '', 20.917, 106.833, 0, 'SHOW', '', 1355067211, '', 0, '', '', '', 0),
(609, 1500100000000000000, 'Cam L?»?', '', 16.7837, 106.983, 0, 'SHOW', '', 1355067226, '', 0, '', '', '', 0),
(610, 1500200000000000000, 'C?»“n C?»', '', 16.8266, 107.114, 0, 'SHOW', '', 1355067232, '', 0, '', '', '', 0),
(611, 1500300000000000000, 'Äa Kr??ng', '', 16.6587, 106.841, 0, 'SHOW', '', 1355067236, '', 0, '', '', '', 0),
(612, 1500400000000000000, 'Ä??ng H? ', '', 16.8303, 107.097, 0, 'SHOW', '', 1355067241, '', 0, '', '', '', 0),
(613, 1500500000000000000, 'Gio Linh', '', 16.9166, 107.03, 0, 'SHOW', '', 1355067246, '', 0, '', '', '', 0),
(614, 1500600000000000000, 'H??£i LÄ?ng', '', 16.714, 107.267, 0, 'SHOW', '', 1355067252, '', 0, '', '', '', 0),
(615, 1500700000000000000, 'HÆ°?»?ng H?³a', '', 16.6495, 106.676, 0, 'SHOW', '', 1355067258, '', 0, '', '', '', 0),
(616, 1500800000000000000, 'Qu??£ng Tr?»?', '', 16.7017, 107.154, 0, 'SHOW', '', 1355067262, '', 0, '', '', '', 0),
(617, 1500900000000000000, 'Tri?»?u Phong', '', 16.8092, 107.219, 0, 'SHOW', '', 1355067268, '', 0, '', '', '', 0),
(618, 1501000000000000000, 'VÄ©nh Linh', '', 17.0567, 107.019, 0, 'SHOW', '', 1355067275, '', 0, '', '', '', 0),
(619, 1510100000000000000, 'Ch?¢u Th? nh', '', 9.68097, 105.899, 0, 'SHOW', '', 1355067292, '', 0, '', '', '', 0),
(620, 1510200000000000000, 'C?¹ Lao Dung', '', 9.67178, 106.149, 0, 'SHOW', '', 1355067297, '', 0, '', '', '', 0),
(621, 1510300000000000000, 'K??? S??ch', '', 9.76907, 105.976, 0, 'SHOW', '', 1355067302, '', 0, '', '', '', 0),
(622, 1510400000000000000, 'Long Ph??', '', 9.57343, 106.123, 0, 'SHOW', '', 1355067307, '', 0, '', '', '', 0),
(623, 1510500000000000000, 'M?»¹ T??', '', 9.5991, 105.806, 0, 'SHOW', '', 1355067316, '', 0, '', '', '', 0),
(624, 1510600000000000000, 'M?»¹ Xuy??n', '', 9.55289, 105.988, 0, 'SHOW', '', 1355067322, '', 0, '', '', '', 0),
(625, 1510700000000000000, 'Ng?£ NÄ?m', '', 9.56107, 105.606, 0, 'SHOW', '', 1355067326, '', 0, '', '', '', 0),
(626, 1510800000000000000, 'S?³c TrÄ?ng', '', 9.61737, 105.876, 0, 'SHOW', '', 1355067336, '', 0, '', '', '', 0),
(627, 1510900000000000000, 'Th???nh Tr?»?', '', 9.46391, 105.7, 0, 'SHOW', '', 1355067342, '', 0, '', '', '', 0),
(628, 1511000000000000000, 'Tr??§n Ä?»', '', 9.52139, 106.199, 0, 'SHOW', '', 1355067350, '', 0, '', '', '', 0),
(629, 1511100000000000000, 'VÄ©nh Ch?¢u', '', 9.32496, 105.98, 0, 'SHOW', '', 1355067357, '', 0, '', '', '', 0),
(630, 1520100000000000000, 'B???c Y??n', '', 21.2452, 104.438, 0, 'SHOW', '', 1355067375, '', 0, '', '', '', 0),
(631, 1520200000000000000, 'Mai SÆ?n', '', 21.1219, 104.054, 0, 'SHOW', '', 1355067380, '', 0, '', '', '', 0),
(632, 1520300000000000000, 'M?»?c Ch?¢u', '', 20.8429, 104.643, 0, 'SHOW', '', 1355067385, '', 0, '', '', '', 0),
(633, 1520400000000000000, 'MÆ°?»ng La', '', 21.4951, 104.054, 0, 'SHOW', '', 1355067390, '', 0, '', '', '', 0),
(634, 1520500000000000000, 'Ph?¹ Y??n', '', 21.2594, 104.655, 0, 'SHOW', '', 1355067395, '', 0, '', '', '', 0),
(635, 1520600000000000000, 'Qu?»³nh Nhai', '', 21.7132, 103.683, 0, 'SHOW', '', 1355067400, '', 0, '', '', '', 0),
(636, 1520700000000000000, 'SÆ?n La', '', 21.327, 103.914, 0, 'SHOW', '', 1355067406, '', 0, '', '', '', 0),
(637, 1520800000000000000, 'S??ng M?£', '', 21.053, 103.749, 0, 'SHOW', '', 1355067412, '', 0, '', '', '', 0),
(638, 1520900000000000000, 'S?»?p C?»?p', '', 20.9406, 103.599, 0, 'SHOW', '', 1355067418, '', 0, '', '', '', 0),
(639, 1521000000000000000, 'Thu??­n Ch?¢u', '', 21.3901, 103.636, 0, 'SHOW', '', 1355067425, '', 0, '', '', '', 0),
(640, 1521100000000000000, 'Y??n Ch?¢u', '', 21.0456, 104.301, 0, 'SHOW', '', 1355067431, '', 0, '', '', '', 0),
(641, 1550100000000000000, 'Ä??ng HÆ°ng', '', 20.5641, 106.37, 0, 'SHOW', '', 1355067448, '', 0, '', '', '', 0),
(642, 1550200000000000000, 'HÆ°ng H? ', '', 20.593, 106.22, 0, 'SHOW', '', 1355067454, '', 0, '', '', '', 0),
(643, 1550300000000000000, 'Ki???n XÆ°Æ?ng', '', 20.4208, 106.417, 0, 'SHOW', '', 1355067459, '', 0, '', '', '', 0),
(644, 1550400000000000000, 'Qu?»³nh Ph?»?', '', 20.6566, 106.37, 0, 'SHOW', '', 1355067464, '', 0, '', '', '', 0),
(645, 1550500000000000000, 'Th??i B?¬nh', '', 20.4464, 106.337, 0, 'SHOW', '', 1355067469, '', 0, '', '', '', 0),
(646, 1550600000000000000, 'Th??i Th?»?y', '', 20.5504, 106.511, 0, 'SHOW', '', 1355067475, '', 0, '', '', '', 0),
(647, 1550700000000000000, 'Ti?»n H??£i', '', 20.4026, 106.501, 0, 'SHOW', '', 1355067481, '', 0, '', '', '', 0),
(648, 1550800000000000000, 'VÅ© ThÆ°', '', 20.4344, 106.276, 0, 'SHOW', '', 1355067488, '', 0, '', '', '', 0),
(649, 1530100000000000000, 'B???n C??§u', '', 11.1506, 106.088, 0, 'SHOW', '', 1355068519, '', 0, '', '', '', 0),
(650, 1530200000000000000, 'Ch?¢u Th? nh', '', 11.3081, 106.017, 0, 'SHOW', '', 1355068524, '', 0, '', '', '', 0),
(651, 1530300000000000000, 'DÆ°Æ?ng Minh Ch?¢u', '', 11.3596, 106.276, 0, 'SHOW', '', 1355068529, '', 0, '', '', '', 0),
(652, 1530400000000000000, 'G?² D??§u', '', 11.0887, 106.267, 0, 'SHOW', '', 1355068534, '', 0, '', '', '', 0),
(653, 1530500000000000000, 'H?²a Th? nh', '', 11.2681, 106.146, 0, 'SHOW', '', 1355068539, '', 0, '', '', '', 0),
(654, 1530600000000000000, 'T?¢n Bi??n', '', 11.5449, 106.011, 0, 'SHOW', '', 1355068546, '', 0, '', '', '', 0),
(655, 1530700000000000000, 'T?¢n Ch?¢u', '', 11.5495, 106.173, 0, 'SHOW', '', 1355068551, '', 0, '', '', '', 0),
(656, 1530800000000000000, 'T?¢y Ninh', '', 11.3675, 106.119, 0, 'SHOW', '', 1355068557, '', 0, '', '', '', 0),
(657, 1530900000000000000, 'Tr??£ng B? ng', '', 11.0475, 106.37, 0, 'SHOW', '', 1355068563, '', 0, '', '', '', 0),
(658, 1560100000000000000, 'Ä???i T?»«', '', 21.6278, 105.638, 0, 'SHOW', '', 1355068607, '', 0, '', '', '', 0),
(659, 1560200000000000000, 'Ä?»?nh H?³a', '', 21.888, 105.618, 0, 'SHOW', '', 1355068613, '', 0, '', '', '', 0),
(660, 1560300000000000000, 'Ä?»“ng H?»·', '', 21.6286, 105.899, 0, 'SHOW', '', 1355068625, '', 0, '', '', '', 0),
(661, 1560400000000000000, 'Ph?»? Y??n', '', 21.4139, 105.849, 0, 'SHOW', '', 1355068631, '', 0, '', '', '', 0),
(662, 1560500000000000000, 'Ph?? B?¬nh', '', 21.485, 105.946, 0, 'SHOW', '', 1355068636, '', 0, '', '', '', 0),
(663, 1560600000000000000, 'Ph?? LÆ°Æ?ng', '', 21.7861, 105.712, 0, 'SHOW', '', 1355068642, '', 0, '', '', '', 0),
(664, 1560700000000000000, 'S??ng C??ng', '', 21.4758, 105.823, 0, 'SHOW', '', 1355068659, '', 0, '', '', '', 0),
(665, 1560800000000000000, 'Th??i Nguy??n', '', 21.5672, 105.825, 0, 'SHOW', '', 1355068663, '', 0, '', '', '', 0),
(666, 1560900000000000000, 'V?µ Nhai', '', 21.7793, 106.017, 0, 'SHOW', '', 1355068670, '', 0, '', '', '', 0),
(667, 1540100000000000000, 'B?? ThÆ°?»?c', '', 20.3653, 105.266, 0, 'SHOW', '', 1355068686, '', 0, '', '', '', 0),
(668, 1540200000000000000, 'B?»?m SÆ?n', '', 20.0781, 105.86, 0, 'SHOW', '', 1355068692, '', 0, '', '', '', 0),
(669, 1540300000000000000, 'C??©m Th?»§y', '', 20.211, 105.468, 0, 'SHOW', '', 1355068696, '', 0, '', '', '', 0),
(670, 1540400000000000000, 'Ä??ng SÆ?n', '', 20.092, 105.917, 0, 'SHOW', '', 1355068702, '', 0, '', '', '', 0),
(671, 1540500000000000000, 'H?  Trung', '', 20.0617, 105.806, 0, 'SHOW', '', 1355068708, '', 0, '', '', '', 0),
(672, 1540600000000000000, 'H??­u L?»?c', '', 19.9122, 105.891, 0, 'SHOW', '', 1355068713, '', 0, '', '', '', 0),
(673, 1540700000000000000, 'Ho??±ng H?³a', '', 19.826, 105.853, 0, 'SHOW', '', 1355068720, '', 0, '', '', '', 0),
(674, 1540800000000000000, 'Lang Ch??nh', '', 20.1549, 105.239, 0, 'SHOW', '', 1355068725, '', 0, '', '', '', 0),
(675, 1540900000000000000, 'MÆ°?»ng L??t', '', 20.5201, 104.592, 0, 'SHOW', '', 1355068732, '', 0, '', '', '', 0),
(676, 1541000000000000000, 'Nga SÆ?n', '', 19.9982, 105.993, 0, 'SHOW', '', 1355068739, '', 0, '', '', '', 0),
(677, 1541100000000000000, 'S??§m SÆ?n', '', 19.7384, 105.899, 0, 'SHOW', '', 1355068744, '', 0, '', '', '', 0),
(678, 1541200000000000000, 'Thanh H?³a', '', 19.8067, 105.785, 0, 'SHOW', '', 1355068750, '', 0, '', '', '', 0),
(679, 1580100000000000000, 'C??i B??', '', 10.3719, 105.946, 0, 'SHOW', '', 1355068764, '', 0, '', '', '', 0),
(680, 1580200000000000000, 'Cai L??­y', '', 10.4287, 106.111, 0, 'SHOW', '', 1355068769, '', 0, '', '', '', 0),
(681, 1580300000000000000, 'Ch?¢u Th? nh', '', 10.4009, 106.229, 0, 'SHOW', '', 1355068774, '', 0, '', '', '', 0),
(682, 1580400000000000000, 'Ch?»£ G???o', '', 10.352, 106.466, 0, 'SHOW', '', 1355068778, '', 0, '', '', '', 0),
(683, 1580500000000000000, 'G?² C??ng', '', 10.3667, 106.667, 0, 'SHOW', '', 1355068785, '', 0, '', '', '', 0),
(684, 1580600000000000000, 'G?² C??ng Ä??ng', '', 10.3737, 106.747, 0, 'SHOW', '', 1355068791, '', 0, '', '', '', 0),
(685, 1580700000000000000, 'G?² C??ng T?¢y', '', 10.3379, 106.606, 0, 'SHOW', '', 1355068796, '', 0, '', '', '', 0),
(686, 1580800000000000000, 'M?»¹ Tho', '', 10.3765, 106.344, 0, 'SHOW', '', 1355068801, '', 0, '', '', '', 0),
(687, 1580900000000000000, 'T?¢n Ph?? Ä??ng', '', 10.2462, 106.7, 0, 'SHOW', '', 1355068815, '', 0, '', '', '', 0),
(688, 1581000000000000000, 'T?¢n PhÆ°?»?c', '', 10.4675, 106.718, 0, 'SHOW', '', 1355068818, '', 0, '', '', '', 0),
(689, 1590100000000000000, 'B?¬nh Ch??nh', '', 10.7431, 106.547, 0, 'SHOW', '', 1355068837, '', 0, '', '', '', 0),
(690, 1590200000000000000, 'B?¬nh T?¢n', '', 10.8494, 106.754, 0, 'SHOW', '', 1355068843, '', 0, '', '', '', 0),
(691, 1590300000000000000, 'B?¬nh Th???nh', '', 10.8106, 106.709, 0, 'SHOW', '', 1355068850, '', 0, '', '', '', 0),
(692, 1590400000000000000, 'C??§n Gi?»', '', 10.5083, 106.864, 0, 'SHOW', '', 1355068855, '', 0, '', '', '', 0),
(693, 1590500000000000000, 'C?»§ Chi', '', 10.996, 106.511, 0, 'SHOW', '', 1355068864, '', 0, '', '', '', 0),
(694, 1590600000000000000, 'G?² V???p', '', 10.8398, 106.67, 0, 'SHOW', '', 1355068868, '', 0, '', '', '', 0),
(695, 1590700000000000000, 'H?³c M??n', '', 10.8864, 106.592, 0, 'SHOW', '', 1355068874, '', 0, '', '', '', 0),
(696, 1590800000000000000, 'Nh?  B??', '', 10.6944, 106.741, 0, 'SHOW', '', 1355068881, '', 0, '', '', '', 0),
(697, 1590900000000000000, 'Ph?? Nhu??­n', '', 10.7985, 106.679, 0, 'SHOW', '', 1355068887, '', 0, '', '', '', 0),
(698, 1591000000000000000, 'Qu??­n 1', '', 10.7796, 106.699, 0, 'SHOW', '', 1355068892, '', 0, '', '', '', 0),
(699, 1591100000000000000, 'Qu??­n 10', '', 10.7634, 106.668, 0, 'SHOW', '', 1355068898, '', 0, '', '', '', 0),
(700, 1591200000000000000, 'Qu??­n 11', '', 10.762, 106.65, 0, 'SHOW', '', 1355068905, '', 0, '', '', '', 0),
(701, 1591300000000000000, 'Qu??­n 12', '', 10.8732, 106.659, 0, 'SHOW', '', 1355068911, '', 0, '', '', '', 0),
(702, 1591400000000000000, 'Qu??­n 2', '', 10.7968, 106.759, 0, 'SHOW', '', 1355068918, '', 0, '', '', '', 0),
(703, 1591500000000000000, 'Qu??­n 3', '', 10.7818, 106.685, 0, 'SHOW', '', 1355068924, '', 0, '', '', '', 0),
(704, 1591600000000000000, 'Qu??­n 4', '', 10.7591, 106.703, 0, 'SHOW', '', 1355068929, '', 0, '', '', '', 0),
(705, 1591700000000000000, 'Qu??­n 5', '', 10.7556, 106.667, 0, 'SHOW', '', 1355068935, '', 0, '', '', '', 0),
(706, 1591800000000000000, 'Qu??­n 6', '', 10.7437, 106.635, 0, 'SHOW', '', 1355068942, '', 0, '', '', '', 0),
(707, 1591900000000000000, 'Qu??­n 7', '', 10.7385, 106.729, 0, 'SHOW', '', 1355068948, '', 0, '', '', '', 0),
(708, 1592000000000000000, 'Qu??­n 8', '', 10.7299, 106.638, 0, 'SHOW', '', 1355068954, '', 0, '', '', '', 0),
(709, 1592100000000000000, 'Qu??­n 9', '', 10.7876, 106.84, 0, 'SHOW', '', 1355068960, '', 0, '', '', '', 0),
(710, 1592200000000000000, 'T?¢n B?¬nh', '', 10.8084, 106.647, 0, 'SHOW', '', 1355068968, '', 0, '', '', '', 0),
(711, 1592300000000000000, 'T?¢n Ph??', '', 10.7988, 106.623, 0, 'SHOW', '', 1355068975, '', 0, '', '', '', 0),
(712, 1592400000000000000, 'Th?»§ Ä?»©c', '', 10.8494, 106.754, 0, 'SHOW', '', 1355068980, '', 0, '', '', '', 0),
(713, 1600100000000000000, 'C? ng Long', '', 9.96741, 106.229, 0, 'SHOW', '', 1355068998, '', 0, '', '', '', 0),
(714, 1600200000000000000, 'C??§u K??', '', 9.88789, 106.088, 0, 'SHOW', '', 1355069003, '', 0, '', '', '', 0),
(715, 1600300000000000000, 'C??§u Ngang', '', 9.78305, 106.464, 0, 'SHOW', '', 1355069012, '', 0, '', '', '', 0),
(716, 1600400000000000000, 'Ch?¢u Th? nh', '', 9.83316, 106.323, 0, 'SHOW', '', 1355069020, '', 0, '', '', '', 0),
(717, 1600500000000000000, 'Duy??n H??£i', '', 9.63118, 106.488, 0, 'SHOW', '', 1355069024, '', 0, '', '', '', 0),
(718, 1600600000000000000, 'Ti?»?u C??§n', '', 9.79692, 106.182, 0, 'SHOW', '', 1355069029, '', 0, '', '', '', 0),
(719, 1600700000000000000, 'Tr?  C??', '', 9.68738, 106.259, 0, 'SHOW', '', 1355069033, '', 0, '', '', '', 0),
(720, 1600800000000000000, 'Tr?  Vinh', '', 9.81274, 106.299, 0, 'SHOW', '', 1355069038, '', 0, '', '', '', 0),
(721, 1610100000000000000, 'Chi??m H?³a', '', 22.1307, 105.266, 0, 'SHOW', '', 1355069054, '', 0, '', '', '', 0),
(722, 1610200000000000000, 'H? m Y??n', '', 22.084, 105.027, 0, 'SHOW', '', 1355069059, '', 0, '', '', '', 0),
(723, 1610300000000000000, 'L?¢m B?¬nh', '', 14.7745, 109.001, 0, 'SHOW', '', 1355069064, '', 0, '', '', '', 0),
(724, 1610400000000000000, 'Na Hang', '', 22.4933, 105.36, 0, 'SHOW', '', 1355069072, '', 0, '', '', '', 0),
(725, 1610500000000000000, 'SÆ?n DÆ°Æ?ng', '', 21.6572, 105.36, 0, 'SHOW', '', 1355069077, '', 0, '', '', '', 0),
(726, 1610600000000000000, 'Tuy??n Quang', '', 21.7767, 105.228, 0, 'SHOW', '', 1355069081, '', 0, '', '', '', 0),
(727, 1610700000000000000, 'Y??n SÆ?n', '', 21.9448, 105.266, 0, 'SHOW', '', 1355069088, '', 0, '', '', '', 0),
(728, 1620100000000000000, 'B?¬nh Minh', '', 10.0292, 105.853, 0, 'SHOW', '', 1355069102, '', 0, '', '', '', 0),
(729, 1620200000000000000, 'B?¬nh T?¢n', '', 10.1205, 105.759, 0, 'SHOW', '', 1355069143, '', 0, '', '', '', 0),
(730, 1620300000000000000, 'Long H?»“', '', 10.2448, 105.959, 0, 'SHOW', '', 1355069149, '', 0, '', '', '', 0),
(731, 1620400000000000000, 'Mang Th?­t', '', 10.1808, 106.076, 0, 'SHOW', '', 1355069154, '', 0, '', '', '', 0),
(732, 1620500000000000000, 'Tam B?¬nh', '', 10.0679, 105.946, 0, 'SHOW', '', 1355069158, '', 0, '', '', '', 0),
(733, 1620600000000000000, 'Tr?  ?”n', '', 9.979, 105.993, 0, 'SHOW', '', 1355069164, '', 0, '', '', '', 0),
(734, 1620700000000000000, 'VÄ©nh Long', '', 10.2448, 105.959, 0, 'SHOW', '', 1355069169, '', 0, '', '', '', 0),
(735, 1620800000000000000, 'VÅ©ng Li??m', '', 10.0586, 106.135, 0, 'SHOW', '', 1355069175, '', 0, '', '', '', 0),
(736, 1630100000000000000, 'B?¬nh Xuy??n', '', 21.3139, 105.676, 0, 'SHOW', '', 1355069205, '', 0, '', '', '', 0),
(737, 1630200000000000000, 'L??­p Th???ch', '', 21.4371, 105.477, 0, 'SHOW', '', 1355069212, '', 0, '', '', '', 0),
(738, 1630300000000000000, 'Ph??c Y??n', '', 21.2382, 105.703, 0, 'SHOW', '', 1355069217, '', 0, '', '', '', 0),
(739, 1630400000000000000, 'S??ng L??', '', 22.2231, 105.153, 0, 'SHOW', '', 1355069222, '', 0, '', '', '', 0),
(740, 1630500000000000000, 'Tam DÆ°Æ?ng', '', 21.3714, 105.559, 0, 'SHOW', '', 1355069231, '', 0, '', '', '', 0),
(741, 1630600000000000000, 'Tam Ä??£o', '', 21.4658, 105.665, 0, 'SHOW', '', 1355069235, '', 0, '', '', '', 0),
(742, 1630700000000000000, 'VÄ©nh TÆ°?»ng', '', 21.2387, 105.489, 0, 'SHOW', '', 1355069240, '', 0, '', '', '', 0),
(743, 1630800000000000000, 'VÄ©nh Y??n', '', 21.31, 105.597, 0, 'SHOW', '', 1355069245, '', 0, '', '', '', 0),
(744, 1630900000000000000, 'Y??n L???c', '', 21.2383, 105.586, 0, 'SHOW', '', 1355069250, '', 0, '', '', '', 0),
(745, 1640100000000000000, 'L?»?c Y??n', '', 22.09, 104.705, 0, 'SHOW', '', 1355069265, '', 0, '', '', '', 0),
(746, 1640200000000000000, 'M?¹ Cang Ch??£i', '', 21.767, 104.147, 0, 'SHOW', '', 1355069270, '', 0, '', '', '', 0),
(747, 1640300000000000000, 'NghÄ©a L?»?', '', 21.6019, 104.506, 0, 'SHOW', '', 1355069275, '', 0, '', '', '', 0),
(748, 1640400000000000000, 'Tr???m T???u', '', 21.4517, 104.388, 0, 'SHOW', '', 1355069280, '', 0, '', '', '', 0),
(749, 1640500000000000000, 'Tr???n Y??n', '', 21.616, 104.799, 0, 'SHOW', '', 1355069284, '', 0, '', '', '', 0),
(750, 1640600000000000000, 'VÄ?n Ch???n', '', 21.4298, 104.799, 0, 'SHOW', '', 1355069291, '', 0, '', '', '', 0),
(751, 1640700000000000000, 'VÄ?n Y??n', '', 21.8698, 104.566, 0, 'SHOW', '', 1355069297, '', 0, '', '', '', 0),
(752, 1640800000000000000, 'Y??n B??i', '', 21.7168, 104.899, 0, 'SHOW', '', 1355069314, '', 0, '', '', '', 0),
(753, 1640900000000000000, 'Y??n B?¬nh', '', 21.785, 104.986, 0, 'SHOW', '', 1355069319, '', 0, '', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `account_privilege`
--
ALTER TABLE `account_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `account_related`
--
ALTER TABLE `account_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `account_setting`
--
ALTER TABLE `account_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `region` (`region`),
  ADD KEY `position` (`position`),
  ADD KEY `container_id` (`container_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `block_setting`
--
ALTER TABLE `block_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_id` (`block_id`,`setting_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `department_user`
--
ALTER TABLE `department_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `facebook_accounts`
--
ALTER TABLE `facebook_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_bot`
--
ALTER TABLE `facebook_bot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_fake_link`
--
ALTER TABLE `facebook_fake_link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_groups`
--
ALTER TABLE `facebook_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_help`
--
ALTER TABLE `facebook_help`
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `facebook_inbox`
--
ALTER TABLE `facebook_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_payment`
--
ALTER TABLE `facebook_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_schedules`
--
ALTER TABLE `facebook_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_schedules_friend`
--
ALTER TABLE `facebook_schedules_friend`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_schedules_group`
--
ALTER TABLE `facebook_schedules_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facebook_token`
--
ALTER TABLE `facebook_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `facebook_upgrade_account`
--
ALTER TABLE `facebook_upgrade_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `function`
--
ALTER TABLE `function`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `module_setting`
--
ALTER TABLE `module_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `module_table`
--
ALTER TABLE `module_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `structure_id` (`structure_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layout_id` (`layout_id`),
  ADD KEY `portal_id` (`customer_id`),
  ADD KEY `structure_id` (`customer_id`),
  ADD KEY `help_id` (`help_id`),
  ADD KEY `name` (`name`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `portal_language`
--
ALTER TABLE `portal_language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege_module`
--
ALTER TABLE `privilege_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privilege_id` (`privilege_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `save`
--
ALTER TABLE `save`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `visit_page`
--
ALTER TABLE `visit_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_privilege`
--
ALTER TABLE `account_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1747;

--
-- AUTO_INCREMENT cho bảng `account_related`
--
ALTER TABLE `account_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `account_setting`
--
ALTER TABLE `account_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `block`
--
ALTER TABLE `block`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13080;

--
-- AUTO_INCREMENT cho bảng `block_setting`
--
ALTER TABLE `block_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34027;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=930;

--
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `department_user`
--
ALTER TABLE `department_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_accounts`
--
ALTER TABLE `facebook_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_bot`
--
ALTER TABLE `facebook_bot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `facebook_fake_link`
--
ALTER TABLE `facebook_fake_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `facebook_groups`
--
ALTER TABLE `facebook_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_help`
--
ALTER TABLE `facebook_help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `facebook_inbox`
--
ALTER TABLE `facebook_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_payment`
--
ALTER TABLE `facebook_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `facebook_schedules`
--
ALTER TABLE `facebook_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_schedules_friend`
--
ALTER TABLE `facebook_schedules_friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_schedules_group`
--
ALTER TABLE `facebook_schedules_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_token`
--
ALTER TABLE `facebook_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `facebook_upgrade_account`
--
ALTER TABLE `facebook_upgrade_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `function`
--
ALTER TABLE `function`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `module`
--
ALTER TABLE `module`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT cho bảng `module_table`
--
ALTER TABLE `module_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;

--
-- AUTO_INCREMENT cho bảng `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `portal_language`
--
ALTER TABLE `portal_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1063;

--
-- AUTO_INCREMENT cho bảng `privilege_module`
--
ALTER TABLE `privilege_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1768;

--
-- AUTO_INCREMENT cho bảng `save`
--
ALTER TABLE `save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT cho bảng `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `visit_page`
--
ALTER TABLE `visit_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
