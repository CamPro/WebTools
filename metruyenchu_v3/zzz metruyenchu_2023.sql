-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 17, 2023 lúc 01:12 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `metruyenchu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `canh_gioi`
--

CREATE TABLE `canh_gioi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` double NOT NULL,
  `member` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `canh_gioi`
--

INSERT INTO `canh_gioi` (`id`, `name`, `point`, `member`, `created_at`, `updated_at`) VALUES
(1, 'LV.0', 100, 4, '2022-03-30 14:47:33', '2023-03-17 03:35:18'),
(2, 'LV.1', 300, 4, '2022-03-30 14:47:55', '2023-03-17 03:35:23'),
(3, 'LV.2', 500, 5, '2022-03-30 14:48:03', '2023-03-17 03:35:28'),
(4, 'LV.3', 800, 3, '2022-03-30 14:48:20', '2023-03-17 03:35:34'),
(5, 'LV.4', 1200, 2, '2022-03-30 14:48:36', '2023-03-17 03:35:44'),
(6, 'LV.5', 1800, 2, '2022-03-30 14:48:44', '2023-03-17 03:35:50'),
(7, 'LV.6', 2500, 2, '2022-03-30 14:48:51', '2023-03-17 03:35:59'),
(8, 'LV.7', 3500, 2, '2022-03-30 14:49:01', '2023-03-17 03:36:05'),
(9, 'LV.8', 5000, 2, '2022-03-30 14:49:08', '2023-03-17 03:36:09'),
(10, 'LV.9', 10000, 2, '2022-03-30 14:49:16', '2023-03-17 03:36:14'),
(11, 'LV.10', 20000, 2, '2022-03-30 14:49:29', '2023-03-17 03:36:21'),
(12, 'LV.11', 50000, 0, '2022-03-30 14:49:47', '2023-03-17 03:36:26'),
(13, 'LV.12', 100000, 0, '2022-03-30 14:50:02', '2023-03-17 03:36:31'),
(14, 'LV.13', 500000, 0, '2022-04-01 12:40:26', '2023-03-17 03:36:42'),
(15, 'LV.14', 600000, 0, '2022-05-05 18:49:30', '2023-03-17 03:36:49'),
(16, 'LV.15', 1000000, 0, '2022-09-01 21:19:43', '2023-03-17 03:36:56'),
(17, 'LV.16', 5000000, 0, '2022-09-01 21:20:01', '2023-03-17 03:37:02'),
(18, 'LV.17', 10000000, 0, '2022-09-01 21:20:15', '2023-03-17 03:37:08'),
(19, 'LV.18', 20000000, 0, '2022-09-01 21:20:33', '2023-03-17 03:37:14'),
(20, 'LV.19', 40000000, 0, '2022-09-01 21:20:55', '2023-03-17 03:37:20'),
(21, 'LV.20', 80000000, 0, '2022-09-01 21:21:07', '2023-03-17 03:37:28'),
(22, 'LV.21', 160000000, 0, '2022-09-01 21:21:32', '2023-03-17 03:37:33'),
(23, 'LV.22', 300000000, 0, '2022-09-01 21:22:07', '2023-03-17 03:37:38'),
(24, 'LV.23', 600000000, 0, '2022-09-01 21:22:32', '2023-03-17 03:37:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

CREATE TABLE `chuong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `numchap` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `lock` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `view` double NOT NULL DEFAULT 0,
  `like` double NOT NULL DEFAULT 0,
  `pending` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `coin` int(11) DEFAULT 0,
  `number_letters` int(11) NOT NULL DEFAULT 0,
  `auto_post` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`id`, `truyen_id`, `user_id`, `numchap`, `name`, `content`, `public`, `lock`, `view`, `like`, `pending`, `coin`, `number_letters`, `auto_post`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'Ahihi', 'asdasd', 'D', 'Y', 53, 0, 'N', 15, 1, NULL, '2023-03-17 03:31:22', '2023-03-17 12:11:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_systems`
--

CREATE TABLE `config_systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baotri` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `craw` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `google_login` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `facebook_login` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_systems`
--

INSERT INTO `config_systems` (`id`, `baotri`, `craw`, `google_login`, `facebook_login`, `created_at`, `updated_at`) VALUES
(1, 'N', 'N', 'N', 'N', '2022-03-31 10:16:41', '2022-05-05 18:51:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diendan_baidang`
--

