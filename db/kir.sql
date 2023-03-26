-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 03:28 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kir`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(281, 'admin', '2023-02-27 10:34:35', 'Edit Device Type keyboard'),
(282, 'admin', '2023-02-27 10:42:08', 'Edit location Produksi'),
(283, 'admin', '2023-02-27 10:42:41', 'Edit location R. Sekretaris Dinas'),
(284, 'admin', '2023-02-27 10:42:49', 'Edit location R. Produksi'),
(285, 'admin', '2023-02-27 10:42:58', 'Edit location R. Sekretariat'),
(286, 'admin', '2023-03-01 08:38:07', 'Add device Detail id 2&nbspName&nbspkeyboard'),
(287, 'admin', '2023-03-01 08:49:43', 'Assign Device id 1&nbspName&nbspkeyboard to location id 22&nbspName&nbspR. Produksi'),
(288, 'admin', '2023-03-01 09:09:51', 'Update Status keyboard to Baik '),
(289, 'admin', '2023-03-01 09:10:02', 'Update Status keyboard to Rusak Ringan '),
(290, 'admin', '2023-03-01 09:20:13', 'Update Status keyboard to Baik '),
(291, 'admin', '2023-03-01 09:39:28', 'Update Status keyboard to Rusak Ringan '),
(292, 'admin', '2023-03-01 09:53:05', 'Edit device info keyboard'),
(293, 'admin', '2023-03-01 19:58:10', 'Add device Detail id 2&nbspName&nbspkeyboard'),
(294, 'admin', '2023-03-01 19:59:03', 'transfer Device  keyboard to location id 24&nbspName&nbspR. Sekretariat'),
(295, 'admin', '2023-03-01 19:59:56', 'Assign Device id 2&nbspName&nbspkeyboard to location id 22&nbspName&nbspR. Produksi'),
(296, 'admin', '2023-03-02 10:26:39', 'Tambah Barang Type monitor'),
(297, 'admin', '2023-03-02 10:27:15', 'Tambah Barang Type Meja'),
(298, 'admin', '2023-03-05 08:13:46', 'Tambah Barang Type keyboard'),
(299, 'admin', '2023-03-05 08:14:37', 'Tambah Barang Detail id 10&nbspName&nbspmonitor'),
(300, 'admin', '2023-03-05 08:16:26', 'Assign Device id 1&nbspName&nbspmonitor to location id 22&nbspName&nbspR. Produksi'),
(301, 'admin', '2023-03-05 08:17:02', 'Update Status monitor to Baik '),
(302, 'admin', '2023-03-05 08:30:04', 'Update Status monitor to Rusak Ringan '),
(303, 'admin', '2023-03-05 08:56:10', 'Tambah Barang Detail id 10&nbspName&nbspmonitor'),
(304, 'admin', '2023-03-05 09:09:44', 'Add Client User anand'),
(305, 'admin', '2023-03-05 09:57:23', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(306, 'admin', '2023-03-06 09:04:59', 'Edit device info monitor'),
(307, 'admin', '2023-03-06 10:02:04', 'Edit device info monitor'),
(308, 'admin', '2023-03-06 10:19:00', 'Edit device info monitor'),
(309, 'admin', '2023-03-06 10:25:00', 'Assign Device id 4&nbspName&nbspmonitor to location id 22&nbspName&nbspR. Produksi'),
(310, 'admin', '2023-03-06 10:25:46', 'Edit device info monitor'),
(311, 'admin', '2023-03-06 11:04:38', 'Edit device info monitor'),
(312, 'admin', '2023-03-14 06:31:51', 'Update Status monitor to Rusak Ringan '),
(313, 'admin', '2023-03-14 06:33:11', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(314, 'admin', '2023-03-14 06:36:53', 'Edit device info Meja'),
(315, 'admin', '2023-03-14 06:38:04', 'Tambah Barang Detail id 12&nbspName&nbspkeyboard'),
(316, 'admin', '2023-03-14 06:42:08', 'Edit device info keyboard'),
(317, 'admin', '2023-03-14 06:43:39', 'Edit device info keyboard'),
(318, 'admin', '2023-03-14 06:44:13', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(319, 'admin', '2023-03-14 06:50:00', 'Tambah Barang Detail id 12&nbspName&nbspkeyboard'),
(320, 'admin', '2023-03-14 06:57:49', 'Edit device info monitor'),
(321, 'admin', '2023-03-14 07:16:27', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(322, 'admin', '2023-03-14 16:43:27', 'Tambah Barang Detail id 10&nbspName&nbspmonitor'),
(323, 'admin', '2023-03-14 16:49:31', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(324, 'admin', '2023-03-14 16:53:10', 'Tambah Barang Detail id 12&nbspName&nbspkeyboard'),
(325, 'admin', '2023-03-14 16:57:04', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(326, 'admin', '2023-03-14 16:57:14', 'Assign Device id 13&nbspName&nbspMeja to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(327, 'admin', '2023-03-14 17:02:44', 'Update Status Meja to Baik '),
(328, 'admin', '2023-03-15 05:52:01', 'Edit device info monitor'),
(329, 'admin', '2023-03-15 05:55:27', 'Update Status monitor to Baik '),
(330, 'admin', '2023-03-15 06:02:04', 'Edit Device Type Keyboard'),
(331, 'admin', '2023-03-15 06:02:12', 'Edit Device Type Monitor'),
(332, 'admin', '2023-03-15 06:02:22', 'Tambah Barang Type Tipe Barang Lain'),
(333, 'admin', '2023-03-15 06:02:33', 'Tambah Barang Type Televisi'),
(334, 'admin', '2023-03-15 06:02:41', 'Tambah Barang Type PC'),
(335, 'admin', '2023-03-15 06:03:14', 'Tambah Barang Type Kursi'),
(336, 'admin', '2023-03-15 06:03:21', 'Tambah Barang Type AC'),
(337, 'admin', '2023-03-15 06:03:31', 'Tambah Barang Type Komputer'),
(338, 'admin', '2023-03-15 06:03:54', 'Edit Device Type Printer'),
(339, 'admin', '2023-03-15 06:04:03', 'Edit Device Type Komputer'),
(340, 'admin', '2023-03-15 06:04:10', 'Tambah Barang Type Wifi'),
(341, 'admin', '2023-03-15 06:04:17', 'Tambah Barang Type Lemari'),
(342, 'admin', '2023-03-15 06:04:29', 'Tambah Barang Type Laptop'),
(343, 'admin', '2023-03-15 09:00:32', 'Tambah Barang Detail id 17&nbspName&nbspAC'),
(344, 'admin', '2023-03-15 09:12:28', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(345, 'admin', '2023-03-15 09:15:14', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(346, 'admin', '2023-03-15 09:16:03', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(347, 'admin', '2023-03-15 09:16:56', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(348, 'admin', '2023-03-15 09:17:35', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(349, 'admin', '2023-03-15 09:18:36', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(350, 'admin', '2023-03-15 09:20:13', 'Tambah Barang Detail id 15&nbspName&nbspKomputer'),
(351, 'admin', '2023-03-15 09:20:37', 'Tambah Barang Detail id 20&nbspName&nbspLemari'),
(352, 'admin', '2023-03-15 09:21:10', 'Tambah Barang Detail id 18&nbspName&nbspPrinter'),
(353, 'admin', '2023-03-15 09:21:42', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(354, 'admin', '2023-03-15 09:22:54', 'Tambah Barang Detail id 19&nbspName&nbspWifi'),
(355, 'admin', '2023-03-15 09:23:48', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(356, 'admin', '2023-03-15 09:24:23', 'Assign Device id 26&nbspName&nbspTipe Barang Lain to location id 22&nbspName&nbspR. Produksi'),
(357, 'admin', '2023-03-15 09:24:24', 'Assign Device id 25&nbspName&nbspWifi to location id 22&nbspName&nbspR. Produksi'),
(358, 'admin', '2023-03-15 09:24:24', 'Assign Device id 24&nbspName&nbspTipe Barang Lain to location id 22&nbspName&nbspR. Produksi'),
(359, 'admin', '2023-03-15 09:24:24', 'Assign Device id 23&nbspName&nbspPrinter to location id 22&nbspName&nbspR. Produksi'),
(360, 'admin', '2023-03-15 09:24:24', 'Assign Device id 22&nbspName&nbspLemari to location id 22&nbspName&nbspR. Produksi'),
(361, 'admin', '2023-03-15 09:24:24', 'Assign Device id 21&nbspName&nbspKomputer to location id 22&nbspName&nbspR. Produksi'),
(362, 'admin', '2023-03-15 09:24:24', 'Assign Device id 20&nbspName&nbspTipe Barang Lain to location id 22&nbspName&nbspR. Produksi'),
(363, 'admin', '2023-03-15 09:24:24', 'Assign Device id 19&nbspName&nbspMeja to location id 22&nbspName&nbspR. Produksi'),
(364, 'admin', '2023-03-15 09:24:24', 'Assign Device id 18&nbspName&nbspMeja to location id 22&nbspName&nbspR. Produksi'),
(365, 'admin', '2023-03-15 09:24:24', 'Assign Device id 17&nbspName&nbspKursi to location id 22&nbspName&nbspR. Produksi'),
(366, 'admin', '2023-03-15 09:24:54', 'Assign Device id 16&nbspName&nbspKursi to location id 22&nbspName&nbspR. Produksi'),
(367, 'admin', '2023-03-15 09:24:54', 'Assign Device id 15&nbspName&nbspKursi to location id 22&nbspName&nbspR. Produksi'),
(368, 'admin', '2023-03-15 09:24:55', 'Assign Device id 14&nbspName&nbspAC to location id 22&nbspName&nbspR. Produksi'),
(369, 'admin', '2023-03-15 09:29:59', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(370, 'admin', '2023-03-15 09:32:44', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(371, 'admin', '2023-03-15 09:34:40', 'Tambah Barang Detail id 21&nbspName&nbspLaptop'),
(372, 'admin', '2023-03-15 09:36:16', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(373, 'admin', '2023-03-15 09:37:49', 'Tambah Barang Detail id 21&nbspName&nbspLaptop'),
(374, 'admin', '2023-03-15 09:39:46', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(375, 'admin', '2023-03-15 09:40:15', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(376, 'admin', '2023-03-15 09:40:38', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(377, 'admin', '2023-03-15 09:40:59', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(378, 'admin', '2023-03-15 09:41:47', 'Tambah Barang Detail id 17&nbspName&nbspAC'),
(379, 'admin', '2023-03-15 09:42:21', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(380, 'admin', '2023-03-15 09:42:42', 'Edit device info Kursi'),
(381, 'admin', '2023-03-15 09:43:39', 'Assign Device id 37&nbspName&nbspTipe Barang Lain to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(382, 'admin', '2023-03-15 09:43:39', 'Assign Device id 36&nbspName&nbspAC to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(383, 'admin', '2023-03-15 09:43:40', 'Assign Device id 35&nbspName&nbspMeja to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(384, 'admin', '2023-03-15 09:43:40', 'Assign Device id 34&nbspName&nbspKursi to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(385, 'admin', '2023-03-15 09:43:40', 'Assign Device id 33&nbspName&nbspKursi to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(386, 'admin', '2023-03-15 09:43:40', 'Assign Device id 32&nbspName&nbspMeja to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(387, 'admin', '2023-03-15 09:43:40', 'Assign Device id 31&nbspName&nbspLaptop to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(388, 'admin', '2023-03-15 09:43:40', 'Assign Device id 30&nbspName&nbspKursi to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(389, 'admin', '2023-03-15 09:43:40', 'Assign Device id 29&nbspName&nbspLaptop to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(390, 'admin', '2023-03-15 09:43:40', 'Assign Device id 28&nbspName&nbspKursi to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(391, 'admin', '2023-03-15 09:43:50', 'Assign Device id 27&nbspName&nbspMeja to location id 23&nbspName&nbspR. Sekretaris Dinas'),
(392, 'admin', '2023-03-15 09:51:40', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(393, 'admin', '2023-03-15 09:53:09', 'Tambah Barang Detail id 20&nbspName&nbspLemari'),
(394, 'admin', '2023-03-15 09:54:38', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(395, 'admin', '2023-03-15 09:57:03', 'Tambah Barang Detail id 21&nbspName&nbspLaptop'),
(396, 'admin', '2023-03-15 10:00:11', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(397, 'admin', '2023-03-15 10:01:47', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(398, 'admin', '2023-03-15 10:03:18', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(399, 'admin', '2023-03-15 10:05:04', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(400, 'admin', '2023-03-15 10:10:00', 'Tambah Barang Detail id 12&nbspName&nbspKeyboard'),
(401, 'admin', '2023-03-15 10:11:22', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(402, 'admin', '2023-03-15 10:13:27', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(403, 'admin', '2023-03-15 10:14:52', 'Tambah Barang Detail id 17&nbspName&nbspAC'),
(404, 'admin', '2023-03-15 10:16:14', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(405, 'admin', '2023-03-15 10:17:47', 'Tambah Barang Detail id 20&nbspName&nbspLemari'),
(406, 'admin', '2023-03-15 10:20:17', 'Tambah Barang Detail id 21&nbspName&nbspLaptop'),
(407, 'admin', '2023-03-15 10:25:44', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(408, 'admin', '2023-03-15 10:28:44', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(409, 'admin', '2023-03-15 10:29:43', 'Edit device info Keyboard'),
(410, 'admin', '2023-03-15 10:31:09', 'Edit device info Meja'),
(411, 'admin', '2023-03-15 10:31:33', 'Edit device info Kursi'),
(412, 'admin', '2023-03-15 10:32:05', 'Edit device info Tipe Barang Lain'),
(413, 'admin', '2023-03-15 10:32:32', 'Edit device info Lemari'),
(414, 'admin', '2023-03-15 10:34:29', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(415, 'admin', '2023-03-15 10:36:11', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(416, 'admin', '2023-03-15 10:37:13', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(417, 'admin', '2023-03-15 10:38:12', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(418, 'admin', '2023-03-15 10:39:52', 'Tambah Barang Detail id 18&nbspName&nbspPrinter'),
(419, 'admin', '2023-03-15 10:40:56', 'Tambah Barang Detail id 17&nbspName&nbspAC'),
(420, 'admin', '2023-03-15 10:42:09', 'Tambah Barang Detail id 18&nbspName&nbspPrinter'),
(421, 'admin', '2023-03-15 10:43:10', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(422, 'admin', '2023-03-15 10:44:16', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(423, 'admin', '2023-03-15 10:45:25', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(424, 'admin', '2023-03-15 10:46:12', 'Tambah Barang Detail id 15&nbspName&nbspKomputer'),
(425, 'admin', '2023-03-15 10:47:11', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(426, 'admin', '2023-03-15 10:49:03', 'Tambah Barang Detail id 16&nbspName&nbspKursi'),
(427, 'admin', '2023-03-15 10:49:26', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(428, 'admin', '2023-03-15 10:49:58', 'Tambah Barang Detail id 20&nbspName&nbspLemari'),
(429, 'admin', '2023-03-15 10:50:28', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(430, 'admin', '2023-03-15 10:50:56', 'Tambah Barang Detail id 11&nbspName&nbspMeja'),
(431, 'admin', '2023-03-15 10:51:29', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(432, 'admin', '2023-03-15 10:51:52', 'Tambah Barang Detail id 19&nbspName&nbspWifi'),
(433, 'admin', '2023-03-15 10:52:24', 'Tambah Barang Detail id 13&nbspName&nbspTipe Barang Lain'),
(434, 'admin', '2023-03-15 10:52:58', 'Assign Device id 74&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(435, 'admin', '2023-03-15 10:52:58', 'Assign Device id 73&nbspName&nbspWifi to location id 24&nbspName&nbspR. Sekretariat'),
(436, 'admin', '2023-03-15 10:52:58', 'Assign Device id 72&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(437, 'admin', '2023-03-15 10:52:58', 'Assign Device id 71&nbspName&nbspMeja to location id 24&nbspName&nbspR. Sekretariat'),
(438, 'admin', '2023-03-15 10:52:59', 'Assign Device id 70&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(439, 'admin', '2023-03-15 10:52:59', 'Assign Device id 69&nbspName&nbspLemari to location id 24&nbspName&nbspR. Sekretariat'),
(440, 'admin', '2023-03-15 10:52:59', 'Assign Device id 68&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(441, 'admin', '2023-03-15 10:52:59', 'Assign Device id 67&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(442, 'admin', '2023-03-15 10:52:59', 'Assign Device id 66&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(443, 'admin', '2023-03-15 10:52:59', 'Assign Device id 65&nbspName&nbspKomputer to location id 24&nbspName&nbspR. Sekretariat'),
(444, 'admin', '2023-03-15 10:53:41', 'Assign Device id 64&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(445, 'admin', '2023-03-15 10:53:41', 'Assign Device id 63&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(446, 'admin', '2023-03-15 10:53:42', 'Assign Device id 62&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(447, 'admin', '2023-03-15 10:53:42', 'Assign Device id 61&nbspName&nbspPrinter to location id 24&nbspName&nbspR. Sekretariat'),
(448, 'admin', '2023-03-15 10:53:42', 'Assign Device id 60&nbspName&nbspAC to location id 24&nbspName&nbspR. Sekretariat'),
(449, 'admin', '2023-03-15 10:53:42', 'Assign Device id 59&nbspName&nbspPrinter to location id 24&nbspName&nbspR. Sekretariat'),
(450, 'admin', '2023-03-15 10:53:42', 'Assign Device id 58&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(451, 'admin', '2023-03-15 10:53:42', 'Assign Device id 57&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(452, 'admin', '2023-03-15 10:53:42', 'Assign Device id 56&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(453, 'admin', '2023-03-15 10:53:43', 'Assign Device id 55&nbspName&nbspMeja to location id 24&nbspName&nbspR. Sekretariat'),
(454, 'admin', '2023-03-15 10:53:43', 'Assign Device id 54&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(455, 'admin', '2023-03-15 10:53:43', 'Assign Device id 53&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(456, 'admin', '2023-03-15 10:53:43', 'Assign Device id 52&nbspName&nbspLaptop to location id 24&nbspName&nbspR. Sekretariat'),
(457, 'admin', '2023-03-15 10:53:43', 'Assign Device id 51&nbspName&nbspLemari to location id 24&nbspName&nbspR. Sekretariat'),
(458, 'admin', '2023-03-15 10:53:43', 'Assign Device id 50&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(459, 'admin', '2023-03-15 10:53:43', 'Assign Device id 49&nbspName&nbspAC to location id 24&nbspName&nbspR. Sekretariat'),
(460, 'admin', '2023-03-15 10:53:43', 'Assign Device id 48&nbspName&nbspMeja to location id 24&nbspName&nbspR. Sekretariat'),
(461, 'admin', '2023-03-15 10:53:44', 'Assign Device id 47&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(462, 'admin', '2023-03-15 10:53:44', 'Assign Device id 46&nbspName&nbspKeyboard to location id 24&nbspName&nbspR. Sekretariat'),
(463, 'admin', '2023-03-15 10:53:44', 'Assign Device id 45&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(464, 'admin', '2023-03-15 10:53:44', 'Assign Device id 44&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(465, 'admin', '2023-03-15 10:53:44', 'Assign Device id 43&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(466, 'admin', '2023-03-15 10:53:44', 'Assign Device id 42&nbspName&nbspTipe Barang Lain to location id 24&nbspName&nbspR. Sekretariat'),
(467, 'admin', '2023-03-15 10:53:44', 'Assign Device id 41&nbspName&nbspLaptop to location id 24&nbspName&nbspR. Sekretariat'),
(468, 'admin', '2023-03-15 10:53:44', 'Assign Device id 40&nbspName&nbspKursi to location id 24&nbspName&nbspR. Sekretariat'),
(469, 'admin', '2023-03-15 10:53:56', 'Assign Device id 39&nbspName&nbspLemari to location id 24&nbspName&nbspR. Sekretariat'),
(470, 'admin', '2023-03-15 10:53:56', 'Assign Device id 38&nbspName&nbspMeja to location id 24&nbspName&nbspR. Sekretariat'),
(471, 'admin', '2023-03-15 10:54:19', 'Update Status AC to Baik '),
(472, 'admin', '2023-03-15 10:54:23', 'Update Status Kursi to Baik '),
(473, 'admin', '2023-03-15 10:54:28', 'Update Status Kursi to Baik '),
(474, 'admin', '2023-03-15 10:54:33', 'Update Status Kursi to Baik '),
(475, 'admin', '2023-03-15 10:54:40', 'Update Status Meja to Baik '),
(476, 'admin', '2023-03-15 10:54:46', 'Update Status Meja to Baik '),
(477, 'admin', '2023-03-15 10:54:52', 'Update Status Tipe Barang Lain to Baik '),
(478, 'admin', '2023-03-15 10:54:57', 'Update Status Komputer to Baik '),
(479, 'admin', '2023-03-15 10:55:04', 'Update Status Lemari to Baik '),
(480, 'admin', '2023-03-15 10:55:21', 'Update Status Printer to Baik '),
(481, 'admin', '2023-03-15 10:55:32', 'Update Status Tipe Barang Lain to Baik '),
(482, 'admin', '2023-03-15 10:55:39', 'Update Status Wifi to Baik '),
(483, 'admin', '2023-03-15 10:55:44', 'Update Status Tipe Barang Lain to Baik '),
(484, 'admin', '2023-03-15 10:59:01', 'Update Status Meja to Baik '),
(485, 'admin', '2023-03-15 10:59:13', 'Update Status Kursi to Baik '),
(486, 'admin', '2023-03-15 10:59:35', 'Update Status Laptop to Baik '),
(487, 'admin', '2023-03-15 10:59:41', 'Update Status Kursi to Baik '),
(488, 'admin', '2023-03-15 10:59:46', 'Update Status Laptop to Baik '),
(489, 'admin', '2023-03-15 10:59:50', 'Update Status Meja to Baik '),
(490, 'admin', '2023-03-15 10:59:55', 'Update Status Kursi to Baik '),
(491, 'admin', '2023-03-15 11:00:21', 'Update Status Kursi to Baik '),
(492, 'admin', '2023-03-15 11:00:28', 'Update Status Meja to Baik '),
(493, 'admin', '2023-03-15 11:00:34', 'Update Status AC to Baik '),
(494, 'admin', '2023-03-15 11:00:40', 'Update Status Tipe Barang Lain to Baik '),
(495, 'admin', '2023-03-15 11:00:54', 'Update Status Tipe Barang Lain to Baik '),
(496, 'admin', '2023-03-15 11:01:03', 'Update Status Tipe Barang Lain to Baik '),
(497, 'admin', '2023-03-15 11:01:44', 'Update Status Meja to Rusak Ringan '),
(498, 'admin', '2023-03-15 11:03:00', 'Edit device info Meja'),
(499, 'admin', '2023-03-15 11:03:54', 'Update Status Wifi to Baik '),
(500, 'admin', '2023-03-15 11:03:58', 'Update Status Kursi to Baik '),
(501, 'admin', '2023-03-15 11:04:03', 'Update Status Laptop to Baik '),
(502, 'admin', '2023-03-15 11:04:08', 'Update Status Lemari to Baik '),
(503, 'admin', '2023-03-15 11:04:14', 'Update Status Kursi to Baik '),
(504, 'admin', '2023-03-15 11:04:19', 'Update Status AC to Baik '),
(505, 'admin', '2023-03-15 11:04:23', 'Update Status Meja to Baik '),
(506, 'admin', '2023-03-15 11:04:28', 'Update Status Kursi to Baik '),
(507, 'admin', '2023-03-15 11:04:38', 'Update Status Keyboard to Baik '),
(508, 'admin', '2023-03-15 11:04:51', 'Update Status Kursi to Baik '),
(509, 'admin', '2023-03-15 11:05:00', 'Update Status Tipe Barang Lain to Baik '),
(510, 'admin', '2023-03-15 11:05:07', 'Update Status Tipe Barang Lain to Baik '),
(511, 'admin', '2023-03-15 11:05:14', 'Update Status Tipe Barang Lain to Baik '),
(512, 'admin', '2023-03-15 11:05:21', 'Update Status Tipe Barang Lain to Baik '),
(513, 'admin', '2023-03-15 11:05:28', 'Update Status Laptop to Baik '),
(514, 'admin', '2023-03-15 11:06:11', 'Update Status Kursi to Baik '),
(515, 'admin', '2023-03-15 11:06:19', 'Update Status Lemari to Baik '),
(516, 'admin', '2023-03-15 11:06:25', 'Update Status Meja to Baik '),
(517, 'admin', '2023-03-15 11:06:41', 'Update Status Tipe Barang Lain to Baik '),
(518, 'admin', '2023-03-15 11:06:54', 'Update Status Tipe Barang Lain to Baik '),
(519, 'admin', '2023-03-15 11:07:24', 'Update Status Komputer to Baik '),
(520, 'admin', '2023-03-15 11:07:31', 'Update Status Kursi to Baik '),
(521, 'admin', '2023-03-15 11:07:39', 'Update Status Kursi to Baik '),
(522, 'admin', '2023-03-15 11:08:05', 'Update Status Tipe Barang Lain to Baik '),
(523, 'admin', '2023-03-15 11:08:15', 'Update Status Lemari to Baik '),
(524, 'admin', '2023-03-15 11:08:22', 'Update Status Tipe Barang Lain to Baik '),
(525, 'admin', '2023-03-15 11:08:28', 'Update Status Meja to Baik '),
(526, 'admin', '2023-03-15 11:08:35', 'Update Status Tipe Barang Lain to Baik '),
(527, 'admin', '2023-03-15 11:08:50', 'Update Status Kursi to Baik '),
(528, 'admin', '2023-03-15 11:08:58', 'Update Status Printer to Baik '),
(529, 'admin', '2023-03-15 11:09:13', 'Update Status AC to Baik '),
(530, 'admin', '2023-03-15 11:09:21', 'Update Status Printer to Baik '),
(531, 'admin', '2023-03-15 11:09:46', 'Edit device info Tipe Barang Lain'),
(532, 'admin', '2023-03-15 11:17:48', 'Tambah Lokasi Barang tidak terpakai'),
(533, 'admin', '2023-03-15 11:18:15', 'transfer Device   to location id 25&nbspName&nbspBarang tidak terpakai'),
(534, 'admin', '2023-03-15 11:18:28', 'transfer Device   to location id 25&nbspName&nbspBarang tidak terpakai');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(5, 'admin', 'kominfo', 'admin', 'admin', 'uploads/kominfo.png');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\n\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp;Respecting the human dignity and unique talents of each person, Southland College is dedicated in helping its students actualizetheir potentials for the enchancementof their own lives and or nationals Development.&nbsp;</span></p>\n\n<p style=\"text-align:left\">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; A progressive educational community where the individual is at the core of his own learning </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The southland college story is the intermingling of imposibilities and unbelief, against optimism and faith.the story of this new school is a beatifull retelling of god\'s goodness; his hands helping shape the foundation of southland college.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amid Challeges, stumbling blocks, and interfering forces, southland college was established-a shining testamentof God\'s wondrous ways and his helping hand for those who trust in Him.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deeply saddened by the anticipated mass resignation of the faculty and staff with the change of leadership of a private school where he was the former president, DR. Anecito D. Villaluz, Jr. Decided to put up his own school where he could freely make use of his publicity acknowledged and admired managerial skills and organizational expertise.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the preparations for the new school started in March 2009. The incorporators who compose the Board of directors are Dr.Villaluz, Chairman; Mrs. Annette Z. Villaluz, vice-chairman; Dr. Emiliano L. Sama,Jr.,corporate secretary; Mrs.Yvonne Z. Rocha, Treasurer; and Dr.Rhoda J. Amor,Dr. Grace A. Badrina, Dr. Henly S. Pahilagao, and Mr. Miguel M. Zayco, directors.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The securities and Exchange Commision (DepEd) issurd the school registration permiton March 24,2009.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The department of Education (DepEd) Western Visayas Regional office issued the permit for the basic education on June 1. 2009. The school established the consortium with the Northern Negros state College of Science and Technology (NONESCOST) for the Nursing Degree program, and with the Negros Oriental State Accounting Technology, BS Business Administrators, BS Hospiitality Management, and the 2-year Midwifery course. The administrators, faculty and staff, parents and strengthen the new school. Each of them undertook the assigned task without expecting any personal reward. it was evidend that God is shaping the southland destiny throught the hearts, hands and minds of these people.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Regional Quality Assesment Team (RQUAT) and Commission on Higher Education (CHEd) Supersvisors readily issuad permits for all degree programs After validating the requirements and inspecting the facilities.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The school was formerly launched on May 13, 2009. It was followed by the a grand caravan. The following days saw the advertisements and promotion blitz in variious towns and cities.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By the end of the enrolment period, God gave soutland collegeits needed initial number of students. Enrolled during the school year 2009-2010 were: pre school, 69; elementary, 130; and High school, 122. During the first semester of the same school year, college enrolment reached 177. it was an impressive number for a new school which opened within a few months time after its inception.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A thanksgiving service with the theme \"Triumph Amid Trials\" was held on August 28, 2009 morning. It was immediatly followed by the school\'s very first academic convocation. The officers of student councils, faculty and staff club, and the parents and teachers assembleis were inducted in the afternoon. aquaintance parties in all levels followed.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;amid the trials, Southland College is seen to Survive and Prevail for its story in a tapestry of good relationships, great resposibilities, and God\'s redemption<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Indeed, at Southland College the foundation of God stand\'s sure!\n</p>'),
(4, 'Footer', '<p style=\"text-align:center\">Technology Resource Inventory System (T.R.S) Copyright 2015</p>\n\n<p style=\"text-align:center\">All Rights Reserved &reg;2015</p>\n'),
(5, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">Technology Resource Inventory System</span></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `device_name`
--

CREATE TABLE `device_name` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(10, 'Monitor'),
(11, 'Meja'),
(12, 'Keyboard'),
(13, 'Tipe Barang Lain'),
(14, 'Televisi'),
(15, 'Komputer'),
(16, 'Kursi'),
(17, 'AC'),
(18, 'Printer'),
(19, 'Wifi'),
(20, 'Lemari'),
(21, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `ld_id` int(11) NOT NULL,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(1, 22, '2023-03-06', 4),
(2, 23, '2023-03-14', 13),
(3, 22, '2023-03-15', 26),
(4, 22, '2023-03-15', 25),
(5, 22, '2023-03-15', 24),
(6, 22, '2023-03-15', 23),
(7, 22, '2023-03-15', 22),
(8, 22, '2023-03-15', 21),
(9, 22, '2023-03-15', 20),
(10, 22, '2023-03-15', 19),
(11, 22, '2023-03-15', 18),
(12, 22, '2023-03-15', 17),
(13, 22, '2023-03-15', 16),
(14, 22, '2023-03-15', 15),
(15, 22, '2023-03-15', 14),
(16, 23, '2023-03-15', 37),
(17, 23, '2023-03-15', 36),
(18, 23, '2023-03-15', 35),
(19, 23, '2023-03-15', 34),
(20, 23, '2023-03-15', 33),
(21, 23, '2023-03-15', 32),
(22, 23, '2023-03-15', 31),
(23, 23, '2023-03-15', 30),
(24, 23, '2023-03-15', 29),
(25, 23, '2023-03-15', 28),
(26, 23, '2023-03-15', 27),
(27, 24, '2023-03-15', 74),
(28, 24, '2023-03-15', 73),
(29, 24, '2023-03-15', 72),
(30, 24, '2023-03-15', 71),
(31, 24, '2023-03-15', 70),
(32, 24, '2023-03-15', 69),
(33, 24, '2023-03-15', 68),
(34, 24, '2023-03-15', 67),
(35, 24, '2023-03-15', 66),
(36, 24, '2023-03-15', 65),
(37, 24, '2023-03-15', 64),
(38, 24, '2023-03-15', 63),
(39, 24, '2023-03-15', 62),
(40, 24, '2023-03-15', 61),
(41, 24, '2023-03-15', 60),
(42, 24, '2023-03-15', 59),
(43, 24, '2023-03-15', 58),
(44, 24, '2023-03-15', 57),
(45, 24, '2023-03-15', 56),
(46, 24, '2023-03-15', 55),
(47, 24, '2023-03-15', 54),
(48, 24, '2023-03-15', 53),
(49, 24, '2023-03-15', 52),
(50, 24, '2023-03-15', 51),
(51, 24, '2023-03-15', 50),
(52, 24, '2023-03-15', 49),
(53, 24, '2023-03-15', 48),
(54, 24, '2023-03-15', 47),
(55, 24, '2023-03-15', 46),
(56, 24, '2023-03-15', 45),
(57, 24, '2023-03-15', 44),
(58, 24, '2023-03-15', 43),
(59, 24, '2023-03-15', 42),
(60, 24, '2023-03-15', 41),
(61, 24, '2023-03-15', 40),
(62, 24, '2023-03-15', 39),
(63, 24, '2023-03-15', 38);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `fullname`, `notification`, `date_of_notification`, `link`) VALUES
(1, 'anand fahri', 'Update Status monitor, Serial Number:&nbsp;&nbsp;1', '2023-03-05 15:38:40', 'damage.php'),
(2, 'anand fahri', 'Update Status monitor, Serial Number:&nbsp;&nbsp;1', '2023-03-05 15:41:22', 'damage.php'),
(3, 'anand fahri', 'Tambah Barang id 10&nbspName&nbspmonitor, Serial Number: 12321', '2023-03-05 16:16:24', 'device_stocks.php'),
(4, 'anand fahri', 'Edit device monitor, Serial Number: 12321', '2023-03-05 16:48:31', 'device_stocks.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stdevice`
--

