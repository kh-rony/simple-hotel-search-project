-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2018 at 11:15 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_tag` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `details`, `rating`, `amenities`, `search_tag`, `phone`, `email`, `website`, `address`, `zip_code`, `district`, `city`, `country`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Radisson Blu Dhaka Water Garden', 'radisson_blu_dhaka_water_garden_1.jpg', 'Within 5.3 km of Hazrat Shahjalal International Airport, this contemporary hotel is also 8 km from the National Parliament House and 12 km from Lalbagh Fort.\r\n\r\nThe stylish, soundproof rooms have free Wi-Fi, TVs, desks and minibars. Suites add separate living areas, while club rooms and suites offer airport shuttle and turndown services, along with private-lounge access, breakfast and evening refreshments. Room service is available 24/7.\r\n\r\nAmenities include a cigar bar and 3 restaurants, including upscale regional cuisine. The 7-acre property has an outdoor pool, a fitness room, a spa and tennis courts, plus a business center and meeting space.', 8.1, 'Free WiFi, Airport Shuttle, Free Parking, Breakfast Buffet, Pool, Spa, Gym', 'dhaka', '+88029834555', '', 'https://www.radissonblu.com/en/hotel-dhaka', 'Airport Road, Dhaka Cantonment, Dhaka', 1206, 'Dhaka', 'Dhaka', 'Bangladesh', 23.816041, 90.4065313, '2018-07-01 11:43:22', '2018-07-04 23:07:59'),
(2, 'The Westin Dhaka', 'the_westin_dhaka_1.jpg', 'The Westin Dhaka is a Westin Hotel located at Gulshan Avenue in Dhaka. Its address is Plot-01, Road 45, Gulshan-2, Dhaka 1212, Bangladesh. At 96.70 m (317 ft), it is the tallest hotel in Bangladesh, and one of the tallest hotels in South Asia. It has 29 floors. The hotel was completed in 2006. In its original form the hotel incorporated five restaurants and no less than 235 rooms.', 8.3, 'Free WiFi, Airport Shuttle, Free Parking, Breakfast Buffet, Pool, Spa, Gym', 'dhaka', '+88029891988', '', '', 'Main Gulshan Avenue, Plot-01, Road 45, Gulshan-2, Dhaka', 1212, 'Dhaka', 'Dhaka', 'Bangladesh', 23.7933886, 90.4140152, '2018-07-01 11:43:22', '2018-07-04 23:07:51'),
(3, 'Lakeshore Banani', 'lakeshore_banani_1.jpg', 'Offering an a fitness centre, Lakeshore Banani is located in Dhaka. The Banani Railway Station and the Banani Bus Station are 1 km. Free WiFi access is available.\r\nEach air-conditioned room here will provide you with a cable TV, a seating area and a minibar. Complete with a microwave, the dining area also has an electric kettle. Featuring a shower, private bathroom also comes with a bathtub and bathrobes.\r\n\r\nFacilities offered at Lakeshore Banani include a shared lounge, a tour desk and luggage storage. The property offers free parking.\r\n\r\nThe Gulshan Lake is 1 km, the Baridhara Lake is 3 km and the Jamuna Future Park Mall is 5 km. The Shah Jalal International Airport is 8 km away.\r\n\r\nDining highlights include a multi-cuisine restaurant. 24-hour room service is available. \r\n\r\nThis property also has one of the best-rated locations in Dhaka! Guests are happier about it compared to other properties in the area.\r\n\r\nCouples particularly like the location — they rated it 8.1 for a two-person trip.\r\n\r\nThis property is also rated for the best value in Dhaka! Guests are getting more for their money when compared to other properties in this city.', 8.6, 'Free WiFi, Airport Shuttle, Free Parking, Breakfast Buffet, Pool, Spa, Gym', 'dhaka', '+8801978616164', '', 'http://www.lakeshorebanani.com.bd', 'House no. 81, Road No. 13/A, Block D, Banani, Dhaka', 1229, 'Dhaka', 'Dhaka', 'Bangladesh', 23.791342, 90.4022883, '2018-07-01 11:43:22', '2018-07-04 21:33:51'),
(4, 'Pan Pacific Sonargaon Dhaka', 'pan_pacific_sonargaon_dhaka_1.jpg', 'Pan Pacific Sonargaon Dhaka welcomes you with a warm heart to enjoy the typical five-star facilities available; from first class surroundings to world-class hospitality in true Pan Pacific style, right from the airport.', 8.2, 'Free WiFi, Free Parking, Breakfast Buffet, Pool, Spa, Gym', 'dhaka', '+88029128008', '', 'https://www.panpacific.com/en/hotels-and-resorts/pp-dhaka.html', '107 Kazi Nazrul Islam Avenue, Dhaka', 1215, 'Dhaka', 'Dhaka', 'Bangladesh', 23.749581, 90.3923203, '2018-07-01 11:43:22', '2018-07-04 21:33:51'),
(5, 'Rose View Hotel', 'rose_view_hotel_1.jpg', 'Offering an indoor swimming pool, 3 dining options and a fitness centre, Rose View Hotel is located in Sylhet. Activities like table tennis can be enjoyed. Free WiFi access is available.\r\nEach room here will provide you with air conditioning and a minibar. Featuring a shower, private bathroom also comes with a hairdryer and free toiletries. You can enjoy city view from the room.\r\n\r\nAt Rose View Hotel you will find a sauna and hot tub. Other facilities offered at the property include a ticket service, a tour desk and luggage storage. The property offers free parking.\r\n\r\nThe Sylhet City Centre is 1 km. The City Bus Station is 1 km, the Sylhet Railway Station is 5 km and the Osmani International Airport is 11 km.\r\n\r\nDining option includes Pear Orient, a multi-cuisine restaurant, Paktoon, an exclusive Indian restaurant and Four season, a coffee shop. Refreshing beverages can be enjoyed at the Club Royal bar. \r\n\r\nThis property also has one of the best-rated locations in Sylhet! Guests are happier about it compared to other properties in the area.\r\n\r\nThis property is also rated for the best value in Sylhet! Guests are getting more for their money when compared to other properties in this city.', 8, 'Free WiFi, Free Parking, Breakfast Buffet, Pool, Spa, Gym', 'sylhet', '+8801972787878', '', 'http://www.roseviewhotel.com/', 'House-21,Road-22,Block-D, Shahjalal Upashahar Main Rd, Sylhet', 3100, 'Sylhet', 'Sylhet', 'Bangladesh', 24.886193, 91.8790833, '2018-07-01 11:43:22', '2018-07-05 00:20:49'),
(6, 'Hotel Noorjahan Grand', 'hotel_noorjahan_grand_1.jpg', 'Featuring a fitness centre and a restaurant, Hotel Noorjahan Grand is situated in Sylhet. This 4-star hotel offers a 24-hour front desk, an ATM and free WiFi. The property offers city views and a terrace.\r\nAll guest rooms at the hotel are fitted with a seating area, a flat-screen TV with satellite channels and a private bathroom with free toiletries and a shower. All units feature a desk.\r\n\r\nA continental or buffet breakfast can be enjoyed at the property. \r\n\r\nThis property also has one of the best-rated locations in Sylhet! Guests are happier about it compared to other properties in the area.\r\n\r\nCouples particularly like the location — they rated it 8.8 for a two-person trip.\r\n\r\nThis property is also rated for the best value in Sylhet! Guests are getting more for their money when compared to other properties in this city.', 8.6, 'Free WiFi, Airport Shuttle, Free Parking, Breakfast Buffet, Gym', 'sylhet', '+8801930111666', '', 'http://noorjahangrand.com/', 'Waves 1, Dargah Gate, Sylhet', 3100, 'Sylhet', 'Sylhet', 'Bangladesh', 24.9019566, 91.8675715, '2018-07-01 11:43:22', '2018-07-05 00:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`id`, `hotel_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'radisson_blu_dhaka_water_garden_1.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(2, 1, 'radisson_blu_dhaka_water_garden_2.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(3, 1, 'radisson_blu_dhaka_water_garden_3.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(4, 1, 'radisson_blu_dhaka_water_garden_4.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(5, 1, 'radisson_blu_dhaka_water_garden_5.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(6, 1, 'radisson_blu_dhaka_water_garden_6.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(7, 1, 'radisson_blu_dhaka_water_garden_7.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(8, 1, 'radisson_blu_dhaka_water_garden_8.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(9, 1, 'radisson_blu_dhaka_water_garden_9.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(10, 1, 'radisson_blu_dhaka_water_garden_10.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(11, 2, 'the_westin_dhaka_1.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(12, 2, 'the_westin_dhaka_2.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(13, 2, 'the_westin_dhaka_3.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(14, 2, 'the_westin_dhaka_4.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(15, 2, 'the_westin_dhaka_5.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(16, 2, 'the_westin_dhaka_6.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(17, 3, 'lakeshore_banani_1.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(18, 3, 'lakeshore_banani_2.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(19, 3, 'lakeshore_banani_3.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(20, 3, 'lakeshore_banani_4.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(21, 3, 'lakeshore_banani_5.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(22, 3, 'lakeshore_banani_6.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(23, 4, 'pan_pacific_sonargaon_dhaka_1.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(24, 4, 'pan_pacific_sonargaon_dhaka_2.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(25, 4, 'pan_pacific_sonargaon_dhaka_3.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(26, 4, 'pan_pacific_sonargaon_dhaka_4.jpg', '2018-07-01 13:40:40', '2018-07-01 13:40:40'),
(27, 4, 'pan_pacific_sonargaon_dhaka_5.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(28, 5, 'rose_view_hotel_1.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(29, 5, 'rose_view_hotel_2.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(30, 5, 'rose_view_hotel_3.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(31, 5, 'rose_view_hotel_4.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(32, 5, 'rose_view_hotel_5.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(33, 5, 'rose_view_hotel_6.jpg', '2018-07-01 13:40:40', '2018-07-04 23:43:31'),
(34, 6, 'hotel_noorjahan_grand_1.jpg', '2018-07-05 00:31:40', '2018-07-05 00:31:40'),
(35, 6, 'hotel_noorjahan_grand_2.jpg', '2018-07-05 00:31:52', '2018-07-05 00:31:52'),
(36, 6, 'hotel_noorjahan_grand_3.jpg', '2018-07-05 00:31:59', '2018-07-05 00:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `total_rooms` int(11) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `hotel_id`, `hotel_name`, `room_type`, `amenities`, `price`, `total_rooms`, `available_rooms`, `created_at`, `updated_at`) VALUES
(1, 1, 'Radisson Blu Dhaka Water Garden', 'Deluxe Room', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 16500, 25, 25, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(2, 1, 'Radisson Blu Dhaka Water Garden', 'Business Class Room', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours), Access to Business Class Lounge', 24600, 15, 15, '2018-07-01 13:50:29', '2018-07-04 09:29:16'),
(3, 1, 'Radisson Blu Dhaka Water Garden', 'Executive Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours), Access to Business Class Lounge', 31200, 5, 5, '2018-07-01 13:50:29', '2018-07-04 09:29:32'),
(4, 2, 'The Westin Dhaka', 'Deluxe Room', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 17000, 25, 25, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(5, 2, 'The Westin Dhaka', 'Club Room', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 19500, 20, 20, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(6, 2, 'The Westin Dhaka', 'Junior Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 21700, 18, 18, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(7, 2, 'The Westin Dhaka', 'Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 23700, 18, 18, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(8, 2, 'The Westin Dhaka', 'Suite (CHAIRMAN)', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 25300, 12, 12, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(9, 2, 'The Westin Dhaka', 'Presidential Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 31200, 3, 3, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(10, 3, 'Lakeshore Banani', 'Executive Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 23700, 15, 15, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(11, 3, 'Lakeshore Banani', 'Business Suite', 'Free WiFi, Phone with Direct International Dialing, Room Service (24 hours)', 31700, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(12, 4, 'Pan Pacific Sonargaon Dhaka', 'Standard Room', 'Free WiFi, Room Service (24 hours)', 13250, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(13, 4, 'Pan Pacific Sonargaon Dhaka', 'Deluxe Room', 'Free WiFi, Room Service (24 hours)', 17750, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(14, 4, 'Pan Pacific Sonargaon Dhaka', 'Premier Room', 'Free WiFi, Room Service (24 hours)', 19750, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(15, 4, 'Pan Pacific Sonargaon Dhaka', 'Junior Suite', 'Free WiFi, Room Service (24 hours)', 22270, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(16, 4, 'Pan Pacific Sonargaon Dhaka', 'Exclusive Suite', 'Free WiFi, Room Service (24 hours)', 27850, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(17, 4, 'Pan Pacific Sonargaon Dhaka', 'International Suite', 'Free WiFi, Room Service (24 hours)', 54300, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(18, 5, 'Rose View Hotel', 'Deluxe Room', 'Free WiFi, Room Service (24 hours)', 9750, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(19, 5, 'Rose View Hotel', 'Executive Suite', 'Free WiFi, Room Service (24 hours)', 17300, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(20, 5, 'Rose View Hotel', 'Presidential Suite', 'Free WiFi, Room Service (24 hours)', 22300, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(21, 6, 'Hotel Noorjahan Grand', 'Deluxe Room', 'Free WiFi, Room Service (24 hours)', 2830, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(22, 6, 'Hotel Noorjahan Grand', 'Deluxe Double Room', 'Free WiFi, Room Service (24 hours)', 3990, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(23, 6, 'Hotel Noorjahan Grand', 'Family Room', 'Free WiFi, Room Service (24 hours)', 4710, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58'),
(24, 6, 'Hotel Noorjahan Grand', 'King Suite', 'Free WiFi, Room Service (24 hours)', 8400, 10, 10, '2018-07-01 13:50:29', '2018-07-04 09:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rony', 'rony@gmail.com', '$2y$10$.4pXvkDPYSt4XA1Pw.90jOWVFYgC7RsuNY/P//m4YYPhOZx.rdG8y', 'UKrNFJrNGRlyHXfrUh728cIqugOWmMvSfc2RBE7qbFHXQyDKeF3FnzwyG5tM', '2018-06-26 22:43:45', '2018-07-04 20:23:52'),
(2, 'Monir', 'monir@gmail.com', '$2y$10$sRA91hZXRSgjIZ5yw69uJuXrswl36DBqiXG1s.SkdmIaAy7q.kmQm', 'xx8MTEHDA2QVsJ6QuIktswf1gDox7eyEdecZ57ke4ZQoXDtcfqBHwDmXsHOz', '2018-06-27 22:05:02', '2018-06-28 04:12:46'),
(3, 'Shuvo', 'shuvo@gmail.com', '$2y$10$msoEvMGXfC1fNZz6WU0EKeijfEm8yncthIn.n61c1jgY2TfgO3JSW', 'TvADtVvSzoVQ1pfLahlJOjkUu3HDNBlIot4ZeAqHrtC4OJTPtKCS9L5tw09v', '2018-06-27 22:06:26', '2018-06-28 04:12:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