CREATE TABLE `diendan_baidang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_u` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_hes`
--

CREATE TABLE `lien_hes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_09_23_060339_create_canh_giois_table', 1),
(4, '2021_09_24_094411_create_the_loai_truyens_table', 1),
(5, '2021_09_25_025651_create_truyens_table', 1),
(6, '2021_09_25_124853_create_truyen__the_loais_table', 1),
(7, '2021_09_25_143439_create_user_records_table', 1),
(8, '2021_09_26_054142_create_chuongs_table', 1),
(9, '2021_09_26_135324_create_nhan_vats_table', 1),
(10, '2021_09_26_135439_create_truyen__records_table', 1),
(11, '2021_09_26_135459_create_truyen__van_des_table', 1),
(12, '2021_09_28_092957_create_truyen_binh_luans_table', 1),
(13, '2021_09_28_093450_create_truyen_danh_gias_table', 1),
(14, '2021_09_28_194148_create_tu_saches_table', 1),
(15, '2021_10_01_075212_create_truyen_thong_kes_table', 1),
(16, '2021_10_08_085626_create_thong_baos_table', 1),
(17, '2021_10_08_120934_create_thiet_lap_webs_table', 1),
(18, '2021_10_26_111032_create_thong_kes_table', 1),
(19, '2021_10_26_111147_create_lien_hes_table', 1),
(20, '2021_10_26_111200_create_phan_hois_table', 1),
(21, '2021_10_26_154508_create_config_systems_table', 1),
(22, '2021_10_31_073927_create_dien_dan__bai_dangs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vat`
--

CREATE TABLE `nhan_vat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `chapter_id` bigint(20) NOT NULL,
  `coin` double NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hois`
--

CREATE TABLE `phan_hois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_toans`
--

CREATE TABLE `thanh_toans` (
  `id` bigint(20) NOT NULL,
  `nganhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tien` double NOT NULL,
  `linhthach` double NOT NULL,
  `trangthai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Đang chờ',
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanh_toans`
--

INSERT INTO `thanh_toans` (`id`, `nganhang`, `tien`, `linhthach`, `trangthai`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Momo', 10000, 10500, 'Thành công', 1, '2023-03-14 04:44:31', '2023-03-14 05:54:12'),
(2, 'Momo', 10000, 10500, 'Thành công', 1, '2023-03-14 05:56:38', '2023-03-14 05:59:29'),
(3, 'Tp Bank', 10000, 10500, 'Thất bại', 1, '2023-03-15 00:36:07', '2023-03-15 00:40:32'),
(4, 'Momo', 10000, 10500, 'Thành công', 2, '2023-03-17 03:34:43', '2023-03-17 03:34:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_viens`
--

CREATE TABLE `thanh_viens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thanh_viens`
--

INSERT INTO `thanh_viens` (`id`, `user_id`, `truyen_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-01-09 08:27:19', '2023-01-09 08:27:19'),
(2, 1, 2, '2023-03-14 05:39:30', '2023-03-14 05:39:30'),
(3, 1, 3, '2023-03-14 09:52:20', '2023-03-14 09:52:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai_truyen`
--

CREATE TABLE `the_loai_truyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai_truyen`
--

INSERT INTO `the_loai_truyen` (`id`, `name`, `name_slug`) VALUES
(1, 'Tiên Hiệp', 'tien-hiep'),
(2, 'Huyền Huyễn', 'huyen-huyen'),
(3, 'Đô Thị', 'do-thi'),
(4, 'Võng Du', 'vong-du'),
(5, 'Kiếm Hiệp', 'kiem-hiep'),
(6, 'Kỳ Ảo', 'ky-ao'),
(7, 'Huyền Nghi', 'huyen-nghi'),
(8, 'Tận Thế', 'tan-the'),
(9, 'Đồng Nhân', 'dong-nhan'),
(10, 'Dã Sử', 'da-su'),
(11, 'Khoa Huyễn', 'khoa-huyen'),
(12, 'Truyện Voz', 'truyen-voz'),
(13, 'Truyện Teen', 'truyen-teen'),
(14, 'Ngôn Tình', 'ngon-tinh'),
(15, 'Hồi Ký', 'hoi-ky'),
(16, 'Hài Hước', 'hai-huoc'),
(17, 'Trọng Sinh', 'trong-sinh'),
(18, 'Cơ Trí', 'co-tri'),
(19, 'Xây Dựng Thế Lực', 'xay-dung-the-luc'),
(20, 'HE', 'he'),
(21, 'SE', 'se'),
(22, 'Hệ Thống', 'he-thong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thiet_lap_web`
--

CREATE TABLE `thiet_lap_web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chinhsach` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dieukhoan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huongdan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thiet_lap_web`
--

INSERT INTO `thiet_lap_web` (`id`, `chinhsach`, `dieukhoan`, `huongdan`, `created_at`, `updated_at`) VALUES
(1, '<p>Ch&iacute;nh s&aacute;ch bảo mật đang cập nhật....</p>', '<p>Khi tham gia sử dụng dịch vụ cung cấp bởi <strong>metruyenchu.epizy.com</strong>, bạn phải đồng &yacute; v&agrave; tu&acirc;n thủ c&aacute;c quy định sau.</p>\r\n\r\n<p>Quy định n&agrave;y &aacute;p dụng cho mọi đối tượng tham gia hoạt động tại website, kh&ocirc;ng kể l&agrave; kh&aacute;ch, th&agrave;nh vi&ecirc;n, chấp sự, admin hay bất cứ chức danh n&agrave;o kh&aacute;c.</p>\r\n\r\n<p>Quy định n&agrave;y gồm 2 b&ecirc;n ch&iacute;nh:</p>\r\n\r\n<ul>\r\n	<li>MeTruyenChu cung cấp dịch vụ tr&ecirc;n internet.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng gọi tắt l&agrave; KH, sử dụng dịch vụ của MeTruyenChu tr&ecirc;n internet.</li>\r\n</ul>\r\n\r\n<p><strong>A. C&aacute;c Quy Định Chung</strong></p>\r\n\r\n<ol>\r\n	<li>Kh&ocirc;ng b&agrave;n luận về t&ocirc;n gi&aacute;o v&agrave; ch&iacute;nh trị.</li>\r\n	<li>T&ocirc;n trọng ph&aacute;p luật Việt Nam, t&ocirc;n trọng văn h&oacute;a, lối sống v&agrave; đạo đức của con người Việt Nam.</li>\r\n	<li>Truyện c&oacute; nội dung người lớn phải gắn nh&atilde;n giới hạn độ tuổi ph&ugrave; hợp, v&iacute; dụ: 16+, 18+.</li>\r\n	<li>MeTruyenChu&nbsp;c&oacute; cảnh b&aacute;o về giới hạn độ tuổi cũng như kh&ocirc;ng khuyến kh&iacute;ch người đọc chưa đủ tuổi truy cập c&aacute;c truyện người lớn 18+. Nếu người đọc vẫn cố &yacute; vi phạm th&igrave; MeTruyenChu kh&ocirc;ng chịu bất cứ tr&aacute;ch nhiệm n&agrave;o trước ph&aacute;p luật cũng như c&aacute; nh&acirc;n người đ&oacute;.</li>\r\n	<li>C&aacute;c th&agrave;nh vi&ecirc;n nhỏ tuổi cố &yacute; vượt qua cảnh b&aacute;o về giới hạn độ tuổi kh&ocirc;ng thuộc tr&aacute;ch nhiệm của MeTruyenChu.</li>\r\n	<li>Kh&ocirc;ng đả k&iacute;ch, b&ecirc;u xấu c&aacute; nh&acirc;n v&agrave; tổ chức tr&ecirc;n MeTruyenChu. H&atilde;y cư xử c&oacute; văn h&oacute;a, h&ograve;a nh&atilde; với nhau.</li>\r\n	<li>Kh&ocirc;ng sử dụng c&aacute;c từ tục tĩu, d&acirc;m dục, &aacute;c độc trực tiếp tr&ecirc;n MeTruyenChu m&agrave; phải sử dụng k&yacute; tự thay thế l&agrave; dấu sao (*).</li>\r\n	<li>Quy định về mức phạt đối với th&agrave;nh vi&ecirc;n vi phạm nội quy l&agrave; do ban quản trị website tự đề ra.</li>\r\n	<li>Kh&ocirc;ng spam tin nhắn, b&igrave;nh luận, b&agrave;i viết hay bất cứ h&igrave;nh thức n&agrave;o tại MeTruyenChu.</li>\r\n	<li>Kh&ocirc;ng để avatar tục tĩu, vi phạm ph&aacute;p luật hoặc ảnh hưởng đến người kh&aacute;c.</li>\r\n	<li>Kh&ocirc;ng tận dụng c&aacute;c bugs (lỗi) của chương tr&igrave;nh nhằm ph&aacute; hoại sự ổn định của MeTruyenChu.</li>\r\n	<li>Sẽ kh&oacute;a vĩnh viễn c&aacute;c t&agrave;i khoản leak truyện VIP ra ngo&agrave;i m&agrave; kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản của MeTruyenChu.</li>\r\n	<li>MeTruyenChu&nbsp;nghi&ecirc;m cấm mua b&aacute;n truyện ngo&agrave;i luồng tr&ecirc;n web v&agrave; app của m&igrave;nh m&agrave; kh&ocirc;ng th&ocirc;ng qua c&aacute;c k&ecirc;nh ch&iacute;nh thức.</li>\r\n	<li>Nghi&ecirc;m cấm quảng c&aacute;o c&aacute;c website, ứng dụng kh&aacute;c tr&ecirc;n tất cả c&aacute;c k&ecirc;nh của MeTruyenChu.</li>\r\n	<li>Việc đăng k&yacute; t&ecirc;n t&agrave;i khoản l&agrave; số điện thoại, email v&agrave; c&aacute;c th&ocirc;ng tin nhạy cảm kh&aacute;c l&agrave; bị cấm tại MeTruyenChu.</li>\r\n	<li>Nội quy c&oacute; thể thay đổi t&ugrave;y theo t&igrave;nh h&igrave;nh thực tế m&agrave; kh&ocirc;ng cần b&aacute;o trước.</li>\r\n</ol>\r\n\r\n<p><strong>B. Quy Định Về Đăng Truyện</strong></p>\r\n\r\n<ol>\r\n	<li>Truyện chưa c&oacute; chương kh&ocirc;ng được c&ocirc;ng bố.</li>\r\n	<li>Chỉ được ph&eacute;p đăng c&aacute;c truyện chữ hoặc c&aacute;c truyện c&oacute; số lượng chữ tr&ecirc;n 50%. Cấm đăng truyện tranh, video clip hoặc &acirc;m thanh.</li>\r\n	<li>T&ecirc;n truyện phải được viết dưới dạng Titlecase (viết hoa đầu mỗi chữ):&nbsp;<strong>Giống Như Thế N&agrave;y</strong>.&nbsp;</li>\r\n	<li>Nội dung chương phải tr&igrave;nh b&agrave;y đẹp, nếu c&oacute; r&aacute;c như c&acirc;u c&uacute; lủng củng, từ sai lỗi ch&iacute;nh tả qu&aacute; nhiều, c&oacute; đường link tới c&aacute;c trang web ngo&agrave;i sẽ bị x&oacute;a.</li>\r\n	<li>Kh&ocirc;ng được sử dụng c&aacute;c từ tục tĩu thiếu văn h&oacute;a. Nếu muốn d&ugrave;ng phải thay thế bằng dấu * hoặc dấu gạch ngang (-).</li>\r\n	<li>Văn bản tr&igrave;nh b&agrave;y phải ph&acirc;n đoạn r&otilde; r&agrave;ng, nếu viết th&agrave;nh 1 khối d&agrave;y đặc chữ cũng kh&ocirc;ng được đăng.</li>\r\n	<li>MeTruyenChu&nbsp;để ph&acirc;n biệt c&aacute;c kiểu dịch kh&aacute;c nhau, MeTruyenChu cho ph&eacute;p th&ecirc;m v&agrave;o ti&ecirc;u đề truyện v&iacute; dụ như: <strong>Thi&ecirc;n Đạo Phi Ti&ecirc;n&nbsp;(Dịch), Ph&agrave;m Nh&acirc;n Tu Ti&ecirc;n&nbsp;(Convert)</strong>.</li>\r\n	<li>Truyện c&oacute; chương qu&aacute; ngắn,&nbsp;<strong>dưới 1000 chữ</strong>&nbsp;mỗi chương kh&ocirc;ng được c&ocirc;ng bố, trừ c&aacute;c thể loại đặc th&ugrave; như ng&ocirc;n t&igrave;nh, tản văn, thơ.</li>\r\n	<li>Truyện c&oacute; nội dung sắc nặng kh&ocirc;ng được ph&eacute;p đăng tại MeTruyenChu. Nếu cố t&igrave;nh vi phạm, truyện sẽ bị x&oacute;a, th&agrave;nh vi&ecirc;n truyện sẽ bị kh&oacute;a v&agrave; thu hồi tất cả TLT trong truyện cũng như t&agrave;i khoản. Truyện được xem l&agrave; sắc nặng nếu m&ocirc; tả c&aacute;c bộ phận sinh dục của con người hoặc lo&agrave;i vật qu&aacute; cụ thể chi tiết; m&ocirc; tả cảnh quan hệ chi tiết v&agrave; c&oacute; t&iacute;nh k&iacute;ch dục cao.</li>\r\n	<li>B&igrave;a truyện kh&ocirc;ng được đưa c&aacute;c th&ocirc;ng tin như chức năng của website, thể loại truyện, t&iacute;nh chất, t&igrave;nh tiết trong truyện.</li>\r\n	<li>B&igrave;a truyện kh&ocirc;ng c&oacute; c&aacute;c h&igrave;nh ảnh khi&ecirc;u d&acirc;m, k&iacute;ch dục, k&iacute;ch động, th&ugrave; hằn, &aacute;m chỉ đến t&ocirc;n gi&aacute;o, ch&iacute;nh trị, c&aacute;c hoạt động bị cấm bởi ph&aacute;p luật.</li>\r\n	<li>B&igrave;a truyện kh&ocirc;ng được th&ecirc;m bất cứ th&ocirc;ng tin n&agrave;o kh&aacute;c ngo&agrave;i T&aacute;c giả, T&ecirc;n truyện v&agrave; T&ecirc;n nh&oacute;m dịch.</li>\r\n</ol>\r\n\r\n<p><strong>C. Quy Định Về B&igrave;nh Luận, Đề Cử, Diễn Đ&agrave;n</strong></p>\r\n\r\n<ol>\r\n	<li>Dẫn link hoặc nhắc đến website kh&aacute;c l&agrave; bị cấm.</li>\r\n	<li>Đề cử hoặc b&igrave;nh luận l&agrave;m ảnh hưởng tới lợi &iacute;ch của MeTruyenChu sẽ bị x&oacute;a.</li>\r\n	<li>Đề cử khen hoặc ch&ecirc; một c&aacute;ch chung chung kh&ocirc;ng mang lại gi&aacute; trị cho người đọc sẽ bị x&oacute;a.</li>\r\n	<li>Đề cử c&oacute; điểm số sai lệch với nội dung đề cử sẽ bị x&oacute;a.</li>\r\n	<li>B&igrave;nh luận gay gắt, đả k&iacute;ch, x&uacute;c phạm người kh&aacute;c sẽ bị x&oacute;a v&agrave; ban nick vĩnh viễn.</li>\r\n	<li>Th&agrave;nh vi&ecirc;n vi phạm sẽ bị kh&oacute;a nick m&agrave; kh&ocirc;ng cần b&aacute;o trước.</li>\r\n	<li>Nh&acirc;n vi&ecirc;n quản l&yacute; c&oacute; quyền x&oacute;a nội dung g&acirc;y hại cho website m&agrave; kh&ocirc;ng cần b&aacute;o trước.</li>\r\n</ol>\r\n\r\n<p><strong>D. Quy Định Về Vật Phẩm, Linh Thạch</strong></p>\r\n\r\n<ol>\r\n	<li>Mọi h&agrave;nh vi lợi dụng Vật Phẩm, Linh Thạch để mua b&aacute;n tr&aacute;i ph&eacute;p Tử Linh Thạch v&agrave; ngược lại, sử dụng Tử Linh Thạch hoặc tiền mặt để mua b&aacute;n Linh Thạch đều bị cấm. Quy định n&agrave;y bổ sung cho c&aacute;c điều khoản về Tử Linh Thạch trong Trung T&acirc;m Vip.</li>\r\n	<li>Mỗi th&agrave;nh vi&ecirc;n phải tự bảo quản Vật Phẩm trong t&agrave;i khoản.</li>\r\n	<li>MeTruyenChu&nbsp;c&oacute; quyền thu hồi Vật Phẩm, Linh Thạch&nbsp;m&agrave; kh&ocirc;ng cần b&aacute;o trước khi ph&aacute;t hiện th&agrave;nh vi&ecirc;n c&oacute; những h&agrave;nh động tận dụng lỗ hổng, c&aacute;c bugs (lỗi) để chiếm đoạt vật phẩm tr&aacute;i ph&eacute;p.</li>\r\n</ol>\r\n\r\n<p><strong>E. Quy Định Về Sử Dụng Tử Linh Thạch (TLT)</strong></p>\r\n\r\n<ol>\r\n	<li>Nghi&ecirc;m cấm sử dụng TLT với mục đ&iacute;ch ngo&agrave;i những chức năng cung cấp của MeTruyenChu.</li>\r\n	<li>Nghi&ecirc;m cấm sử dụng TLT với mục đ&iacute;ch trục lợi c&aacute; nh&acirc;n, g&acirc;y ảnh hưởng đến uy t&iacute;n của MeTruyenChu.</li>\r\n</ol>\r\n\r\n<p><strong>F. Quy Định Về Mua Chương VIP</strong></p>\r\n\r\n<ol>\r\n	<li>MeTruyenChu&nbsp;sẽ kh&ocirc;ng ho&agrave;n lại TLT với bất cứ l&yacute; do n&agrave;o khi bạn đ&atilde; mua chương.</li>\r\n	<li>Chương VIP sẽ được đảm bảo lu&ocirc;n mở để đọc tối đa 1 năm kể từ ng&agrave;y bạn mua chương.</li>\r\n	<li>Nếu truyện c&oacute; vấn đề bản quyền, ch&uacute;ng t&ocirc;i sẽ kh&oacute;a truyện m&agrave; kh&ocirc;ng ho&agrave;n lại TLT.</li>\r\n	<li>Đối với truyện vi phạm nội quy, truyện sẽ bị kh&oacute;a, ch&uacute;ng t&ocirc;i sẽ cung cấp file EPUB nếu kh&ocirc;ng ảnh hưởng đến c&aacute;c b&ecirc;n hoặc vi phạm luật ph&aacute;p trong v&ograve;ng 10 ng&agrave;y kể từ ng&agrave;y kh&oacute;a.</li>\r\n	<li>Truyện c&oacute; thể chỉ c&oacute; thể đọc tr&ecirc;n web hoặc tr&ecirc;n app, v&agrave; cũng c&oacute; thể l&agrave; cả 2, bạn cần lưu &yacute; trước khi mua chương.</li>\r\n</ol>\r\n\r\n<p><strong>G. Quy Định C&aacute;c Dịch Vụ Ti&ecirc;u Ph&iacute; TLT Kh&aacute;c</strong></p>\r\n\r\n<ol>\r\n	<li>MeTruyenChu&nbsp;sẽ kh&ocirc;ng ho&agrave;n lại TLT với bất cứ l&yacute; do n&agrave;o khi bạn đ&atilde; tiến h&agrave;nh giao dịch TLT với hệ thống.</li>\r\n	<li>Trước khi tiến h&agrave;nh ti&ecirc;u ph&iacute;, MeTruyenChu c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o đầy đủ th&ocirc;ng tin về dịch vụ ti&ecirc;u ph&iacute;. Người d&ugrave;ng phải tự xem x&eacute;t thật kỹ nhu cầu v&agrave; tự chịu tr&aacute;ch nhiệm trước khi tiến h&agrave;nh thanh to&aacute;n.</li>\r\n	<li>Ch&uacute;ng t&ocirc;i chỉ hỗ trợ c&aacute;c trường hợp giao dịch bị lỗi hệ thống th&ocirc;ng qua c&aacute;c k&ecirc;nh ch&iacute;nh thức.</li>\r\n</ol>', '<p>đang cập nhật...</p>', '2022-03-30 14:52:28', '2022-05-05 18:30:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao`
--

CREATE TABLE `thong_bao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_bao`
--

INSERT INTO `thong_bao` (`id`, `user_id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tạo truyện thành công', 'http://localhost:81/truyen-da-dang', 'Y', '2023-01-09 08:27:19', '2023-03-14 01:31:36'),
(2, 1, 'Tạo truyện thành công', 'http://localhost/metruyenchu/truyen-da-dang', 'Y', '2023-03-14 05:39:30', '2023-03-14 05:59:50'),
(3, 1, 'Tạo truyện thành công', 'http://localhost/metruyenchu/truyen-da-dang', 'Y', '2023-03-14 09:52:20', '2023-03-14 10:05:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_kes`
--

CREATE TABLE `thong_kes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `views` double NOT NULL DEFAULT 0,
  `curr_date` date NOT NULL DEFAULT '2022-03-30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_kes`
--

INSERT INTO `thong_kes` (`id`, `views`, `curr_date`) VALUES
(1, 3, '2023-01-09'),
(2, 0, '2023-01-08'),
(3, 0, '2023-01-07'),
(4, 0, '2023-01-06'),
(5, 0, '2023-01-05'),
(6, 0, '2023-01-04'),
(7, 0, '2023-01-03'),
(8, 79, '2023-03-14'),
(9, 0, '2023-03-13'),
(10, 0, '2023-03-12'),
(11, 0, '2023-03-11'),
(12, 0, '2023-03-10'),
(13, 0, '2023-03-09'),
(14, 0, '2023-03-08'),
(15, 57, '2023-03-15'),
(16, 83, '2023-03-17'),
(17, 0, '2023-03-16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cover.jpg',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'thumb.jpg',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_story` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Đang cập nhật',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` double NOT NULL DEFAULT 0,
  `num_chaps` int(11) NOT NULL DEFAULT 0,
  `num_chaps_pending` int(11) NOT NULL DEFAULT 0,
  `notify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookmarks` int(11) NOT NULL DEFAULT 0,
  `vote` int(11) NOT NULL DEFAULT 0,
  `problem` int(11) NOT NULL DEFAULT 0,
  `member` int(11) NOT NULL DEFAULT 0,
  `character` int(11) NOT NULL DEFAULT 0,
  `link_craw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_craw` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `number_letters` double NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `public` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `lock_comment` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `lock` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `delete` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `vip` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `name`, `name_slug`, `cover`, `thumb`, `author`, `type_story`, `status`, `description`, `source`, `views`, `num_chaps`, `num_chaps_pending`, `notify`, `bookmarks`, `vote`, `problem`, `member`, `character`, `link_craw`, `auto_craw`, `number_letters`, `user_id`, `public`, `lock_comment`, `lock`, `delete`, `vip`, `created_at`, `updated_at`) VALUES
(2, 'Test', 'test-2', 'cover.jpg', 'thumb.jpg', 'Test Data', 'Truyện Dịch', 'Hoàn thành', 'Test', 'metruyenchu.epizy.com', 0, 0, 0, NULL, 0, 0, 0, 0, 0, '', 'NO', 0, 1, 'Y', 'N', 'N', 'N', 'Y', '2023-03-14 05:39:30', '2023-03-14 10:05:22'),
(3, 'Test Data', 'test-data-3', 'cover.jpg', 'thumb.jpg', 'Test', 'Truyện Dịch', 'Đang cập nhật', 'a', 'metruyenchu.epizy.com', 53, 0, -1, NULL, 0, 0, 0, 0, 0, '', 'NO', 0, 1, 'Y', 'N', 'N', 'N', 'N', '2023-03-14 09:52:20', '2023-03-17 12:11:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_binh_luan`
--

CREATE TABLE `truyen_binh_luan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chap` int(11) NOT NULL DEFAULT 0,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_danh_gia`
--

CREATE TABLE `truyen_danh_gia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marks` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_record`
--

CREATE TABLE `truyen_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `numchap` int(11) NOT NULL,
  `log` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen_record`
--

INSERT INTO `truyen_record` (`id`, `truyen_id`, `user_id`, `numchap`, `log`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'Thêm chương', '2023-03-17 03:31:22', '2023-03-17 03:31:22'),
(2, 3, 1, 1, 'Xóa chương', '2023-03-17 12:11:02', '2023-03-17 12:11:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_theloai`
--

CREATE TABLE `truyen_theloai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen_theloai`
--

INSERT INTO `truyen_theloai` (`id`, `truyen_id`, `name`, `name_slug`) VALUES
(1, 1, 'Đồng Nhân', 'dong-nhan'),
(3, 2, 'Đồng Nhân', 'dong-nhan'),
(5, 3, 'Dã Sử', 'da-su');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_thong_ke`
--

CREATE TABLE `truyen_thong_ke` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `views` double NOT NULL,
  `vote` double NOT NULL,
  `curr_date` date NOT NULL DEFAULT '2022-03-30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen_thong_ke`
--

INSERT INTO `truyen_thong_ke` (`id`, `truyen_id`, `views`, `vote`, `curr_date`) VALUES
(1, 3, 1, 0, '2022-03-30'),
(2, 3, 1, 0, '2022-03-30'),
(3, 3, 1, 0, '2022-03-30'),
(4, 3, 1, 0, '2022-03-30'),
(5, 3, 1, 0, '2022-03-30'),
(6, 3, 1, 0, '2022-03-30'),
(7, 3, 1, 0, '2022-03-30'),
(8, 3, 1, 0, '2022-03-30'),
(9, 3, 1, 0, '2022-03-30'),
(10, 3, 1, 0, '2022-03-30'),
(11, 3, 1, 0, '2022-03-30'),
(12, 3, 1, 0, '2022-03-30'),
(13, 3, 1, 0, '2022-03-30'),
(14, 3, 1, 0, '2022-03-30'),
(15, 3, 1, 0, '2022-03-30'),
(16, 3, 1, 0, '2022-03-30'),
(17, 3, 1, 0, '2022-03-30'),
(18, 3, 1, 0, '2022-03-30'),
(19, 3, 1, 0, '2022-03-30'),
(20, 3, 1, 0, '2022-03-30'),
(21, 3, 1, 0, '2022-03-30'),
(22, 3, 1, 0, '2022-03-30'),
(23, 3, 1, 0, '2022-03-30'),
(24, 3, 1, 0, '2022-03-30'),
(25, 3, 1, 0, '2022-03-30'),
(26, 3, 1, 0, '2022-03-30'),
(27, 3, 1, 0, '2022-03-30'),
(28, 3, 1, 0, '2022-03-30'),
(29, 3, 1, 0, '2022-03-30'),
(30, 3, 1, 0, '2022-03-30'),
(31, 3, 1, 0, '2022-03-30'),
(32, 3, 1, 0, '2022-03-30'),
(33, 3, 1, 0, '2022-03-30'),
(34, 3, 1, 0, '2022-03-30'),
(35, 3, 1, 0, '2022-03-30'),
(36, 3, 1, 0, '2022-03-30'),
(37, 3, 1, 0, '2022-03-30'),
(38, 3, 1, 0, '2022-03-30'),
(39, 3, 1, 0, '2022-03-30'),
(40, 3, 1, 0, '2022-03-30'),
(41, 3, 1, 0, '2022-03-30'),
(42, 3, 1, 0, '2022-03-30'),
(43, 3, 1, 0, '2022-03-30'),
(44, 3, 1, 0, '2022-03-30'),
(45, 3, 1, 0, '2022-03-30'),
(46, 3, 1, 0, '2022-03-30'),
(47, 3, 1, 0, '2022-03-30'),
(48, 3, 1, 0, '2022-03-30'),
(49, 3, 1, 0, '2022-03-30'),
(50, 3, 1, 0, '2022-03-30'),
(51, 3, 1, 0, '2022-03-30'),
(52, 3, 1, 0, '2022-03-30'),
(53, 3, 1, 0, '2022-03-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_van_de`
--

CREATE TABLE `truyen_van_de` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_sach`
--

CREATE TABLE `tu_sach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tên Hiển Thị',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp` double NOT NULL DEFAULT 10,
  `exp_level` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Phàm Nhân',
  `coin` double NOT NULL DEFAULT 0,
  `lock` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `role` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-avatar.jpeg',
  `avatar_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpeg',
  `truyen_da_dang` int(11) NOT NULL DEFAULT 0,
  `tu_truyen` int(11) NOT NULL DEFAULT 0,
  `binh_luan` int(11) NOT NULL DEFAULT 0,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `display_name`, `email`, `email_verified_at`, `password`, `exp`, `exp_level`, `coin`, `lock`, `role`, `avatar`, `avatar_cover`, `truyen_da_dang`, `tu_truyen`, `binh_luan`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thiendao', 'Thiên Đạo', 'devnguhoc@gmail.com', NULL, '$2y$10$XqfpgSHVR8CuFso56GFdZePMYtqwsu7K3T6d9iKOWoabzzysTTrD2', 562, 'LV.3', 21095, 'N', 'admin', 'default-avatar.jpeg', 'default.jpeg', 2, 0, 0, 'Vạn vật đều có lý của nó!', 'fJPP65bxD8SGcYJLa4mevj3d4bx9T1yeQgryeLRWgQvgX1eP88xqvodsTmJu', '2022-03-30 14:46:24', '2023-03-17 11:38:27'),
(2, 'test', 'test', 'test@gmail.com', NULL, '$2y$10$I7MWPrrke45I9qQHtPSQJubn4xfQSHgC.Y7kHRLOBCzx.EPZnMCS.', 61, 'LV.0', 0, 'N', 'member', 'default-avatar.jpeg', 'default.jpeg', 0, 0, 0, NULL, NULL, '2023-03-17 03:34:20', '2023-03-17 11:38:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_record`
--

CREATE TABLE `user_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_record`
--

INSERT INTO `user_record` (`id`, `user_id`, `ip`, `log`, `created_at`, `updated_at`) VALUES
(5, 1, '::1', 'Đăng nhập', '2023-03-14 03:18:12', '2023-03-14 03:18:12'),
(6, 1, '::1', 'Đăng nhập', '2023-03-14 04:27:34', '2023-03-14 04:27:34'),
(7, 1, '::1', 'Đăng truyện [Test]', '2023-03-14 05:39:30', '2023-03-14 05:39:30'),
(8, 1, '::1', 'Chỉnh sửa truyện [Test]', '2023-03-14 06:01:55', '2023-03-14 06:01:55'),
(9, 1, '::1', 'Đăng truyện [test 2]', '2023-03-14 09:52:20', '2023-03-14 09:52:20'),
(10, 1, '::1', 'Chỉnh sửa truyện [Test Data]', '2023-03-14 12:35:26', '2023-03-14 12:35:26'),
(11, 1, '::1', 'Đăng nhập', '2023-03-15 00:32:20', '2023-03-15 00:32:20'),
(12, 1, '::1', 'Đăng nhập', '2023-03-17 03:31:01', '2023-03-17 03:31:01'),
(13, 2, '::1', 'Đăng nhập', '2023-03-17 03:34:33', '2023-03-17 03:34:33'),
(14, 1, '::1', 'Chỉnh sửa cảnh giới [LV.0]', '2023-03-17 03:35:18', '2023-03-17 03:35:18'),
(15, 1, '::1', 'Chỉnh sửa cảnh giới [LV.1]', '2023-03-17 03:35:23', '2023-03-17 03:35:23'),
(16, 1, '::1', 'Chỉnh sửa cảnh giới [LV.2]', '2023-03-17 03:35:29', '2023-03-17 03:35:29'),
(17, 1, '::1', 'Chỉnh sửa cảnh giới [LV.3]', '2023-03-17 03:35:34', '2023-03-17 03:35:34'),
(18, 1, '::1', 'Chỉnh sửa cảnh giới [LV.4]', '2023-03-17 03:35:44', '2023-03-17 03:35:44'),
(19, 1, '::1', 'Chỉnh sửa cảnh giới [LV.5]', '2023-03-17 03:35:50', '2023-03-17 03:35:50'),
(20, 1, '::1', 'Chỉnh sửa cảnh giới [LV.6]', '2023-03-17 03:35:59', '2023-03-17 03:35:59'),
(21, 1, '::1', 'Chỉnh sửa cảnh giới [LV.7]', '2023-03-17 03:36:05', '2023-03-17 03:36:05'),
(22, 1, '::1', 'Chỉnh sửa cảnh giới [LV.8]', '2023-03-17 03:36:09', '2023-03-17 03:36:09'),
(23, 1, '::1', 'Chỉnh sửa cảnh giới [LV.9]', '2023-03-17 03:36:14', '2023-03-17 03:36:14'),
(24, 1, '::1', 'Chỉnh sửa cảnh giới [LV.10]', '2023-03-17 03:36:21', '2023-03-17 03:36:21'),
(25, 1, '::1', 'Chỉnh sửa cảnh giới [LV.11]', '2023-03-17 03:36:26', '2023-03-17 03:36:26'),
(26, 1, '::1', 'Chỉnh sửa cảnh giới [LV.12]', '2023-03-17 03:36:32', '2023-03-17 03:36:32'),
(27, 1, '::1', 'Chỉnh sửa cảnh giới [LV.13]', '2023-03-17 03:36:42', '2023-03-17 03:36:42'),
(28, 1, '::1', 'Chỉnh sửa cảnh giới [LV.14]', '2023-03-17 03:36:49', '2023-03-17 03:36:49'),
(29, 1, '::1', 'Chỉnh sửa cảnh giới [LV.15]', '2023-03-17 03:36:56', '2023-03-17 03:36:56'),
(30, 1, '::1', 'Chỉnh sửa cảnh giới [LV.16]', '2023-03-17 03:37:02', '2023-03-17 03:37:02'),
(31, 1, '::1', 'Chỉnh sửa cảnh giới [LV.17]', '2023-03-17 03:37:08', '2023-03-17 03:37:08'),
(32, 1, '::1', 'Chỉnh sửa cảnh giới [LV.18]', '2023-03-17 03:37:14', '2023-03-17 03:37:14'),
(33, 1, '::1', 'Chỉnh sửa cảnh giới [LV.19]', '2023-03-17 03:37:20', '2023-03-17 03:37:20'),
(34, 1, '::1', 'Chỉnh sửa cảnh giới [LV.20]', '2023-03-17 03:37:28', '2023-03-17 03:37:28'),
(35, 1, '::1', 'Chỉnh sửa cảnh giới [LV.21]', '2023-03-17 03:37:33', '2023-03-17 03:37:33'),
(36, 1, '::1', 'Chỉnh sửa cảnh giới [LV.22]', '2023-03-17 03:37:38', '2023-03-17 03:37:38'),
(37, 1, '::1', 'Chỉnh sửa cảnh giới [LV.23]', '2023-03-17 03:37:44', '2023-03-17 03:37:44'),
(38, 2, '::1', 'Đăng nhập', '2023-03-17 11:01:54', '2023-03-17 11:01:54'),
(39, 1, '::1', 'Đăng nhập', '2023-03-17 11:30:27', '2023-03-17 11:30:27'),
(40, 1, '::1', 'Đăng nhập', '2023-03-17 12:10:45', '2023-03-17 12:10:45'),
(41, 2, '::1', 'Đăng nhập', '2023-03-17 12:11:47', '2023-03-17 12:11:47');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `canh_gioi`
--
ALTER TABLE `canh_gioi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canh_gioi_name_unique` (`name`);

--
-- Chỉ mục cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_systems`
--
ALTER TABLE `config_systems`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diendan_baidang`
--
ALTER TABLE `diendan_baidang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_vat`
--
ALTER TABLE `nhan_vat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phan_hois`
--
ALTER TABLE `phan_hois`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanh_toans`
--
ALTER TABLE `thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanh_viens`
--
ALTER TABLE `thanh_viens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `the_loai_truyen`
--
ALTER TABLE `the_loai_truyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `the_loai_truyen_name_slug_unique` (`name_slug`);

--
-- Chỉ mục cho bảng `thiet_lap_web`
--
ALTER TABLE `thiet_lap_web`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `truyen_name_unique` (`name`);

--
-- Chỉ mục cho bảng `truyen_binh_luan`
--
ALTER TABLE `truyen_binh_luan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_danh_gia`
--
ALTER TABLE `truyen_danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_record`
--
ALTER TABLE `truyen_record`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_theloai`
--
ALTER TABLE `truyen_theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_thong_ke`
--
ALTER TABLE `truyen_thong_ke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_van_de`
--
ALTER TABLE `truyen_van_de`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tu_sach`
--
ALTER TABLE `tu_sach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_record`
--
ALTER TABLE `user_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `canh_gioi`
--
ALTER TABLE `canh_gioi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `chuong`
--
ALTER TABLE `chuong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_systems`
--
ALTER TABLE `config_systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `diendan_baidang`
--
ALTER TABLE `diendan_baidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `nhan_vat`
--
ALTER TABLE `nhan_vat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phan_hois`
--
ALTER TABLE `phan_hois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thanh_toans`
--
ALTER TABLE `thanh_toans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thanh_viens`
--
ALTER TABLE `thanh_viens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `the_loai_truyen`
--
ALTER TABLE `the_loai_truyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `thiet_lap_web`
--
ALTER TABLE `thiet_lap_web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `truyen_binh_luan`
--
ALTER TABLE `truyen_binh_luan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `truyen_danh_gia`
--
ALTER TABLE `truyen_danh_gia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `truyen_record`
--
ALTER TABLE `truyen_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `truyen_theloai`
--
ALTER TABLE `truyen_theloai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `truyen_thong_ke`
--
ALTER TABLE `truyen_thong_ke`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `truyen_van_de`
--
ALTER TABLE `truyen_van_de`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tu_sach`
--
ALTER TABLE `tu_sach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_record`
--
ALTER TABLE `user_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
