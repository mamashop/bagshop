-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 06:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bag_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `address_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL COMMENT 'รหัสลูกค้า',
  `address_home` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'บ้านเลขที่',
  `address_tombon` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ตำบล',
  `address_district` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อำเภอ',
  `address_province` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `address_code` int(11) NOT NULL COMMENT 'รหัสไปรษณีย์'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`address_id`, `member_id`, `address_home`, `address_tombon`, `address_district`, `address_province`, `address_code`) VALUES
(1, 7, '12554/887  หมู่ 3 ', 'หาดใหญ่', 'หาดใหญ่', 'สงขลา', 90110),
(2, 7, '223', '333', '333', '33', 213213),
(3, 7, '1112', '1112', '1112', '1112', 1112),
(4, 9, '344', 'คอหงส์', 'หาดใหญ่', 'สงขลา', 90110),
(5, 10, '32', 'คอหง', 'หาดใหญ่', 'สงขลา', 90110),
(6, 11, '12', 'คอหง', 'หาดใหญ่', 'สงขลา', 90110);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bank_id` int(11) NOT NULL COMMENT 'รหัสธนาคาร',
  `bank_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อธนาคาร',
  `bank_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขบัญชีธนาคาร',
  `bank_account` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อบัญชี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bank_id`, `bank_name`, `bank_number`, `bank_account`) VALUES
(1, 'กรุงไทย', '0225-887-888', 'mama bag shop'),
(2, 'ไทยพานิช', '25-9988-6987', 'mama bag shop');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL COMMENT 'รหัสยี่ห้อ',
  `brand_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อยี่ห้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(6, 'Adidas'),
(7, ' Guesss'),
(8, 'Charles&Keith'),
(9, 'keep'),
(10, 'anello'),
(11, 'Lacoste'),
(12, 'kipling'),
(13, 'nike');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสมาชิก',
  `member_last` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลสมาชิก',
  `member_tel` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรสมาชิก',
  `member_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมลล์สมาชิก',
  `member_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ใช้สมาชิก',
  `member_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสผู้ใช้สมาชิก',
  `member_level` int(11) NOT NULL COMMENT 'ระดับผู้ใช้งานระบบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_last`, `member_tel`, `member_email`, `member_user`, `member_pass`, `member_level`) VALUES
(1, 'ผู้ดูแลระบบ', '', '', '', 'admin', '1234', 2),
(9, 'kam', 'nollapan', '0918485461', 'kam@hotmail.com', 'kam', 'าฟทาฟท', 1),
(10, 'kamkam', 'nolnlo', '35', 'kamkam@gmail.com', 'kam', 'kamm', 1),
(11, 'kamkamkam', 'noll', '0889987787', 'kam@hotmail.com', 'kammmm', 'noll', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL COMMENT 'รหัสออร์เดอร์',
  `member_id` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `address_id` int(11) NOT NULL COMMENT 'ที่อยู่สมาชิก',
  `order_date` datetime NOT NULL COMMENT 'วันที่สั่งซื้อ',
  `order_status` int(11) NOT NULL COMMENT 'สถานะการสั่งซื้อ',
  `order_prict_total` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รวมราคา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `member_id`, `address_id`, `order_date`, `order_status`, `order_prict_total`) VALUES
