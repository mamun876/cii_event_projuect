-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `startdate`, `enddate`, `allDay`) VALUES
(2, 'New Event', '2018-02-25T00:00:00+2:00', '2018-02-25T00:00:00+2:00', 'false'),
(3, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false'),
(4, 'New Event', '2018-03-02T00:00:00+2:00', '2018-03-02T00:00:00+2:00', 'false'),
(5, 'New Event', '2018-02-27T00:00:00+2:00', '2018-02-27T00:00:00+2:00', 'false'),
(6, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `status`) VALUES
(2, 'afiza', 'afiza@gmail.com', 'Buy Package', 'I want to buy a package but I need some help to buy it', 1),
(10, 'Ikbal', 'ikbal@gmail.com', '', 'I want to buy a package and I need some help to buy this package', 0),
(11, 'Ikbal', 'ikbal@gmail.com', '', 'I am going to marry today thats why I need to buy the package', 0),
(12, 'sadid', 'sadid@gmail.com', '', 'I am going to laximpur today to attend my friend marriege', 0),
(13, 'ayeshaibnat', 'ayeshaibnat@gmail.com', '', 'sdgfdgfdg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `descrip` varchar(500) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `booking_id`, `title`, `location`, `date_created`, `color`, `start`, `end`, `descrip`, `img`) VALUES
(1, 0, 'Cocktail hour', 'aclc', '2018-03-07 03:12:52', '#40E0D0', '2018-03-07 00:00:00', '2018-03-08 00:00:00', '', ''),
(2, 1, 'Guests seated at the reception', 'Malaybalay', '2018-03-07 03:13:59', '#40E0D0', '2018-03-08 00:00:00', '2018-03-09 00:00:00', '', ''),
(3, 2, 'The wedding party & the happy couple are introduced', 'valencia city ', '2018-03-07 18:06:30', '#FF0000', '2018-03-19 08:00:00', '2018-03-19 20:00:00', '', ''),
(4, 2, 'First dance', 'valencia city ', '2018-03-07 18:07:11', '#FF0000', '2018-03-09 07:30:00', '2018-03-09 21:00:00', '', ''),
(5, 2, 'Toast & speeches', 'asdasd', '2018-03-07 18:09:28', '#FFD700', '2018-03-07 00:00:00', '2018-03-08 00:00:00', '', ''),
(6, 2, 'Dinner', 'asdasd', '2018-03-07 18:10:10', '', '2018-03-07 00:00:00', '2018-03-08 00:00:00', '', ''),
(7, 2, 'Father/daughter dance', 'asdasd', '2018-03-07 18:14:36', '#FF8C00', '2018-03-09 00:00:00', '2018-03-10 00:00:00', '', ''),
(8, 1, 'Mother/son dance', 'asdasd', '2018-03-07 18:15:03', '#008000', '2018-03-07 06:00:00', '2018-03-07 10:00:00', '', ''),
(9, 1, 'Bouquet & garter toss', 'asdasd', '2018-03-07 18:15:53', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00', '', ''),
(10, 1, 'Dancing', 'asdasd', '2018-03-07 18:18:44', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00', '', ''),
(11, 0, 'Cake-cutting', 'ASDASD', '2018-03-07 18:21:58', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00', '', ''),
(12, 0, 'Last song', 'ASDASD', '2018-03-07 18:22:26', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00', '', ''),
(13, 0, 'End of reception/After-party', 'ASDASD', '2018-03-07 18:22:38', '', '2018-03-10 00:00:00', '2018-03-11 00:00:00', '', ''),
(14, 34, 'Demo Title', 'Demo Location', '2022-04-13 18:30:17', '#FF0000', '2022-04-13 00:00:00', '2022-04-14 00:00:00', '', ''),
(16, 31, 'Title One', 'Loc 1', '2022-04-13 18:32:25', '#000', '2022-04-28 00:00:00', '2022-04-29 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(100) NOT NULL,
  `alternate_text` varchar(100) NOT NULL,
  `type` char(5) NOT NULL,
  `size` varchar(10) NOT NULL,
  `relate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `booking_id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`, `relate_id`) VALUES
(52, 4564, 'Panjabi', 'To feel like a man', 'Men tend to marry later than women. Paul married Lucy four years ago', 'sundev.jpeg', 'blog2', '', '', 0),
(53, 4564, 'Panjabi', 'To feel like a man', 'Men tend to marry later than women. Paul married Lucy four years ago', 'sundev.jpeg', 'blog2', '', '', 0),
(54, 4564, 'Panjabi', 'To feel like a man', 'Men tend to marry later than women. Paul married Lucy four years ago', 'sundev.jpeg', 'blog2', '', '', 0),
(55, 4564, 'Panjabi', 'To feel like a man', 'Men tend to marry later than women. Paul married Lucy four years ago', 'sundev.jpeg', 'blog2', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `date_create` date NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `category`, `date_create`, `img`) VALUES
(1, 'How To Optimize Your Blog For High Ranking', 'Ecommerce', '2023-12-20', 'image_1.png'),
(2, 'Runner With Autism Graces Of Women', 'Photoshot', '2023-12-21', 'image_2.png'),
(3, 'Services To Grow Your Business Sell Affiliate', 'Business', '2023-12-23', 'image_3.png');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `service_include` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `title`, `sub_title`, `price`, `service_include`) VALUES
(1, 'Basic Ticket', 'Standard Package', 5000, 'Second Balcony Seat\r\n'),
(2, 'Silver Ticket', 'Pro Package', 7000, 'Premium Balcony Seat'),
(3, 'Gold Ticket', 'Enterprise Package', 12000, 'Pro Balcony Seat');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `price` int(100) NOT NULL,
  `service_include` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `title`, `subtitle`, `price`, `service_include`) VALUES
(11, 'Platinum ', 'Platinum Package', 45654, 'secondary seatsoft drink'),
(13, 'Platinum Package', 'Gold Ticket', 45654, 'premium seat and beside window to sea the view'),
(16, 'Basic Ticket', 'basic service', 0, 'service will be add after discussion');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts`
--

CREATE TABLE `tblaccounts` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `access_level` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblaccounts`
--

INSERT INTO `tblaccounts` (`user_id`, `user_email`, `user_password`, `access_level`) VALUES
(1, 'jasonp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(2, 'anniel@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(3, 'rosieing@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(4, 'marklw@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(5, 'deweyv@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(6, 'berrynich@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(7, 'vicrroyo@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(8, 'danielwbk@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(9, 'sharoncn@mail.com', '5278536a32d07ce18f876feaf18eae02', ''),
(10, 'michaelcomb@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(11, 'peggykhoury@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(12, 'paulproc@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(13, 'dekkersus@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(14, 'gingerlw@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(15, 'jameswf@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(16, 'lindagd@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(17, 'guemary@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(18, 'davidwls@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(19, 'donniehr@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(20, 'bettyvass@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(21, 'cherlylp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(22, 'carolcass@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(23, 'angelocl@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(24, 'peggybkk@mail.com', '', ''),
(25, 'test@mail.com', '', ''),
(26, 'troybrl@mail.com', '', ''),
(27, 'uuu@mail.com', '', ''),
(28, 'qweqw@asdas.com', 'a8f5f167f44f4964e6c998dee827110c', ''),
(29, 'aaaa@aaa.com', '47bce5c74f589f4867dbd57e9ca9f808', ''),
(30, 'andrewc@mail.com', '1a1dc91c907325c69271ddf0c944bc72', ''),
(31, 'aaront@mail.com', '1a1dc91c907325c69271ddf0c944bc72', ''),
(32, 'bruce@mail.com', '', ''),
(33, 'amy@mail.co', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(34, 'ww@mail.com', '', ''),
(35, 'stevenn@mail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts_detail`
--

CREATE TABLE `tblaccounts_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `location` text NOT NULL,
  `expectation_visitor` varchar(100) NOT NULL,
  `cash_advanced` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_signed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblaccounts_detail`
--

INSERT INTO `tblaccounts_detail` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `city`, `datetime_created`, `description`, `location`, `expectation_visitor`, `cash_advanced`, `status`, `date_signed`) VALUES
(1, 1, 'Jason', 'Phares', '8520001450', 'Corpus Christi', '2018-03-05 16:03:18', 'description', 'location', '100', 11000.00, 'confirm', '0000-00-00 00:00:00'),
(2, 2, 'Annie', 'Lin', '1458003650', 'Chillicothe', '2018-03-06 22:03:05', 'none', '94 Fairmont Avenue', '100', 10000.00, 'confirm', '0000-00-00 00:00:00'),
(3, 3, 'Rosie', 'Ingram', '0147852220', 'Olympia', '2018-03-08 14:03:03', 'none', '15 Honeysuckle Lane', '512', 1500.00, 'pending', '0000-00-00 00:00:00'),
(4, 4, 'Mark', 'Lew', '1478521456', 'Greenville', '2018-03-08 14:03:35', 'none', '521 Brown Avenue', '150', 1000.00, 'pending', '0000-00-00 00:00:00'),
(5, 5, 'Dewey', 'Vasquez', '3214589999', 'Scottsdale', '2018-03-08 14:03:36', 'none', '96 East Avenue', '210', 1100.00, 'pending', '0000-00-00 00:00:00'),
(6, 6, 'Nicholas', 'Berry', '1479996650', 'New York', '2018-03-08 14:03:40', 'none', '74 Godfrey Road', '300', 2500.00, 'pending', '0000-00-00 00:00:00'),
(7, 7, 'Victoria', 'Arroyo', '3256665870', 'Columbus', '2018-03-08 14:03:41', 'none', '98 Collins Avenue', '120', 1250.00, 'pending', '0000-00-00 00:00:00'),
(8, 8, 'Daniel', 'Wilbanks', '4580001450', 'Salina', '2018-03-08 14:03:42', 'none', '28 Sherman Street', '90', 1000.00, 'pending', '0000-00-00 00:00:00'),
(9, 9, 'Sharon', 'Cintron', '1456662210', 'Grand Rapids', '2018-03-08 14:03:44', 'none', '61 Bee Street', '300', 5000.00, 'pending', '0000-00-00 00:00:00'),
(10, 10, 'Michael', 'Halcomb', '4545554700', 'Portland', '2018-03-08 14:03:47', 'none', '101 Pratt Avenue', '300', 4500.00, 'pending', '0000-00-00 00:00:00'),
(11, 11, 'Peggy', 'Khoury', '4589780000', 'Pittsburg', '2018-03-08 14:03:51', 'none', '87 Breezewood Court', '250', 4000.00, 'pending', '0000-00-00 00:00:00'),
(12, 12, 'Paul', 'Prochaska', '7896665450', 'Fort Lauderdale', '2018-03-08 14:03:53', 'none', '42 West Fork Drive', '300', 5000.00, 'pending', '0000-00-00 00:00:00'),
(13, 13, 'Susan', 'Dekker', '6541258888', 'Jackson', '2018-03-08 14:03:54', 'none', '66 Lena Lane', '150', 1500.00, 'pending', '0000-00-00 00:00:00'),
(14, 14, 'Ginger', 'Lowe', '3214589650', 'Huntington', '2018-03-08 14:03:57', 'none', '602 Columbia Mine Road', '200', 2000.00, 'pending', '0000-00-00 00:00:00'),
(15, 15, 'James', 'Wolff', '1458545000', 'Salina', '2018-03-08 15:03:00', 'none', '69 Sherman Street', '450', 4000.00, 'pending', '0000-00-00 00:00:00'),
(16, 16, 'Linda', 'Gordon', '1478545450', 'Cambridge', '2018-03-08 15:03:01', 'none', '27 Gerald L. Bates Drive', '100', 1200.00, 'pending', '0000-00-00 00:00:00'),
(17, 17, 'Mary', 'Guerrero', '9547854780', 'Edgemont', '2018-03-08 15:03:02', 'none', '66 Denver Avenue', '510', 7000.00, 'pending', '0000-00-00 00:00:00'),
(18, 18, 'David', 'Wells', '8545454750', 'Schaumburg', '2018-03-08 01:03:31', 'none', '82 Millbrook Road', '200', 3000.00, 'confirm', '0000-00-00 00:00:00'),
(19, 19, 'Donnie', 'Hernandez', '3214589650', 'Lancaster', '2018-03-08 01:03:34', 'none', '66 Stout Street', '350', 2500.00, 'pending', '0000-00-00 00:00:00'),
(20, 20, 'Betty', 'Vassar', '2547850000', 'Pennsauken', '2018-03-08 01:03:42', 'none', '73 Metz Lane', '170', 2000.00, 'pending', '0000-00-00 00:00:00'),
(21, 21, 'Cheryl', 'Lapine', '4589650014', 'Kenney', '2018-03-08 01:03:46', 'none', '95 Little Acres Lane', '300', 2500.00, 'cancel', '0000-00-00 00:00:00'),
(22, 22, 'Carol', 'Casey', '2458954500', 'Lecompte', '2018-03-08 01:03:48', 'none', '52 Emerson Road', '480', 6500.00, 'pending', '0000-00-00 00:00:00'),
(23, 23, 'Angelo', 'Clark', '3245785540', 'Phoenix', '2018-03-09 02:03:01', 'none', '98 Hillside Street', '260', 4500.00, 'pending', '0000-00-00 00:00:00'),
(24, 24, 'Peggy', 'Buck', '6547778540', 'Baltimore', '2018-03-09 02:03:44', 'none', '93 Columbia Boulevard', '320', 6000.00, 'pending', '0000-00-00 00:00:00'),
(25, 25, 'Test', 'Account', '7777777777', 'Chicago', '2022-04-08 06:19:21', 'Demo Text', '115 Test Street', '210', 1200.00, 'confirm', '0000-00-00 00:00:00'),
(26, 26, 'Troy', 'Burril', '7854125650', '', '2022-04-12 06:19:11', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00'),
(30, 30, 'Andrew', 'Copeland', '7412220000', 'Iron Mountain', '2022-04-12 19:19:53', 'This is a demo test', '450 Lewis Street', '180', 23000.00, 'confirm', '0000-00-00 00:00:00'),
(31, 31, 'Aaron', 'Turner', '1478555545', 'Chicago', '2022-04-12 19:19:55', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00'),
(32, 32, 'Bruce', 'Wright', '7854785555', 'Durham', '2022-04-13 00:19:58', 'This is a demo description.', 'Location One', '200', 13000.00, 'confirm', '0000-00-00 00:00:00'),
(33, 33, 'Amy', 'Stewart', '4444444444', 'Houston', '2022-04-13 01:19:02', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00'),
(34, 34, 'Steven', 'Grant', '7777777777', '', '2022-04-13 02:19:35', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00'),
(35, 35, 'Steven', 'Grant', '7774441470', 'TestCity', '2022-04-13 02:19:38', 'This is a demo description for demo testing purpose!', 'Demo Location One', '250', 16000.00, 'confirm', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `guestname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` char(4) NOT NULL,
  `zipcode` char(10) NOT NULL,
  `priority` enum('A','B','C','D','E') NOT NULL,
  `out_of_town` enum('y','n') NOT NULL,
  `relationship` varchar(32) NOT NULL,
  `tracks_and_gifts` text NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`id`, `booking_id`, `fullname`, `guestname`, `address`, `state`, `zipcode`, `priority`, `out_of_town`, `relationship`, `tracks_and_gifts`, `city`) VALUES
(1, 1, 'josh dragon', 'josh', 'valencia', 'ph', '9098', 'A', 'y', 'g', 'asdasdsad', 'valencia'),
(2, 1, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(3, 2, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(4, 1, 'joshua deasi', 'designa', 'san fernando', 'ph', '0982', 'A', 'y', 'g', 'asdasdasdasdasd', 'asdsad'),
(5, 30, 'Betty M. Barber', 'Betty M. Barber', '3 Olen Thomas Drive', 'TX', '73600', 'A', 'y', 'g', 'Demo Text Demo Text', 'Wichita Falls'),
(6, 34, 'Guest One', 'Guest Name', '11 Test Address', 'DS', '70001', 'B', 'y', 'g', 'Demo Demo Demo', 'Democity');

-- --------------------------------------------------------

--
-- Table structure for table `tblorganizer`
--

CREATE TABLE `tblorganizer` (
  `organizer_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpostwedding`
--

CREATE TABLE `tblpostwedding` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `preview_image` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `date_published` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpostwedding`
--

INSERT INTO `tblpostwedding` (`id`, `title`, `description`, `preview_image`, `location`, `status`, `wedding_date`, `wedding_type`, `date_created`, `date_published`) VALUES
(32, 'MR. &amp; MRS. Levy', 'Charming hilltop chapel with a rustic stone interior and graceful arched windows that offer unobstructed views of the Blue Ridge Mountains. Receptions are held at the nearby clubhouse where you can continue the celebration in the ballroom, or beneath a tent on the sprawling lawn.', '20160726_160113.jpg', 'The Cliffs at Glassy', '0', '04/01/2022', 'Premier', 'March 8, 2022, 11:29 am', ''),
(35, 'MR. MRS Redmond', 'Mountain beauty meets warm sophistication at this resort, which boasts a luxury lodge, chic hotel, two country clubs, and plenty of indoor and outdoor wedding venues from refined ballrooms to lush gardens to shabby-chic wood pavilions.', 'wdnf8.JPG', 'Crystal Springs Resort', '1', '03/16/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:10 pm'),
(40, 'MR. &amp; MRS. Collins', 'Lush, tropical garden setting with an open-air chapel and stunning views of the Ko\'olau Mountains.', 'wdnf3.JPG', 'Haiku Gardens', '1', '02/20/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:17 pm'),
(45, 'MR. MRS  Graham', 'Faithful replica of a classic medieval castle, complete with turrets, a drawbridge, a vast collection of Medieval and Renaissance artifacts, and a romantic garden overlooking the Atlantic.', 'wdnf7.JPG', 'Hammond Castle Museum', '1', '02/20/2022', 'Gold', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:09 pm'),
(50, 'MR. MRS. Yorke', 'Fairy-tale Tudor Revival mansion and lakeside chapel surrounded by 100 acres of formal gardens and 900 acres of natural woodlands.', 'wdnf9.JPG', 'The Skylands Manor', '1', '03/23/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:13 pm'),
(52, 'MR. &amp; MRS. Pearson', 'Beautifully restored historic home with elegant indoor event spaces, a Parterre Garden, and a lovely courtyard strung with market lights that\'s perfect for intimate celebrations.', 'wdnf4.JPG', 'Beauregard-Keyes House', '1', '04/30/2018', 'Elite', 'March 8, 2022, 11:29 am', 'April 13, 2022, 6:17 pm'),
(55, 'MR. &amp; MRS. Raftery', 'Relaxed and refined private complex on 24 acres along the Carmel River where you can wed, dine, and stay.', 'wdnf.JPG', 'Gardener Ranch', '1', '02/20/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:18 pm'),
(57, 'MR. &amp; MRS. Brower', 'Exchange vows in a natural woodland &ldquo;cathedral&rdquo; surrounded by towering pines, followed by cocktails served from a charming tipi and a delightful tented reception in the heart of the woods.', 'wdnf5.JPG', 'Blue Moon Rising', '1', '04/18/2022', 'Gold', 'March 8, 2022, 11:29 am', 'April 13, 2022, 6:17 pm'),
(60, 'MR. &amp; MRS. Reid', 'Romantic 1929 Art Deco, blufftop mansion with indoor and outdoor event venues that offer fantastic ocean and shoreline views.', 'wdnf6.JPG', 'Yankee Clipper Inn', '1', '02/20/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:06 pm'),
(62, 'MR. &amp; MRS. Squires', 'Magnificent 102-acre coastal resort on a bluff overlooking the stunning Palos Verdes Peninsula, boasting landscaped grounds, verdant lawns, and warm, elegant ballrooms with terraces&mdash;all with jaw-dropping views.', 'wdnf12.JPG', 'Terranea Resort', '1', '04/03/2022', 'Premier', 'March 8, 2022, 11:29 am', 'April 13, 2022, 7:31 pm'),
(65, 'MR. &amp; MRS. Jones', 'Relaxed, full-service resort presents an alluring choices of indoor and outdoor venues, from al fresco ceremonies with sweeping Pacific vistas to luxe reception ballrooms with classic columns and hand-blown glass chandeliers.', 'wdnf10.JPG', 'Hyatt Regency Huntington Beach Resort and Spa', '1', '04/05/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:14 pm'),
(67, 'MR. &amp; MRS. Russell', 'This Rockies hideaway boasts incredible mountain vistas and streamside paths, with multiple venue options for al fresco events, from the Shaker, an open-air platform tented with sailcloth, to the Highbanker Beach, a creekside lounge area perfect for cocktails and bonfires.', 'wdnf2.JPG', 'Blackstone Rivers Ranch', '1', '03/31/2022', 'Elegant', 'March 8, 2022, 11:29 am', 'April 13, 2022, 6:18 pm'),
(69, 'MR. &amp; MRS. Smith', 'This rustic farmstead getaway offers picture-perfect event spaces, including a hilltop pergola and the Chimney Pond Meadow, surrounded by neat rows of Christmas trees, and a stylishly rustic reception barn highlighted by Tuscan lights and globe chandeliers.', 'wdnf11.JPG', 'Sawyer Family Farmstead', '1', '03/29/2018', 'Elite', 'March 8, 2022, 11:50 am', 'April 13, 2022, 6:16 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `access_level` enum('0','1','2') NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `firstname`, `lastname`, `gender`, `username`, `password`, `email`, `designation`, `address`, `access_level`, `profile_picture`, `date_created`) VALUES
(5, 'Mamun', 'Rashid', 'm', 'adminliam', 'D00F5D5217896FB7FD601412CB890830', 'admin@mail.com', '0', 'Grand Meadows', '', 'user-icn-p-min.png', 'March 6, 2021, 5:15 pm'),
(7, 'Ron', 'Joseph', 'm', 'ronj', '5f4dcc3b5aa765d61d8327deb882cf99', 'josephr@mail.com', '1', '20 Hazelwood Avenue', '', 'gr3.png', 'March 6, 2021, 3:45 pm'),
(8, 'Pharell', 'Colin', 'm', 'pcolin', '1a1dc91c907325c69271ddf0c944bc72', 'pharell@mail.com', '1', '115 Test Street', '', 'gr4.png', 'April 13, 2022, 8:01 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblweddingbook`
--

CREATE TABLE `tblweddingbook` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bride` varchar(32) NOT NULL,
  `groom` varchar(32) NOT NULL,
  `wedding_type` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `organizer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblweddingbook`
--

INSERT INTO `tblweddingbook` (`booking_id`, `user_id`, `bride`, `groom`, `wedding_type`, `user_email`, `wedding_date`, `organizer_id`) VALUES
(2, 2, 'Elizabeth Brown', 'Pedro Afonso', 4, 'anniel@mail.com', '03/30/2022', 1),
(15, 15, '', '', 0, 'jameswf@mail.com', '04/28/2022', 1),
(18, 18, 'Nora Westley', 'David Wells', 0, 'davidwls@mail.com', '04/27/2022', 1),
(19, 19, '', '', 0, 'donniehr@mail.com', '05/25/2022', 1),
(20, 20, '', '', 0, 'bettyvass@mail.com', '03/27/2022', 1),
(21, 21, '', '', 5, 'asdasdasdsad@gmail.com', '06/08/2022', 0),
(22, 22, '', '', 0, 'carolcass@mail.com', '06/23/2022', 1),
(23, 23, '', '', 0, 'angelocl@mail.com', '06/15/2022', 1),
(24, 24, '', '', 0, 'peggybkk@mail.com', '07/07/2022', 1),
(25, 25, 'Test Two', 'Test Account', 5, 'test@mail.com', '04/19/2022', 1),
(26, 26, '', '', 0, 'troybrl@mail.com', '04/27/2022', 1),
(30, 30, 'Stella', 'Andrew Copeland', 4, 'andrewc@mail.com', '05/01/2022', 1),
(31, 31, 'Eliza Williams', 'Aaron Turner', 4, 'aaront@mail.com', '05/09/2022', 1),
(32, 32, 'Christine Walmer', 'Bruce Wright', 5, 'bruce@mail.com', '04/26/2022', 1),
(33, 33, 'Test', 'Test', 1, 'amy@mail.co', '05/18/2022', 1),
(34, 35, 'Ellen Moore', 'Steven Grant', 5, 'stevenn@mail.com', '05/04/2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblweddingcategories`
--

CREATE TABLE `tblweddingcategories` (
  `id` int(11) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `preview_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblweddingcategories`
--

INSERT INTO `tblweddingcategories` (`id`, `wedding_type`, `price`, `preview_image`) VALUES
(1, 'Classic', 16500.00, 'classic.jpg'),
(2, 'Elegant', 20000.00, 'elegnant.jpg'),
(3, 'Premier', 24000.00, 'premier.jpg'),
(4, 'Gold', 39500.00, 'timeless gold.jpg'),
(5, 'Elite', 52000.00, 'elite.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `category_id`, `title`, `description`) VALUES
(2, 2, 'Hair and Make Up', 'none'),
(3, 2, 'Photographer', 'unlimited shot\r\nSoftCopy(CD/DVD)'),
(4, 5, 'Hair And Make Up', 'unlimited shot'),
(7, 5, 'Appetizers and Meal Service', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(8, 1, 'Hair And Make Up', 'Our own professional worker'),
(9, 5, 'Wedding Cake', 'Custom Wedding Cake'),
(10, 1, 'Appetizers', 'Vegetable &amp; Cheese Platters'),
(11, 1, 'DJ Services', 'DJ Services'),
(12, 5, 'Bar Service', 'Bar Service'),
(13, 5, 'Champagne &amp; Cider Toast', 'Champagne &amp; Cider Toast'),
(15, 4, 'Appetizers and Meal Service', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(16, 4, 'Hair And Make Up', 'hair cut that will change you life'),
(17, 5, 'Invitations &amp; Accessories', 'Invitations &amp; Accessories'),
(18, 5, 'DJ &amp; MC Services', 'DJ &amp; MC Services'),
(19, 4, 'Wedding Cake', 'Custom Wedding Cake'),
(20, 5, 'Chairs &amp; Linens', 'Chairs &amp; Linens'),
(21, 4, 'Photographer', 'unlimited shot'),
(22, 4, 'Bar Service', 'Beer, Wine'),
(23, 4, 'Reception Decor', 'Stage Decor'),
(24, 3, 'Hair And Make Up', 'unlimited shot'),
(25, 3, 'Appetizers and Meal Services', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(26, 3, 'Invitations &amp; Accessories', 'none'),
(27, 3, 'DJ &amp; MC Services', 'none'),
(28, 2, 'Appetizers', 'Vegetable &amp; Cheese Platters'),
(29, 2, 'Decorations', 'Stage Decorations'),
(30, 3, 'Wedding Cake', 'Custom Wedding Cake'),
(31, 4, 'DJ &amp; MC Services', 'none'),
(32, 4, 'Centerpieces', 'Standard'),
(33, 5, 'Centerpieces', 'Centerpieces'),
(34, 5, 'Photobooth', 'Photobooth'),
(35, 5, 'Grand Sparklers', 'Grand Sparklers'),
(36, 5, 'Specialty Lighting', 'Specialty Lighting');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_liquidation`
--

CREATE TABLE `tbl_liquidation` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `date_issue` varchar(100) NOT NULL,
  `date_modified` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_liquidation`
--

INSERT INTO `tbl_liquidation` (`id`, `booking_id`, `user_id`, `event_id`, `payment`, `cash`, `credit`, `date_issue`, `date_modified`) VALUES
(1, 1, 1, 34, 10000.00, 10000.00, 0.00, 'March 10, 2018, 5:16 pm', 'March 9, 2018, 1:46 pm'),
(2, 1, 1, 30, 2022.00, 2022.00, 0.00, 'March 11, 2018, 1:16 pm', ''),
(3, 1, 1, 33, 4500.00, 2500.00, 20000.00, 'March 12, 2018, 8:16 am', ''),
(4, 1, 1, 8, 2000.00, 1000.00, 1000.00, 'June 10, 2018, 5:16 pm', ''),
(5, 2, 2, 8, 2000.00, 1000.00, 1000.00, 'June 10, 2018, 5:16 pm', ''),
(6, 30, 30, 5, 2500.00, 2500.00, 0.00, 'April 13, 2022, 2:04 am', ''),
(7, 30, 30, 6, 3950.00, 3950.00, 0.00, 'April 13, 2022, 2:21 am', ''),
(8, 25, 25, 1, 1660.00, 1660.00, 0.00, 'April 13, 2022, 2:23 am', ''),
(9, 30, 30, 11, 1500.00, 0.00, 1500.00, 'April 13, 2022, 6:55 pm', ''),
(10, 30, 30, 11, 1500.00, 1500.00, 0.00, 'April 13, 2022, 6:55 pm', ''),
(11, 34, 35, 5, 3500.00, 3500.00, 0.00, 'April 13, 2022, 8:42 pm', ''),
(12, 34, 35, 11, 1100.00, 1100.00, 0.00, 'April 13, 2022, 8:43 pm', ''),
(13, 34, 35, 10, 3000.00, 3000.00, 0.00, 'April 13, 2022, 8:43 pm', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `date`, `password`) VALUES
(28, 'Mamun', 'mamun@gmail.com', '2023-11-12 12:38:19', 'mamun123'),
(48, 'Afizah', 'afizah@gmail.com', '2023-11-12 12:50:00', ''),
(50, 'fatema', 'faytema@gmail.com', '2023-11-12 12:50:31', ''),
(52, 'jhoom', 'jhoom@gmail.com', '2023-11-12 12:51:22', ''),
(54, 'ibnat', 'ibnat@gmail.com', '2023-11-12 12:51:55', ''),
(58, 'Hamin', 'hamin@gmail.com', '2023-11-16 09:51:02', ''),
(59, 'Hamin', 'hamin@gmail.com', '2023-11-16 09:51:03', ''),
(61, 'Pakhi', 'Pakhi@gmail.com', '2023-11-16 09:54:01', ''),
(62, 'Rochita', 'Rochita@gmail.com', '2023-11-16 09:57:23', ''),
(63, 'Rochita', 'Rochita@gmail.com', '2023-11-16 09:57:23', ''),
(64, 'Israt', 'Israt@gmail.com', '2023-11-16 09:58:24', ''),
(65, 'jhoom', 'jhoom@gmail.com', '2023-11-16 10:03:53', ''),
(68, 'ibnat', 'ibnat@gmail.com', '2023-11-16 10:07:47', ''),
(83, 'Jitu Ibnat', 'Jituibnat@gmail.com', '2023-11-16 10:40:33', ''),
(84, 'Jitu Ibnat', 'Jituibnat@gmail.com', '2023-11-16 10:41:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1=Admin, 2=editor',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `status`) VALUES
(1, 'jituIbnat', 'jitu@gmail.com', '$2y$10$Njf0CqCnh5WkKBJt4aaM/OLABXOP8RYHXRsYcz7TQFGczHChJJQG2', 0, '2023-12-21 10:58:45', 0),
(2, 'masum', 'masum@gmail.com', '$2y$10$NcfAi/rX2cG5SHNVCJ6aF.mtHnFNkV1JB7ELvwoGmuHwH5rJAESHC', 0, '2023-12-21 11:14:20', 0),
(3, 'mamun', 'mamun@gmail.com', '$2y$10$DDcw2nnODCz/oLCOBcuTguUDsFA.Q3jcwSy3XMftthlTYwjFz2ahu', 0, '2023-12-21 11:53:09', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblaccounts`
--
ALTER TABLE `tblaccounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorganizer`
--
ALTER TABLE `tblorganizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorganizer`
--
ALTER TABLE `tblorganizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
