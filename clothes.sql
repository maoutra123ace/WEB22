-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2022 lúc 11:02 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `tongtien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`Id`, `id_khachhang`, `cart_status`, `ngaytao`, `tongtien`) VALUES
(1, 6, 2, '2021-12-16 21:01:45', 320000),
(2, 6, 2, '2021-12-16 21:06:09', 350000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `id_cart` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `name_sanpham` varchar(200) NOT NULL,
  `soluong_sanpham` int(11) NOT NULL,
  `price_sanpham` int(11) NOT NULL,
  `image_sanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`id_cart`, `id_sanpham`, `name_sanpham`, `soluong_sanpham`, `price_sanpham`, `image_sanpham`) VALUES
(1, 42, 'Ice Cream Tee - White', 1, 320000, '117.jpg'),
(2, 6, 'Blue/White Tie Dye Tee', 1, 350000, '002.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groupsp`
--

CREATE TABLE `groupsp` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `groupsp`
--

INSERT INTO `groupsp` (`id`, `name`, `content`, `created_at`) VALUES
(1, 'Dress', '', 0),
(2, 'Shirt', '', 0),
(3, 'Pants', '', 0),
(4, 'Orthers', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `thumbnail`, `content`, `updated_at`) VALUES
(1, 'Victoria Beckham đẳng cấp với phong cách color blocking', '19.jpg', '<p>Không nghi ngờ gì khi nói rằng Victoria Beckham là một biểu tượng thời trang và phong cách của cô ấy ảnh hưởng đến phụ nữ khắp bốn phương trên thế giới. Nhà tạo mẫu 47 tuổi được biết đến với kiểu dáng sang trọng và bắt kịp những xu hướng táo bạo trong cuộc sống hàng ngày của mình.</p>\r\n<p>Victoria khoe phong cách thời trang ấn tượng với cách sắp xếp khối màu tuyệt đẹp khi xuất hiện trên chương trình Good Morning America ở thành phố New York để nói về nhiều chủ đề khác nhau. Một là cuộc hôn nhân của cô ấy với cựu cầu thủ bóng đá David Beckham, cũng như việc cô ấy quyết định không tham gia Spice Girls cho chuyến lưu diễn trong tương lai khi nói rằng \"người hâm mộ luôn tuyệt vời và đó là một hành trình thực sự tuyệt vời, nhưng bây giờ tôi đang tập trung vào thời trang và làm đẹp. Đó là niềm đam mê của tôi\".</p>\r\n<p>Nhưng những gì thực sự bắt mắt tạo nên tổng thể trang phục của cô ấy. Beckham đã có một kiểu dáng pha trộn các sắc thái đậm của vàng, đỏ và xanh lá cây, tạo ra một phong cách color blocking. Cô mặc áo đỏ với quần vàng, kết hợp với túi Cassete xanh của Bottega Veneta, một trong những món đồ được yêu thích nhất vào thời điểm hiện tại và trị giá khoảng 3.400 đô la.</p>\r\n<p>Color blocking trở nên nổi tiếng chủ yếu vào những năm 70 và 80 dưới bàn tay của nhà tạo mẫu Stephen Burrows. Trong 10 năm qua, nó thường được nhìn thấy trên sàn diễn của các thương hiệu lớn như Gucci và Brandon Maxwell.</p>', '2021-04-13'),
(2, 'Đỗ Mỹ Linh mặc suit với phong cách mới', '16.jpg', '<p>Đỗ Mỹ Linh trở thành \"nàng thơ\" trong bộ hình kỷ niệm 10 năm làm nghề của nhiếp ảnh gia Huy Nguyễn (Xâu Béo).</p>\r\n\r\n<p>Hoa hậu Đỗ Mỹ Linh được biết tới với hình ảnh nhẹ nhàng, nữ tính và thanh lịch. Vì thế, cô được công chúng đánh giá là người đẹp có gu thời trang quá an toàn. Tuy nhiên, thời gian gần đây, nàng hậu Hà thành đã có sự thay đổi đáng kể về phong cách thời trang.</p>\r\n\r\n<p>Vẫn duy trì vẻ đẹp gợi cảm chừng mực nhưng Đỗ Mỹ Linh có lựa chọn đa dạng hơn về cách thể hiện. Sự trẻ trung và năng động được cô ứng dụng hiệu quả khi có sự hỗ trợ từ ê kíp bao gồm stylist, chuyên gia trang điểm và làm tóc. Một Đỗ Mỹ Linh với phong cách mới mang tới sự thích thú cho người hâm mộ.</p>\r\n\r\n', '2021-04-14'),
(3, 'Louis Vuitton tái tạo chiếc túi xách Capucines cùng các nghệ sĩ đương đại\r\n', '17.jpg', '<p>Louis Vuitton đã mời sáu nghệ sĩ sử dụng túi xách Capucines của mình như một tấm vải trống và làm lại nó cho khách hàng hiện đại. Paola Pivi, Zeng Fanzhi, Vik Muniz, Donna Huanca, Huang Yuxing và Gregor Hildebrandt đều thay phiên nhau tô điểm cho chiếc túi bằng tác phẩm nghệ thuật của họ.</p>\r\n\r\n<p>Chiếc túi Capucines được đặt theo tên của Rue Neuve-des-Capucines, con phố ở Paris, nơi người sáng lập Louis Vuitton mở cửa hàng đầu tiên của mình vào năm 1854. Bộ sưu tập Artycapucines năm 2021 là chiếc thứ ba trong bộ và mỗi chiếc túi sẽ là một sản phẩm phiên bản giới hạn, với chỉ có 200 chiếc cho mọi kiểu dáng được thực hiện.</p>\r\n\r\n<p>Chiếc túi Capucines ban đầu được ra mắt trong bộ sưu tập Thu/Đông 2013 của Louis Vuitton, và kể từ đó trở thành mặt hàng chủ lực của thương hiệu. Mặt trước có chữ \"LV\" bằng kim loại lồng vào nhau. Nó đi kèm với dây đeo có thể tháo rời và phần cứng gợi nhớ đến những chiếc rương cổ điển của Louis Vuitton. Túi Capucines có thể đeo trên tay hoặc đeo chéo.</p>', '2021-04-13'),
(4, 'Tủ quần áo Chanel quý phái hoàn thiện phong cách công nương Diana màn ảnh', '18.jpg', '<p>Khi “Spencer”, bộ phim mới của Pablo Lorraín với sự tham gia của Kristen Stewart, bắt đầu đưa ra những chi tiết nhỏ về trang phục, các tín đồ thời trang trên khắp thế giới đã khá tò mò khi quan sát số lượng trang phục Chanel có trong tủ quần áo của Công nương Diana.</p>\r\n\r\n<p> Giờ đây, thương hiệu Pháp vừa chính thức công bố quan hệ đối tác với bộ phim sẽ đến các rạp chiếu phim toàn quốc vào ngày 5 tháng 11. Sự hợp tác này là một phần trong cam kết của Chanel trong việc theo dõi và hỗ trợ việc làm phim và trong trường hợp này là câu chuyện về một biểu tượng, Công nương Diana, do đại sứ của thương hiệu thủ vai</p>\r\n\r\n<p>Để có sự biến đổi tuyệt đẹp, Stewart đã miêu tả Công nương xứ Wales trong câu chuyện kể về những sự kiện hư cấu khi Diana gia nhập hoàng gia ở Sandringham vào dịp Giáng sinh vào đầu những năm 1990 gần khi kết thúc cuộc hôn nhân của cô với Hoàng tử xứ Wales. Những bộ cánh sang trọng tuyệt vời chính là điểm thu hút của nhân vật trong phim.</p>\r\n\r\n<p>Trong phim, cô mặc trang phục và trang sức của Chanel, đặc biệt là bộ váy dạ hội organza màu be với chất liệu sequins bằng vàng và bạc, vốn thuộc bộ sưu tập Haute Couture Xuân/Hè 1988. Các buổi làm việc cho thương hiệu yêu cầu tổng cộng 1.034 giờ làm việc (700 giờ chỉ thêu!) bởi năm thợ may toàn thời gian.</p>\r\n\r\n<p>Stewart cũng mặc một chiếc áo khoác vải tuýt màu đỏ với phần cổ được thiết kế riêng từ bộ sưu tập Thu/Đông 1988. Dưới đây, bạn sẽ khám phá thêm chi tiết về ngoại hình sẽ sớm được nhìn thấy trên màn ảnh rộng.</p>\r\n\r\n', '2021-04-13'),
(5, 'Beyoncé kích thích thị giác với thiết kế khoét xẻ', '20.jpg', '<p>Beyoncé Giselle Knowles (sinh năm 1981), được biết đến với nghệ danh Beyoncé, là một nghệ sỹ thu âm nhạc R&B, diễn viên và nhà thiết kế thời trang người Mỹ.\r\n\r\nKhông sở hữu chiều cao lý tưởng nhưng lợi thế của Beyoncé chính là vẻ ngoài bốc lửa với 3 vòng chuẩn mực 89-66-99 (cm). Nét đẹp đó toát ra từ làn da nâu bóng giòn, từ ánh mắt, gương mặt đẹp từng centimet và thân hình săn chắc. Chính vì thế, cũng như bao ngôi sao khác, Beyoncé không ngừng phô diễn hình thể với những item mang tính thách thức thị giác người đối diện.</p>\r\n\r\n<p>Beyoncé vừa đăng tải bộ ảnh mới lên trang Instagram cá nhân. Trong ảnh, nữ ca sỹ 40 tuổi mặc chiếc váy hai dây mix màu đen và xanh lá. Chiếc váy khoét sâu để lộ vòng 1 đẫy đà của người đẹp một cách vô cùng táo bạo. Điều đáng nói là dù mặc váy xẻ cao vút nhưng nữ ca sỹ R&B lại có tư thế tạo dáng nhấc chân lên cao để lộ nội y. Dù đây không phải là lần mặc bạo hiếm hoi của Beyoncé nhưng vẫn khiến nhiều người hâm mộ ý kiến.</p>\r\n<p>Từ khi ghi tên vào làng giải trí thế giới, Beyoncé đã định hình cho mình phong cách thời trang gợi cảm, thậm chí là gây sốc. Cô tận dụng triệt để mọi lúc, mọi nơi để phô phang hình thể qua những bộ váy áo kiệm vải, xẻ sâu hoặc khoét rộng. Mỗi sự xuất hiện của cô đều làm báo chí tốn nhiều giấy mực. Nhưng hơn cả, trong suốt chặng đường sự nghiệp của mình, phong cách thời trang của Beyoncé đã dần đẳng cấp hơn và vươn lên trở thành biểu tượng cho nữ quyền với những bộ cánh vô cùng đặc sắc, mang đậm dấu ấn cá nhân</p>', '2021-04-14'),
(6, 'Thời trang thiết kế Liin và một vài nhận định về xu hướng thời trang thu đông năm 2021', '21.jpg', '<p>Được thành lập từ năm 2015, cho đến nay, Liin.vn đã sở hữu đội ngũ nhân viên thiết kế có nhiều năm kinh nghiệm trong nghề, nhạy bén với xu hướng thời trang trên thị trường. Vì vậy, khi được nhắc đến xu hướng thời trang thu đông năm 2021 sắp tới, chị Thảo Vũ - người sáng lập nên thương hiệu thời trang Liin.vn đã có những chia sẻ, những nhận định về xu hướng thời trang nổi bật trong năm nay.</p>\r\n\r\n<p>Kết hợp các trang phục có màu sắc trung tính\r\nThu - đông là mùa lạnh nên sẽ không quá xa lạ nếu màu sắc trung tính chiếm được ưu thế hơn hẳn trong xu hướng thời trang. Cụ thể, Liin.vn có thể kể đến một vài màu sắc nổi bật như màu xám, ghi, nâu, cam đất…\r\nNhiều bạn nữ thường lo rằng trang phục có màu trung tính sẽ khiến mình không được nổi bật, tuy nhiên đây là một nhận định hoàn toàn sai lầm. Gam màu trung tính này sẽ đem đến cho người nhìn cảm giác đơn giản nhưng lại đặc biệt ấm áp, màu sắc này không quá nóng nực như màu đỏ rực rỡ nhưng chúng chẳng lạnh lẽo như màu đen huyền bí. Vì vậy, gam màu trung tính chắc chắn sẽ đem đến cho bạn xu hướng thời trang thu đông nữ tính và hiện đại.</p>\r\n\r\n<p>Thời trang thu đông với họa tiết cổ điển\r\n\r\nCó thể nói, họa tiết cổ điển là phong cách thời trang thu đông chưa bao giờ hết hot trong những năm gần đây và chắc chắn trong năm 2021 phong cách này vẫn “làm mưa làm gió” trên thị trường. Chúng ta có thể nhắc đến một số họa tiết đặc trưng như họa tiết kẻ, họa tiết cây cối, họa tiết mang phong cách houndstooth…\r\n\r\nVới phong cách thời trang này, Liin.vn tin chắc rằng bạn sẽ dễ dàng hóa thân thành những cô gái thanh lịch mang đậm phong cách thời trang châu Âu. </p>\r\n<p>Sử dụng trang phục có chất liệu ấm áp\r\n\r\nMặc dù thẩm mỹ đóng vai trò rất quan trọng nhưng bạn cũng đừng quên rằng chúng ta cần giữ ấm cho bản thân. Đây là điều đặc biệt quan trọng nên Liin.vn khuyên rằng nếu thời tiết quá lạnh thì bạn nên sử dụng trang phục có chất liệu ấm áp như áo len, áo lông vũ. Những trang phục này không những vừa toát lên được sự ấm áp mà còn đảm bảo được tính thẩm mỹ.\r\nCụ thể, chúng ta nên kết hợp áo giữ nhiệt với chân váy dáng dài cùng một chiếc măng tô hoặc áo dạ dáng dài để vừa giữ ấm cho cơ thể, vừa toát lên sự sang trọng, quý phái. Ngoài ra, áo len bản to ấm áp kết hợp cùng quần jean cũng là một sự lựa chọn lý tưởng.\r\n\r\nHy vọng qua những chia sẻ về xu hướng thời trang thu đông được chia sẻ bởi thời trang thiết kế Liin.vn, bạn đọc đã có những cảm nhận nhất định về xu hướng thời trang nữ trong thời gian sắp tới. Từ đó lựa chọn những trang phục phù hợp nhất với xu hướng thời trang trên thị trường. </p>', '2021-04-15'),
(7, 'HỌC CÁC CÔ NÀNG BLACKPINK CÔNG THỨC “LÊN ĐỒ” THỜI THƯỢNG CÙNG ÁO HOODIE', '22.jpeg', '<p>Vượt xa ngoài công dụng giữ ấm ban đầu, khả năng “hòa hợp” với đa dạng các xu hướng đã khiến kiểu áo nỉ trùm đầu trở thành một người bạn quen mặt “từ nhà ra phố” thích hợp trong nhiều hoàn cảnh. Không chỉ vậy, áo hoodie còn là một trong những item “đinh” làm nên các bản phối thời thượng của những “trendsetter” (người tạo nên xu hướng) xứ Hàn, trong đó có các cô nàng BLACKPINK sành điệu. Từ phong cách menswear, sporty-chic cho đến thời trang học đường,… tất cả đều được những “chuyên gia” về áo hoodie mở khóa bằng gu thẩm mỹ tinh tế và nhạy bén của mình.</p>\r\n\r\n<p>LINH HOẠT VỚI NHỮNG MÓN PHỤ KIỆN CHO TÓC VÀ NÓN\r\nThêm một chiếc mũ không bao giờ là thừa khi bạn biết cách phối hợp nhịp nhàng với những chiếc áo nỉ trùm đầu. Bất kể mũ lưỡi chai, mũ xô, beanie,… những cô nàng BLACKPINK luôn khéo léo giải quyết đề toán áo hoodie cộng mũ gọn gàng mà vẫn “sành điệu”. Thoát khỏi những màu mũ an toàn như trắng hoặc đen, bản phối monochrome với những gam màu mới lạ hơn sẽ đem đến một làn gió mới cho phong cách thường ngày của bạn. </p>\r\n\r\n<p>Jennie lại mang đến “hơi thở” của thập niên 90 với chiếc băng đô (headband) thể thao cá tính. Đây được xem như công thức mang tính sporty-chic khoẻ khoắn bởi phom dáng năng động vốn có của cả hai món đồ thời trang này. Không chỉ giúp “sưởi ấm” phần tai và đầu, chiếc headband bằng len còn khéo léo giữ nếp tóc cho cô nàng sau những lịch trình hoạt động liên tục.</p>', '2021-04-15'),
(8, 'PHONG CÁCH THỜI TRANG Y2K – SỰ TRỞ LẠI CỦA MỘT THỜI HOÀNG KIM', '23.jpg', '<p>Y2K, viết tắt của “Year 2000”, là thuật ngữ nói về sự cố công nghệ phát sinh vào cuối 1999, khi máy tính thế hệ cũ gặp khó khăn trong việc lưu trữ dữ liệu trong thiên nhiên kỷ mới. Thường gắn liền với những năm đầu của thế kỷ 21, phong cách thời trang Y2K chịu ảnh hưởng của những thay đổi đến từ bước tiến công nghệ. Không chỉ hướng đến vẻ hiện đại và gợi cảm, thời trang Y2K còn đại diện cho hy vọng về một thời đại thịnh vượng và phát triển hơn. Thử nghiệm phong cách, liên tục thay đổi hình ảnh nhưng vẫn làm nổi bật cá tính bản thân là những ưu tiên của tín đồ thời trang lúc bấy giờ.</p>\r\n\r\n<p>Phong cách Y2K trở lại trong thế giới thời trang năm nay một phần do tác động của đại dịch COVID-19, khi toàn xã hội được khuyến khích sinh hoạt và làm việc tại nhà. Những thay đổi nhanh chóng về cách sống và sự phụ thuộc vào công nghệ khiến nhiều người căng thẳng, lo lắng tương tự như 20 năm trước. Bên cạnh đó, xu hướng mua đồ secondhand ngày càng phổ biến cũng là một yếu tố mang những thiết kế của những năm 2000 trở lại trong vòng xoay thời trang.</p>\r\n\r\n', '2021-04-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `price` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `pricenew` float NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `groupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `detail`, `price`, `soluong`, `image`, `pricenew`, `updated_at`, `status`, `groupid`) VALUES
(1, 'Dress with Sleeves', '', 350000, 100, './dress/dress1.jpg', 280000, '2021-05-07 17:59:39', 1, 1),
(2, 'Women\'s Dress with Off-Shoulder', '', 390000, 99, './dress/dress2.jpg', 350000, '2021-04-13 07:49:00', 1, 1),
(3, 'Summer Dress with High Waist for Women', '', 600000, 99, './dress/dress3.jpg', 550000, '2021-04-13 07:49:00', 1, 1),
(5, 'Women\'s Blue Floral Maxi Dress with Puffy Sle', '', 500000, 100, './dress/dress4.jpg', 470000, '2021-04-13 07:49:00', 1, 1),
(6, 'Women\'s Blue Floral Maxi Dress with Puffy Sleeves', '', 390000, 93, './dress/dress5.jpg', 350000, '2021-04-13 07:49:00', 1, 1),
(7, 'Flat Shoulder Women\'s Dresses', '', 500000, 99, './dress/dress6.jpg', 450000, '2021-04-13 07:49:00', 1, 1),
(8, 'Collarless Floral Dress with Sleeves', '', 500000, 90, './dress/dress7.jpg', 450000, '2021-05-07 17:51:40', 1, 1),
(9, 'Sleeveless Dress with Puffy Sleeves', '', 550000, 99, './dress/dress8.jpg', 520000, '2021-04-13 07:49:00', 1, 1),
(10, 'Long Sleeveless Dress With Embroidered Roses On The Shoulders', '', 200000, 100, './dress/dress9.jpg', 179000, '2021-04-13 07:49:00', 1, 1),
(12, 'Pleated Party Dress for Women in White', '', 520000, 50, './dress/dress10.jpg', 400000, '2021-04-13 07:49:00', 1, 1),
(13, 'Shirt with a V neck and no sleeves', '', 200000, 100, './shirt/shirt1.jpg', 285000, '2021-04-13 07:49:00', 1, 2),
(14, 'Shirts with Bow Tie', '', 500000, 99, './shirt/shirt2.jpg', 45000, '2021-04-13 07:49:00', 1, 2),
(15, 'Chiffon T-shirt for Women with Short Sleeves', '', 350000, 100, './shirt/shirt3.jpg', 320000, '2021-04-13 07:49:00', 1, 2),
(16, 'Plaid Tops for Women, Loose', '', 35000, 99, './shirt/shirt4.jpg', 30000, '2021-04-13 07:49:00', 1, 2),
(17, 'Croptop with a short sleeve and a square collar', '', 300000, 100, './shirt/shirt5.jpg', 15000, '2021-04-13 07:49:00', 1, 2),
(18, 'Square Collar Shirt with Puffy Sleeves', '', 350000, 100, './shirt/shirt6.jpg', 320000, '2021-04-13 07:49:00', 1, 2),
(19, 'Shirt with a Chunky Waist and a Sleeveless Square Collar', '', 350000, 100, './shirt/shirt7.jpg', 320000, '2021-04-13 07:49:00', 1, 2),
(20, 'Croptop with Buttons', '', 370000, 100, './shirt/shirt8.jpg', 350000, '2021-04-13 07:49:00', 1, 2),
(21, 'loose tee Sleeveless Wide Form BUSTED', '', 450000, 100, './shirt/shirt9.jpg', 420000, '2021-04-13 07:49:00', 1, 2),
(22, 'Charcoal Women\'s Hoodie', '', 400000, 100, './shirt/shirt10.jpg', 200000, '2021-04-13 07:49:00', 1, 2),
(23, 'Trousers for Women, Baggy', '', 350000, 100, './pants/pants1.jpg', 350000, '2021-04-13 07:49:00', 1, 3),
(24, 'Women\'s Trousers with Wide Legs', '', 100000, 100, './pants/pants2.jpg', 90000, '2021-04-13 07:49:00', 1, 3),
(25, 'Striped Women\'s Pants', '', 270000, 95, './pants/pants3.jpg', 250000, '2021-04-13 07:49:00', 1, 3),
(26, 'Flared Trousers for Women', '', 400000, 100, './pants/pants4.jpg', 390000, '2021-04-13 07:49:00', 1, 3),
(27, 'Women\'s Kaki Pants with High Waist', '', 350000, 100, './pants/pants5.jpg', 350000, '2021-04-13 07:49:00', 1, 3),
(28, 'Khaki Pants for Women', '', 500000, 100, './pants/pants6.jpg', 470000, '2021-04-13 07:49:00', 1, 3),
(29, 'Pants with a Box Bag for Women', '', 250000, 100, './pants/pants7.jpg', 220000, '2021-04-13 07:49:00', 1, 3),
(31, 'Women\'s Jeans that Have Been Torned', '', 320000, 100, './pants/pants8.jpg', 400000, '2021-04-13 07:49:00', 1, 3),
(33, 'Jeans for Women with Overalls', '', 500000, 100, './pants/pants9.jpg', 470000, '2021-04-13 07:49:00', 1, 3),
(34, 'Short Jeans for Women', '', 190000, 100, './pants/pants10.jpg', 179000, '2021-04-13 07:49:00', 1, 3),
(35, 'Wide-brimmed women\'s beach hat', '', 250000, 100, './orthers/orthers1.jpg', 250000, '2021-04-13 07:49:00', 1, 4),
(36, 'Hat with a broad brim in black', '', 400000, 100, './orthers/orthers2.jpg', 390000, '2021-04-13 07:49:00', 1, 4),
(37, 'Embroidered Lazy Hat in Live Wallpaper', '', 470000, 100, './orthers/orthers3.jpg', 250000, '2021-04-13 07:49:00', 1, 4),
(38, 'Bows on Women\'s Handbags', '', 320000, 100, './orthers/orthers4.jpg', 680000, '2021-04-13 07:49:00', 1, 4),
(39, 'Crossbody Bag in Rectangular Leather', '', 300000, 100, './orthers/orthers5.jpg', 70000, '2021-04-13 07:49:00', 1, 4),
(40, 'Underarm Clips for Women\'s Bags', '', 400000, 99, './orthers/orthers6.jpg', 390000, '2021-04-13 07:49:00', 1, 4),
(41, 'Blue Turban', '', 350000, 99, './orthers/orthers7.jpg', 320000, '2021-04-13 07:49:00', 1, 4),
(42, 'High Heels with Bows, Black Pointed Toe', '', 320000, 97, './orthers/orthers8.jpg', 650000, '2021-04-13 07:49:00', 1, 4),
(43, 'MLB LA Dodgers Sneakers Padded Shoe', '', 350000, 100, './orthers/orthers9.jpg', 320000, '2021-04-13 07:49:00', 1, 4),
(44, 'Strapped Sandal for Women', '', 400000, 96, './orthers/orthers10.jpg', 380000, '2021-04-13 07:49:00', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `namesize` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `namesize`, `description`) VALUES
(1, 'S', ''),
(2, 'M', ''),
(3, 'L', ''),
(4, 'XL', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(1) NOT NULL,
  `username` varchar(200) NOT NULL,
  `tinhtrang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `address`, `phone`, `created_at`, `updated_at`, `position`, `username`, `tinhtrang`) VALUES
(1, 'Thái Huỳnh Như Ý ', '25f9e794323b453885f5181f1b624d0b', 'nhuyhuynh123@gmail.com', 'TPHCM', '0964635913', '2021-04-23 18:18:27', '2021-12-16 19:06:55', 1, 'nhuyhuynh123', 0),
(2, 'Hồ Bảo Trân ', '659ae7b7a6aeb65d00346f1afeaff123', '123456789', 'TPHCM', '0384054122', '2021-04-23 18:19:27', '2021-05-14 21:28:06', 2, 'tranho123', 0),
(3, 'Lý Lê Trung ', 'e10adc3949ba59abbe56e057f20f883e', 'chunchun123@gmail.com', 'TPHCM', '0168405412', '2021-04-23 18:18:27', '2021-12-18 21:14:01', 2, 'chunchun123', 0),
(4, 'mi mi', 'e10adc3949ba59abbe56e057f20f883e', 'nhuyhuynh@gmail.com', 'TPHCM', '5166262623', '2021-05-14 20:53:45', '2021-11-05 20:00:32', 1, 'hotran123', 1),
(5, 'a', 'e10adc3949ba59abbe56e057f20f883e', 'abc@gmail.com', 'a', '0164975616', '2021-05-15 07:17:52', '2021-05-15 07:17:52', 2, 'a', 1),
(6, 'như ý ', 'e10adc3949ba59abbe56e057f20f883e', 'nhuyhuynh@gmail.com', 'bhhA,bt', '0168795426', '2021-12-16 20:36:52', '2021-12-17 14:38:04', 2, 'hahaha', 0),
(7, 'Phạm Thị Ngọc Trâm', 'e10adc3949ba59abbe56e057f20f883e', '', 'vĩnh lộc', '0168945685', '2021-12-16 22:47:25', '2021-12-16 22:55:51', 2, 'trampham123', 0),
(8, 'Nguyễn Thị Tuyết', 'e10adc3949ba59abbe56e057f20f883e', '', 'Tân phú', '0168945632', '2021-12-16 22:52:42', '2021-12-16 22:52:42', 2, 'tuyetnguyen123', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `groupsp`
--
ALTER TABLE `groupsp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