CREATE TABLE `stdevice` (
  `id` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `dev_nama` varchar(128) NOT NULL,
  `dev_desc` varchar(128) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL,
  `dev_pemda` varchar(128) NOT NULL,
  `dev_register` varchar(128) NOT NULL,
  `dev_jumlah` varchar(128) NOT NULL,
  `dev_harga` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_nama`, `dev_desc`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`, `dev_pemda`, `dev_register`, `dev_jumlah`, `dev_harga`) VALUES
(14, 17, 'AC', '<p>-</p>\r\n', '-', 'Media', '-', 'Baik', '-', '-', '1', '-'),
(15, 16, 'Kursi Besi Metal', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '2', '-'),
(16, 16, 'Kursi Pejabat', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(17, 16, 'Kursi Plastik', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(18, 11, 'Meja Komputer', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(19, 11, 'Meja Kecil', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(20, 13, 'Speaker', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(21, 15, 'Komputer', '<p>-</p>\r\n', '-', 'Lenovo', '2019', 'Baik', '-', '-', '1', '-'),
(22, 20, '-', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(23, 18, 'Printer', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(24, 13, 'Karpet Bulu Rumput', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(25, 19, 'Wifi', '<p>-</p>\r\n', '-', 'Fiber Home', '-', 'Baik', '-', '-', '1', '-'),
(26, 13, 'Mesin Jahit', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(27, 11, 'Meja Kecil', '<p>-</p>\r\n', '-', 'Activ', '2013', 'Baik', '-', '-', '2', '-'),
(28, 16, 'Kursi Pejabat', '<p>-</p>\r\n', '1.3.2.05.03.03.005', 'Kursi pejabat eselon III Tiger', '2014', 'Baik', '-', '000002', '0', '3.100.000'),
(29, 21, 'Notebook', '<p>-</p>\r\n', '1.3.2.10.01.02.003', 'Hp 240 G6 (13-7020U,4GB,1 TB,W)', '2016', 'Baik', '-', '000004', '0', '7.105.000'),
(30, 16, 'Kursi Besi Metal', '<p>-</p>\r\n', '-', 'Warna Biru', '-', 'Baik', '-', '-', '1', '-'),
(31, 21, 'Laptop', '<p>-</p>\r\n', '-', 'Lenovo', '2019', 'Baik', '-', '-', '1', '-'),
(32, 11, 'Meja Komputer', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(33, 16, 'Set Sofa', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(34, 16, 'Sofa Kecil', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '2', '-'),
(35, 11, 'Meja Tamu', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(36, 17, 'AC', '<p>-</p>\r\n', '-', 'Sharp', '-', 'Baik', '-', '-', '1', '-'),
(37, 13, 'Kulkas', '<p>-</p>\r\n', '-', 'Sharp', '-', 'Baik', '-', '-', '1', '-'),
(38, 11, 'Meja Pegawai non struktural', '<p>-</p>\r\n', '1.3.2.05.03.01.008', '-', '1976', 'Rusak Ringan', '-', '000002', '0', '68750'),
(39, 20, 'Lemari Besi/Metal', '<p>-</p>\r\n', '1.3.2.05.01.04.001', 'Lemari besi/Metal Brother 2 pintu', '2008', 'Baik', '-', '000004', '0', '2.350.000'),
(40, 16, 'Kursi Besi Metal', '<p>-</p>\r\n', '1.3.2.05.02.01.003', 'Warna Biru', '2008', 'Baik', '-', '000001', '0', '100.000'),
(41, 21, 'Laptop', '<p>-</p>\r\n', '1.3.2.10.01.02.002', 'Asus', '2011', 'Baik', '-', '000002', '0', '5.450.000'),
(42, 13, 'Peralatan Personal Komputer lainnya', '<p>-</p>\r\n', '1.3.2.10.02.03.018', 'Software windows 2008', '2011', 'Baik', '-', '000006', '0', '11.300.000'),
(43, 13, 'Filling Kabinet Besi', '<p>-</p>\r\n', '1.3.2.05.01.04.005', 'Filling kabinet Brother', '2012/2014', 'Baik', '-', '000002', '0', '300.000 (2)'),
(44, 13, 'Peralatan Personal Komputer lainnya', '<p>jumlah barang&nbsp;14-15</p>\r\n', '1.3.2.10.02.03.018', 'Hub 24 port D-link', '2012', 'Baik', '-', '-', '15', '14.000.000'),
(45, 13, 'Sound System Speaker Activ', '<p>-</p>\r\n', '1.3.2.05.02.06.008', 'GMG', '2103', 'Baik', '-', '000002', '0', '4.500.000'),
(46, 12, 'Keyboard (peralatan mainframe)', '<p>-</p>\r\n', '1.3.2.10.02.01.013', 'Keyboard dan Mouse Logitech', '2013', 'Baik', '-', '-', '11', '350.000'),
(47, 16, 'Kursi Besi Metal', '<p>jumlah barang&nbsp;08-12</p>\r\n', '1.3.2.05.02.01.003', 'Biru', '2013', 'Baik', '-', '-', '12', '35.000 (6)'),
(48, 11, 'Meja Komputer', '<p>jumlah barang&nbsp;02-06 / 11</p>\r\n', '1.3.2.05.02.01.039', 'Besi dan Kayu', '2013', 'Baik', '-', '-', '11', '500.000 (11) '),
(49, 17, 'AC split', '<p>-</p>\r\n', '1.3.2.05.02.04.004', 'Panasonic', '2013', 'Baik', '-', '000005', '0', '4.900.000'),
(50, 16, 'Kursi Kerja Pejabat', '<p>-</p>\r\n', '1.3.2.05.03.03.006', ' Eselon IV kaki B tiger', '2014', 'Baik', '-', '000001', '0', '1.000.000'),
(51, 20, 'Lemari Besi/Metal', '<p>-</p>\r\n', '1.3.2.05.01.04.001', 'Lemari besi/metal pintu slidin brother tipe B304', '2015', 'Baik', '-', '000007', '5', '2.500.000'),
(52, 21, 'Laptop', '<p>-</p>\r\n', '1.3.2.10.02.01.12', 'Asus', '2017', 'Baik', '-', '000005', '0', '6.772.510'),
(53, 16, 'Bangku Tunggu', '<p>-</p>\r\n', '1.3.2.05.02.01.035', 'BIGSTAR', '2018', 'Baik', '-', '000001', '0', '5.000.000'),
(54, 13, 'Filling Kabinet Besi', '<p>jumlah barang 8 - 10</p>\r\n', '1.3.2.05.01.04.005', 'Modena', '2018', 'Baik', '-', '-', '10', '3.800.000 (3)'),
(55, 11, 'Meja Kerja pejabat Eselon IV', '<p>jumlah barang 6-7</p>\r\n', '1.3.2.05.03.01.006', 'Lokal', '2018', 'Baik', '-', '-', '7', '2.500.000 (2)'),
(56, 16, 'Kursi kerja pejabat Eselon  IV', '<p>-</p>\r\n', '1.3.2.05.03.03.006', 'Lokal', '2018', 'Baik', '-', '-', '7', '1.500.000 (2)'),
(57, 13, 'Scanner Fujisu', '<p>-</p>\r\n', '-', '-', '2018', 'Baik', '-', '-', '1', '-'),
(58, 16, 'Kursi Merah', '<p>-</p>\r\n', '-', '-', '2018', 'Baik', '-', '-', '1', '-'),
(59, 18, 'Printer (Peralatan personal komputer)', '<p>-</p>\r\n', '1.3.2.10.02.03.003', 'Epson L3110', '2019', 'Baik', '-', '000030', '0', '3.000.000 (8)'),
(60, 17, 'AC split', '<p>-</p>\r\n', '1.3.2.05.02.04.004', 'Gree', '2020', 'Baik', '-', '000011', '0', '4.550.000'),
(61, 18, 'Printer (Peralatan personal komputer)', '<p>-</p>\r\n', '1.3.2.10.02.03.003', 'Epson L 120', '2020', 'Baik', '-', '000032', '0', '2.000.000'),
(62, 13, 'Scanner Brother', '<p>-</p>\r\n', '-', '-', '2021', 'New', '-', '-', '0', '-'),
(63, 13, 'Kulkas', '<p>-</p>\r\n', '-', '-', '2021', 'New', '-', '-', '0', '-'),
(64, 13, 'Scanner Plutex', '<p>-</p>\r\n', '-', '-', '2022', 'Baik', '-', '-', '1', '-'),
(65, 15, 'Komputer', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '11', '-'),
(66, 16, 'Kursi Besi Bulat', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(67, 16, 'Kursi Kerja Hitam', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(68, 13, 'Garuda', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(69, 20, 'Rak Arsip Hitam', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(70, 13, 'Box Kontainer', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '7', '-'),
(71, 11, 'Meja Kecil', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(72, 13, 'Papan Struktur', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(73, 19, 'Wifi', '<p>-</p>\r\n', '-', '-', '-', 'Baik', '-', '-', '1', '-'),
(74, 13, 'Audio Mixer', '<p>-</p>\r\n', '-', 'Yamaha', '-', 'Baik', '-', '-', '1', '-');

-- --------------------------------------------------------

--
-- Table structure for table `stlocation`
--

CREATE TABLE `stlocation` (
  `stdev_id` int(11) NOT NULL,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'R. Produksi', 'images/thumbnails.jpg'),
(23, 'R. Sekretaris Dinas', 'images/thumbnails.jpg'),
(24, 'R. Sekretariat', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(190, 'admin', '2023-02-27 10:30:02', '2023-03-06', 5, 0),
(191, 'admin', '2023-02-27 10:40:05', '2023-03-06', 5, 0),
(192, 'admin', '2023-02-28 08:44:15', '2023-03-06', 5, 0),
(193, 'admin', '2023-02-28 08:44:15', '2023-03-06', 5, 0),
(194, 'admin', '2023-02-28 08:44:15', '2023-03-06', 5, 0),
(195, 'admin', '2023-02-28 09:12:54', '2023-03-06', 5, 0),
(196, 'admin', '2023-02-28 16:30:57', '2023-03-06', 5, 0),
(197, 'admin', '2023-02-28 17:17:51', '2023-03-06', 5, 0),
(198, 'admin', '2023-02-28 17:17:52', '2023-03-06', 5, 0),
(199, 'admin', '2023-03-01 08:36:08', '2023-03-06', 5, 0),
(200, 'admin', '2023-03-01 12:17:44', '2023-03-06', 5, 0),
(201, 'admin', '2023-03-01 12:24:12', '2023-03-06', 5, 0),
(202, 'admin', '2023-03-01 19:57:41', '2023-03-06', 5, 0),
(203, 'admin', '2023-03-02 09:21:35', '2023-03-06', 5, 0),
(204, 'admin', '2023-03-02 11:26:52', '2023-03-06', 5, 0),
(205, 'admin', '2023-03-02 11:27:08', '2023-03-06', 5, 0),
(206, 'admin', '2023-03-02 11:28:29', '2023-03-06', 5, 0),
(207, 'admin', '2023-03-02 11:28:40', '2023-03-06', 5, 0),
(208, 'admin', '2023-03-02 19:25:48', '2023-03-06', 5, 0),
(209, 'admin', '2023-03-02 19:33:47', '2023-03-06', 5, 0),
(210, 'admin', '2023-03-03 07:04:55', '2023-03-06', 5, 0),
(211, 'admin', '2023-03-05 07:27:00', '2023-03-06', 5, 0),
(212, 'admin', '2023-03-05 07:34:22', '2023-03-06', 5, 0),
(213, 'admin', '2023-03-05 07:36:17', '2023-03-06', 5, 0),
(214, 'admin', '2023-03-05 07:40:48', '2023-03-06', 5, 0),
(215, 'anand', '2023-03-05 09:10:04', '2023-03-06', 0, 13),
(216, 'admin', '2023-03-05 09:10:53', '2023-03-06', 5, 0),
(217, 'anand', '2023-03-05 09:12:46', '2023-03-06', 0, 13),
(218, 'admin', '2023-03-05 09:15:14', '2023-03-06', 5, 0),
(219, 'anand', '2023-03-05 15:35:34', '2023-03-06', 0, 13),
(220, 'admin', '2023-03-05 17:05:59', '2023-03-06', 5, 0),
(221, 'admin', '2023-03-05 19:42:09', '2023-03-06', 5, 0),
(222, 'admin', '2023-03-06 08:42:09', '2023-03-06', 5, 0),
(223, 'anand', '2023-03-06 11:09:54', '2023-03-06', 0, 13),
(224, 'admin', '2023-03-06 11:10:40', '', 5, 0),
(225, 'admin', '2023-03-14 06:31:31', '', 5, 0),
(226, 'admin', '2023-03-14 07:34:35', '', 5, 0),
(227, 'admin', '2023-03-14 16:40:54', '', 5, 0),
(228, 'admin', '2023-03-14 16:42:42', '', 5, 0),
(229, 'admin', '2023-03-15 05:17:48', '', 5, 0),
(230, 'admin', '2023-03-15 08:47:28', '', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `device_name`
--
ALTER TABLE `device_name`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`ld_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `stdevice`
--
ALTER TABLE `stdevice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stlocation`
--
ALTER TABLE `stlocation`
  ADD PRIMARY KEY (`stdev_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(128) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `device_name`
--
ALTER TABLE `device_name`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `ld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stdevice`
--
ALTER TABLE `stdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `stlocation`
--
ALTER TABLE `stlocation`
  MODIFY `stdev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
