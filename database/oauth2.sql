-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 17, 2020 lúc 12:27 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `auth2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `id_user`, `comment`, `created_at`, `updated_at`, `id_post`) VALUES
(1, 2, 'Xin chao xep', '2020-05-17 03:07:35', '2020-05-17 03:07:35', 4),
(2, 2, 'thank so much', '2020-05-17 03:08:15', '2020-05-17 03:08:15', 4),
(3, 2, 'qua ok ok\nhhh', '2020-05-17 03:12:29', '2020-05-17 03:12:29', 4),
(4, 2, 'Cảm ơn bạn đã chia sẻ nhé. Tin tức rất hay.', '2020-05-17 03:20:14', '2020-05-17 03:20:14', 4),
(5, 2, 'tin tuc rat bo ich cho minh', '2020-05-17 03:20:46', '2020-05-17 03:20:46', 4),
(6, 2, 'Cảm ơn tác giả', '2020-05-17 03:21:12', '2020-05-17 03:21:12', 4),
(7, 2, 'okok', '2020-05-17 03:23:40', '2020-05-17 03:23:40', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_09_02_052402_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href_param` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `href_param`, `content`, `created_at`, `updated_at`, `thumbnail`) VALUES
(2, 'Chính phủ dự báo những thay đổi gì sau dịch Covid-19?', 'chnh-phu-du-bo-nhung-thay-oi-g-sau-dich-covid-19', '<p class=\"article-sapo cms-desc\" style=\"margin-bottom: 10px; font-size: 1.6rem; line-height: 2.4rem; font-weight: 700; font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\">TPO - Báo cáo của Tiểu ban Điều trị - Ban chỉ đạo Quốc gia phòng, chống dịch COVID-19, đến sáng 17/5, nam phi công người Anh đã có 5 lần liên tiếp kết quả xét nghiệm âm tính với virus SARS-CoV-2 và đã ngừng dẫn lưu màng phổi. Ê-kíp đang nỗ lực nâng sức khỏe phi công Anh để có thể chuyển sang BV Chợ Rẫy chuẩn bị cho ca ghép phổi.</p><div class=\"clearfix\" style=\"overflow: hidden; color: rgb(51, 51, 51); font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><div class=\"article-col-b\" style=\"width: 665px; float: right;\"><figure class=\"article-avatar cms-body\" style=\"margin-bottom: 10px; width: 665px;\"><a class=\"photo\" href=\"https://image.tienphong.vn/665x449/Uploaded/2020/rkznae/2020_05_17/benh_nhan_nhiem_covid1_latn.jpg\" data-desc=\"Ảnh minh họa: Internet\" data-index=\"0\" style=\"color: rgb(51, 51, 51); position: relative; width: 665px; height: 454px; display: inline-block;\"><img class=\"cms-photo\" src=\"https://image.tienphong.vn/665x449/Uploaded/2020/rkznae/2020_05_17/benh_nhan_nhiem_covid1_latn.jpg\" data-photo-original-src=\"https://image.tienphong.vn/Uploaded/2020/rkznae/2020_05_17/benh_nhan_nhiem_covid1_latn.jpg\" alt=\"Ảnh minh họa: Internet\" data-desc=\"Ảnh minh họa: Internet\" cms-photo-caption=\"Ảnh minh họa: Internet\" title=\"Phi công người Anh đã ngừng dẫn lưu màng phổi, chuẩn bị điều kiện tốt nhất cho ca ghép\" style=\"margin-bottom: 5px; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;\"></a><figcaption class=\"fig\" style=\"font-size: 12px; color: rgb(119, 119, 119); font-style: italic; text-align: center;\">Ảnh minh họa: Internet</figcaption></figure><div class=\"article-relate-b\" style=\"padding: 10px 20px; border-top: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); margin-bottom: 10px;\"><div class=\"collection\" style=\"margin-bottom: 0px;\"><article class=\"story theme-summary\" data-id=\"1240673\" style=\"margin-bottom: 5px;\"><a href=\"https://www.tienphong.vn/suc-khoe/dau-hieu-bat-thuong-khi-ngu-den-vien-kham-ngay-keo-an-han-may-cung-muon-1658922.tpo\" title=\"Dấu hiệu bất thường khi ngủ, đến viện khám ngay kẻo \'ân hận mấy cũng muộn\'\" class=\"story-link\" style=\"color: rgb(59, 89, 152); display: block;\"><h2 class=\"story-heading\" style=\"margin: 0px; font-size: 1.3rem; line-height: 2rem; font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding-top: 0px; padding-left: 10px; position: relative; color: rgb(151, 25, 40);\">Dấu hiệu bất thường khi ngủ, đến viện khám ngay kẻo \'ân hận mấy cũng muộn\'</h2></a></article><article class=\"story theme-summary\" data-id=\"1240654\" style=\"margin-bottom: 5px;\"><a href=\"https://www.tienphong.vn/suc-khoe/nhung-dai-ky-khi-an-bap-cai-khong-phai-ai-cung-biet-1658889.tpo\" title=\"Những \'đại kỵ\' khi ăn bắp cải không phải ai cũng biết\" class=\"story-link\" style=\"color: rgb(59, 89, 152); display: block;\"><h2 class=\"story-heading\" style=\"margin: 0px; font-size: 1.3rem; line-height: 2rem; font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding-top: 0px; padding-left: 10px; position: relative; color: rgb(151, 25, 40);\">Những \'đại kỵ\' khi ăn bắp cải không phải ai cũng biết</h2></a></article><article class=\"story theme-summary\" data-id=\"1240392\" style=\"margin-bottom: 5px;\"><a href=\"https://www.tienphong.vn/suc-khoe/canh-bao-thuc-pham-bao-ve-suc-khoe-rizin-quang-cao-nhu-thuoc-chua-benh-1658400.tpo\" title=\"Cảnh báo thực phẩm bảo vệ sức khỏe Rizin quảng cáo như thuốc chữa bệnh\" class=\"story-link\" style=\"color: rgb(59, 89, 152); display: block;\"><h2 class=\"story-heading\" style=\"margin: 0px; font-size: 1.3rem; line-height: 2rem; font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding-top: 0px; padding-left: 10px; position: relative; color: rgb(151, 25, 40);\">Cảnh báo thực phẩm bảo vệ sức khỏe Rizin quảng cáo như thuốc chữa bệnh</h2></a></article><article class=\"story theme-summary\" data-id=\"1240014\" style=\"margin-bottom: 0px; padding-bottom: 0px; border-bottom: none; background: 0px 0px;\"><a href=\"https://www.tienphong.vn/suc-khoe/moi-ngay-viet-nam-xet-nghiem-gan-2000-mau-tim-covid19-1657673.tpo\" title=\"Mỗi ngày Việt Nam xét nghiệm gần 2.000 mẫu tìm COVID-19\" class=\"story-link\" style=\"color: rgb(59, 89, 152); display: block;\"><h2 class=\"story-heading\" style=\"margin: 0px; font-size: 1.3rem; line-height: 2rem; font-family: roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; padding-top: 0px; padding-left: 10px; position: relative; color: rgb(151, 25, 40);\">Mỗi ngày Việt Nam xét nghiệm gần 2.000 mẫu tìm COVID-19</h2></a></article></div></div><div class=\"article-body cms-body AdAsia\" id=\"article-body\" itemprop=\"articleBody\" style=\"font-size: 1.5rem; line-height: 2.5rem;\"><div style=\"margin-bottom: 15px; font-size: 1.5rem; line-height: 2.5rem;\">Theo đó, thông tin từ tiểu Ban điều trị cho biết đến hôm nay sức khoẻ của&nbsp;<a href=\"https://www.tienphong.vn/suc-khoe/dau-hieu-bat-thuong-khi-ngu-den-vien-kham-ngay-keo-an-han-may-cung-muon-1658922.tpo\" rel=\"\" class=\"cms-relate\" style=\"color: rgb(165, 10, 2);\">BN91 là nam phi công người Anh, 43 tuổi</a>&nbsp;đang điều trị tại Bệnh viện Bệnh Nhiệt đới TP Hồ Chí Minh tuy tiên lượng còn nặng nhưng có tiến triển khá hơn.<br><br>Bệnh nhân có kết quả xét nghiệm âm tính 5 lần liên tiếp với virus SARS-CoV-2 và hiện đã ngừng dẫn lưu màng phổi. Hiện tại, tình trạng bệnh nhân không sốt, mạch và huyết áp ổn định, đang tiếp tục thở máy. Kết quả X-quang mới nhất cho thấy phổi của bệnh nhân hết tràn khí và còn ít dịch.<br><br>Đến hôm nay, BN91 đã trải qua 59 ngày điều trị (Bệnh nhân vào viện ngày 18/3/2020). Bệnh nhân tiếp tục sử dụng máy ECMO ngày thứ 42. Đây là bệnh nhân nặng nhất đến thời điểm này. Ê-kíp đang nỗ lực nâng sức khỏe phi công người Anh để có thể chuyển sang BV Chợ Rẫy chuẩn bị cho ca ghép phổi.<br><br>Theo Ban Chỉ đạo quốc gia, mức tổn thương phổi của BN 91 đã được xác định nhờ chụp CT, tổn thương phổi được đánh giá ở mức độ lớn và có chỉ định ghép phổi.<br><br>Trong những ngày qua, phi công người Anh được xác định có biểu hiện nhiễm trùng nhiều tạng. Hiện các bác sĩ vừa tập trung điều trị nhiễm trùng vừa hồi sức cho bệnh nhân.<br><br>Trung tâm Điều phối ghép tạng Quốc gia và Bệnh viện Hữu nghị Việt Đức đã khởi động chương trình tìm nguồn cho tạng có đủ điều kiện và<a href=\"https://www.tienphong.vn/suc-khoe/dau-hieu-bat-thuong-khi-ngu-den-vien-kham-ngay-keo-an-han-may-cung-muon-1658922.tpo\" rel=\"\" class=\"cms-relate\" style=\"color: rgb(165, 10, 2);\">&nbsp;chuẩn bị đầy đủ các điều kiện để ghép phổi cho BN 91</a>.<br><br>Cục Quản lý Khám, chữa bệnh (Bộ Y tế) cũng đang xem xét, nghiên cứu các văn bản quy định pháp lý, đồng thời xác định chi phí chi phí ghép, chi phí điều trị để tìm kiếm nguồn tài trợ.<br><br>Nhập viện từ ngày 18/3, đến nay BN 91 đãcó gần 2 tháng nằm viện và là ca nặng nhất trong số các bệnh nhân điều trị COVID-19 ở Việt Nam.<br><br>Trong gần 2 tháng qua, tình trạng sức khỏe bệnh nhân liên tục tiến triển phức tạp, đã nhiều lần có kết quả xét nghiệm âm tính rồi lại dương tính. Theo các chuyên gia giải thích, bệnh nhân có thể trạng béo phì, cơ thể lại phản ứng quá mức với virus SARS-CoV-2, tạo ra \"cơn bão cytokine\", tấn công cả tế bào lành. Bên cạnh đó, BN 91 cũng kháng toàn bộ với các loại thuốc rối loạn đông máu đang được dùng trong nước, Bộ Y tế đã đặt mua thuốc hiếm từ nước ngoài để điều trị.<br><br>Hiện có gần 50 người đăng ký tình nguyện hiến tặng một phần phổi để ghép phổi cho phi công người Anh. Tuy nhiên, các bác sĩ vẫn ưu tiên số 1 là tìm tạng hiến tặng từ người hiến đã chết não để tiến hành quy trình ghép phổi cho bệnh nhân 91.</div></div></div></div>', '2020-05-16 16:47:11', '2020-05-17 07:59:36', 'https://photo-3-baomoi.zadn.vn/w200_r3x2_sm/2020_05_17_119_35070830/141bbe1edc5d35036c4c.jpg'),
(3, 'Tiếp tục đưa hàng trăm công dân Việt Nam từ Hoa Kỳ về nước', 'tiep-tuc-dua-hang-tram-cong-dan-viet-nam-tu-hoa-ky-ve-nuoc', '<div class=\"summary\" style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">(Chinhphu.vn) – Tiếp tục thực hiện chỉ&nbsp;đạo của Thủ tướng Chính phủ, trong các ngày 15, 16/5, các cơ quan chức năng Việt Nam, các cơ quan đại diện Việt Nam tại Hoa Kỳ, Hãng hàng không Quốc gia Việt Nam và các cơ quan chức năng Hoa Kỳ&nbsp;đã phối hợp thực hiện chuyến bay chở hơn 340 công dân Việt Nam từ Washington DC về nước an toàn.</div><ul class=\"inline-related\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 15px 15px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); list-style-position: initial; list-style-image: initial; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><li style=\"margin: 0px 0px 5px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: disc;\"><a id=\"ctl00_leftContent_ND_ctl02_rptItems_ctl01_lnkHeadline\" href=\"http://baochinhphu.vn/Tin-noi-bat/Do-la-Nghia-dong-bao/390207.vgp\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 51, 102); text-decoration-line: underline;\">Đó là “Nghĩa đồng bào”</a></li></ul><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"></p><table class=\"picBox\" align=\"center\" style=\"border: 1px solid rgb(204, 204, 204); margin-bottom: 15px; padding-bottom: 5px; font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(238, 238, 238);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><tr><td style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\"><img alt=\"\" src=\"http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/DaisuHaKimNgoc.jpg\" style=\"margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background: transparent; max-width: 450px; width: 450px; height: 338px;\"></td></tr><tr><td class=\"desc\" style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\">Đại sứ Hà Kim Ngọc cùng các học sinh, sinh viên Việt Nam tại sân bay&nbsp;Washington DC, Hoa Kỳ. Ảnh BNG<br></td></tr></tbody></table><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Hành khách trên chuyến bay đến từ nhiều bang ở Hoa Kỳ, bao gồm người cao tuổi, người có bệnh nền, thanh thiếu niên dưới 18 tuổi (trong đó có trẻ sơ sinh), sinh viên không có nơi lưu trú do trường học và ký túc xá&nbsp;đóng cửa, các trường hợp đi công tác, du lịch, thăm thân lưu lại sở tại do các hãng hàng không tạm ngừng chuyến bay và các trường hợp có hoàn cảnh đặc biệt khó khăn khác.</p><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"></p><table width=\"1\" class=\"picBox\" align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" style=\"border: 1px solid rgb(204, 204, 204); margin-bottom: 15px; padding-bottom: 5px; font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(238, 238, 238);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><tr><td style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\"><img alt=\"\" src=\"http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/1.JPG\" style=\"margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background: transparent; max-width: 450px; width: 450px; height: 300px;\"></td></tr></tbody></table><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Để giúp công dân hoàn thành các thủ tục cần thiết, Đại sứ quán Việt Nam tại Hoa Kỳ&nbsp;đã cử cán bộ trực tiếp đến sân bay phối hợp với hãng hàng không để hỗ trợ công dân trước khi lên máy bay về nước.</p><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"></p><table class=\"picBox\" align=\"center\" style=\"border: 1px solid rgb(204, 204, 204); margin-bottom: 15px; padding-bottom: 5px; font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(238, 238, 238);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><tr><td style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\"><img alt=\"\" src=\"http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/Hanhkhachlenmaybay.jpg\" style=\"margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background: transparent; max-width: 450px; width: 450px; height: 338px;\"></td></tr><tr><td class=\"desc\" style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\">Công dân Việt Nam từ Hoa Kỳ làm thủ tục lên máy bay về nước. Ảnh BNG</td></tr></tbody></table><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Trong suốt chuyến bay, hành khách và toàn bộ tổ bay chấp hành các quy định về phòng, chống dịch bệnh COVID-19 và vệ sinh dịch tễ.</p><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"></p><table width=\"1\" class=\"picBox\" align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" style=\"border: 1px solid rgb(204, 204, 204); margin-bottom: 15px; padding-bottom: 5px; font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(238, 238, 238);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><tr><td style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\"><img alt=\"\" src=\"http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/2.jpg\" style=\"margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background: transparent; max-width: 450px; width: 450px; height: 338px;\"></td></tr></tbody></table><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Ngay sau khi hạ cánh xuống sân bay quốc tế Nội Bài, toàn bộ hành khách và phi hành đoàn tham gia chuyến bay đã&nbsp;được giám sát y tế và cách ly tập trung theo đúng quy định.</p><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"></p><table class=\"picBox\" align=\"center\" style=\"border: 1px solid rgb(204, 204, 204); margin-bottom: 15px; padding-bottom: 5px; font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(238, 238, 238);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\"><tr><td style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\"><img alt=\"\" src=\"http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/Maybay.jpg\" style=\"margin: 0px; padding: 0px; outline: 0px; vertical-align: baseline; background: transparent; max-width: 450px; width: 450px; height: 338px;\"></td></tr><tr><td class=\"desc\" style=\"border: 1px solid rgb(221, 221, 221); padding: 5px; text-align: center;\">Hành khách và toàn bộ tổ bay chấp hành các quy định về phòng, chống dịch bệnh và vệ sinh dịch tễ. Ảnh BNG<br></td></tr></tbody></table><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Thời gian tới, các cơ quan chức năng Việt Nam, các cơ quan đại diện Việt Nam ở nước ngoài và các hãng hàng không trong nước sẽ tiếp tục thực hiện các chuyến bay đưa công dân về nước trên cơ sở diễn biến dịch bệnh trong nước và quốc tế, nguyện vọng về nước của công dân và năng lực cách ly tại các địa phương.</p><p style=\"margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">* Trước đó, trong các ngày 7-8/5, các cơ quan chức năng Việt Nam, các cơ quan đại diện Việt Nam tại Hoa Kỳ, Hãng hàng không Quốc gia Việt Nam và các cơ quan chức năng Hoa Kỳ đã phối hợp chặt chẽ thực hiện chuyến bay chở hơn 340 công dân Việt Nam từ sân bay San Francisco về nước an toàn. Hành khách trên chuyến bay đến từ nhiều bang ở Hoa Kỳ, bao gồm nhiều trẻ em dưới 18 tuổi (trong đó có trẻ sơ sinh 3 tháng tuổi), du học sinh không có nơi lưu trú do ký túc xá đóng cửa, người cao tuổi, người có bệnh nền và các trường hợp đặc biệt khó khăn khác./.</p>', '2020-05-16 17:20:06', '2020-05-17 02:43:42', 'http://baochinhphu.vn/Uploaded/tranducmanh/2020_05_17/DaisuHaKimNgoc.jpg'),
(4, 'Hà Nội chăm lo tổ chức và cán bộ theo lời Bác dặn', 'ha-noi-cham-lo-to-chuc-va-can-bo-theo-loi-bac-dan', '<p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">(HNM) - Tư tưởng Hồ Chí Minh về công tác tổ chức xây dựng Đảng và công tác cán bộ là định hướng lớn cho các cấp ủy Đảng từ Trung ương đến cơ sở, trong đó Đảng bộ thành phố Hà Nội luôn xác định phải gương mẫu đi đầu, nỗ lực thực hiện hiệu quả nhất. Thực tiễn cho thấy, những năm gần đây, dưới sự lãnh đạo, chỉ đạo của Thành ủy Hà Nội, công tác tổ chức xây dựng Đảng và công tác cán bộ ở Đảng bộ Thủ đô luôn được chăm lo, thực hiện đồng bộ với nhiều đổi mới, sáng tạo.</strong></p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: center;\"></p><div style=\"text-rendering: geometricprecision; margin: 0px; padding: 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; font-size: 18px; text-align: justify;\"><div class=\"thumbox\" style=\"letter-spacing: 0px; text-rendering: geometricprecision; margin: 8px 0px 2px; padding: 0px; background: rgb(250, 250, 250); color: rgb(102, 102, 102); font-size: 14px; overflow: hidden;\"><img src=\"http://hanoimoi.com.vn/Uploads/images/phananh/2020/05/17/4LeLai-VietThanh.jpg\" style=\"letter-spacing: 0px; text-rendering: geometricprecision; display: block; width: 646.578px; margin: auto; cursor: zoom-in;\"></div></div><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"></p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">Đồng bộ, nhiều đổi mới sáng tạo</strong></p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Tư tưởng Hồ Chí Minh về công tác tổ chức xây dựng Đảng và công tác cán bộ xét cho cùng là nhằm xây dựng tổ chức Đảng trong sạch, vững mạnh, bảo đảm năng lực lãnh đạo, sức chiến đấu; xây dựng đội ngũ cán bộ, đảng viên “vừa hồng, vừa chuyên” đáp ứng yêu cầu nhiệm vụ trong từng giai đoạn cách mạng. Qua 16 kỳ đại hội, trong đó có gần 35 năm đổi mới, tương ứng với mỗi giai đoạn, Hà Nội đều thể hiện được tầm nhìn, cách làm hiệu quả về công tác tổ chức xây dựng Đảng và công tác cán bộ.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Nhiều người vẫn chưa quên thời điểm triển khai thực hiện Nghị quyết số 15/2008/QH12 ngày 29-5-2008 của Quốc hội khóa XII về “Điều chỉnh địa giới hành chính thành phố Hà Nội và một số tỉnh có liên quan”. Lúc này, Hà Nội đứng trước bài toán hóc búa về công tác nhân sự khi bộ máy của thành phố Hà Nội (cũ) và tỉnh Hà Tây (cũ) hợp nhất lại. Tìm lời giải, thành phố xác định phải thực hiện nghiêm nguyên tắc tập trung dân chủ mà Chủ tịch Hồ Chí Minh đã dạy, triển khai các bước công tác cán bộ công khai, minh bạch; khơi dậy tình cảm sẻ chia, trách nhiệm nêu gương của mỗi cán bộ. Trong thời gian ngắn, Hà Nội đã bổ nhiệm, luân chuyển hàng trăm người, đưa bộ máy nhanh chóng ổn định, vận hành thông suốt. Nguyên Phó Bí thư Thường trực Thành ủy Hà Nội Nguyễn Công Soái khẳng định: “Mấu chốt thành công ở đây là thành phố quyết liệt thực hiện đúng nguyên tắc và cán bộ biết nghĩ vì cái chung”.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Những kinh nghiệm này tiếp tục được thành phố Hà Nội phát huy trong những năm tiếp theo và thu được kết quả tích cực. Chỉ tính riêng từ năm 2016 đến nay, trong khối Đảng, đoàn thể cấp thành phố, Hà Nội đã hoàn thành việc sắp xếp, kiện toàn 20 đơn vị gồm các ban Đảng Thành ủy, các Đảng ủy khối, đơn vị sự nghiệp trực thuộc Thành ủy, Ủy ban Mặt trận Tổ quốc Việt Nam, đoàn thể chính trị - xã hội thành phố; sau sắp xếp giảm 13 đầu mối phòng, ban; giảm 49 cán bộ cấp trưởng - phó phòng, ban và tương đương. Thành phố cũng đã kiện toàn, sắp xếp giảm 5/17 ban chỉ đạo do Ban Thường vụ Thành ủy thành lập. Số lượng các đảng bộ trực thuộc Đảng bộ thành phố Hà Nội đến nay cũng đã giảm từ 59 đảng bộ xuống còn 50 đảng bộ...</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Để bảo đảm xây dựng Đảng vững chắc về mặt tổ chức, một mặt chỉ đạo xây dựng và hoàn thiện quy chế, quy trình công tác, Ban Thường vụ Thành ủy Hà Nội ban hành Nghị quyết số 15-NQ/TU ngày 4-7-2017 về “Xây dựng tổ chức cơ sở Đảng trong sạch, vững mạnh, củng cố cơ sở Đảng yếu kém; giải quyết các vấn đề phức tạp về an ninh chính trị, trật tự&nbsp;an toàn xã hội trên địa bàn xã, phường, thị trấn thuộc thành phố Hà Nội”. Nhờ đó, Hà Nội đã thống kê được những tổ chức cơ sở Đảng yếu kém, có khó khăn trong toàn Đảng bộ thành phố. Gần 3 năm qua, hơn 190 tổ chức cơ sở Đảng yếu kém đã được củng cố.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Thấm nhuần lời dạy của Chủ tịch Hồ Chí Minh coi “cán bộ là cái gốc của mọi công việc”, Thành ủy Hà Nội đã tích cực nghiên cứu, tổ chức thực hiện đồng bộ các giải pháp để ngày càng nâng cao chất lượng đội ngũ. Theo Ủy viên Ban Thường vụ Thành ủy, Trưởng ban Tổ chức Thành ủy Vũ Đức Bảo, đến nay, đội ngũ cán bộ, công chức, viên chức, người lao động trong hệ thống chính trị đã được sắp xếp theo vị trí việc làm gắn với đào tạo, bồi dưỡng và đánh giá cán bộ. Hà Nội còn thực hiện đánh giá cán bộ hằng tháng với thang điểm 100 trong toàn hệ thống chính trị từ tháng 7-2018; khắc phục cơ bản tình trạng cào bằng, tạo động lực phấn đấu cho đội ngũ cán bộ các cấp. Những cán bộ trong diện quy hoạch đều được cử đi học nâng cao trình độ chuyên môn, lý luận chính trị…</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">Xứng đáng với niềm tin yêu của Bác</strong></p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Từ lúc chỉ có vài đảng viên cốt cán những ngày đầu thành lập (năm 1930), đến nay Hà Nội là đảng bộ lớn nhất cả nước với 50 đảng bộ trực thuộc, trên 2.700 tổ chức cơ sở Đảng, gần 18.000 chi bộ với số lượng đảng viên chiếm 10% tổng số đảng viên cả nước.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Theo Trưởng ban Tổ chức Thành ủy Vũ Đức Bảo, đội ngũ cán bộ từ thành phố đến cơ sở có cơ cấu ngày càng hợp lý, bảo đảm sự chuyển tiếp giữa các thế hệ. Hệ số quy hoạch Ban Chấp hành Đảng bộ thành phố nhiệm kỳ 2020-2025 so với nhiệm kỳ 2015-2020 tăng từ 1,49 lên 1,98; trình độ chuyên môn thạc sĩ trở lên tăng từ 48,2% lên 73,2%; trình độ lý luận chính trị cao cấp, cử nhân tăng từ 92,9% lên 93,3%; tuổi bình quân giảm từ 47,35 xuống 45,14.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Kết quả công tác tổ chức cán bộ tại Đảng bộ Hà Nội thường xuyên được Trung ương ghi nhận, đánh giá cao. Ủy viên Bộ Chính trị, Bí thư Trung ương Đảng, Trưởng ban Tổ chức Trung ương Phạm Minh Chính khẳng định: “Trong giai đoạn Hà Nội điều chỉnh địa giới hành chính, khâu khó nhất chính là tổ chức cán bộ, bởi động chạm đến lợi ích nhiều người. Tuy nhiên, Hà Nội đã làm rất êm và là kinh nghiệm quý để các địa phương học tập”. Từng dẫn đầu Đoàn công tác ra Hà Nội trao đổi kinh nghiệm về công tác cán bộ, Phó Bí thư Thành ủy thành phố Hồ Chí Minh Võ Thị Dung cho biết: “Hà Nội đã đi trước trong việc thực hiện tinh giản biên chế, sắp xếp lại đội ngũ cán bộ”.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Nhờ làm tốt công tác tổ chức xây dựng Đảng và công tác cán bộ, vai trò lãnh đạo, chỉ đạo của tổ chức Đảng và đội ngũ cán bộ, đảng viên ngày càng được khẳng định. Đây là yếu tố quyết định thúc đẩy Thủ đô hoàn thành toàn diện các nhiệm vụ, trong đó nhiều nhiệm vụ dẫn đầu cả nước. Đặc biệt, từ đầu năm 2020 đến nay, đứng trước thử thách rất lớn là dịch Covid-19 diễn biến phức tạp, các cấp ủy Đảng đã tập trung lãnh đạo huy động sức mạnh tổng hợp của cả hệ thống chính trị, các tầng lớp nhân dân chung sức đẩy lùi dịch bệnh. “Ở địa bàn có mức độ giao thương mở nhất cả nước, kết quả phòng, chống dịch là minh chứng cho năng lực lãnh đạo và sức chiến đấu của Đảng bộ thành phố”, ông Tạ Quang Nam, phường Xuân Phương, quận Nam Từ Liêm khẳng định.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Mặc dù vậy, với tinh thần cầu thị, Thành ủy Hà Nội đã phân tích, chỉ rõ những mặt còn tồn tại, hạn chế trong công tác tổ chức xây dựng Đảng và công tác cán bộ. Trong đó, vai trò hạt nhân lãnh đạo chính trị của một số tổ chức Đảng chưa đáp ứng yêu cầu. Sinh hoạt chi bộ ở một số đơn vị còn hình thức. Năng lực lãnh đạo, sức chiến đấu của một số cấp ủy cơ sở hạn chế; cá biệt, có cấp ủy mất vai trò lãnh đạo, chỉ đạo. Một bộ phận cán bộ có biểu hiện suy thoái tư tưởng chính trị, đạo đức, lối sống, “tự diễn biến”, “tự chuyển hóa”, có cán bộ vi phạm pháp luật bị xử lý hình sự...</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Trước tình hình đó, Thành ủy Hà Nội yêu cầu, trong năm cuối của nhiệm kỳ 2015-2020, các cấp ủy Đảng tiếp tục tập trung thực hiện đồng bộ, quyết liệt các giải pháp của Chương trình số 01-CTr/TU ngày 26-4-2016 của Thành ủy về “Nâng cao năng lực lãnh đạo, sức chiến đấu của tổ chức Đảng và chất lượng đội ngũ cán bộ, đảng viên trong toàn Đảng bộ; tiếp tục thực hiện Nghị quyết Trung ương 4 (khóa XI) tạo chuyển biến mạnh về công tác xây dựng, chỉnh đốn Đảng; xây dựng hệ thống chính trị các cấp thực sự trong sạch, vững mạnh giai đoạn 2016-2020”.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Đặc biệt, theo chỉ đạo của Thành ủy Hà Nội, song song với công tác chuẩn bị tổ chức đại hội đảng bộ các cấp, tiến tới Đại hội đại biểu lần thứ XVII Đảng bộ thành phố, các cấp ủy tập trung khắc phục 9 cấp ủy cấp huyện, 69 tổ chức cơ sở Đảng có khó khăn cần quan tâm, củng cố 30 tổ chức cơ sở Đảng yếu kém còn lại. Đồng thời, thông qua giải quyết đơn thư, kiến nghị, phản ánh của người dân, những việc mới, việc khó; các cấp ủy phải sàng lọc cán bộ, lựa chọn nhân sự cho cấp ủy khóa mới.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Các cấp ủy Đảng và mỗi cán bộ, đảng viên cùng phát huy tinh thần chủ động, sáng tạo, chung sức vì mục tiêu xây dựng Đảng bộ Hà Nội trong sạch, vững mạnh cả về chính trị, tư tưởng, tổ chức và đạo đức; là Đảng bộ tiêu biểu cho cả nước; đáp ứng yêu cầu sự nghiệp xây dựng và bảo vệ Thủ đô trong tình hình mới; xứng đáng với niềm tin yêu và kỳ vọng của Chủ tịch Hồ Chí Minh lúc sinh thời.</p>', '2020-05-16 17:20:17', '2020-05-17 02:45:46', 'http://hanoimoi.com.vn/Uploads/images/phananh/2020/05/17/4LeLai-VietThanh.jpg'),
(5, '[Java Basic] Guideline - Mục lục - ADF1 - C1907L - 2', 'java-basic-guideline-muc-luc-adf1-c1907l-2', '<p class=\"the-article-summary\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif; line-height: 1.618; font-weight: bold; color: rgb(51, 51, 51); clear: both; float: left; width: 580px;\">Trong ngày trở lại của Bundesliga tối 16/5, Erling Haaland mở tỷ số cho Borussia Dortmund sau pha băng cắt và dứt điểm gọn gàng.</p><div class=\"the-article-body\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; float: left; width: 580px; position: relative; font-family: &quot;Noto Serif&quot;, serif; color: rgb(51, 51, 51); line-height: 1.618;\"><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; float: none; width: 580px;\">Phút 29, Haaland đón đường chuyền của Thorgan Hazard và nhẹ nhàng dứt điểm đánh bại thủ môn Markus Schubert. Đây là bàn thắng thứ 13 của Haaland tại&nbsp;<a href=\"https://zingnews.vn/tieu-diem/dortmund-fc.html\" class=\"topic company autolink quickview\" topic-id=\"3929\" style=\"text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 72, 97); cursor: pointer; white-space: nowrap; border-bottom: 1px dashed rgb(187, 187, 187);\">Dortmund</a>&nbsp;tính trên mọi đấu trường. Chân sút người Na Uy ra sân 12 trận, ghi 13 bàn và hiệu suất này khiến CĐV kinh ngạc.</p><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Theo&nbsp;<em style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Opta</em>, Haaland trở thành cầu thủ thứ 2 ở Bundesliga đạt thành tích ghi 13 bàn sau 12 trận đầu tiên cho CLB. 55 năm trước, Matischek làm điều tương tự Haaland trong màu áo Werder Bremen.</p><table class=\"picture\" align=\"center\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 0.8em; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; width: 580px; font-family: sans-serif; color: rgb(136, 136, 136);\"><tbody style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\"><tr style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\"><td class=\"pic\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;\"><div class=\"zad-inimage-wrapper\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; overflow: hidden;\"><img src=\"https://znews-photo.zadn.vn/w660/Uploaded/qxjrcqjwq/2020_05_16/haaland_im_trikot_vom_bvb_1581427183_31574.jpg\" alt=\"Haaland lam dieu chua tung thay trong 55 nam qua hinh anh 1 haaland_im_trikot_vom_bvb_1581427183_31574.jpg\" data-bind-event=\"true\" slide-pos=\"1\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; display: block; height: auto; width: 580px;\"></div></td></tr><tr style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\"><td class=\"pCaption caption\" style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding-top: 5px; padding-bottom: 8px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;\"><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; display: inline;\">Haaland bùng nổ trong ngày bóng lăn trở lại. Ảnh:&nbsp;<em style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 14.08px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Getty.</em></p></td></tr></tbody></table><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Tính riêng ở Bundesliga, Haaland ghi 10 bàn sau 9 trận ra sân (3 từ ghế dự bị). Anh là chân sút số một tại Bundesliga nếu tính ở 9 vòng gần nhất, bỏ xa dàn ngôi sao như Robert Lewandowski (6 bàn) và Serge Grabry (5 bàn).</p><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Haaland được gọi là “ông vua” của những trận mở màn. Anh ghi bàn khi ra mắt Dortmund tại Bundesliga,&nbsp;<a href=\"https://zingnews.vn/tieu-diem/champions-league934.html\" title=\"Tin tức Champions League\" class=\"topic normal autolink\" topic-id=\"934\" style=\"text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 72, 97); cursor: pointer; border-bottom: 0px none;\">Champions League</a>&nbsp;và cúp quốc gia Đức. Haaland cũng là cầu thủ đầu tiên ghi bàn trong ngày bóng lăn trở lại ở Bundesliga. CĐV đã chờ đợi 66 ngày để chứng kiến bàn thắng đầu tiên.</p><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Tiền đạo người Na Uy ghi một bàn và thực hiện pha kiến tạo trong trận này. Dortmund dễ dàng đánh bại Schalke 04 với tỷ số 4-0. Ba bàn thắng còn lại được ghi do công Raphael Guerreiro (cú đúp) và Thorgan Hazard.</p><p style=\"text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\">Trận thắng đậm trong ngày trở lại giúp Dortmund có 54 điểm sau 26 trận. Haaland và các đồng đội còn kém&nbsp;<a href=\"https://zingnews.vn/tieu-diem/bayern-munich.html\" class=\"topic company autolink quickview\" topic-id=\"3859\" style=\"text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 72, 97); cursor: pointer; white-space: nowrap; border-bottom: 1px dashed rgb(187, 187, 187);\">Bayern Munich</a>&nbsp;một điểm ở vị trí dẫn đầu, nhưng thi dấu nhiều hơn một trận.</p></div>', '2020-05-16 17:46:32', '2020-05-16 17:47:03', 'https://res.cloudinary.com/ziczacgroup/image/upload/v1584087882/prk91akfv5rz3ipx4nos.png'),
(6, 'Nguy cơ cao lũ quét, sạt lở đất ở vùng núi Bắc Bộ', 'nguy-co-cao-lu-quet-sat-lo-dat-o-vung-nui-bac-bo', '<div class=\"sapo\" style=\"margin: 0px; padding: 0px; font-weight: bold; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><p style=\"padding: 0px;\">NDĐT - Theo Trung tâm Dự báo Khí tượng Thủy văn quốc gia, hôm nay, 17-5, ở các tỉnh Bắc Bộ có mưa dông diện rộng, riêng vùng núi và khu Đông Bắc có nơi mưa rất to. Nguy cơ cao xảy ra lũ quét, sạt lở đất ở các tỉnh Cao Bằng, Bắc Kạn, Thái Nguyên, Lạng Sơn, Bắc Giang (trong đó nguy cơ rất cao ở hai tỉnh Cao Bằng và Lạng Sơn).</p><p style=\"padding: 0px;\"></p></div><div class=\"media content-box mgb-0\" style=\"margin: 0px; padding: 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><img class=\"mr-3 img-responsive\" src=\"https://nhandan.com.vn/cdn/vn/media/k2/items/src/4450/x6a0b960a2f1834f2d0b3600ae4aee7aa.jpg.pagespeed.ic.RTWlLYPPAT.webp\" alt=\"Nguy cơ cao lũ quét, sạt lở đất ở vùng núi Bắc Bộ\" data-pagespeed-url-hash=\"4150790274\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 545px;\"><p class=\"image-caption mgb-0 pbt-10\" style=\"margin-bottom: 0px; padding: 10px 0px; font-style: italic; color: rgb(63, 99, 239); text-align: center;\"></p></div><div class=\"item-content\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><p style=\"padding: 0px;\"></p><p style=\"padding: 0px;\">Hiện nay (17-5), rãnh áp thấp bị nén có trục đi qua khu vực vùng núi và trung du Bắc Bộ và tiếp tục bị áp cao lục địa ở phía bắc nén và đẩy dịch dần xuống phía nam.</p><p style=\"padding: 0px;\">Do chịu ảnh hưởng của rãnh áp thấp bị nén phân tích trên, ngày và đêm nay, 17-5, ở các tỉnh Bắc Bộ có mưa dông trên diện rộng, riêng vùng núi và khu Đông Bắc có mưa vừa, mưa to, có nơi mưa rất to (lượng mưa 40-70mm/24 giờ, có nơi hơn 100mm/24 giờ); từ chiều tối và đêm nay mưa dông mở rộng xuống khu vực Bắc Trung Bộ. Trong mưa dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh.</p><p style=\"padding: 0px;\">Sáng nay, ở khu vực tỉnh Cao Bằng có mưa to đến rất to. Lượng mưa đo được tại trạm Quảng Uyên 72,2 mm, Trà Lĩnh 46,8mm, Án Lại 41mm, Hạ Lang 30,6mm… Dự báo trong những giờ tới, vùng mây đối lưu dịch chuyển theo hướng Tây Bắc - Đông Nam, ở khu vực các tỉnh Cao Bằng, Bắc Kạn, Lạng Sơn sẽ có mưa vừa đến mưa to. Lượng mưa dự báo trong khoảng từ 40 - 70mm, có nơi hơn 90mm.</p><p style=\"padding: 0px;\">Cảnh báo lũ quét, sạt lở đất và ngập úng cục bộ có nguy cơ xảy ra tại các huyện thuộc tỉnh Cao Bằng: Trà Lĩnh, Quảng Uyên, Trùng Khánh, Hạ Lang, Phục Hòa; tỉnh Bắc Kạn: Ngân Sơn, Na Rì; tỉnh Lạng Sơn: Tràng Định, Bình Gia, Văn Quan, Văn Lãng.</p><p style=\"padding: 0px;\">Khu vực Hà Nội ngày và đêm nay có mưa rào và dông, cục bộ có mưa vừa, mưa to. Trong mưa dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Cấp độ rủi ro thiên tai do lốc, sét, mưa đá: cấp 1.</p><p style=\"padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Tin cuối cùng về cơn bão Vongfong:&nbsp;</strong>Sáng sớm nay, 17-5, bão Vongfong đã suy yếu thành áp thấp nhiệt đới. Hồi 7 giờ ngày 17-5, vị trí tâm áp thấp nhiệt đới ở vào khoảng 20,4 độ vĩ bắc; 121,2 độ kinh đông, trên khu vực phía bắc đảo Luzon (Philippines). Sức gió mạnh nhất vùng gần tâm áp thấp nhiệt đới mạnh cấp 6 (40-50 km/giờ), giật cấp 7.</p><p style=\"padding: 0px;\"></p><p style=\"padding: 0px;\">Dự báo trong 24 giờ tới, áp thấp nhiệt đới di chuyển theo hướng Đông Bắc mỗi giờ đi được 10-15km và suy yếu thành vùng áp thấp. Đây là tin cuối cùng về cơn bão Vongfong.</p><p style=\"padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Dự báo thời tiết ngày và đêm 17-5 tại các địa phương trên cả nước:</strong></p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Khu vực Hà Nội</i>: Nhiều mây, có mưa rào và dông, cục bộ có mưa vừa, mưa to. Gió đông nam cấp 2-3. Trong cơn dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất từ: 23-26 độ C. Nhiệt độ cao nhất từ: 28-31 độ C, có nơi hơn 31 độ C.</p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Phía Tây Bắc Bộ</i>: Nhiều mây, có mưa rào và dông rải rác; riêng khu Tây Bắc có mây, ngày nắng, có nơi nắng nóng, chiều tối và đêm có mưa rào và dông vài nơi. Gió nhẹ. Trong cơn dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất từ: 23-26 độ C, có nơi dưới 23 độ C. Nhiệt độ cao nhất từ: 30-33 độ C, riêng khu Tây Bắc 33-36 độ C, có nơi 36 độ C.</p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Phía Đông Bắc Bộ</i>: Nhiều mây, có mưa rào và rải rác có dông; riêng vùng núi và khu đông bắc có mưa vừa, mưa to, có nơi mưa rất to. Gió nhẹ. Trong cơn dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất từ: 23-26 độ C. Nhiệt độ cao nhất từ: 28-31 độ C, có nơi hơn 31 độ C.</p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Thanh Hóa đến Thừa Thiên Huế</i>: Có mây, ngày nắng nóng; chiều tối và đêm phía bắc có mưa rào và dông rải rác, phía Nam có mưa rào và dông vài nơi. Gió nhẹ. Trong cơn dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất từ: 24-27 độ C. Nhiệt độ cao nhất từ: 34-37 độ C, riêng vùng núi có nơi hơn 38 độ C.</p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Đà Nẵng đến Bình Thuận</i>: Có mây, ngày nắng; phía bắc có nắng nóng, chiều tối và đêm có mưa rào và dông vài nơi. Gió đông nam cấp 2-3. Trong cơn dông có khả năng xảy ra lốc, sét và gió giật mạnh. Nhiệt độ thấp nhất từ: 25-28 độ C. Nhiệt độ cao nhất từ: 33-36 độ C, phía bắc có nơi hơn 37 độ C.</p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Tây Nguyên</i>: Có mây, ngày nắng, chiều tối và tối có mưa rào và dông rải rác, đêm có mưa rào và dông vài nơi. Gió nhẹ. Trong cơn dông có khả năng xảy ra lốc, sét và gió giật mạnh. Nhiệt độ thấp nhất từ: 21-24 độ C. Nhiệt độ cao nhất từ: 31 - 34 độ C, có nơi hơn 34 độ C.</p><p style=\"padding: 0px;\"></p><p style=\"padding: 0px;\"><i style=\"margin: 0px; padding: 0px;\">Nam Bộ</i>: Có mây, ngày nắng, chiều tối và tối có mưa rào và dông rải rác, đêm có mưa rào và dông vài nơi. Gió nhẹ. Trong cơn dông có khả năng xảy ra lốc, sét và gió giật mạnh. Nhiệt độ thấp nhất từ: 25-28 độ Nhiệt độ cao nhất từ: 32 - 35 độ C.</p></div>', '2020-05-17 02:48:46', '2020-05-17 02:48:46', 'https://nhandan.com.vn/cdn/vn/media/k2/items/src/4450/x6a0b960a2f1834f2d0b3600ae4aee7aa.jpg.pagespeed.ic.RTWlLYPPAT.webp');
INSERT INTO `news` (`id`, `title`, `href_param`, `content`, `created_at`, `updated_at`, `thumbnail`) VALUES
(7, 'Tư tưởng Hồ Chí Minh lãnh đạo cách mạng Việt Nam thống nhất đất nước', 'tu-tuong-ho-chi-minh-lanh-dao-cach-mang-viet-nam-thong-nhat-dat-nuoc', '<p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">(HNM) - Tư tưởng Hồ Chí Minh là nền tảng lý luận và định hướng để Đảng Cộng sản Việt Nam xây dựng đường lối cách mạng đúng đắn, tổ chức lực lượng và lãnh đạo nhân dân Việt Nam giành thắng lợi trong Cách mạng Tháng Tám năm 1945. Tư tưởng của Người tiếp tục là ngọn đuốc soi đường để toàn Đảng, toàn dân, toàn quân ta giành chiến thắng trong các cuộc kháng chiến chống thực dân Pháp và đế quốc Mỹ, thống nhất đất nước trong giai đoạn 1945-1975.</strong></p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">1.</strong>&nbsp;Trải qua hơn 80 năm chịu cảnh lầm than, dân tộc Việt Nam làm nên cuộc Cách mạng Tháng Tám năm 1945 \"long trời, lở đất\", dẫn tới sự ra đời của nước Việt Nam Dân chủ Cộng hòa ngày 2-9-1945.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Trong Tuyên ngôn độc lập, Chủ tịch Hồ Chí Minh khẳng định: \"Nước Việt Nam có quyền hưởng tự do và độc lập, và sự thật đã thành một nước tự do, độc lập. Toàn thể dân tộc Việt Nam quyết đem tất cả tinh thần và lực lượng, tính mạng và của cải để giữ vững quyền tự do, độc lập ấy\". Đây là lời khẳng định và cũng là quyết tâm sắt đá của toàn thể dân tộc Việt Nam trong bảo vệ nền tự do, độc lập.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Tuy nhiên, niềm vui độc lập dân tộc Việt Nam được hưởng thật ngắn. Thực dân Pháp nhanh chóng quay trở lại xâm lược Việt Nam lần thứ hai. Chúng liên tiếp tiến công lấn chiếm nhiều nơi ở Nam Bộ, Nam Trung Bộ và gây hấn ở Bắc Bộ. Trước tình hình vô cùng khẩn cấp, đòi hỏi ta phải đứng lên chiến đấu bảo vệ nền độc lập vừa giành được.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Ngày 18 và 19-12-1946, Chủ tịch Hồ Chí Minh chủ trì họp Ban Thường vụ Trung ương Đảng nhận định tình hình và chỉ thị cho các địa phương \"Tất cả hãy sẵn sàng!\". Đến 20h ngày 19-12-1946, mệnh lệnh chiến đấu bắt đầu. Quân dân Thủ đô Hà Nội nổ súng mở đầu cuộc kháng chiến toàn quốc.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Ngay sau khi tiếng súng kháng chiến toàn quốc bùng nổ, Lời kêu gọi toàn quốc kháng chiến của Chủ tịch Hồ Chí Minh truyền đi khắp cả nước, trong đó nhấn mạnh: \"Bất kỳ đàn ông, đàn bà, bất kỳ người già, người trẻ, không chia tôn giáo, đảng phái, dân tộc. Hễ là người Việt Nam thì phải đứng lên đánh thực dân Pháp để cứu Tổ quốc\". Hưởng ứng Lời kêu gọi của Người, quân và dân Hà Nội cùng với cả nước đã anh dũng đứng lên kháng chiến chống thực dân Pháp xâm lược.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Để kháng chiến thắng lợi, theo Chủ tịch Hồ Chí Minh, sự lãnh đạo của Đảng là nhân tố quyết định, do đó phải xây dựng&nbsp;Đảng ngang tầm nhiệm vụ kháng chiến. Trong nhiều bài nói chuyện, bài viết, Người chỉ rõ: Đảng phải thường xuyên tiến hành phê bình và tự phê bình, phải tăng cường kiểm tra, kiểm soát, phải giữ gìn kỷ luật Đảng thật nghiêm minh và đặc biệt phải tăng cường mối quan hệ gắn bó máu thịt giữa Đảng, Nhà nước và nhân dân.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Bên cạnh đó, để kháng chiến sớm thành công, Chủ tịch Hồ Chí Minh chú trọng thực hiện chiến lược đoàn kết dân tộc và đoàn kết quốc tế. Người chỉ rõ, trong cuộc chiến tranh yêu nước, \"cái sức mạnh vô địch mà ta có thể thắng quân địch giành độc lập thống nhất là sự đoàn kết\".</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Về đoàn kết quốc tế, trong kháng chiến chống Pháp, Chủ tịch Hồ Chí Minh hai lần sang Trung Quốc và Liên Xô (1950, 1952), nhiều lần gửi thư cho chính phủ, nhân dân các nước, vừa nhằm củng cố quan hệ quốc tế, vừa cô lập kẻ thù. Đối với&nbsp;Lào và Campuchia, Người chỉ rõ: \"Giúp bạn là mình tự giúp mình\". \"Việt Nam kháng chiến có thành công thì Lào, Miên mới thắng lợi và Lào, Miên có thắng lợi thì Việt Nam mới hoàn toàn thắng lợi\".</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Đến năm 1953, cuộc kháng chiến chống Pháp giành được nhiều thắng lợi quan trọng. Trên cơ sở đánh giá tình hình, tháng 12-1953, Bộ Chính trị tổ chức họp khẩn và quyết định mở Chiến dịch Điện Biên Phủ. Chủ tịch Hồ Chí Minh chỉ thị: \"Chiến dịch này là một chiến dịch rất quan trọng không những về quân sự mà cả về chính trị, không những đối với trong nước mà đối với quốc tế. Vì vậy, toàn quân, toàn dân, toàn Đảng phải tập trung hoàn thành cho kỳ được\".</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Thực hiện chỉ thị của Người, trên khắp cả nước, toàn Đảng, toàn quân và toàn dân ta dốc sức tổ chức lực lượng, huy động sức người, sức của để giành thắng lợi cho trận quyết chiến chiến lược cuối cùng. Với sức mạnh tổng hợp đó, trải qua 56 ngày đêm chiến đấu anh dũng (13/3/1954 - 7/5/1954), Chiến dịch Điện Biên Phủ toàn thắng. Chủ tịch Hồ Chí Minh đánh giá: \"Điện Biên Phủ như là một cái mốc chói lọi bằng vàng của lịch sử\". Đó là thắng lợi vĩ đại của nhân dân ta, mà cũng là thắng lợi chung của tất cả các dân tộc bị áp bức trên thế giới. &nbsp;&nbsp;</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\"><strong style=\"letter-spacing: 0px; text-rendering: geometricprecision;\">2.</strong>&nbsp;Sau khi thực dân Pháp rút khỏi Việt Nam theo Hiệp định Giơnevơ (21-7-1954), đế quốc Mỹ nhanh chóng nhảy vào xâm lược Việt Nam, biến miền Nam thành thuộc địa kiểu mới, thành căn cứ quân sự để ngăn chặn phong trào đấu tranh giải phóng dân tộc đang phát triển mạnh mẽ ở khu vực này. Dưới sự lãnh đạo của Đảng, đứng đầu là Chủ tịch Hồ Chí Minh, toàn thể dân tộc Việt Nam bước vào cuộc kháng chiến chống Mỹ đầy khó khăn gian khổ.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Tháng 12-1957, thời điểm mà ở miền Nam địch tự đánh giá là \"Đã ổn định được tình hình\", tại Hội nghị Trung ương lần thứ mười ba, Chủ tịch Hồ Chí Minh khẳng định: \"Ta đang đồng thời tiến hành hai chiến lược cách mạng: Cách mạng dân tộc, dân chủ nhân dân và cách mạng xã hội chủ nghĩa. Hai nhiệm vụ cách mạng nói trên đều quan trọng, coi nhẹ một nhiệm vụ nào cũng đều sai lầm. Tuy vậy, nhiệm vụ củng cố miền Bắc tiến dần lên chủ nghĩa xã hội có tính chất quyết định cho toàn bộ thắng lợi của cách mạng trong giai đoạn mới..., lực lượng cách mạng ở miền Nam được duy trì và phát triển thì đó là nhân tố trực tiếp quyết định thắng lợi của cuộc đấu tranh cách mạng&nbsp;ở miền Nam...\".</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Tiếp đó, tháng 1-1959, Hội nghị Trung ương Đảng lần thứ mười lăm do Chủ tịch Hồ Chí Minh chủ trì họp tại Hà Nội, xác định con đường tiến lên của cách mạng miền Nam, vạch rõ mục tiêu và phương pháp cách mạng miền Nam, mối quan hệ giữa hai chiến lược cách mạng ở hai miền Nam - Bắc, giữa cách mạng Việt Nam và cách mạng thế giới... nhằm giải phóng miền Nam, bảo vệ miền Bắc, thống nhất nước nhà, góp phần thúc đẩy phong trào cách mạng quốc tế, bảo vệ hòa bình thế giới.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Thực hiện chủ trương đề ra, cách mạng hai miền có những bước phát triển vững chắc. Trên miền Bắc, tháng 3-1964, Chủ tịch Hồ Chí Minh triệu tập \"Hội nghị chính trị đặc biệt\", biểu thị khối đại đoàn kết toàn dân và ý chí quyết tâm sắt đá chiến đấu bảo vệ miền Bắc, giải phóng miền Nam, thống nhất đất nước. Tiếp đó, ngày 17-7-1966, Chủ tịch Hồ Chí Minh ra Lời kêu gọi đồng bào và chiến sĩ cả nước, trong đó nhấn mạnh: \"Chiến tranh có thể kéo dài 5 năm, 10 năm, 20 năm hoặc lâu hơn nữa. Hà Nội, Hải Phòng và một số thành phố, xí nghiệp có thể bị tàn phá, song nhân dân Việt Nam quyết không sợ! Không có gì quý hơn độc lập, tự do. Đến ngày thắng lợi, nhân dân ta sẽ xây dựng lại đất nước ta đàng hoàng hơn, to đẹp hơn\".</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Thực hiện lời hiệu triệu của Người, toàn thể dân tộc Việt Nam đã đẩy mạnh kháng chiến chống Mỹ, cứu nước, giành nhiều thắng lợi quan trọng. Tiêu biểu là cuộc Tổng tiến công và nổi dậy Tết Mậu Thân 1968, chiến thắng \"Hà Nội - Điện Biên Phủ trên không\" cuối năm 1972 và đặc biệt là đại thắng mùa Xuân năm 1975, kết thúc vẻ vang sự nghiệp chống Mỹ, cứu nước.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Như vậy, thắng lợi của cách mạng Việt Nam trong giai đoạn 1945-1975 ngoài sự lãnh đạo sáng suốt, tài tình của Đảng; sức mạnh của khối đại đoàn kết toàn dân tộc; sự ủng hộ, giúp đỡ của bè bạn quốc tế; tư tưởng Hồ Chí Minh giữ vai trò đặc biệt quan trọng. Tư tưởng lãnh đạo cách mạng của Chủ tịch Hồ Chí Minh không chỉ thể hiện trong các văn kiện, nghị quyết của Ban Chấp hành Trung ương, Bộ Chính trị mà những lời hiệu triệu, chỉ thị, mệnh lệnh của Người có sức lay động và thôi thúc toàn dân, là sợi dây kết nối triệu triệu trái tim Việt Nam như một, chung sức, đồng lòng vượt qua khó khăn, quyết tâm đấu tranh giải phóng dân tộc. Thắng lợi của hai cuộc kháng chiến chống Pháp, chống Mỹ (1945-1975) là minh chứng rõ nét nhất về tư tưởng cách mạng tiến công, không khoan nhượng với kẻ thù nhằm thực hiện mục tiêu cuối cùng là giành lại nền độc lập, tự do cho Tổ quốc, hạnh phúc, ấm no cho đồng bào.</p><p style=\"text-rendering: geometricprecision; font-size: 18px; line-height: inherit; margin-bottom: 0px; padding: 15px 0px 0px; font-family: &quot;Noto Serif&quot;, Geogia, &quot;Lucida Bright&quot;, serif; text-align: justify;\">Năm 2020, toàn Đảng, toàn quân và toàn dân ta kỷ niệm 130 năm Ngày sinh Chủ tịch Hồ Chí Minh, cùng với việc tiếp tục đẩy mạnh thực hiện Chỉ thị số 05-CT/TƯ ngày 15-5-2016 của Bộ Chính trị (khóa XII) về \"Đẩy mạnh học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh\", việc làm rõ tư tưởng lãnh đạo cách mạng Việt Nam của Người trong những năm đấu tranh giải phóng dân tộc là vấn đề mang ý nghĩa lý luận và thực tiễn sâu sắc. Nhiều nội dung vẫn vẹn nguyên giá trị đến&nbsp;hôm nay, là ánh sáng soi đường cho chúng ta tiếp tục thực hiện thắng lợi nhiệm vụ xây dựng và bảo vệ Tổ quốc trong tình hình mới.</p>', '2020-05-17 02:49:56', '2020-05-17 02:49:56', 'http://hanoimoi.com.vn/Uploads/images/phananh/2020/05/10/HCM.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02dd23d7138ecd676cdfc9f9284053ee51ad569ed82ee3bae5e688137d0bf7656042dfd4f1755ca9', 1, 3, NULL, '[]', 1, '2020-05-16 22:15:10', '2020-05-16 22:15:10', '2021-05-17 05:15:10'),
('177cf0b7d3a25db7129a3278220b379623b9c7662666e7b46c5f5206b5a915a3ba09a82d2b8b4fd0', 1, 3, NULL, '[]', 0, '2020-05-17 03:09:46', '2020-05-17 03:09:46', '2021-05-17 10:09:46'),
('192db31deb2ad5798f794c6ab5cd7862d2dd315bf3f012612fbc275910e1c0406ca01f941f3c59b0', 1, 3, NULL, '[]', 1, '2020-05-17 01:14:48', '2020-05-17 01:14:48', '2021-05-17 08:14:48'),
('2ea262d917db7e6cc49ed4b09486f3911664e742994bd134130611fe60a7b77bf60179292e05cb6c', 1, 3, NULL, '[]', 1, '2020-05-17 02:17:43', '2020-05-17 02:17:43', '2021-05-17 09:17:43'),
('34aca216010971319ace7d642e546ca67bc17d7db282fae1e75d3673897178c1d3b2c83cd63502ad', 1, 3, NULL, '[]', 1, '2020-05-17 02:24:48', '2020-05-17 02:24:48', '2021-05-17 09:24:48'),
('375bbf90f0d6730299e652b3dcd532e0d9a0104c2298c91ea5b5748da3baffe104356d8af4a0bd9a', 1, 3, NULL, '[]', 1, '2020-05-17 02:09:10', '2020-05-17 02:09:10', '2021-05-17 09:09:10'),
('448d02b70a6ccfc6d76579b2878fb43511e4d05e7914c8551674844e854a36e93ab45cf4cf65a9c4', 1, 3, NULL, '[]', 0, '2020-05-17 03:04:45', '2020-05-17 03:04:45', '2021-05-17 10:04:45'),
('4a0c39d2fc6ec8a062caed18a7b7b3c87a869377b1e5e8fd3c7573ae1c51c6dbaa36b7d743c0eb10', 1, 3, NULL, '[]', 1, '2020-05-17 02:27:59', '2020-05-17 02:27:59', '2021-05-17 09:27:59'),
('50da5d8c717264997e482566c009153d96b0967c36ec0b22535abacf183d8e9998cb80678f6a8620', 1, 3, NULL, '[]', 1, '2020-05-17 02:20:13', '2020-05-17 02:20:13', '2021-05-17 09:20:13'),
('5e451d60cfb06e806688798594222d5e3bb472103aea4bcc7e26428672fedef2e6c4bcb33cd9b3b2', 1, 3, NULL, '[]', 0, '2020-05-17 02:30:26', '2020-05-17 02:30:26', '2021-05-17 09:30:26'),
('61a816cfa4113709aacf6f4307c81054da3327eb9d4ae861ae5317ada9308b73714864975ec59ca4', 1, 3, NULL, '[]', 1, '2020-05-16 22:20:01', '2020-05-16 22:20:01', '2021-05-17 05:20:01'),
('685faef43e779706ddbd20afb61d5c48e1d6d47bc6a6fff5b605872282094132d851b9ef49533fdd', 1, 3, NULL, '[]', 1, '2020-05-16 22:20:35', '2020-05-16 22:20:35', '2021-05-17 05:20:35'),
('6f4cc5c024d3cc200c03fab71974c5473d39cf51249d18c222ba40c5c68942998a4a54dbbc496004', 1, 3, NULL, '[]', 1, '2020-05-17 02:16:09', '2020-05-17 02:16:09', '2021-05-17 09:16:09'),
('7169b59504265b5371ff49baf33dbd93c637cea6a074764b65f9db297095ab86121d65913db46a3b', 1, 3, NULL, '[]', 0, '2020-05-17 03:22:16', '2020-05-17 03:22:16', '2021-05-17 10:22:16'),
('72832056750f5cf13c716d53da5ee1cd319f6fcc52668d3ad5491cdfa08bc523060e11b3300839fe', 1, 3, NULL, '[]', 1, '2020-05-17 03:11:48', '2020-05-17 03:11:48', '2021-05-17 10:11:48'),
('7d4adadb6735dc346ea8e7fbb38b31cc8bd8d126772a085430e9df04ab89d51864c5e1fd0376a769', 1, 3, NULL, '[]', 0, '2020-05-17 02:46:11', '2020-05-17 02:46:11', '2021-05-17 09:46:11'),
('8df66d23fa69cf69f569af9b5453c2c7201eabf9df5fa4f0659c25020afed227d7267813b2f03226', 1, 3, NULL, '[]', 1, '2020-05-16 22:21:02', '2020-05-16 22:21:02', '2021-05-17 05:21:02'),
('949ee60aece7de32155f869250bf5aa279ea12350a4daf7cffe3029af0b603da98d272f1f73ef6a2', 1, 3, NULL, '[]', 1, '2020-05-17 02:06:28', '2020-05-17 02:06:28', '2021-05-17 09:06:28'),
('9532eac3bad8b26635ae29b8011e82a2adff91b7da93f1abed6cb732a7ace0b4bbe6db0e1cab2908', 1, 3, NULL, '[]', 0, '2020-05-17 02:46:35', '2020-05-17 02:46:35', '2021-05-17 09:46:35'),
('a078078dbc9a7711f0361f9d3dbc956e065e69dc160c2eff320c53489fc3767aea5833949501b6fa', 1, 3, NULL, '[]', 0, '2020-05-17 02:43:34', '2020-05-17 02:43:34', '2021-05-17 09:43:34'),
('b480ece5eed54428b9a3140621b063971c7069d567de2fd693786d6c9a617915a45102422a4c7be8', 1, 3, NULL, '[]', 1, '2020-05-16 22:19:22', '2020-05-16 22:19:22', '2021-05-17 05:19:22'),
('bf3677ccdd870f57a4d30606c8df4cabe3deac411a132b0e4d51a402d27c767fc17babc152545a26', 1, 3, NULL, '[]', 1, '2020-05-17 03:17:52', '2020-05-17 03:17:52', '2021-05-17 10:17:52'),
('c219831eb22a2ce4b4075996c7b57e99a741cbb4be64f816141c57a8f3b2db421d738c6339b02410', 1, 3, NULL, '[]', 1, '2020-05-17 02:27:38', '2020-05-17 02:27:38', '2021-05-17 09:27:38'),
('c7eef049931b0869333e765ca330008d461554ee544d59fd31da5a9bb0fdbeb5b1d2dd3fa2a9b824', 1, 3, NULL, '[]', 0, '2020-05-17 02:36:27', '2020-05-17 02:36:27', '2021-05-17 09:36:27'),
('ceb0d9b5407ae4dd297047fa74bce8c1c167061a38fcbed27ce2361ac44e3c2724adeca16dd47ceb', 1, 3, NULL, '[]', 1, '2020-05-17 03:20:00', '2020-05-17 03:20:00', '2021-05-17 10:20:00'),
('e606e768dc193d2be8ac50d62b9406d082d1435bc13011c67b8535efbecd8c3feb649b847255e043', 1, 3, NULL, '[]', 1, '2020-05-17 02:24:03', '2020-05-17 02:24:03', '2021-05-17 09:24:03'),
('e7d5415472f2d0facffab96de319683a3d6e877e9142736cabbc828e5a4886a9edb4b5b34a87b852', 1, 3, NULL, '[]', 1, '2020-05-17 02:18:27', '2020-05-17 02:18:27', '2021-05-17 09:18:27'),
('f020cf778b7360235dcaa74ae056606809ed294c7cf21b1f3522b1354a8584b3e22c724e0fc2325f', 1, 3, NULL, '[]', 0, '2020-05-17 03:09:05', '2020-05-17 03:09:05', '2021-05-17 10:09:05'),
('f07312c85738422f674f6fe0dd11b0c42530875fa9803f6a739024ec8888e86557cc411e5d845c1b', 1, 3, NULL, '[]', 1, '2020-05-17 01:15:29', '2020-05-17 01:15:29', '2021-05-17 08:15:29'),
('f4093eeea00539879cea512dbdcb7b03695da9ac41d0d1415e8001ca6b3fdc81ad9b7551dcedb27e', 1, 3, NULL, '[]', 0, '2020-05-17 02:47:54', '2020-05-17 02:47:54', '2021-05-17 09:47:54'),
('fa76c3b75d677a7833f2be576c1997090e46a47dfd43aa3966882ef2b977b3bb0530c5fce79c74f4', 1, 3, NULL, '[]', 0, '2020-05-17 03:22:50', '2020-05-17 03:22:50', '2021-05-17 10:22:50'),
('fac88b9c2e7e032827b3623f0cec1fab8b9b3664b881db4289f0c66921501ee94d61003534cc8b3e', 1, 3, NULL, '[]', 1, '2020-05-16 22:20:20', '2020-05-16 22:20:20', '2021-05-17 05:20:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('076294867eec29b8e112bc204bfbd43f3687268a1282798d34783a57af22d8a7acd4fbb421e34f0d', 1, 3, '[]', 1, '2020-05-17 05:31:01'),
('0bdb85c40efccbb996b2336e7043f2bd9753d438752c8b36a91e93f2f17fb8f51c3907a60b7890be', 1, 3, '[]', 1, '2020-05-17 09:37:38'),
('0e24cadfb1e419a77b5ca3dec91018b3410d54d7699ad7050034af478def6ee49fad328680b389da', 1, 3, '[]', 1, '2020-05-17 09:25:03'),
('0e872be5b5ea3e5a77e5dfcf354e832d8e183efd522b80e833b44b1019beb1e61e3fa60517cc659f', 1, 3, '[]', 1, '2020-05-17 09:27:22'),
('144551b495cb892ac746bced19bb8d53e01382f8cad402bbdda62ec795677cbe9374d5b670d95268', 1, 3, '[]', 1, '2020-05-17 09:40:25'),
('14f98e6924e12d78850cf926dea7fec6da566085f84842988662fcb1d94d292453d7e18fca1674a5', 1, 3, '[]', 1, '2020-05-17 10:19:45'),
('16075b6fdb565a542c912e9841f3f8834a23a262de06a5b46357b25e3f35433ae8f4a21b007f509e', 1, 3, '[]', 1, '2020-05-17 09:57:53'),
('16e24ca58d8a16fd51a57174632922b3d79d31ec37b3213dac5fe7badc32e2b4d6b62dbdb55ec416', 1, 3, '[]', 1, '2020-05-17 10:30:00'),
('1ac5760c2b6878a242d9ea7622b6a2c78858f7c6220f42cdc397112657055527b1e445de2dfdacf1', 1, 3, '[]', 1, '2020-05-17 09:19:10'),
('2650111d84c9f4e4a87642877805c610236f2bab9b10e56b2b8422ba02629eff610ac46b07ef236d', 1, 3, '[]', 1, '2020-05-17 10:19:05'),
('3b9a736d9f4f3dc5788fe7e19839defc5a1a6f4916c601f3eb63c4b854ae8842ad7e491a02dcb30a', 1, 3, '[]', 1, '2020-05-17 09:56:35'),
('4546bb8e8801eaf6e3b277638e38b4dfa9beb7bf18b6ac4e2f994bae543b3564b1cab8102134da6a', 1, 3, '[]', 1, '2020-05-17 09:34:48'),
('55db627699a619f965d6a0d9b1392fe36e3089b5051349b7f72f6b63a2cc50b88d513a37dc3270c3', 1, 3, '[]', 1, '2020-05-17 10:32:49'),
('609e74ad5bd0f96110d1a266fc55f5a378eb0953d8421967ed9bc76ed3e786b595021fb96119ff59', 1, 3, '[]', 1, '2020-05-17 05:29:22'),
('66aa1c3d31feb816e5f4f30f28be9e6bf8f208f3820d4fedb447cfdba1622e471db89e987a9b79bd', 1, 3, '[]', 1, '2020-05-17 10:21:47'),
('6ed2cf0c2fae3d54aac58bb460ed29370000ac0b0e484244f5344dae791b50cb9e613444f8e72429', 1, 3, '[]', 1, '2020-05-17 08:24:47'),
('7ce423808f7ac875aa7ef9aaeb7318eaad88276524a23cce33fc52e3262dede69743e896fda4f758', 1, 3, '[]', 1, '2020-05-17 08:25:28'),
('86ce9fcec43d1a4431307cebd2646401263baa93784c79b32166e431847d9c508b0bb3d58449651d', 1, 3, '[]', 1, '2020-05-17 09:34:02'),
('8e9f4b3ef31fab910abd7c0dbd93421dd47b04030f217415ba32d8c6187585d1cee1ded48aecb48f', 1, 3, '[]', 1, '2020-05-17 09:53:33'),
('91b7ec985efdf76ad9cba36fe1577830f52be5e16273a5f8256e0955e2585ac4c18072f2e6ad1812', 1, 3, '[]', 1, '2020-05-17 09:56:11'),
('9eb8aea00453b775f175299a7663d00b10df35d1444454c8d2b662f51257dfeeef25318d5783b0d6', 1, 3, '[]', 0, '2020-05-17 09:23:28'),
('b1ec67615b8a4946ec3c711d0ae8b894fb09f5ac6051f9813bb1de0c9cb2ba1ac5f316c179b22d04', 1, 3, '[]', 1, '2020-05-17 09:30:12'),
('b4d9b820b2dc5902ea9a596d7431bf33f02b50ef148078be2dfe6f3ed16f4e2e16f0eeec3e24641b', 1, 3, '[]', 1, '2020-05-17 09:37:59'),
('bbc9cefcda9f7f64b40b00d4043682b4ce1412f042187f1072df034916f635b94d9db30af6473047', 1, 3, '[]', 1, '2020-05-17 10:14:44'),
('c14762442bb95977014b2c730254a05ef9ff3d39579fb2acdb967800e99f84c67717a7ebf356bcde', 1, 3, '[]', 1, '2020-05-17 05:30:19'),
('c985046cdec17a683abfb61d1827954b423eb8de36780c0ae9f10e9df5be378c3056e4f6c898aec8', 1, 3, '[]', 0, '2020-05-17 08:33:19'),
('d10f9e1e7357ac7961e520afa45c081fa34ca85c67123aceebee874f8bdcfc5f2379859cfcd85779', 1, 3, '[]', 1, '2020-05-17 05:25:09'),
('d40e34863292f38fc25820abc6931ea3e4f09561be5e28b6ff6071300077fed25115d96c718a77b2', 1, 3, '[]', 1, '2020-05-17 05:30:35'),
('e19652465dbad6667f730b77f1d396266807c06e2537ae5ea77c6b242a92d056bf72e8d1de5355b9', 1, 3, '[]', 1, '2020-05-17 10:27:51'),
('e8f7ba471614e62a8389d462d8c5d728cb10fd200d4bcde672112a50f6705ee7fa4b6ebfea13fa31', 1, 3, '[]', 1, '2020-05-17 09:16:27'),
('f2f89eb6e2ae4c11ea77b1030f9756d751d501f4c24b95967931e6ba5ddc0fd12e1895205d791bec', 1, 3, '[]', 1, '2020-05-17 10:32:15'),
('f363b09df10e36d933d9285d25d7459e31d7f548b89b14d014aec72d762d5e77b52983c36539b0d4', 1, 3, '[]', 1, '2020-05-17 09:28:27'),
('f9c18a7b038a90686903e879295416194badc1131a84e8c49d92313ae8498581e7eb74994e88fa92', 1, 3, '[]', 1, '2020-05-17 05:30:01'),
('fe793860806a29ec33b8be6b084fe9d5619e07b0030cdad96cbf98baa1e8099ab6a589b121503e46', 1, 3, '[]', 1, '2020-05-17 09:46:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wGOOm2Zc5QCRhW9eomKk8iWZaNYeyCco76iUasMn', 'http://localhost', 1, 0, 0, '2020-05-16 22:09:37', '2020-05-16 22:09:37'),
(2, NULL, 'Laravel Password Grant Client', 'koGX3TREOwgY6A9SGuNT0lO97rgnFAlpnipfntoq', 'http://localhost', 0, 1, 0, '2020-05-16 22:09:37', '2020-05-16 22:09:37'),
(3, 1, 'TEST', 'IxbvhBf8e4uWwBk8DEEjpm8pqaoVK86oi3Yvmxtr', 'http://127.0.0.1:8001/callback', 0, 0, 0, '2020-05-16 22:11:27', '2020-05-16 22:11:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-16 22:09:37', '2020-05-16 22:09:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0068a5cac0f0fa9488fb0facc4eed034a7e35be67160546e509667b167d7efc7b769cce633cd89a1', 'f07312c85738422f674f6fe0dd11b0c42530875fa9803f6a739024ec8888e86557cc411e5d845c1b', 0, '2021-05-17 08:15:29'),
('01d1a7f5040943483d7b31f194d0138e213c11555765e96cc87971ea0baef55940f0a58698142186', 'c219831eb22a2ce4b4075996c7b57e99a741cbb4be64f816141c57a8f3b2db421d738c6339b02410', 0, '2021-05-17 09:27:38'),
('04b115e703f38f30f7e3b68a977abd20bd56f8306179fc524575062fc02dc23721c6779060e1a8ca', '2ea262d917db7e6cc49ed4b09486f3911664e742994bd134130611fe60a7b77bf60179292e05cb6c', 0, '2021-05-17 09:17:43'),
('101f805de8c9b895fd84e536d992667bab90899d69ec0d7e3f31b1e10ad1156254f04c435c6d668b', '7169b59504265b5371ff49baf33dbd93c637cea6a074764b65f9db297095ab86121d65913db46a3b', 0, '2021-05-17 10:22:16'),
('1e7430c4b5074a02323c5377e7ddc9147d51590c348e15145a0f6d7b6620ad66939dbab45ad14345', 'bf3677ccdd870f57a4d30606c8df4cabe3deac411a132b0e4d51a402d27c767fc17babc152545a26', 1, '2021-05-17 10:17:52'),
('2cc03044348d1c1d5e6fbda35731d499de0ec52830794acec85db4aaf334d5c387a00b50288ac933', '50da5d8c717264997e482566c009153d96b0967c36ec0b22535abacf183d8e9998cb80678f6a8620', 0, '2021-05-17 09:20:13'),
('3223b03b6a3a3e4b72a3ef2ecda1ef05238ee1994173d1623225bbf005944c202f598986d8881b45', 'f4093eeea00539879cea512dbdcb7b03695da9ac41d0d1415e8001ca6b3fdc81ad9b7551dcedb27e', 0, '2021-05-17 09:47:54'),
('3d57f45af051879a2b88cda8a21ab16243ee981162baf7cff7ef712b66572b06fce7c90899b1a84f', '949ee60aece7de32155f869250bf5aa279ea12350a4daf7cffe3029af0b603da98d272f1f73ef6a2', 0, '2021-05-17 09:06:28'),
('45ecaad936e1c54a6b80c55f34077d5ab335de10a2a18d3ef08d1474debfee5c4c189c08df9d07aa', '192db31deb2ad5798f794c6ab5cd7862d2dd315bf3f012612fbc275910e1c0406ca01f941f3c59b0', 0, '2021-05-17 08:14:48'),
('4f3e444b6c560668719236ecc7de9f920e66d345132bd5c028489974d786574d6bfee806f0726c18', 'e7d5415472f2d0facffab96de319683a3d6e877e9142736cabbc828e5a4886a9edb4b5b34a87b852', 0, '2021-05-17 09:18:27'),
('60bbf34000a05ac9b9a74b28f55e1dd8855062dd9086b77b250b914fc5f5e084d7fe2abfd6f6cb98', '34aca216010971319ace7d642e546ca67bc17d7db282fae1e75d3673897178c1d3b2c83cd63502ad', 0, '2021-05-17 09:24:49'),
('62b96a929432c65da7427f42a35a4d433a70b5297443863c8ed216266b89cbbf7351e163a99526ca', 'a078078dbc9a7711f0361f9d3dbc956e065e69dc160c2eff320c53489fc3767aea5833949501b6fa', 0, '2021-05-17 09:43:34'),
('68e63253f01193431dd4393ab684072560329627b8d8f1715a4a5c18b167cf53417bbc4bcb472add', 'ceb0d9b5407ae4dd297047fa74bce8c1c167061a38fcbed27ce2361ac44e3c2724adeca16dd47ceb', 1, '2021-05-17 10:20:00'),
('788f2556948b7d62f3ff652a951188dcbc68195754dc89ab28a8cc896ca0b9826680336c7f5c040b', 'f020cf778b7360235dcaa74ae056606809ed294c7cf21b1f3522b1354a8584b3e22c724e0fc2325f', 0, '2021-05-17 10:09:05'),
('824ec22acd08d89c340ffc1b727d7c36fdf9fc5d75253fcef0565952eb00e057a848afa58e45176e', '72832056750f5cf13c716d53da5ee1cd319f6fcc52668d3ad5491cdfa08bc523060e11b3300839fe', 1, '2021-05-17 10:11:48'),
('9e38c748e92bd54c046012097e274de2d383debdf2f4d2afdf16b28d6d1cf77d73460f2b16230563', 'fac88b9c2e7e032827b3623f0cec1fab8b9b3664b881db4289f0c66921501ee94d61003534cc8b3e', 0, '2021-05-17 05:20:20'),
('9eadbff44a8e20b98fa2fd66b8652a895895592f1a885e27ddc3156ee8036828ad18b7267a5a8f2f', '7d4adadb6735dc346ea8e7fbb38b31cc8bd8d126772a085430e9df04ab89d51864c5e1fd0376a769', 0, '2021-05-17 09:46:11'),
('aa08291031c5be809f9f29308d082517e73c03ee440b372fee4550bfb4466e5caae4930d587e4990', 'c7eef049931b0869333e765ca330008d461554ee544d59fd31da5a9bb0fdbeb5b1d2dd3fa2a9b824', 0, '2021-05-17 09:36:27'),
('b0c325e7b0d13b18d7b2ce9b3bea1e49dd47a1814139ea0e4256aba29e422d92e52be169b6a6b075', '177cf0b7d3a25db7129a3278220b379623b9c7662666e7b46c5f5206b5a915a3ba09a82d2b8b4fd0', 0, '2021-05-17 10:09:46'),
('b6825949970fd4e3949579f120361de8e6dc3370556adf6bdd54af58f2a40fa4a54ca9e78da36efc', '685faef43e779706ddbd20afb61d5c48e1d6d47bc6a6fff5b605872282094132d851b9ef49533fdd', 0, '2021-05-17 05:20:35'),
('bd075ad90e32c4e849578bf8c02529875a027130335bd8926a2995a527b6ae9736d1fc8a49e2ff6f', '5e451d60cfb06e806688798594222d5e3bb472103aea4bcc7e26428672fedef2e6c4bcb33cd9b3b2', 0, '2021-05-17 09:30:26'),
('bde06822b12c50139e64cf3c12c48d508b8f1caae92e7012aff825b3dadd12e0c9322b850cb17d79', 'fa76c3b75d677a7833f2be576c1997090e46a47dfd43aa3966882ef2b977b3bb0530c5fce79c74f4', 0, '2021-05-17 10:22:50'),
('bf4ab36718b27ab0d150bc20c06376a67a808eeb38621af9376cb5a5cde8a0660baf7c3efb959ee5', 'b480ece5eed54428b9a3140621b063971c7069d567de2fd693786d6c9a617915a45102422a4c7be8', 0, '2021-05-17 05:19:22'),
('bfd3133c70b8c8c29f8e2c03d2ace2bed5d2ea73c4aac36c2ec801d9c755a33d0b7931bb799248ec', '448d02b70a6ccfc6d76579b2878fb43511e4d05e7914c8551674844e854a36e93ab45cf4cf65a9c4', 0, '2021-05-17 10:04:45'),
('c872605dd14032d86e2995718fe1019952ee9b665d0fbe11b2eb82baf7367f1f03d2ea1ab0918e16', '61a816cfa4113709aacf6f4307c81054da3327eb9d4ae861ae5317ada9308b73714864975ec59ca4', 0, '2021-05-17 05:20:01'),
('cbcc6fc8d331d570f3772fb1ef9b0e3987c720474ff17889914b1c0537bffbb8be2cc79ab89a861b', '9532eac3bad8b26635ae29b8011e82a2adff91b7da93f1abed6cb732a7ace0b4bbe6db0e1cab2908', 0, '2021-05-17 09:46:35'),
('d4f4f5ee899705765c9d76715ed8246a626aa36214a8c2f4b690c6e147525d9bd4c24bc48fc4f3eb', '6f4cc5c024d3cc200c03fab71974c5473d39cf51249d18c222ba40c5c68942998a4a54dbbc496004', 0, '2021-05-17 09:16:09'),
('e91b17dbf7bc37c443f1ffb4cabf31e3cbe042f1c6bccd7f090f05b6b0bc1efde5732bb533e61170', '02dd23d7138ecd676cdfc9f9284053ee51ad569ed82ee3bae5e688137d0bf7656042dfd4f1755ca9', 0, '2021-05-17 05:15:10'),
('ed126e15d850a1f703e23eae22435f5cc565ff38dbfeef086180f483108e1c97fe0b8db5542325f0', 'e606e768dc193d2be8ac50d62b9406d082d1435bc13011c67b8535efbecd8c3feb649b847255e043', 0, '2021-05-17 09:24:03'),
('f245288d0786d6fd78f3bbdd8efa82d0a9076f398019a684d0af41afd4b47d27be33791055676161', '375bbf90f0d6730299e652b3dcd532e0d9a0104c2298c91ea5b5748da3baffe104356d8af4a0bd9a', 0, '2021-05-17 09:09:10'),
('f3197a7d91bf27d4b22e38e928e364ed2c7e7d240f84b9d4d2e3df283000552cde076d43a759cf6f', '4a0c39d2fc6ec8a062caed18a7b7b3c87a869377b1e5e8fd3c7573ae1c51c6dbaa36b7d743c0eb10', 0, '2021-05-17 09:27:59'),
('f793c5dc3df23b49391d1b30f61e94bdcb537b31910e9012b935d3b866e5a7bf8dabbd34fda28cbb', '8df66d23fa69cf69f569af9b5453c2c7201eabf9df5fa4f0659c25020afed227d7267813b2f03226', 0, '2021-05-17 05:21:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `completed_on` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `todos`
--

INSERT INTO `todos` (`id`, `item`, `user_id`, `done`, `completed_on`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 1, 1, '2020-05-16 22:10:12', '2020-05-16 22:10:04', '2020-05-16 22:10:12'),
(2, 'test 2', 1, 1, '2020-05-16 22:10:12', '2020-05-16 22:10:07', '2020-05-16 22:10:12'),
(3, 'test 3', 1, 0, NULL, '2020-05-16 22:10:10', '2020-05-16 22:10:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Kerry', 'test1@gmail.com', '$2y$10$rxl2wTZUAA/y24544M97WeJaE5L0aTzYgS8noyk9lddLOOneryROq', 'TEXeaj1i6dHRaPaoS710b2XDX4GjLABy5Hy6UVsBPDeUNAoTkl9Q5ahe6EEz', '2020-05-16 22:10:00', '2020-05-16 22:10:00'),
(2, 'TRAN VAN DIEP', 'test2@gmail.com', '$2y$10$edeBbFIV9yHTR0lIBqYxuezYPlYLTPf87MAS8jrLVv3idFxsJEwUe', NULL, '2020-05-16 23:16:33', '2020-05-16 23:16:33'),
(3, 'Brooke Rastenis', 'wegoup.tech@gmail.com', '$2y$10$aUpSvZ1aGS4RW4l0MWoNHuIXj6j/55EoQCYm47QDx0YLiYLcIbR9e', NULL, '2020-05-17 00:54:08', '2020-05-17 00:54:08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
