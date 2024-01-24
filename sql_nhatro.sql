-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2023 lúc 03:32 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhatro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet`
--

CREATE TABLE `bai_viet` (
  `id` int UNSIGNED NOT NULL,
  `tieu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_gioi_thieu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_thanhpho_id` int UNSIGNED NOT NULL,
  `quan_huyen_id` int UNSIGNED NOT NULL,
  `phuong_xa_id` int UNSIGNED NOT NULL,
  `gia_tien` bigint UNSIGNED NOT NULL,
  `dien_tich` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL COMMENT '0 là nhà trọ, 1 là ccmn, 2 là nguyên căn',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_viet`
--

INSERT INTO `bai_viet` (`id`, `tieu_de`, `anh_gioi_thieu`, `noi_dung`, `tinh_thanhpho_id`, `quan_huyen_id`, `phuong_xa_id`, `gia_tien`, `dien_tich`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(36, 'Test bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viếtTest bài viết Test bài viết', '20230417230202-3438_wm.jpg,20230722023907-6a26_wm.jpeg,20230722023911-f0dd_wm.jpeg', '<h2 class=\"singular-sapo\" style=\"margin: 32px 0px 0px; font-size: 18px; line-height: 30px; color: rgb(51, 51, 51); font-style: italic; font-family: \"Noto Serif\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", serif;\">(Dân trí) - Trả lời báo giới, Huỳnh Như đã chia sẻ về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup. Bên cạnh đó, cô cũng nhận định về đối thủ Mỹ.</h2><div class=\"singular-content\" style=\"margin: 32px 0px 0px; font-size: 18px; line-height: 30px; font-family: \"Noto Serif\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", serif; color: rgb(51, 51, 51);\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Theo công bố của FIFA, mỗi cầu thủ nữ tham dự <a href=\"https://dantri.com.vn/the-thao/world-cup-2022.htm\" data-auto-link-id=\"6371b2aad254a68fd076e710\" data-track-content=\"\" data-content-name=\"article-content-autolink\" data-content-piece=\"article-content-autolink_6371b2aad254a68fd076e710\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" style=\"color: rgb(0, 102, 204);\">World Cup</a> 2023 sẽ nhận được 30.000 USD tiền thưởng. Theo tính toán, số tiền đó tương đương với hai năm lương trung bình của các nữ cầu thủ trên thế giới.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none;\"><img title=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/90-1689937709391.jpg\" alt=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 1\" data-width=\"1440\" data-height=\"900\" data-original=\"https://icdn.dantri.com.vn/2023/07/21/90-1689937709391.jpg\" data-photo-id=\"2557419\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2557419\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/90-1689937709391.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/90-1689937709391.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/90-1689937709391.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/90-1689937709391.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/90-1689937709391.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/90-1689937709391.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/90-1689937709391.jpg 2x\" data-adbro-processed=\"true\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Huỳnh Như thừa nhận số tiền thưởng của FIFA rất lớn với nhiều tuyển thủ nữ Việt Nam (Ảnh: AP).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Với nhiều cầu thủ nữ Việt Nam, đó là số tiền khá lớn. Theo New York Times, các thành viên của đội nữ Việt Nam thu nhập khoảng 850 USD (khoảng 20 triệu đồng) mỗi tháng hay 10.200 USD (240 triệu đồng) mỗi năm.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Chia sẻ về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup 2023, Huỳnh Như nói trong cuộc họp báo trước trận gặp Mỹ (08h00 ngày 22/7): \"Chúng tôi đã nhận được sự quan tâm của Chính phủ, Bộ Văn hóa Thể thao và <a href=\"https://dantri.com.vn/du-lich.htm\" data-auto-link-id=\"61327d0afb044100119a145a\" data-track-content=\"\" data-content-name=\"article-content-autolink\" data-content-piece=\"article-content-autolink_61327d0afb044100119a145a\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" style=\"color: rgb(0, 102, 204);\">Du lịch</a> cũng như các cơ quan liên quan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Mức sống của các cầu thủ nhìn chung đã được cải thiện. Bên cạnh đó, chúng tôi cũng nhận được sự hỗ trợ tiền thưởng của FIFA. Đó là số tiền không nhỏ với những tuyển thủ nữ Việt Nam\".</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Được biết, mức lương của Huỳnh Như ở Lank FC chỉ rơi vào 1500 euro (gần 40 triệu đồng) mỗi tháng. Con số ấy không cao nếu so với mặt bằng chung của nhiều cầu thủ thi đấu ở châu Âu.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none;\"><img title=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/huynhnhu-1689948894020.jpeg\" alt=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 2\" data-width=\"1024\" data-height=\"682\" data-original=\"https://icdn.dantri.com.vn/2023/07/21/huynhnhu-1689948894020.jpeg\" data-photo-id=\"2557572\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2557572\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/huynhnhu-1689948894020.jpeg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/huynhnhu-1689948894020.jpeg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/huynhnhu-1689948894020.jpeg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/huynhnhu-1689948894020.jpeg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/huynhnhu-1689948894020.jpeg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/huynhnhu-1689948894020.jpeg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/huynhnhu-1689948894020.jpeg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Huỳnh Như dự họp báo trước trận đội tuyển nữ Việt Nam gặp Mỹ (Ảnh: AP).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Bên cạnh đó, Huỳnh Như tin rằng việc đội tuyển nữ Việt Nam thi đấu ở World Cup sẽ tạo động lực cho trẻ em Việt Nam chơi bóng đá. Cô chia sẻ thêm: \"Chúng tôi chuẩn bị tinh thần thép để ra sân chiến đấu. Đội bóng không quan tâm tới đối thủ bởi sẽ đá hết mình trong tất cả các trận đấu để người hâm mộ tự hào.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Để có mặt ở World Cup 2023, đội tuyển nữ Việt Nam đã trải qua hành trình dài với nhiều giai đoạn khó khăn. Hiện tại, nền <a href=\"https://dantri.com.vn/the-thao/bong-da-trong-nuoc.htm\" data-auto-link-id=\"5fd33c895333a60018f3a1e8\" data-track-content=\"\" data-content-name=\"article-content-autolink\" data-content-piece=\"article-content-autolink_5fd33c895333a60018f3a1e8\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" style=\"color: rgb(0, 102, 204);\">bóng đá</a> Việt Nam chưa phát triển như thế giới nhưng đã có bước phát triển tốt.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Đội bóng có được thành quả hôm nay là nỗ lực của nhiều người. Toàn đội quyết tâm thi đấu hết mình để góp phần tạo động lực cho nhiều trẻ em ở Việt Nam đam mê chơi bóng hơn.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Với tôi cũng như nhiều tuyển thủ nữ Việt Nam, gia đình là nguồn động lực to lớn. Tôi rất hạnh phúc khi bố mẹ cất công sang đây. Tôi nhớ lại ngày xưa có lúc chơi bóng nhựa hay dùng quả dừa thay trái bóng. Giờ đây mọi thứ đã khác rồi. Tôi đã bước ra sân chơi World Cup. Có thể nói đây là câu chuyện cổ tích đã trở thành hiện thực với tôi\".</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none;\"><img title=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg\" alt=\"Huỳnh Như nói về tiền thưởng của đội tuyển nữ Việt Nam ở World Cup - 3\" data-width=\"1020\" data-height=\"4640\" data-original=\"https://icdn.dantri.com.vn/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg\" data-photo-id=\"2557421\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2557421\" data-content-target=\"/the-thao/huynh-nhu-noi-ve-tien-thuong-cua-doi-tuyen-nu-viet-nam-o-world-cup-20230721181200031.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/21/worldcup2023-1689935901155-1689937799999.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"></figure></div>', 1, 5, 56, 2342, 2342, 1, 2, '2023-07-21 09:39:18', '2023-07-23 02:45:28'),
(37, 'Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề Demo tiêu đề', '20230417230210-69b7_wm.jpg,20230722023907-e1fd_wm.jpeg', '<h2 class=\"singular-sapo\" style=\"margin: 32px 0px 0px; font-size: 18px; line-height: 30px; color: rgb(51, 51, 51); font-style: italic; font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif;\">(Dân trí) - Theo kênh Rybar, lực lượng Nga đang chịu sức ép đáng kể trước những đợt tấn công bằng \"sóng người\"của Ukraine ở cả 2 sườn Bakhmut. Các mặt trận khác cũng rất căng thẳng, theo kênh Suriyakmaps.</h2><div class=\"singular-content\" style=\"margin: 32px 0px 0px; font-size: 18px; line-height: 30px; font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; color: rgb(51, 51, 51);\"><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/1-1690078064978.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 1\" data-width=\"848\" data-height=\"460\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/1-1690078064978.jpg\" data-photo-id=\"2559209\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559209\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/1-1690078064978.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/1-1690078064978.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/1-1690078064978.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/1-1690078064978.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/1-1690078064978.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/1-1690078064978.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/1-1690078064978.jpg 2x\" data-adbro-processed=\"true\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Xe tăng, thiết giáp Ukraine bị Nga phá hủy trên hướng Zaporizhia (Ảnh: Intel Slava Z).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\"><strong>Nga tuyên bố tập kích hạ nhiều lính đánh thuê nước ngoài</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Báo cáo mới nhất của Bộ Quốc phòng Nga cho biết, vào ngày 6/7, lực lượng vũ trang nước này đã thực hiện một cuộc tấn công bằng vũ khí chính xác tầm xa, trên biển vào khu vực Học viện Lục quân Ukraine ở Lvov, hạ nhiều lính đánh thuê Ba Lan và Đức.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Theo thống kê mới nhất, kể từ khi xung đột bùng nổ, Nga đã loại khỏi vòng chiến đấu tổng cộng 4.990 chiến binh nước ngoài. Bên cạnh đó, đã có 4.910 lính đánh thuê rút khỏi chiến trường, rời khỏi lãnh thổ Ukraine. Bộ Quốc phòng Nga tuyên bố sẽ tiếp tục tập kích các mục tiêu có lính đánh thuê nước ngoài trên lãnh thổ Ukraine.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Trong ngày 22/7, Quân đội Ukraine tiếp tục tấn công trên các hướng Donetsk, Krasny Liman, Nam Donetsk và Zapooizhia nhưng không có kết quả.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\"><em>Trên hướng Donetsk,</em>&nbsp;lực lượng Nga, được không quân và pháo binh yểm trợ, đã đẩy lùi 14 cuộc tấn công của Ukraine gần Belogorovka, Berestovoye, Spornoye, Zaitsevo và Kleshcheevka thuộc Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Ngoài ra, các lữ đoàn cơ giới 28, 60, 81, 115 và lữ đoàn sơn cước xung kích 10 Ukraine cũng như 2 doanh trại dã chiến của lính đánh thuê nước ngoài, đã bị tấn công gần Zolotaryovka ở Lugansk, Veseloye và Yasnogorka tại Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Các kho đạn dược của lữ đoàn cơ giới số 24 và 28 Ukraine đã bị phá hủy gần Novgorodskoye và Konstantinovka thuộc Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Tổn thất của Ukraine lên tới 280 quân nhân, 3 xe chiến đấu bọc thép, 5 xe cơ giới, một pháo tự hành Gvozdika và 3 pháo D-30.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\"><em>Trên hướng Krasny Liman,</em>&nbsp;nhóm quân trung tâm Nga phối hợp cùng không quân, pháo binh và hệ thống phun lửa hạng nặng đã bẻ gãy 7 cuộc tấn công của Ukraine gần Karmazinovka, Kremennaya, Novovodyanoye và Chervonaya Dibrova tại Lugansk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Ngoài ra, các đơn vị thuộc lữ đoàn cơ giới 21, 66 và 67 của Ukraine đã bị tiêu diệt gần Kovalyovka ở Lugansk, Terny và Yampolovka tại Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px;\">Trên hướng này, đã có tới&nbsp;170 quân nhân Ukraine bị loại khỏi vòng chiến, Nga cũng phá hủy 7 xe chiến đấu bọc thép, 5 xe bán tải, một pháo tự hành Akatsiya, 2 pháo tự hành Gvozdika, cũng như một pháo D-30.</p></div>', 1, 8, 77, 12314334333, 244, 4, 0, '2023-07-23 03:50:19', '2023-07-23 03:50:19'),
(38, 'test thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mớitest thêm mới', '20230722023907-6a26_wm.jpeg,20230722023907-e1fd_wm.jpeg,20230722023911-f0dd_wm.jpeg', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Ở hướng Nam Donetsk,</em>&nbsp;cụm Lực lượng Vostok, được không quân và pháo binh yểm trợ, đã đẩy lùi 3 cuộc tấn công của Ukraine gần Urozhaynoye và Priyutnoye thuộc Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, các khu vực tập trung nhân lực và khí tài của Lữ đoàn cơ giới 23 và Lữ đoàn phòng thủ lãnh thổ 129 Ukraine đã bị tấn công gần Staromayorskoye và Priyutnoye ở Donetsk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Ở hướng Zaporizhia,</em>&nbsp;lực lượng Nga đã chặn đứng hoạt động của 2 nhóm trinh sát - phá hoại Ukraine gần Lugovskoye và Marfopol.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Quân đội Nga đã phát động tấn công vào nhân lực và khí tài của các lữ đoàn cơ giới số 33, 47 và 65 Ukraine gần Malaya Tokmachka, Novodanilovka và Novopokrovka.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ukraine đã mất tới 190 quân nhân, 2 xe tăng, 6 xe chiến đấu bọc thép, 2 xe cơ giới, một pháo Msta-B, một pháo M777 do Mỹ sản xuất và một pháo FH-70 do Anh sản xuất.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Ở hướng Kupyansk,</em>&nbsp;không quân và pháo binh của Cụm lực lượng Zapad đã tấn công nhân lực và khí tài của Lữ đoàn cơ giới 14 và Lữ đoàn phòng thủ lãnh thổ 103 Ukraine gần Novomlynsk, Tabayevka, vùng Kharkov và Stelmakhovka ở Lugansk.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Tổn thất của Ukraine lên tới 110 quân nhân, 2 xe chiến đấu bọc thép, 2 xe cơ giới và 2 pháo D-20.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Ở hướng Kherson,&nbsp;</em>Ukraine thiệt hại hơn 30 binh sĩ, 2 xe chiến đấu bọc thép, 2 xe cơ giới và 2 pháo D-30.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Nga đã vô hiệu hóa 94 đơn vị pháo binh Ukraine tại các trận địa cùng nhiều nhân lực và khí tài ở 117 khu vực. Một điểm triển khai tạm thời của đơn vị lính đánh thuê nước ngoài đã bị tấn công gần Goncharovskoye, vùng Chernigov.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, Nga đã phá hủy một kho chứa nhiên liệu hàng không tại căn cứ sân bay Kanatovo của Không quân Ukraine ở vùng Kirovograd.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Phòng không đã đánh chặn 15 quả đạn của hệ thống HIMARS, 3 tên lửa chống bức xạ HARM và 1 tên lửa hành trình Storm Shadow.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Tổng cộng, kể từ ngày 24/2/2022, Nga đã phá hủy của Ukraine 456 máy bay, 243 trực thăng, 5.169 UAV, 426 hệ thống tên lửa phòng không, 10.811 xe tăng và các phương tiện chiến đấu bọc thép khác, 1.139 pháo phản lực bắn loạt, 5.562 khẩu pháo và súng cối, cũng như 11.803 phương tiện cơ giới&nbsp;<a href=\"https://dantri.com.vn/the-gioi/quan-su.htm\" data-auto-link-id=\"6137992efb044100119a147e\" data-track-content=\"\" data-content-name=\"article-content-autolink\" data-content-piece=\"article-content-autolink_6137992efb044100119a147e\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" style=\"color: rgb(0, 102, 204);\">quân sự</a>&nbsp;đặc chủng.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><strong>Tổng thống Ukraine nói cầu Crimea phải bị phá hủy</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Theo&nbsp;<em>Reuters</em>, phát biểu qua liên kết video tại Hội nghị An ninh Aspen tại Mỹ, Tổng thống Ukraine Volodymyr Zelensky tuyên bố về cây cầu Kerch nối bán đảo Crimea với Nga \"là tuyến đường được sử dụng để cung cấp đạn dược cho chiến tranh và việc này được thực hiện hàng ngày. Và nó quân sự hóa bán đảo Crimea... Vì vậy, đây là một mục tiêu hợp pháp cho chúng tôi. Một mục tiêu gây ra chiến tranh, không đem lại hòa bình phải bị vô hiệu hóa\".</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 2\" data-width=\"730\" data-height=\"487\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg\" data-photo-id=\"2559298\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559298\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/2022-10-06t113110z1684466835rc2qrw93rs7drtrmadp3ukraine-crisis-australia-16651966057171131041471-1690082774586.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Tổng thống Ukraine Volodymyr Zelensky (Ảnh: Reuters).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><strong>Nga cáo buộc Ukraine liên tiếp tấn công bán đảo Crimea&nbsp;</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Hãng tin&nbsp;<em>TASS</em>&nbsp;dẫn thông báo của ông Sergey Sksyonov, Thống đốc vùng Crimea do Nga bổ nhiệm, ngày 22/7 cho biết Ukraine đã thực hiện đòn tấn công bằng máy bay không người lái (UAV) nhằm vào kho đạn Krasnogvardeysky trung tâm bán đảo gây cháy nổ lớn.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ông cho biết, theo báo cáo sơ bộ, vụ việc không gây thương vong nhưng giới chức địa phương đã sơ tán người dân sống trong bán kính 5 km từ vụ nổ và tạm ngừng hoạt động tuyến đường sắt trên cầu Crimea, nhưng sau đó khôi phục.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Trước đó, Nga cáo buộc Ukraine tấn công cây cầu này vào hôm 17/7, khiến 2 người thiệt mạng.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><strong>Ukraine: Quân Wagner đã tới Belarus rất đông và bắt đầu hoạt động</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Hãng thông tấn&nbsp;<em>Ukrinform</em>&nbsp;dẫn tuyên bố của ông Andrii Demchenko, người phát ngôn của Lực lượng Biên phòng quốc gia Ukraine, cho biết số lượng chiến binh Wagner ở Belarus có thể đã lên tới 5.000 người.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Lực lượng biên phòng của cả Ukraine và Ba Lan đang theo dõi chặt chẽ tình hình ở biên giới trước những thông tin cho thấy quân Wagner ở Belarus rất đông đảo và đang tập trận chung với quân đội nước này.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Tuy nhiên, quan chức này lưu ý số quân Wagner đang ở Belarus hiện không gây ra mối đe dọa trực tiếp với Ukraine và tình hình biên giới vẫn hoàn toàn nằm trong tầm kiểm soát nhưng lực lượng biên phòng vẫn sẵn sàng trong mọi tình huống.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Để đề phòng Wagner tấn công, Ukraine đã chủ động phá hủy 5 đoạn đường dẫn đến biên giới Belarus và cài hơn 2.500 quả mìn chống tăng.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><strong>Cơ sở sửa chữa tăng thiết giáp cho Ukraine ở Ba Lan bắt đầu hoạt động</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Theo&nbsp;<em>Reuters,&nbsp;</em>Bộ trưởng Quốc phòng Ba Lan Mariusz Blaszczak ngày 22/7 thông báo, \"Trung tâm bảo trì ở Gliwice bắt đầu hoạt động. Hai chiếc Leopard đầu tiên đã được chuyển từ Ukraine đến nhà máy Bumar\".</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ông Blaszczak cũng công bố ảnh một chiếc Leopard 2 được chuyển tới trung tâm bảo trì nói trên, song không rõ biến thể và liệu đây có phải xe tăng của Ukraine hay không.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 3\" data-width=\"680\" data-height=\"408\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg\" data-photo-id=\"2559235\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559235\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/5563187178137267822a-ba-lan-8052-1690073494-1690079617041.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Xe tăng Leopard 2 được chuyển tới nhà máy cơ khí Bumar Labedy ở Gliwice (Ảnh: Twitter/mblaszczak).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><strong>Diễn biến chiến sự Ukraine trên từng mặt trận</strong></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Theo kênh Rybar, lực lượng Nga đang chịu sức ép đáng kể trước những đợt tấn công bằng \"sóng người\"của Ukraine ở cả 2 sườn Bakhmut. Các mặt trận khác cũng rất căng thẳng, theo kênh Suriyakmaps.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên hướng Soledar,</em>&nbsp;Lực lượng vũ trang Nga đã tiến hành các cuộc phản công vào hai bên sườn của Bakhmut: ở phía nam gần Andreevka và ở phía tây bắc gần Orekhovo-Vasilyevka, nơi mà vào đêm trước mũi xung kích Ukraine đã chiếm được một số vị trí gần đường cao tốc M-03.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Mặc dù thực tế là các cuộc phản công đã bị Ukraine đẩy lùi, nhưng hành động này của lính dù và lực lượng đặc biệt Nga đã giúp loại bỏ thế chủ động tấn công của đối phương ở một số khu vực nhất định.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Từ phía Bogdanovka, Ukraine đã cố gắng tấn công Berkhovka với sự hỗ trợ của xe bọc thép. Do hỏa lực pháo binh Nga giáng trả quyết liệt, một xe tăng và một xe chiến đấu bộ binh đã bị phá hủy, sau đó Ukraine buộc phải rút lui.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Trong khi đó, giao tranh ác liệt đang diễn ra ở Kleshcheevka. Các binh sĩ Nga lợi dụng tuyến phòng thủ dày đặc và kiên cố, đã đẩy lùi các nhóm tấn công của Ukraine về những điểm cao liền kề. Các đơn vị tiến công của Ukraine đang tiếp tục bị tập kích bởi súng cối và pháo binh Nga.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Tại khu vực Orekhov,</em>&nbsp;các nhóm xung kích của Ukraine đã phát động 3 cuộc tấn công vào Rabotino bằng một số lượng lớn xe bọc thép, nhưng bị đẩy lùi bởi quân Nga được không quân, pháo binh yểm trợ. Kết quả là Ukraine đã mất ít nhất 4 xe tăng và 5 xe bọc thép.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, các đơn vị Nga đã kịp thời phát hiện sự di chuyển của một đoàn xe bọc thép và bộ binh Ukraine từ Malaya Tokmachka để tập kích bằng hỏa lực, một số phương tiện đã bị trúng đạn.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" data-width=\"1280\" data-height=\"889\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-photo-id=\"2559202\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559202\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên hướng Orekhov (Ảnh: Rybar).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên mỏm Vremievsky,</em>&nbsp;vào đêm 22/7, Ukraine đã thực hiện một nỗ lực khác để tấn công Urozhaynoye bằng các nhóm cơ động nhỏ trên xe bọc thép nhưng bị Nga phát hiện sớm ở ngoại vi ngôi làng và dùng hỏa lực tập kích, loại khỏi vòng chiến 2 xe chiến đấu bộ binh và 30 lính Ukraine.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Các đơn vị Ukraine cũng tấn công vùng ngoại ô Staromayorsky, tuy nhiên, bị hỏa lực pháo binh Nga tập kích, buộc phải rút lui.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Bất chấp những tổn thất, Ukraine tiếp tục chiến thuật bào mòn sinh mạng lính Nga bằng những đợt tăng cường liên tục, với hy vọng đánh gục các đơn vị chốt giữ và khoan thủng hàng phòng ngự.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" data-width=\"1280\" data-height=\"934\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-photo-id=\"2559203\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559203\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên mỏm Vremievsky (Ảnh: Rybar).</p></figcaption></figure>', 1, 3, 35, 33465642, 352, 4, 2, '2023-07-23 03:52:18', '2023-07-23 03:52:18');
INSERT INTO `bai_viet` (`id`, `tieu_de`, `anh_gioi_thieu`, `noi_dung`, `tinh_thanhpho_id`, `quan_huyen_id`, `phuong_xa_id`, `gia_tien`, `dien_tich`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(39, 'Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2Demo bài viết 2', '20230224122939-f9a1_wm.jpg,20230722023907-6a26_wm.jpeg,20230722023911-f0dd_wm.jpeg', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Tại khu vực Orekhov,</em>&nbsp;các nhóm xung kích của Ukraine đã phát động 3 cuộc tấn công vào Rabotino bằng một số lượng lớn xe bọc thép, nhưng bị đẩy lùi bởi quân Nga được không quân, pháo binh yểm trợ. Kết quả là Ukraine đã mất ít nhất 4 xe tăng và 5 xe bọc thép.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, các đơn vị Nga đã kịp thời phát hiện sự di chuyển của một đoàn xe bọc thép và bộ binh Ukraine từ Malaya Tokmachka để tập kích bằng hỏa lực, một số phương tiện đã bị trúng đạn.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" data-width=\"1280\" data-height=\"889\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-photo-id=\"2559202\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559202\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên hướng Orekhov (Ảnh: Rybar).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên mỏm Vremievsky,</em>&nbsp;vào đêm 22/7, Ukraine đã thực hiện một nỗ lực khác để tấn công Urozhaynoye bằng các nhóm cơ động nhỏ trên xe bọc thép nhưng bị Nga phát hiện sớm ở ngoại vi ngôi làng và dùng hỏa lực tập kích, loại khỏi vòng chiến 2 xe chiến đấu bộ binh và 30 lính Ukraine.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Các đơn vị Ukraine cũng tấn công vùng ngoại ô Staromayorsky, tuy nhiên, bị hỏa lực pháo binh Nga tập kích, buộc phải rút lui.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Bất chấp những tổn thất, Ukraine tiếp tục chiến thuật bào mòn sinh mạng lính Nga bằng những đợt tăng cường liên tục, với hy vọng đánh gục các đơn vị chốt giữ và khoan thủng hàng phòng ngự.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" data-width=\"1280\" data-height=\"934\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-photo-id=\"2559203\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559203\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên mỏm Vremievsky (Ảnh: Rybar).</p></figcaption></figure>', 1, 5, 54, 4900000, 80, 4, 0, '2023-07-23 06:12:22', '2023-07-23 06:12:22'),
(40, 'Demo bài viết Demo bài viết Demo bài viết Demo bài viết Demo bài viết Demo bài viết Demo bài viết Demo bài viết', '20230417230202-3438_wm.jpg,20230417230210-69b7_wm.jpg,20230722023911-f0dd_wm.jpeg', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Tại khu vực Orekhov,</em>&nbsp;các nhóm xung kích của Ukraine đã phát động 3 cuộc tấn công vào Rabotino bằng một số lượng lớn xe bọc thép, nhưng bị đẩy lùi bởi quân Nga được không quân, pháo binh yểm trợ. Kết quả là Ukraine đã mất ít nhất 4 xe tăng và 5 xe bọc thép.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, các đơn vị Nga đã kịp thời phát hiện sự di chuyển của một đoàn xe bọc thép và bộ binh Ukraine từ Malaya Tokmachka để tập kích bằng hỏa lực, một số phương tiện đã bị trúng đạn.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" data-width=\"1280\" data-height=\"889\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-photo-id=\"2559202\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559202\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên hướng Orekhov (Ảnh: Rybar).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên mỏm Vremievsky,</em>&nbsp;vào đêm 22/7, Ukraine đã thực hiện một nỗ lực khác để tấn công Urozhaynoye bằng các nhóm cơ động nhỏ trên xe bọc thép nhưng bị Nga phát hiện sớm ở ngoại vi ngôi làng và dùng hỏa lực tập kích, loại khỏi vòng chiến 2 xe chiến đấu bộ binh và 30 lính Ukraine.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Các đơn vị Ukraine cũng tấn công vùng ngoại ô Staromayorsky, tuy nhiên, bị hỏa lực pháo binh Nga tập kích, buộc phải rút lui.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Bất chấp những tổn thất, Ukraine tiếp tục chiến thuật bào mòn sinh mạng lính Nga bằng những đợt tăng cường liên tục, với hy vọng đánh gục các đơn vị chốt giữ và khoan thủng hàng phòng ngự.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 5\" data-width=\"1280\" data-height=\"934\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-photo-id=\"2559203\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559203\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-10-38-1690076985605.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên mỏm Vremievsky (Ảnh: Rybar).</p></figcaption></figure>', 1, 5, 56, 3100000, 80, 4, 0, '2023-07-23 06:13:28', '2023-07-23 06:13:28'),
(41, 'tấn công Urozhaynoye bằng các nhóm cơ động nhỏ trên xe bọc thép nhưng bị Nga phát hiện sớm ở ngoại vi ngôi làng và dùng', '20230605112113-2cb8_wm.jpg,20230605112113-2dfb_wm.jpg,20230605112113-9f17_wm.jpg', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Theo kênh Rybar, lực lượng Nga đang chịu sức ép đáng kể trước những đợt tấn công bằng \"sóng người\"của Ukraine ở cả 2 sườn Bakhmut. Các mặt trận khác cũng rất căng thẳng, theo kênh Suriyakmaps.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên hướng Soledar,</em>&nbsp;Lực lượng vũ trang Nga đã tiến hành các cuộc phản công vào hai bên sườn của Bakhmut: ở phía nam gần Andreevka và ở phía tây bắc gần Orekhovo-Vasilyevka, nơi mà vào đêm trước mũi xung kích Ukraine đã chiếm được một số vị trí gần đường cao tốc M-03.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Mặc dù thực tế là các cuộc phản công đã bị Ukraine đẩy lùi, nhưng hành động này của lính dù và lực lượng đặc biệt Nga đã giúp loại bỏ thế chủ động tấn công của đối phương ở một số khu vực nhất định.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Từ phía Bogdanovka, Ukraine đã cố gắng tấn công Berkhovka với sự hỗ trợ của xe bọc thép. Do hỏa lực pháo binh Nga giáng trả quyết liệt, một xe tăng và một xe chiến đấu bộ binh đã bị phá hủy, sau đó Ukraine buộc phải rút lui.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Trong khi đó, giao tranh ác liệt đang diễn ra ở Kleshcheevka. Các binh sĩ Nga lợi dụng tuyến phòng thủ dày đặc và kiên cố, đã đẩy lùi các nhóm tấn công của Ukraine về những điểm cao liền kề. Các đơn vị tiến công của Ukraine đang tiếp tục bị tập kích bởi súng cối và pháo binh Nga.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Tại khu vực Orekhov,</em>&nbsp;các nhóm xung kích của Ukraine đã phát động 3 cuộc tấn công vào Rabotino bằng một số lượng lớn xe bọc thép, nhưng bị đẩy lùi bởi quân Nga được không quân, pháo binh yểm trợ. Kết quả là Ukraine đã mất ít nhất 4 xe tăng và 5 xe bọc thép.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ngoài ra, các đơn vị Nga đã kịp thời phát hiện sự di chuyển của một đoàn xe bọc thép và bộ binh Ukraine từ Malaya Tokmachka để tập kích bằng hỏa lực, một số phương tiện đã bị trúng đạn.</p><figure class=\"image align-center\" contenteditable=\"false\" style=\"margin: 28px auto; padding: 0px; float: none; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><img title=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" alt=\"Nga và Ukraine cùng tấn công, chiến sự tăng nhiệt - 4\" data-width=\"1280\" data-height=\"889\" data-original=\"https://icdn.dantri.com.vn/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-photo-id=\"2559202\" data-track-content=\"\" data-content-name=\"article-content-image\" data-content-piece=\"article-content-image_2559202\" data-content-target=\"/the-gioi/nga-va-ukraine-cung-tan-cong-chien-su-tang-nhiet-20230723101349898.htm\" data-src=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg\" data-srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" data-ll-status=\"loaded\" class=\"entered loaded\" srcset=\"https://icdn.dantri.com.vn/thumb_w/680/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1x, https://icdn.dantri.com.vn/thumb_w/1020/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 1.5x, https://icdn.dantri.com.vn/thumb_w/1360/2023/07/23/photo2023-07-2215-53-08-1690076922677.jpg 2x\" style=\"max-width: 100%; height: auto; width: 680px; cursor: zoom-in;\"><figcaption style=\"margin: 8px 0px 0px; padding: 0px 30px; font-size: 14px; line-height: 22px; font-style: italic; text-align: center; color: rgb(102, 102, 102);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Chiến sự Ukraine trên hướng Orekhov (Ảnh: Rybar).</p></figcaption></figure><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\"><em>Trên mỏm Vremievsky,</em>&nbsp;vào đêm 22/7, Ukraine đã thực hiện một nỗ lực khác để</p>', 1, 5, 54, 5000000, 65, 4, 0, '2023-07-23 06:14:48', '2023-07-23 06:14:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet_vip`
--

CREATE TABLE `bai_viet_vip` (
  `id` int UNSIGNED NOT NULL,
  `bai_viet_id` int UNSIGNED NOT NULL,
  `time` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_viet_vip`
--

INSERT INTO `bai_viet_vip` (`id`, `bai_viet_id`, `time`, `created_at`, `updated_at`) VALUES
(3, 36, '2023-07-23', '2023-07-23 01:36:38', '2023-07-23 01:36:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int UNSIGNED NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `baiviet_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `noi_dung`, `user_id`, `baiviet_id`, `created_at`, `updated_at`) VALUES
(1, 'abcxyz', 1, 39, '2023-08-14 05:21:26', '2023-08-14 05:21:26'),
(2, 'sdaasda', 1, 38, '2023-08-14 05:22:08', '2023-08-14 05:22:08'),
(3, 'feryert', 1, 36, '2023-08-14 06:13:00', '2023-08-14 06:13:00'),
(4, 'feryert', 1, 36, '2023-08-14 06:13:39', '2023-08-14 06:13:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_16_090605_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int UNSIGNED NOT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tuoi` int NOT NULL,
  `CCCD` bigint NOT NULL,
  `anh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` bigint NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '0 là chưa duyệt, 1 là đã duyệt',
  `money` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint UNSIGNED NOT NULL,
  `rate` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `hoTen`, `tuoi`, `CCCD`, `anh`, `sdt`, `type`, `money`, `created_at`, `updated_at`, `user_id`, `rate`) VALUES
(1, 'Sơn', 23, 12312324234231, '01.thumb_500x.jpg', 12345353, 1, 49950000, '2023-07-08 22:08:47', '2023-07-23 01:36:38', 1, 3),
(4, 'abcxkasdmas asdas áda', 32, 1342342134234242, 'noi-chien-khong-dau-mitsusita-9l-ha9000-8-800x600.jpg', 2345464234242, 1, 0, '2023-07-18 10:06:41', '2023-07-18 10:25:45', 3, 0),
(5, 'Nguyễn Văn D', 21, 423423112313, 'avatars-000096061450-upffwd-t500x500.jpg', 43212342211, 1, 0, '2023-07-23 03:43:48', '2023-07-23 10:25:00', 4, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'partner', 'web', '2023-07-16 02:16:35', '2023-07-16 02:16:35'),
(2, 'admin', 'web', '2023-07-16 02:16:58', '2023-07-16 02:16:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong_xa`
--

CREATE TABLE `phuong_xa` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quan_huyen_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuong_xa`
--

INSERT INTO `phuong_xa` (`id`, `name`, `quan_huyen_id`, `created_at`, `updated_at`) VALUES
(1, 'Phường Phúc Xá', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(2, 'Phường Trúc Bạch', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(3, 'Phường Vĩnh Phúc', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(4, 'Phường Cống Vị', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(5, 'Phường Liễu Giai', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(6, 'Phường Nguyễn Trung Trực', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(7, 'Phường Quán Thánh', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(8, 'Phường Ngọc Hà', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(9, 'Phường Điện Biên', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(10, 'Phường Đội Cấn', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(11, 'Phường Ngọc Khánh', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(12, 'Phường Kinh Mã', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(13, 'Phường Giảng Võ', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(14, 'Phường Thành Công', 1, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(15, 'Phường Thượng Cát', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(16, 'Phường Liên Mạc', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(17, 'Phường Đông Ngạc', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(18, 'Phường Đức Thắng', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(19, 'Phường Thụy Phương', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(20, 'Phường Tây Tựu', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(21, 'Phường Xuân Đỉnh', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(22, 'Phường Xuân Tảo', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(23, 'Phường Minh Khai', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(24, 'Phường Cổ Nhuế 1', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(25, 'Phường Cổ Nhuế 2', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(26, 'Phường Phú Diễn', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(27, 'Phường Phúc Diễn', 2, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(28, 'Phường Nghĩa Đô', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(29, 'Phường Nghĩa Tân', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(30, 'Phường Mai Dịch', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(31, 'Phường Dịch Vọng', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(32, 'Phường Dịch Vọng Hậu', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(33, 'Phường Quan Hoa', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(34, 'Phường Yên Hòa', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(35, 'Phường Trung Hòa', 3, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(36, 'Phường Biên Giang', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(37, 'Phường Đồng Mai', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(38, 'Phường La Khuê', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(39, 'Phường Phú La', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(40, 'Phường Phú Lãm', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(41, 'Phường Quang Trung', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(42, 'Phường Yên Nghĩa', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(43, 'Phường Yết Kiêu', 4, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(44, 'Phường Nguyễn Du', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(45, 'Phường Bạch Đằng', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(46, 'Phường Phạm Đình Hổ', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(47, 'Phường Bùi Thị Xuân', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(48, 'Phường Ngô Thì Nhậm', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(49, 'Phường Lê Đại Hành', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(50, 'Phường Đồng Nhân', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(51, 'Phường Phố Huế', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(52, 'Phường Đống Mác', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(53, 'Phường Thanh Lương', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(54, 'Phường Thanh Nhàn', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(55, 'Phường Cầu Dền', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(56, 'Phường Bách Khoa', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(57, 'Phường Đồng Tâm', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(58, 'Phường Vĩnh Tuy', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(59, 'Phường Bạch Mai', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(60, 'Phường Quỳnh Mai', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(61, 'Phường Minh Khai', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(62, 'Phường Trương Định', 5, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(63, 'Phường Phúc Tân', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(64, 'Phường Đồng Xuân', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(65, 'Phường Hàng Mã', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(66, 'Phường Hàng Buồm', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(67, 'Phường Lý Thái Tổ', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(68, 'Phường Tràng Tiền', 6, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(69, 'Phường Thanh Trì', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(70, 'Phường Định Công', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(71, 'Phường Tân Mai', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(72, 'Phường Giáp Bát', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(73, 'Phường Lĩnh Nam', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(74, 'Phường Yên Sở', 7, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(75, 'Phường Gia Thụy', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(76, 'Phường Giang Biên', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(77, 'Phường Long Biên', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(78, 'Phường Phúc Đồng', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(79, 'Phường Phúc Lợi', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(80, 'Phường Sài Đồng', 8, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(81, 'Phường Thượng Đình', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(82, 'Phường Hạ Đình', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(83, 'Phường Phương Liệt', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(84, 'Phường Nhân Chính', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(85, 'Phường Khương Mai', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(86, 'Phường Khương Đình', 9, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(87, 'Phường Cầu Diễn', 10, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(88, 'Phường Mỹ Đình 1', 10, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(89, 'Phường Mỹ Đình 2', 10, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(90, 'Phường Tây Mỗ', 10, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(91, 'Phường Trung Văn', 10, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(92, 'Phường Bưởi', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(93, 'Phường Nhật Tân', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(94, 'Phường Thụy Khuê', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(95, 'Phường Tứ Liên', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(96, 'Phường Xuân La', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38'),
(97, 'Phường Yên Phụ', 11, '2023-06-25 07:35:38', '2023-06-25 07:35:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_huyen`
--

CREATE TABLE `quan_huyen` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_tp_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_huyen`
--

INSERT INTO `quan_huyen` (`id`, `name`, `tinh_tp_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(2, 'Bắc Từ Liêm', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(3, 'Cầu Giấy', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(4, 'Hà Đông', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(5, 'Hai Bà Trưng', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(6, 'Hoàn Kiếm', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(7, 'Hoàng Mai', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(8, 'Long Biên', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(9, 'Thanh Xuân', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(10, 'Nam Từ Liêm', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08'),
(11, 'Tây Hồ', 1, '2023-06-25 07:16:08', '2023-06-25 07:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `id` int NOT NULL,
  `user_id_1` int NOT NULL COMMENT 'user_id_1 là người đánh giá',
  `user_id_2` int NOT NULL COMMENT 'user_id_2 là người được đánh giá',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `star` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`id`, `user_id_1`, `user_id_2`, `created_at`, `updated_at`, `star`) VALUES
(4, 4, 1, '2023-07-22 22:08:51', '2023-07-22 22:08:51', 5),
(12, 5, 1, '2023-07-22 22:19:29', '2023-07-22 22:19:29', 1),
(14, 4, 4, '2023-07-23 08:15:02', '2023-07-23 08:15:02', 3),
(15, 1, 1, '2023-07-23 08:16:46', '2023-07-23 08:16:46', 5),
(16, 1, 4, '2023-07-23 08:16:56', '2023-07-23 08:16:56', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result_momo`
--

CREATE TABLE `result_momo` (
  `id` int NOT NULL,
  `amount` int NOT NULL,
  `orderId` int UNSIGNED NOT NULL,
  `requestId` int UNSIGNED NOT NULL,
  `status` int NOT NULL COMMENT '1 là success',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `result_momo`
--

INSERT INTO `result_momo` (`id`, `amount`, `orderId`, `requestId`, `status`, `created_at`, `updated_at`) VALUES
(2, 50000, 1689870178, 1689870178, 0, '2023-07-20 09:22:59', '2023-07-20 09:22:59'),
(3, 50000, 1689870294, 1689870294, 1, '2023-07-20 09:24:54', '2023-07-20 09:29:54'),
(4, 200000, 1690101051, 1690101051, 0, '2023-07-23 01:30:52', '2023-07-23 01:30:52'),
(5, 200000, 1690101338, 1690101338, 0, '2023-07-23 01:35:38', '2023-07-23 01:35:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_thanhpho`
--

CREATE TABLE `tinh_thanhpho` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh_thanhpho`
--

INSERT INTO `tinh_thanhpho` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', '2023-06-25 07:11:30', '2023-06-25 07:11:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$k/PYWtv4PemX3El9PltgpuF5L9sZxYWlaU7qAlZc3gi97sStYfwpi', NULL, '2023-06-18 09:59:33', '2023-06-18 09:59:33'),
(2, 'demo them moiws lan nữasdasdas', 'sdadada@gmail.com', NULL, '$2y$10$OVaz8g1xyl1FL1IhKcUayu.58zLlB/FLYM2otfN1/LHDgEmMVgyV6', NULL, '2023-07-17 08:07:49', '2023-07-17 08:07:49'),
(3, 'Long Nguyễn Hải', 'writer@gmail.com', NULL, '$2y$10$87wa4fQP3/zFH1cwmrMu/eSJbbr4Zjd6RzyCvESRV7DMR2OYK.bg6', NULL, '2023-07-18 09:47:16', '2023-07-18 09:47:16'),
(4, 'test', 'test@gmail.com', NULL, '$2y$10$Vbgl7RPaZrvyEKkvn4kG/eq0XTryN1gDq0cdOONiu7t0pUWoWm5M2', NULL, '2023-07-22 21:56:19', '2023-07-22 21:56:19'),
(5, 'test2', 'test2@gmail.com', NULL, '$2y$10$uDbFBIiuvldPCVRDQzfeNuDK32Kw02cLxYZN94zvT6D3VaZaNAuQK', NULL, '2023-07-22 22:09:13', '2023-07-22 22:09:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bai_viet_vip`
--
ALTER TABLE `bai_viet_vip`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phuong_xa`
--
ALTER TABLE `phuong_xa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_huyen`
--
ALTER TABLE `quan_huyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `result_momo`
--
ALTER TABLE `result_momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `tinh_thanhpho`
--
ALTER TABLE `tinh_thanhpho`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `bai_viet_vip`
--
ALTER TABLE `bai_viet_vip`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuong_xa`
--
ALTER TABLE `phuong_xa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `quan_huyen`
--
ALTER TABLE `quan_huyen`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `result_momo`
--
ALTER TABLE `result_momo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinh_thanhpho`
--
ALTER TABLE `tinh_thanhpho`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
