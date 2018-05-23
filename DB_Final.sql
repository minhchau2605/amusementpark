-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2018 lúc 10:13 AM
-- Phiên bản máy phục vụ: 5.7.13-log
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `amusementpark`
--
CREATE DATABASE IF NOT EXISTS `amusementpark` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `amusementpark`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `booking_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `ticket_date` date DEFAULT NULL,
  `number_of_adults` int(11) DEFAULT NULL,
  `number_of_child` int(11) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `booking_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`booking_id`, `user_name`, `booking_date`, `ticket_date`, `number_of_adults`, `number_of_child`, `total`, `booking_status`) VALUES
('B001', 'mrdavid', '2018-04-02', '2018-04-03', 1, 1, '122.00', 'cancelled'),
('B002', 'chau', '2018-04-02', '2018-04-13', 1, 2, '201.00', 'booked'),
('B004', 'chaumilano', '2018-04-06', '2018-04-30', 1, 1, '122.00', 'booked'),
('B005', 'mrdavid', '2018-04-07', '2018-04-10', 1, 1, '92.00', 'booked'),
('B006', 'mrdavid', '2018-04-07', '2018-04-12', 1, 1, '104.00', 'booked');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_detail`
--

CREATE TABLE `booking_detail` (
  `booking_id` varchar(255) NOT NULL,
  `price_id` varchar(255) NOT NULL,
  `sub_total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `booking_detail`
--

INSERT INTO `booking_detail` (`booking_id`, `price_id`, `sub_total`) VALUES
('B001', 'P001', '36.00'),
('B001', 'P003', '51.00'),
('B001', 'P007', '35.00'),
('B002', 'P005', '84.00'),
('B002', 'P006', '48.00'),
('B002', 'P002', '69.00'),
('B004', 'P001', '36.00'),
('B004', 'P003', '51.00'),
('B004', 'P007', '35.00'),
('B005', 'P004', '35.00'),
('B005', 'P007', '35.00'),
('B005', 'P009', '22.00'),
('B006', 'P001', '36.00'),
('B006', 'P007', '35.00'),
('B006', 'P006', '33.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` varchar(255) NOT NULL,
  `zone_id` varchar(255) NOT NULL,
  `gallery_url` varchar(500) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `zone_id`, `gallery_url`, `description`) VALUES
