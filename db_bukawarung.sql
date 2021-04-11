-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2021 at 02:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Hafiz Elfia Wedo Putra', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '082217604816', 'hafizelfiawedoputra@outlook.com', 'Rahayu Residence Blok A 02 No. 01 Serang - Banten');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(8, 'Laptop'),
(9, 'Handphone'),
(10, 'Handsfree'),
(11, 'Pakaian Pria'),
(12, 'Pakaian Wanita'),
(13, 'Buah'),
(14, 'Sayur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(8, 8, 'MacBook Pro M1 (2020)', 25099000, '<p>Chip Apple M1 mendefinisikan ulang MacBook Pro 13 inci. Dilengkapi CPU 8-core yang mampu menangani berbagai tahapan kerja yang kompleks dalam fotografi, pemrograman, pengeditan video, dan lainnya, dengan mudah. GPU 8-core luar biasa yang melibas tugas kaya grafis dengan mudah dan membuat game terasa sangat lancar. Neural Engine 16-core yang canggih untuk tenaga lebih besar bagi pembelajaran mesin di aplikasi favorit Anda. Memori terintegrasi super cepat untuk performa yang lancar. Dan kekuatan bateraiâ€‘paling tahan lama yang pernah ada di Mac, hingga 20 jam.(3) Ini adalah laptop pro Apple yang paling populer. Performa jauh lebih baik, jauh lebih pro.</p>\r\n', 'produk1618120714.jpg', 1, '2021-04-11 05:58:34'),
(9, 9, 'Galaxy Note10 | Note10+', 18000000, '<p>Samsung Galaxy Note 10 Plus Duos 12/256Gb Seken Original<br />\r\n<br />\r\nALL OPERATOR (BISA SEMUA KARTU)<br />\r\nIMEI SUDAH DI DAFTARKAN JADI AMAN,<br />\r\n<br />\r\nKondisi Mulus Like New<br />\r\nEx inter SG Dualsim (Seri Model Sama Dengan SEIN)<br />\r\nLayar Norman/Aman (Tidak Bayang/No Shadow)</p>\r\n', 'produk1618120931.jpg', 1, '2021-04-11 06:02:11'),
(10, 10, 'Handsfree Wireless Xiaomi Airdots Redmi 5.0 Original Hitam', 110000, '<p>amsung Galaxy Note 10 Plus Duos 12/256Gb Seken Original<br />\r\n<br />\r\nALL OPERATOR (BISA SEMUA KARTU)<br />\r\nIMEI SUDAH DI DAFTARKAN JADI AMAN,<br />\r\n<br />\r\nKondisi Mulus Like New<br />\r\nEx inter SG Dualsim (Seri Model Sama Dengan SEIN)<br />\r\nLayar Norman/Aman (Tidak Bayang/No Shadow)</p>\r\n', 'produk1618121126.jpg', 1, '2021-04-11 06:05:26'),
(11, 11, 'Baju Cowok lengan panjang polos', 79000, '<p>Baju cowok lengan panjang Jova Smooth . Bahan Matt Katun Strech Combi Motif Asli (Kantong Hidup) Model Slim Best Quality Ukuran All size fit L, Lingkar dada 102cm Panjang 70cm . Tersedia warna Maroon dan Navy Mohon order pada varian warna yang tersedia.</p>\r\n', 'produk1618121254.jpg', 1, '2021-04-11 06:07:34'),
(12, 12, 'BUSANA WANITA GAMIS BLOUSE TUNIK', 95000, '<p>CALROK CELANA ROK&quot;<br />\r\n<br />\r\nGood Quality<br />\r\nDi order Bunda / Sista celana rok cantiknya<br />\r\nbahan : supernova<br />\r\nukuran : All size (fit XL), Ada Karet di Pinggang nya<br />\r\n<br />\r\nCELANA ROK CALROK<br />\r\n<br />\r\nLP normal . 78 cm<br />\r\nTarik karet . 100 cm<br />\r\nPanjang celana 95 cm<br />\r\nLebar paha 33 cm<br />\r\n<br />\r\nWarna :<br />\r\n- Abu muda<br />\r\n- Abu tua<br />\r\n- Lavender<br />\r\n- Biru muda<br />\r\n- Khaki</p>\r\n', 'produk1618121326.jpg', 1, '2021-04-11 06:08:46'),
(13, 13, 'Apel 10 Biji', 20000, '<p>Buah yang segar</p>\r\n', 'produk1618121399.jpeg', 1, '2021-04-11 06:09:59'),
(14, 14, 'Sayur', 25000, '<p>Sayur Segar</p>\r\n', 'produk1618121455.jpg', 0, '2021-04-11 06:10:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
