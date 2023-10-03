-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 07:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'sakshi', 'b31e31dac8811d89bb1cbfc384414aaf', 'sakshi@gmail.com', 'admin', '2023-09-30 14:43:34'),
(2, 'adarsh', '2710d687c70cd7736b1076a34323c897', 'adarsh@gmail.com', '', '2023-08-19 14:03:17'),
(3, 'sagar', 'c12e01f2a13ff5587e1e9e4aedb8242d', 'sagar2004pawar@gmail.com', '', '2023-09-30 14:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Chole Samosa', '2 samosa and chole curry with Onion', '70.00', '64e0cfee4df2a.jpg'),
(18, 5, 'Veg Fried Rice', 'Chineese dish', '190.00', '6517d8103044f.jpg'),
(19, 6, 'Baby Corn Masala', 'spicy baby corn dish', '240.00', '6517d801a420a.jpg'),
(20, 6, 'Veg Hyderabadi', 'Spicy hydrabadi style dish', '190.00', '6517d7f65d694.jpg'),
(21, 6, 'Masala Dosa', 'dosa with potato bhaji stuffed inside', '100.00', '6517d7ed8887b.jpg'),
(22, 6, 'Misal Pav', 'pav and a misal bhaji', '80.00', '6517d7dee21d7.jpg'),
(23, 7, 'Indi Tandoori Paneer Pizza', 'pizza', '319.00', '6517d7d37d9c6.jpg'),
(24, 7, 'Margherita Pizza', 'pizza', '109.00', '6517d7cc83146.jpg'),
(25, 7, 'Veg Extravaganza Pizza', 'pizza', '318.00', '6517d7bc4fd4a.jpg'),
(26, 7, 'Chicken Dominator Pizza', 'pizza', '380.00', '6517d7b43658f.jpg'),
(27, 8, 'Zinger Pro Burger', 'burger', '239.00', '6517d8bdb054b.jpg'),
(28, 8, 'Chicken Burger Buddy Meal', 'burger meal', '500.00', '6517d8f131d8d.jpg'),
(29, 8, 'Big 8 - Chicken Bucket', 'bucket', '650.00', '6517d95294396.jpg'),
(30, 8, '2 Double Chicken Rolls', 'roll', '300.00', '6517d98e063f8.jpg'),
(31, 8, 'Hot & Crispy Chicken', ' bucket', '520.00', '6517d9b7bfa62.jpg'),
(32, 6, 'Palak Panner', 'Palak Paneer is a popular North Indian vegetarian dish that combines the vibrant green goodness of spinach (palak) with cubes of soft, creamy paneer.', '170.00', '6517ff30bcb8e.jpg'),
(34, 9, 'Palak Panner', 'Palak Paneer is a popular North Indian vegetarian dish that combines the vibrant green goodness of spinach (palak) with cubes of soft, creamy paneer.', '180.00', '6517ffe2c5ba1.jpg'),
(35, 11, 'Palak Panner', 'Palak Paneer is a popular North Indian vegetarian dish that combines the vibrant green goodness of spinach (palak) with cubes of soft, creamy paneer.', '190.00', '6518045f96b10.jpg'),
(36, 12, 'Chicken Biryani', 'Chicken Biryani is a beloved and iconic Indian dish that seamlessly combines tender chicken pieces with fragrant long-grain basmati rice, aromatic spices, and a harmonious blend of flavors.', '200.00', '6518071c8bce8.jpg'),
(37, 12, 'Chicken Handi Full', 'Chicken Handi is a delectable North Indian dish that features tender pieces of chicken cooked in a rich and creamy tomato-based gravy. ', '350.00', '651808035b64c.jpg'),
(38, 13, 'Chinese noodles', 'Chinese noodles are a fundamental staple of Chinese cuisine, appreciated for their versatility and rich culinary history. ', '150.00', '65180ac434283.jpg'),
(39, 14, 'Full English BreakFast', 'The best breakfast, maybe ever. This full English breakfast recipe, also known as a fry up', '700.00', '651836665b5c8.jpg'),
(40, 15, 'Risotto', 'Risotto is an Italian dish made by cooking a starchy, short grain rice like arborio with stock until it becomes creamy.', '500.00', '6518387d6d498.jpg'),
(41, 15, 'Tiramisu', 'Tiramisu is a coffee-flavoured Italian dessert.', '300.00', '651838f992ada.jpg'),
(42, 15, 'Caprese Salad', 'Caprese salad is typically made by layering slices of fresh mozzarella cheese, tomatoes, and basil.', '350.00', '6518395a4ad34.jpg'),
(43, 15, 'Margherita Pizza', 'Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil', '300.00', '651839ca99446.jpg'),
(44, 16, 'Sushi', 'sushi, a staple rice dish of Japanese cuisine, consisting of cooked rice flavoured with vinegar and a variety of vegetable, egg, or raw seafood garnishes and served cold.', '200.00', '65183b1bba9cc.jpg'),
(45, 16, 'Sushi', 'sushi, a staple rice dish of Japanese cuisine, consisting of cooked rice flavoured with vinegar and a variety of vegetable, egg, or raw seafood garnishes and served cold.', '200.00', '651864bfd6722.jpg'),
(46, 17, 'Ladu', 'Laddu or laddoo is a spherical sweet from the Indian subcontinent made of various ingredients and sugar syrup or jaggery. ', '400.00', '651af13d847e9.jpg'),
(47, 17, 'Modak', 'Modak or Modakam, also referred to as Ko?ukattai or Kozhakattai in Tamil, is an Indian sweet dumpling dish popular in many Indian states and cultures. ', '350.00', '651af16bc2a83.jpg'),
(48, 17, 'Chocolate modak', 'Chocolate modak made with mawa, sugar and cocoa. These are easy to make and taste super delicious like a real milk chocolate.', '380.00', '651af1aac921c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 10, 'closed', 'we done', '2023-01-31 10:58:27'),
(14, 11, 'in process', 'ok', '2023-02-01 16:52:23'),
(15, 11, 'closed', 'ok-', '2023-02-01 16:52:43'),
(16, 11, 'rejected', 'ok', '2023-02-01 16:52:57'),
(17, 16, 'in process', 'The order  is on the way', '2023-08-19 14:23:53'),
(18, 16, 'closed', 'Thank you for ordering from our website', '2023-08-19 14:24:28'),
(19, 17, 'in process', 'ff', '2023-08-19 15:26:19'),
(20, 17, 'closed', 'd', '2023-08-19 15:26:32'),
(21, 20, 'in process', 'Thanks for ordering here.', '2023-09-30 19:16:23'),
(22, 20, 'closed', 'thanks', '2023-09-30 19:16:49'),
(23, 21, 'in process', 'your order on the way', '2023-10-01 07:49:55'),
(24, 21, 'closed', 'thanks', '2023-10-01 07:50:28'),
(25, 22, 'in process', 'Thanks', '2023-10-02 16:00:47'),
(26, 25, 'closed', 'Thanks', '2023-10-02 16:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 5, 'Gurukrupa', 'guru@gmail.com', '1234567890', 'https://www.youtube.com/', '8am', '9pm', '24hr-x7', 'Plot No 40, Guru Kripa Building, Road No 24, Sion, Mumbai - 400022 (Near Sies College & Railway Station)', '64e0cef175eb1.jpg', '2023-08-19 14:17:21'),
(6, 5, 'Dwaraka', 'dwaraka1@gmail.com', '1234567890', 'https://www.youtube.com/', '--Select your Hours--', '--Select your Hours--', '--Select your Days--', '   near, Dwarka hotel, dombivilii station west, Mumbai, Maharashtra 421202   ', '6517d7a0edf13.jpg', '2023-09-30 08:09:04'),
(7, 5, 'Dominos', 'dominos1@gmail.com', '1234567890', 'https://www.youtube.com/', '--Select your Hours--', '--Select your Hours--', '--Select your Days--', '      vygyugyuhiuhiuhiuijijui      ', '6517d7901bdd7.jpg', '2023-09-30 08:08:48'),
(8, 4, 'KFC', 'kfc@gmail.com', '1234567890', 'https://www.youtube.com/', '8am', '12am', '24hr-x7', 'xyzyzyzz', '6517d85bd1c19.png', '2023-09-30 08:12:11'),
(9, 7, 'Hotel Sanman', 'hotelsanman1@gmail.com', '02227701492', 'www.sannamhotel.com', '10am', '12am', '24hr-x7', 'Hotel Sanman,Isha Complex, Railway Station East, Sector 15, Nerul, Navi Mumbai, Mumbai, Maharashtra ·', '6517ffcf5424b.jpg', '2023-09-30 11:00:31'),
(11, 7, 'Rangoli', 'rangoliindia01@gmail.com', '02227707653', 'www.rangoliindia.com', '11am', '12am', '24hr-x7', '22VC+4M9, Station Road, Nerul East, Sector 3, Nerul, Navi Mumbai, Maharashtra 400706', '651803e87e320.jpg', '2023-09-30 11:18:00'),
(12, 8, 'Horizon Non-Veg Family Restaurant', 'horizon20@gmail.com', '022 2770 4343', 'www.horizon1.com', '10am', '1am', '24hr-x7', 'shop no 1, Ganpati Complex, 105, opposite backside of wonder park, Nerul East, Sector 27, Garden, Navi Mumbai, Maharashtra 400706', '651805df68a9c.jpg', '2023-09-30 11:26:23'),
(13, 3, 'Shanghai ', 'shnagairesto01@gmail.com', '022 2770 4810', 'www.shangai.com', '11am', '11pm', '24hr-x7', ' Om Surya, -15,Opp Station, (E),Navi Mumbai, 12, Sector 15, Nerul, Mumbai, Maharashtra 400706', '65180a38cbb45.jpg', '2023-09-30 11:44:56'),
(14, 1, 'Kohinoor Continental', 'KohinoorContinental@gmail.com', '022 6691 9000', 'https://www.hotelkohinoorcontinental.com', '10am', '1am', '24hr-x7', 'Andheri - Kurla Rd, J B Nagar, Andheri East, Mumbai, Maharashtra 400059•022 6769 3500', '6518353614560.jpg', '2023-09-30 14:48:22'),
(15, 2, 'Celini', 'celini@gmail.com', ' 022 6676 1673', 'https://www.hyattrestaurants.com', '10am', '12am', '24hr-x7', 'Grand Hyatt Mumbai Hotel and Residences Bandra Kurla Complex Vicinity, Off, Western Express Hwy, Santacruz East, Mumbai, Maharashtra 400055', '6518381c2db5a.jpg', '2023-09-30 15:00:44'),
(16, 6, 'Kofuku Powai', 'KofukuPowai@gmail.com', '022 6697 1403', 'www.KofukuPowai.com', '9am', '2am', 'Mon-Sat', 'Kailas Banquet hall, Kailas Industrial Estate, HMPL Surya Nagar, Vikhroli West, Mumbai, Maharashtra 400076', '65183aa950c53.jpg', '2023-09-30 15:11:37'),
(17, 9, 'Super kitchen', 'Superkitchen@gmail.com', '+919867818771', 'Superkitchen.com', '10am', '8pm', '24hr-x7', ' Ganga jamuna society,Nerul East ', '651af2434efcd.gif', '2023-10-02 16:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28'),
(5, 'Indian', '2023-08-19 14:14:59'),
(6, 'Japanese', '2023-08-19 14:25:14'),
(7, 'Veg', '2023-09-30 10:59:29'),
(8, 'Non-Veg', '2023-09-30 11:04:06'),
(9, 'Home-Made', '2023-10-02 16:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'omkar2005', 'Omkar', 'Lande', 'omkarlande2005@gmail.com', '9851357552', '68115705108ddd6f7ba9a458bb175363', 'ghatkopar west', 1, '2023-09-30 15:24:58'),
(8, 'amongus', 'Adarsh ', 'Pillai ', 'abc123@gmail.com', '1234567890', '2710d687c70cd7736b1076a34323c897', 'my home', 1, '2023-08-19 13:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, '6.00', 'rejected', '2022-05-27 11:43:26'),
(2, 4, 'Prawn Crackers', 1, '7.00', 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, '23.00', 'closed', '2022-05-27 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, '5.00', 'in process', '2022-05-27 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2022-05-27 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, '14.00', 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'rejected', '2022-05-27 13:03:53'),
(19, 35, 'Chole Samosa', 1, '70.00', NULL, '2023-09-30 19:11:47'),
(20, 1, 'Baby Corn Masala', 1, '240.00', 'closed', '2023-09-30 19:16:49'),
(21, 9, 'Palak Panner', 2, '180.00', 'closed', '2023-10-01 07:50:28'),
(22, 1, 'Risotto', 1, '500.00', 'in process', '2023-10-02 16:00:48'),
(23, 1, 'Tiramisu', 1, '300.00', NULL, '2023-10-02 16:00:08'),
(24, 1, 'Veg Fried Rice', 1, '190.00', NULL, '2023-10-02 16:00:08'),
(25, 1, 'Ladu', 1, '400.00', 'closed', '2023-10-02 16:41:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