(6, 7, 1, '2020-02-21 08:56:16', 4, '1980'),
(7, 7, 1, '2020-02-21 08:57:01', 3, '1982'),
(8, 7, 1, '2020-02-21 12:51:10', 4, '2240'),
(9, 11, 6, '2020-04-30 07:59:52', 1, '990'),
(10, 11, 6, '2020-04-30 08:10:33', 2, '1700');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL COMMENT 'รหัสรายการสั่งสินค้า',
  `order_id` int(11) NOT NULL COMMENT 'รหัสออเดอร์',
  `product_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `order_detail_qty` int(11) NOT NULL COMMENT 'จำนวนสั่งซื้อ',
  `order_detail_price` int(11) NOT NULL COMMENT 'ราคาสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `order_detail_qty`, `order_detail_price`) VALUES
(5, 6, 2, 2, 990),
(6, 7, 2, 2, 990),
(7, 8, 2, 1, 990),
(8, 8, 1, 1, 1250),
(9, 9, 2, 1, 990),
(10, 10, 11, 1, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL COMMENT 'รหัสการจ่ายเงิน',
  `order_id` int(11) NOT NULL COMMENT 'รหัสออเดอร์',
  `bank_id` int(11) NOT NULL COMMENT 'เลขบัญชีธนาคาร',
  `payment_amount` int(11) NOT NULL COMMENT 'จำนวนเงิน',
  `payment_time` time NOT NULL COMMENT 'เวลาที่จ่าย',
  `payment_date` date NOT NULL COMMENT 'วันที่จ่าย',
  `payment_slip` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หลักฐานการโอนเงิน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `order_id`, `bank_id`, `payment_amount`, `payment_time`, `payment_date`, `payment_slip`) VALUES
(3, 8, 1, 2240, '11:11:00', '2020-02-21', 'payment_slip_20200221125132.jpg'),
(4, 6, 1, 1980, '00:12:00', '2020-02-22', 'payment_slip_20200222024427.jpg'),
(5, 7, 2, 1982, '01:00:00', '2020-04-29', 'payment_slip_20200429105210.jpg'),
(6, 10, 1, 1700, '11:01:00', '2563-03-04', 'payment_slip_20200430081139.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `type_id` int(11) NOT NULL COMMENT 'รหัสประเภท',
  `brand_id` int(11) NOT NULL COMMENT 'รหัสยี่ห้อ',
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสิ้นค้า',
  `product_detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `product_price` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ราคา',
  `product_qty` int(11) NOT NULL COMMENT 'จำนวน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `type_id`, `brand_id`, `product_name`, `product_detail`, `product_price`, `product_qty`) VALUES
