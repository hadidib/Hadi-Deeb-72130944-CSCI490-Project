-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 07:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `checked`
--

CREATE TABLE `checked` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(30) NOT NULL,
  `room` varchar(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available , 1= Unvailables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`, `category_id`, `status`) VALUES
(1, 'Room-101', 3, 0),
(3, 'Room-102', 3, 0),
(4, 'Room-103', 6, 0),
(5, 'Room-104', 6, 0),
(6, 'Room-105', 4, 0),
(7, 'Room-106', 4, 0),
(8, 'Room-107', 8, 0),
(9, 'Room-201', 2, 0),
(10, 'Room-202', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `price`, `cover_img`) VALUES
(2, 'Deluxe Room', 500, '1600480260_4.jpg'),
(3, 'Single Room', 120, '1600480680_2.jpg'),
(4, 'Family Room', 350, '1600480680_room-1.jpg'),
(6, 'Twin Bed Room', 200, '1600482780_3.jpg'),
(7, 'Premium Room', 600, '1703595960_180329165216-royal-suite-at-the-burj-al-arab-jumeirah.jpg'),
(8, 'Special Room', 250, '1703717460_palace-suite-1-hero.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `hotel_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `hotel_name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Continental Hotel', 'continental@gmail.com', '+96171086693', '1703707020_wallpaperflare.com_wallpaper.jpg', '&lt;p style=&quot;margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Merriweather, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; background: transparent; text-align: center; position: relative;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;Welcome to Continental Hotel, where luxury meets comfort in every detail. Nestled in the heart of New York, our hotel offers a sophisticated retreat for discerning travelers. Immerse yourself in our elegant ambiance and experience impeccable service tailored to exceed your expectations.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;At Continental Hotel, we pride ourselves on providing a haven of relaxation and indulgence. Our thoughtfully designed rooms and suites offer a blend of modern amenities and timeless elegance, ensuring a restful stay for our guests.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;Discover exquisite dining options at our world-class restaurants, where culinary delights await your palate. Unwind at our spa, a sanctuary of tranquility, or rejuvenate with a workout at our state-of-the-art fitness center.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;With our central location, explore the vibrant surroundings, from cultural landmarks to entertainment hotspots, all within easy reach.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;Our dedicated team is committed to creating unforgettable moments, making your stay truly memorable. Whether you&rsquo;re here for business or leisure, Continental Hotel promises an unparalleled experience that leaves a lasting impression.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative;&quot;&gt;We invite you to be our guest and indulge in the essence of luxury hospitality at Continental Hotel, where every moment is crafted for your comfort and delight.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px;&quot;&gt;Continental Hotel has a rich history that dates back to 1987. Founded by Sir Hadi Deeb, our hotel was envisioned as a luxurious haven for travelers seeking unparalleled comfort and hospitality.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px;&quot;&gt;What started as a modest establishment has evolved into a distinguished landmark in New York. Over the years, Continental Hotel has welcomed esteemed guests from around the world, catering to their needs with warmth and sophistication.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px;&quot;&gt;Our journey has been marked by milestones and a commitment to excellence. From our humble beginnings to becoming a symbol of refined hospitality, every step has been a testament to our dedication to providing an exceptional guest experience.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px;&quot;&gt;As we continue to grow and innovate, our core values remain unchanged &ndash; to offer an unforgettable stay characterized by luxury, personalized service, and an unwavering commitment to our guests&amp;#x2019; satisfaction.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px;&quot;&gt;Continental Hotel&amp;#x2019;s legacy is not just about its elegant architecture or luxurious amenities; it&amp;#x2019;s about the stories we&amp;#x2019;ve crafted and the memories we&amp;#x2019;ve created for our cherished guests over the years. We invite you to be part of our ongoing narrative and experience the timeless allure of Continental Hotel.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(6, 'Hadi Deeb', 'hadi', 'hadi12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checked`
--
ALTER TABLE `checked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
