-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 17, 2023 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewelry_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `date_created`) VALUES
(1, 'Nhẫn', '<h2 style=\"margin: 10px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; outline: none;\"><span style=\"color: rgb(51, 51, 51); font-family: Helvetica; font-size: 14px;\">Sở hữu thiết kế đủ mềm mại nhưng lại đầy quyền năng, đủ phá cách như cho một sự khác lạ, vừa mang nét hiện đại, trẻ trung bởi sự rành mạch trong đường nét, lại vừa giữ được sự mềm mại, kiêu sa giữa sự ngẫu hứng cùng v</span><span style=\"color: rgb(51, 51, 51); font-family: Helvetica; font-size: 14px;\">﻿</span><span style=\"font-family: Helvetica; font-size: 14px;\"><font color=\"#333333\">àng và đá, nhẫn </font><u style=\"\"><font color=\"#0000ff\">Hà Đây</font></u><font color=\"#333333\"> sẽ mang lại cho bạn cảm giác</font></span><span style=\"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px;\">&nbsp;ấn tượng như người phụ nữ trưởng thành với phong cách và con đường riêng để khẳng định bản ngã của chính mình.</span></h2>', '0000-00-00 00:00:00'),
(2, 'Dây chuyền', '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"><span style=\"font-family: Helvetica; font-size: 14px;\">Sợi&nbsp;</span><a href=\"https://www.pnj.com.vn/\" https:=\"\" www.pnj.com.vn=\"\" day-chuyen=\"\" day-chuyen-vang-bac=\"\" day-chuyen-vang=\"\" ?itm_source=\"pdp&amp;itm_medium=daychuyenvang&amp;itm_campaign=&amp;itm_content=&quot;&quot;\" color:#1500dd;=\"\" font-weight:=\"\" 400;\"\"=\"\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;\"><span style=\"font-family: Helvetica;\">dây chuyền</span></a><span style=\"font-family: Helvetica; font-size: 14px;\">&nbsp;chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng.&nbsp;</span><span style=\"font-family: Helvetica; font-size: 14px;\">Dù diện lên bộ cánh dạ tiệc hay đơn giản là oufit thường ngày, chiếc dây chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh và khơi gợi ánh nhìn xung quanh.</span></span>', '0000-00-00 00:00:00'),
(3, 'Bông tai', '<a href=\"https://www.pnj.com.vn/bong-tai/bong-tai-vang/?atm_source=pdp&amp;atm_medium=bongtaivang&amp;atm_campaign=&amp;atm_content=\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: blue; outline: none; cursor: pointer; transition: all 150ms ease 0s;\">Đôi bông tai </a><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><font color=\"#000000\">quý phái kết hợp cùng trang phục thanh lịch sẽ tạo nên một diện mạo chỉn chu nhưng không kém phần nổi bật. Với sự lộng lẫy đầy cuốn hút này, trang sức ngọc trai của </font><font color=\"#ff0000\"><u>Hà Đây</u></font><font color=\"#000000\"> sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường.</font></span>															', '0000-00-00 00:00:00'),
(4, 'Nhẫn cưới', '<p style=\"margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black\">Không chỉ\r\nlà vật đính ước,&nbsp;<a href=\"https://www.pnj.com.vn/trang-suc-cuoi/nhan/?itm_source=pdp&amp;itm_medium=nhancuoivang&amp;itm_campaign=&amp;itm_content=\" style=\"outline: none;cursor:pointer;transition: all 150ms ease 0s\"><span style=\"color: rgb(21, 0, 221);\">nhẫn cưới</span></a>&nbsp;còn\r\nlà ngôn ngữ của tình yêu. Ti mỉ trong việc tinh tuyển từng viên đá trắng tinh\r\ntế đến ánh kim rực rỡ của vàng và bạc trên thiết kế thời thượng, nhẫn cưới toát\r\nlên sự tinh tế và sang trọng, phù hợp với gu thẩm mỹ của cả nam và nữ.&nbsp;</span><span style=\"color: black; font-family: Arial, sans-serif; font-size: 10.5pt;\">Không chỉ\r\nsở hữu vẻ đẹp hoàn hảo, nhẫn cưới còn mang ý nghĩa là lời nhắn gửi yêu thương\r\nvà mong ước được gắn kết bền lâu mãi mãi.</span></p>															', '0000-00-00 00:00:00'),
(5, 'Lắc', '								<span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;\">Một chiếc vòng tay hay chiếc lắc bạc nhỏ xinh sẽ là những phụ kiện ưu tiên hàng đầu của các nàng. Sở hữu thiết kế đính đính đá khi kết hợp cùng những bộ cánh dạo phố hay tiệc tùng, </span><a href=\"https://www.pnj.com.vn/\" https:=\"\" itm_source=\"pdp&itm_medium=stylebypnj&itm_campaign=&itm_content=\"\"\" stylebypnj=\"\" www.pnj.com.vn=\"\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;\">Style By </a><font color=\"#0000ff\"><u>Hà Đây</u></font><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;\"> tin chắc rằng, nàng sẽ trông thật sự nổi bật và thu hút sự chú ý xung quanh.</span>																						', '0000-00-00 00:00:00'),
(6, 'Vòng', '<div style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;\"><font color=\"#000000\">Chiếc&nbsp;</font><a href=\"https://www.pnj.com.vn/\" https:=\"\" itm_source=\"pdp&amp;itm_medium=vongtayvang&amp;itm_campaign=&amp;itm_content=&quot;&quot;\" lac-vong-tay=\"\" vong-tay=\"\" vong-tay-vang=\"\" www.pnj.com.vn=\"\" style=\"color: rgb(77, 77, 77); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: none; cursor: pointer; transition: all 150ms ease 0s;\">vòng tay </a><font color=\"#0000ff\"><u>Hà Đây</u></font><font color=\"#000000\"> sở hữu sự cứng cáp của vàng Ý được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ&nbsp;</font><a href=\"https://www.pnj.com.vn/\" https:=\"\" itm_source=\"pdp&amp;itm_medium=trangsucy&amp;itm_campaign=&amp;itm_content=&quot;&quot;\" trang-suc-italy=\"\" trang-suc-vang=\"\" www.pnj.com.vn=\"\" style=\"color: rgb(77, 77, 77); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: none; cursor: pointer; transition: all 150ms ease 0s;\">trang sức Ý</a><font color=\"#000000\">, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.</font></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;\"><span style=\"color: rgb(0, 0, 0);\">Thêm vào đó, với thiết kế tinh xảo của vòng tay, nàng sẽ bất ngờ khi phối với các bộ trang phục như suit công sở hay những chiếc đầm dạo phố. Với các điểm nhấn trên sản phẩm, </span><font color=\"#0000ff\"><u>Hà Đây</u></font><font color=\"#000000\"> tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.</font></p></div>															', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colours`
--

CREATE TABLE `colours` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `color` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `colours`
--

INSERT INTO `colours` (`id`, `product_id`, `color`, `date_created`) VALUES
(1, 2, 'Silver', '2020-11-12 13:00:31'),
(2, 2, 'Gold', '2020-11-12 13:00:31'),
(3, 3, 'Bạc', '2020-11-12 13:36:42'),
(4, 4, 'Vàng', '2020-11-12 13:49:10'),
(5, 5, '', '2020-11-12 13:49:40'),
(6, 6, 'Bạc', '2023-05-17 17:32:40'),
(7, 7, 'Vàng', '2023-05-17 17:42:31'),
(8, 8, 'Vàng', '2023-05-17 17:50:59'),
(9, 9, 'Trắng', '2023-05-17 17:56:17'),
(10, 10, 'Vàng', '2023-05-17 18:33:46'),
(11, 11, 'Bạc', '2023-05-17 18:47:36'),
(12, 12, 'Bạc', '2023-05-17 18:49:38'),
(13, 13, 'Vàng', '2023-05-17 18:53:47'),
(14, 14, 'Vàng', '2023-05-17 18:57:33'),
(15, 15, 'Vàng', '2023-05-17 19:03:54'),
(16, 16, 'Bạc', '2023-05-17 19:07:14'),
(17, 17, 'Bạc', '2023-05-17 19:09:54'),
(18, 18, 'Vàng', '2023-05-17 19:16:37'),
(19, 19, 'Vàng', '2023-05-17 19:21:06'),
(20, 20, 'Kim cương + vàng', '2023-05-17 19:27:27'),
(21, 21, 'Vàng trắng', '2023-05-17 19:33:45'),
(22, 22, '', '2023-05-17 19:37:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `user_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `ref_id`, `user_id`, `delivery_address`, `status`, `date_created`) VALUES
(3, 'BeI9CNuFLTZQ2dUa', 2, 'Hà Nội', 0, '2023-04-27 23:18:23'),
(8, 'EdmnhYkybMZ6Dxl4', 1, 'Hà Nội', 0, '2023-05-17 20:14:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `date_created`) VALUES
(4, 3, 5, 5, 8, 1, 3500, '2023-04-27 23:18:23'),
(11, 8, 4, 4, 6, 1, 1500, '2023-05-17 20:14:37'),
(12, 8, 15, 15, 23, 1, 10654, '2023-05-17 20:14:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `item_code`, `price`, `date_created`) VALUES
(2, 1, 'Nhẫn vàng trắng 18k đính đá', '																&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;\r\nChất liệu: \r\nV&agrave;ng\r\nThương hiệu:\r\nPNJ\r\nVượt qua h&agrave;nh tr&igrave;nh m&agrave;i giũa dưới b&agrave;n tay của c&aacute;c nghệ nh&acirc;n, kim cương gắn liền với biểu tượng của t&igrave;nh y&ecirc;u thủy chung, son sắt. Với sắc v&agrave;ng 18K rực rỡ c&ugrave;ng vẻ đẹp lấp l&aacute;nh v&agrave; tinh khiết của kim cương, PNJ mang đến nhẫn v&agrave;ng hiện đại nhưng vẫn giữ được n&eacute;t truyền thống vốn c&oacute;.\r\n\r\nKh&ocirc;ng chỉ c&oacute; vai tr&ograve; l&agrave; vật đ&iacute;nh ước thi&ecirc;ng li&ecirc;ng, nhẫn cưới kim cương c&ograve;n thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của mỗi cặp đ&ocirc;i. Tại PNJ, c&aacute;c cặp đ&ocirc;i lu&ocirc;n c&oacute; thể sở hữu những thiết kế nhẫn cưới kim cương vừa hợp l&iacute; về t&agrave;i ch&iacute;nh, vừa đẹp về mẫu m&atilde;..&lt;/p&gt;																													', 'JCSMmyV453K7xEg9', 3500, '2020-11-12 12:13:24'),
(3, 2, 'Dây chuyền bạc mặt cỏ 3 lá', '																&lt;h1 style=&quot;margin: 0cm 0cm 3.75pt; font-family: &amp;quot;Source Sans Pro&amp;quot;, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; color: rgb(33, 37, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size: 11.5pt; font-family: Arial, sans-serif; color: rgb(70, 70, 70); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;D&acirc;y chuyền bạc lu&ocirc;n l&agrave; m&oacute;n trang sức v&ocirc; c&ugrave;ng hấp dẫn v&agrave; kh&ocirc;ng thể thiếu của c&aacute;c c&ocirc; g&aacute;i. D&acirc;y c&oacute; thiết kiểu d&acirc;y đan kiểu chữ cong, chất liệu bạc cao cấp 925 được H&agrave; Đ&acirc;y Jewelry nhập khẩu v&agrave; nguồn gốc r&otilde; r&agrave;ng gi&uacute;p c&aacute;c n&agrave;ng y&ecirc;n t&acirc;m khi sử dụng n&oacute; m&agrave; kh&ocirc;ng sợ bị k&iacute;ch ứng da, dị ứng hay mẫn đỏ (ngoại trừ da bạn rất cực kỳ nhạy cảm)&lt;/span&gt;&lt;/h1&gt;														', 'b9qSY10cfy7uPmI6', 3500, '2020-11-12 13:36:42'),
(4, 1, 'Nhẫn vàng đính đá 01', '								&lt;h2 style=&quot;margin: 10px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 18px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(33, 37, 41); padding: 0px; outline: none;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica; font-size: 14px;&quot;&gt;Sở hữu thiết kế đủ mềm mại nhưng lại đầy quyền năng, đủ ph&aacute; c&aacute;ch như cho một sự kh&aacute;c lạ, vừa mang n&eacute;t hiện đại, trẻ trung bởi sự r&agrave;nh mạch trong đường n&eacute;t, lại vừa giữ được sự mềm mại, ki&ecirc;u sa giữa sự ngẫu hứng c&ugrave;ng v&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica; font-size: 14px;&quot;&gt;﻿&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: 14px;&quot;&gt;&lt;font color=&quot;#333333&quot;&gt;&agrave;ng v&agrave; đ&aacute;, nhẫn&amp;nbsp;&lt;/font&gt;&lt;u&gt;&lt;font color=&quot;#0000ff&quot;&gt;H&agrave; Đ&acirc;y&lt;/font&gt;&lt;/u&gt;&lt;font color=&quot;#333333&quot;&gt;&amp;nbsp;sẽ mang lại cho bạn cảm gi&aacute;c&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px;&quot;&gt;&amp;nbsp;ấn tượng như người phụ nữ trưởng th&agrave;nh với phong c&aacute;ch v&agrave; con đường ri&ecirc;ng để khẳng định bản ng&atilde; của ch&iacute;nh m&igrave;nh.&lt;/span&gt;&lt;/h2&gt;							', 'NoHid3pArPCSqTEk', 1500, '2020-11-12 13:49:10'),
(5, 2, 'Dây chuyền bạc 5KygmkTuPLDaHRo', '&lt;h1 style=&quot;margin: 0cm 0cm 3.75pt; font-family: &amp;quot;Source Sans Pro&amp;quot;, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; color: rgb(33, 37, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size: 11.5pt; font-family: Arial, sans-serif; color: rgb(70, 70, 70); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;D&acirc;y chuyền bạc lu&ocirc;n l&agrave; m&oacute;n trang sức v&ocirc; c&ugrave;ng hấp dẫn v&agrave; kh&ocirc;ng thể thiếu của c&aacute;c c&ocirc; g&aacute;i. D&acirc;y c&oacute; thiết kiểu d&acirc;y đan kiểu chữ cong, chất liệu bạc cao cấp 925 được H&agrave; Đ&acirc;y Jewelry nhập khẩu v&agrave; nguồn gốc r&otilde; r&agrave;ng gi&uacute;p c&aacute;c n&agrave;ng y&ecirc;n t&acirc;m khi sử dụng n&oacute; m&agrave; kh&ocirc;ng sợ bị k&iacute;ch ứng da, dị ứng hay mẫn đỏ (ngoại trừ da bạn rất cực kỳ nhạy cảm)&lt;/span&gt;&lt;/h1&gt;', '5KygmkTuPLDaHRob', 3500, '2020-11-12 13:49:40'),
(6, 2, 'Dây chuyền sd0000k000023', '&lt;h1 style=&quot;margin: 0cm 0cm 3.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size: 11.5pt; font-family: Arial, sans-serif; color: rgb(70, 70, 70); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;D&acirc;y chuyền bạc lu&ocirc;n l&agrave; m&oacute;n trang sức v&ocirc; c&ugrave;ng\r\nhấp dẫn v&agrave; kh&ocirc;ng thể thiếu của c&aacute;c c&ocirc; g&aacute;i. D&acirc;y c&oacute; thiết kiểu d&acirc;y đan kiểu chữ\r\ncong, chất liệu bạc cao cấp 925 được H&agrave; Đ&acirc;y Jewelry nhập khẩu v&agrave; nguồn gốc r&otilde; r&agrave;ng\r\ngi&uacute;p c&aacute;c n&agrave;ng y&ecirc;n t&acirc;m khi sử dụng n&oacute; m&agrave; kh&ocirc;ng sợ bị k&iacute;ch ứng da, dị ứng hay mẫn\r\nđỏ (ngoại trừ da bạn rất cực kỳ nhạy cảm)&lt;/span&gt;&lt;span style=&quot;font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(76, 76, 76);&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h1&gt;															', 'g3JK6IleGEwMj7vA', 1000, '2023-05-17 17:32:40'),
(7, 1, 'Nhẫn vàng 18k đính đá gnxmxmy006396', '&lt;span style=&quot;font-size:10.5pt;line-height:107%;\r\nfont-family:&amp;quot;Arial&amp;quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;color:black;mso-ansi-language:EN-US;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA&quot;&gt;Được chế t&aacute;c từ v&agrave;ng 18K c&ugrave;ng vẻ đẹp huyền b&iacute; của vi&ecirc;n\r\nđ&aacute; Ruby, H&agrave; Đ&acirc;y mang đến sản phẩm&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:11.0pt;\r\nline-height:107%;font-family:&amp;quot;Calibri&amp;quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;&lt;a href=&quot;https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;amp;atm_medium=nhanvang&amp;amp;atm_campaign=&amp;amp;atm_content=&quot;&gt;&lt;span style=&quot;font-size:10.5pt;line-height:107%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;nhẫn&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5pt;line-height:107%;font-family:&amp;quot;Arial&amp;quot;,sans-serif;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;color:black;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;&amp;nbsp;sang\r\ntrọng v&agrave; quyến rũ d&agrave;nh cho ph&aacute;i nữ.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:11.0pt;\r\nline-height:107%;font-family:&amp;quot;Calibri&amp;quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA&quot;&gt;&lt;a href=&quot;https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-ruby/?atm_source=pdp&amp;amp;atm_medium=trangsucruby&amp;amp;atm_campaign=&amp;amp;atm_content=&quot;&gt;&lt;span style=&quot;font-size:10.5pt;line-height:107%;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Đ&aacute;\r\nRuby&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;font-size:10.5pt;line-height:107%;\r\nfont-family:&amp;quot;Arial&amp;quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;color:black;mso-ansi-language:EN-US;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA&quot;&gt;&amp;nbsp;sở hữu vẻ quyến rũ, khi được cộng hưởng &aacute;nh sắc của\r\nd&atilde;y đ&aacute; trắng lấp l&aacute;nh,&amp;nbsp;&lt;/span&gt;															', '3HkDARVl4CqnO7pc', 12300, '2023-05-17 17:42:31'),
(8, 1, 'Nhẫn vàng trắng đính ngọc trai', '&lt;p style=&quot;margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;Sở hữu\r\nthiết kế với những đường n&eacute;t hoa văn c&aacute;ch điệu kết hợp vi&ecirc;n ngọc trai Akoya\r\nđược đ&iacute;nh một c&aacute;ch tỉ mỉ, chiếc&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:#4D4D4D&quot;&gt;nhẫn H&lt;/span&gt;&lt;/a&gt;&agrave; Đ&acirc;y&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;&amp;nbsp;kho&aacute;c\r\nl&ecirc;n tr&ecirc;n m&igrave;nh vẻ đẹp đ&agrave;i c&aacute;c, ẩn chứa sức cuốn h&uacute;t đến m&ecirc; hồn.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;															', 'bUo3IQu7e9THgJsq', 10600, '2023-05-17 17:50:59'),
(9, 2, 'Dây chuyền vàng trắng 18k', '								&lt;p style=&quot;margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;Bằng việc\r\nkết hợp chất liệu v&agrave;ng &yacute; 18K c&ugrave;ng thiết kế tinh tế, sợi&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;\r\ncolor:#4D4D4D&quot;&gt;d&acirc;y chuyền&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size:10.5pt;font-family:\r\n&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;&amp;nbsp;ch&iacute;nh l&agrave; điểm nhấn nổi bật, t&ocirc; điểm th&ecirc;m\r\nvẻ đẹp thanh lịch v&agrave; duy&ecirc;n d&aacute;ng cho n&agrave;ng. D&acirc;y đeo mảnh th&iacute;ch hợp với những bộ\r\ntrang phục c&oacute; nhiều họa tiết, đồng thời tạo điểm nh&igrave;n c&acirc;n bằng với c&aacute;c phụ kiện\r\nto bản kh&aacute;c.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;br&gt;&lt;/p&gt;																						', '7pizy6vxCZaRBNPE', 7300, '2023-05-17 17:56:17'),
(10, 1, 'Nhẫn vàng đính đá gnxmxmy006396', '								&lt;p style=&quot;margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;Sở hữu\r\nthiết kế với những đường n&eacute;t hoa văn c&aacute;ch điệu kết hợp những vi&ecirc;n kim cương được đ&iacute;nh một c&aacute;ch tỉ mỉ, chiếc&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/&quot;&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:#4D4D4D&quot;&gt;nhẫn &lt;/span&gt;&lt;/a&gt;&lt;font color=&quot;#4d4d4d&quot;&gt;H&agrave; Đ&acirc;y&lt;/font&gt;&lt;span style=&quot;font-size:10.5pt;font-family:&amp;quot;Arial&amp;quot;,sans-serif;color:black&quot;&gt;&amp;nbsp;kho&aacute;c\r\nl&ecirc;n tr&ecirc;n m&igrave;nh vẻ đẹp đ&agrave;i c&aacute;c, ẩn chứa sức cuốn h&uacute;t đến m&ecirc; hồn.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;																						', 'OWi7L3r1d4MPu6B2', 13000, '2023-05-17 18:33:46'),
(11, 3, 'Bông tai vàng trắng 14K đính ngọc', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Tận dụng vẻ nữ t&iacute;nh của&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/trang-suc-ngoc-trai/ngoc-trai-freshwater/?atm_source=pdp&amp;amp;atm_medium=trangsucngoctraifreshwater&amp;amp;atm_campaign=&amp;amp;atm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: blue; outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;Ngọc trai Freshwater&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&ndash; loại đ&aacute; qu&yacute; dịu d&agrave;ng tựa như đ&oacute;a thuần khiết, c&ugrave;ng sắc m&agrave;u rực rỡ của v&agrave;ng 14K, H&agrave; Đ&acirc;y đ&atilde; mang đến tuyệt t&aacute;c b&ocirc;ng tai Ngọc trai với phong th&aacute;i thanh tao v&agrave; gi&uacute;p n&agrave;ng ph&ocirc; b&agrave;y phong c&aacute;ch c&aacute; nh&acirc;n thời thượng.&lt;/span&gt;															', 'qrCG1e0tlD4p5doV', 18171, '2023-05-17 18:47:36'),
(12, 3, 'Bông tai vàng trắng 14K đính ngọc', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Tận dụng vẻ nữ t&iacute;nh của&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/trang-suc-ngoc-trai/ngoc-trai-freshwater/?atm_source=pdp&amp;amp;atm_medium=trangsucngoctraifreshwater&amp;amp;atm_campaign=&amp;amp;atm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: blue; outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;Ngọc trai Freshwater&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&ndash; loại đ&aacute; qu&yacute; dịu d&agrave;ng tựa như đ&oacute;a thuần khiết, c&ugrave;ng sắc m&agrave;u rực rỡ của v&agrave;ng 14K, H&agrave; Đ&acirc;y đ&atilde; mang đến tuyệt t&aacute;c b&ocirc;ng tai Ngọc trai với phong th&aacute;i thanh tao v&agrave; gi&uacute;p n&agrave;ng ph&ocirc; b&agrave;y phong c&aacute;ch c&aacute; nh&acirc;n thời thượng.&lt;/span&gt;															', '6cfq4vKOALgt7yxP', 4780, '2023-05-17 18:49:38'),
(13, 3, 'Bông tai Vàng 18K 0000Y060563', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;M&ocirc; phỏng n&eacute;t ho&agrave;n mỹ đậm chất &Aacute; đ&ocirc;ng của người phụ nữ, H&agrave; Đ&acirc;y đặt trọn t&acirc;m huyết v&agrave; t&igrave;nh cảm v&agrave;o từng chi tiết tr&ecirc;n đ&ocirc;i b&ocirc;ng tai mới. H&agrave; Đ&acirc;y cho ra đời thiết kế&amp;nbsp;&lt;/span&gt;&lt;a atm_source=&quot;pdp&amp;amp;atm_medium=bongtaivang&amp;amp;atm_campaign=&amp;amp;atm_content=&amp;quot;&amp;quot;&quot; bong-tai=&quot;&quot; bong-tai-vang=&quot;&quot; color:=&quot;&quot; href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; www.pnj.com.vn=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;đ&ocirc;i b&ocirc;ng tai&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;tinh tế, l&agrave; sự phối trộn h&agrave;i ho&agrave; giữa kiểu d&aacute;ng v&agrave; chất liệu v&agrave;ng 18K chuẩn mực.&lt;/span&gt;																						', '087gIClVXbiLBpHq', 27390, '2023-05-17 18:53:46'),
(14, 3, 'Bông tai vàng 14K đính ngọc PF00Y000081', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Đ&ocirc;i b&ocirc;ng tai v&agrave;ng qu&yacute; ph&aacute;i kết hợp c&ugrave;ng trang phục thanh lịch sẽ tạo n&ecirc;n một diện mạo chỉn chu nhưng kh&ocirc;ng k&eacute;m phần nổi bật. Với sự lộng lẫy đầy cuốn h&uacute;t n&agrave;y, trang sức ngọc trai của H&agrave; Đ&acirc;y sẽ c&ugrave;ng n&agrave;ng ki&ecirc;u h&atilde;nh tỏa s&aacute;ng tr&ecirc;n mọi bước đường.&lt;/span&gt;																						', 'ZvkYabnijM6OhLAS', 5950, '2023-05-17 18:57:33'),
(15, 3, 'Bông tai vàng 18K đính Ruby ', '								&lt;a href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; www.pnj.com.vn=&quot;&quot; bong-tai=&quot;&quot; bong-tai-vang=&quot;&quot; ?itm_source=&quot;pdp&amp;amp;itm_medium=bongtaivang&amp;amp;itm_campaign=&amp;amp;itm_content=&amp;quot;&amp;quot;&quot; color:#1500dd;=&quot;&quot; font-weight:=&quot;&quot; 400;&quot;&quot;=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;Đ&ocirc;i b&ocirc;ng tai&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;được chế t&aacute;c từ v&agrave;ng 18K, PNJ mang đến sản phẩm sở hữu thiết kế tinh xảo đầy qu&yacute; ph&aacute;i. Tinh tuyển từng vi&ecirc;n đ&aacute; Ruby được cắt m&agrave;i tỉ mỉ cộng hưởng sắc đỏ hồng quyến rũ, nồng n&agrave;n như ly rượu vang, đ&ocirc;i b&ocirc;ng tai kh&ocirc;ng chỉ l&agrave; trang sức m&agrave; c&ograve;n l&agrave; &ldquo;trợ thủ&rdquo; n&acirc;ng tầm nhan sắc cho n&agrave;ng&lt;/span&gt;																						', 'nHBxDEw7R0CpazlM', 10654, '2023-05-17 19:03:54'),
(16, 5, 'Lắc chân vàng trắng 18k ', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Lấy cảm hứng từ sự trẻ trung v&agrave; n&eacute;t ki&ecirc;u sa của những qu&yacute; c&ocirc;, PNJ mang đến sản phẩm&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; itm_source=&quot;pdp&amp;amp;itm_medium=lactayvang&amp;amp;itm_campaign=&amp;amp;itm_content=&amp;quot;&amp;quot;&amp;quot;&amp;quot;&quot; lac=&quot;&quot; lac-vang=&quot;&quot; lac-vong-tay=&quot;&quot; www.pnj.com.vn=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;lắc&amp;nbsp;&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;ch&acirc;n&amp;nbsp;với sự kết hợp giữa v&agrave;ng 18K. Chiếc lắc nổi bật nhờ v&agrave;o &aacute;nh kim của v&agrave;ng 18K được t&ocirc;n l&ecirc;n tr&ecirc;n từng đường viền, kết hợp những hạt ch&acirc;u tr&ograve;n nhỏ. Tất cả cộng hưởng để t&ocirc;n vinh nhan sắc ki&ecirc;u sa của ph&aacute;i đẹp.&lt;/span&gt;																						', 'PV8BaOsIhZbGxJz6', 7474, '2023-05-17 19:07:14'),
(17, 5, 'Lắc tay Vàng trắng Ý 18K PNJ 0000W060915', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Chiếc&amp;nbsp;&lt;/span&gt;&lt;a font-weight:=&quot;&quot; href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; itm_source=&quot;pdp&amp;amp;itm_medium=lactayvang&amp;amp;itm_campaign=&amp;amp;itm_content=&amp;quot;&amp;quot;&quot; lac=&quot;&quot; lac-vang=&quot;&quot; lac-vong-tay=&quot;&quot; www.pnj.com.vn=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;lắc tay&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;PNJ sở hữu sự cứng c&aacute;p của v&agrave;ng &Yacute; 18K được chế t&aacute;c tinh xảo, kết hợp c&aacute;c chi tiết đ&uacute;c, ch&acirc;u v&agrave; khắc theo c&ocirc;ng nghệ&amp;nbsp;&lt;/span&gt;&lt;a font-weight:=&quot;&quot; href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; itm_source=&quot;pdp&amp;amp;itm_medium=trangsucy&amp;amp;itm_campaign=&amp;amp;itm_content=&amp;quot;&amp;quot;&quot; trang-suc-italy=&quot;&quot; trang-suc-vang=&quot;&quot; www.pnj.com.vn=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;trang sức &Yacute;&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;, tạo n&ecirc;n sự s&aacute;ng b&oacute;ng v&agrave; sang trọng. Với thiết kế độc lạ c&ugrave;ng &aacute;nh kim sắc sảo, sản phẩm sẽ t&ocirc;n l&ecirc;n vẻ đẹp của c&aacute;c qu&yacute; c&ocirc;.&lt;/span&gt;																						', 'zC2RjOnbrVYgSWXm', 9790, '2023-05-17 19:09:54'),
(18, 5, 'Lắc tay Vàng 18K HD 0000Y001883', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Chiếc&amp;nbsp;&lt;/span&gt;&lt;a font-weight:=&quot;&quot; href=&quot;https://www.pnj.com.vn/&quot; https:=&quot;&quot; itm_source=&quot;pdp&amp;amp;itm_medium=lactayvang&amp;amp;itm_campaign=&amp;amp;itm_content=&amp;quot;&amp;quot;&quot; lac=&quot;&quot; lac-vang=&quot;&quot; lac-vong-tay=&quot;&quot; www.pnj.com.vn=&quot;&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(77, 77, 77); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;lắc tay PNJ&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;sở hữu sự cứng c&aacute;p của v&agrave;ng 18K được chế t&aacute;c tinh xảo, kết hợp c&aacute;c chi tiết b&ocirc;ng hoa tinh xảo, tạo n&ecirc;n sự qu&yacute; ph&aacute;i v&agrave; sang trọng. Với thiết kế độc lạ c&ugrave;ng &aacute;nh kim sắc sảo, sản phẩm sẽ t&ocirc;n l&ecirc;n vẻ đẹp của c&aacute;c qu&yacute; c&ocirc;.&lt;/span&gt;															', 'EMU4KLft7nc9F5T0', 15844, '2023-05-17 19:16:37'),
(19, 4, 'Cặp nhẫn cưới Kim cương Vàng 18K', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Vượt qua h&agrave;nh tr&igrave;nh m&agrave;i giũa dưới b&agrave;n tay của c&aacute;c nghệ nh&acirc;n, kim cương gắn liền với biểu tượng của t&igrave;nh y&ecirc;u thủy chung, son sắt. Với sắc v&agrave;ng 18K rực rỡ c&ugrave;ng vẻ đẹp lấp l&aacute;nh v&agrave; tinh khiết của kim cương, PNJ mang đến&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/nhan/nhan-vang/?atm_source=pdp&amp;amp;atm_medium=nhanvang&amp;amp;atm_campaign=&amp;amp;atm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: blue; outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;nhẫn v&agrave;ng&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;hiện đại nhưng vẫn giữ được n&eacute;t truyền thống vốn c&oacute;.&lt;/span&gt;															', 'LshRfN4DaKevpIPQ', 21088, '2023-05-17 19:21:06'),
(20, 4, 'Cặp nhẫn cưới Vàng 18K True Love ', '&lt;span style=&quot;color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;&quot;&gt;Cho khởi đầu ho&agrave;n hảo của cuộc sống lứa đ&ocirc;i, H&agrave; Đ&acirc;y mang đến những thiết kế nhẫn cưới với phong c&aacute;ch hiện đại, gi&uacute;p cho cặp đ&ocirc;i c&oacute; nhiều sự lựa chọn. Cặp nhẫn cưới H&agrave; Đ&acirc;y được thiết kế đơn giản nhưng lại sở hữu điểm nhấn&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/trang-suc-kim-cuong/&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;&quot;&gt;Kim cương&lt;/a&gt;&lt;span style=&quot;color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;sang trọng, đ&atilde; tạo n&ecirc;n một sản phẩm trang sức cưới thanh lịch v&agrave; thời thượng.&lt;/span&gt;															', 'eMl6EjfopV1nhgT2', 20909, '2023-05-17 19:27:27'),
(21, 6, 'Vòng tay đính đá Topaz HD TPXMW000021', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Những mẫu trang sức đ&aacute; m&agrave;u sang trọng, tinh kh&ocirc;i ch&iacute;nh l&agrave; t&iacute;n vật để mọi người trao nhau kh&ocirc;ng chỉ trong m&ugrave;a lễ hội. Sắc xanh của&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/trang-suc-da-quy/trang-suc-topaz/?itm_source=pdp&amp;amp;itm_medium=trangsuctopaz&amp;amp;itm_campaign=&amp;amp;itm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(21, 0, 221); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;đ&aacute; Topaz&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;tạo cảm gi&aacute;c khoan dung, ch&acirc;n th&agrave;nh, ngo&agrave;i ra m&agrave;u xanh lam l&agrave; m&agrave;u của mặt biển, bầu trời v&igrave; thế sẽ mang lại sự b&igrave;nh t&acirc;m, cảm gi&aacute;c dễ chịu tin cậy. Kh&ocirc;ng chỉ sở hữu kiểu d&aacute;ng thời thượng với v&agrave;ng 14K tinh xảo, chiếc&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/?itm_source=pdp&amp;amp;itm_medium=vongtayvang&amp;amp;itm_campaign=&amp;amp;itm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(21, 0, 221); outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;v&ograve;ng tay&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;c&ograve;n cộng hưởng th&ecirc;m sắc xanh thẫm sang trọng, t&ocirc;n vinh nhan sắc của qu&yacute; c&ocirc;.&lt;/span&gt;															', 'We0rizHC7P9sKghQ', 41210, '2023-05-17 19:33:45'),
(22, 6, 'Vòng tay HD PFXMY000010', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; trang sức v&agrave;ng 14K được nhiều người ưa chuộng. Chiếc&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/?atm_source=pdp&amp;amp;atm_medium=vongtayvang&amp;amp;atm_campaign=&amp;amp;atm_content=&quot; style=&quot;background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: blue; outline: none; cursor: pointer; transition: all 150ms ease 0s;&quot;&gt;v&ograve;ng tay&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;được chế t&aacute;c từ v&agrave;ng 14K v&agrave; ghi điểm với sự lộng lẫy của những vi&ecirc;n đ&aacute; CZ với cảm hứng từ h&igrave;nh ảnh gần gũi nhất khi nhắc đến Hello Kitty như dấu ấn c&ocirc; b&eacute; đ&aacute;ng y&ecirc;u, chiếc nơ dễ thương, vườn hoa ng&aacute;t hương,..., PNJ ❤️ HELLO KITTY sẽ c&ugrave;ng n&agrave;ng ki&ecirc;u h&atilde;nh tỏa s&aacute;ng tr&ecirc;n mọi bước đường.&lt;/span&gt;															', 'zbD0LGcPB5IOnTyq', 27357, '2023-05-17 19:37:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `product_id`, `size`, `date_created`) VALUES
(2, 2, '5 (.62\"/1.57cm)', '2020-11-12 12:13:24'),
(3, 2, '6 (.65\"/1.65cm)', '2020-11-12 12:13:24'),
(4, 2, '7 (.98\"/1.73cm)', '2020-11-12 12:13:24'),
(5, 3, '', '2020-11-12 13:36:42'),
(6, 4, '5 (.62\"/1.57cm)', '2020-11-12 13:49:10'),
(7, 4, '7 (.98\"/1.73cm)', '2020-11-12 13:49:10'),
(8, 5, '', '2020-11-12 13:49:40'),
(9, 7, '', '2023-05-17 17:42:31'),
(10, 8, '5 (.62\"/1.57cm)', '2023-05-17 17:50:59'),
(11, 8, '6 (.65\"/1.65cm)', '2023-05-17 17:50:59'),
(12, 8, '7 (.98\"/1.73cm)', '2023-05-17 17:50:59'),
(13, 9, '5 (.62\"/1.57cm)', '2023-05-17 17:56:17'),
(14, 9, '6 (.62\"/1.62cm)', '2023-05-17 17:56:17'),
(15, 9, '7 (.62\"/1.73cm)', '2023-05-17 17:56:17'),
(16, 10, '5 (.62\"/1.57cm)', '2023-05-17 18:33:46'),
(17, 10, '6 (.62\"/1.62cm)', '2023-05-17 18:33:46'),
(18, 10, '7 (.62\"/1.73cm)', '2023-05-17 18:33:46'),
(19, 11, '', '2023-05-17 18:47:36'),
(20, 12, '', '2023-05-17 18:49:38'),
(21, 13, '', '2023-05-17 18:53:46'),
(22, 14, '', '2023-05-17 18:57:33'),
(23, 15, '', '2023-05-17 19:03:54'),
(24, 16, '', '2023-05-17 19:07:14'),
(25, 17, '', '2023-05-17 19:09:54'),
(26, 18, '', '2023-05-17 19:16:37'),
(27, 19, '', '2023-05-17 19:21:06'),
(28, 20, '', '2023-05-17 19:27:27'),
(29, 21, '1 (50 cm)', '2023-05-17 19:33:45'),
(30, 21, '2 (52 cm)', '2023-05-17 19:33:45'),
(31, 21, '3 (54cm)', '2023-05-17 19:33:45'),
(32, 21, '4 (55cm)', '2023-05-17 19:33:45'),
(33, 22, '1 (51 cm)', '2023-05-17 19:37:44'),
(34, 22, '2 (52 cm)', '2023-05-17 19:37:44'),
(35, 22, '3 (53 cm)', '2023-05-17 19:37:44'),
(36, 22, '4 (54 cm)', '2023-05-17 19:37:44'),
(37, 4, '6 (.62\"/1.62cm)', '2023-05-17 19:39:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Thân', 'Hà', 'Thị', '+84242424244', 'Hà Nội', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '', '2020-11-11 15:35:19'),
(2, 'Khách', '01', 'hàng', '+12345687', 'Hà Nội', 'user01@sample.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '', '2020-11-12 14:45:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