(1, 1, 1, 'keep', 'KEEP รุ่นใหม่ล่าสุด >> Alisa ใบนี้ทรงสวยขนาดกำลังดีเลย (8.5”) ได้ลุค สไตล์ คูลๆ แมทช์กับกางเกงยีนส์ หรือ ยาว ก้อ complete look ได้สวยแน่นอนค่า ????\r\n\r\n????ตัวกระเป๋าใบนี้ ทำจากหนัง PU ลาย Saffiano สวย Classic แน่นอนค๊า ดีไซน์สายโซ่ใหญ่ สี Lightening silver แต่น้ำหนักเบา และทำหนังใส่ไว้ตรงกลางเพื่อซัพพอร์ตไหล่เวลาสะพายจะได้ไม่เจ็บด้วยน๊า\r\n\r\nขนาดเทียบ Size นางแบบสะพายนะค่า วัดความยาวจากก้น กระเป๋า 22xส13ฐาน กป 9 cm.( 8.5”)สายสะพายไหล่ยาว 62 cm. วัดตอนสะพาย ปรับระดับได้ 5 ระดับเลยคะ\r\n\r\nKEEP รุ่นใหม่ล่าสุด >> Alisa ใบนี้ทรงสวยขนาดกำลังดีเลย (8.5”) ได้ลุค สไตล์ คูลๆ แมทช์กับกางเกงยีนส์ หรือ ยาว ก้อ complete look ได้สวยแน่นอนค่า ????\r\n\r\n????ตัวกระเป๋าใบนี้ ทำจากหนัง PU ลาย Saffiano สวย Classic แน่นอนค๊า ดีไซน์สายโซ่ใหญ่ สี Lightening silver แต่น้ำหนักเบา และทำหนังใส่ไว้ตรงกลางเพื่อซัพพอร์ตไหล่เวลาสะพายจะได้ไม่เจ็บด้วยน๊า\r\n\r\nขนาดเทียบ Size นางแบบสะพายนะค่า วัดความยาวจากก้น กระเป๋า 22xส13ฐาน กป 9 cm.( 8.5”)สายสะพายไหล่ยาว 62 cm. วัดตอนสะพาย ปรับระดับได้ 5 ระดับเลยคะ\r\n\r\n????ด้านในบุหนังอย่างดี ทำช่องแบ่งเก็บของแยกให้อีก 2 ช่องใหญ่เก็บของได้ เป็นระเบียบ และ ช่องด้านข้างได้ อีก 1 ช่อง และที่สำคัญ ไม่ลืมช่อง ด้านหลังกระเป๋า ‘ Secret back ‘ ไว้ใส่บัตร ใส่ของที่หยิบจับใช้งานบ่อยๆด้วยค่า', '1250', 18),
(2, 2, 9, 'keep bag', 'CHARLES & KEITH ROSE EMBROIDERY SLING BAG กระเป๋าสะพายโซ่มินิ ทรงคลัช ตกแต่งลายดอกกุหลาบ สวยงาม ดูโดดเด่น ไม่เหมือนใคร เปิด-ปิดกระเป๋าด้วยซิป ภายในมีช่องใส่บัตร ใส่ iphone+ ได้ ด้านหลังกระเป๋ามีห่วงสีทอง ไว้สำหรับถือคล้องมือ ดีไซน์เก๋ ทรงแข็ง จับถนัดมือ มาพร้อมสายสะพายโซ่ ถอดได้ รุ่นนี้คุ้มค่ะถือเป็นคลัชไปเที่ยว ออกงาน หรือ สะพายสวยๆได้สบายเลย\r\n\r\nพร้อมส่ง : สีแดง\r\nSize : 17 x 12 x 6 cm\r\nCHARLES & KEITH ROSE EMBROIDERY SLING BAG กระเป๋าสะพายโซ่มินิ ทรงคลัช ตกแต่งลายดอกกุหลาบ สวยงาม ดูโดดเด่น ไม่เหมือนใคร เปิด-ปิดกระเป๋าด้วยซิป ภายในมีช่องใส่บัตร ใส่ iphone+ ได้ ด้านหลังกระเป๋ามีห่วงสีทอง ไว้สำหรับถือคล้องมือ ดีไซน์เก๋ ทรงแข็ง จับถนัดมือ มาพร้อมสายสะพายโซ่ ถอดได้ รุ่นนี้คุ้มค่ะถือเป็นคลัชไปเที่ยว ออกงาน หรือ สะพายสวยๆได้สบายเลย\r\n\r\nพร้อมส่ง : สีแดง\r\nSize : 17 x 12 x 6 cm\r\n\r\n', '990', 44),
(11, 9, 10, 'anello bag 1', 'กระเป๋าสะพายหลัง', '1700', 10),
(12, 9, 6, 'adidas bag', 'กระเป๋าสะพายหลัง', '1350', 20),
(13, 8, 10, 'anello  ', 'กระเป๋า anello จุของเยอะ', '1350', 15),
(14, 1, 12, 'kip bag', '', '1250', 12),
(15, 8, 8, 'CHARLES & KEITH ', 'กระเป๋าถือ ใส่โทรศัพท์ได้', '1950', 15),
(16, 8, 11, 'lacoste bag', '', '2000', 20),
(17, 9, 13, 'nike nike', 'กระเป๋าสะพายหลัง', '1450', 12),
(18, 8, 12, 'kipling bag2', '', '1350', 10),
(19, 9, 7, 'GUESS Women ', '', '1200', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`product_image_id`, `product_id`, `product_image_name`) VALUES
(8, 11, 'product_image_name_20200429_200820.jpg'),
(9, 12, 'product_image_name_20200429_205322.jpg'),
(10, 2, 'product_image_name_20200429_202825.jpg'),
(11, 13, 'product_image_name_20200429_202127.jpg'),
(13, 14, 'product_image_name_20200429_202339.jpg'),
(14, 1, 'product_image_name_20200429_200040.jpg'),
(15, 15, 'product_image_name_20200429_202141.jpg'),
(16, 16, 'product_image_name_20200429_202642.jpg'),
(17, 17, 'product_image_name_20200429_202243.jpg'),
(18, 18, 'product_image_name_20200429_202844.jpg'),
(19, 19, 'product_image_name_20200430_081714.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_send`
--

CREATE TABLE `tbl_send` (
  `send_id` int(11) NOT NULL COMMENT 'รหัสจัดส่ง',
  `order_id` int(11) NOT NULL COMMENT 'รหัสออเดอร์',
  `send_track` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขtracking ',
  `send_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'บริษัทข่นส่ง',
  `send_date` date NOT NULL COMMENT 'วันที่ส่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_send`
--

INSERT INTO `tbl_send` (`send_id`, `order_id`, `send_track`, `send_name`, `send_date`) VALUES
(6, 8, 'RE258-58775-62221', 'KERRY', '2020-04-29'),
(7, 6, 'RE258-58775-62234', 'KERRY', '2020-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL COMMENT 'รหัสประเภท',
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'กระเป๋า'),
(2, 'เป้'),
(7, '44'),
(8, 'กระเป๋าถือ'),
(9, 'กระเป๋าสะพาย');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `oder_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `oder_id` (`order_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `tbl_send`
--
ALTER TABLE `tbl_send`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `oder_id` (`order_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสธนาคาร', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสยี่ห้อ', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสออร์เดอร์', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสรายการสั่งสินค้า', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการจ่ายเงิน', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_send`
--
ALTER TABLE `tbl_send`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสจัดส่ง', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภท', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
