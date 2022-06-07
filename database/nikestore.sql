-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2022 lúc 06:50 AM
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
-- Cơ sở dữ liệu: `nikestore`
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
(40, 2, 2, '40000.00'),
(40, 7, 1, '156000.00'),
(40, 41, 2, '156000.00'),
(41, 3, 1, '265000.00'),
(42, 2, 1, '40000.00'),
(43, 1, 2, '164000.00');

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
(40, 3, '321awd', '548000', '2022-06-07 03:57:58'),
(41, 3, 'a13-13', '265000', '2022-06-07 04:01:36'),
(42, 3, '32', '40000', '2022-06-07 04:07:03'),
(43, 3, '123', '328000', '2022-06-07 04:14:50');

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
(1, 'NikeCourt Zoom Vapor Cage 4 Rafa', '164000', 3, 'Được cải tiến để chống chọi với những trận đấu khắc nghiệt nhất của bạn, thiết kế cập nhật này đặt các vật liệu linh hoạt, bền vào chính xác nơi chúng cần thiết nhất. Thông tin chi tiết về Rafael Nadal có chữ ký cho phép bạn đại diện cho tay vợt yêu thích của mình trong khi điều hành sân.', '35.jpg'),
(2, 'Nike Dri-FIT ADV Classic99', '40000', 6, 'Cực kỳ co giãn và rất thoáng khí, Mũ Nike Dri-FIT ADV Classic99 được chế tạo để giữ cho bạn mát mẻ và thoải mái để bạn có thể chơi hết mình, hết hiệp này đến hiệp khác.', '36.jpg'),
(3, 'Air Jordan 1 Zoom Cmft', '265000', 3, 'Làm cho phong cách mang tính biểu tượng trở nên thoải mái hơn. Air Jordan 1 Zoom Cmft làm lại Air Jordan 1 với lớp đệm nhẹ, cấu hình thấp và các yếu tố cải thiện khả năng đeo. Da và vải dệt ở phía trên có cảm giác đứt quãng. Cổ áo lót có đệm lót ôm lấy gót chân để tạo sự vừa vặn an toàn.', '37.jpg'),
(4, 'Nike Sportswear Tech Pack', '40000', 2, 'Nike Sportswear Tech Pack Cargo Shorts là câu trả lời của bạn cho những ngày làm việc dài, đi làm và những ngày cuối tuần đông đúc. Mở túi sau và đeo nó như một chiếc túi đeo chéo hoặc đặt lại nó trên túi hàng hóa phía trước bên phải — bạn không bao giờ có thể có quá nhiều lựa chọn lưu trữ! Một chiếc thắt lưng tích hợp và vải dệt không viền bên trong sẽ giúp bạn luôn mát mẻ và thoải mái. Sản phẩm này được làm với ít nhất 75% sợi nylon tái chế.', '38.jpg'),
(5, 'Nike Sportswear Max90', '207000', 1, 'Áo phông thể thao của Nike được làm bằng vải cotton dày và vừa vặn với Max90 của chúng tôi để mang lại cảm giác rộng rãi và chắc chắn. Hình ảnh in lấy từ phong cách cổ điển của Nike để có một cái nhìn sạch sẽ mà bạn có thể đếm hàng ngày.', '39.jpg'),
(6, 'Jacket Sport DNA', '256000', 5, 'Kết nối với di sản vượt thời gian của Thương hiệu Jordan trong chiếc áo khoác nhẹ này. Nó có đồ họa đậm ở mặt trước và mặt sau, cộng với nhiều tính năng thiết thực như vải không thấm nước, khóa kéo dài 1/2 và viền khóa kéo.', '40.jpg'),
(7, 'Nike Sportswear Heritage 86', '156000', 6, 'Nike Sportswear Heritage86 Cap có thiết kế 6 ngăn cổ điển với hỗ trợ thấm mồ hôi, có một thỏi Swoosh kim loại ở phía trước và một phần đóng có thể điều chỉnh để vừa vặn hoàn hảo.', '41.jpg'),
(8, 'Nike Mercurial Lite', '115000', 4, 'Nike Mercurial Lite Shinguards mang đến cho bạn lớp đệm thoải mái và lớp vỏ bền với ống tay nhẹ để giữ cho tất cả ở đúng vị trí. Chúng có cấu hình thấp và phù hợp trái / phải cụ thể với bọt đục lỗ để thở.', '42.jpg'),
(9, 'Nike Dri-FIT Standard Issue', '153000', 5, 'Bóng rổ không chỉ là một trò chơi — đó là văn hóa, thái độ và lối sống. Áo khoác Nike Dri-FIT Standard Issue đáp ứng nhu cầu của bạn về phong cách và khả năng vui chơi cả ngày, với lớp vải bông dày của Pháp giúp thấm mồ hôi và các mặt bên linh hoạt để vừa vặn không hạn chế.', '43.jpg'),
(10, 'Jordan Essentials', '177000', 2, 'Làm mới lưới của bạn với Quần short đồ họa lưới Jordan Essentials. Chúng được làm bằng cách sử dụng hai lớp vải mát, thoáng khí với cảm giác vừa vặn, thoải mái. Đồ họa mực phồng và mực phẳng mang lại cho nó một lớp hoàn thiện đặc trưng của Michael Jordan.', '44.jpg'),
(11, 'Nike Sportswear', '127000', 1, 'Nike Sportswear Top có thiết kế vừa vặn và gọn gàng, hoàn hảo cho trang phục hàng ngày. Vải áo đấu của hãng được làm từ 100% vật liệu bền vững, sử dụng hỗn hợp polyester tái chế, bông tái chế và sợi bông hữu cơ. Hỗn hợp là ít nhất 10% sợi tái chế hoặc ít nhất 10% sợi bông hữu cơ.', '45.jpg'),
(12, 'NikeCourt Dri-FIT', '34000', 1, 'Được làm từ vải dệt kim mềm được làm từ 100% sợi polyester tái chế, NikeCourt Dri-FIT Polo là một thiết bị chủ lực của sân bóng có vẻ ngoài cổ điển, thấm mồ hôi.', '75.jpg'),
(13, 'Jordan Sport DNA', '299000', 2, 'Vẫn đúng với di sản Thương hiệu Jordan với những chiếc quần short đi chơi này. Chúng có hai lớp lưới mềm mại, thoải mái, vừa vặn thoải mái. Chữ nhuộm màu cà vạt là một cách giải thích băng giá cho \"tình trạng bị đóng băng\" từ All-Star \'85, khi các đối thủ cố gắng giữ bóng khỏi tay Mike. Lịch sử biết điều đó đã diễn ra tốt đẹp như thế nào.', '47.jpg'),
(14, 'Nike ESC', '40000', 5, 'Áo khoác boong WW2 mang tính biểu tượng là nguồn cảm hứng cho mặt hàng chủ lực xếp lớp nhẹ và thoải mái này. Thiết kế dài đến thắt lưng của nó có một chiếc áo cài cúc được che phủ, họa tiết hình phi tiêu để tạo hình và cổ áo có thể chuyển đổi để dễ mặc. Dây đeo bên trong cho phép bạn quàng qua vai khi không đeo để thuận tiện cho việc rảnh tay.', '48.jpg'),
(15, 'Woven Jacket Nike Sportswear', '93000', 5, 'Tôn vinh Swoosh trong Áo khoác dệt thoi thể thao của Nike. Một thiết kế Swoosh quá khổ trải dài khắp mặt trước và mặt sau cho một cái nhìn táo bạo. Một chiếc quần vừa vặn và có khóa kéo dài hết cỡ khiến chiếc áo khoác nhẹ này trở thành một món đồ cần thiết, trong khi thương hiệu hoài cổ và các chi tiết cổ điển phù hợp với phong cách của trường đại học.', '49.jpg'),
(16, 'Nike Sportswear Windrunner', '177000', 5, 'Nike Sportswear Windrunner Jacket cập nhật mẫu áo gió chạy bộ đầu tiên của chúng tôi với chất liệu vải nhẹ làm từ vật liệu tái chế. Các chi tiết thiết kế được lấy từ phiên bản gốc mang đến một diện mạo Nike di sản. Sản phẩm này được làm từ 100% sợi polyester tái chế.', '50.jpg'),
(17, 'Nike Venturer', '219000', 4, 'Thế giới là sân vận động của bạn, nhưng cảnh quan đô thị có thể khiến trò chơi của bạn trở nên tồi tệ. Dây đeo trên mặt nạ biểu diễn đầu tiên của Nike thuộc loại này được chế tạo để có khả năng thở tối ưu. Được thiết kế cho thể thao, tích hợp đệm mũi và đệm cằm giúp nó luôn cố định khi bạn vận động mạnh.', '51.jpg'),
(18, 'Nike Boonie', '125000', 6, 'Nón Nike Boonie Bucket Hat được bao phủ bởi một vành mũ 360 độ và một dây rút có thể cố định lại để giữ cho phù hợp khi bạn đang di chuyển. khô và mát.Camo in tạo ra một cái nhìn chỉ huy.', '52.jpg'),
(19, 'Air Jordan 1 Retro High OG', '268000', 3, 'Quen thuộc nhưng luôn mới mẻ, Air Jordan 1 mang tính biểu tượng được làm lại cho văn hóa sneakerhead ngày nay. Phiên bản Retro High OG này hoàn thiện với da cao cấp, đệm thoải mái và các chi tiết thiết kế cổ điển', '53.jpg'),
(20, 'Paris Saint-Germain Strike', '22000', 5, 'Paris Saint-Germain Strike Jacket có các chi tiết thiết kế dành riêng cho những ngôi sao đang lên của bóng đá. Chất liệu vải nhẹ, không thấm nước, vừa vặn với diện tích rộng rãi giúp giữ cho bạn khô ráo, che phủ và điềm tĩnh trong khi tinh chỉnh các kỹ năng của bạn.', '54.jpg'),
(21, 'Premier League Strike Third', '73000', 4, 'Premier League Strike Third Football đã sẵn sàng bay vào lưới. Vỏ có kết cấu và các rãnh ổn định giúp bạn đặt bóng vào đúng vị trí bạn muốn.', '55.jpg'),
(22, 'Nike Sportswear Bucket Hat', '52000', 6, 'Một lớp vải được giặt trên vương miện của Mũ quần áo thể thao Nike mang lại cho nó một cảm giác mềm mại, đeo tốt. Vương miện và vành không có cấu trúc của nó mang lại một cái nhìn thoải mái và thêm độ che phủ từ các yếu tố.', '56.jpg'),
(23, 'Liverpool F.C.', '24000', 1, 'Liverpool F.C. Top cung cấp cho bạn giao diện giống như những người chơi yêu thích của bạn. Công nghệ thấm mồ hôi nhẹ và thoáng khí giúp giữ cho bạn khô ráo trong khi khởi động cho trận đấu. Sản phẩm này được làm từ 100% sợi polyester tái chế.', '57.jpg'),
(24, 'Nike Goalkeeper Match', '24000', 4, 'Găng tay đấu thủ môn Nike đã sẵn sàng để thực hiện mọi pha cứu thua. Lớp đệm mềm cung cấp đệm chống lại các cú đánh, trong khi bề mặt nhẵn giúp bạn cầm nắm trong điều kiện ẩm ướt hoặc khô ráo.', '58.jpg'),
(25, 'Nike ACG Storm-FIT ADV \'Cascade Rains\'', '223000', 5, 'Áo khoác Nike ACG Storm-FIT ADV \'Cascade Rains\' được bao phủ bởi một thiết kế hoàn toàn có thể điều chỉnh để bạn có thể thay đổi độ vừa vặn và nhanh chóng. Nó đủ lỏng để mặc như một lớp bên ngoài bên trên lớp lông cừu hoặc lớp trên cùng. Cần phải hạ lớp xuống? Áo khoác đóng gói vào bảng điều khiển bên cạnh để cất giữ khi di chuyển. Sản phẩm này được làm từ ít nhất 75% sợi polyester tái chế.', '59.jpg'),
(26, 'Sail and Burgundy', '265000', 3, 'Trong lần hợp tác thứ hai với Jordan Brand, cửa hàng A Ma Maniére có trụ sở tại Atlanta của James Whitner đang giới thiệu mẫu giày Air Jordan 2. Lấy cảm hứng từ sự sang trọng của mình. nó triển khai da giả thằn lằn, đường nét bóng bẩy và nổi tiếng là không có Swoosh. Nhưng trong 35 năm kể từ khi AJ2 ra mắt, cảm giác sang trọng của tập thể chúng tôi đã mở rộng, và để đáp ứng thời điểm này, A Ma Maniére đã tạo ra một ngôn ngữ thiết kế mới - thể hiện sự hạn chế trong việc trang trí đồng thời đẩy mạnh di sản thanh lịch của hình bóng.', '60.jpg'),
(27, 'Nike Dri-FIT KD', '164000', 2, 'KD dành nhiều thời gian trong phòng tập thể dục, vì vậy điều hợp lý là anh ấy muốn một chiếc quần đùi dễ mặc và thấm mồ hôi khi trời nóng lên. Những chiếc quần đùi bóng rổ Nike Dri-FIT này có lưới hai lớp với chiều dài đến ngang đùi để giúp bạn thực hiện các cú đánh và thực hiện các bài tập mà không bị phân tâm. Sản phẩm này được làm từ 100% sợi polyester tái chế.', '61.jpg'),
(28, 'Liverpool F.C Woven Hooded Jacket', '268000', 5, 'Liverpool F.C. Áo khoác có các chi tiết hữu ích lấy cảm hứng từ trang phục ngoài trời để giúp bạn chuẩn bị sẵn sàng cho bất cứ điều gì bạn gặp phải.', '62.jpg'),
(29, 'Kyrie Men\'s Protect Jacket', '42000', 5, 'Đi đến nơi mà hành trình của bạn sẽ đưa bạn đến, bất kể thời tiết như thế nào. Kyrie Protect Jacket giúp ngăn chặn cái lạnh và ẩm ướt với chất liệu vải không thấm nước và lớp cách nhiệt nhẹ. Nó có một cảm giác rộng rãi, với các nút Tết Nguyên đán và đồ họa vi mô lấy cảm hứng từ Kyrie cho một cái nhìn mới mẻ và một năm mới.', '63.jpg'),
(30, 'Nike Windrunner', '273000', 5, 'Giữ cho những chuyến chạy địa hình của bạn diễn ra trong thời tiết mát mẻ hơn. găng tay có thể cất đi khi không sử dụng. Sản phẩm này được làm từ ít nhất 75% sợi polyester tái chế.', '64.jpg'),
(31, 'Jordan Series .05', '48000', 3, 'Bước vào huyền thoại của MJ với Jordan Series .05. Có thể đeo được trong bất kỳ cài đặt nào, những tác phẩm kinh điển tức thì này không phục vụ gì ngoài những đường nét rõ ràng và ngoại hình đẹp. Vải canvas và da lộn kết hợp với nhau để có kết cấu và độ bền và một số tính năng co giãn tích hợp giúp tạo ra bàn chân rộng hơn. Được thiết kế dựa trên câu chuyện nguồn gốc của Michael, chúng mang lại cảm hứng cho người chơi và người hâm mộ cũng như muốn tìm kiếm đôi cánh của mình.', '65.jpg'),
(32, 'Jordan 23 Engineered', '23000', 5, 'Jordan 23 Engineered đổi mới với phong cách, dẫn dắt thời trang dạo phố trong tương lai trong khi vẫn bám rễ vào di sản thương hiệu. 23 Engineered Tracksuit Jacket sử dụng vải Ripstop tráng với lớp lưới và lớp lót dệt thoải mái. Túi hàng ở ngực và hai bên cung cấp chức năng di chuyển.', '66.jpg'),
(33, 'Nike Dri-FIT Strike', '34000', 2, 'Quần short Nike Dri-FIT Strike có các chi tiết thiết kế đặc biệt phù hợp với những ngôi sao đang lên của bóng đá. Một bộ quần áo mỏng, vừa vặn đảm bảo rằng không có vật gì lọt vào giữa bạn và quả bóng, đồng thời chất liệu vải thấm mồ hôi giúp giữ cho bạn mát mẻ và điềm tĩnh trong khi tinh chỉnh kỹ năng của bạn. Sản phẩm này được làm từ 100% sợi polyester tái chế.', '67.jpg'),
(34, 'Nike Dri-FIT Trail', '61000', 2, 'Giày Nike Dri-FIT Trail Tights giữ cho nó nhẹ với độ vừa vặn vừa vặn trên đầu gối. Chúng tôi đã thêm một chút độ giãn để chuyển động tự do hơn trong sải chân của bạn. Nhiều túi và vòng thắt lưng lấy cảm hứng từ tiện ích giữ an toàn cho các vật dụng cần thiết của bạn. Ngoài trời đang kêu - đã đến lúc trả lời. Sản phẩm này được làm từ ít nhất 75% sợi polyester tái chế.', '68.jpg'),
(35, 'Jordan Sport Dri-FIT', '131000', 2, 'Mang phong cách đường phố và di sản Jordan đến với tòa án. Những chiếc quần đùi nhẹ này được làm từ lưới thoáng khí với hình dáng cổ điển, thoải mái. Với Công nghệ Dri-FIT thấm mồ hôi và thiết kế Kim cương mang tính biểu tượng, chúng sẽ giúp bạn trông tươi tắn cả ngày.', '69.jpg'),
(36, 'Jordan Jumpman', '292000', 1, 'Hãy bay bổng ra khỏi cửa trong chiếc áo phông Jordan Jumpman, nó được làm từ chất liệu vải mềm mại, thoải mái với cảm giác vừa vặn và thoải mái.', '70.jpg'),
(37, 'Bucket Hat Nike', '249000', 6, 'Giữ ánh nắng mặt trời trên hoa và bóng râm trên khuôn mặt của bạn. Nhóm 6 bảng điều khiển này cung cấp cho bạn phạm vi phủ sóng 360 độ. Hoa cúc in cho phép bạn cho cả thế giới thấy bạn yêu hoa như thế nào.', '71.jpg'),
(38, 'Jordan Utility Beanie', '144000', 6, 'Hãy giữ Jordan Utility Beanie trên tay để giữ ấm nhanh chóng trong những chuyến đi chơi lạnh giá. Nó được làm từ acrylic mềm, co giãn với một thỏi Jumpman kim loại được cố định trên vòng bít.', '72.jpg'),
(39, 'Paris Saint-Germain 2021/22 Stadium Home', '93000', 4, 'Đại diện cho đội bóng yêu thích của bạn trong Paris Saint-Germain Socks. Chúng giúp chân bạn luôn khô ráo nhờ chất liệu vải thấm mồ hôi, trong khi đệm được đặt ở vị trí chiến lược tạo cảm giác thoải mái trong suốt trận đấu.', '73.jpg'),
(40, 'Nike Men\'s T-Shirt', '24000', 1, 'Chiếc áo phông thể thao của Nike tạo nên sự phù hợp cho bạn với áo sơ mi cotton mềm mại và logo cổ điển trên ngực.', '74.jpg'),
(41, 'Nike Yoga Luxe A.I.R', '156000', 1, 'Là một trong những lựa chọn Nghệ sĩ về nơi cư trú của Nike, thiết kế không gây mất tập trung của Nike Yoga Luxe A.I.R. Crew nhận được một bản in hình học sống động từ nghệ sĩ Robbie Simon. Với các đường may tối thiểu và vai thả, nó cho phép bạn thoải mái di chuyển qua các tư thế của mình một cách dễ dàng mà không bị hạn chế. Chất liệu vải co giãn 4 chiều nâng cao tạo cảm giác mềm mại và êm ái khi áp vào cơ thể, giúp bạn luôn tập trung vào việc luyện tập.', '34.jpg'),
(42, 'Nike Heritage', '40000', 4, 'Một sự thay thế cho phong cách đeo hông cổ điển, Túi đeo chéo Nike Heritage cung cấp khả năng cất giữ rảnh tay với thiết kế đeo ngang ngực. In logo Futura và dây đeo dễ điều chỉnh khiến nó trở thành một lựa chọn thông minh để sử dụng hàng ngày. Túi lưu trữ chính và túi phụ kiện giúp giữ cho thiết bị của bạn được ngăn nắp. Sản phẩm này được làm từ ít nhất 65% polyester tái chế.', '46.jpg');

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
(3, 'Phạm Đoàn Trùng Dương', '79B Lý Tự Trọng, Phường An Phú, Quận Ninh Kiều, Cần Thơ', '0913687498', 'duongb1910202@student.ctu.edu.vn', '0e7517141fb53f21ee439b355b5a1d0a'),
(4, 'Phạm Trần Như Ý', 'KTX Đại học Cần Thơ', '0912345678', 'yb1903315@student.ctu.edu.vn', 'd8a1ca97fc2076326dc9466ce47723ea'),
(5, 'Lâm Minh Hải', 'Cà Mau', '0916672332', 'haib1905203@student.ctu.edu.vn', 'be8a6e19c968ff48e71b4e19c7d5ac98'),
(6, 'Bùi Thi Thanh An', 'Ấp 3, Phường Quyên Cù, Huyện 4 Quảng Trị', '0955537798', 'an1800001@student.edu.vn', 'beee4a1b3c0dd99fc43aa25d72a07e4a'),
(7, 'Nguyễn Gia Hoàng', '39 Phố Khổng Khánh Lễ, Xã 2, Huyện 2 Cần Thơ', '0755540546', 'hoang1802003@student.edu.vn', '38d88bb6edf3234d854fee4e3a81202e'),
(8, 'Vũ Hữu Đoàn', '46 Phố Thào Võ Thịnh, Xã 2', '0555558667', 'doan1800056@student.edu.vn', 'cd52fb607416cd59a9d2dfd7b4d7da4b'),
(9, 'Trần Hoàng Huy', 'Ninh Kiều Cần Thơ', '0755518564', 'huy1902165@student.ctu.edu.vn', '8b44b53ec7370c02f899c97c10198fc7'),
(10, 'Lê Thành Đạt', 'Cần Thơ', '0916671369', 'thanhledatomon@gmail.com', 'f33d26ca9f2ea8a96f45a0170b13ff5c'),
(11, 'duong', 'a13-13', '31241231241', 'pdtduong@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a');

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
(1, 'Áo'),
(2, 'Quần'),
(3, 'Giày'),
(4, 'Phụ kiện'),
(5, 'Áo khoác'),
(6, 'Mũ');

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
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `MSHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MSKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