('G001', 'Z001', './images/restaurant/_fastfood.jpg', 'Located in a man-made mountain 24 m high, Merciado Indoor Game zone has abundant games suitable for visitors at different ages. Apart from hi-tech-integrated game zone including 3D world, bumper electric car, Kids’ Garden, 4-D projection room with hundred'),
('G002', 'Z002', './images/attraction/_indoorgames.jpg', 'Located in a man-made mountain 24 m high, Merciado Indoor Game zone has abundant games suitable for visitors at different ages. Apart from hi-tech-integrated game zone including 3D world, bumper electric car, Kids’ Garden, 4-D projection room with hundred'),
('G003', 'Z003', './images/attraction/_rides.jpg', 'There is something for everyone in your family, whether you like a thrilling coaster, a splashing plunge out of Pompeii ruins a relaxing train ride through the park..'),
('G004', 'Z004', './images/restaurant/_bar-b.q-mutton-leg.jpg', 'Merciado restaurant serve B.B.Q food and Beef and drink to customers in return for money..'),
('G005', 'Z005', './images/restaurant/_seafood-restaurant-sunshine-coast-caloundra.jpg', 'Merciado restaurant serves complete vriety and drink to customers in return for money..'),
('G006', 'Z006', './images/attraction/golden_zephyr.jpg', 'Soar high in the sky in a gleaming silver spaceship inspired by the science fiction stories of the 1920s. '),
('G007', 'Z007', './images/entertainment/_shows.jpg', 'Incredible performances throughout the park are all part of the family-friendly combination of attractions that will make your Busch Gardens® trip unforgettable.'),
('G008', 'Z008', './images/entertainment/2018-04-07_105843_zoos.jpg', '	The world-famous and adored by all animal adventure park in the Merciado Park. Get ready for excitement and fun at this \"must see\" attraction..'),
('G009', 'Z009', './images/entertainment/davy-crocketts-explorer-canoes.jpg', 'Paddle along the Rivers of America for a grand sightseeing adventure around Pirate’s Lair on Tom Sawyer Island. '),
('G010', 'Z002', './images/attraction/2018-04-07_184948_indoor_games_1.jpg', 'Many indoor games attractive....'),
('G011', 'Z002', './images/attraction/2018-04-07_184948_indoor_games_2.jpg', 'Many indoor games attractive....'),
('G012', 'Z002', './images/attraction/2018-04-07_184948_indoor_games_3.jpg', 'Many indoor games attractive....'),
('G013', 'Z002', './images/attraction/2018-04-07_185308_indoor_games_4.jpg', 'Many indoor games attractive....'),
('G014', 'Z002', './images/attraction/2018-04-07_185308_indoor_games_5.jpg', 'Many indoor games attractive....'),
('G015', 'Z001', './images/restaurant/2018-04-07_185730_fastfood_1.jpg', 'Many fast foods are good....'),
('G016', 'Z001', './images/restaurant/2018-04-07_185730_fastfood_2.jpg', 'Many fast foods are good....'),
('G017', 'Z001', './images/restaurant/2018-04-07_185730_fastfood_3.jpg', 'Many fast foods are good....'),
('G018', 'Z001', './images/restaurant/2018-04-07_185730_fastfood_4.jpg', 'Many fast foods are good....'),
('G019', 'Z001', './images/restaurant/2018-04-07_185730_fastfood_5.jpg', 'Many fast foods are good....'),
('G020', 'Z003', './images/attraction/2018-04-07_190021_rides_1.jpg', 'Many rides attractive.....'),
('G021', 'Z003', './images/attraction/2018-04-07_190021_rides_2.jpg', 'Many rides attractive.....'),
('G022', 'Z003', './images/attraction/2018-04-07_190021_rides_3.jpg', 'Many rides attractive.....'),
('G023', 'Z004', './images/restaurant/2018-04-07_190228_bbq_1.jpg', 'Many B.B.Q Foods are good....'),
('G024', 'Z004', './images/restaurant/2018-04-07_190228_bbq_2.jpg', 'Many B.B.Q Foods are good....'),
('G025', 'Z004', './images/restaurant/2018-04-07_190228_bbq_3.jpg', 'Many B.B.Q Foods are good....'),
('G026', 'Z005', './images/restaurant/2018-04-07_190549_seafood_1.jpg', 'Many sea foods are good.....'),
('G027', 'Z005', './images/restaurant/2018-04-07_190549_seafood_2.jpg', 'Many sea foods are good.....'),
('G028', 'Z006', './images/attraction/2018-04-07_190912_golden_zephyr_2.jpg', 'Golden zehpyr....'),
('G029', 'Z006', './images/attraction/2018-04-07_190912_golden_zephyr_3.jpg', 'Golden zehpyr....'),
('G030', 'Z007', './images/entertainment/2018-04-07_191107_frozen_1.jpg', 'Frozen - Live at the Hyperion...'),
('G031', 'Z007', './images/entertainment/2018-04-07_191107_frozen_2.jpg', 'Frozen - Live at the Hyperion...'),
('G032', 'Z008', './images/entertainment/2018-04-07_191437__zoos_1.jpg', 'Zoos...'),
('G033', 'Z008', './images/entertainment/2018-04-07_191437__zoos_3.jpg', 'Zoos...'),
('G034', 'Z009', './images/entertainment/2018-04-07_191737_canoes_1.jpg', 'Davy Crockett Explorer Canoes....'),
('G035', 'Z009', './images/entertainment/2018-04-07_191737_canoes_2.jpg', 'Davy Crockett Explorer Canoes....');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `price`
--

