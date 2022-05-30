-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2022 lúc 02:13 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

DELIMITER $$
--
-- Thủ tục
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_kh` (IN `mskh` INT(10), IN `ten` VARCHAR(30), IN `diachi` VARCHAR(30), IN `sdt` CHAR(11))   BEGIN
UPDATE khachhang kh SET kh.HoTenKH=ten, kh.DiaChi=diachi ,kh.SoDienThoai=sdt WHERE kh.MSKH=mskh;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSHH` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 1,
  `GiaDatHang` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`) VALUES
(1, 1, 10, '164000.00'),
(2, 6, 1, '256000.00'),
(3, 8, 5, '115000.00'),
(3, 36, 5, '292000.00'),
(4, 1, 1, '164000.00'),
(4, 2, 2, '40000.00'),
(4, 3, 3, '265000.00'),
(4, 4, 4, '40000.00'),
(5, 2, 2, '40000.00'),
(5, 9, 1, '153000.00'),
(6, 8, 2, '115000.00'),
(7, 2, 15, '40000.00'),
(7, 7, 5, '156000.00'),
(8, 1, 1, '164000.00'),
(8, 6, 3, '256000.00'),
(9, 16, 3, '177000.00'),
(10, 5, 2, '207000.00'),
(10, 23, 1, '24000.00'),
(11, 29, 1, '42000.00'),
(11, 39, 1, '93000.00'),
(14, 2, 1, '40000.00'),
(14, 7, 1, '156000.00'),
(15, 2, 1, '40000.00'),
(16, 2, 5, '40000.00'),
(16, 7, 5, '156000.00'),
(16, 8, 5, '115000.00'),
(17, 30, 5, '273000.00'),
(18, 2, 5, '40000.00'),
(18, 7, 5, '156000.00'),
(19, 2, 4, '40000.00'),
(19, 7, 2, '156000.00'),
(20, 8, 1, '115000.00'),
(20, 20, 3, '22000.00'),
(20, 31, 2, '48000.00'),
(21, 6, 2, '256000.00'),
(22, 14, 2, '40000.00'),
(22, 24, 1, '24000.00'),
(23, 8, 5, '115000.00'),
(24, 2, 2, '40000.00'),
(24, 3, 3, '265000.00'),
(24, 8, 2, '115000.00'),
(25, 26, 1, '265000.00'),
(25, 37, 1, '249000.00'),
(26, 6, 2, '256000.00'),
(27, 12, 2, '34000.00'),
(27, 40, 1, '24000.00'),
(28, 12, 2, '34000.00'),
(28, 27, 2, '164000.00'),
(29, 4, 2, '40000.00'),
(29, 7, 4, '156000.00'),
(30, 2, 1, '40000.00'),
(31, 4, 2, '40000.00'),
(31, 6, 1, '256000.00'),
(32, 1, 1, '164000.00'),
(32, 10, 1, '177000.00'),
(32, 14, 1, '40000.00'),
(33, 28, 1, '268000.00'),
(33, 30, 1, '273000.00'),
(34, 40, 2, '24000.00'),
(35, 2, 1, '40000.00'),
(35, 8, 1, '115000.00'),
(36, 2, 2, '40000.00'),
(36, 5, 2, '207000.00'),
(36, 7, 2, '156000.00'),
(37, 2, 2, '40000.00'),
(37, 4, 3, '40000.00'),
(37, 7, 1, '156000.00'),
(38, 7, 5, '156000.00'),
(38, 29, 10, '42000.00'),
(38, 35, 5, '131000.00'),
(39, 23, 1, '24000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSKH` int(11) NOT NULL,
  `DiaChi` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TongTien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayDH` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`SoDonDH`, `MSKH`, `DiaChi`, `TongTien`, `NgayDH`) VALUES
(1, 1, '121, Cách mạng tháng 8', '1640000', '2022-04-10 00:26:39'),
(2, 1, 'Đại học cần thơ', '256000', '2022-04-10 01:52:56'),
(3, 1, 'Ô Môn, Cần Thơ', '2035000', '2022-04-10 01:54:59'),
(4, 1, '3/2, Đại học cần thơ', '1199000', '2022-04-10 08:48:39'),
(5, 1, 'Khu Dân Cư 91B Cần Thơ, đường Nguyễn Văn Linh ', '233000', '2022-04-10 10:24:30'),
(6, 1, '131A, Kv: Hoà Thạnh A, Ô Môn, Cần Thơ', '230000', '2022-04-11 02:09:35'),
(7, 1, '182 Tầm Vu, Can Tho, Cần Thơ', '1380000', '2022-04-11 09:00:44'),
(8, 2, '135, Cách mạng tháng 8', '932000', '2022-04-11 09:02:23'),
(9, 1, '132, phường Long Hưng, Cần Thơ', '531000', '2022-04-11 09:06:50'),
(10, 2, '17 Tôn Đức Thắng, Bến Nghé, Quận 1, TP. Hồ Chí Minh', '438000', '2022-04-11 09:56:11'),
(11, 2, 'Quảng trường, Bình Thủy, Cần Thơ', '135000', '2022-04-12 07:38:13'),
(14, 1, 'Cần Thơ', '196000', '2022-04-15 03:52:35'),
(15, 1, 'Cần Thơ', '40000', '2022-04-15 04:50:28'),
(16, 1, 'Cần Thơ', '1555000', '2022-04-15 06:39:10'),
(17, 1, 'Đại học cần thơ', '1365000', '2022-04-15 06:42:55'),
(18, 1, 'Cần Thơ', '980000', '2022-04-15 08:39:26'),
(19, 1, 'KTX Đại học Cần Thơ', '472000', '2022-04-16 03:39:08'),
(20, 2, 'Nguyễn Văn Linh', '277000', '2022-04-16 06:03:33'),
(21, 2, '129, Nguyễn Văn Linh, Cần Thơ', '512000', '2022-04-17 05:41:43'),
(22, 1, 'KTX Đại học Cần Thơ', '104000', '2022-04-18 06:15:01'),
(23, 1, 'KTX Đại học Cần Thơ', '575000', '2022-04-18 20:40:08'),
(24, 1, '1315A, Phường Thới Hoà, Q. Ô Môn, TP. Cần Thơ', '1105000', '2022-04-19 09:53:05'),
(25, 1, 'Ô Môn, Cần Thơ', '514000', '2022-04-20 07:02:42'),
(26, 2, 'Khu II, Đ. 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ', '512000', '2022-04-20 20:07:39'),
(27, 1, '1381A, Ô Môn, Cần Thơ', '92000', '2022-04-20 20:31:46'),
(28, 2, '121, Cách mạng tháng 8, Ninh Kiều, Cần Thơ', '396000', '2022-04-21 06:12:43'),
(29, 1, '3/2 Ninh Kiều', '704000', '2022-04-22 08:39:43'),
(30, 1, 'O Môn', '40000', '2022-04-22 08:42:22'),
(31, 1, 'KTX, Đại học cần thơ', '336000', '2022-04-22 08:53:02'),
(32, 1, 'KV Thới Bình, P.Phước Thới, Quận Ô môn , TP Cần Thơ', '381000', '2022-04-22 08:58:32'),
(33, 2, 'KTX, Đại học cần thơ', '541000', '2022-04-23 09:34:45'),
(34, 1, 'Đại học cần thơ', '48000', '2022-04-22 20:30:03'),
(35, 2, 'Đại học cần thơ', '155000', '2022-04-23 10:51:18'),
(36, 1, 'Nguyễn Văn Linh', '806000', '2022-04-23 10:54:42'),
(37, 1, '1318A, Ô Môn, Cần Thơ', '356000', '2022-04-23 04:51:02'),
(38, 3, '79B Lý Tự Trọng, Phường An Phú, Quận Ninh Kiều, Cần Thơ', '1855000', '2022-04-23 05:02:45'),
(39, 3, 'Đại học cần thơ', '24000', '2022-04-23 05:04:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MSHH` int(11) NOT NULL,
  `TenHH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` decimal(10,0) NOT NULL,
  `MaLoaiHang` int(11) NOT NULL,
  `GhiChu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hinh1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `Gia`, `MaLoaiHang`, `GhiChu`, `Hinh1`) VALUES
(1, 'Bí kíp nấu ăn - Lăn vào bếp', '164000', 3, 'Nấu ăn với người này là một góc yêu thương, là thư giãn, là tài năng hay sở thích. Nhưng đối với nhiều người thì nấu ăn là cả một Thử Thách Khó Khăn hay Nỗi Kinh Hoàng Khó Nói. Làm thế nào để công việc nấu ăn trở nên dễ thở hơn với những người không có năng khiếu hay lười biếng, hoặc vừa lười vừa thường gây thảm họa (như cánh họa sĩ chẳng hạn)? Đừng lo, câu hỏi đó không còn là câu hỏi tu từ nữa mà đã có lời giải đáp cho bạn ngay ở đây. Mọi thứ liên quan đến bếp núc đều có bí quyết riêng để xử lý, nếu bạn nắm được những bí quyết nho nhỏ này thì hãy an tâm là bạn đã thành công một phần rồi đó. Phần còn lại phụ thuộc vào quyết tâm (hay lý do!?) lăn vào bếp của bạn. Dù bạn học nấu ăn vì bị ép buộc, bị cưỡng chế, bị dụ dỗ, hay rảnh quá nên nghía chơi chút, hay bất cứ lý do nào, hãy cùng biến công cuộc vào bếp thành những khám phá thú vị và mới lạ. Cùng trải nghiệm những mẹo vặt nấu nướng, những công thức nấu ăn đơn giản và những loại thực phẩm cải thiện tính cách có trong “Bí kíp nấu ăn: Lăn vào bếp” của hai họa sĩ siêu lười, siêu đoảng của Cloud Pillow Studio. Một cuốn sách dễ thương, đầy màu sắc, vui nhộn, thú vị, bổ ích và cần có trên giá sách, bên kệ bếp và trên bàn ăn của bạn. Một cuốn sách nấu ăn bằng tranh dành cho những người không biết nấu ăn, của hai cô nàng không biết nấu ăn. ', '35.jpg'),
(2, 'Bí Kíp Tâm Lý Từ Những Chuyên Gia Kỳ Cựu (100 Trích Dẫn Thần Thánh)', '40000', 6, 'Dường như mỗi cá nhân đều được tạo ra để trở nên bí ẩn với người khác. Vậy nên ngành tâm lý học ra đời để vén bức màn bí ẩn đó, tìm hiểu bản chất, cách vận hành và sức mạnh của tâm trí con người. \"Bí Kíp Tâm Lý Từ Những Chuyên Gia Kỳ Cựu (100 Trích Dẫn Thần Thánh)\" sẽ dẫn lối cho bạn đọc theo những tuyến chủ đạo của bộ môn tâm lý học, đi theo những nhánh chính, băng qua những góc chính đầy màu sắc và tiến cả vào những vùng chưa được mấy ai khám phá. Hành trình này sẽ bao gồm cả những quan điểm có thể gây tranh cãi và việc chúng xuất hiện trong cuốn sách này không đồng nghĩa với việc ủng hộ. Cộng đồng tâm lý học từ lâu đã nhận thức được rằng những phương pháp khoa học của họ không thể chặt chẽ tuyệt đối và kết quả là một số không nhỏ những hiện tượng tâm lý hay ho hoặc vốn được công nhận nay đã bị hạ bệ hoặc đang suy yếu. Một trăm trích dẫn là không đủ để trình bày một cách công bằng về mọi nhân vật đã góp phần xây dựng nên ngành tâm lý học và mọi hiện tượng thú vị mà họ đã khám phá ra. Tuy thế cuốn sách này cũng sẽ cố gắng để tìm hiểu về những vấn đề quan trọng nhất trong ngành, thông qua lời của những nhà tư tưởng quan trọng nhất. Cuốn sách gồm 100 trích dẫn đến từ những chuyên gia kỳ cựu về lĩnh vực tâm lý học, cuốn sách sẽ giúp bạn đặt chân vào một trong những lĩnh vực khoa học kỳ diệu nhất, nhằm giải mã con người, đồng thời khám phá chính bản thân mình. Sau mỗi trích dẫn cuốn sách còn có thêm xuất xứ và chủ nhân của câu trích dẫn.', '36.jpg'),
(3, 'Bí Mật Của Naoko', '265000', 3, 'Cuộc sống của Hirasule trôi qua hết sức bình lặng, cho đến một ngày tai nạn giao thông khủng khiếp xảy ra và gã mất đi người vợ yêu quý nhất của mình, còn đứa con gái bé bỏng vẫn trong tình trạng hôn mê bất tỉnh. Sau vụ tai nạn, người vợ tưởng đã mất của Hirasule lại tỉnh dậy trong thân xác cô con gái mới 12 tuổi của hai người. Để rồi cả câu chuyện, người đọc vẫn day dứt với câu hỏi Hirasule tự hỏi mình: anh đã mất vợ hay con gái trong vụ tai nạn ấy? Đang có cuộc sống bình dị cùng người vợ đảm đang và cô con gái ngoan ngoãn bỗng nhiên tai họa ập xuống khiến Hirasule rơi vào một tình huống oái oăm. Anh sẽ phải hành xử như thế nào đây. Nếu anh coi người tỉnh dậy là vợ mình, liệu hai người có thể  thân mật như vợ chồng khi vợ anh lại ở trong cơ thể cô con gái bé bỏng. Đã có lúc người đọc lo sợ có tình tiết loạn luân trong câu chuyện. Còn coi đó là con gái mình, và bắt đầu cuộc sống hôn nhân với người phụ nữ khác thì người vợ ‘không thể lộ diện” kia của anh sẽ như thế nào? Để rồi anh cứ sống trong sự giày vò của một người đàn ông đang trong độ tuổi sung mãn, sau đó lại là sự ghen tuông khi Naoko trong cơ thể con gái bắt đầu trưởng thành ra dáng thiếu nữ và có những mối quan hệ riêng. Hirasule có phải là người cao thượng khi anh không đi bước nữa với người khác  - sống như một ông bố độc thân nuôi con gái ăn học, đồng hành cùng Naoko thực hiện ước mơ của cô, lý giải cho điều này anh nói một câu đơn giản với vợ: “Bởi vì anh có Naoko rồi”. Hay anh là người ích kỷ khi giữ Naoko cho riêng mình, ngăn cản cô có cuộc sống riêng. ', '37.jpg'),
(4, 'Bí Mật Của Phan Thiên Ân', '40000', 2, 'Những bài học về tinh thần, tâm linh và trí tuệ đã được chính tiến sĩ Alan Phan chấp bút và phỏng tác lại theo nguyên tác của cuốn sách vô giá theo thời gian “Người bán hàng vĩ đại nhất thế giới” của Og Mandino. Lối viết dung dị, đơn giản: dùng một câu chuyện với bối cảnh thân thuộc và mười tờ kinh để thắp nên những bài học thay đổi cuộc đời – tất cả sẽ làm nên những sự thay đổi “diệu kì” khi ta áp dụng triệt để. Trong cuốn sách người đọc sẽ tìm thấy nhiều bất ngờ thú vị về việc khám phá chính bản thân và sức mạnh nội tại của mình qua ngòi bút “không kinh tế” và đầy tính “triết lý nhân sinh” của một “triết gia doanh nhân” bậc thầy Alan Phan. “Con đường để đạt được thành công và giàu có đều có những thử thách. Và để thành công hay giàu có cần phải có kinh nghiệm và bí quyết. Tất cả những công thức thành công, hạnh phúc, bình an và tiền bạc của những người giàu nhất thế giới sẽ được gói gọn trong cuốn sách này qua 10 tờ kinh. Mỗi tờ kinh là những lời chỉ dạy của tiền nhân, chứa đựng một nguyên lý, một định luật, một sự thực căn bản mà người đọc phải thấu hiểu và ghi khắc vào tiềm thức. Khi bạn đã đưa những nguyên lý này vào tận bản năng, bạn sẽ có quyền lực để thâu lượm tất cả sự giàu sang mà bạn muốn.”', '38.jpg'),
(5, 'Biện Hộ Cho Một Nền Giáo Dục Khai Phóng', '207000', 1, 'Tiến sĩ Nguyễn Xuân Xanh viết lời giới thiệu cho quyển sách Biện hộ cho một nền giáo dục khai phóng của tác giả người Ấn Độ Fereed ZakaRia bằng việc trích câu: “Giáo dục có thể cho bạn một kỹ năng, nhưng giáo dục khai phóng có thể đem lại cho bạn phẩm giá” - của nhà văn Ellen Key. Giáo dục khai phóng là một lĩnh vực rộng, bao gồm những môn học không phải thuần kỹ thuật, hay khoa học... Nó nhằm đào tạo con người toàn diện, phát triển nhiều khả năng, tạo nền tri thức rộng, tạo ý thức lịch sử, nhân loại, để làm công dân, làm người văn hóa, hơn là một chuyên gia trong một lĩnh vực chuyên môn. Theo John Stuart Mill: “Đại học không phải là chỗ của giáo dục nghề nghiệp. Mục tiêu của giáo dục Đại học không phải tạo ra các luật gia, bác sĩ hay kỹ sư có kỹ năng, mà tạo ra những con người có năng lực (tư duy) và có văn hóa”. Hay nhà giáo dục Pestalozzi cũng từng cho rằng: “Mục đích của giáo dục và giảng dạy không khác gì hơn là sự phát triển hài hòa của những năng lực và sức mạnh trong bản chất con người”. Tác giả dành một chương để “biện hộ cho tuổi trẻ ngày nay” không chọn các môn học/ngành học khai phóng vì: “Tất cả chúng ta cả già lẫn trẻ không đủ thời gian và công sức để suy nghĩ về ý nghĩa cuộc đời. Chúng ta không nhìn vào bên trong bản thân đủ mức độ để hiểu những điểm mạnh và điểm yếu của mình và chúng ta không nhìn xung quanh, nhìn ra thế giới, nhìn vào lịch sử đủ mức độ để nêu những câu hỏi sâu sắc nhất và bao quát nhất”. Rồi F. Zakaria nêu giải pháp: “Ngay cả bây giờ, tất cả chúng ta có thể sử dụng nền giáo dục khai phóng nhiều hơn một chút để làm người lao động tốt, giúp chúng ta trở thành những người đối tác, bạn bè, cha mẹ và người công dân tốt”.', '39.jpg'),
(6, 'Big Data', '256000', 5, 'What is Big Data, and why should you care? Big data knows where you\'ve been and who your friends are. It knows what you like and what makes you angry. It can predict what you\'ll buy, where you\'ll be the victim of crime and when you\'ll have a heart attack. Big data knows you better than you know yourself or so it claims. But how well do you know big data? You\'ve probably seen the phrase in newspaper headlines, at work in a marketing meeting or on a fitness-tracking gadget. But can you understand it without being a Silicon Valley nerd who writes computer programs for fun? Yes. Yes, you can. Timandra Harkness writes comedy, not computer code. The only programmes she makes are on the radio. If you can read a newspaper you can read this book. Starting with the basics - what IS data? And what makes it big? - Timandra takes you on a whirlwind tour of how people are using big data today: from science to smart cities, business to politics, self-quantification to the Internet of Things. Finally, she asks the big questions about where it\'s taking us; is it too big for its boots, or does it think too small? Are you a data point or a human being? Will this book be full of rhetorical questions? No. It also contains puns, asides, unlikely stories and engaging people, inspiring feats and thought-provoking dilemmas. Leaving you armed and ready to decide what you think about one of the decade\'s big ideas: big data.', '40.jpg'),
(7, 'Bố Già', '156000', 6, 'Thế giới ngầm được phản ánh trong tiểu thuyết Bố Già là sự gặp gỡ giữa một bên là ý chí kiên cường và nền tảng gia tộc chặt chẽ theo truyền thống Mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố Già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiêng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử. Với kết cấu hoàn hảo, cốt truyện không thiếu những pha hành động gay cấn, tình tiết bất ngờ và không khí kình địch đến nghẹt thở, Bố Già xứng đáng là đỉnh cao trong sự nghiệp văn chương của Mario Puzo, vì thế mà có ý kiến cho rằng “Bố Già là sự tổng hòa của mọi hiểu biết. Bố Già là đáp án cho mọi câu hỏi”.', '41.jfif'),
(8, 'Bộ Sách Nhỏ Về Tâm Lý - Tâm Lý Học Nói Gì Về Truyền Thông Xã Hội?', '115000', 4, 'Chúng ta có thật sự đang là chính mình trên mạng xã hội không? Kết nối với những người chúng ta không mấy quen biết có ích lợi gì không? Tại sao một số người lại chia sẻ quá nhiều trên các trang mạng xã hội. “Tâm lý học về truyền thông xã hội?” sẽ tìm hiểu một phần không nhỏ của đời sống hằng ngày được thể hiện thế nào trên không gian mạng, và điều này tác động ra sao đến danh tính, hạnh phúc và các mối quan hệ của chúng ta. Cuốn sách không chỉ xem xét cách mà các hồ sơ trực tuyến, mối quan hệ, cập nhật trạng thái và ảnh được chia sẻ trên mạng thể hiện cá tính và thiết lập các mối quan hệ mới. Mà còn nêu bật lên những cạm bẫy tiềm ẩn trên mạng xã hội, bao gồm các vấn đề quyền riêng tư, sự giải phóng ức chế mạng, bạo lực ngôn từ hay vi phạm đạo đức và pháp lý khi chia sẻ thông tin,… Từ hội chứng FOMO đến hiện tượng Fraping, từ các tweet ngầm đến ảnh tự sướng, “Tâm lý học về truyền thông xã hội?” cho thấy mạng xã hội đã phát triển một thế giới giao tiếp mới, và cho dù tốt hay xấu thì chắc chắn nó sẽ tiếp tục là một phần không thể thiếu trong cách chúng ta nhìn nhận bản thân.', '42.jpg'),
(9, 'Bộ Tột Cùng Hạnh Phúc', '153000', 5, 'Ở “Bộ tột cùng hạnh phúc” ta thấy những kiếp người đầy bất hạnh, nhưng ta cũng thấy “cơn đau đẻ kéo dài” để sản sinh tự do, thứ tự do mê hoặc, thứ tự do mà vì nó, người ta bất chấp tất cả. Chuốt những sợi tơ vò số phận của những con người bên lề xã hội, Arundhati Roy đã khéo léo dệt nên những câu chuyện lớp lang đan xen về đẳng cấp, tôn giáo, bản sắc giới tính, xung đột chính trị - cõi trần thế trần trụi và đầy khổ đau. Ấn Độ dưới ngòi bút của Roy không chỉ là một quốc gia với vốn văn hóa lâu đời, đặc sắc; một vùng đất hoang sơ với cảnh quan ngoạn mục, những công trình nguy nga tráng lệ; chốn hoa lệ với những cô gái, chàng trai xinh đẹp khoác tấm áo sặc sỡ mà đó còn là đất nước của chênh lệch đẳng cấp, xung đột tôn giáo, bạo động chính trị, kỳ thị giới tính... “Bộ tột cùng hạnh phúc” là thiên sử thi về xã hội Ấn Độ phi lý tân thời: hỗn loạn, mâu thuẫn, bạo lực, bất công, điên rồ và vô lý, nó vừa là một chuyện tình bi thương vừa là lời phản kháng quyết liệt. Giọng văn của Roy khi tỉ tê, khi lớn tiếng, khi nghẹn ngào, và có khi với cả tiếng cười, cùng với thủ pháp khéo léo Roy đã dệt nên những câu chuyện đan xen về đẳng cấp và tôn giáo, về bản sắc giới tính và xung đột chính trị - nhân vật chính là những thân phận bị hủy hoại, thế giới quan tan vỡ, những con người bên lề xã hội đang cố tìm cho một chỗ đứng. Cuốn tiểu thuyết tuy viết về hiện thực bất ổn, nhưng lại đem cho người ta những hy vọng về tình yêu, và những ngày đen tối nhất rồi cũng sẽ qua đi, ngày mai bao giờ cũng tới, tình yêu sẽ đến với những ai vẫn hy vọng dù đã từng thất vọng, vẫn tin tưởng dù từng bị phản bội, vẫn yêu thương dù từng bị tổn thương. ', '43.png'),
(10, 'Body atlas', '177000', 2, 'Tiêu chuẩn vàng tuyệt hảo suốt 25 năm qua, Atlas Giải Phẫu Người cung cấp các bản vẽ mô tả về cơ thể con người bằng các chi tiết rõ ràng dễ hiểu, tất cả đều dựa trên phối cảnh của bác sĩ lâm sàng... Với chi tiết nhấn mạnh vào mối quan hệ giải phẫu học và các quan điểm tương quan có tính lâm sàng. Công trình của Bác sĩ Netter cung cấp đầy đủ thuật ngữ từ vựng minh họa mạch lạc giúp cho việc nắm bắt và áp dụng trong lĩnh vực y khoa giải phẫu học ngày nay. Trong cuốn sách y học này, những hình ảnh X-quang, hình ảnh chụp cắt lớp điện toán, mạch đồ cắt lớp điện toán và cộng hưởng từ được bổ sung, điều đó phản ảnh tầm quan trọng của hình ảnh học chuẩn đoán đối với giải phẫu lâm sàng và y học. Trong lần xuất bản này 60 trang hình được sửa đổi để thể hiện sự liên quan giải phẫu chính xác hơn, 320 trang hình được chú thích lại và có thêm các trang hoàn toàn mới. Những chế tác nghệ thuật tuyệt vời cho ấn bản này đã được sáng tác bởi bác sỹ Carlos A.G.Machado, người đã tham gia vào các minh họa của Netter hơn 11 năm. Thuật ngữ giải phẫu, các thuật ngữ lâm sàng cũng được cập nhật mới nhất và tên riêng thường được sử dụng cũng được thêm. Thiên tài thể hiện trong các bức vẽ của Netter là ở chỗ Giải phẫu học được khắc họa một cách rõ nét, chân thực và có thể liên hệ được với lâm sàng mà vẫn giữ được cân bằng giữa sự phức tạp và tối giản. Cuối cùng, một số trang hình thích hợp được sắp xếp thành những trang đôi để tạo điều kiện dễ dàng cho sự so sánh, đối chiếu những yếu tố liên quan được minh họa. Những bức vẽ nguyên bản đẹp mắt được sáng tác bởi Carlos Machado minh họa những cấu trúc có ý nghĩa lâm sàng đặc biệt như: khớp móc - đốt sống của các đốt sống cổ, các tĩnh mạch đốt sống và các tĩnh mạch phức tạp của mắt,…đã thể hiện sự chính xác giải phẫu nhưng không kém phần nghệ thuật và sự hấp dẫn thị giác là vô song. Vùng này cũng bao gồm một cách xúc tích hệ thống thần kinh trung ương, kể cả các dây thần kinh sọ và các đường dẫn truyền quan trọng. Trong phần vùng Lưng, có một trang hình mới minh họa cách gây tên ngoài màng cứng thắt lưng cũng như vị trí chọc dò tủy sống thắt lưng. Thần kinh tự chủ thường được xem như một \"khúc xương khó nuốt\" đối với nhiều sinh viên. Thì nay, những bức vẽ mới tuyệt vời về hệ thần kinh tự chủ của bác sỹ Machado có thể là giải pháp khắc phục cho khái niệm khó khăn này.   ', '44.jpg'),
(11, 'Bốn thoả ước', '127000', 1, 'Được xem là những chứng nghiệm của Don Miguel Ruiz về tồn tại và hạnh phúc của con người, cuốn sách đã đưa đến những dẫn giải và thực hành cơ bản nhất để đạt tới tự do tinh thần cũng như sự khai phóng cá nhân với những quan điểm rất gần với tư tưởng Phật giáo. Theo Don Miguel Ruiz, xã hội duy lý có tổ chức cần thiết để duy trì đời sống của cộng đồng, tuy nhiên với những luật định và giá trị (áp đặt) luôn có nguy cơ thoái hóa và bị lợi dụng, xã hội đó lại chính là “địa ngục”, “biển khổ trần gian” ngăn cản con người trở về với chân tính, với niềm vui sống đích thực của mình. Từ đó, Don Miguel Ruiz đã đưa ra ba thỏa ước khởi đầu: Không phạm tội với lời nói của bạn - được hiểu là không dễ dãi, máy móc lặp lại những quan niệm và thành kiến của mọi người xung quanh khi nhìn nhận một vấn đề hay con người nào đó, hoặc khi đánh giá chính mình;Không vơ mọi chuyện vào mình - là không ngộ nhận, không có sự đánh giá nào từ bên ngoài lại thực sự phù hợp với bạn và có thể tác động lên chính cuộc sống của bạn; Không giả định, phỏng đoán - vì giả định, phỏng đoán thực chất cũng chỉ là lặp lại những thiên kiến, thành kiến sẵn có về sự vật, nó không thể cho bạn biết ý nghĩa đích thực của điều đang diễn ra. Với ba thỏa ước trên, tác giả nhằm nhấn mạnh vào mối quan hệ cá nhân với cộng đồng, trong đó đề cao bản lĩnh cá nhân, chủ kiến, lòng tự tin, trung thực mà thực chất là sự quay về với con người độc lập, với bản tính tự nhiên sẵn có một cách có ý thức. Cuối cùng là thỏa ước thứ tư Hãy làm hết khả năng của mình như là nguyên lý thực hành căn bản để khai phóng “cái tôi” của con người.', '45.jfif'),
(12, 'Hai Số Phận', '34000', 1, '“Hai số phận” không chỉ đơn thuần là một cuốn tiểu thuyết, đây có thể xem là \"thánh kinh\" cho những người đọc và suy ngẫm, những ai không dễ dãi, không chấp nhận lối mòn. “Hai số phận” làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình. Khi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn! “Nếu có giải thưởng Nobel về khả năng kể chuyện, giải thưởng đó chắc chắn sẽ thuộc về Archer.” - Daily Telegraph.“Hai số phận” (Kane & Abel) là câu chuyện về hai người đàn ông đi tìm vinh quang. William Kane là con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz là đứa trẻ không rõ xuất thân, được gia đình người bẫy thú nhặt về nuôi. Một người được ấn định để trở thành chủ ngân hàng khi lớn lên, người kia nhập cư vào Mỹ cùng đoàn người nghèo khổ. Trải qua hơn sáu mươi năm với biết bao biến động, hai con người giàu hoài bão miệt mài xây dựng vận mệnh của mình . “Hai số phận” nói về nỗi khát khao cháy bỏng, những nghĩa cử, những mối thâm thù, từng bước đường phiêu lưu, hiện thực thế giới và những góc khuất... mê hoặc người đọc bằng ngôn từ cô đọng, hai mạch truyện song song được xây dựng tinh tế từ những chi tiết nhỏ nhất.) ', '75.jpg'),
(13, 'Bức Thư Của Người Đàn Bà Không Quen', '299000', 2, 'Cuốn sách gồm 2 truyện vừa của văn hào Áo Stefan Zweig, “Bức thư của người đàn bà không quen” và “24 giờ trong đời một người đàn bà”, đều đã được dựng thành phim. Bên cạnh nguyên tác văn học, cuốn sách còn cung cấp thông tin và hình ảnh đẹp về các bộ phim làm theo hai câu chuyện đầy bi kịch về tình yêu đơn phương không được đền đáp của những người phụ nữ. Không phải ngẫu nhiên mà cuốn sách gồm 2 truyện vừa đều về những mối tình đầy bi kịch của phụ nữ liên quan đến giới thượng lưu châu Âu đầu thế kỷ 20. “Bức thư của người đàn bà không quen” được viết dưới dạng một lá thư của một người phụ nữ gửi cho nhà văn R., người mà cô say mê suốt cả cuộc đời. Bức thư được gửi đến cũng là bức thư tuyệt mệnh của cô, vì thế chất chứa nỗi đau của một người đã yêu đơn phương. Sự si mê của người đàn bà từ lúc là thiếu nữ đến lúc trải qua thăng trầm của đời đối với nhân vật nhà văn vốn không hề nhận ra cô dường như quá cực đoan. Nhưng đó chính là điểm mạnh của Zweig khi khai thác tận cùng chiều sâu tâm lý phụ nữ và lòng khao khát yêu thương của họ. “24 giờ trong đời một người đàn bà” cũng vậy, là hồi ức của một người phụ nữ lớn tuổi kể về mối quan hệ tình cờ và kỳ dị với một chàng trai mê cờ bạc. Giằng co giữa niềm tin đạo đức và sự tha hóa của con người, những nhân vật trong truyện dường như tuyệt vọng trong việc chiến thắng định mệnh, để rồi số phận đẩy đưa đến những lối rẽ không dừng được. Qua 2 truyện vừa trên, Stefan Zweig xứng đáng là nhà văn được tìm đọc vào loại nhiều nhất suốt hơn một thế kỷ qua. ', '47.jpg'),
(14, 'Buddhism plain and simple', '40000', 5, 'In Buddhism Plain and Simple, Zen priest and longtime teacher Steve Hagen presents the heart of Buddhist teachings, pared down to its essence and explained in simple, everyday language. This best-selling book is the perfect guide to Buddhism for beginners; the text has served international readers at all levels of study and practice since it was originally published over a decade ago. More than 300,000 copies in various formats have sold to date, and now it\'s available in this brand new edition with a high-quality binding and paper, as well as elegant decorative illustrations scattered throughout. Practiced by more than 1.2 million Americans and 2-3 million Europeans, Buddhism has become one of the West\'s largest religions. Whether you\'re simply interested in learning more about Buddhist philosophy, or hope to begin practicing but don\'t know where to start, Buddhism Plain and Simple will help you on your way. \"This is a book about awareness. Not awareness of something in particular, but awareness itself—being awake, alert and in touch with what is actually happening. It\'s about examining and exploring the most basic questions of life. It\'s about relying on the immediate experience of this present moment. It\'s about freedom of mind. It\'s not about belief, doctrine, formula, or tradition.\" ', '48.jpg'),
(15, 'Bụi Sao', '93000', 5, 'Đến tuổi cập kê, Tristran Thorn đem lòng si mê một thiếu nữ xinh đẹp trong ngôi làng Bức Tường nơi anh lớn lên. Vì lời hứa sẽ cùng cô sánh vai trong thánh đường, chàng trai trẻ khăn gói lên đường tiến vào Xứ Tiên để tìm một ngôi sao băng từ trên trời rơi xuống. Chuyến phiêu lưu ở xứ sở kỳ lạ, rùng rợn mà đầy nhiệm màu đã xoay chuyển con người và thế giới quan của Tristran theo những cách anh chưa từng ngờ đến, biến anh thành một người hùng chân chính trong câu chuyện của mình. Cổ quái và nhân văn, đen tối và giàu cảm xúc, “Bụi sao” đem đến vô khối những câu chuyện chưa kể đằng sau cuộc hành trình tầm mộng của một vị anh hùng trẻ tuổi, cốt để chứng tỏ rằng chuyện thần tiên thực chất cũng dành cho người lớn. “Bụi sao” quả thực là một câu chuyện không bình thường nhưng lại đầy phép màu và những điều kỳ diệu. Ta có thể thấy Nữ hoàng Phù Thủy máu lạnh với những trò giết người kinh dị, các chàng Hoàng Tử xứ Stormhold độc ác, vì tham lam vương quyền mà huynh đệ tương tàn, những cảnh tượng ghê rợn, hãi hùng của khu rừng ăn thịt,…Nhưng trên hết là tình yêu luôn được nuôi dưỡng trong lòng chàng trai trẻ Tristran Thorn. Muôn vàn chông gai, thử thách khó khăn cỡ nào, chỉ cần tình yêu, niềm tin và sự hy vọng luôn cháy rực, cũng sẽ đều vượt qua. Là câu chuyện thần tiên nhưng cuốn sách hàm chứa những sự thật trần trụi về thế giới này. Phải chăng cuộc sống là một bể khổ với bao sự khắc nghiệt bủa vây? Và hành trình đi tìm lẽ sống, khát vọng đạt những ước mơ bấy lâu khao khát là một hành trình không tưởng với muôn vàn khó khăn, gian khổ. Để rồi khi có được chúng, ta lại chẳng thèm màng những điều to tát ấy thêm nữa. Hạnh phúc, có lẽ chỉ là những điều giản đơn, bình dị thôi.', '49.jpg'),
(16, 'Bước Chân Theo Dấu Mặt Trời – Hành Trình Trở Về Ấn Độ', '177000', 5, 'Bước Chân Theo Dấu Mặt Trời – Hành Trình Trở Về Ấn Độ được viết bởi một người phụ nữ đã từ bỏ công việc ổn định, rời xa ngôi nhà êm ấm để trở thành kẻ lữ hành cô độc đến những miền đất lạ với tấm vé máy bay một chiều. Người phụ nữ ấy luôn mang trong mình câu hỏi: Tôi sinh ra bởi điều gì? Tôi đang đi về đâu?... Để rồi vào một buổi chiều trên đỉnh núi Linh Thứu, lúc mặt trời rực rỡ xuống sau dãy núi, người phụ nữ ấy đã bắt đầu tìm được điều mình đang khao khát, ráng chiều đỏ thắm dần lấp đầy khoảng trống vô hình trong cô. Người phụ nữ ấy hành hương đến Ấn Độ, nơi có một vị Phật đã thành đạo, nơi đã một thời mang trong mình nền văn minh huy hoàng của loài người nay trở thành nơi nghèo nàn, và nguy hiểm nhất thế giới. Trong chuyến độc hành của mình, người phụ nữ yếu đuối đã trải qua nhiều cung bậc cảm xúc: vui - buồn - hạnh phúc - sợ hãi. Những người lạ nơi xứ người đã khiến người lữ khách không còn đơn độc mà mang cô cảm giác thân thuộc, ấm áp tình người. Những người chúng ta đã gặp trong đời, mỗi sự việc xảy đến đều ý nghĩa và dạy cho chúng ta một bài học về cuộc sống. Những gì chúng ta trải qua đều là nhân - quả và chỉ có cách bình tĩnh chiêm nghiệm mới giúp ta an yên giữa cuộc đời này. Bước Chân Theo Dấu Mặt Trời – Hành Trình Trở Về Ấn Độ sẽ dẫn độc giả bước vào không gian văn hóa đậm chất Ấn Độ với những công trình kiến trúc kỳ vĩ, tinh xảo, các loại hình nghệ thuật truyền thống đầy tinh tế, nền ẩm thực đa dạng thậm chí cả những tập tục man rợ như tục điểu táng của người Tây Tạng. Bạn sẽ nhận ra rằng: “Con người ở đâu cũng giống nhau. Dù màu da, ngôn ngữ, quan niệm, niềm tin tôn giáo khác nhau nhưng mọi vấn đề, rắc rối, đau khổ đều giống nhau bởi đều xuất phát từ tâm.”', '50.jpg'),
(17, 'Bước Ra Thế Giới', '219000', 4, 'Theo công ty phân tích Gartner, đến năm 2020, sẽ có trên 26 tỉ thiết bị được kết nối, có thể “nói chuyện” với nhau và tạo ra “mạng lưới khổng lồ các vật được kết nối”. Mối quan hệ giữa con người và các thiết bị này, giữa các thiết bị với các thiết bị, sẽ thay đổi hoàn toàn bản chất của công việc và xã hội. Có thể thấy chúng ta đang sống trong thời kỳ chuyển tiếp giữa thời đại Công nghiệp và thời đại Thông tin. Quy tắc mới của phát triển kinh tế là tri thức và thông tin, chứ không còn dựa trên vốn, vật tư và lao động nữa. Việc dịch chuyển sang nền kinh tế dựa trên thông tin đặt ra những câu hỏi lớn cho một số nước. Họ sẽ tụt hậu, bị bỏ lại đằng sau, hay đây là cơ hội để nhảy vọt? Điều gì sẽ xảy ra cho lực lượng lao động kỹ năng thấp, những người quản lý cấp trung nếu việc làm của họ, vị trí của họ mất đi? Liệu họ có bị bỏ lại, hay đây là cơ hội để trau dồi thêm kỹ năng và nắm lấy cơ hội mới? Bước Ra Thế Giới của giáo sư John Vũ sẽ cho bạn câu trả lời cụ thể nhất. Cuốn sách này là sự tiếp nối hai cuốn trước đó của GS John Vũ – “Khởi hành” và “Kết nối”, nhằm mục đích định hướng, truyền cảm hứng cùng với đó là sự cổ động tinh thần không ngừng học hỏi, vươn lên để phát triển và “Kiến tạo một thế hệ Việt Nam ưu việt” của GS John Vũ dành cho thế hệ học sinh, sinh viên Việt Nam. Các bài viết trong cuốn sách chỉ ra rằng trong khi những người của thế hệ Baby Boomer (được sinh ra vào thời kỳ hậu chiến 1943 – 1960) đọc báo giấy, thì người của thế hệ V đọc báo trực tuyến. Trong khi người thế hệ X mua CD cho hệ thống âm thanh nổi của họ, người thế hệ V ưa thích tải nhạc về chiếc iPod. Trong khi người thế hệ Y mua DVD cho chiếc tivi màn hình phẳng của mình, thì người thế hệ V ưa thích xem YouTube trên laptop. Vậy thì thế hệ Z những người sinh năm 1996 trở về sau - đã và đang là thế hệ tiêu dùng của hiện tại và tương lai sẽ phải thay đổi như thế nào để theo kịp sự phát triển của xã hội, con người và nền kinh tế trong thời đại tri thức. Hy vọng sau khi hoàn thành cuốn sách này, sẽ giúp độc giả đặc biệt là thế hệ học sinh, sinh viên Việt Nam có thể sẵn sàng Bước Ra Thế Giới, lĩnh hội các kỹ năng và có sự chuẩn bị thích hợp cho những việc làm trong tương lai.', '51.jpg'),
(18, 'Bước vào thế giới Hồi giáo', '125000', 6, 'Một cuộc hành trình kỳ thú với nhiều khám phá lạ lẫm kéo dài bảy tháng từ năm 1979 đến 1980 qua bốn quốc gia Iran, Pakistan, Malaysia và Indonesia - những đất nước có tín đồ Hồi giáo chiếm đại đa số, đặc biệt có quốc gia còn xem Hồi giáo như quốc giáo. Với cách quan sát nhạy bén, vừa chi tiết vừa bao quát; với năng lực phân tích và tổng hợp có chọn lọc những sự kiện, nhân vật, tình huống, thực trạng… thật sắc sảo, chính xác, tác giả đã dựng nên một bức tranh toàn cảnh vô cùng sinh động về từng đất nước. Hầu như, ở những nơi đây, mọi sinh hoạt trong tất cả các lĩnh vực đều phải tuân theo hay được áp dụng những chuẩn mực tín điều của Hồi giáo với tất cả niềm sùng bái. Tuy nhiên, cũng chính trong lòng của bầu khí tín ngưỡng ấy vẫn không tránh khỏi quan điểm khác nhau, chưa đồng thuận về các quy định hay luật lệ áp dụng thống nhất cho toàn thể tín đồ. Có rất nhiều lối dẫn vào thế giới Hồi giáo, cho nên trong phần này, V.S.Naipaul đã không ngại đưa ra một cách nhìn, một cách đánh giá có thể có phần chủ quan nhưng lại là cơ hội cung cấp cho người đọc khá nhiều thông tin, tư liệu để mời gọi độc giả hãy tiếp tục tìm hiểu, nghiên cứu về một tôn giáo đang tạo ra nhiều hấp lực đồng thời cũng nhiều tranh cải trên thế giới..', '52.jpg'),
(19, 'Bút Kiếm Kim Dung', '268000', 3, 'Bút Kiếm Kim Dung (Chuyên Luận) là cuốn sách trình bày về võ hiệp Trung Quốc từ nguồn gốc đến những bước thăng trầm trong lịch sử, với nền tảng lập thế, nhân vật điển hình, dạng thức văn học, môi trường truyền bá, cơ chế sinh tồn và hướng đi tương lai. Phần tiếp theo, tổng luận về các tác phẩm như: Thư kiếm ân cừu lục, Bích huyết kiếm, Xạ điêu anh hùng truyện, Thần điêu hiệp lữ, Uyên ương đao, Liên thành quyết, Ỷ thiên đồ long kiếm, Tiếu ngạo giang hồ, Lộc đỉnh ký... đồng thời đề cập đến một số nhân vật võ hiệp của Kim Dung như: Vi Tiểu Bảo, Đoàn Chính Thuần, Tiêu Phong, Diệt Tuyệt sư thái, Mộ Dung Phục, Nhậm Ngã Hành, Du Thản Chi, Hư Trúc, Tiểu Siêu, Cưu Ma Trí, Địch Vân… Về Kiều Phong: \"Bi kịch tuổi thơ của Kiều Phong bắt đầu tại Nhạn Môn quan. Và ông chấm dứt bi kịch đời mình bằng mũi tên tự đâm vào ngực cũng tại Nhạn Môn quan. Nhạn Môn quan ngàn đời sừng sững giữa hai nước Tống - Liêu như định kiến không thể phá bỏ nổi về quốc gia và biên giới trong tâm trí con người\". Hai chương cuối, phân tích tư tưởng nghệ thuật của Kim Dung và võ học trong tiểu thuyết của ông.', '53.jpg'),
(20, 'Cà phê cùng Tony', '22000', 5, 'Cà phê cùng Tony là sự tập hợp các bài viết trên trạng mạng xã hội của tác giả Tony Buổi Sáng về những bài học, câu chuyện anh đã trải nghiệm trong cuộc sống. Đó có thể là cách anh chia sẻ với các bạn trẻ về những chuyện to tát như khởi nghiệp, đạo đức kinh doanh, học tập đến những việc nhỏ nhặt như ăn mặc, giao tiếp, vệ sinh cơ thể… sao cho văn minh, lịch sự. Hay chỉ đơn giản thuật lại những trải nghiệm thực tế của anh trong quá trình sống, kinh doanh ở trong và ngoài nước. Xuyên suốt cuốn sách, các câu chuyện được kể với giọng điệu trào phúng, hài hước lại được thể hiện bằng ngôn ngữ “cư dân mạng” tạo sự gần gũi để các bạn trẻ có thể dễ dàng tiếp nhận. Mặc dù tác giả luôn khẳng định những thông tin, chi tiết trong câu chuyện là hư cấu và thậm xưng nhưng điều đó không có nghĩa làm cuốn sách bớt đi sự thú vị. Chia sẻ về sự ra đời của cuốn sách, tác giả tâm niệm không muốn những điều anh tâm đắc và đúc kết chỉ dừng lại ở mạng xã hội. Anh hi vọng những câu chuyện của mình thông qua Cà phê cùng Tony có thể thổi nguồn cảm hứng tới những độc giả không có điều kiện sử dụng internet, đồng thời khuyến khích văn hóa đọc ở các bạn trẻ trong thời đại mà văn hóa nghe nhìn đang  dần chiếm ưu thế. Đơn giản và không cầu kì, đọc Cà phê cùng Tony, độc giả sẽ cảm thấy như đang khám phá câu chuyện của chính mình qua cách kể của một người khác.', '54.jpg'),
(21, 'Các Học Thuyết Tâm Lý Nhân Cách', '73000', 4, 'Tâm lý học ở nước ta hãy còn là một khoa học trẻ, trước năm 1945 chỉ là một môn học trong trường phổ thông trung học, về sau có dạy ở một số trường đại học, rồi từ những năm 60 thế kỷ trước có cơ quan nghiên cứu, có khoa chuyên đào tạo cán bộ tâm lý học, có tạp chí Tâm lý học, có Hội các khoa học Tâm lý - Giáo dục - thành viên của Hội Khoa học Tâm lý Thế giới. Trong các chuyên ngành Tâm lý học có ở ta, tâm lý học nhân cách là chuyên ngành non trẻ nhất. Mà chẳng phải chỉ ở ta mới như vậy, như chính trong nội dung cuốn sách này cũng cho ta thấy, đó cũng là tình trạng chung của tâm lý học thế giới. Riêng ở Việt Nam, thuật ngữ \"nhân cách\" vào những năm 60 (của TK XX) hãy còn rất xa lạ với nhiều người, trong sách, báo rất ít gặp, nhưng giờ đây đã dùng thường xuyên hơn và khoa học về nhân cách thì mới đang hình thành. Với 22 nhà tâm lý học có tiếng, có nhà tâm lý học vĩ đại Sigmund Freud, rồi B.F. Skinner, A. Maslow… được giới thiệu trong sách, chúng tôi cũng đã có dịp điểm qua (Phạm Minh Hạc, Nhập môn tâm lý học, Nhà xuất bản Giáo Dục, Hà Nội, 1980; Hành vi và Hoạt động, 1977; Phạm Minh Hạc, Lê Đức Phúc (chủ biên), Một số vấn đề nghiên cứu nhân cách, NXB Chính Trị Quốc Gia, Hà nội, 2004) nhưng bây giờ đọc sách này mới thấy cặn kẽ hơn. Cuốn sách Các Học Thuyết Tâm Lý Nhân Cách cùng với những cuốn vừa nhắc tới có thể bổ sung cho nhau, giúp chúng ta thấy được toàn cảnh hơn các lý thuyết tâm lý học nhân cách. Tâm lý học Nga là một nền tâm lý học lớn, được thế giới công nhận, các nhà tâm lý học như L.S. Vưgốtki, A.R.Luria, A.N.Leônchiép, S.L.Rubintêin… được giới tâm lý học phương Tây, Mỹ nghiên cứu, học tập, trích dẫn. Trong Bách khoa thư Sáng tạo của Mỹ xuất bản, chỉ có hai nhà tâm lý học được chọn, đó là Freud và Vưgôtski. Các nhà tâm lý học Nga và Giocgi (tâm lý học tâm thế) có các lý thuyết về nhân cách rất đáng được quan tâm. Cuốn sách với lối viết dí dỏm, nhất là các tiểu sử các nhà khoa học, lại có cả thơ ca, diễn đạt rất dễ hiểu, nội dung cuốn sách có ích cả cho công việc giảng dạy lẫn công tác nghiên cứu. ', '55.jpg'),
(22, 'Cách Dạy, Cách Học, Cách Sống Trong Thế Kỷ XXI', '52000', 6, 'Nội dung cuốn sách Cách dạy - Cách học - Cách sống trong thế kỷ XXI (Khảo sát triết lý giáo dục của Dewey và Makiguchi để đưa ra phương thức giáo dục mới cho nhân loại) được trình bày dưới hình thức một cuộc đối thoại cởi mở và đầy trách nhiệm giữa Tiến sĩ Daisaku Ikeda - học giả uyên bác về nhiều lĩnh vực khoa học, nhà văn hóa nổi tiếng ở Nhật Bản cũng như trên thế giới và hai triết gia nổi tiếng người Mỹ - Jim Garrison và Larry Hickman. Các chủ đề luận bàn trong cuộc đối thoại hết sức thiết thực và sâu sắc, các chuyên gia cùng trao đổi, phân tích một số vấn đề quan trọng mà xã hội con người ngày nay đang phải đối mặt, như vai trò của giáo dục trong việc đào tạo công dân toàn cầu, môi trường học tập trong gia đình, nhà trường và tầm quan trọng của việc học tập suốt đời; làm thế nào để khoa học kỹ thuật có thể mang lại hạnh phúc cho con người, làm thế nào xung đột có thể giải quyết thông qua đối thoại, làm thế nào để những người dân có tập quán và sự quan tâm khác nhau có thể cùng chung sống trong những cộng đồng dân chủ. Đặc biệt, ý nghĩa xuyên suốt cuốn sách mà nhóm tác giả muốn gửi gắm đó là sự động viên, khích lệ thế hệ thanh niên hiện nay và mai sau cần phát triển và sáng tạo các giá trị hơn nữa, nhằm bảo đảm một tương lai thành công ở thế kỷ XXI. Trong tác phẩm này, các tác giả đã chỉ ra những điểm chung giữa Dewey và Makiguchi, chẳng hạn như nhấn mạnh hạnh phúc là mục đích của giáo dục, quan điểm về giáo dục và giá trị của hạnh phúc với con trẻ, cũng như vai trò của phụ nữ, sự cân bằng giữa công việc và học tập, mối quan hệ giữa tuổi thơ và giáo dục ở trường và ở nhà. Các tác giả nhấn mạnh tầm quan trọng của giáo dục trong xã hội và sự cần thiết phải thay đổi cơ bản từ khái niệm giáo dục vì lợi ích của xã hội sang khái niệm xã hội vì lợi ích của giáo dục. Trong giáo dục, dạy dỗ không chỉ là khai thác giá trị, mà còn tạo ra giá trị, từ đó nâng cao và làm giàu thêm ý nghĩa của cuộc sống. Garrison chia sẻ cái nhìn sâu sắc của ông về vai trò của hạnh phúc trong giáo dục: \"Đối với tôi thì rõ ràng hạnh phúc và phát triển không khác gì nhau trên nhiều phương diện. Hạnh phúc không chỉ bắt nguồn từ phát triển mà còn chính là phát triển\".', '56.jfif'),
(23, 'Cách Học Ngoại Ngữ Nhanh Và Không Bao Giờ Quên', '24000', 1, 'Fluent Forever là cách dạy bất cứ ngoại ngữ nào bạn muốn một cách nhanh nhất, hiệu quả nhất. Đây là tài liệu học ngoại ngữ được đánh giá cao nhất hiện nay trên toàn thế giới bởi nó không đơn thuần là sách dạy ngoại ngữ mà là một cú đột phá tư duy xuất sắc để làm chủ não bộ. Ứng dụng tri thức về khoa học thần kinh, bạn không cần chờ đến một sự may mắn tình cờ hay cần mẫn quá sức để đưa thông tin cần thiết vào não bộ. Những gì bạn muốn sẽ thuận với tự nhiên lưu vào bộ nhớ. Bởi thế, không phải ngẫu nhiên, trang web fluent-forever.com đã trở thành một “hiện tượng mạng”, dạy ngoại ngữ cho 1,5 triệu người trên toàn thế giới và khiến hàng triệu người ham thích thử thách tư duy tìm đến. Trong cuốn sách này, Wyner sẽ chia sẻ ba chìa khóa hiệu quả để làm quen và làm chủ “đa ngôn ngữ”: Học phát âm đầu tiên (kinh nghiệm của ca sĩ) để tai bạn dần quen với những âm ngoại ngữ, giúp bạn không chỉ nghe chuẩn mà còn phát âm chuẩn; không dịch để tư duy bằng ngoại ngữ; sử dụng hệ thống nhắc lại cách quãng để đẩy thông tin vào sâu trong trí nhớ dài hạn và lưu lại mãi mãi.', '57.jfif'),
(24, 'Cách mạng một cọng rơm', '24000', 4, '“Cuộc Cách Mạng Một - Cọng - Rơm” là cuốn sách nổi tiếng của Mansanobu Fukuoka, người khai sinh nông nghiệp tự nhiên của Nhật Bản và thế giới. Cuốn sách (đã được dịch ra 25 thứ tiếng) không chỉ là sự trải nghiệm về cách thức nuôi trồng các sản phẩm nông nghiệp trong sự tương tác hài hòa với môi trường tự nhiên mà còn đem đến cho người đọc những suy tưởng thú vị về triết học, về ăn uống, về y học và cuộc sống. Có thể gọi ông Masanobu Fukuoka, tác giả cuốn sách, là người nông dân vĩ đại nhất hành tinh cũng không có gì là lạm dụng từ ngữ. Ông là người đạt đến cảnh giới vô vi trong nông nghiệp và là vị sư tổ của nông nghiệp tự nhiên. Nhưng bạn không nên để tựa đề cuốn sách đánh lừa. “Cuộc cách mạng một - cọng - rơm”, nhưng chẳng có “cuộc cách mạng” nào ở đây cả. Cuốn sách chỉ là những ghi chép của một người làm nông khiêm nhường rón rén trước thiên nhiên vườn ruộng, như thể mỗi một từ được viết ra tác giả đều sợ làm tổn thương đất đai cây cỏ. Viết về nông nghiệp nhưng ông Fukuoka không để người đọc dính mắc vào các kiến thức trồng trọt và chăn nuôi, cũng không dính mắc vào chính cuốn sách của ông. Người ta bảo phương pháp Fukuoka là thiền trong nông nghiệp là vì vậy. Đọc cuốn sách này và gấp nó lại, bạn sẽ không còn nghĩ ông Fukuoka đã viết những gì, nhưng bạn sẽ nhận ra vô số những điều mà trước đây do những tri thức học ở sách vở, trong trường lớp đã biến thành định kiến trong đầu bạn khiến cho bạn không nhận ra. Bạn sẽ nhìn cái cây không phải là giống thực vật vô tri được mô tả trong sách trồng trọt mà là cái cây có tâm hồn. Bạn sẽ thú vị nhớ lại, trong câu chuyện cổ tích Một người mẹ, nhà văn Andersen đã từng bảo mỗi một cái cây đều có một số phận, mỗi cái cây đều có một trái tim. Và bạn sẽ hiểu vì sao ông Fukuoka lại nói chỉ có những đứa trẻ mới nhìn được thiên nhiên như thiên nhiên vốn có.', '58.jpg'),
(25, 'Cách Mạng Pháp Và Tâm Lý Học Của Các Cuộc Cách Mạng', '223000', 5, '“Không hề có ý định cắt đứt tiến trình tự nhiên của các sự kiện ở châu Âu, ông nói, cả cuộc cách mạng Anh, cũng như cuộc Cách mạng của chúng ta đều không nói điều gì, không mong điều gì, không làm điều gì mà trước đó chưa từng được nói đến, chưa từng được mong mỏi, chưa từng được làm hoặc thử làm cả trăm lần trước khi chúng bùng nổ…”. \"Lịch sử của cuộc Cách mạng Pháp trên thực tế được cấu thành từ một loạt những biến cố lịch sử song hành và thường độc lập với nhau: Lịch sử chế độ cũ nát đang tàn lụi do không có những người bảo vệ; lịch sử những hội đồng cách mạng; lịch sử những phong trào quần chúng cùng thủ lĩnh của họ; lịch sử những đạo quân; lịch sử những thiết chế mới... Tất cả những nấc thang lịch sử vốn đa phần thể hiện sự xung đột của các động lực tâm lý học này đề cần phải được nghiên cứu bằng những phương pháp mượn từ khoa học tâm lý\". Từ “Tâm lý học của các cuộc cách mạng” thoạt nghe rất mơ hồ và trừu tượng, nhưng Gustave Le Bon đã phân tích cho chúng ta thấy những cuộc cách mạng ấy là thế nào, được phân chia ra sao. Gustave Le Bon nhận định về cách mạng khoa học, ông cho rằng đó là cuộc cách mạng mang tính lý trí cao, và diễn ra âm thầm nhất nhưng không ai có thể phủ nhận lợi ích hay tính quan trọng của nó. Ngoài ra, Gustave Le Bon cũng phân tích về vai trò của người dân, ông cho rằng có thể lật đổ được chính quyền nhưng người dân thì không. Cần phân biệt lòng dân và đám đông cuồng loạn, đám đông dễ bị khống chế trở nên mất lý trí.', '59.jpg'),
(26, 'Cách Sống', '265000', 3, 'Inamori Kazuo một doanh nhân hết sức thành đạt trong việc sáng lập và điều hành tập đoàn Kyocera lớn mạnh của Nhật Bản. Ông sẽ đem đến cho chúng ta những tư tưởng về Cách Sống. Đây là tập hợp những triết lý mà ông đúc rút ra được từ thực tế sau bao nhiêu năm gian nan xây dựng công ty. Trước thực tại của một xã hội Nhật Bản mà con người ngày càng đánh mất đi giá trị truyền thống, Inamori Kazuo đưa ra một yêu cầu bức thiết là phải nhìn lại “lẽ sống” của con người thời hiện đại. Lẽ sống qua cái nhìn của tác giả không phải là cái gì xa vời mà là những điều giản đơn, những giá trị gần gũi hay những thói quen hằng ngày: “những nguyên tắc đạo đức chân phương”. Cách Sống gồm 5 chương, mỗi chương là một quan điểm của tác giả: chương 1: Biến suy nghĩ thành hiện thực; chương 2: Suy nghĩ từ nguyên lý và nguyên tắc; chương 3: Mài giũa nhân cách và nâng cao tâm hồn; chương 4: Sống với lòng vị tha; chương 5: Hòa hợp với dòng chảy vũ trụ. Ở mỗi chương, mỗi quan điểm của mình tác giả đều đưa ra những dẫn chứng, những câu chuyện thực tế rất thuyết phục. Vốn đi lên từ những thất bại, con đường thành công của tác giả vô cùng khó khăn. Những điều ông viết trong “Cách Sống” là những kinh nghiệm quý giá mà ông muốn chia sẻ với giới trẻ. ', '60.jfif'),
(27, 'Cái Cười Của Thánh Nhân', '164000', 2, '“Cái cười của Thánh Nhân” không chỉ là một quyển biên khảo về văn chương u mặc phương Đông, mà còn hàm chứa trong nó những giá trị nhân văn. Những câu chuyện cổ, những bài văn u mặc trong quyển sách cho ta thấy cuộc đời dưới một lăng kính khác hài hước hơn, thú vị hơn và sâu sắc hơn. Một cuốn sách không chỉ để mua vui mà còn khiến người đọc phải suy ngẫm. \"Cái cười của Thánh nhân\" là tiếng cười của người thoát vòng tục lụy, tiếng cười vang của con người tự do, tiếng cười vang vọng ngàn năm khắp mấy cõi trời... Đó là tiếng cười của Lão Tử, của Trang Tử và của bao hiền nhân khác biết tung tăng đùa chơi với cuộc đời. Nguyễn Duy Cần đã mượn chuyện ngàn xưa để cười chuyện thời nay đó! Chúng ta đang ở trong một thế giới vật chất đầy đủ nhờ tiến bộ khoa học kỹ thuật, nhưng tinh thần của chúng ta mệt lắm, khổ lắm bởi tầm nhìn, tầm nhận thức của chúng ta. Chúng ta đang sống vì những việc mà mình cho là quan trọng lắm, giá trị lắm, cần thiết lắm và những cuộc tranh giành, chiến tranh, đau khổ cũng vì đó mà diễn ra... Dường như cuộc sống đang thiếu vắng dần sự bình yên, thiếu vắng dần hạnh phúc! Đọc “Cái cười của Thánh Nhân” để chúng ta biết cười mình, biết xót xa thân phận của mình và biết tự giải thoát để có tiếng cười đầy hoan lạc trong cuộc đời.', '61.jpg'),
(28, 'Cái Thật Và Thực Tại (Truth And Reality)', '268000', 5, '“Cái thật và thực tại” (Truth and Reality) - Bậc thầy trị liệu tâm lí vĩ đại nhất sau Freud: Học trò xuất sắc nhất của nhóm Phân tâm học Vienna và cuộc lật đổ làm rung chuyển toàn bộ thế giới Phân tâm học. Cái “tôi” đối với Rank không phải là một địa hạt của những bản năng vô thức, nó cũng không phải nơi phô diễn của những quy ước và đạo đức xã hội. Cái “tôi” luôn tiềm chứa một “ý chí”. Chính nhờ ý chí này, nó không ngừng trải nghiệm và sáng tạo mình qua từng sát-na, từng khoảnh khắc sống. Cái “tôi” không chỉ biết đến thực tại bên ngoài nó, mà còn kiến tạo “thực tại” bên trong nó. Giữa nội giới và ngoại giới, nó tìm thấy một lối đi cho chính mình trong cuộc đấu tranh khốc liệt giữa bản năng hoang dại bên trong mình và ước chế xã hội bên ngoài mình. Bằng ý chí, nó kiến tạo nên một bản thân lí tưởng và qua sáng tạo, nó hiện thực hóa cái tôi lí tưởng đấy. Nó cảm nhận tất cả tội lỗi cũng như hạnh phúc, xấu hổ cũng như tự hào, và tìm ra ánh sáng cứu rỗi chính mình. Có lẽ đúng như Tolstoy đã nói: \"Sự kiện trọng đại nhất trong cuộc đời một con người là khoảnh khắc anh ta ý thức về cái tôi của mình”. Còn Rank nói, sự kiện trọng đại nhất trong cuộc đời một con người là khoảnh khắc bạn kiến tạo cuộc đời bằng cái tôi ý chí sáng tạo của chính mình.', '62.jpg'),
(29, 'Cái Tôi Được Yêu Thương', '42000', 5, 'Bạn có một cái “tôi”, nhưng không hiểu vì sao mình có cái “tôi” này, không biết ứng xử với nó ra sao. Chúng ta đều là những kẻ tự si mê bản thân. Cùng lúc gần như không biết cách yêu bản thân thế nào. Càng yêu, càng không thể hiểu chính mình. Thế giới bên ngoài chỉ là một hình ảnh phản chiếu đời sống bên trong của chúng ta, chúng ta chỉ nhận thức được những gì mà cái “tôi” trong ta chạm tới. Ta khó chịu với một kẻ biếm nhạo những tính cách xấu của mình và cho rằng kẻ đó không biết cảm thông. Ta ghét tất cả những kẻ sao chép một phần khó chịu trong tâm hồn mình. Chúng ta cứ mãi lang thang trong cuộc đời với muôn vàn mảnh trái tim tan vỡ, từ nỗi tự si này đến lòng yêu ghét kia, từ chứng hoang tưởng tự đại này đến sự nhút nhát tự ti kia. Dù say mê bản thân đến vậy, nhưng luôn cảm thấy mình bất toàn, hoài nghi, phản kháng, ganh tị, bất mãn, thường xuyên không hiểu ý nghĩa đời mình, cũng chẳng biết nên đi về đâu. Cuốn sách này dành cho những người mang một ý nguyện rực sáng: Nguyện ý đổi thay. Sự quyến rũ mạnh mẽ nhất của cuộc đời nằm trong sự thay đổi. Bạn sẽ trì trệ ở yên trong những vụn vỡ dở dang? Hay sẽ tự chữa lành cho chính mình? Sự lãng phí của hôm nay luôn là điều hối tiếc của ngày mai. Chúng ta cần phải vượt qua bản thân mỗi ngày. Bất cứ phương pháp trị liệu tâm lí nào cũng chỉ là một sự trợ giúp bên ngoài. Bạn hãy học hỏi từ những trải nghiệm của mình và truy nguyên một cách trung thực những động lực của bản thân. Ý nguyện của bạn quan trọng hơn hết thảy. Cuốn sách sẽ là một chỉ dẫn tuyệt vời dành cho bạn để: Hiểu rõ muôn mặt của một tâm hồn vị kỉ khổ đau, tổn thương và tan vỡ. Vượt qua cái “tôi” vị kỉ để có một cái nhìn thực tế với cuộc đời và tìm thấy mục tiêu cuộc sống.', '63.jfif'),
(30, 'Cẩm Nang Nghiên Cứu Khoa Học Từ Ý Tưởng Đến Công Bố', '273000', 5, 'Cuốn sách bạn đang cầm trên tay được soạn ra để giúp cho các bạn muốn dấn thân vào công việc nghiên cứu khoa học. Nhiều học sinh và sinh viên thường tự hỏi bắt đầu nghiên cứu khoa học từ đâu, ý tưởng nghiên cứu xuất phát từ nguồn nào, phương pháp nghiên cứu ra sao, và công bố kết quả nghiên cứu ở đâu. Đó là những câu hỏi cơ bản trong qui trình nghiên cứu khoa học. Qua 21 chương sách, cuốn sách sẽ giải đáp những câu hỏi trên và kèm theo những ví dụ thực tế giúp bạn đọc hiểu rõ hơn về qui trình nghiên cứu khoa học. Trong thế kỉ 21, khoa học và công nghệ được xem là yếu tố hàng đầu để nâng tầm của một quốc gia trong nền kinh tế tri thức. Một nền kinh tế tri thức tốt, như tên gọi, được phát triển từ tri thức khoa học và công nghệ, hơn là lệ thuộc vào tài nguyên thiên nhiên và thể lực. Một ứng dụng máy tính hay một sản phẩm điện thoại thông minh có thể giúp cho quốc gia thoát nghèo và sánh vai cùng các nước tiên tiến. Nhưng trong thực tế cho đến nay, hầu hết các chỉ số về kinh tế tri thức của Việt Nam vẫn còn thấp so với các nước trong vùng. Tri thức khoa học, như đề cập trên, được sản sinh từ nghiên cứu khoa học. Do đó, Việt Nam cần nhiều người tham gia vào nghiên cứu khoa học để giúp nâng cao vị thế của nước nhà trong quá trình cạnh tranh trở thành một nền kinh tế tri thức. Cuốn sách nhỏ này có ý nguyện đóng góp một phần nhỏ vào công cuộc chung đó. Khoa học không bao giờ dừng lại trong hành trình đi tìm sự thật, bởi vì khoa học không bao giờ tuyên bố nó đã hoàn thành sứ mệnh đó. Khoa học là một ngành nghề khai hóa, truyền bá cái mà chúng ta gọi là “văn minh”, và khoa học đặt sự thật trên hết và trước hết, trước tất cả những quyền lợi cá nhân. Đây là những lời phát biểu to tát mang tính nguyên tắc, nhưng trong thực tế, tất cả các nhà khoa học nghiêm túc đều chia sẻ.', '64.jpg'),
(31, 'Cẩm Nang Tư Duy Học Tập Và Nghiên Cứu', '48000', 3, '\"Apprendre  à  apprendre” (“học  cách  học”)  là một khẩu hiệu nổi tiếng trong tiếng Pháp và không dễ… dịch, vì động từ “apprendre” trong tiếng Pháp dường như có cả hai nghĩa trong tiếng Anh: “to teach” và “to learn”! Không có sự tách bạch giữa “dạy” và “học”, vì vị trí của chúng đôi khi có thể thay thế cho nhau, hay nói ngắn, giữa chúng có một sự “vận động”. Sự vận động ấy chính là phương pháp. Từ khi René Descartes viết quyển “Các quy tắc hướng dẫn tư duy” (Règles pour la direction de l’esprit) năm 1628 và “Luận văn về Phương pháp” (Discours de la Méthode) năm 1637, khoa học và tư duy khoa học thật sự bước vào thời hiện đại, tức, ta không còn có thể suy nghĩ và làm việc như thể không có… Descartes được nữa! Gần bốn thế kỷ đã trôi qua với biết bao sự cải tiến và tinh vi hóa về phương pháp trên mọi lĩnh vực, nhưng mục tiêu của nó không thay đổi, đúng như Kant đã nói: “Ta không thể học triết học, mà chỉ có thể học cách triết lý” hay như lời của Albert Einstein: “Giá trị của một nền giáo dục (…) không phải là dạy và học được nhiều sự kiện mà là đào luyện cho tinh thần biết tư duy…”. Bộ sách CẨM NANG TƯ DUY này dành cho mọi độc giả, từ học sinh, sinh viên đến các giảng viên, các nhà nghiên cứu, doanh nhân, người đã đi làm cũng như quý phụ huynh… muốn nâng cao năng lực tư duy của mình. Học sinh, sinh viên có thể đọc cẩm nang như tài liệu tham khảo để học tốt các bộ môn; quý phụ huynh có thể sử dụng cẩm nang để vừa nâng cao năng lực tư duy của mình vừa giúp con em mình phát triển các kỹ năng tư duy cần thiết để học tốt; các giảng viên, nhà nghiên cứu có thể sử dụng cẩm nang để xây dựng tốt các chủ đề của mình; người đã đi làm, doanh nhân… có thể áp dụng các kỹ năng, ý tưởng của cẩm nang vào công việc và cuộc sống. Quyển cẩm nang này tập trung vào bản chất và khái niệm của việc học tập và tham gia vào những lĩnh vực nghiên cứu. Đúng hơn, cẩm nang góp phần làm cho hoạt động trí tuệ và sự học có chiều sâu và dễ kiểm soát hơn.', '65.jpg');
INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `Gia`, `MaLoaiHang`, `GhiChu`, `Hinh1`) VALUES
(32, 'Career courage', '23000', 5, 'How has your answer changed since childhood to the often-asked question “What do you want to be when you grow up?” For most, the answers tend to begin with excited seven-year-olds confidently and excitedly screaming out things like, “A basketball player!” or “A fireman!” or “A cook!” and then ten to fifteen years later those same kids are shrugging their shoulders while saying, “Not sure. Maybe something in accounting?”What happened? (Besides only growing to five foot eight and not being able to even reach the net when you jump.) When did we lose the courage to find our true calling and not just settle for what make sense in today’s workforce, or what our parents pushed us toward? Career Courage is meant to help you conquer your fears, shed misguided ideas, and muster the strength to let go of a safe job and stage your next act. Whether you’re a college grad contemplating choices, a seasoned professional seeking new directions, or a stay-at-home mom preparing to reenter the workplace, this invaluable guide book poses tough questions about motivation, confidence, character, risk tolerance, and more. The answers will power your journey forward as you learn to: Clarify what really matters. Express your point of view. Build strong relationships and a robust network. Think like an entrepreneur. Prioritize a truly fulfilling life. And more!Starting or changing careers can be a scary, soul-searching process. Career Courage will give you the strength and guidance you need to break free from your fears and find fulfillment in the workforce.', '66.jpg'),
(33, 'Catch Me If You Can: The True Story Of A Real Fake', '34000', 2, 'I stole every nickel and blew it on fine threads, luxurious lodgings, fantastic foxes and other sensual goodies. I partied in every capital in Europe and basked on all the world\'s most famous beaches\'. Frank W Abagnale, alias Frank Williams, Robert Conrad, Frank Adams and Ringo Monjo, was one of the most daring con men, forgers, imposters and escape artists in history. In his brief but notorious career, Abagnale donned a pilot\'s uniform and co-piloted a Pan Am jet, masqueraded as a member of hospital management, practised law without a licence, passed himself off as a college sociology professor, and cashed over $2.5 million in forged checks all before he was twenty-one. Known by the police of twenty-six foreign countries and all fifty states as \'The Skywayman\', Abagnale lived a sumptuous life on the run - until the law caught up with him. Now recognised as the nation\'s leading authority on financial foul play, Abagnale is a charming rogue whose hilarious, stranger-than-fiction international escapades and ingenious escapes - including one from an aeroplane - make CATCH ME IF YOU CAN an irresistable tale of deceit.', '67.jpg'),
(34, 'Câu Chuyện Dòng Sông', '61000', 2, 'Tất cả tác phẩm của Hermann Hesse đều nói lên niềm cô đơn tâm linh của con người thời đại, nỗi thao thức triền miên của những tâm hồn khát khao đi tìm một chân trời mới cho mình và nhất là những nỗ lực vô hạn để vươn lên mọi ràng buộc của thân phận làm người. Trọn tác phẩm của ông là lời thánh ca bay vút lên chín tầng trời, vọng lên nỗi đau đớn vô cùng của kiếp sống và lòng hướng vọng nghìn đời của con người, dù bơ vơ bất lực mà vẫn luôn luôn tha thiết đi tìm giải thoát ra ngoài mọi giới hạn tầm thường của đời sống tẻ nhạt: “Dù bị đau đớn quằn quại, tôi vẫn tha thiết yêu thương trần gian điên dại này’’. Khi viết dòng thơ trên phải chăng Hermann Hesse đã muốn nói lên tất cả ý nghĩa của sự nghiệp văn chương ông giữa cơn biến động phũ phàng của thời đại? Ý nghĩa thâm trầm ấy cũng bàng bạc trong quyển Câu chuyện dòng sông. Đọc Câu chuyện dòng sông, chúng ta sẽ thấy rằng cuộc đời đáng sống và chứa đựng muôn ngàn hương sắc tuyệt vời, mà chúng ta thường bỏ quên và đánh mất giữa đời sống thường nhật. Câu chuyện dòng sông là câu chuyện của mỗi người trong chúng ta: đó cũng là hình ảnh muôn thuở của trần gian và của mộng đời bất tuyệt. Câu chuyện dòng sông là cuốn tiểu thuyết mang tính cách ngôn của Hermann Hesse kể về hành trình tâm linh của một người Ấn Độ tên là Siddhartha trong thời đại của Tất-đạt-đa Cồ-đàm. Đây là tiểu thuyết thứ chín của Hesse, được viết bằng tiếng Đức, trong một ngôn ngữ đơn giản nhưng có vần điệu. Cuốn sách kể lại chuyện xảy ra ở Ấn Độ vào thời cổ đại vào khoảng thời gian của Phật (thế kỷ thứ 6 TCN). Truyện bắt đầu khi Siddhartha, con của một Brahmin, bỏ nhà ra đi để tham gia những nhà tu khổ hạnh cùng với người bạn thân là Govinda. Cả hai đều ra đi để tìm sự khai sáng. Siddhartha đã đi qua một chuỗi các thay đổi và tự nhận thức khi anh cố gắng đạt được mục đích này.', '68.jpg'),
(35, 'Câu chuyện phát triển và hạnh phúc', '131000', 2, 'Phát triển và hạnh phúc là hai vấn đề cốt yếu và cũng là hai mục tiêu tối hậu mà mọi xã hội đều nhắm đến. Tuy vậy, không ít người còn nhầm lẫn giữa tăng trưởng kinh tế đơn thuần và sự phát triển bền vững, giữa sự phong phú về hàng hóa và tiện ích với sự giàu có về văn hóa tinh thần và cao hơn là hạnh phúc. Tăng trưởng GDP liệu còn được bao nhiêu ý nghĩa khi môi trường bị tàn phá, đạo đức suy thoái, giáo dục rơi vào khủng hoảng, tình trạng phân hóa giàu nghèo ngày càng đến mức báo động? Bởi vậy, trong khi theo đuổi mục tiêu tăng trưởng kinh tế thì rất cần tỉnh táo nhìn lại thực trạng xã hội, và khi đưa ra các chính sách, giải pháp cho sự phát triển cũng không thể xem nhẹ những lĩnh vực tác động đến chất lượng cuộc sống con người như môi trường, văn hóa, giáo dục, đạo đức… Đó là nội dung chủ yếu được đề cập đến trong khoảng 50 bài viết về văn hóa - xã hội của 11 nhà khoa học, nhà nghiên cứu, nhà văn mà tên tuổi đã rất quen thuộc với độc giả trong và ngoài nước như: Hoàng Tụy, Phạm Duy Hiển, Nguyên Ngọc, Trần Văn Thị, Vũ Quang Việt, Bùi Văn Nam Sơn, Nguyễn Tường Bách, Nguyễn Tùng, Nguyễn Văn Trọng, Nguyễn Nghị, Trần Hữu Quang. Các bài viết này đều đã đăng trên Thời báo Kinh tế Sài Gòn và nay được tập hợp trong một cuốn sách có tựa đề Câu chuyện phát triển và hạnh phúc. Tuy phần lớn đề tài đều ít nhiều gắn với thời sự nhưng nội dung các bài viết thì hàm chứa một bề dày trải nghiệm và suy tưởng rất căn cơ. Điều đọng lại sâu đậm nhất qua các bài viết tâm huyết, là nỗi niềm trăn trở đối với đất nước của các tác giả. Tâm huyết ấy, nỗi niềm ấy thể hiện qua sự quan tâm lo lắng, đau xót trước “những điều trông thấy” trong xã hội và thái độ trăn trở, nỗ lực tìm kiếm phương cách thoát khỏi vòng suy thoái, khủng hoảng. Không ít những giải pháp được nêu lên với tinh thần xây dựng: chẳng hạn cải cách phương thức tuyển sinh Đại học, giảm nhẹ học phí và đặt biệt là giải pháp tiền lương cho ngành giáo dục (Hoàng Tụy), những cải cách cần thiết cho đại học (Vũ Quang Việt), việc tạo nên đội ngũ trí thức mới là người bản địa cho Tây Nguyên, bắt tay vào sự nghiệp trồng lại rừng (Nguyên Ngọc), đề nghị xem xét lại mô hình quản lý nghiên cứu khoa học (Phạm Duy Hiển)… Quả thật, trong câu chuyện về phát triển và hạnh phúc, các tác giả đã phát biểu một cách thẳng thắn, trung thực, với niềm tin ý thức trách nhiệm của người trí thức.', '69.jpg'),
(36, 'Chỉ Ngu Ngơ Mới Biết Cười', '292000', 1, 'Chỉ Ngu Ngơ Mới Biết Cười là một trong những tiểu thuyết vĩ đại nhất của Mỹ trong thế kỷ 20. Bức tranh về xã hội thượng lưu Mỹ đã được khắc họa một cách xuất sắc với những nạn nhân của chủ nghĩa tự nhiên, những con người của bản năng chứ không phải là người mang ý thức, những kẻ luôn luôn tuân theo luật lệ của thế giới kim tiền và danh vọng. Edith Wharton đã đưa người đọc vào một thế giới lộng lẫy nhưng bi thương, hào nhoáng nhưng ô trọc, đến với một câu chuyện của âm mưu và tình yêu, đê hèn và cao thượng, bất nghĩa và thiện lương… Khi đọc Chỉ Ngu Ngơ Mới Biết Cười độc giả có lẽ sẽ vấp phải một thế giới với hệ thống giá trị và quan niệm thật khác lạ so với ngày nay. Như chính nhân vật Lily Bart đã nhận xét: “Cô cảm thấy khó khăn thực sự trong việc không thể truyền đạt tình trạng của mình cho bất cứ ai mà lý thuyết về giá trị của họ thật khác so với cô”, đó chính xác là vấn đề ta cần tìm hiểu trước khi tiếp cận tác phẩm này. Cuối thế kỷ 19, đầu thế kỷ 20, người phụ nữ sinh ra trong giới thượng lưu được nuôi dạy với tư tưởng rằng cô ta suốt đời chỉ có chức năng làm vật trang trí và là công cụ tiến thân cho người chồng giàu có của mình. “Đó là một số phận đáng căm hận – nhưng làm sao để thoát khỏi nó? Cô có lựa chọn nào chăng?”. Lily Bart đã chua chát nhận xét như thế vào một đêm cô đánh bạc thua trắng. Là sản phẩm của nền văn minh sinh ra mình, người phụ nữ thiếu sót mọi kiến thức kinh tế xã hội thật chất lẫn những kỹ năng sinh tồn thiết yếu giúp tự nuôi sống bản thân. Điều không thể tránh khỏi là họ bị từ chối quyền tự điều khiển cuộc sống mà ở đó họ có thể là trung tâm. Lily Bart biết ước mơ cả đời cô là được sống trong một căn nhà to đẹp, nhưng cô cũng căm hận chính  mình vì không thể nghĩ ra được một điều gì cao hơn thế, không bị trói buột trong bốn bức tường phòng khách tráng lệ. Có thể nói, tội ác lớn nhất của thời kỳ này là khiến phụ nữ tin rằng hưởng thụ, tiêu xài, phù phiếm không chỉ là số phận của họ mà còn là số phận duy nhất họ có thể mơ tưởng đến.', '70.jpg'),
(37, 'Chiếc Lexus và cây ô liu', '249000', 6, 'Trong cuốn Chiếc Lexus Và Cây Ô Liu , Thomas L.Friedman, người từng đoạt giải Pulitzer, bình luận viên quan hệ quốc tế của The New York Times, đưa ra một cái nhìn xuyên suốt về hệ thống quốc tế mới đang làm biến đổi tình hình thế giới ngày nay. Toàn cầu hóa đã thay thế Chiến tranh Lạnh, mang lại sự hội nhập về tư bản, công nghệ và thông tin xuyên qua biên giới quốc gia - hội tụ nông dân Brazil, giới doanh nhân Indonesia, dân làng Trung Quốc và kỹ thuật viên ở Thung lũng Silicon vào một ngôi làng toàn cầu chung. Bạn không thể hiểu bản tin buổi sáng, biết nơi nào để đầu tư hay tiên liệu về tương lai nếu bạn không hiểu thấu đáo hệ thống mới này - đang ảnh hưởng sâu sắc đến hầu như mọi quốc gia trên thế giới ngày nay. Friedman giải thích cho bạn nền kinh tế điện tử toàn cầu này là gì và cần làm gì để con người có thể tồn tại trong đó. Qua những câu chuyện sinh động từ những chuyến đi khắp nơi, Friedman miêu tả cuộc xung đột giữa Chiếc Lexus Và Cây Ô Liu - tượng trưng cho quan hệ căng thẳng giữa hệ thống toàn cầu hóa hiện đại và những sức mạnh văn hóa, địa lý, truyền thống và cộng đồng từ ngàn xưa. Tác giả mô tả cặn kẽ sự chống đối mãnh liệt do toàn cầu hóa gây ra cho những con người bị thua thiệt. Tác giả cũng nói rõ những gì chúng ta cần làm để giữ cân bằng giữa chiếc xe Lexus và cây Ô Liu. Trong ấn bản lần này, Friedman đã mở rộng và cập nhật những lập luận và phân tích dễ gây tranh cãi của mình, khiến cuốn sách trở nên thiết yếu đối với những ai quan tâm đến dòng chảy thế giới ngày nay.', '71.jpg'),
(38, 'Chiêm Tinh Học Nhập Môn', '144000', 6, 'Bạn cảm thấy mình không giống một Xử Nữ, một Nhân Mã, một Kim Ngưu… cho lắm? Bạn muốn biết sau này mình có giàu không, bao giờ mình có người yêu, mình sẽ yêu người thế nào? Tất cả câu trả lời sẽ đều có trên bản đồ sao cá nhân của bạn. Vấn đề là, làm thế nào để đọc được bản đồ sao cá nhân? Thay vì tìm mỏi mắt một chiêm tinh gia chuyên nghiệp đáng tin cậy, hay là thử tự đọc bản đồ sao cho mình xem, vì học chiêm tinh cũng không khó lắm đâu! Đây là cuốn sách tỉ mỉ, chi tiết, đầy đủ, dễ hiểu nhất để bạn có thể tự đọc bản đồ sao đầu tiên tại Việt Nam. Đến từ tác giả là chiêm tinh gia chuyên nghiệp với gần 20 năm nghiên cứu, cuốn sách được thiết kế để ai cũng có thể tự xem bản đồ sao. “Chiêm tinh học về cơ bản là một ngôn ngữ. Mà khi ta thông hiểu ngôn ngữ này, cả bầu trời sẽ bắt đầu nói chuyện với ta” - Dane Rudhyar. Chiêm tinh học nhập môn - Khám phá bản thân qua ngôn ngữ của các chòm sao!', '72.jfif'),
(39, 'Chiến Binh Cầu Vồng', '93000', 4, 'Một tác phẩm có tầm ảnh hưởng sâu rộng nhất Indonesia. “Thầy Harfan và cô Mus nghèo khổ đã mang đến cho tôi tuổi thơ đẹp nhất, tình bạn đẹp nhất, và tâm hồn phong phú, một thứ gì đó vô giá, thậm chí còn có giá trị hơn những khao khát mơ ước. Có thể tôi lầm, nhưng theo ý tôi, đây thật sự là hơi thở của giáo dục và linh hồn của một chốn được gọi là trường học.” - (Trích tác phẩm). Trong ngày khai giảng, nhờ sự xuất hiện vào phút chót của cậu bé thiểu năng trí tuệ Harun, trường Muhammadiyah may mắn thoát khỏi nguy cơ đóng cửa. Nhưng ước mơ dạy và học trong ngôi trường Hồi giáo ấy liệu sẽ đi về đâu, khi ngôi trường xập xệ dường như sẵn sàng sụp xuống bất cứ lúc nào, khi lời đe dọa đóng cửa từ viên thanh tra giáo dục luôn lơ lửng trên đầu, khi những cỗ máy xúc hung dữ đang chực chờ xới tung ngôi trường để dò mạch thiếc…? Và liệu niềm đam mê học tập của những Chiến binh Cầu vồng đó có đủ sức chinh phục quãng đường ngày ngày đạp xe bốn mươi cây số, rồi đầm cá sấu lúc nhúc bọn ăn thịt người, chưa kể sự mê hoặc từ những chuyến phiêu lưu chết người theo tiếng gọi của ngài pháp sư bí ẩn trên đảo Hải Tặc, cùng sức cám dỗ khôn cưỡng từ những đồng tiền còm kiếm được nhờ công việc cu li toàn thời gian ...? Chiến binh Cầu vồng có cả trong sáng tuổi học trò lẫn những trò đùa tinh quái, cả nước mắt lẫn tiếng cười – một bức tranh chân thực về hố sâu ngăn cách giàu nghèo, một tác phẩm văn học cảm động truyền tải sâu sắc nhất ý nghĩa đích thực của việc làm thầy, việc làm trò và việc học.', '73.jpg'),
(40, 'Cây Cam Ngọt Của Tôi', '24000', 1, 'Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng số một tác phẩm kinh điển của Brazil. Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào. Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi. Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\r\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.', '74.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` int(11) NOT NULL,
  `HoTenKH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoDienThoai` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `DiaChi`, `SoDienThoai`, `Email`, `password`) VALUES
