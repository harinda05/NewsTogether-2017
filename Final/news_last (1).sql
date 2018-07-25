-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 08:11 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_last`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `username`, `password`) VALUES
(4, 'admin@admin.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `channel_payment`
--

CREATE TABLE `channel_payment` (
  `channel` text NOT NULL,
  `payment_per_news` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel_payment`
--

INSERT INTO `channel_payment` (`channel`, `payment_per_news`) VALUES
('Ada_Derana', 1200),
('News_24_7', 750);

-- --------------------------------------------------------

--
-- Table structure for table `news_completed`
--

CREATE TABLE `news_completed` (
  `news_id` int(10) NOT NULL,
  `repo_description` text NOT NULL,
  `ftp_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_completed`
--

INSERT INTO `news_completed` (`news_id`, `repo_description`, `ftp_file`) VALUES
(3, 'Commenced later than expected.', 'derana.zip'),
(33, 'nanda house win the royal college sport meet.', 'first.zip'),
(38, 'there  larger traffic had 3 to 8 in tawnhall.', 'rally1.zip'),
(40, 'there more than 500 students participate\r\nthis rally.  ', 'rally.zip'),
(41, 'there more than 1000 engineering students  participate this rally.', 'studentrally.rar'),
(43, 'there larger patients rows in the national hospital. ', 'sahan.zip'),
(44, 'there larger garbage throw on the raod.', 'garbage.zip'),
(46, 'prime minister give grate words to auditorium. ', 'prime.zip'),
(47, 'prime minister talk over 1 hours to company holders.', 'hilton-opening.rar'),
(48, 'prime minister give lot of prizes in that night. ', 'prime1.zip'),
(49, 'more that 1000 japura medical students participate.', 'news1.rar');

-- --------------------------------------------------------

--
-- Table structure for table `news_info`
--

CREATE TABLE `news_info` (
  `news_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `district` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `due_date` date NOT NULL,
  `due_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_info`
--

INSERT INTO `news_info` (`news_id`, `title`, `venue`, `date`, `time`, `district`, `description`, `due_date`, `due_time`) VALUES
(1, 'Post cricket match', 'SCC', '2017-12-03', '23:00:00', 'Colombo', 'Post match media conference', '2017-12-16', '05:00:00'),
(2, 'Locha', 'BMICH', '2017-12-13', '10:00:00', 'Colombo', 'wadawdadwa', '2017-12-20', '05:00:00'),
(3, 'Football', 'stadium', '2017-11-03', '18:00:00', 'adwdadwad', 'dwadwadawdaw', '2017-11-04', '09:00:00'),
(30, 'Election', 'Election Board', '2017-12-17', '21:04:00', 'Colombo', 'Post Election Media COnference', '2017-12-19', '02:00:00'),
(31, 'election', 'pannipitiya', '2017-12-02', '17:00:00', 'Colombo', 'election campaign have cover one day ', '2017-12-10', '00:00:00'),
(32, 'press conference ', 'galadhary hotel', '2017-12-10', '09:00:00', 'Colombo', 'union meeting in the HSB bank', '2017-12-11', '11:00:00'),
(33, 'sport meet', 'royal college', '2017-12-11', '09:00:00', 'Colombo', 'sport meet cover the every event', '2017-12-12', '14:00:00'),
(34, ' prize giving', 'royal college', '2017-12-12', '09:00:00', 'Colombo', 'AL pass student prize giving ', '2017-12-15', '14:00:00'),
(35, 'picketing', 'town hall', '2017-12-12', '09:00:00', 'Colombo', 'campus student picketing', '2017-12-15', '15:00:00'),
(36, 'picketing', 'hambanthota', '2017-12-13', '08:00:00', 'Hambantota', 'hambanthota hurbar workers picketing', '2017-12-20', '17:00:00'),
(37, 'opening ceremony', 'hambanthota', '2017-12-13', '08:00:00', 'Hambantota', 'hambanthota hurbar opennig', '2017-12-21', '14:00:00'),
(38, 'rally', 'town hall', '2017-12-14', '10:00:00', 'Colombo', 'colombo university student rally', '2017-12-22', '13:00:00'),
(39, 'rally', 'matara', '2017-12-14', '10:00:00', 'Colombo', 'Ruhuna university student rally', '2017-12-22', '13:00:00'),
(40, 'rally', 'nugegoda', '2017-12-14', '10:00:00', 'Colombo', 'japura university students rally', '2017-12-22', '13:00:00'),
(41, 'rally', 'jaffna', '2017-12-14', '10:00:00', 'Jaffna', 'jaffna university students rally', '2017-12-22', '13:00:00'),
(42, 'celebration event', 'jaffna', '2017-12-31', '11:00:00', 'Jaffna', 'new year celebration event', '2018-04-04', '07:00:00'),
(43, 'strike', 'nation hospital ', '2018-01-03', '14:00:00', 'Colombo', 'patients ideas, working Doctors ', '2018-01-11', '08:00:00'),
(44, 'environment pollution', 'thalawathugoda', '2018-01-05', '01:00:00', 'Colombo', 'thalawathugoda kalalgoda 174 bus route destroy by garbage  ', '2018-01-05', '08:00:00'),
(46, 'celebration event', 'hilton', '2018-01-01', '15:02:00', 'Colombo', 'prime minister visit this event', '2018-01-14', '19:59:00'),
(47, 'opening ceremony', 'hilton', '2017-12-31', '09:00:00', 'Colombo', 'prime minister visit this event', '2018-01-16', '10:00:00'),
(48, 'prize giving', 'hilton', '2017-12-22', '10:00:00', 'Colombo', 'prime minister visit this event', '2018-01-31', '16:00:00'),
(49, 'picketing', 'nugegoda', '2017-12-27', '08:00:00', 'Colombo', 'campus student picketing', '2018-01-17', '09:30:00'),
(50, 'Reality Star', 'Stein studio', '2017-12-10', '06:00:00', 'Colombo', 'Semi finals', '2017-12-11', '06:00:00'),
(51, 'Rally', 'Maththala Airport premises', '2017-12-20', '10:00:00', 'Hambantota', 'Rally against privatizing Maththala airport', '2017-12-21', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_rejected`
--

CREATE TABLE `news_rejected` (
  `news_id` int(10) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_rejected`
--

INSERT INTO `news_rejected` (`news_id`, `reason`) VALUES
(3, 'No Reason Given'),
(33, 'no value in this news'),
(41, 'videos are not clear. '),
(46, 'No Reason Given'),
(48, 'No Reason Given');

-- --------------------------------------------------------

--
-- Table structure for table `news_reporter`
--

CREATE TABLE `news_reporter` (
  `news_id` int(10) NOT NULL,
  `repo_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_reporter`
--

INSERT INTO `news_reporter` (`news_id`, `repo_id`) VALUES
(3, 1004),
(30, 1017),
(31, 1015),
(32, 1012),
(33, 1032),
(34, 1003),
(35, 1028),
(37, 1026),
(38, 1020),
(39, 1007),
(40, 1028),
(41, 1030),
(43, 1003),
(44, 1003),
(46, 1003),
(47, 1003),
(48, 1003),
(49, 1003);

-- --------------------------------------------------------

--
-- Table structure for table `news_status`
--

CREATE TABLE `news_status` (
  `news_id` int(10) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_status`
--

INSERT INTO `news_status` (`news_id`, `status`) VALUES
(1, 'pending'),
(2, 'completed'),
(3, 'rejected'),
(30, 'asigned'),
(31, 'asigned'),
(32, 'asigned'),
(33, 'rejected'),
(34, 'asigned'),
(35, 'asigned'),
(36, 'pending'),
(37, 'asigned'),
(38, 'completed'),
(39, 'asigned'),
(40, 'accepted'),
(41, 'rejected'),
(42, 'pending'),
(43, 'accepted'),
(44, 'accepted'),
(46, 'rejected'),
(47, 'completed'),
(48, 'rejected'),
(49, 'completed'),
(50, 'pending'),
(51, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `news_telecasted`
--

CREATE TABLE `news_telecasted` (
  `news_id` int(10) NOT NULL,
  `telecast_date` date NOT NULL,
  `Ada_Derana` varchar(3) NOT NULL,
  `News_24/7` varchar(3) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_telecasted`
--

INSERT INTO `news_telecasted` (`news_id`, `telecast_date`, `Ada_Derana`, `News_24/7`, `payment`) VALUES
(40, '2017-12-22', 'Yes', 'Yes', 1950),
(43, '2018-01-11', 'Yes', 'Yes', 1950),
(44, '2018-01-05', 'No', 'Yes', 750);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `repo_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `monthly_payment` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reporter_district`
--

CREATE TABLE `reporter_district` (
  `repo_id` int(10) NOT NULL,
  `district` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter_district`
--

INSERT INTO `reporter_district` (`repo_id`, `district`) VALUES
(0, 'Colombo'),
(1003, 'Colombo'),
(1004, 'Colombo'),
(1005, 'Colombo'),
(1006, 'Kurunegala'),
(1007, 'Matara'),
(1008, 'Ampara'),
(1009, 'Colombo'),
(1010, 'Galle'),
(1011, 'Ampara'),
(1012, 'Colombo'),
(1013, 'Colombo'),
(1014, 'Ampara'),
(1015, 'Colombo'),
(1016, 'Anuradhapura'),
(1017, 'Colombo'),
(1018, 'Kandy'),
(1019, 'Kilinochchi'),
(1020, 'Colombo'),
(1021, 'Anuradhapura'),
(1022, 'Matale'),
(1023, 'Anuradhapura'),
(1024, 'Matara'),
(1025, 'Mannar'),
(1026, 'Hambantota'),
(1027, 'Monaragala'),
(1028, 'Colombo'),
(1029, 'Colombo'),
(1030, 'Jaffna'),
(1031, 'Gampaha'),
(1032, 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `reporter_info`
--

CREATE TABLE `reporter_info` (
  `repo_id` int(10) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter_info`
--

INSERT INTO `reporter_info` (`repo_id`, `nic`, `name`, `mobile`, `address`, `email`) VALUES
(0, 'sd', 'Himaruk', '8888888888', '                        \r\n fdff             ', 'gvg@hh.hh'),
(1001, '940531225V', 'Harinda', '774561223', 'Samagi Rd, Colombo', 'adwdada@gmail.com'),
(1002, '8465956V', 'Lochana', '0774564513', 'Borella', ''),
(1003, '950780959', 'sahan Madsanka', '0715296963', '        56,thalawathugoda,pannipitiya\r\n        ', 'w.s.m.rathnasekara@gmail.com'),
(1004, '940780959v', 'shamal shamarakoon', '0775296963', '32,hhkas,horana\r\n    ', 'shamalsahan@gmail.com'),
(1005, '950780958v', 'pasan liyanage', '0715503239', '54,wataraka,kalaniya\r\n    ', 'pasan@gmail.com'),
(1006, '930780959v', 'lasitha eshan', '0785296963', '78, 1 street, kakulegama, kurunagala\r\n    ', 'lasitha@gmail.com'),
(1007, '980950780000', 'jayanaka fonseka', '0719846290', '80,helakuru, horana\r\n    ', 'jayz@outlook.com'),
(1008, '950234959v', 'dulitha perera', '0785296963', '1000/2, dole kade, ampara\r\n    ', 'bile@gmail.com'),
(1009, '950780959v', 'sahan madusanka', '0715296963', '528/c,bodirajaMW, thalawathugda\r\n    ', 'sahannett@gmail.com'),
(1010, '200000000000', 'chakaa badaa', '0745296743', '34, udapara , yata para, ambalangoda\r\n    ', 'danu@gmail.com'),
(1011, '950780959x', 'sahan madusanka', '0714678899', '12, kabapara , udawaththa', 'sahan1@gmail.com'),
(1012, '930876987v', 'kire nimesh', '0112779966', '78, road 1, thalawa kalee\r\n    ', 'kire@gmail.com'),
(1013, '950345543v', 'kasun ranawala', '9876543200', '65, 1st street, jaffna', 'kasun@gmail.com'),
(1014, '930947364v', 'W. Oshan N. Wickramaratne', '0778787607', '64/2A,kandy road, imbulgoda\r\n        ', 'oshan@yahoo.com'),
(1015, '980780959v', 'Salitha Chathuranga', '0715407037', '11/7/2L, 5th lane, Warallahena, Horana\r\n    ', 'salitha@gmail.com'),
(1016, '950234785v', 'W.A.D.A Indrajith', '0770429692', '\"Udani\",pawankattiya,hedigalla,gurulubedda\r\n    ', 'udhani@gmail.com'),
(1017, '950756373v', 'Dhanika Bulathsinhala', '0776494243', '122/A, Lake Road, Boralesgamuwa\r\n    ', 'dhanika@gmail.com'),
(1018, '960345786v', 'Tharindu Sandaruwan', '0714720861', '\"Lahiru\",Walawela,Nihiluwa,Beliatta.\r\n    ', 'lashiru@gmail.com'),
(1019, '840780959v', 'Lahiru Nadeemal Gamage', '0770515302', 'Niriwella,Kombla,Imaduwa\r\n    ', 'niri@gmail.com'),
(1020, '950234856v', 'sahan madusanka', '0723456782', '182,palanwatta,pannipitiya\r\n    ', 'sani@gmail.com'),
(1021, '938538266v', 'Maneesha Khemani Wijesinghe', '0711261712', '603/18A,sama mawatha,mailagas junction,anuradhapura\r\n    ', 'mahi@gmail.com'),
(1022, '930456123v', 'H.G.Nuwan Chathuranga Somasiri', '0767007315', '67, Rajaela gama, Hingurakgoda\r\n    ', 'nuwan@gmail.com'),
(1023, '940546872v', 'Kasuni Piyumika Assalaarachchi', '0718723255', 'No.822,Stage 2,Anuradhapura\r\n    ', 'kasuni@gmail.com'),
(1024, '950234877v', 'Pamudi Dahanayake', '0769842913', '1/40, Abeygunaratne road, welegoda, Matara.\r\n    ', 'pamudi@outlook.com'),
(1025, '940773312v', 'Udara Dhananjaya', '0715420550', '17/A/1, Horagasmulla, Divulapitiya\r\n    ', 'udara@gmail.con'),
(1026, '930760720v', 'Madhusanka Perera', '0771964382', 'No 255/16, pannagamuwa, weerawila, Tissamaharama.\r\n    ', 'perera@gmail.com'),
(1027, '950780950v', 'JH Jayawardhana', '0711756381', 'No 34, Ahasyanapitiya, Mawathagama\r\n    ', 'jaya@outlook.com'),
(1028, '960746200v', 'Wathsala Chathurani Karunarathne', '0778519114', '62/1, Maduweegedara, Nittambuwa\r\n    ', 'wathsala@gmail.com'),
(1029, '950821100v', 'Kavinda Niroshana Jayakody', '0775851911', '8B 2/5A Perera Lane,Wellawatte, Colombo-06\r\n    ', 'kavi@yahoo.com'),
(1030, '950200400v', 'J.Logeesan', '0715541743', '98-1 potpathy road, kokuvil east, kokuvil, jaffna\r\n    ', 'logi@gmail.com'),
(1031, '920894201v', 'Elankumaran.T', '0717992265', 'No 1, pahalagama, eheliyagoda\r\n    ', 'elan@yahoo.com'),
(1032, '860345200v', 'Wasura Wattearachchi', '0712146523', '34/B, Kanagarathne Place, Laxapathiya, Moratuwa\r\n    ', 'wasura@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `reporter_login`
--

CREATE TABLE `reporter_login` (
  `repo_id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter_login`
--

INSERT INTO `reporter_login` (`repo_id`, `username`, `password`) VALUES
(0, 'kgkg', 'ed1b2f759076067da615ca887bb27f7b8427a9cc'),
(1003, 'sahan', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(1004, 'shamal', '266dc053a8163e676e83243070241c8917f8a8a3'),
(1005, 'pasan', '99d12d4b6a72e905e68359d799b2aa5e93229f94'),
(1006, 'lasitha', '6e47df559c5ec474d7ea8c9c29bc56da0f336160'),
(1007, 'jayaz', '78c21d9b296a9f3b31b02f8a4c91b74f41748a77'),
(1008, 'bile', 'dcf4e79dfad88a35f292a318aed707d9c215fe69'),
(1009, 'sahan1', 'dcf4e79dfad88a35f292a318aed707d9c215fe69'),
(1010, 'danu', '95e0e4262ba0125e14c1e61f5c12dc38c7f44f28'),
(1011, 'sahan2', '266dc053a8163e676e83243070241c8917f8a8a3'),
(1012, 'kire', '0cd221b2243c77a42270da0e3d2d3e71bffb3a0a'),
(1013, 'kasun', '8d993ccdf628e26e170a949ee2a3870455dbd8fa'),
(1014, 'oshan', '123456789012'),
(1015, 'salitha', '1234567890'),
(1016, 'udhani', '1234567890'),
(1017, 'dhanika', '1234567890'),
(1018, 'lahiru', '1234567890'),
(1019, 'nalaka', '987654321'),
(1020, 'sahan3', '0987654321'),
(1021, 'mahika', '654321987654321'),
(1022, 'nuwan', '0987654321'),
(1023, 'kasuni', '9876543'),
(1024, 'panda', '1234567'),
(1025, 'udara', '0987654'),
(1026, 'madusanka', 'mnbvcxz'),
(1027, 'jh', 'lkjhgfdsa'),
(1028, 'wathsala', '987654321'),
(1029, 'kavindha', 'qwertyuiop'),
(1030, 'logishan', 'asdf@123'),
(1031, 'elankuma', 'qwert123'),
(1032, 'wasura', 'poiuytr98765');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_completed`
--
ALTER TABLE `news_completed`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_info`
--
ALTER TABLE `news_info`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_rejected`
--
ALTER TABLE `news_rejected`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_reporter`
--
ALTER TABLE `news_reporter`
  ADD PRIMARY KEY (`news_id`,`repo_id`),
  ADD KEY `news r to r info` (`repo_id`);

--
-- Indexes for table `news_status`
--
ALTER TABLE `news_status`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_telecasted`
--
ALTER TABLE `news_telecasted`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`repo_id`,`month`);

--
-- Indexes for table `reporter_district`
--
ALTER TABLE `reporter_district`
  ADD PRIMARY KEY (`repo_id`,`district`);

--
-- Indexes for table `reporter_info`
--
ALTER TABLE `reporter_info`
  ADD PRIMARY KEY (`repo_id`);

--
-- Indexes for table `reporter_login`
--
ALTER TABLE `reporter_login`
  ADD PRIMARY KEY (`repo_id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news_info`
--
ALTER TABLE `news_info`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_completed`
--
ALTER TABLE `news_completed`
  ADD CONSTRAINT `news_completed_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`);

--
-- Constraints for table `news_rejected`
--
ALTER TABLE `news_rejected`
  ADD CONSTRAINT `news_rejected_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_reporter`
--
ALTER TABLE `news_reporter`
  ADD CONSTRAINT `news_reporter_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_reporter_ibfk_2` FOREIGN KEY (`repo_id`) REFERENCES `reporter_info` (`repo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_status`
--
ALTER TABLE `news_status`
  ADD CONSTRAINT `news_status_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_telecasted`
--
ALTER TABLE `news_telecasted`
  ADD CONSTRAINT `news_telecasted_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`repo_id`) REFERENCES `reporter_info` (`repo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reporter_district`
--
ALTER TABLE `reporter_district`
  ADD CONSTRAINT `rep_id` FOREIGN KEY (`repo_id`) REFERENCES `reporter_info` (`repo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reporter_login`
--
ALTER TABLE `reporter_login`
  ADD CONSTRAINT `reporter_login_ibfk_1` FOREIGN KEY (`repo_id`) REFERENCES `reporter_info` (`repo_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