CREATE TABLE `price` (
  `price_id` varchar(255) NOT NULL,
  `zone_id` varchar(255) DEFAULT NULL,
  `weekend` float DEFAULT NULL,
  `adult_price` decimal(8,2) DEFAULT NULL,
  `children_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `price`
--

INSERT INTO `price` (`price_id`, `zone_id`, `weekend`, `adult_price`, `children_price`) VALUES
('P001', 'Z001', 15, '20.00', '16.00'),
('P002', 'Z003', 15, '25.00', '22.00'),
('P003', 'Z002', 15, '28.00', '23.00'),
('P004', 'Z004', 15, '20.00', '15.00'),
('P005', 'Z005', 15, '30.00', '27.00'),
('P006', 'Z006', 15, '18.00', '15.00'),
('P007', 'Z007', 15, '20.00', '15.00'),
('P008', 'Z008', 15, '12.00', '10.00'),
('P009', 'Z009', 12.5, '13.50', '11.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_name`, `user_password`, `user_type`, `email`, `full_name`, `birthday`, `gender`, `address`) VALUES
('chau', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'chaudo265@gmail.com', 'do minh chau', '1996-05-26', b'1', 'ha noi, viet nam'),
('chaumilano', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'nghiado1960@gmail.com', 'chau do', '1995-02-24', b'1', 'ton that tung'),
('hoang', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'hoang@gmail.com', 'hoang', '1999-02-14', b'1', 'viet nam'),
('khanh', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'khanh@gmail.com', 'khanh', '1999-01-08', b'1', 'viet nam'),
('mrdavid', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'mrdavid@gmail.com', 'david jackson', '1995-02-01', b'1', 'new york'),
('quocanh', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'quocanh@gmail.com', 'quoc anh', '1999-02-14', b'1', 'viet nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zone`
--

CREATE TABLE `zone` (
  `zone_group_id` varchar(255) NOT NULL,
  `zone_id` varchar(255) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `avatar_img` varchar(500) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `zone`
--

INSERT INTO `zone` (`zone_group_id`, `zone_id`, `zone_name`, `avatar_img`, `description`) VALUES
('ZG1', 'Z001', 'Fast Food', './images/restaurant/_fastfood.jpg', 'Merciado restaurant serves Fast Food and drink to customers in return for money..'),
('ZG3', 'Z002', 'Indoor Games', './images/attraction/_indoorgames.jpg', 'Located in a man-made mountain 24 m high, Merciado Indoor Game zone has abundant games suitable for visitors at different ages. Apart from hi-tech-integrated game zone including 3D world, bumper electric car, Kids’ Garden, 4-D projection room with hundred'),
('ZG3', 'Z003', 'Rides', './images/attraction/_rides.jpg', 'There is something for everyone in your family, whether you like a thrilling coaster, a splashing plunge out of Pompeii ruins a relaxing train ride through the park..'),
('ZG1', 'Z004', 'B.B.Q', './images/restaurant/_bar-b.q-mutton-leg.jpg', 'Merciado restaurant serve B.B.Q food and Beef and drink to customers in return for money..'),
('ZG1', 'Z005', 'SeaFood', './images/restaurant/_seafood-restaurant-sunshine-coast-caloundra.jpg', 'Merciado restaurant serves complete vriety and drink to customers in return for money..'),
('ZG3', 'Z006', 'Golden Zephyr', './images/attraction/golden_zephyr.jpg', 'Soar high in the sky in a gleaming silver spaceship inspired by the science fiction stories of the 1920s. '),
('ZG2', 'Z007', 'Frozen – Live at the Hyperion', './images/entertainment/_shows.jpg', 'Incredible performances throughout the park are all part of the family-friendly combination of attractions that will make your Busch Gardens® trip unforgettable.'),
('ZG2', 'Z008', 'Zoos', './images/entertainment/2018-04-07_105843_zoos.jpg', 'The world-famous and adored by all animal adventure park in the Merciado Park. Get ready for excitement and fun at this \"must see\" attraction..'),
('ZG2', 'Z009', 'Davy Crockett Explorer Canoes', './images/entertainment/davy-crocketts-explorer-canoes.jpg', 'Paddle along the Rivers of America for a grand sightseeing adventure around Pirate’s Lair on Tom Sawyer Island. ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zone_group`
--

CREATE TABLE `zone_group` (
  `zone_group_id` varchar(255) NOT NULL,
  `zone_group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `zone_group`
--

INSERT INTO `zone_group` (`zone_group_id`, `zone_group_name`) VALUES
('ZG1', 'restaurant'),
('ZG2', 'entertainment'),
('ZG3', 'attraction');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `price_id` (`price_id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Chỉ mục cho bảng `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- Chỉ mục cho bảng `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_group_id` (`zone_group_id`);

--
-- Chỉ mục cho bảng `zone_group`
--
ALTER TABLE `zone_group`
  ADD PRIMARY KEY (`zone_group_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`user_name`);

--
-- Các ràng buộc cho bảng `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD CONSTRAINT `booking_detail_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `booking_detail_ibfk_2` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`);

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Các ràng buộc cho bảng `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Các ràng buộc cho bảng `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `zone_ibfk_1` FOREIGN KEY (`zone_group_id`) REFERENCES `zone_group` (`zone_group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