(1, 'Lê Thành Đạt', 'KTX Đại học Cần Thơ', '0916671369', 'datb1910205@student.ctu.edu.vn', 'f33d26ca9f2ea8a96f45a0170b13ff5c'),
(2, 'Ngọc Diệp', 'Nguyễn Văn Linh', '0946379177', 'ngocdiep710@gmail.com', 'e942681321811af2566eb0602b0538db'),
(3, 'Phạm Đoàn Trùng Dương', '79B Lý Tự Trọng, Phường An Phú, Quận Ninh Kiều, Cần Thơ', '0913687498', 'duongb1910202@student.ctu.edu.vn', 'f33d26ca9f2ea8a96f45a0170b13ff5c'),
(4, 'Phạm Trần Như Ý', 'KTX Đại học Cần Thơ', '0912345678', 'yb1903315@student.ctu.edu.vn', 'd8a1ca97fc2076326dc9466ce47723ea'),
(5, 'Lâm Minh Hải', 'Cà Mau', '0916672332', 'haib1905203@student.ctu.edu.vn', 'be8a6e19c968ff48e71b4e19c7d5ac98'),
(6, 'Bùi Thi Thanh An', 'Ấp 3, Phường Quyên Cù, Huyện 4 Quảng Trị', '0955537798', 'an1800001@student.edu.vn', 'beee4a1b3c0dd99fc43aa25d72a07e4a'),
(7, 'Nguyễn Gia Hoàng', '39 Phố Khổng Khánh Lễ, Xã 2, Huyện 2 Cần Thơ', '0755540546', 'hoang1802003@student.edu.vn', '38d88bb6edf3234d854fee4e3a81202e'),
(8, 'Vũ Hữu Đoàn', '46 Phố Thào Võ Thịnh, Xã 2', '0555558667', 'doan1800056@student.edu.vn', 'cd52fb607416cd59a9d2dfd7b4d7da4b'),
(9, 'Trần Hoàng Huy', 'Ninh Kiều Cần Thơ', '0755518564', 'huy1902165@student.ctu.edu.vn', '8b44b53ec7370c02f899c97c10198fc7'),
(10, 'Lê Thành Đạt', 'Cần Thơ', '0916671369', 'thanhledatomon@gmail.com', 'f33d26ca9f2ea8a96f45a0170b13ff5c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` int(11) NOT NULL,
  `TenLoaiHang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(1, 'Tiểu thuyết'),
(2, 'Khoa học'),
(3, 'Kinh tế'),
(4, 'Thần thoại'),
(5, 'Tâm lý'),
(6, 'Kỹ năng'),
(7, 'Trinh thám');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoDonDH`,`MSHH`) USING BTREE,
  ADD KEY `MSHH` (`MSHH`) USING BTREE,
  ADD KEY `SoDonDH` (`SoDonDH`) USING BTREE;

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`SoDonDH`) USING BTREE,
  ADD KEY `MSKH` (`MSKH`) USING BTREE;

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`) USING BTREE,
  ADD KEY `MaLoaiHang` (`MaLoaiHang`) USING BTREE;

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`) USING BTREE,
  ADD UNIQUE KEY `Email` (`Email`) USING BTREE;

--
-- Chỉ mục cho bảng `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `MSHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MSKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `fk_MSHH_HangHoa_ChiTiet` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`),
  ADD CONSTRAINT `fk_SoDonHH_DatHang_ChiTiet` FOREIGN KEY (`SoDonDH`) REFERENCES `dondathang` (`SoDonDH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_MSKH_KhachHang_DatHang` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Các ràng buộc cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_MaLoaiHang_MaLoai_LoaiHang` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
