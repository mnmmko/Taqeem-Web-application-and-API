-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 02:41 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taqss`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`) VALUES
(1, 'SAMSUNG'),
(2, 'Apple'),
(3, 'LG'),
(4, 'HP'),
(5, 'Dell'),
(6, 'Lenovo'),
(7, 'Xiaomi'),
(8, 'Sony'),
(9, 'Canon'),
(10, 'Nike'),
(11, 'Microsoft'),
(12, 'Bandai'),
(13, 'SONY PS5');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(9, 'Accessories'),
(5, 'Cameras'),
(7, 'controllers'),
(6, 'Games'),
(3, 'Headphones'),
(4, 'Laptops'),
(1, 'smart Phones'),
(8, 'Smartwatches'),
(2, 'TVs');

-- --------------------------------------------------------

--
-- Table structure for table `cat_brand`
--

CREATE TABLE `cat_brand` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `catogry_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cat_brand`
--

INSERT INTO `cat_brand` (`id`, `brand_id`, `catogry_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 2, 1),
(6, 2, 9),
(7, 3, 2),
(8, 4, 4),
(9, 5, 4),
(10, 6, 4),
(11, 7, 1),
(12, 7, 3),
(13, 7, 5),
(14, 7, 9),
(15, 8, 6),
(16, 8, 3),
(17, 9, 9),
(18, 9, 5),
(19, 10, 9),
(20, 11, 7),
(21, 12, 6),
(22, 13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `path`) VALUES
(1, 'https://images-na.ssl-images-amazon.com/images/I/81A3nwwKt2S.__AC_SX300_SY300_QL70_ML2_.jpg'),
(2, 'https://images-na.ssl-images-amazon.com/images/I/51ox3l9OzDL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(3, 'https://images-na.ssl-images-amazon.com/images/I/61qcH1P2XjS.__AC_SX300_SY300_QL70_ML2_.jpg'),
(4, 'https://m.media-amazon.com/images/I/41musAj0m+S._AC_SY300_SX300_.jpg'),
(5, 'https://images-na.ssl-images-amazon.com/images/I/61jLiCovxVL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(6, 'https://images-na.ssl-images-amazon.com/images/I/618bG-1RJdL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(7, 'https://images-na.ssl-images-amazon.com/images/I/71mIwMb0b9S.__AC_SY300_SX300_QL70_ML2_.jpg'),
(8, 'https://images-na.ssl-images-amazon.com/images/I/71MHTD3uL4L.__AC_SX300_SY300_QL70_ML2_.jpg'),
(9, 'https://images-na.ssl-images-amazon.com/images/I/71ZOtNdaZCL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(10, 'https://images-na.ssl-images-amazon.com/images/I/71cSV-RTBSL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(11, 'https://m.media-amazon.com/images/I/31IE9Ge6+EL._AC_SY300_SX300_.jpg'),
(12, 'https://images-na.ssl-images-amazon.com/images/I/719p0eyZiSL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(13, 'https://images-na.ssl-images-amazon.com/images/I/71bCvQo69XS.__AC_SY300_SX300_QL70_ML2_.jpg'),
(14, 'https://images-na.ssl-images-amazon.com/images/I/71fInSXtYpL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(15, 'https://images-na.ssl-images-amazon.com/images/I/41wHdNChKWL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(16, 'https://images-na.ssl-images-amazon.com/images/I/91zKmiPmArS.__AC_SY300_SX300_QL70_ML2_.jpg'),
(17, 'https://m.media-amazon.com/images/I/41GB8pP0v+L._AC_SX300_SY300_.jpg'),
(18, 'https://images-na.ssl-images-amazon.com/images/I/51ZGK7KUA4L.__AC_SX300_SY300_QL70_ML2_.jpg'),
(19, 'https://images-na.ssl-images-amazon.com/images/I/61hj2b6hVJL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(20, 'https://images-na.ssl-images-amazon.com/images/I/613duVZu6CL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(21, 'https://images-na.ssl-images-amazon.com/images/I/61qyi9y2iHS.__AC_SX300_SY300_QL70_ML2_.jpg'),
(22, 'https://images-na.ssl-images-amazon.com/images/I/41F7qu-NKdL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(23, 'https://m.media-amazon.com/images/I/61bfjW+Tv5L._AC_SY300_SX300_.jpg'),
(24, 'https://images-na.ssl-images-amazon.com/images/I/31PgnGI1ijL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(25, 'https://images-na.ssl-images-amazon.com/images/I/61vOEpej9BL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(26, 'https://images-na.ssl-images-amazon.com/images/I/61UZ41QdbCL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(27, 'https://images-na.ssl-images-amazon.com/images/I/51-Fn41CwkL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(28, 'https://images-na.ssl-images-amazon.com/images/I/31O5el1GeUL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(29, 'https://images-na.ssl-images-amazon.com/images/I/61mH1EqCUBL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(30, 'https://images-na.ssl-images-amazon.com/images/I/8107kOhQuOL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(31, 'https://images-na.ssl-images-amazon.com/images/I/71baSkSQPlL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(32, 'https://images-na.ssl-images-amazon.com/images/I/7160xoKFtgL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(33, 'https://images-na.ssl-images-amazon.com/images/I/41PUEGmrArS.__AC_SY300_SX300_QL70_ML2_.jpg'),
(34, 'https://images-na.ssl-images-amazon.com/images/I/81H0JaAaVNL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(35, 'https://images-na.ssl-images-amazon.com/images/I/81H0JaAaVNL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(36, 'https://images-na.ssl-images-amazon.com/images/I/31wNNwA6-qL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(37, 'https://m.media-amazon.com/images/I/81l5ByqXQ+L._AC_SX300_SY300_.jpg'),
(38, 'https://images-na.ssl-images-amazon.com/images/I/71rEGALiLfL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(39, 'https://images-na.ssl-images-amazon.com/images/I/91CdhsQNSXL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(40, 'https://images-na.ssl-images-amazon.com/images/I/510BMH39rFS.__AC_SX300_SY300_QL70_ML2_.jpg'),
(41, 'https://images-na.ssl-images-amazon.com/images/I/81Uk-SIJNwL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(42, 'https://images-na.ssl-images-amazon.com/images/I/61yznqmstnL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(43, 'https://images-na.ssl-images-amazon.com/images/I/51Q8Uq6RyfL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(44, 'https://m.media-amazon.com/images/I/61E16+hUzQL._AC_SY300_SX300_.jpg'),
(45, 'https://images-na.ssl-images-amazon.com/images/I/61zLXzN-lIL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(46, 'https://images-na.ssl-images-amazon.com/images/I/914dP4EuGOL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(47, 'https://images-na.ssl-images-amazon.com/images/I/61FcADisrzL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(48, 'https://images-na.ssl-images-amazon.com/images/I/61IafpD5Y9S.__AC_SX300_SY300_QL70_ML2_.jpg'),
(49, 'https://images-na.ssl-images-amazon.com/images/I/91dhTQmbXwL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(50, 'https://m.media-amazon.com/images/I/716o8AMc+sS._AC_SX342_SY445_.jpg'),
(51, 'https://images-na.ssl-images-amazon.com/images/I/21bn7AjfSnS.__AC_SX300_SY300_QL70_ML2_.jpg'),
(52, 'https://images-na.ssl-images-amazon.com/images/I/21poabjmBdL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(53, 'https://images-na.ssl-images-amazon.com/images/I/61i1itSp8lL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(54, 'https://images-na.ssl-images-amazon.com/images/I/81sxRBhe2sS.__AC_SX300_SY300_QL70_ML2_.jpg'),
(55, 'https://images-na.ssl-images-amazon.com/images/I/815g8Uo656S.__AC_SX300_SY300_QL70_ML2_.jpg'),
(56, 'https://images-na.ssl-images-amazon.com/images/I/51VUsJCYxUL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(57, 'https://images-na.ssl-images-amazon.com/images/I/71ey-9D8yDL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(58, 'https://images-na.ssl-images-amazon.com/images/I/316okEZ4C9L.__AC_SY300_SX300_QL70_ML2_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `category_id`, `brand_id`, `image_id`) VALUES
(1, 'Samsung Galaxy A12 Dual SIM Mobile - 6.5 Inch, 128 GB, 4 GB RAM, 4G LTE - Black', '48MP main camera captures every detail of your face in ultra-high resolution.Powerful chipset accounts for seamless multitasking.Furnished with a generously sized display for enhanced viewing.High capacity battery powers the device for prolonged hours on a single charge.Thin, lightweight body fits easily in the palm of your hand', 1, 1, 1),
(2, 'Samsung Galaxy Note 20 Ultra, Snapdragon 865 Plus, Dual SIM, 6.9 Inch, 256 GB, 12 GB RAM, 5G, Mystic Bronze', '6.9-inch Infinity-O display with Dynamic AMOLED technology guarantees detailed images with true-to-life colours.108MP main camera captures every detail of your face in ultra-high resolution.Powerful chipset and bluetooth 5.1, A2DP, LE, aptX accounts for seamless multitasking.High capacity battery (4500mAh) powers the device for prolonged hours on a single charge.The S Pen (INCLUDED) with Bluetooth functionality, that lets you write, draw and control many important features using intuitive gestures', 1, 1, 2),
(3, 'Samsung Galaxy S21 Ultra Dual SIM Mobile - 6.8 Inches, 256 GB, 12 GB RAM, 5G - Black', 'Take Epic Photography: Capture the never-been-seen before with two 10MP telephoto cameras, a 12MP ultra wide, 108MP wide (incl. Laser ToF Lense), and a 40MP front camera. It\'s a massive leap for mobile photography..Infinity-O Dynamic AMOLED 2x Display: Content comes alive on the HDR10+ certified 6.8-inch screen. Complementing it is a 120Hz refresh rate, so that you get incredibly smooth scrolling and gaming.S Pen: Get the function and versatility of the S Pen on your Galaxy S21 Ultra. Change the way you edit and fine-tune, on the fly.12GB of RAM and 256GB of ROM: Thanks to a powerful processor with built-in advanced AI and more-than-generous amounts of RAM, it\'s performance beyond anything we\'ve done before.5000mAh Battery with Fast Charging: All the fuel in minutes ? shareable and available wirelessly. It doesn\'t stop there ? they are intelligent, analyzing your usage patterns to save more power, giving you more charge', 1, 1, 3),
(4, 'Samsung Galaxy A32 Dual SIM - 6.4 Inches, 6GB RAM, 128GB, 4G LTE - Awesome Black', '64MP main camera captures every detail of your face in ultra-high resolution.Powerful chipset accounts for seamless multitasking.Furnished with a generously sized display for enhanced viewing.High capacity battery powers the device for prolonged hours on a single charge.Thin, lightweight body fits easily in the palm of your hand', 1, 1, 4),
(5, 'New Apple iPhone 13 Pro with Facetime (128GB) - Sierra Blue', 'Macro Photography - With its redesigned lens and powerful autofocus system, the new Ultra-Wide camera can focus at just 2 cm ? making even the smallest details seem epic. Transform a leaf into abstract art. Capture a caterpillar?s fuzz. Magnify a dewdrop. The beauty of tiny awaits.iPhone 13 Pro was made for low light. The Wide camera adds a wider aperture and our largest sensor yet ? and it leverages the LiDAR Scanner for Night mode portraits. Ultra-Wide gets a wider aperture, a faster sensor, and all-new autofocus. And Telephoto now has Night mode..The new Super Retina XDR display with ProMotion can refresh from 10 to 120 times per second, and all kinds of frame rates in between. It intelligently ramps up when you need exceptional graphics performance, and ramps down to save power when you don?t. It even accelerates and decelerates naturally to match the speed of your finger as you scroll. You?ve never felt anything like it.The display?s ability to refresh up to 120Hz ? combined with the amazing graphics performance of the new 5-core GPU on A15 Bionic ? makes iPhone 13 Pro perfect for power gamers..Facetime is available on the product & would be accessible in regions where facetime is permitted by telecom operators', 1, 2, 5),
(6, 'Samsung 43 Inch 4K UHD Smart LED TV with Built-in Receiver and Remote Control, Black - UA43AU7000UXEG', 'Immerse yourself in the picture with one billion shades of color.Powerful 4K upscaling ensures you get up to 4K resolution for the content you love.High dynamic range increases the range of light levels on your TV so you can enjoy an enormous spectrum of colors and all the visual details, in even the darkest scenes.Dynamic crystal color delivers lifelike variations so you can see every subtlety.You\'ll also experience more lifelike color expressions due to its sophisticated color mapping technology.A sleek and elegant design that draws you to the purest picture.Keep your cables tidy and conceal them, reducing clutter and keeping a seamless look for your TV', 2, 1, 6),
(7, 'LG 43 inches UHD 4K Smart TV, Active HDR, WebOS Operating System, ThinQ AI - 43UP7550PVG', 'Fast, accurate quad-core processor eliminates noise and creates more vibrant colors and contrasts.Enjoy rich, perfect and multi-dimensional sound thanks to the built-in speaker in the TV for sound from all angles.Brilliant screen that provides an amazing viewing experience and an ultra-clear picture.Diffuses the light uniformly and reduces light leakage, for a great viewing experience from different angles.Features 20w sound output power, 220-240v voltage and frequency 50-60Hz', 2, 3, 7),
(8, 'Apple iPhone 12 Pro Max 128GB Blue', '5G transforms iPhone with accelerated wireless speeds and better performance on congested networks.12mp main camera captures every detail in ultra-high resolution.Clocked with premium a14 bionic processor that ensures reliable performance.Fueled by a powerful 3687 mAh battery that facilitates prolonged hours of user life.Facetime is available on the product & would be accessible in regions where facetime is permitted by telecom operators', 1, 2, 8),
(9, 'Apple iPhone?12 128GB 4 GB RAM, Blue', 'The power of A14?Bionic brings the latest AR experiences to life. Explore ancient relics, dissect a frog ? even try out a new couch with AR?Quick?Look..Sound moves around you in 3D space, so you feel like you?re inside the?action..Both the Wide and Ultra Wide cameras now have Night mode ? and it?s better than ever at capturing incredible low-light shots. The new Wide camera brings in 27 percent more light. So whether you take photos by day or by moonlight, you?ll get a level of detail and color that wasn?t possible before..Dual SIM: 1 Physical SIM, 1 e-SIM.Facetime is available on the product & would be accessible in regions where facetime is permitted by telecom operators', 1, 2, 9),
(10, 'Apple iPhone 12 Pro with Facetime - 256GB, 5G, Gold - Middle East Version', '5G transforms iPhone with accelerated wireless speeds and better performance on congested networks.12mp main camera captures every detail in ultra-high resolution.Clocked with premium a14 bionic processor that ensures reliable performance.Fueled by a powerful 3687 mAh battery that facilitates prolonged hours of user life.Facetime is available on the product & would be accessible in regions where facetime is permitted by telecom operators', 1, 2, 10),
(11, 'Apple AirPods Pro, White - MWP22ZE/A', 'A custom-built high-excursion, low-distortion driver delivers powerful bass. A superefficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience..Apple AirPods Pro offer a more customizable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your Apple AirPods Pro in place and creating an exceptional seal for superior noise cancellation..Switch to Transparency mode and Apple AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable Apple AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you?re talking to people around you..Incredibly light noise-cancelling headphones, Apple AirPods Pro block out your environment so you can focus on what you?re listening to. Apple AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts, and calls..Apple AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings, and a customizable fit for all-day comfort. Just like Apple AirPods, Apple AirPods Pro connect magically to your iPhone or Apple Watch. And they?re ready to use right out of the case.', 3, 2, 11),
(12, 'Samsung Galaxy Buds Pro, True Wireless Earbuds w/Intelligent Active Noise Canceling, Phantom Black', 'These are true wireless earbuds, with pro-grade technology for immersive sound like never before. While Intelligent ANC lets you seamlessly switch between noise canceling and fully adjustable ambient sound. So let the outside in - or keep it out. It\'s your world. Galaxy Buds Pro let you hear the best of it..Active Noise Canceling on Galaxy Buds Pro filters out up to 99% of background noise. Microphones on the inside and outside monitor noise in real time. Choose the ANC level to dial the world up or down with an intelligent algorithm that cancels out the noise: turn it to High on a noisy bus, or use Low in a quiet library - no need to change the volume.Voice Detect instantly switches from ANC to Ambient sound when it hears your voice. Like when you\'re at a cafe using ANC to block outside noise, tell the barista your order and ANC automatically turns off when you speak.From the highest treble to the deepest bass, notes come through beautifully, thanks to custom-built 2-way speakers with sound by AKG. Galaxy Buds Pro offer the most immersive sound experience on Galaxy Buds, whether you\'re listening to a new album or the audiobook for your next road trip..Take noise-free calls that blow your mind. The best quality call for true wireless earbuds means you get less noise and a clearer voice on calls at home or out in the world', 3, 1, 12),
(13, 'HP 255 G7 Laptop - Ryzen 5 3500U, 8 GB RAM, 1 TB HDD, Radeon Graphics, 15.6-Inch HD, DOS - Sliver', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 4, 4, 13),
(14, 'Dell Gaming G15 5511, 15.6-inch inch FHD 120Hz Non-Touch Laptop - Intel Core i7-11800H, 16GB DDR4 RAM, 512GB SSD, NVIDIA GeFo', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 4, 5, 14),
(15, 'Lenovo V15-IIL 82C500T6ED laptop, intel 10th Gen core i3-1005G1, 4 GB RAM, 1 TB HDD, Integrated Intel UHD Graphics card, 15.6', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 4, 6, 15),
(16, 'Dell Vostro 3500 laptop - 11th Intel core i7-1165G7, 8GB RAM, 1TB HDD, Nvidia GeForce MX330 GDDR5 Graphics, 15.6 Inch FHD, Ub', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 4, 5, 16),
(17, 'Xiaomi Mi Box S with 4K HDR Android TV Streaming Media Player Google Assistant Remote Official International Version - BLACK', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 7, 17),
(18, 'Xiaomi 11 Lite 5G NE Dual SIM - 6.55 inches, 128GB ,8 GB RAM, 5G, Bubblegum Blue', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 7, 18),
(19, 'Xiaomi Redmi Note 11,90 Hz Amoled Pioneer, 64 GB, 4GB RAM, Graphite Gray', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 7, 19),
(20, 'Xiaomi Redmi Buds 3 Pro Wireless Smart Earbuds with Noise Cancelation, Dual-device connectivity, Wireless charging, 28h long ', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 7, 20),
(21, 'Xiaomi Mi Home Security Camera 360? 1080p', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 7, 21),
(22, 'Xiaomi Redmi 9A Dual SIM Mobile Phone, 13 MP Camera, 6.53 Inch Touch Screen, 2 GB RAM, 32 GB, 4G LTE - Granite Grey', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 7, 22),
(23, 'Xiaomi 11 Lite5G NE Dual SIM - 6.55 inches,128 GB ,8GB RAM ,5G, Truffle Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 7, 23),
(24, 'Xiaomi Mi Portable Photo Printer - White', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 7, 24),
(25, 'Xiaomi Mi Smart Watch Lite Ivory - 1.4 Inch Touch Screen, 5ATM Water Resistant, 9 Days Battery Life, GPS, 11 Sports Mode, Ste', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 7, 25),
(26, 'Xiaomi Mi Smart Band 5 - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 7, 26),
(27, 'Xiaomi Mi Desktop Full HD Monitor 1C, BHR4510GL, 23.8 inch, 60 Hz - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 7, 27),
(28, 'Xiaomi Mi VXN4304GL Fast Charging Power Bank 20000mAh 18W - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 7, 28),
(29, 'SONY HEADPH MDR-ZX110AP WHT', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 29),
(30, 'Sony WH-CH510/B Wireless Headphones - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 30),
(31, 'Sony WI-C310 Wireless Headphone - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 31),
(32, 'Sony 1000XM4 Wireless Bluetooth Noise Cancellation Headphone with Microphone - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 32),
(33, 'Sony WF-1000XM4 True Wireless Noise Cancelling Headphones - with Charging Case with Built-in Mic for Phone Calls - Reliable B', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 33),
(34, 'Sony WH-CH510/L Wireless Headphones - Blue', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 34),
(35, 'Sony WH-CH510/L Wireless Headphones - Blue', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 35),
(36, 'Sony PlayStation Gold Wireless Headset For PS4 - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 3, 8, 36),
(37, 'Canon EOS 800D EF-S 18-55mm F4-5.6 IS STM lens - 24.2 MP DSLR Camera Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 9, 37),
(38, 'Canon EOS 4000D EF-S 18-55mm III Lens - Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 9, 38),
(39, 'Canon?EOS 6D Mark II Body, 26.2 MP, DSLR Camera, Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 9, 39),
(40, 'EOS 4000D 18-55 III Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 9, 40),
(41, 'Canon i-Sensys MF3140 All-In-One Laser Printer', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 9, 41),
(42, 'Canon I-Sensys MF443dw 4-In-1 Mono Laser Printer - White', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 9, 42),
(43, 'Canon EOS 5D Mark IV Body Only - 30.4MP, DSLR Camera, Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 9, 43),
(44, 'Canon EF 50mm f/1.8 STM Standard Lens', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 5, 9, 44),
(45, 'Nike Swoosh Headband', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 10, 45),
(46, 'Microsoft xbox 360 controller for pc and Xbox 360, USB, Black', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 7, 11, 46),
(47, 'Marvel Spiderman Video Game (PS4)', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 6, 8, 47),
(48, 'God Of War by Sony Region 2 - Playstation 4', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 6, 8, 48),
(49, 'The Witcher 3 Game of the year edition (PS4)', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 6, 12, 49),
(50, 'SONY PS5 GHOST OF TSUSHIMA DIRECTOR\'S CUT- PS5, Black, 10GHOCU2', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 13, 50),
(51, 'Apple Pencil (2nd Generation) White - MU8F2', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 2, 51),
(52, 'Apple 20W USB-C Power Adapter - White', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 2, 52),
(53, 'Apple Iphone XS With Facetime - 256 GB', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 2, 53),
(54, '2021 Apple iPad Pro (12.9-inch, Wi-Fi + Cellular, 2TB) - Space Grey (5th Generation)', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 2, 54),
(55, 'Apple TV 4K (32GB)', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 1, 2, 55),
(56, 'Apple 85W MagSafe 2 Power Adapter for MacBook Pro with Retina display MD506', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 2, 56),
(57, 'New 2021 Apple iPad mini (8.3-inch, Wi-Fi, 64GB) - Space Grey (6th Generation)', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 9, 2, 57),
(58, 'Apple Magic Mouse 2 - White, MLA02', 'AirPods deliver an unparalleled wireless headphone experience.Put them in your ears and they connect immediately, immersing you in rich, high-quality sound.They can sense when they?re in your ears and pause when you take them out.Talking to your favourite personal assistant is easier than ever.Optical sensors and motion accelerometers work together to automatically controlling the audio experience', 7, 2, 58);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `Review` longtext COLLATE utf8mb4_unicode_ci,
  `Date` text COLLATE utf8mb4_unicode_ci,
  `stars` double DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `Review`, `Date`, `stars`, `product_id`) VALUES
(1, 'علبة الهاتف وصلتني مقطوعه والهاتف مفتوح وعليه غبار', '19 October 2021', 4.3, 1),
(2, 'منتج رائع بس شركة الشحن ليست جيدةتعديل بعد استخدام لاكثر من 4 شهور لاحظت ان مكالمات الفيديو بينقل الصوت بصعوبة يعنى لازم التليفون يكون قريب جدا ليك عشان الصوت يبقى واضح فى المكالمة معرفش عندى بس المشكلة دى ولا الكل يا ريت الناس تكتب عن الموضوع عشان غيرنا ياخد بالو', '9 October 2021', 4, 1),
(3, 'مش عارف جميع الموبيلات إللى بيتم شراؤها عن طريق الاونلاين بتبقا زبالة', '4 November 2021', 1, 1),
(4, 'منتج ممتاز جدا جدا ، أنصح بشرائه', '15 September 2021', 1, 1),
(5, 'شكرا امازونخدمه َمتازهمندوب قمة ف الاحتراممنتج رائع جداشكرا لكم', '1 October 2021', 4, 1),
(6, 'افضل حاجه انه صناعه فيتناميخدمه توصيل ممتازه', '28 October 2021', 1, 1),
(7, 'جميل جدا بالنسبه لسعره', '13 September 2021', 5, 1),
(8, 'موبايل ممتاز بالنسبة لسعره', '9 September 2021', 5, 1),
(9, 'انا استلمته الان وصل تانى يومبس غريبه اوى ان الريفيوهات بتقول انه فيتنامى واللى وصلنى هندىولغايه دلوقتى مش عارفه اورجينال ولا كوبى بصراحه اتقفلت منه جدامش معاه فاتوره ولا ضمان ولا اى حاجه تثبت انى اشتريته اصلاحاجه تضايق جدا', '2 January 2022', 5, 1),
(10, 'تلفون تافه في معنه الكلمه لا انصح فيه نهائي انا بعته تاني يوم', '8 December 2021', 5, 1),
(11, 'Quick and safe delivery. Exactly as described', '15 Mar, 2022', 5, 1),
(12, 'The item is good', '4 Jan, 2022', 5, 1),
(13, 'Slow', '2 Dec, 2021', 5, 1),
(14, 'Good', '13 Oct, 2021', 5, 1),
(15, 'Awesome', '5 Sep, 2021', 5, 1),
(16, 'التسليم في نفس اليوم والمنتج رائع', '4 Jan, 2022', 5, 1),
(17, 'ممتاز', '26 Aug, 2021', 5, 1),
(18, 'Brilliant phone most definitely will buy this again', '6 February 2022', 4.1, 1),
(19, 'Best phone I had in ages. I\'m not into too much technology, this phone is perfect for what I want to use it for Worth buying.', '19 February 2022', 5, 1),
(20, 'Worth the money', '18 February 2022', 5, 1),
(21, 'Face recognition fails fingerprint doesn\'t work battery life the best thing about the phone', '11 March 2022', 5, 1),
(22, 'Very good phone', '23 March 2022', 2, 1),
(23, 'Just like the description', '27 December 2021', 4.2, 2),
(24, 'Very good mobile with silicon cover', '12 March 2022', 5, 2),
(25, 'I just received my note 20 ultra a few days back . It is a really highly  performing mobile phone with all the advantages Samsung included in it. Battery life is a little bit shorter than its predecessor ( note 10 plus ) , but it is OK as I am enjoying a lot of features packed with it such as snapdragon processor , 120 Hz screen and the well known wonderful amoled display  .', 'Reviewed in Saudi Arabia on 16 December 2020', 5, 2),
(26, 'نسخه سعوديه', 'Reviewed in Saudi Arabia on 13 February 2021', 4, 2),
(27, 'I liked everything about this.I like how fast it came in the mail ( a week early )I liked how it was exactly what I ordered from what what explained in the description and photos.I like how the phone has been working amazing for about 2 months so far.This seller is trusted and I would buy from them again!', 'Reviewed in Canada on 22 August 2021', 1, 2),
(28, 'I do like everything on my new phone. Battery last much longer than the Iphone', 'Reviewed in Canada on 25 July 2021', 5, 2),
(29, 'Llegó en buen estado, solo no me gustó que el cargador es de tipo europeo, lo bueno fue que de manera gratuita incluía un adaptador para poder conectarlo a la toma de corriente que usual de México.En términos generales el celular es una fregonería y vale muchísimo la pena 10/10👌🏼', 'Reviewed in Mexico on 6 May 2021', 5, 2),
(30, 'I’m pretty sure the Note20 Ultra is only capable of up to 25W of fast charging, however, not 45W. The S-Pen is a very useful tool for picture documenting. Thank you, Samsung for a great job', 'Reviewed in Saudi Arabia on 16 February 2021', 5, 2),
(31, 'Llego a tiempo y funciona perfecto!Venía sellado, original Samsung. Y aunque incluia un adaptador para el cargador (no americano) eso no afecta su funcionalidad.Lo volveria a comprar', 'Reviewed in Mexico on 22 April 2021', 5, 2),
(32, 'Excellent phone thanks for the seller', 'Reviewed in the United Arab Emirates on 26 October 2021', 5, 2),
(33, 'Simply, this is the best smartphone ever existed in this world! I can\'t say more.', '5 Dec, 2021', 5, 2),
(34, 'Perfect', '2 Sep, 2021', 5, 2),
(35, 'Good camera, battery back up, speed. \ncons, This is not snapdragon version', '22 Apr, 2021', 5, 2),
(36, 'ok', '1 Feb, 2021', 5, 2),
(37, 'المنتج معه ضمان سامسونج', '19 Dec, 2021', 5, 2),
(38, 'رااااائع👍recommend', '14 Nov, 2021', 5, 2),
(39, 'OK so i bought a renewed Note Ultra which as I quickly discovered came with a fawlty camera module. The default software camera refused to work, however other camera apps did work, but that\'s know good, I need the default samsung camera to work to take advantage of the camera & all it\'s features.So I returned.By the by for the few hours I was playing with it, battery life drained quickly.', '24 February 2021', 4.4, 2),
(40, 'I\'ve been nursing my Galaxy Note 8 through its ever decreasing battery life for a very long time, in the hope that Samsung would finally release a new Note with 4K screen, so that I can use my VR headset without the annoying \'screen door\' effect.So what happened? Samsung decided to end its collaboration with Occulus instead. I suspect it was to deliberately spite me! And, as Samsung also didn\'t release a new Note this year, I bought this, older, Note 20 Ultra instead.I knew that I would be buying a refurbished handset. But I was okay with that. I tell everyone it\'s so that I can do my little bit for the planet by not buying new, and being in favour of recycling. But the truth is, I saved myself some money, and if Samsung release a new Note next year, I might take another look.So, onto the handset. It arrived in a plain generic box, with no frills and no accessories save an unbranded, generic USB charging cable. It does, however, have a 12 month, money back guarantee (reassuring).I am very pleased with my purchase. The phone is completely unblemished and, for all intents and purposes, looks brand new. Everything works exactly as I would expect, and setting up and transfer of data from my old phone was simple (but not quick!).The battery, whilst much better than my Note 8, still requires a charge throughout the day to give me a full day\'s use. But then, I do use my phone a lot. To be fair though, it is better.The process of getting the phone to work with every application as well as my old one takes time. But then, that\'s the same for every new phone; visiting websites that requires passwords, or online banking etc. And can\'t be done in an hour or so, but that\'s not the fault of the phone, more a fact of life now.All in all, I am very happy with this purchase, and would give serious consideration to buying from the seller again. Highly recommended.', '22 November 2021', 5, 2),
(41, 'I was a bit sceptical ordering a refurbished phone from Amazon. The phone works great like new,  no problems, battery life is decent just about gets me through the day it with moderate use. Fingerprint sensor is fast. The screen on this phone is the best out there I can\'t complain about anything. I am so pleased with the purchased and the price was amazing.I am yet to experience the camera to its fullest, so no comment at the moment.', '8 August 2021', 3, 2),
(42, 'bought it because it was new the box came both open and cable black head side white.', '19 April 2021', 3, 2),
(43, 'This is a beautiful phone, feels like iPhone quality. Exactly the right size too. Unfortunately it won\'t allow me to get past the first setup page which is very frustrating. Just goes to show that I should have gone for brand new model.', '30 June 2021', 5, 2),
(44, 'Phone come like brand new', '6 July 2021', 5, 2),
(45, 'What\'s not to like!Mint condition for 2/3 new price.Fully guaranteed.', '1 July 2021', 1, 2),
(46, 'This phone arrived in fairly good timing, it set up well and worked brilliantly. I noticed as I started using it that there were a lot of \"blind spots\" where the S-pen wouldn\'t work on the phone. Long story short, I got in touch with the refurbishing company thinking it was faulty. (they were extremely accommodating) I decided to research these \"blind spots\" just in case it was a common problem, but I found it can actually be caused by detachable wallet cases. I have one of these so I tried the S-pen without it and of course everything works perfectly.Apparently the strong magnets in the back of the case can mess with the sensors in the phone\'s screen, so if you do end up going with this phone (or any other phone that includes a pen) I\'d recommend staying away from detachable cases ;).The phone itself is wonderful, camera is great, loads of storage, it\'s pretty fast and the pen has a bunch of features. All in all I\'d say it\'s a great phone and the company is very reliable.', '3 March 2022', 1, 2),
(47, 'It works fine just the on/off and vol buttons  could have been spaced out  more', '11 November 2021', 5, 2),
(48, 'Wonderful phone and arrived in perfect condition. The best phone I have owned, I just wish the battery could last the whole day', '5 January 2022', 5, 2),
(49, 'استلمت الجهاز اليوم وهو تحت التجربهلكن مع الاسف ليس معه ضمان مصرى مثل ما كتب فى الرد على الاسئله للبائعقمت بشرائه على انه معه ضمان محلى مصرى ولكن مع الاسف لا يوجد معه ضمان', '3 November 2021', 3.1, 3),
(50, 'الجهاز ضمان مش مصري ضمان اماراتي يعني لو ف مشكله ضناعه مالهوش تصليح غير ع حسابك انتا مش حساب الضمان', '16 October 2021', 4, 3),
(51, 'يوجد بالشاشة عيب صناعة', '11 November 2021', 1, 3),
(52, 'جاي بضمان محلي وفعلا يستاهل تمنه', '22 November 2021', 4, 3),
(53, 'كنت اتمني ذكر ان الموبايل بدون سماعه او شاحن', '30 November 2021', 1, 3),
(54, 'لا انصح بشرائه', '14 January 2022', 1, 3),
(55, 'Perfect with good price', '7 November 2021', 5, 3),
(56, 'بدون جراب و بدون القلم ولا اعلم اذا كان المنتج اصلى ام لا', '9 February 2021', 2, 3),
(57, 'This is a fake product. The phone had the old mini USB charger port, the s21 ultra charger port is type c. Do not buy this product', 'Reviewed in the United Arab Emirates on 22 March 2021', 1, 3),
(58, 'جهاز سيء بمعني الكلمة سخونة عالية والبطارية تستنزف بشكل رهيب لا تكمل معك ولا ساعة وبدون استخدام الجوال بالإضافة الي المعاملة السيئة للبائع رجعت الجهاز وقام بخصم أكثر من 30% من مبلغ الشراء', 'Reviewed in Saudi Arabia on 21 June 2021', 5, 3),
(59, 'TRA approved product', '27 Feb, 2022', 5, 3),
(60, 'pinkish tint in screen. otherwise phone is good.', '15 Jan, 2022', 5, 3),
(61, 'Pantas! Secured with bubblewrap..\nsama je brand ape pun..hanya dpt phone dgn cable je jgk.. 😅😘', '20 Dec, 2021', 5, 3),
(62, 'Nice and premium, intact packaging and brandnew. Baught it on a good price offer from noon. Thank you. Camera is nice and good this is the reason why also i baught this Samsung S21ultra than huawei mate 40pro on my opinion.', '16 Dec, 2021', 5, 3),
(63, 'Good', '25 Nov, 2021', 5, 3),
(64, 'افضل جوال', '28 Feb, 2022', 5, 3),
(65, 'ممتاز جدا', '30 Dec, 2021', 5, 3),
(66, 'Purchased phone from amazon as they advertised it as being part of the Samsung promotion for free buds.Submitted claim within 24 hours of delivery of phone, complete with Amazon invoice.Samsung are refusing to honour the free buds offer because the purchase cannot be \"verified\" despite providing clear documentation and proof of purchase.', '9 March 2022', 3.8, 3),
(67, 'I have had this phone for a few weeks now. In my opinion it is a great phone.Benefits:The display is huge and bright. The best that I have seen on a phone.The phone feels like it is made of the highest quality material. It feels premium. In my opinion,it is a thing of beauty.The speakers are pretty loud with good quality.The call quality can be excellent.The version that I have has the exynos 2022 processor. It is fast and has handled everything that I have thrown at it with no problems or slowdown. It\'s a powerful multitasking beast. Apps like Instagram, Facebook and Twitter run smoothly on the device. I also have an s22 backup phone that is equipped with an Snapdragon processor; I have not noticed any difference in performance between them.The battery life of the phone has steadily improved as it has learned my routines. Initially I was getting less than a day of use from the battery before having to recharge. Now it is lasting two days before having to recharge.I don\'t use the S-pen so I can\'t say much about it.The camera is pretty great. It takes great quality photographs.The fingerprint reader works flawlessly. I had no issues with it.Weaknesses:The phone is heavy. It took me a few days to get use to its weight.The camera array picks up dust easily and it looks like it wouldn\'t take too much punishment, a lens protector is a must.The phone is not a massive improvement over the s22 ultra.Conclusion:I would highly recommend this phone.', '24 March 2022', 1, 3),
(68, 'PRODUCT: 2022 Samsung Galaxy S22 Ultra (dual SIM, 512GB)USE CASE: replace 2019 Samsung Galaxy Note 10+ (dual SIM, 256GB)Who am I? A die hard Android user since 2012 (also had Samsung Bada in 2011) whose last truly exciting phone was the Samsung Galaxy Note 4 (removable battery, flat screen)VERTICTDo not buy this phone unless price drops to say 800GBP because there are way too many software issues that may or may not be fixed by Samsung in the next 12 months.PROs+ Good screen+ Good speakers+ Good build quality+ 5G+ Useful pen when you need it around 1/month or want to impress strangers+ Depressing: fewer software issues than 2022 Google Pixel 6 series+ Makes the Apple iPhone Pro Max (1350GBP, 5122GB) more attractiveCONs- Actually worse than my Note 10+- Lots of software issues, stuttering, lag, bugs and crashes on a new 1200GBP phone: alpha stage software not optimised. Slow switching between apps. Jittery scrolling- Updates make your phone slower and cause issues with Play Store: unable to update or even install apps. 5-10h time consuming phone reset needed after every major Android/Samsung update that breaks something- No larger size available: I want 7\"+ without folding it- Still not a flat screen- Camera: nowhere near as good in video as iPhone Pro- Battery: average at best and 22% worse than iPhone Pro Max and only 8% better than 2019 Note 10+- Fingerprint sensor: still unreliable, albeit a bit faster- Poor value', '22 March 2022', 5, 3),
(69, 'They are offering Disney plus free for 12 months as a promotion but after several attempts of trying to get this promotion it just keeps coming up with \"this promotion isn\'t available\" I\'ve got my S22 today I followed all the steps but will not work, other people on the forums are having problems too, so be aware, it has left a very bitter taste in my mouth because it was one of the reasons that I got a new Samsung S22. Instead of enjoying my new phone and watching Disney plus I\'m left frustrated and angry at Samsung.', '24 March 2022', 1, 3),
(70, 'This has to be the worst device ive ever owned. Sent it back for the following reasons1. Slow and unresponsive all the time2. Crappy battery life3. Freezing apps and slow animationsI have been on to samsung support about these issues and basically told to wait for software updates.im not prepared to wait months on end hoping for each update to fix the issuessent this back and went for the Oppo Find X5 Pro', '11 March 2022', 1, 3),
(71, 'المنتج كويس واحسن من الفئات الي جت قبله. جالي بدون سماعة للاذن.بيجي ومعاه غطاء الضهر.خفيف الوزن رغم حجمه.زعلني اني اشتريت المنتج وسعره رخص بعديها بيوم.', '3 September 2021', 4.3, 4),
(72, 'الموبايل جيد جدا بس جاى من غير سماعة اذنوالعلبة بتاعت الموبايل مقطوعه واضح ان اتحط عليها حاجه تقيله كويس ان الموبايل متكسرش ازاى اصلا علبة الموبايل مش محطوطه فى كرتونه اللى بيكون مكتوب عليها امازون ومحطوطه فى كيس بلاستيك', '9 November 2021', 4, 4),
(73, 'الشاشة فوق الممتازةالكاميرات جيدة جداالهاتف فى المجمل ممتازيعيبه عدم وجود سماعة اذن', '17 November 2021', 3, 4),
(74, 'كل الامكانيات بسعر مناسب', '24 December 2021', 4, 4),
(75, 'الكاميرا والذاكرة فعالتان جدا', '25 September 2021', 3, 4),
(76, 'لايوجد سماعة مع الجهاز', '2 October 2021', 5, 4),
(77, 'رخص سعره بعد شرائه بيوم واحد', '29 January 2022', 5, 4),
(78, 'أريد الغاء طلب الاستبدالوشكرا', '10 March 2022', 4, 4),
(79, 'العيب الوحيد انه لا يوجد هاند فري', '13 March 2022', 5, 4),
(80, 'اشتريته من محل جنبي ب 4025 اسعاركم غالية علي الفاضي لكن الموبايل ممتاز', '27 September 2021', 2, 4),
(81, 'Wonderful Display, Good Phone', '23 Feb, 2022', 5, 4),
(82, 'Nice I like it', '13 Feb, 2022', 5, 4),
(83, 'I like this mobile', '2 Feb, 2022', 5, 4),
(84, 'Good', '29 Jan, 2022', 5, 4),
(85, 'good', '27 Jan, 2022', 5, 4),
(86, 'اخذته 128جيجا 949 ريال. لون اسود هناك شبيهو  ب الف وميه ونفس الذاكره سامسونغ ولكن فايف جي. زياده مئتان بالسعر ولكن هذا مناسب جدا احببته اخذته لامي هديه ان شالله يعجبها', '25 Sep, 2021', 5, 4),
(87, 'ممتاز و خفيف و عيبه الوحيدة الشاحن ١٥ واط يقعد ساعتين و نص للشحن فل', '12 Aug, 2021', 5, 4),
(88, 'Do not buy this phone for a dual sim option you cannot use a micro sd and two sims making this phone useless!', '9 October 2021', 4.3, 4),
(89, 'I don\'t use the fingerprint reader or face recognition. I use it as a phone, with many usual features. It is great. Well built and super avlue. I highly recommend id it.', '26 January 2022', 5, 4),
(90, 'Good basic phone. I\'ve abandoned using the fingerprint reader as it errors too often (maybe it\'s just me), but apart from that it seems OK. Battery lasts a very long time, which is the main reason I got it and have not been disappointed.', '12 March 2022', 2, 4),
(91, 'All  good', '4 January 2022', 2, 4),
(92, 'The Phone was good', '12 January 2022', 5, 4),
(93, 'I love everything about the phone but no earplugs', '24 February 2022', 4, 4),
(94, 'I bought this phone because of the great battery life, awesome camera and I love Samsung. Had an IPhone and couldn\'t get on with it. I\'m so happy to finally have a great phone.', '7 January 2022', 5, 4),
(95, 'Very good picture quality, came with charger but no ear phones😏', '17 March 2022', 5, 4),
(96, 'Bought 2 of these one for my husband as well. Can\'t fault them. Well worth the money spent', '26 March 2022', 4, 4),
(97, 'Téléphone samsung A32 reçu sans les écouteurs, ce n\'est pas normal. Ça mérite une remise pour un article incomplet !', 'Reviewed in France on 19 August 2021', 5, 4),
(98, 'I am happy with my upgrade from iphone xs. Camera is amazing. specially in low light conditions. I was annoyed at first seeing it had no facetime. But later on I discovered that if you switch the region from UAE to UK or USA it will appear.', 'Reviewed in the United Arab Emirates on 25 September 2021', 3.5, 5),
(99, 'A lot of customers are saying it comes without FaceTime, but to get FaceTime all you need to do is change the region in settings to something like UK, Canada, USA, India etc. The phone is original and of International version A2638.', 'Reviewed in the United Arab Emirates on 3 October 2021', 5, 5),
(100, 'Apple made changes to the OS recently, and now all models have FaceTime - UNLESS your selected country in the settings is UAE. You have to in the menu, change your country to anywhere other than UAE and FaceTime pops up. As an example, I even have an iPhone 12 from Etisalat, and it has FaceTime now since changing the country in the settings.', 'Reviewed in the United Arab Emirates on 19 October 2021', 5, 5),
(101, 'The phone is all genuine and solid factor.But FaceTime is not available. @Amazon: how come it’s been advertised as iPhone with FaceTime, it’s not available even when in a different country with a different SIM card.Plz look into this.', 'Reviewed in the United Arab Emirates on 28 October 2021', 5, 5),
(102, 'Product does not come with FaceTime as promised in the description. Returning the product. Such a disappointment!', 'Reviewed in the United Arab Emirates on 29 September 2021', 4, 5),
(103, 'Cheating... No facetime..... People buy things because they have so much faith in Amazon but you cheated .. I will go ahead with a complaint against this .. I will file a complaint to the police', 'Reviewed in the United Arab Emirates on 18 March 2022', 1, 5),
(104, 'Perfect one and fast delivery', 'Reviewed in the United Arab Emirates on 22 October 2021', 1, 5),
(105, 'I purchased  this item and I compared to another iphone from istore it seems to be differences in appearance in display. And brightness of the display also very low.', 'Reviewed in the United Arab Emirates on 28 September 2021', 5, 5),
(106, 'Box seal was damage from one side as received which is obviously suspicious.', 'Reviewed in the United Arab Emirates on 18 December 2021', 1, 5),
(107, 'FaceTime works outside UAE.The phone seems the same in its looks & features its predecessor.', 'Reviewed in the United Arab Emirates on 27 January 2022', 1, 5),
(108, 'Super Mobile 👍🏻👌🏻', '24 Feb, 2022', 5, 5),
(109, 'Best seller in noon', '20 Feb, 2022', 5, 5),
(110, 'iPhone is iPhone no mobile can beat its class', '19 Feb, 2022', 5, 5),
(111, 'Unique color, No adapter available in new models', '17 Feb, 2022', 5, 5),
(112, 'Original and as described. Box has a slight dent but doesn\'t affect the phone inside. Thanks', '19 Jan, 2022', 5, 5),
(113, 'This will be a long and detailed review. I am writing this to guide those who are hesitant whether to get an iPhone or not, and which iPhone to get. I will start by focusing on the iPhone 13 Pro model, but I will speak more generally towards the end, especially when comparing iOS versus Android Products.iPhone 13 Pro Overview:I had the chance to unbox this device and set it up as my new main device. Prior to this I was using a Samsung Note and a Realme smartphones.- Box Contents and Eco-Friendliness:The iPhone 13 Pro box contains paper leaflets, sticker, a cable, and of course phone. The phone itself is wrapped in recyclable material rather than eco-unfriendly plastic. Part of the switch to Apple is what I personally see as an effort from them to go green, in addition to other reasons I will discuss below.- Design and Build Quality:The iPhone 13 Pro is simply amazing in terms of design. Holding it feels almost like holding the previous 12 Pro model, albeit the 13 Pro comes with noticeable bigger cameras and smaller notch.The body is flawless and the graphite option is the best in my view as I like neutral-lowkey\'ish colours. The other colours are equally appealing but the graphite just felt suitable for my personal tastes. The side frame is stainless steel and the whole phone feels really solid. I have seen JerryRig\'s video where he tries to bend the iPhone 13 Pro and phone managed to survive and stay fully intact. Jerry also used a lighter to try and burn the screen, and it didn\'t! Despite being exposed to continuous lighter flames for around a minute (You should check it out).Compared to the 12 Pro, the iPhone 13 Pro is slightly heavier (209g vs 189g) and slightly thicker (7.7mm vs 7.4mm).- Specs:Stats are the last thing I consider recently since most flagships pack the latest technology and all fly through tasks easily. We seem to live in an age where the hardware capabilities is outweighing the requirements of most, if not all, apps and games.The iPhone 13 Pro packs a 3095 mAH battery which is bigger and better than the previous iPhone 12 Pro\'s battery. It has a Super Retina XDR OLED display with a 120HZ refresh rate (Finally they left the old 60HZ rate). The refresh rate is variable, meaning that drops for less demanding apps, which adds to the preserving of energy. The display is very bright and can be seen easily and clearly in bright daylight. It has a brightness of 1000nits with a peak of 1200nits. It packs the latest Apple A15 bionic 5 nanometer chip. This chip provides fast performance and adds to iPhones\' AI capabilities. The GPU has five cores compared to four in the 12 Pro. The  iPhone 13 Pro comes with 6GB of RAM but we know that doesn\'t really matter since it is faster than phones with 12GB of RAM. So enough with the dull specs and lets talk about the actual performance!- Speed and Responsiveness:The iPhone, iPad and MacBook family is well-known for its flawlessness in terms of responsiveness, and this iPhone 13 Pro is no different. Expect a very fast performance that wouldn\'t degrade for years. Apps open fast and all operations happen seamlessly. Although the iOS 15 is relatively a new update, there isn\'t much bugs around, and a couple small bugs highlighted by customers have already been patched.- Battery Life and charging:The iPhone only comes with a lightning cable, so if you never owned an Apple device you may need to get a wall plug. The iPhone only requires 23W load, but it still supports a convenient level of fast charging, making it able to go from 0% to 50% in 30 minutes. I think Apple could have gone way higher in terms of load, and way lower in terms of charging time, but that would equally reduce the shelf life of the battery and makes it degrade quickly, so a sweet middle spot is more convenient for long term owners. A fully charged iPhone 13 Pro would sustain you for the whole day, with around 30% remaining at the end of the day. My test is based on a day of regular surfing, watching videos, taking pictures and videos (like stories and reels), and casual gaming (like candy crush). The battery performance is way better than the 12 Pro in my opinion, and second just to the 13 Pro max.Note: there are phones that go from 0% to 60 or 80% in way less time than the iPhone 13 Pro. As I have said those phones are speculated to degrade the battery life span faster and release a lot of heat, but it is up to you to decide your preferences, especially if you constantly forget to charge your phone at night and you require very fast charging.- Camera Quality and Modes:Over the years, iPhones never possessed the best camera title. Rather, they managed to earn the best round-up camera performance. For instance, there are telephoto lenses better than the iPhone 13 Pro telephoto, and a wide angle that\'s better than the iPhone 13 Pro. however, in my view there is no phone that combines a robust multi-lens performance as good as the iPhone does. If you want a versatile camera, an incredible bokeh effect, a crisp and sharp video with the best stabilisation I ever tried, and an amazing post-production processing and editing, then I am certain no phone can outweigh the current iPhone 13 Pro and Pro max. The quality is simply amazing and the software support accompanying the camera app is what sets this years head of the rest. I advise you to check videos that showcase the camera performance.- Software Support and iOS 15:There are many people out there who don\'t understand why people pay much for iPhones. These people are usually unaware of the seamlessness created by the Apple eco-system. Having an iPhone, iPad, MacBook, and to a lesser extent a watch and earbuds, is the only resort for you to understand how the ecosystem works. I was suspicious a year ago but once into the ecosystem, I am certain that there is no other combination of devices out there that can achieve the same ecosystem.The iOS 15 update, and soon the Mac Monetary update, are expected to take this ecosystem to an even higher league. For instance, and at this particular moment, I can copy the text I am writing on my MacBook and just press paste on my iPad or iPhone and it will paste. I can use my iPad as a secondary screen by pressing a single button. I can create a work routine or a set of actions once I activate Focus Mode, and my devices can even inform people on iMessage that I am busy or not available. I can start a task in one device, work on it somewhere else with another device without the need to login again or try to get access or upload stuff here and there.The ecosystem is indeed a closed system. This can be discouraging for some but it equally creates a chain of cohesive actions that facilitate your daily tasks.I will not talk much about iOS 15 and leave you the pleasure to explore that. Else you can check relevant videos to see the new features.- PrivacyPerhaps one of the main reasons that dragged me towards Apple in general is their emphasis on data protection and privacy. The new Private Relay and Hide my Email features are nothing but evidence on how serious Apple is about privacy. I feel more secure inside this ecosystem and more in control of what I want to share/not share with other parties.- Final Verdict:The final verdict is mixed and conditional. The main thing to say is that the iPhone 13 Pro, like the other flagships in the markets, packs the latest technology available. Whether it is right for you or not depends on how you answer the following:1. Do you own other Apple products? If you already own a MacBook, and iPad, an Apple Watch, or a combination of all then the iPhone would make things even better.2. Do you own an iPhone and you are uncertain about upgrading: If you have an iPhone 11 or lower then I would advise you to upgrade if you can afford the 12 Pro. The major differences would be the battery life, the display, and the cameras. These are MAJOR differences and will make you feel a huge difference. If you own the iPhone 12 Pro I would advise you to not upgrade, unless you really crave the latest technology and cannot live without the new cameras and higher refresh rate. You won\'t feel a MAJOR difference, but the difference will be noticeable.3. Are you switching from Android to iOS? My short answer will be: If you don\'t mind a closed system that would function better if you own other Apple products then definitely go for it. The future of privacy and protection seems better with the iPhone (personal view). Plus, with the iPhone you get loads of software updates and Apple will not discontinue their support after two years like most others do. Switching from Android/Windows to Apple is gradual and starts with one device. I started with one device and now own 4 devices that make my life easier.4. Should you go with the mini, the 13, the 13 Pro or the 13 max? If your current phone is smaller than the iPhone 13 and you hate bulky and big devices then go with the mini. If your priority is having the latest all rounder without necessarily flexing in terms of performance then go with the 13. If you want the most iPhones can offer, you game a lot, or you are into photography like me then go with the 13 Pro. If the 13 Pro looks small in your eye and you want something that falls between a smartphone and tablet in terms of size, along with the highest battery capacity possible then consider the 13 Pro Max. But before you decide on this, think about your budget and whether you can afford your preferred phone or not.5. Should you go for the 12 Pro over the 13 Pro? At this particular time NO. The 12 Pro is still expensive and I wouldn\'t pay that much for it. If you can afford a brand new 12 Pro then save a little more and get a 13 Pro. If you want a 12 Pro wait till January and prices may go lower.6. If you think that the iPhone is expensive then check other brands and you will realise that they are charging the same amount or almost the same amounts without offering the same level of support and updates.I may update this review as I use my phone and discover new stuff. I hope you find this helpful and I hope I managed to assist you in making a decision. I will include samples of pictures taken by my 13 Pro soon, I may also include a video or two.Important: If you read this review and found it helpful you might find my Apple Watch Series 7 review helpful as well. Just click on my profile picture and you will see it as the first review on my profile.', '30 September 2021', 4.7, 5),
(114, 'First new iPhone in four years. Last phone was an iPhone X. This is a HUGE step up. Very happy.', '28 September 2021', 5, 5),
(115, 'Upgraded from 6 plus so you can imagine WOW !', '8 October 2021', 1, 5),
(116, 'Upgraded from iphone 11 which was broke at work and I had to get a new one. No regret with my iphone 13 pro which is faster than 11, good cameras, smooth and solid. Just downside of this phone is not to have c port rather than that is a great phone.', '14 October 2021', 5, 5),
(117, 'First upgrade since I got the XR in 2020 and it feels completely different. The communication between the OS and the New Tech is absolutely seamless and fast with all the camera and phone operating speed.', '13 October 2021', 5, 5),
(118, 'This iPhone is really handsome.The camera offers near perfect perfection and the zoom lens is an improvement this time around.The general functions on the iPhone are more fluid and the colour pixelation is greatly improved.Battery life has also been improved.Buy yourself this phone while you can because this is a real market leading winner from Apple.', '30 October 2021', 5, 5),
(119, 'Upgraded from an iPhone 6s. Massive upgradeBattery lasts for a day.Screen is amazing.Speakers are louder and clearer.Phone is slightly thicker and with square edges can dig in fingers as it’s a bigger phone than the 6s. But a good case will sort this.  Done get this wrong the phone looks amazing so worth the design choiceChose this over the max as you can still use this one handed.Invest in a fast charger as Charing with the old iPhone chargers takes forever. If you charge overnight then no problem but on that rare occasion the battery is low the old charger will feel like an eternity to charge', '26 December 2021', 5, 5),
(120, 'This is the best iPhone I have ever seen. This color is very impressive. And the most powerful long  cameras.', '24 September 2021', 5, 5),
(121, 'Received this phone yesterday. It has a problem with a grey tint on 90% of the screen. Apple advise to return. Amazon refuse to allow me to return until Apple issue a letter of denial, whatever that is. Not sure what to do - - stuck with £1000 phone that doesn’t work and Amazon won’t exchange.Update: went to Apple store, who confirmed that there is a problem and said they would have replaced there and then if I hadn’t bought from Amazon. They did not know what a letter of denial was. Having spoken to a senior Apple engineer, advice was to insist Amazon accept it as a return especially as it’s less than a week old. Phoned  Amazon, very helpful man said he couldn’t action a return as it is a high value item. Am waiting another call….so less than a week, a non working phone and not sure what happens next…But moral is Amazon aren’t good if things go wrong …', '23 February 2022', 5, 5),
(122, 'Best iPhone ever, until the iPhone 14.The camera is the most impressive feature of the new iPhone 13, it\'s just insanely good for non-professional use.I think the cinematic mode is a bit gimmicky, but it\'s fun to play with.', '9 October 2021', 5, 5),
(123, 'لماذا لا يوجد معه ضمان في الكرتونه وما الحل ؟', '25 November 2021', 4.5, 6),
(124, 'حواف الشاشة صغيرة جداالشاشة سريعة جدااا في الفتح و الاغلاق (شبه مبتحملش عند التشغيل)الريموت جديد و صغيرملحوظة الريموت مفيهوش ازرار ارقام فيه زرار واحد يفتح لوحة ع الشاشة للارقاماما عن الصورة و الصوت ممتازين طبعا', '14 January 2022', 4, 6),
(125, 'تطبيق ممتاز', '9 November 2021', 1, 6),
(126, 'الجهاز فوق الممتازالصورة في منتهى النقاءمعالج سريعصوت نقيالريموت المرفق صغير وضعيفلا يوجد حامل', '5 December 2021', 4, 6),
(127, 'جوده عاليه وتوصيل سريع شكرا امازون', '1 December 2021', 5, 6),
(128, 'الشاشه ممتازه و الجوده 4k عاليه جدا و معدل التحديث عاليو معاها ضمان و ريموت كويس مش زي ما بقاي الناس بتقول', '26 December 2021', 5, 6),
(129, 'شاشة ممتازة بكل شئ والاهم انها قيمة مقابل سعر', '18 January 2022', 4, 6),
(130, 'شاشه ممتازه جدا، سامسونج شركه محترمه و تستحق الثقه', '27 November 2021', 5, 6),
(131, 'هل يوجد مثبت جدار لكل جهاز واذا لم يكن ممكن توفيرها عن طريقكم افضل', '4 January 2022', 5, 6),
(132, 'لأني جربته من قبل', '28 November 2021', 5, 6),
(133, 'Good', '8 Mar, 2022', 5, 6),
(134, 'Loved it.', '26 Feb, 2022', 5, 6),
(135, 'good quality ,, arrives in time ,, good package , including Built in reciever ,, lowest price on the market', '15 Sep, 2021', 5, 6),
(136, 'ممتازة', '6 Dec, 2021', 5, 6),
(137, 'نفس الموديل اللي انا طلبته شكراً نون علي المصدقية وشكراً للمندوب المحترم', '29 Nov, 2021', 5, 6),
(138, 'Excellent screen qualityOnly con was that part of the back of the TV was screwed over the screen. Quick fix of unscrewing and adjusting back. Otherwise beautiful product.', '11 November 2021', 4.1, 7),
(139, 'اين الفاتورة الضريبية', '12 December 2021', 5, 7),
(140, 'زباله في منتهه الزباله في التوصيل المنتج اما للامانه المنتج خارج من مكانه صح زي الفل اما بنسبه لشركه الشحن دي اخر شركه ممكن تتعامل معها شركه جوميا احسن منها كتير', '11 December 2021', 1, 7),
(141, 'منتج عالي الجودة ك خامات وصوت نقي جداوالصورة جيدة جدا جدا', '5 December 2021', 5, 7),
(142, 'جيد جدا', '10 December 2021', 1, 7),
(143, 'جيد جدا', '18 January 2022', 1, 7),
(144, 'أل جى اروع وأحسن منتج فى مصر وانا بأستخدم منتجاتها من 15 سنة', '11 March 2022', 5, 7),
(145, 'الشاشة جميلة ولكن الأجمل شركة امازون انه حقا شركة محترمة فى التعامل', '1 February 2022', 5, 7),
(146, 'ممتاز صورة وصوت واداء . وبه كل الوظائف اللي احتاجها ولكن في نظري مشكلة اجدها ان ارجل التليفزيونات ال جي عموما تحتاج لترابزات عريضة جدا ولكن توجد تليفزيونات قاعدتها في الوسط لا تحتاج لقاعدة عريضة.', '23 January 2022', 5, 7),
(147, 'منتج ممتاز جدا وخدمه توصيل ممتازه من امازون وتنصح كل الناس بأقتناء ال جى ال up اى مقاس انصح اى حد يشترى المنتج لو فى مشكله مع الشاشه يتواصل مع التوكيل عن طريق الواتس اب خدمه ممتازه', '6 December 2021', 5, 7),
(148, 'Super tv it’s orginal 🥰🥰', '26 Dec, 2021', 5, 7),
(149, 'Very High Quality Tv! :)', '27 Nov, 2021', 5, 7),
(150, 'Great display quality. Very easy to configure. The airmouse included in the remote is awsome. The only downside is that you cannot install third party apps, only from LG store.', '11 Oct, 2021', 5, 7),
(151, 'ممتازه', '11 Feb, 2022', 5, 7),
(152, 'الشاشة ممتازة والوانها افضل و مختلفة عن الجيل السابق', '8 Jan, 2022', 5, 7),
(153, 'Great value tv with all my apps installed (Netflix, Disney, Prime Video) added film app Rakuten. All the usual other apps and catch up tv channels. Wireless, so a lot of cables removed and only one remote 😊. Easy set up and the smart remote control is a nice edition (description says there was no remote included?).Edge to edge picture with plenty of picture settings for sports and cinema etc.Sound good, but I would recommend upgrading for the full cinema experience, but not vital, only a personal preference.All in all a great buy with a very quick delivery service.', '3 August 2021', 4.6, 7),
(154, 'Great TV for the price! Easy to set up and found Virgin media box, Sony DVD player and Portal without problems. Magic wand remote is excellent and makes navigating settings and menus easy. And Netflix and Amazon prime buttons are a bonus. Sound from TV speakers much better then Samsung tv it replaced. Sound is great using Orbit sound bar. Works with Harmony hub. Very good picture - highly recommended.', '15 July 2021', 5, 7),
(155, 'Our first LED TV (after 15 years of a - good - Viera LCD) is a great success. Superb picture with numerous apps and Freeview Play to keep my wife happy - she records stuff all the time. Sound is fine but TV is connected to an amp (recommended). WIFI connection is strong but it still pays to keep the number of devices using WiFi to a minimum. Bonus: playing music apps on the (analogue) amp\'s speakers from smart phone via Bluetooth on TV.', '4 August 2021', 2, 7),
(156, 'Good TV but I have surround sound so can’t rate its sound.Looks great and picture is good quality. Great remote. Well happy.', '22 September 2021', 5, 7),
(157, 'Excellent quality TV. Great picture quality.Very easy to set up.', '23 September 2021', 5, 7),
(158, 'The picture quality is way below what we expected and what is advertised. We are trying to fix it in settings but if we can’t improve it we will be returning this TV.', '25 August 2021', 5, 7),
(159, 'Great service. Super quality TV for a great price.', '4 September 2021', 5, 7),
(160, 'All as expected for the price.', '14 June 2021', 5, 7),
(161, 'The usual excellence of quality and service from Amazon.', '28 July 2021', 5, 7),
(162, 'Fantastic television. The picture quality is amazing. Would recommend this television.', '12 September 2021', 2, 7),
(163, 'المنتج هاي كوبي لا احد يشتريه جاري الارجاع', '8 December 2021', 3.8, 8),
(164, 'I opened the phone and i didnt find the region i didnt find egypt not middle east and you said its a middle east version so what now i need an answer coz i thing i will return the product', '9 October 2021', 5, 8),
(165, 'ممتاز', '27 October 2021', 1, 8),
(166, 'The product is a amazing', '25 September 2021', 1, 8),
(167, 'بعد طلب الفون بيوم البائع عمل تخفيض ألف جنيه', '6 April 2021', 1, 8),
(168, 'شكرا جدا الموبايل جاي ممتاز ومعه هدايا وتحياتي لكم', '23 December 2020', 5, 8),
(169, 'جميل جدا وسرعة توصيل من سوق المنتج رائع وتغليف جيد جدا واصلي غير مستخدم', '8 March 2021', 5, 8),
(170, 'راىع', '24 February 2021', 5, 8),
(171, 'OrigenalThank you souq', '22 February 2021', 5, 8),
(172, 'سرعة توصيلتغليف ممتازانصح الجميع التعامل مع التاجر', '4 March 2021', 5, 8),
(173, 'Excellent', '12 Oct, 2021', 5, 8),
(174, 'Excellent', '26 Jun, 2021', 5, 8),
(175, '👍🏻👍🏻👍🏻❤️🥰', '10 May, 2021', 5, 8),
(176, 'Satisfied', '10 May, 2021', 5, 8),
(177, 'The best is the best', '5 May, 2021', 5, 8),
(178, 'معتمده طلب الاجهزه من نون ثقه ماراح تندمون ابد 👍🏻', '1 Aug, 2021', 5, 8),
(179, 'ممتاز جدا', '31 Jul, 2021', 5, 8),
(180, 'I’ve bought this iPhone 12 Pro Max on Tuesday, the delivery date should have been between Friday - Monday but I got this the next day.Fast delivery!I’m still testing it but seems good! Exactly like new, battery life is 100%. Face ID seems working!I will update the review for more details!THANK YOU!', '7 October 2021', 4.1, 8),
(181, 'My wife has serious phone envy when she sees the photos I take on my iPhone 12 Pro Max and the way it syncs with my iPad. So, being the loving husband I decided to buy her the same phone, but refurbished to save hundreds of pounds on what I paid for mine new about 9 months ago.I was almost put off by the reviews on here, but decided to buy as I knew I could return the phone if it was damaged in any way.I made the right decision and my wife is delighted. The phone looks like it is new and has 100% battery life. Mega brownie points for me.And the 1 year warranty is fantastic.We just have to see now who can take the best photos with our top of the range iPhones.', '21 January 2022', 5, 8),
(182, 'Cannot fault the quality of the device itself, looks like new! However, the phone comes with a Lighting>USBC cable but a USB A adapter, so that’s not very helpful, could be wrong? The other thing was that the phone came with 0% battery so couldn’t turn it on for a while and I thought something was wrong with it at first as I had it on charge for 30 minutes before it seemed to come into life?!Lastly, delivery - you cannot choose Amazon locker and DPD just left it on the floor outside the house which is pretty crazy considering the cost of it', '28 September 2021', 3, 8),
(183, 'The product description which states: \"No signs of cosmetic damage (scratches, dents, etc.) will be visible when the product is held 30 centimeters away\" turned out be a complete lie. The phone came with 2 very noticeable scratches on its screen, which more on its sides. There is also chip damage on its upper corner. These are all viseable from a metre away in a normally lit room, which become very obvious outside and under room lights. The delivery was fast and reliable so can\'t fault them there.', '25 October 2021', 5, 8),
(184, 'I thought buying a refurbished was not only good for recycling/planet but also getting an up to date phone cheaper seeing as most phones have built in obsolescence now.  Unfortunately the phone I received, although in excellent condition, produced exceptional heat during my use, so much so, I turned it off as I was concerned about it exploding and further consideration that it would catch fire during the night etc.  i contacted the company and was asking did I use it while it was being charged, I queried this as with my previous iPhone I used while being charged without problems.  I was happy to have it repaired providing the battery, if that was the problem, or other parts were Apple accredited but was advised that the parts were not Apple but other manufacturers replication which concerned me once more, I then requested a refund.  So I would suggest to anyone, be careful when purchasing a refurbished phone or just buy a cheaper model if your budget restraint is a consideration.', '28 November 2021', 5, 8),
(185, 'Poor quality reconditioned item', '6 November 2021', 3, 8),
(186, 'Was slightly worried about some negative reviews and risks with getting a refurbished iPhone, but it turned out great. Only negatives are the fact it doesn\'t come in the original box, and the cable is USB-B. The device itself is absolutely spotless, not a single scratch detected after I looked closely for a good 10mn.The battery shows 99% so no complaint here either. Really good experience overall, would definitely recommend.', '3 November 2021', 2, 8),
(187, 'I am really impressed with the value of the phone I received! I was a bit sceptical at first knowing that it was a refurbished iPhone however once I received my package I was overjoyed with what I had been given! The phone looks almost brand new! No scratches on the screen, the sides are in perfect condition and the back is immaculate!! The battery health on the phone is 92% which ofc isn’t perfect but the phone still last well over a day, and I’d say I use my phone moderately to high amount!!I got the iPhone 12 Pro Max Blue 256GB two days after I ordered it! Even though it said it would take about a week!10/10 for this! Very impressed!', '5 December 2021', 1, 8),
(188, 'I Was dubious about spending £700 on a used phone but after receiving this flagship iPhone, I couldn’t be happier. Face recognition works perfectly, battery health is 100…… yes 100%, and the phone itself is near perfect. One tiny scratch on the top edge. That’s it, apart from an even smaller scratch on the screen that I’ll never even notice. I only saw it while I was scrutinising the whole phone. In addition, you get an Apple adapter (unlike with a new iPhone).Amazon renewed from now on for my next iPhone.', '2 February 2022', 1, 8),
(189, 'I\'ve had this product for one week now. Battery came at 89% after a few days usage it went to 88%. But, it still lasts me all day! It\'s a big change for me as I\'ve had an iPhone 8 Plus over the past couple of years. I was quite skeptical about ordering this product but I took the risk and I\'m happy so far! :) Really wanted to buy a iPhone 12 Pro Max outright at a good price and it\'s great that it can be returned within a year!They delivered it within a day. No major scratches on the phone, it was just dirty around the camera lenses and in the mute button. Everything else is brilliant so far, the back and front camera quality is amazing! I have no other complaints, will update this review over the coming months.', '11 February 2022', 5, 8),
(190, 'طلبت لون اسود وبعد ١٠ ايام استلمت purple هل ده طبيعي؟؟؟ ومكتوب عليه استبدال ضمان', '22 November 2021', 4.3, 9),
(191, 'تجربه سيئه الجهاز بايظ بعد استخدام شهر مابيشحنش غير وايرلس', '20 December 2021', 5, 9),
(192, 'Great phone… very good service', '7 October 2021', 1, 9),
(193, 'كما بالوصف', '28 January 2022', 1, 9),
(194, 'ممتاز جدا', '27 October 2021', 1, 9),
(195, 'الجهاز تحفة فنية والتوصيل سريع جدا شكرا سوق وبالنسبه للضمان انا تحققت من سيريال الجهاز علي موقع ابل ولقيت الضمان شغال لمدة سنة، وكمان فيه دعم فني مجاني علي كول سنتر ابل لحد شهر يونيو الجاي.What\'s good about this product:كل حاجه جميله بصراحه فيه،انا جاي من اندرويد وكان فيه شوية صعوبات كده في التعامل بس لما اتعودت بقت تمام.What\'s not so good about this product:حاسس ان تاتش الشاشة تقيل شوية،مش عارف هل ده من السكرينة اللي ركبتها وللا لا', '25 March 2021', 5, 9),
(196, 'ممتاز', '14 March 2021', 5, 9),
(197, 'I love it', '13 November 2020', 5, 9),
(198, 'Original', '16 September 2021', 5, 9),
(199, 'ممتاز وتغليفه محترم وشركه امازون فوق الوصف بجد', '21 February 2022', 5, 9),
(200, 'As described', '22 Apr, 2021', 5, 9),
(201, 'Let me repeat, it didn\'t last 1, single, solitary week.Not 1.It didn\'t last 3 days.It lasted... 2... kinda.Galway through the second it started turning off with no warning.No problem, I\'ll just send it back... nah... Amazon don\'t like that. It\'s been over a month. I\'ve talked to Amazon support more times in that period than I\'d like to admit, more than I have to my grandparents. And they refuse to issue a refund. So, I have paid eight hundred pounds for the oh so enviable opportunity to peruse the Amazon support pages and struggle with their support team.The phone is probably fine but, and I can\'t stress this enough:DO NOT BUY THIS FROM AMAZON!Buy it from someone who accepts in person returns, like Apple or Curry\'s.AVOID AMAZON\'S CUSTOMER SUPPORT AT ALL (and I do mean ALL) COSTS!', '19 March 2021', 4.7, 9),
(202, 'I never write reviews on amazon, this is my first but I felt it was necessary as the iPhone 12 is an expensive product and I had high expectations for it. Undoubtedly Apple will launch and revision but for those of you who are thinking of buying this product, perhaps wait until everyone else who has \"tested\" this product for apple and exposed the bugs have helped refine the next version.Here are the issues I am experiencing:- Phone network reception just drops sporadically and does not restore itself, you need to restart the phone- Copy and paste does not work- The face recognition is not user friendly due to face masks or sunglasses, the thumb reader would be better under the circumstancesIf any of the above is a concern for you, consider something else.', '9 December 2020', 5, 9);
INSERT INTO `reviews` (`review_id`, `Review`, `Date`, `stars`, `product_id`) VALUES
(203, 'I have been an android user since I switched from my iPhone 4 back in 2011. This design really takes me back and I’ve got to admit Apple have done a superb job here.I’ve recently used the pixel 2xl and the pixel 3a and considering google have done a really good job with their own stripped back software, for me it’s nowhere near to Apple.The iPhone 12 feels and looks premium and the iOS is a game changer compared to Android.Personally I prefer to purchase my phones out right than sign up to a 24 month contract. Depending on what sim deal you can find you could save around £400 to £600 over 2 years so it’s always worth checking.Overall it’s a great iPhone and looks fantastic in blue.!', '2 December 2020', 1, 9),
(204, 'The signal drops out constantly when I’m trying to make calls and the internet looses its signal too. Keep needed to restart the phone which for the amount payed it is laughable.', '29 January 2021', 1, 9),
(205, 'This is definitely the best iPhone I\'ve owned and I\'ve had them all since the iPhone 4 great build quality great battery life the screen looks amazing the stereo speakers are great too. The iPhone 12 doesn\'t come with charger or headphones which is a little disappointing but I use a wireless charger anyway so it didn\'t bother me . I usually go with product red but it looked a bit orange this year so got the blue version and I\'m glad I did it looks stunning', '14 November 2020', 2, 9),
(206, 'good', '29 November 2020', 5, 9),
(207, 'Wonderful Phone meeting all my expectations and experience. thank you Amazon for delivering on time - safe and sound', '24 October 2020', 1, 9),
(208, 'Another year, another new iPhone and this time it is really a different from all iPhones before not only because supports 5G or of the new square design, but everything it’s new inside and out and looks and feels promising. Delivery from Amazon top notch only took 2 days. The phone itself works great, connectivity is much better than previous models and battery life is just as before, screen is crisp and colours are great, camera performance is excellent for day and night photos, stereo speakers are definitely the best of all phones I ever used,  they simply deliver immersive sound that matches cinema experience. All in all Best iPhone to date. Negative: well the price is on the higher end but we all know that.', '30 October 2020', 5, 9),
(209, 'Rip off. As has been said before, the lack of a charger is a total scam from Apple. Yes, Apple, you are reducing your carbon footprint and all that, but at the same time you are also making a tonne more revenue from accessory sales. If it was a genuine move, you\'d supply a voucher code entitling buyers to order a charger for free. And the design to include a USB C cable? I mean what wall sockets have USB C? None. Who has a tonne of USB A power adaptors knocking around? Everyone. Simply including a cable that connects the phone to USB A would alleviate this issue, but no Apple in their wisdom assumes USB C is fine.I have  Macbook Pro which is generally fine and a phone could plug into that to charge, but I bought the phone for my teenage son. He\'d never have an previous adaptor to use. I saw the light and switched to Samsung S series phones years ago. So his birthday present was almost useless out of the box - I wasn\'t even offered an upsell to get a charger at time of sale. I anticipate alot of moaning  in the coming days as he slowly starts to realise other short comings of this overpriced phone, but for me the no charger/USB C cable thing is a complete joke. AVOID!', '30 June 2021', 5, 9),
(210, 'Bought this expensive phone, kept freezing. Within 1 month it failed completely and it seems you don’t get a refund but a repair which can take 2 weeks. Had to buy another phone and now have no confidence in the iPhone 12 and would rather have had a refund.', '2 March 2021', 5, 9),
(211, 'رائع', '26 October 2021', 4.3, 10),
(212, 'الضمان سنتينحاسبات العرب سنةأمازون سنتينيعني لا سمح الله خرب قبل سنة تقدر توديه حاسبات العرب ولكن لو خرب بعد اكثر من سنة ما يمديك توديه الوكيل حاسبات العرب توديه لامازون هم يصلحونه', 'Reviewed in Saudi Arabia on 7 July 2021', 5, 10),
(213, 'This iPhone 12 Pro does not seem to be new when trying to register my email address got message from apple that as already to many different email addresses were used on this iPhone I should contact apple customer service on usa', 'Reviewed in Saudi Arabia on 2 June 2021', 4, 10),
(214, 'Awesome Phone with Best Service & best Price but request to you please deliver phone with option of one time password at the time of delivery which is used in amazon India', 'Reviewed in the United Arab Emirates on 1 March 2021', 1, 10),
(215, 'Love the iPhone 12 Pro in gold. Item does not come with an adapter. I purchased it separately & it requires a different adapter from the other IPhone adapters. There is a charging cable provided though.', 'Reviewed in the United Arab Emirates on 3 April 2021', 5, 10),
(216, 'At first I thought this was not FaceTime enabled. However all you need to do is change the region to UK or US and download the FaceTime app and it will work!', 'Reviewed in the United Arab Emirates on 15 August 2021', 4, 10),
(217, 'Heating quickly from the first day I bought itCamera quality below what has been expected', 'Reviewed in the United Arab Emirates on 20 August 2021', 5, 10),
(218, '100٪', 'Reviewed in Saudi Arabia on 10 November 2021', 1, 10),
(219, 'What a great phone! Apple is the leader in the smartphone industry. Period.', 'Reviewed in Saudi Arabia on 20 October 2021', 5, 10),
(220, 'جميل جدا لحد  الان كمل معي شهر  ممتاز جدا', 'Reviewed in Saudi Arabia on 2 August 2021', 5, 10),
(221, 'Excellent', '12 Oct, 2021', 5, 10),
(222, 'Excellent', '26 Jun, 2021', 5, 10),
(223, '👍🏻👍🏻👍🏻❤️🥰', '10 May, 2021', 5, 10),
(224, 'Satisfied', '10 May, 2021', 5, 10),
(225, 'The best is the best', '5 May, 2021', 5, 10),
(226, 'معتمده طلب الاجهزه من نون ثقه ماراح تندمون ابد 👍🏻', '1 Aug, 2021', 5, 10),
(227, 'ممتاز جدا', '31 Jul, 2021', 5, 10),
(228, 'Very disappointed with the quality. Advertised as cleaned and as new but was not. Very dirty and had marks. Customer service was extremely poor too. Would not recommend this seller. What a disappointing experience!!!!', '8 November 2021', 4.2, 10),
(229, 'I was initially unsure about buying a ‘renewed’ iPhone 12 from Amazon and the vendor, Phones Direct uk only had a few ratings but all 100% positive. I went for it and couldn’t be happier (and relived) when it arrived. Quick delivery, well packaged and the phone looked brand new other than not having the protective film on the screen. As it was a ‘renewed’ product I probably spent extra time trying my hardest to find imperfections, tiny scratches etc but couldn’t find a thing, perfect condition. Not sure the plug and charging cable are original but they work as well as my existing apple cable and plug. The quick start guide included is a Phones Direct uk guide rather than an apple one but it was all I needed (the phone does it all for you). Been using the phone for a while and all working as expected. It comes with a 12 month Amazon renewed warranty so still have the same piece of mind as a new phone. Based on my experience, I would buy a renewed product from Phones Direct Uk again.', '23 July 2021', 5, 10),
(230, 'I was hoping that all the bad review of loop mobile were just some angry client, instead I’ve to say that they were absolutely true LOOP MOBILE let me down big times I bought this iPhone 12 Pro that should have been renewed, when instead The description of the product is completely false, was stating that should be an item that is renewed, when instead the item is just used, not even cleaned, it came with the lcd all scratched, not any kind of protection on top, I wasn’t expecting a protection glass on top but at the very least a kind of film on top of the lcd, the phone was all dirty, and the scratches visible from more than not just 30cm you can see them with your eyes closed, customer service very poor, I had to go through amazon customer service to have any kind of help, and even there just a refund, I needed the phone not something that I’ve to send back and revive the money after another week, absolutely unhappy, be careful to do not order fromLoop mobile if you getting a renewed phone, but get it from the other seller, that instead has very very good reviews, do not make my same error guys…!', '16 December 2021', 1, 10),
(231, 'Still appalling value for money, even second hand, they cost mere pounds to make in volume. Price does not reflect intrinsic value, rather what consumers are prepared to pay. Economics of capitalism. Go research.Cameras are below market average, whatever the reassuring advertising says, it\'s just words. All the grand images and videos Apple show in their hype ads are created through software rendering. You can get results like these, and better, from any image source using any editing software, even the free ones. Won\'t be using these for my professional photographic needs, got a 108 megapixel snapper on another brand for that, the difference really does show.Pleased with handset, perfect except for one small mark on bezel. Battery appears okay, but then the phone is only a year old. Some older models I\'ve recently bought (7 and 8 series) needed replacements (easy to do yourself).Will be used as an iPod, not a phone, iTunes is only music player that plays back mix albums without those tiny gaps between tracks, one thing Apple have always got right. On downside, playlists can occasionally cause problems, some won\'t switch off and can only be deleted via PC, others cause track title/band display errors, especially with mp3s not bought through Apple, but this is a minor niggle, gaplesss playback is why I bought this, that\'s probably Apple\'s crowning achievement. When you\'ve gone Android for your phone needs, you don\'t go back.Had to buy the 256 GB model, not the 128, because iOS generates a permanent massive \"cache\" file in use, up to 10gb, which means this chunk of memory storage can\'t be used for user files, it\'s a niggle that\'s been on iPhones since early days and Apple haven\'t rectified it, probably think they don\'t need to, blame it on their customers as usual. It used to be part of the \"system files\" when you check storage use in general settings, now it has its own entry, so at least now you can check how much of your phone\'s memory storage is unavailable. It\'s a huge chunk.', '18 December 2021', 1, 10),
(232, 'There is no way of knowing what you’ll get, be warned!!!Unfortunately I had to return the phone and in doing so, PAID FOR RETURN P&PI returned it because the phone only had 92% batt health when I received it and it went down 1% within 2 days of using itTo me, this was catastrophicI used it for a week but I just couldn’t get over the low batt healthFor £615 I was expecting basically unusedI also did some research (after buying this, doh) and found out that iOS 14 KILLED the 12 Pro battery when it was released and I suspect that the phone I received suffered badly because of thisIn terms of condition- the phone was 99% mint, just 3-4 dot-sized nicks out of the chrome edging but no dents or scratches whatsoeverAmazon and MusicMagpie combined were perfect where the return was concerned but I was pretty narked to pay return p&p', '3 February 2022', 5, 10),
(233, 'Was a wee bit apprehensive about purchasing a renewed phone but glad I did. The warranty gives you peace of mind too. My phone came with 96% battery health and a week or so left on apple’s warranty. Genuinely couldn’t find any scratches or anything on the phone. Thanks!', '1 November 2021', 5, 10),
(234, 'The phone provide by Loop-Mobile, I have received is at best described as fair/good standard. It works fine but the cosmetics are damaged on the upper areas of the metal body all around the phone. The phone also arrived dirty, especially around speaker at the bottom of the phone and around volume controls and the camera lens. All easily cleanable but you’d expect the phone to arrive clean if been through their quality control as described. I have requested a refund. I would add that you should check which company you are ordering from as they don’t all come from same one and I’m sure others will be fine.', '24 November 2021', 1, 10),
(235, 'So I was really reluctant spending a lot of money on a second hand phone, but safe to say I’m very relieved and actually really happy. I’d say if 100% was a brand new phone, I would say 95%. The tiniest of mark on the screen and that’s it. Which I expected more than that with it being second hand!! And battery health is 94%. Again, what I’d expect with it being second hand. So overall, very pleased and luckily for me worth the risk.', '28 October 2021', 3, 10),
(236, 'For a great many years I have managed to avoid buying an iPhone for myself.Finally, I took the plunge buying refurbished to try it out and save some money whilst also helping the environment. I do not regret my purchase whatsoever and have been a happy bunny. However, the only single down side is the battery life is not what was expected but I’m still charging it once per day as usual anyway, so I can live with that.', '6 March 2022', 3, 10),
(237, 'I had iPhone 11 before itI don’t feel what is the difference between themJust really really small things doesn’t worth the money differenceThe screen has a tiny scratch, it hardly noticeableThe charger wasn’t original but it is goodThe device working very well no issuesThe battery life was 93, but went to 90 after few days', '19 January 2022', 3, 10),
(238, 'بطئ جدا ولازم تركب هارد ssd وكمان تزود رامات حوار كبير منصحش حد بيه', '12 December 2021', 3.6, 13),
(239, 'لابتوب ممتاز جدا خفيف وسريع وشيكممتاز للبرامج والالعابتغليف ممتاز وتوصيل في الموعدقد يحتاج كمان رامه 8 و هارد SSD', '29 October 2021', 5, 13),
(240, 'غير مطابق للمواصفات المذكورة', '9 October 2021', 1, 13),
(241, 'ممتاز جدا واشكر امازون على التغليف الاحترافى و الايفاء بمواعيدد التسليم بشكل دقيق وسرعة التوصيل', '9 October 2021', 1, 13),
(242, 'جميل جدا. سريع.', '17 September 2021', 5, 13),
(243, 'الوكيل فى مصر الان ليس ماس ايجيبت بالاضافه ان فى التعليقــات يوجد بها امه يوجد مدخل فيجا وهو ليس موجود  وإنما الموجود هو hdmi', '6 November 2021', 2, 13),
(244, 'for the first look the box was opened before me , after open the laptop the screen have dead pixel and it was take much time to load.this was very bad experience.', '15 March 2022', 5, 13),
(245, 'منتج ممتاز بيشتغل البرامج بكفاءة عالية والجهاز خفيف والشاشة وضوحها عالي وبشكر امازون علي التغليف الاحترافي', '11 September 2021', 5, 13),
(246, 'جهاز جميل وبيشغل بيس 2022 كمان فاق التوقعات ❤️', '13 November 2021', 4, 13),
(247, 'On the photos Windows installed but when the package came it\'s only DOS.Though it was on the title DOS they should indicate that there\'s no Widows Operating System installed. I thought I saved money for buying this product but in the end I ended up wasting more time to get this laptop set up.The product did came in original packaging aside from that it\'s time consuming to get this set up.', 'Reviewed in the United Arab Emirates on 10 September 2021', 1, 13),
(248, 'بعد 9 ايام من الاستخدام الجهاز جيد جدا.طبعا الجهاز ليه عيوب زي ان الشاشه نوعها (TN)و سطوعها قليل.والبطاريه صغيره بالنسبه للابتوب بس انا طوال الوقت لو في البيت بيكون الجهاز على الشاحن و مشغل وضع ال power conservation للبطاريه من برنامج lenovo vantage.و عيب كمان ان السماعات صوتها منخفض.ولكن الجهاز حرفيا احسن ارخص جهاز في سعره و ان في مقابل السلبيات دي هتلاقي الجهاز فيه معالج لغايه دلوقتي ممتاز جدا معايا.انا استخدامي للبرمجه و الجهاز ممتاز في كل البرامج اللى بستخدمها.ان شاء الله خلال الشهور الجايه هضيف ssd و ram 8giga للجهاز علشان تحسن من التجربه اكتر و اكتر.', '11 March 2022', 3.1, 15),
(249, 'لاب توب معقول خامات اقتصادية مش رقم واحد لو هتشترية هات هارد SSDعلشان هتحس بفرق شاسع بس ف المجمل لاب معقول وسط ارتفاع الاسعار ملحوظتين من العيوب1- صوت السماعات واطي2-البطارية بتخلص بسرعة لانها قليلةلو معاك ٧٠٠٠ جنية بظبط هاتة من غير تفكير', '28 November 2021', 5, 15),
(250, 'عيبه الوحيد البطاريه ضعيفه والصوت واطي', '16 November 2021', 3, 15),
(251, 'المعالج 1,2 والاعلان 3,4 ..', '9 December 2021', 5, 15),
(252, 'امكانياتة دون المستوى', '27 December 2021', 3, 15),
(253, 'عيبه الشاشه فقط ف الرؤيه غير ذالك ف هو ممتاز', '5 March 2022', 3, 15),
(254, 'حلو بالنسبة  لسعره', '30 December 2021', 1, 15),
(255, 'ما نوع الشاشه؟ ونوع الضمان؟ وهل يوجد شنطة معه؟', '17 December 2021', 1, 15),
(256, 'الجهاز ممتاز وامكانياته عالية، ولكن نسخة اللينكس غير شائعة الاستخدام، مما اضطرني لمسحها وتحميل ويندوز', '7 September 2021', 2.8, 16),
(257, 'اعتماد شركة ديل على نظام أوبونتو قرار موفق جدا، لأنه من أفضل اصدارات لينكس و يحتوي على العديد من البرمجيات الاحترافية بدون تحميل المستخدم لتكاليف إضافية.الجهاز مناسب جدا لطلاب الجامعة من حيث السعر و الأداء العالي السرعة و كذلك للمبرمجين.أتمنى أن تستمر شركة ديل في انتاج مثل هذه الأجهزة في المستقبل.', '11 January 2022', 4, 16),
(258, 'اين الضمان المفروض الجهاز جاي معاه ضمان سنه فين ؟', '27 November 2021', 1, 16),
(259, 'منتج سئ جدا وجهاز ردئ من اول الخامات اللي الاستعمال', '26 September 2021', 4, 16),
(260, 'Tried Both Windows 10 & 11, the performance of the laptop is awful and cannot be considered as a working laptop device at all.', '3 December 2021', 5, 16),
(261, 'الجهاز بطيئ جدا مابيفتحش بسرعة عاوز حل', '15 January 2022', 1, 16),
(262, 'حجم ولون حلوين إنما بطي والبطارية مش بتكمل ساعتين متواصله', '15 January 2022', 1, 16),
(263, 'اللاب اسوء ما يكون وفوق كل دا في مشكلة في زر البور', '6 March 2022', 1, 16),
(264, 'كل بائع لديه موديل مختلف في المواصفات. ولذلك الاجابات عن اسئلة العملاء متضاربة.', '28 December 2021', 1, 16),
(265, 'لاب حلو جدا وشكله شيك وسلس ومريح بس مشكلته الوحيدة انه كان جاي ب نسخة لينكس مش ويندوزمتاح مكان لأضافة هارد ssd من نوعية m.2 ومتاح مكان اضافي لرام', '27 September 2021', 3, 16),
(266, 'Perfect for turning any old hdmi monitor/TV into a smart android TV plenty fast for any use and great bluetooth remote and supports Netflix and Amazon Prime video, simply great! for the price.', '28 October 2021', 4.5, 17),
(267, 'يعرض كيدا من التلفون فعلا جيد مع الافلام يو تيوب ونت فليكس غيرها ولكن ليس كل المواقع يقبل بثها', '26 October 2021', 5, 17),
(268, 'I dont know i think its good but i bought it amd netflix wasn’t opening and there was problems in the start up and i sent it to the repair warranty within 2 days and from 16 nov. it still didn’t arrive back 🙃🙃', '18 November 2021', 3, 17),
(269, 'Crashes/hangs every now-n-then (once or twice a week for daily usage)So far so good, except it should have provided:1- Any Led Indicator.... for power on/off2- 2 or 3 USB ports (For Gamepads or wireless controllers', '30 January 2022', 5, 17),
(270, 'The product (sold by Amazon itself), is original, sealed, and has a local warranty by AlSafy, it works perfectly well as described, watch a review for the product online to find out if it is suitable for you, it suits my needs from streaming content, light gaming, and the Chromecast Ultra built-in which is a very handy feature  to cast my phone directly to the TV', '19 January 2022', 3, 17),
(271, 'غير جهاز التلفزيون لسمارات و كمان بيقبل محاكي العاب بلاي ستيشن و بيتوصل بدرعات التحكم بالبلوتوث غير برامج الافلام و الموسيقي و القراءن', '11 December 2021', 2, 17),
(272, 'I want a receipt for this product it is not workig and I couldn’t fix it at xiamo without receipt', '14 November 2021', 4, 17),
(273, 'It takes time to set up at first but once you get it working its very good for what it costs. I recommend installing the update for the os as well.', '25 January 2022', 5, 17),
(274, 'it\'s good and working but kinda hot after an hour of use and it\'s now working with WE routers try to connect them through (hot spot) from your phone works smoothly after that it support (Watch it) and (shahed) .nice product', '7 March 2022', 5, 17),
(275, 'Very easy to use, plug in, set up and download all the apps u want just like with a regular smart tv, it supports shahid, watch it and osn streaming app as well.', '1 March 2022', 1, 17),
(276, 'أعتقد أن الموبايل لايحقق طموحات المستهلكالوان الشاشه فاتحه جداا', '13 November 2021', 4.2, 18),
(277, 'ممتاز', '19 January 2022', 3, 18),
(278, 'الموبايل تحفة فنية .. جميل وشيك ووزنه خفيف ومفيش موبايل حاليا بنفس شياكته واناقتهالشبكات قويةوالبصمة سريعة .. والاداء طلقة والكاميرات صورتها مليانة تفاصيلكل حاجة فيه فوق الممتازةبيجي في باكدج جواها علبتينعلبة موبايلوعلبة باند ٦ من شاومي هديةوده شيء ممتاز .. الباند لوحدها ب٩٠٠جوصلني تاني يوم .. شحن امازون الخطير طبعا', '10 March 2022', 5, 18),
(279, 'ممتاز الموبيل متبرشم ومعاه الساعه متبرشمه انصح الجميع بالبائع', '29 December 2021', 5, 18),
(280, 'احسن وافضل تاجر اتعاملت معاه في كل تجاربي اونلاين جاالي الموبايل والساعه هديه وافضل سعر', '23 March 2022', 5, 18),
(281, 'Recibí el producto y hasta el momento funciona muy bien, el pequeño gran detalle es que no me enviaron el color que yo pedí y como me urgía el equipo no hice la devolución, el vendedor debe prestar más atención a ese detalle.', 'Reviewed in Mexico on 3 March 2022', 5, 18),
(282, 'Very nice phone,slim,light,nice display,fast.Overall best.', 'Reviewed in the United Arab Emirates on 6 December 2021', 3, 18),
(283, 'Me llego en el tiempo indicado, totalmente cerrado.Pero el Cargador no sirve para México.Tendré que  conseguir el adaptador.', 'Reviewed in Mexico on 22 February 2022', 5, 18),
(284, 'I purchased this phone and it was supposed to come with earphone but there where no earphones in the box. I am highly disappointed in this. Please respond', 'Reviewed in the United Arab Emirates on 3 December 2021', 1, 18),
(285, 'Solo no agarra algunos filtros en algunas redes sociales. Funciona bien', 'Reviewed in Mexico on 19 March 2022', 1, 18),
(286, 'ليس به كارت الخدش الهدية', '7 February 2022', 4.4, 19),
(287, 'بصراحه سوء جوده الكاميرات جداجدا للأسف اسواء جوده شوفتها ف موبيل في نفس الفئه السعريه بالرغم انها ٥٠ ميجا بيكسلتحس انها ٨ ميجا والسيلفي مفيش صوره اساساودايما ينهج ويعطي رساله عدم استجابهللأسف تجربه سيئه لا انصح ابدا بيه', '23 February 2022', 4, 19),
(288, 'شاشة اموليد بيلونير 90 هيرتزبروسيسور سناب دراجون', '7 February 2022', 1, 19),
(289, 'I rarely write reviews. But I  prefer to share my experience about this great product, really an excellent performance compared to other products with the price range, it deserves to purchase it. I highly recommend this product!', '4 March 2022', 4, 19),
(290, 'المنتج ممتاز لكن لا يوجد معاه كارت الخدش الهديه', '17 February 2022', 1, 19),
(291, 'منتج رائع وخدمة توصيل ممتازه جدا', '15 February 2022', 4, 19),
(292, 'جيد جدا فى الاستخدامالصوت أكثر من رائعألوان الشاشة فائقة الدقة', '26 February 2022', 5, 19),
(293, 'الهاتف جيد جدا وكنت اتمني وجود فاتورة اوضمان مع الهاتف', '15 March 2022', 5, 19),
(294, 'شكراً امازون', '12 March 2022', 5, 19),
(295, 'منتج  ممتاز', '2 March 2022', 4, 19),
(296, 'الصوت كان محتاج يعلي عن كدا شويةاداء المايك مش احسن حاجة', '2 January 2022', 4.3, 20),
(297, 'المشكلة الوحيدة إن ملهاش ابلكيشن رسمي للتحكم فيها', '18 February 2022', 2, 20),
(298, 'Los mejores auriculares que he tenido y llevo probados unos cuantos. Un sonido excelente, muy limpio y equilibrado, buenos graves y buen volumen. La cancelación de ruido es sencillamente espectacular. Encajan en el oído de maravilla, son cómodos y notas que van bien agarrados. La función táctil y sincronización perfectas. Cuando abres la tapa y la dejas abierta te sale un mensaje en la pantalla del móvil diciéndote la batería de cada auricular y de la base de carga. Son grisáceos plateado. Un pasada que espero que dure mucho.', 'Reviewed in Spain on 11 January 2022', 4, 20),
(299, 'Ottime cuffie!Molto performanti e con molte funzioni interessanti, definitivamente alla pari con modelli di fascia superiore.Addirittura, risulta migliore dal punto di vista della ANC rispetto alle mie Galaxy Buds Pro, oltre che per la multi-point connection (che nelle buds funziona solo fra dispositivi Galaxy)La qualità dell\'audio è molto buona, non 10/10, ma un bel 8.5/10 glielo darei, assolutamente soddisfacente nell\'ascoltare musica.Consiglio al 100%', 'Reviewed in Italy on 14 February 2022', 5, 20),
(300, 'He tenido bastantes auriculares de este tipo, aunque a precios más económicos ya que tengo tendencia a la perdida de los mismos con facilidad.Ya que tengo un móvil Xiaomi pensé que serían perfectos, y no me equivoqué, así que pasó a describirlos.El tamaño de la caja y auriculares es muy reducido, siendo estos últimos muy cómodos de llevar con una muy buena sujeción.Es reseñable que llevándolos bastante tiempo no molestan nada.Apartado de instalación, si tienes un movil Xiaomi con solo abrir la tapa de los auriculares se instalan inmediatamente, siempre que tengas el bluetooth activado, y así será siempre de rápido, además puedes emparejar lo simultáneamente con otro dispositivo algo que veo muy práctico cuando trabajo con el portatil y me entran llamadas, es perfecto.En sonido u cobertura cumple muy bien respecto a la distancia, pudiendo moverme con soltura por diferentes espacios de la casa y poner mucha pared de por medio.Y en cuanto al sonido que no es su mayor fuerte es bastante bueno, con graves marcados y buena calidad de agudos.La calidad que tienen y el precio que se paga por ellos es sin ningún tipo de duda lo que hace que estos Buds 3 pro. una opción más que interesante.', 'Reviewed in Spain on 6 March 2022', 5, 20),
(301, 'Voy a hacer objetivo a pesar de ni molestia con estos cascos. La verdad, que el sonido que tiene es muy bueno, la cancelación de ruido es muy buena, son muy bonitos y su batería dura bastante. Pero es que ya son DOS de estos, exactamente iguales que dejan de funcionar. Los primeros se le bajó el volumen y se escuchaban horrible. Así que los regresé, los segundos. Solo me han durado dos días y ya el auricular izquierdo dejó de escucharse y ya no se vinculan como antes. Es que es adsurdo ya.... Bonitos, se escuchan bien, pero te dura todo lo guay dos días. Y el caso es que me gustan mucho..! Que rabia', 'Reviewed in Spain on 13 March 2022', 5, 20),
(302, 'Buenos cascos, lo único que por temas de normativa europea se escuchan muy bajos, pero si cambias la región del móvil a andorra o marruecos se escuchan perfectos con una media de 4 horas de batera en cada auricular a volumen máximo, buena cancelación de ruido, el tono gris mate se ensucia bastante. 8/10', 'Reviewed in Spain on 3 February 2022', 1, 20),
(303, 'Auricolari eccellenti, al prezzo di un prodotto di fascia media ma con caratteristiche e qualità di fascia più alta, sotto ogni punto di vista: costruzione, audio, funzionalità, autonomia. Sebbene siano universali, sono particolarmente indicate per utenti Xiaomi, grazie al centro di controllo nativo della MIUI, senza bisogno di app aggiuntive. Grazie al bluetooth 5.2 e alla funzione multipoint, li uso contemporaneamente su Xiaomi Mi 11 con MIUI 13 e Android 12 e MacBook Pro M1 2020, senza alcun conflitto e mantenendo le gestures impostate. Best buy assoluto.', 'Reviewed in Italy on 23 March 2022', 4, 20),
(304, 'Me gusta el precio,el sonido,como se adapta a mi oído,la carga y el aislamiento acustico junto a la opción plana de escucha me parece buena compra.Se sincronizo a mi teléfono con gran facilidad .los volvería a comprar?  Pues Si', 'Reviewed in Spain on 5 January 2022', 5, 20),
(305, 'Ottimi per utilizzo in ambito lavorativo (soprattutto quando si usa per le chiamate in Smart Working).In questa fascia di prezzo sono gli unici ad offrire il collegamento multipoint (connessione contemporanea Portatile + Smartphone) normalmente bisogna sborsare oltre cento euro.Connessione stabile e cristallina grazie al protocollo Bluetooth 5.2 (collegati ad iphone funzionano anche a lunga distanza).Da migliorare forse l\'estetica un pò anonima.', 'Reviewed in Italy on 18 March 2022', 5, 20),
(306, 'طلبت كاميرتين من نفس الموديل MJSXJ05CMتم ارسال منتج واحد من موديل MJSXJ05CM ومنتج تاني موديلMJSXJ10CMمنتجين مختلفين تماما', '29 December 2021', 3.9, 21),
(307, 'كاميرا رائعه وسهلة الاستخدام  وعمليه أنصح بشرائها', '19 November 2021', 5, 21),
(308, 'عالميه', '24 March 2022', 1, 21),
(309, 'Good picture and night mode', '3 February 2022', 1, 21),
(310, 'Don’t forget buying  memory card', '21 March 2022', 5, 21),
(311, 'V good', '27 January 2022', 5, 21),
(312, 'Pour ceux qui sont perdu concernant le stockage des vidéos je vous explique. Si vous ne mettez pas de carte micro SD et que vous activer la détection de mouvements un enregistrement ce declanchera. La vidéo sera stocker dans le cloud gratuitement. Par contre la vidéo dur environ 5 secondes. Je vous conseille donc d\'investir dans une micro SD afin de filmer et d\'enregistrer 24h/24. L\'image est d\'une qualité impressionnante et l\'application est très bien faite. Cependant il m\'arrive d\'avoir des difficultés à accéder à la caméra via l\'application. Je trouve aussi que xiaomi pourrait fournir un adaptateur secteur avec la caméra. Si mon avis est utile n\'hésitez pas à cliquer sur utile', 'Reviewed in France on 26 January 2020', 5, 21),
(313, 'Here are the things I like about this product:1. The structure is made of high quality materials.2. Camera image and video  quality is top notch.3. The 360 degrees feature is awesome. This is the most important part of this camera.4. The SD Card slot was hidden in an excellent position to avoid theft and bridge of data.5. Easy to install and the App is user friendly.6. Easy to share for several devices.7. Many options to choose for videos and photos that best fit your preference.8. The audio quality and night vision rocks!9. The calling feature amazes me, it’s typically talking in real time without any delay.NEGATIVE SIDE:1. Storage should be more to max more than 64gb2. It can easily be reset by anyone. Doesn’t have enough security on the unit itself. No lock features that once accessed by authorized person, it can never be used by anyone again.OVERALL:I will buy more of this and share my experience with this product to my friends and family. Thank you seller!', 'Reviewed in the United Arab Emirates on 7 August 2019', 5, 21),
(314, 'Esta es la segunda cámara que compro de este tipo y me parecen geniales por diferentes razones, a continuación mis pros y cons.Pros1. Muy sencilla de instalar, la estas utilizando en menos de 5 min2. Fácil integración a asistentes inteligentes (Yo utilizo Google home y cero problemas)3. Vision 360 grados, es muy útiles porque con una sola cámara puedes abarcar mas area4. Muy silenciosa al momento de girar la cámara, ideal como monitor de bebe5. El audio dos vias funciona perfecto, cero distorsiones de voz y audio y prácticamente sin retrasos6. La cámara se ve fabricada con buen material7. Es 1080P así que tiene una calidad de video muy buena8. La función de vigilancia doméstica funciona muuuy bien, detecta cualquier movimiento dentro de la habitación donde este instaladaContras:1. No tiene mucho zoom, prácticamente nada2. No la puedes conectar a una red 5.0 Ghz3. No trae el “cuadrito” para enchufarse a la energía eléctrica así que si no tienes uno pues considera que es un gasto extra4. Lo que me lleva a este punto, no cualquier “cuadrito” funciona, necesitas uno de 5V y 2.0 Amp para que se considere uno menor a eso no funcionaráEn general por el precio es excelente la compré en oferta ($799.00 mxn) y compraré mas para cubrir toda mi casa, además la marca es excelente y con buena garantíaPorque entonces 4 estrellas?, la cámara venia con un par de rayones en la parte negra encima de la camara (ver foto), no afecta en su funcionamiento así que no la regresaré pero deben poner atención a estos detalles', 'Reviewed in Mexico on 13 September 2020', 5, 21),
(315, 'K so u know the drill by now this is a cheap camera that can monitor ur home, pets or kids. nothing fancy, does the job. problem it comes with USB cable but NO POWER PLUG. why? go figure. Security boils down to ur wifi (2.4 Ghz no 5Ghz) , SD card max capacity is 64 GB which is kinda meh - i don\'t use 2 way communication (i tried it is average) night mode is not bad. last but not least the motion detection is garbage.I set the camera to high sensitivity and low sensitivity directing the camera to a CORNER in my cats Bathroom (their litter box) the camera regardless of motion records every minute by the minute a video of 10 sec. WHY? who knows. oh yeah and i can assure u i have no ghosts triggering the motion. hope this is fixed cuz all i need is to monitor my cats going to the loo nothing more nothing less (and it is NOT doing what it is supposed to do). I had an unbranded Chinese one that i gave as a gift to someone - same quality of everything but the best part of the unbranded one was it triggered motion detection correctly. 1/2 as expensive as this cam. didn\'t have time to connect to the cloud nor my PC. will update u guys once i do one or the other or bothUPDATE: NAS doesn\'t work and NO u can\'t connect to ur PC.UPDATE Nov.26,2019: NAS now works - & to be able to view on ur PC u need to install an android Emulator such as Nox Player or Bluestacks', 'Reviewed in the United Arab Emirates on 19 September 2019', 4, 21),
(316, 'موبايل زي الزفت وفي كل مرة ارجع الفون يجيلي بنفس العيب عيبه أنه لوفصل الفون شحن مش بيشحن نهاااااااائي وبجد انا بقول للي بيفكر يجيبه متجبوووووووش', '23 October 2021', 4.4, 22),
(317, 'موبايل سيء من البائع لا يعمل', '29 September 2021', 5, 22),
(318, 'الهاتف وصلني لا يقبل الشحن', '15 October 2021', 1, 22),
(319, 'منتجات شاومى لا يعلى عليها ....حتى ارخص منتجالتسليم تم قبل معاده... افضل شركة اتعاملت معاها لحد دلوقتى امازون ومن قبلها سوق .... شكرا لكم على الخدمة المميزة', '21 September 2021', 1, 22),
(320, 'الموبايل كتير بيهنج و ده انا كنت لسه بشغله اول مرة', '21 October 2021', 1, 22),
(321, 'الموبايل تم فتحه وعند الشحن لم يقم بالشحن ولا يعمل ( اعتقد بأنه عيب صناعه )', '18 October 2021', 1, 22),
(322, 'موبايل جميل جدامبيسخنش وسريعلكن جاي من غير ضمان', '7 September 2021', 5, 22),
(323, 'تم شراؤها يوم28/9/2021 جيد جداً حتى الآن شاشه كبيره وذاكرة جيده وسريع يتم استخدامه فقط واتس والبحث فى جوجل والكاميرا ليست سيئه .', '9 October 2021', 3, 22),
(324, 'For the amount of money to buy this phone, you get a lot. Its fast and has every app you need! The only thing is that the memory cannot be expanded.  But I am happy with the phone!', '21 November 2021', 1, 22),
(325, 'مناسب جدأ للاستعمال المتوسط و العملى لكن مش فى الالعاب', '14 September 2021', 5, 22),
(326, 'The perfect combination of specifications as of 2021, mix them together, and you get Xiaomi 11 Lite. I\'d have written 30 paragraphs of why I like this phone if I wasn\'t so lazy-minded. It\'s just awesome at everything and the band is also something else rather than your typical health monitor.', '14 November 2021', 4.6, 23),
(327, 'تم إستلام الشحنه بحاله ممتازه وكما بالمواصفات المطلوبه وقبل الميعاد المحدد والمفاجئه السعيده الباند مي 6 الهديه الغير متوقعه شكرا شاومي وشكرا أمازون علي الخدمة والمصداقيه والسعرالمناسب و حسن التعامل', '14 March 2022', 5, 23),
(328, 'التليفون شكله فخم ورفيع جدا فا مريح في الايدالشاشة حلوة و الكاميرا كويسة مش الافضل زي المنافسين بس ممتازةالتليفون جه معاه mi band 6 واحب اشكر شاومي عليها لاني مكنتش متوقعها تيجي بعد كل الفتره دي', '25 March 2022', 4, 23),
(329, 'الهاتف ممتاز جدا جدا. شكراً امازون على التوصيل السريع. وشكرا على الهدية الجميلة الغير متوقعة Xiaomi mi band 6', '25 March 2022', 5, 23),
(330, 'Produto em ótimo estado, lacrado, original e versão global. Comprei pelo vendedor Feira Net, ele emitiu a NFe conforme solicitação. Top!!', 'Reviewed in Brazil on 30 November 2021', 5, 23),
(331, 'Produto atendeu as expectativas no design e nas configurações. Importante ressaltar que o produto chegou dentro do prazo.Redomendo.', 'Reviewed in Brazil on 28 November 2021', 5, 23),
(332, 'O Mi 11 chegou antes do prazo e está atendendo totalmente as expectativas, aparelho fino e com boa ergonomia, ótimo som e com um volume que surpreendeu, roda todos os aplicativos sem engasgos, recomendo.', 'Reviewed in Brazil on 26 December 2021', 5, 23),
(333, 'O excelente e bom, só que o carregador veio sem utilidade alguma, até pensei em devolver o mesmo mais tinha colocado película anti queda na câmera e na tela principal, mais se não tivesse colocado devolveria com certeza, ao entrar em contato com o vendedor ele pediu para comprar outro carregador para o telefone, e mole, pagar caro num aparelho que vem com falta do equipamento principal, não recomendo a compra,', 'Reviewed in Brazil on 26 February 2022', 5, 23),
(334, 'Aparelho muito bom, mas veio com carregador padrão reino unido sem adaptador, no anuncio não informava que se tratava desse tipo de tomada', 'Reviewed in Brazil on 19 February 2022', 3, 23),
(335, 'Overall satisfied with the Xiaomi 11 t lite 5G NE. Super clarity display and sound. Light weight. Camera picture Quality is awesome. Fast processor and mi interface is looking good. And Premium design and build quality.Con\'s - Weak battery draining , need to charge the phone 2 times in a day at the normal usage.Overheating sometimes, it\'s happens mainly when using camera. Hope May it will be sort it out by the Xiaomi in upcoming OTA update.', 'Reviewed in the United Arab Emirates on 20 December 2021', 4, 23),
(336, 'لسه مش عارف', '28 September 2021', 4.4, 24),
(337, 'ممتازة جدا و اول مرة اشوف طابعة بتطبع فيديو', '2 December 2021', 1, 24),
(338, 'Hay alguna que no me gusta cómo salen los colores otras están bien', 'Reviewed in Spain on 15 November 2020', 5, 24),
(339, 'Je donne sans hésitation 5 étoiles à ce produit. L\'imprimante est livrée avec un mode d\'emploi en français, contenant un QR code pour télécharger l\'application MiHome.Un fois l\'appli installée, elle est simple et intuitive, et également en français. L\'imprimante se connecte immédiatement au smartphone.La machine n\'utilise que trois couleurs (cyan, magenta et jaune) alors que les imprimantes classiques utilisent en plus du noir. De ce fait, les couleurs sont moins prononcées. La définition n\'est que de 300 dpi, mais cela reste largement suffisant.En conséquence, il ne faut pas espérer des photos de haute qualité. Ce n\'est d\'ailleurs pas ce que l\'on doit en attendre. Mais je dois dire que les tirages sont plus que corrects.L\'appli propose également quelques fonctions de correction d\'images, tel que recadrage, ajout d\'une bordure, ajustement des couleurs. Très basiques, mais suffisantes pour l\'usage auquel la machine est destinée.En conclusion, il s\'agit d\'un objet ludique et convivial, pour partager entre amis et en famille des images souvenirs. J\'ai hâte d\'offrir les premières photos à mes petits enfants !J\'ai juste rencontré un souci. Après avoir rechargé la machine avec le papier que j\'avais commandé en plus, en laissant la feuille orange de calibrage qui était dans le paquet, mes photos sont sorties avec une petite bordure blanche à droite. J\'ai du repasser la feuille de calibrage livrée d\'origine avec l\'imprimante et tout est rentré dans l\'ordre. Donc, conservez soigneusement cette petite carte orange, et n\'utilisez que celle ci pour calibrer.', 'Reviewed in France on 30 January 2021', 4, 24),
(340, 'Regalata a mio figlio per farsi i selfie con le amiche, estrarre dalla tasca la stampante, vedere le tipe affascinate durante la stampa (una decina di secondi) e regalar loro la foto. Foto adesive che appiccicano dove vogliono. Ottima anche la qualita\' di stampa. La tecnologia Zink (zero ink) non necessita di manutenzione o inchiostri vari. Richiede la carta originale di Xiaomi, le atre hanno colori sbiaditi. All\'interno della stampantina ci stanno 10 fogli per volta. Importante lasciare il cartoncino arancione col codice a barre rivolto verso il basso, cosi\' come confezionato: alla prima stampa uscira\' il cartoncino, la stampante apprende il numero di fogli e subito dopo la stampa della foto. Consigliatissima!', 'Reviewed in Italy on 30 December 2020', 5, 24),
(341, 'Después de ver varios modelos de impresoras portátiles, me decanté por esta. Una de las razones era porque no necesitabas cartuchos de impresora sino, solo el papel de la impresora (que es bastante asequible), ves reviews ves que la calidad es aceptable, ves las innumerables funciones que tiene, te seduce y decides a comprarlo.Después de 3 meses de uso solo puedo decir que no la recomiendo.Los colores no se corresponden en casi nada con las fotografías que imprimes, siendo los azules y grises los más perjudicados.No sé ve bonito, da igual si le pones filtros o dejas la imagen virgen, no hay forma de que se aproxime a lo que quieres imprimir, queda todo como si hubiesen pasado años desde que sacaste la fotografía.Normalmente, no decepcionan y es buena la idea pero queda mucho para que sea algo verdaderamente aprovechable.', 'Reviewed in Spain on 11 June 2021', 5, 24),
(342, 'Der Drucker kam heute an. Ziemlich flott, wie ich finde. Ich habe ihn auch gleich mit meiner App (ich hatte die Mi-App bereits auf dem Handy) verbunden und die Installation klappte problemlos und auf Anhieb.Also Papier eingelegt und gleich mal einen Probeausdruck gemacht. Hmm...Das Ergebnis überzeugte mich nicht so wirklich...Also habe ich mir eine Landschaftsaufnahme herausgesucht und den Druck wiederholt (siehe hochgeladene Fotos; links das Originalbild, rechts der Druck).Dass ich bei einem transportablen Fotodrucker Abstriche machen sollte, war mir von vornherein klar, aber das Ergebnis der beiden Probedrucke überzeugt mich so gar nicht. Das Passbild, das ich gedruckt hatte, ist von oben bis unten rosa angehaucht (das möchte ich hier aber nicht hochladen). Die Landschaftsaufnahme stellt gar keine Bildtiefe mehr dar (wie das Passfoto übrigens auch). Der Druck wirkt platt, die grünen Flächen im Felsen sehen aus wie mit einem Pinsel aufgetupft. Und egal, wie sich die Farben bei einem solchen Drucker verändern, sollte es doch nicht anschließend blaue Wolken geben. Alles in allem überzeugt mich der kleine Drucker so gar nicht. Der Preis ist nicht überdimensioniert und hätte auch bei einer geringeren Druckqualität ein angemessenes Preis-Leitungsverhältnis dargestellt. Aber für eine solche Qualität ist der Preis definitiv zu hoch. Ich habe noch mit mir gehadert, aber während ich diese Rezession schreibe, habe ich mich entschlossen, das Gerät (schweren Herzens) zurückzuschicken. Schade...Das Gerät selbst bekommt von mir mit Hängen und Würgen einen Stern, dadurch rutscht auch das Preis-Leistungsverhältnis in den Keller. Den zweiten Stern teilen sich die schnelle Lieferung sowie die problemlose Installation des kleinen Druckers.', 'Reviewed in Germany on 6 August 2021', 2, 24),
(343, 'Encore un problème majeur éthique chez Xiaomi ! Pour pouvoir connecter l\'imprimante il faut télécharger une application Xiaomi, ok pas de problème. Je trouve cependant étonnant que la connexion bluetooth ait refusé de fonctionner tant que je n\'avais pas accepté d\'activer la géolocalisation ! Xiaomi est connu pour un traitement douteux des données utilisateurs et cette pratique ne rassure pas. Avant qu\'on me parle de compatibilité avec mon téléphone : je possède un téléphone Xiaomi.Vis-à-vis de l\'imprimante, la qualité d\'impression est très moyenne. L\'imprimante jaunit les photos. Bref, ça dépanne pour mettre des photos dans le portefeuille, guère plus.', 'Reviewed in France on 27 April 2021', 2, 24),
(344, 'Lt. Testberichten hatte der Drucker eine eigene App, mit der man recht gute Bilder erzeugen konnte.Daraufhin habe ich das Teil bestellt und als Geburtstagsgeschenk übergeben.Der TagX endete finster: Installation gemäß mitgelieferter Anleitung funktionierte nicht, Jugend forscht ergab, dass der der Drucker jetzt nur noch mit der miHome App läuft.Also eine App, die man wirklich braucht: Zugriff auf alle Daten des Telefons, push Nachrichten vom Hersteller und eben so alles, was ein Drucker haben muss. Zugriff auf den Erstgeborenen habe ich noch nicht gefunden, ist aber bestimmt auch dabei.So ist das, wenn Creative und BWLer am Produkt schrauben...Muss mal schauen, inwieweit ich das gebändigt bekomme, ggf. geht das Teil trotz Frust des Geburtstagskindes zurück.', 'Reviewed in Germany on 16 August 2021', 2, 24),
(345, 'Buen producto puedes imprimir fotos que al escanearlas con la cámara reproducen videos.  Me gustó que trae un paquete de papel Zink de 20 hojas ya que pensé que solo sería la impresora.Solo al configurarla tuve que cambiar mi región a España por qué no aparece la impresora en la región de México.', 'Reviewed in Mexico on 8 January 2021', 1, 24),
(346, 'هذا ليس منتج شاومي الأصلي بل هو تقليد ولا انصح به', '20 September 2021', 4, 26),
(347, 'السوار ليس شاومي، جودته رديئة جدا والمنتج الذي جائني لا يعمل', '11 September 2021', 5, 26),
(348, 'منتج سيء جداا انصح بعدم شرائها ولا تستحق حتي نجمة وغير أصلية', '16 September 2021', 1, 26),
(349, 'منتج غير اصلي توقف عن العمل بعد ١٠ ايام', '4 October 2021', 1, 26),
(350, 'The watch is super accurate and it is the original global version, works just fine and the battery last for 5 days average. totally worth the money.', '30 December 2021', 1, 26),
(351, 'شكرا للبائع امازون المنتج ممتاز مقفول قفل المصنع واصلى ماشاء الله والتغليف كان كويس والباند تحت التجربة لكن كنظرة مبدئية الشاشة ممتازة والبطارية جبارة وتدعم اللغة العربية بعد تحديث الباند هتدعمها بالكامل بالاضافة للميزات اخرى كتيرةشكرا مرة اخرى amazon eg', '23 February 2022', 1, 26),
(352, 'I got exactly the product I ordered, packaging is perfect and the quality is amazing.With the new updates it now supports Arabic and many other languages. In my opinion it\'s the best smart band out there in that price range. Great value for money!', '14 September 2021', 1, 26),
(353, 'جميع القراءات بها خطأ حتي عدد الخطواط اذا كنت جالس بسياره او راكب دراجه لا اعلم اذا كان خطأ خاص في المنتج لدي ام عام علي جوده المنتج', '5 December 2021', 5, 26),
(354, 'المنتج جيد جداً والتوصيل سريع', '16 September 2021', 5, 26),
(355, 'The watch doesn’t even workThe packaging and the box don’t resemble the original oneI don’t recommend it', '15 September 2021', 5, 26),
(356, 'Simple, high quality screen. Resolution is great, light weight, easy to install. Only one HDMI port, no speakers, camera, or built in USB.Would buy again.', '16 February 2022', 4.6, 27),
(357, 'I just like it. Colors are great and adjustable, Controls are handful. Good screen <3', '9 March 2022', 5, 27),
(358, 'تم الشراء من محل على اساس تقييم امازون وا لشاشة سيئة جداً و اضاءة ضغيفة و نوع رديئ من ال IPS', '6 January 2022', 2, 27),
(359, 'Very good Monitor, great colors, IPS Panel very suitable for content makers. Delivery on time, thank you', '15 November 2021', 5, 27),
(360, '8/10', '3 January 2022', 5, 27),
(361, 'عملية جداقيمة مقابل سعر فعلا', '25 November 2021', 2, 27),
(362, 'OJO. El vendedor engaña. La imagen no cubre hasta el bastidor del monitor tal y como se ve en las fotografías del anuncio. Se adjunta foto del monitor recién estrenado donde se aprecia el grueso del bastidor y el margen que hay entre el bastidor y el extremo de la imagen (más o menos el doble de distancia más el grueso del bastidor). Por lo demás, sin haber hecho más pruebas el monitor se ve bien y es bonito y sencillo en la instalación. Buen precio.Con apenas 1 semana de uso y ya tengo problemas. Una franja horizontal en la parte superior del monitor, de lado a lado, no para de parpadear. Se adjunta vídeo. Aunque no se aprecia el parpadeo en el vídeo, si que se ve de diferente intensidad. A la vista es muy molesto.Una pena, porque por el precio que tenía (99,99 €) estaba bastante bien.Devolviendo el producto. Me cobraban 5,5 € por la devolución.Finalmente Amazon resolvió que había sido un cobro indebido por un error. Me devuelven lo cobrado. Esperaré acontecimientos, aún no llegó la devolución.', 'Reviewed in Spain on 29 December 2020', 5, 27),
(363, 'Compré esta pantalla porque la pantalla del MacBook Pro se quedaba corta para tantas pestañas que necesito tener abiertas y me lancé a trabajar con doble pantalla.Tras valorar muchas opciones me decanté por esta que tenía muy buenas reseñas (ninguna negativa), todas haciendo alud de su excelente calidad de imagen.Pues bien, esta pantalla me ha resultado muy deficiente a nivel de calidad, con píxeles enormes, de hecho me planteo si la que me ha llegado está defectuosa. Sea así o no, me he decantado por devolverla.Comento que soy usuaria de Mac porque quizás es el motivo por el que exijo mejor calidad de imagen y esta no está a la altura de mis expectativas.Aun así, adjunto fotos tomadas de la pantalla Xiaomi y una de la pantalla de mi Mac para que comprendáis a lo que me refiero.', 'Reviewed in Spain on 9 June 2021', 5, 27),
(364, 'Mi serviva un monitor da utilizzare durante il telelavoro, in abbinamento con il mio portatile, ma che non costasse una fortuna.Questo monitor mi ha davvero stupito, acquistato a circa 90€ in offerta non posso chiedere di meglio: chiaro, luminoso quanto serve, molto nitido se si utilizza l\'HDMI (la vga onestamente non l\'ho provata).Settaggi intuitivi con una levetta posta sul retro che funge anche da tasto acceso/spento).Molto grande per esigenze di ufficio, si lavora agevolmente.Ogni tanto mi piace anche giocare con il mio PC e devo dire che anche in questo ambito - sembre in relazione al prezzo - si comporta egregiamente.In poche parole, un altro prodotto vincente di Xiaomi che a un prezzo onesto fa più di quello che ci si potrebbe apettare.Consigliato.', 'Reviewed in Italy on 11 February 2021', 5, 27);
INSERT INTO `reviews` (`review_id`, `Review`, `Date`, `stars`, `product_id`) VALUES
(365, 'Muy contento con el rendimiento y calidad de materiales-Los materiales del monitor y los accesorios están perfectamente acabados, dan una sensación premium de vista y al tacto.-Estéticamente el diseño es impresionante, minimalista y moderno.Puntos a destacar:-El grosor de la pantalla es incluso más fino que el de mi móvil. Como si fuese una pantalla de portátil. El monitor no tiene marcos, solo el inferior y me da sensación de amplitud e inmersión.-Es muy ligero y a la vez aguanta muy bien las vibraciones. He probado a dar toques a la mesa, apenas se mueve, es muy seguro. Supongo porque la peana es de metal ligero, estará diseñada y bien equilibrada para se agarre bien.-tiene una entrada VGA para aparatos \"antiguos\" por ésta razón lo compre, ya que de momento sigo utilizando un portátil viejo...- Mi impresión de la pantalla: colores fluidos y vivos, cumple mis expectativas, no noto ningún fallo. Tiene varios modos para personalizar. Al ser mi primer monitor FHD, no tengo mucha experiencia al respecto.-Dispone de un único Stick (en la parte trasera, discreto) para configurar el monitor y también es el botón de encendido/apagado. Prefiero este detalle ante varios botones, ya que luego te puedes confundir fácilmente y varias veces. Con este sistema es más navegble y rápido.- El enchufe, ocupa muy poco y es muy bonito, parece un cargador del móvil.-No se necesitan herramientas extra, viene todo incluido \"una llave/destornillador\" para su instalación.Contras:-Solo tiene 1 entrada VGA y 1 entrada HDMI, echaría en falta más salidas/entradas por ejemplo 1 VGA y 2 HDMI.-No tiene altavoces.-No tiene entrada para Auriculares Jack, ni Bluetooth para conectar audio. Por lo que dependes de conectarlo al pc o a un dispositivo multimedia para poder reproducir el audio.Por el precio (rango de menos de 100€) y calidad premium en general. Creo que merece mucho escoger este modelo de monitor.', 'Reviewed in Spain on 31 December 2020', 1, 27),
(366, 'حلو انه بيشحن الموبايل سريعبس هو بيتشحن في وقت طويل جدا ، تقريبا ١٠ ساعات او اكتر.حجمه كبير و تقيلجربته شهر بيشحن مش كتير و بقى بيفضى بسرعةالمجانين بتوع الشحن ، واحد شحن سريع والتاني شحن عادي. مكنوش كاتبين ان التاني ده شحن بطيء', '1 December 2021', 4.3, 28),
(367, 'أريد ادخال المنتج في الضمان إذ انه لم يعد يعمل بعد أقل من شهر من شرائه!!', '26 December 2021', 5, 28),
(368, 'منتج ممتاز وأصلى أصلى أصلى بس تقيل بتاع نص كيلو كده وبياخد وقت فى شحنه ل 100 % بس بيشحن الموبايل أكتر من 6 مرات فى اليوم واكثر من موبايل كمان شكرا للبائع المحترم وشكراً لشركة أمازون المحترمة .', '17 March 2022', 2, 28),
(369, 'Great power bank but note that the type C port is input only and not both input/output. It says this in the specifications but I didn’t notice.', '9 March 2022', 2, 28),
(370, 'ممتاز جدا يكفي لشحن مرات عديدة ويمكث مده طويلةعيبه الوحيد طول مدة شحنه حتى يكتملواعتقد انه يمكنه شحن لابتوب', '9 January 2022', 1, 28),
(371, 'بيهنج شويه يشحن وشويه يفصل', '19 December 2021', 5, 28),
(372, 'المنتج ممتاز  والشحن سريع بس وزنه تقيل شويه والكابل المرفق مايكرو يو اس بي مش تايب سي', '30 January 2022', 4, 28),
(373, 'very durable, with exellent fast charging', '2 December 2021', 4, 28),
(374, 'انا جالي الباور بايظ مش شغال ولونه ابيض و10 مش 20', '29 December 2021', 3, 28),
(375, 'سريع جدا وبيشحن بسرعه جباره', '15 March 2022', 4, 28),
(376, 'A good copy of the original product, so expect a less treble and bass', '14 October 2021', 3.8, 29),
(377, 'Small in size, but fine for me as I only wanted to use them with my MacBook when watching shows.', '8 January 2022', 4, 29),
(378, 'خامات ضعيفه ومنتج غير اصلي', '4 October 2021', 1, 29),
(379, 'المنتج جيد بالنسبة لسعره. لكن خامته رديئة جداً وغير عازلة للصوت.', '29 November 2021', 4, 29),
(380, 'احببت نقاء الصوت الشديدلم احب ان الصوت ليس مجسما', '4 March 2022', 5, 29),
(381, 'معقوله علي سعرها اكن المايك بشع لكن السماعات نقيه لكن واطيه شويه', '7 January 2022', 1, 29),
(382, 'ExcellentWhat\'s good about this product:ExcellentWhat\'s not so good about this product:Excellent', '24 August 2016', 3, 29),
(383, '-جوده السماعه ممتازه - خفه الوزن -سهوله استخدامها مع جميع الاجهزه ونادرا م تتوفر هذه الميزه في السماعاتإيجابيات هذا المنتج:سرعه التوصيلسلبيات هذا المنتج:سمك السلك سيئ', '28 September 2018', 4, 29),
(384, 'واضحه واستخدمها للسوني٤إيجابيات هذا المنتج:واضحه واستخدمها للسوني٤سلبيات هذا المنتج:لا يوجد علبه لها', '6 June 2018', 3, 29),
(385, 'جيده لكن يفضّل بلوتوث او WiFiإيجابيات هذا المنتج:نعمسلبيات هذا المنتج:بدون بلوتوث', '19 September 2018', 5, 29),
(386, 'منتج رائع جدا لدرجه ماتتوصفشصوت الموسيقى نقي جدا وعاليصوت المايك مسموع كويس اوي حتى في الدوشه العاليهالبطاريه ممتازه وبتقعد فتره طويلهبراااافوااا سوني ❤️❤️', '1 November 2021', 3.9, 31),
(387, 'بحيث اني جربت سماعات زيAweiAnkerYisonneckband بأسعار وخامات مختلفة، ف سوني تحتل المركز الأخير من القيمة مقابل السعر وللأسف اتخدعت من الصورة كنت فاكرهااللي هي القطعة اللي بتبقى من الخلف مش مجرد سلك مدلدل ، الحاجة التانية هي اضعف مغناطيس لأي سماعة  جربتها لدرجة اني افتكرت ان مافيهاش مغناطيس فمتتوقعش انها هتمسك باقل خطوات مشي هتتفك وهتتزحلق كتير.السلك اقل من ايوي واقل من يوسن  ولكن افضل من الأنكرإستجابة الإتصال كويسة افضل من انكر ويسون ولكن تحت إيوي، الصوت كويس في بيز خفيف ظاهر عن إيوي ولكن الصوت و البيز مش احسن من بتوع انكر.السماعة صغيرة لطيفة بس مش شيك شكلها بصراحة بنسبة لي يدي على حاجات شعبي شويةالبطارية بتاعتها بعد استخدام ساعتين  لسه 100%المدى بتاعه افضل من اي مدى جربتهالمايك بتاعها مافيش حد ماسمعنيش حتى في الدوشة ودي حاجة عجبتني جداًكان نفسي أرجعها لكن للأسف ورقة الحماية بتعتها شلتها', '1 February 2022', 5, 31),
(388, 'جميله جدا تستحق الشراء لا يوجد بها سلبيات', '23 September 2021', 2, 31),
(389, 'ممتازة .. صوتها واضح وبطاريتها تستمر لمدة يومان مع الاستعمال الكثيف والتوصيل خلال يوم واحد', '29 October 2021', 5, 31),
(390, 'سماعة جيدة و أحسست بفرق في الصوت عن السماعة القديمة يتبقي لى تجربتها في المكالمات', '2 November 2021', 2, 31),
(391, 'سماعة حلوة جدآ بس ال base قليل شوية للناس اللى بتحبه عالى , بس الصوت stereo و نقى.', '19 November 2021', 5, 31),
(392, 'صوتها ممتاز وسعرها مناسب وتوصيل سريع جدا', '11 November 2021', 5, 31),
(393, 'صوتها جميل فى الموسيقيبطاريتها بتعيش تقريبا ١٠ ساعات تشغيل متواصل واكتر كمان لو الاستعمال العادي لشخص مش بيشغلها play time طول الوقتالمايك بتاعها فى المكالمات مش احسن حاجه لأن استقباله ضعيف شويه فى الأماكن المفتوحه والضوضاء بس كويس جدا فى الأماكن المغلقه والهدوء', '30 December 2021', 4, 31),
(394, '* Very good bettary* Sound Quality not as expected* Sometimes the connection isn\'t stable* Mic Quality not as expected* Doesn\'t support Dolby Atmos', '1 December 2021', 4, 31),
(395, 'احسن حاجه فيها انها مريحه في الوطن جدا ولا تسبب ليا اي الم عكس معظم السماعات بعد فتره من الاستماع بحس اني لازم اشيلهاالمايك مناسب في المكالمات في الاماكن المغلقه وغير مناسب تماما للاماكن المزدحمةهي خفيفه جدا وسهل انها تقع لأن المغناطيس اللي في السماعتين ضعيف بيخليها سهل تتفك وتقع من علي رقبتك', '17 February 2022', 5, 31),
(396, 'original, excellent noise cancellation actually the best in the whole world for an amazinv price!highly recommended', '6 September 2021', 3.8, 32),
(397, 'رائعه بجد بس محتاجه تفهم الappبتاعها كويس', '10 March 2022', 5, 32),
(398, 'not original it`s fakeWhat\'s good about this product:not original it`s fake', '18 March 2021', 1, 32),
(399, 'اكثر من ممتازإيجابيات هذا المنتج:اكثر من ممتاز', '7 December 2020', 5, 32),
(400, 'what a marvelousWhat\'s good about this product:what a marvelous', '6 December 2020', 5, 32),
(401, 'GREAT VALUEWhat\'s good about this product:GREAT VALUE', '7 December 2020', 1, 32),
(402, 'GREAT VALUEWhat\'s good about this product:GREAT VALUE', '6 December 2020', 5, 32),
(403, '5 - starWhat\'s good about this product:5 - star', '6 December 2020', 5, 32),
(404, 'ExcellentWhat\'s good about this product:Excellent', '6 December 2020', 5, 32),
(405, 'GreatWhat\'s good about this product:Great', '7 December 2020', 5, 32),
(406, 'Perfect , really love it.  Quiet impressive sound quality. I used Bose and DSD speakers before.  But this one is fenominal , only two drawbacks are the quality of the case which is a bit light and the sound volumeSadly after 3 weeks from purchasing this item price dropped by more than 800 pounds!!  Which is silly really!!', '27 February 2022', 4.3, 33),
(407, 'It is working correctly except I hear a clicking sound in right EarBud when talking or make phone callthe problem now i cannot find the place of repair the issue and i am now contact Sony middle east for solution. still no solution.', '18 December 2021', 5, 33),
(408, 'سماعة رائعة. .شكرا أمازون مصر على المصداقية وسرعة التوصيل', '11 November 2021', 1, 33),
(409, 'سماعة اكثر من رائعة و تستاهل التمن', '7 October 2021', 5, 33),
(410, 'The sound quality is great, It fits my ear well, and it has a lot of technologies and options, put it has also a very high price', '14 November 2021', 1, 33),
(411, 'Premium quality', '12 December 2021', 5, 33),
(412, 'It has wonderful and crystal sound quality very pure and clear, the sound quality you can find in music hall, full of options the Sony headset app available with all settings you can imagine even detect your move, I love and recommend it.', '27 November 2021', 5, 33),
(413, 'So starting with their all important sound quality, the Sony XM4 sound is much richer than the previous XM3\'s with more bass quantity, impact and depth while shying away from presenting an unnaturally bass heavy sound or overly aggressive impact. The sound is wonderfully balanced and articulate with natural mids, good presence across male as well as female vocals and an energetic treble that stays just the right side of being too polite and tame (for recordings see my Amazon profile YouTube channel). It is a world away from its bass light and monitor-like XM3 predecessor that shone an analytical spotlight on musical details so one couldn\'t hear the wood for the trees - if that\'s a thing. With the XM4 Sony has gone the other way with a less shimmering and analytical presentation but one that I think will better please more people and suit more styles of music as well as less pristine quality recordings so harshness and sibilance never detracts from the musical experience. The sound has become more rich and Sennheiser like - which may be just as well given Sennheiser has announced it is open to selling its consumer audio business.During the first few hour of listening there was no dramatic change to the sound from driver burn in however whether it was the drivers loosening up or my brain adjusting to the sound the XM4 bass seemed to become a little fuller. Both the XM4 and my reference TWS Sennheiser CX400BT offer equalisers to let you tweak the frequency response to your preferences however the technical transient response and detail resolution remains better on the Sennheiser meaning the CX400BT sound is always that touch more realistic. So this round is a win for the Sennheiser even though its latency, with YouTube for example, is more noticeable.Moving on to comfort and fit both XM4 and CX400BT fit securely, the Sony aided by its expanding foam ear tips anchoring them in your ear canal, however they also stick out noticeably so are more conspicuous and less easy to lie down with than smaller designs. The Sony profile means it can\'t be pushed so far into your ear and it is also heavier so ultimately the Sennheiser wins for security of fit though the XM4 is definitely a step up from the XM3.So again a win for the Sennheiser though neither are as low profile and easy to forget you\'re wearing as Airpods pro style designs and smaller ears could struggle to accommodate the bulkier Sony particularly.Considering the microphones both XM4 and CX400BT are similarly clear in quiet and noisy conditions.Touch Controls on both are configurable and work reliably. Sony goes with all track pause and skip controls via the right earbud whereas the Sennheiser uses the more conventional format of a left touch for skip back and volume down and right touch for skip forward and volume up.Moving on to ANC and ambient pass the Cx400 just has passive noise isolation rather than the active Noise Cancellation of its big brother the MTW2. From my previous best ANC test the XM3 and Liberty Air 2 Pro came out on top. ANC on the XM4 is similarly good and noticeably better at reducing higher frequencies as well as low. Happily it does not change the frequency response of music playback as on the Liberty Air 2 Pro for example. The ambient mode is also much clearer and now class leading for earphones alongside the 1MORE ComfoBuds pro.There is some noticeable hiss but it is not too bothersome. A new feature over the XM3 is the previously unique to Samsung speech activated operation that is very intuitive. As soon as you start talking, your music pauses and pass through is activated whereas on the Samsung Galaxy Buds Pro it is someone else speaking rather than your speaking which triggers it. Ambient mode can also be activated by keeping a finger pressed to the left earphone, similar to the cupping your ear gesture on the XM4 headphones, as well as by tapping the left earphone.So this round goes to the Sony which continues to offer the most effective ANC but now also includes the very useful speech activation of ambient mode.As far as looks go both will divide opinion with the Sony\'s rather chunky design and brass details against the Sennheiser\'s rather austere look.Clearly on price the Sennheiser CX400BT wins though the ANC MTW2 is around the same price as the Sony.So to sum up if you want the best sound quality the CX400BT remains the wireless earbud to beat. It also fits more reassuringly in the ear than the Sony with its profiled nozzle and lighter body.The Sony is the new ANC and ambient pass through king. It also sports fancy high res codecs, 360 sound and both google and Alexa assistant integration and while these may not offer such a compelling reason to upgrade for most people, it\'s overall sound quality is a step up from the XM3 and now one of the best sounding TWS, though at a price, and comparable or better sound quality can be had for a lot less cash if one is happy to forego some of the Sony\'s features.', 'Reviewed in the United Kingdom on 12 June 2021', 5, 33),
(414, 'For anyone who’s interested...after one week of intensive use, I simply cannot compute some of these reviews, because I have many earphones - wireless and wired, and these M4s are as near to perfect as you can get.The fit is BY FAR the best of ANY earphone I’ve tried. The tips have perfect pressure to create a seal but not become sore - like the M3 model. The size of the unit sits in my ear perfectly - it doesn’t protrude like so many others - including the M3.The case is MUCH smaller and MUCH lighter. It feels cheap because it’s so light, but also feels durable.The sound is simply excellent - for a wireless earphone - significantly BETTER than my AirPods or M3. It’s musical and less ‘congested’ sound than before. With the right track, the bass defies physics, it’s really deep and impactful, which I never thought I’d say about a tiny wireless earphone - phenomenal work from Sony.Noise cancellation is pretty much unchanged, that is to say VERY GOOD and way better than my AirPod Pros.I feel this is the most perfect wireless earphones to date. If you buy from Amazon you have nothing to lose - you can just return them if you’re not delighted with them. If you don’t try them, you could be missing out on a genuinely phenomenal product.Original review from Day 1:Sony WF1000-M4 - Simple THE BEST wireless IEMs I’ve heard. Great job Sony!👏🏼🥇Yes - they are a proper upgrade to the M3, in terms of:- size; much smaller case- sound; less V-shaped and more natural- fit; tips are softer and more comfortable and they sit in my ear much better - don’t stick out as much as my M3s- Even the build quality is significantly better (although the case is definitely not).They pair nicely with my Ibasso DX300 using LDAC 😎🤜🏼🤛🏼😁.', 'Reviewed in the United Kingdom on 13 June 2021', 5, 33),
(415, '...ein Android Smartphone hat, auf dem in den Bluetooth-Einstellungen des WF-1000XM4 der LDAC-Codec aktiviert ist und man ein entsprechendes Abo (z. B. Amazon Music HD) hat.Ich kenne den Unterschied, wenn man LDAC aktiviert, schon vom WH-1000XM3. Bei HD- und UHD-Inhalten auf Amazon Music HD ist das ein gewaltiger Unterschied im Vergleich zu AAC. Als ich gelesen habe dass Sony endlich InEars mit LDAC-Codec bringt war klar dass ich sie haben muss. Ich wurde nicht enttäuscht, im Vergleich zu den Razer Hammerhead True Wireless Pro oder auch den Sony WF-SP800N gewinnen die WF-1000XM4 eindeutig den Sound-Test (wenn LDAC aktiviert wird!!).Für mich ist das wichtigste an InEars der Klang, ich kann bei entsprechender Ausstattung und Quellen hier eindeutig eine Empfehlung ausssprechen.In der Headphones-App sieht man oben unter dem Titel \"WF-1000XM4\" sofort ob LDAC oder AAC aktiv ist. Wer dort AAC stehen hat und vom Klang enttäuscht ist wirft am besten einen Blick in die Bluetooth-Einstellungen (nur bei Android, das angebissene Obst unterstützt LDAC nicht).Ganz nebenbei sind die zusätzlichen  Features (sehr gutes ANC, Speak-to-Chat, gute Akkulaufzeit, kabelloses Laden) noch ein Goodie, an das man sich schnell gewöhnen wird.', 'Reviewed in Germany on 15 June 2021', 5, 33),
(416, 'السماعه ممتازة لأكثر من شيء , كالالعاب والرياضة وحتى الافلام ومريحه جدا ولا تشعر فيها انك لابسها ولكن مشكلتها الوحيده العزل .. وهو ان اللي قريب منك بيسمع اللي تسمعهإيجابيات هذا المنتج:افضل وارخص سعر .. محيطيتها جيده جدا !! .. ومريحة جدا للرأس .. ويمكن استخدامها لاسلكيا باستخدام الUSP على اي جهازسلبيات هذا المنتج:للامانه الصوت في حال كان عالي لايتم عزله واللي قريب منك يسمع اللي تسمعه', '1 October 2019', 3.4, 36),
(417, 'رهيييبة انصح الكل يشتريها مريحة للذان فيها ازرار تعلي صوت اللعبه او صوت الشات وتعلي صوت السماعه والصراحه انا اشوفها افضل خيار لان اغلبنا عنده سوني ٤ سليم ومافيه منفذ اوبتكل هاذي بس معاها فلاشه ومافيها منفذ اوبتكل والاروع انها محيطية 7.1 يعطيكم الف عافيةإيجابيات هذا المنتج:مريحه للراس تغطي الاذن كامله الصوت حلوو وواضح والمايك رهيبسلبيات هذا المنتج:لاشيء', '14 November 2018', 5, 36),
(418, 'للاسف السماعه مافيها عازل لصوت ،  الصوت يتسرب برا ماينكتم في اذني ( ماادري اذا فهمتوا قصدي) ، يعني اللي جنبك يسمعون وش قاعد تسمع انت ، اللي يبي جودة ممتازه لا يشتريها', '3 January 2019', 3, 36),
(419, 'جيدة', '11 August 2019', 5, 36),
(420, 'منتج بطل بصراحه عيبه الوحيد مايتسفط مثل سماعات الشركات الثانية', '29 July 2019', 5, 36),
(421, 'Ps4 compatibleWhat\'s good about this product:Sounds goodWhat\'s not so good about this product:Nothing', '7 March 2019', 3, 36),
(422, 'المنتج جميل لكن السعر يبي له شوي تخفيض فقطإيجابيات هذا المنتج:جيدهسلبيات هذا المنتج:لابأس بها اذا كان سعرها اقل شوي', '28 November 2018', 5, 36),
(423, 'جميله جدا', '27 March 2020', 4, 36),
(424, 'لا يعلى عليها', '2 July 2018', 3, 36),
(425, 'جميلإيجابيات هذا المنتج:ممتازسلبيات هذا المنتج:لايوجود', '14 April 2019', 3, 36),
(426, 'توقعت تكون الخامة وجودة الصورة افضل من كدا بكتيير مقابل سعرها', '4 February 2022', 3.2, 37),
(427, 'اشتريت الكاميرا للتصوير الفوتوغرافيبالنسبة رائعة جداعدد نقاط الفوكس ليست كثيرة(45) لكنها أفضل من نظام التسع نقاط القديمسهلة الاستخداملو استخدمت عدسة محترمة نسبيا ستحصل على نتائج أفضلاستخدمت معها 50mm f1.824mm f2.8والنتائج أكثر من رائعة', '11 November 2019', 5, 37),
(428, 'Great Camera, Long battery time, Great featuresWhat\'s good about this product:Great Camera, Long battery time, Great featuresWhat\'s not so good about this product:Nothing', '14 December 2019', 1, 37),
(429, 'منتج جيد جداااا عزل مقبول بالعدسة المرفقة والزوم ممتاز .. العيب الوحيد هو خامات التصنيع الخارجية من بلاستيك ضعيف .. والمنتج اصلى من تايوان', '20 March 2019', 1, 37),
(430, 'احترافيه من الفئة المتوسطة بامكانيات ممتازه الشاشه المتحركة تحتاج معاملة  بحذر فهى حساسه', '7 December 2020', 5, 37),
(431, 'صراحة هذا من افضل المنتجات من ناحية الدقة و الجودةإيجابيات هذا المنتج:الدقةسلبيات هذا المنتج:السعر غالية جدا', '9 August 2018', 5, 37),
(432, 'Great camera. The perfect companion for any sightseeing/exploration trip.', '22 November 2018', 5, 37),
(433, 'كاميرا ممتازة لمحترفين التصويرإيجابيات هذا المنتج:جودة التصويرسلبيات هذا المنتج:حجم الكبير', '2 November 2018', 5, 37),
(434, 'thank you souq', '9 April 2018', 5, 37),
(435, 'منتوج جميل جداإيجابيات هذا المنتج:منتوج جميل جداسلبيات هذا المنتج:منتوج جميل جدا', '15 May 2018', 5, 37),
(436, 'انا مش بعمل دعايا لكن الكانون 200d فيها مميزات عن الكانون 4000d بكتير شوف عليها فيديوز مراجعة علي اليوتيوب هتعرف الفرق', '15 February 2022', 4.2, 38),
(437, 'جميلإيجابيات هذا المنتج:جميلسلبيات هذا المنتج:لايوجد غير ان الشاشه لا تتحرك', '4 January 2021', 4, 38),
(438, 'PerfectWhat\'s good about this product:So Descent and usefulWhat\'s not so good about this product:Nothing for this price', '19 March 2019', 3, 38),
(439, 'المنتج جيد جدااا بس السعر مرتفع.إيجابيات هذا المنتج:جوده جيدهسلبيات هذا المنتج:غالي جداا', '13 November 2020', 4, 38),
(440, 'السعر أغلى من المحلات', '25 November 2021', 5, 38),
(441, 'جيده بعضا ما للمبتدئين', '15 May 2020', 5, 38),
(442, 'منتج ممتاز جداًإيجابيات هذا المنتج:السعر مناسبسلبيات هذا المنتج:الوصف لا يشمل كل شئ', '23 May 2019', 3, 38),
(443, 'ممتازة وسعرها مناسب مقارنة بجودتها', '13 March 2020', 3, 38),
(444, 'perfect', '25 November 2018', 5, 38),
(445, 'الرجاء تقليل السعرإيجابيات هذا المنتج:هذا جميل حقاسلبيات هذا المنتج:زيادة السعر', '24 December 2018', 5, 38),
(446, 'battery was swapped by another, quite unacceptable tbh.', '24 February 2022', 3.6, 39),
(447, 'Fantastic', '14 March 2019', 5, 39),
(448, 'I love it', '28 April 2020', 3, 39),
(449, 'nice articulating touchscreen', '6 August 2018', 3, 39),
(450, 'Thanks, best...', '24 April 2019', 5, 39),
(451, 'Nice camera...', '9 February 2019', 5, 39),
(452, 'حلوة وسعرها مناسب', '7 May 2018', 4, 39),
(453, 'Excellent', '10 February 2018', 5, 39),
(454, 'Recensione veloce: per i dati tecnici basta andare sul sito Canon e c\'è tutto. In YouTube si trovano millemila recensioni. Qui voglio solo dire cosa ne penso io dopo un mesetto di utilizzo intensivo: è meravigliosa. Costruita benissimo; ha tutto quello che serve; lo schermo orientabile è uno spettacolo. Se voglio proprio trovarci dei difetti ( che sono difetti solo in base al tipo di utilizzo che si fa della macchina fotografica es. caccia fotografica esasperata o fotografia sportiva ) sono 2: tempi di scatto \"solo\" fino ad 1/4000 e sync del flash a 1/160. Ricordiamoci però che è una macchina del 2017, che non costa un rene, che è una full frame e che la amo. Fine recensione. Compratela a occhi chiusi.', 'Reviewed in Italy on 19 December 2021', 5, 39),
(455, 'Questa  Eos 6D Mark II è sicuramente molto più performante della precedente. Adesso riesco a sfruttare al meglio gli obbiettivi della serie L. Bassissimo rumore ad alti Iso, grande nitidezza  con un dettaglio superiore alle APS_C . Nel classico menù Canon a cui sono abituato, ci sono tutte le funzioni fondamentali senza fronzoli di marketing. Messa a fuoco rapida e precisa, il meccanismo degli specchi molto silenzioso con vibrazioni quasi inesistenti rispetto alla 80D. La chicca e che nel mirino ottico posso programmare solo le informazioni che voglio vedere. Durata della batteria strepitosa, fatte più di 200 foto still_life, molte a lunga esposizione, mi sono messo a giocare con il menù tramite il display touch screen per provare tutte le funzioni, collegata spesso al PC per scaricare le foto, da un mese acquistata e la batteria è scesa di una tacca. Una Full_Frame di tutto rispetto!', 'Reviewed in Italy on 25 October 2021', 5, 39),
(456, 'PerfectWhat\'s good about this product:So Descent and usefulWhat\'s not so good about this product:Nothing for this price', '19 March 2019', 4.1, 40),
(457, 'المنتج جيد جدااا بس السعر مرتفع.إيجابيات هذا المنتج:جوده جيدهسلبيات هذا المنتج:غالي جداا', '13 November 2020', 5, 40),
(458, 'جميلإيجابيات هذا المنتج:جميلسلبيات هذا المنتج:لايوجد غير ان الشاشه لا تتحرك', '4 January 2021', 3, 40),
(459, 'منتج ممتاز جداًإيجابيات هذا المنتج:السعر مناسبسلبيات هذا المنتج:الوصف لا يشمل كل شئ', '23 May 2019', 5, 40),
(460, 'ممتازة وسعرها مناسب مقارنة بجودتها', '13 March 2020', 3, 40),
(461, 'perfect', '25 November 2018', 5, 40),
(462, 'الرجاء تقليل السعرإيجابيات هذا المنتج:هذا جميل حقاسلبيات هذا المنتج:زيادة السعر', '24 December 2018', 5, 40),
(463, 'جيدإيجابيات هذا المنتج:جيدسلبيات هذا المنتج:لا يشمل الشنطه ولا كارت الذاكره', '6 December 2018', 5, 40),
(464, 'جيده بعضا ما للمبتدئين', '15 May 2020', 5, 40),
(465, 'نقي ورائعه', '13 January 2019', 5, 40),
(466, 'رائعة و لكني لم أعرف كيف أصل أجهزتي بها مباشر عن طريق البلوتوث بدلا من الواي فاي ، و لم أعرف كيف أنسخ بها ، و خايفة من عملية ملئ الحبر عندما ينفذ ، كيف أقوم بملؤه و ما هو أرخص نوع حبر و جيد في نفس الوقت ؟ و ماذا عنها لو ركنتها شهور بدون إستخدام ؟ و هل أغير الكارتج كلها للحبر أم أعيد ملؤها فقط ؟', '16 February 2022', 4.2, 41),
(467, 'ممتج اكثر من رائع', '10 October 2021', 4, 41),
(468, 'الطابعة من الاداء والوظائف ممتازة في فئتها السعرية.. لكن مشكلتها استهلاكها للحبر سريعا.. وحتضطر لشراء عبوات حبر جديدة او تجرب اعادة التعبأة', '6 March 2022', 2, 41),
(469, 'There is no access for USBthe printing sound is very noisythe printing speed is about 7 seconds per pagein order to print you must switch to the printer wifi and turn off your own WIFIthe Scanner resolution is very bad, if the words are less than 11font you would face a real difficulty to read it from the scanned documents.', '14 March 2022', 4, 41),
(470, 'This printer is the definition of torture! It is not user-friendly. I had to install and uninstall the drivers new Windows 11 updates. A complete waste of time.', '19 March 2022', 5, 41),
(471, 'الطابعة جيدة ولاكن مشكلتها ان الحبر ينفذ بسرعة', '25 January 2022', 5, 41),
(472, 'اسكنر ممتاز أداء محترم شكل جميل', '8 January 2022', 2, 41),
(473, 'Faulty , returned to seller for refund', '26 January 2022', 1, 41),
(474, 'كويسة جدا', '24 February 2022', 5, 41),
(475, '♥️🌷شكرا', '23 January 2022', 5, 41),
(476, 'Great for office use.', '5 March 2022', 4.2, 42),
(477, 'The printer is really fantastic. The ESC-Trade is reliable and excellent company.Thank You!', '14 December 2021', 5, 42),
(478, 'Ottimo prodotto con caratteriatiche da ufficio professionale. Fronte e retro sia nella scansione che in stampa, velocissima nella stampa anche nel fronte e retro.', 'Reviewed in Italy on 18 March 2020', 5, 42),
(479, 'With this MFD I am replacing my old MF4550d. It worked fine all 10 years, but now I needed a network solution to be able to print from different devices, including Android, iOS and Windows. I have tryed different print servers, but none of them was performing well with all operating systems.Now, with this MF443dw it was extremely easy to cennect it throufh WIFi to my network. Then all devices were either printing right away, or with the proper apps (Canon Print services for Android). The installation of the devide took 20 min. Be aware that Win 10 does not install the proper drivers to scann, so you need to install the driver from Canon. This can be done wither from the DVD that comes with the printer, or download it from canon web site.I did not have any issues. It will take me some time to get use with the new scanningh interface, but this is expected.', 'Reviewed in Germany on 1 November 2021', 5, 42),
(480, 'Ottima fotocopiatrice.Cercavo qualcosa di poco ingombrante per la mia attività ma allo stesso tempo affidabile e smart.Possedevo già una Canon che mi ha abbandonato dopo 10 anni di onorato servizio. Questa per ora non me la rimpiangere, anzi.Facile ed intuibile, piccola e potente e sopratutto smart.Il venditore poi è molto gentile, ho richiesto fattura e puntualmente me l ha fornita.', 'Reviewed in Italy on 10 May 2021', 5, 42),
(481, 'La uso da una settimana. Mi sembra perfetta. Avevo una ir1024a usb e questa con Wi-Fi è una chicca. Veloce. Silenziosa. Compatibile AirPrint iOS. Mi ha fatto impazzire installazione driver perché ne propone tre. Alla fine ho messo uno solo. Quello di default. Per capire tutto quello che fa ci vuole una vita. Ho esteso online garanzia a tre anni. Per ora Perfetta. Anche Mf scan utility va perfettamente. La Uso come stampante di rete.', 'Reviewed in Italy on 18 April 2020', 5, 42),
(482, 'This thing is both smart AND slow! Print jobs sent by the computer take ages to start printing but once it gets going, it\'s quick. That\'s more than I can say about the scanner. It\'s NOT fast but super quality.I fall in & out of love depending on what I\'m doing :-)', 'Reviewed in the United Arab Emirates on 22 January 2022', 5, 42),
(483, 'Cercavo una multifunzione con wi-fi, fronte retro sia in lettura sia in stampa, veloce ed economica. Questa Canon MF443dw è tutto questo. L\'ho installata velocemente e senza particolari complicazioni; le funzioni \"base\" sono semplici da trovare e utilizzare, quelle avanzate un po\' meno ma alla fine funziona tutto. Considerando il prezzo molto favorevole, e che nessuna delle concorrenti offre tutte queste opzioni se non a prezzi molto maggiori sono molto soddisfatto.', 'Reviewed in Italy on 31 January 2021', 4, 42),
(484, 'Die Lieferung nach Wien erfolgte recht rasch. Der Drucker war gut verpackt und hatte keinerlei Schäden. Die Installation war selbst für mich super einfach - das Gerät macht was es soll und das ohne Komplikationen. Würde diesen Drucker wieder kaufen', 'Reviewed in Germany on 30 October 2019', 4, 42),
(485, 'Ottima macchina compatta. Software semplice da usare e perfetta nella scansione dei documenti anche fronte/retro con unico passaggio del foglio. Non conosco ancora il costo delle cartucce perché la uso prevalentemente per la scansione', 'Reviewed in Italy on 3 March 2021', 5, 42),
(486, 'The best camera from Canon Series. You can shoot as a real Pro or Amateur.What\'s good about this product:One of the Best Camera everWhat\'s not so good about this product:White balance is not so high level as the camera itself', '21 December 2018', 4.6, 43),
(487, 'الكاميرا جيدة  و معها كافة الملحقات و الكرتونة لم يتم فتحها من قبلإيجابيات هذا المنتج:افضل كاميرا تصوير فوتوغرافي', '11 May 2017', 5, 43),
(488, 'من افضل كاميرات كانون', '29 May 2018', 5, 43),
(489, 'بسم الله مشاءالله شغيل جميل', '13 November 2018', 5, 43),
(490, 'The best.', '11 September 2018', 5, 43),
(491, 'Excellent', '25 November 2018', 5, 43),
(492, 'Die Umstellung von der Mark III zur Mark IV ist einfach. Die Bedienelemente sind ähnlich der Mark III angeordnet. Die zusätzlichen Funktionen prägen sich schnell ein. Schade ist nur, dass es kein schwenkbares Display gibt. Das Touchdisplay läßt aber eine schnelle Bedienung und Änderung zu. Da kann man sich sehr schnell dran gewöhnen. Die Auflösung des Display ist hervorragend und die 30 Mpix sind völlig ausreichend.', 'Reviewed in Germany on 4 September 2020', 5, 43),
(493, 'La camara aparentemente bien. Al intentar comprobar numero se diaparos no los muestra. Despues de varios diaparos sigue mostrando 1 disparo realizado. Esta retocada para no mostrar disparos reales', 'Reviewed in Spain on 5 January 2021', 5, 43),
(494, 'Angesichts des seht günstigen Preises war ich mir nicht sicher, ob ich wirklich eine neue Kamera geliefert bekommen würde, aber in der Tat: Die Kamera war wirklich neu. Die Möglichkeiten der D5 finde ich sensationell gut, insbesondere die Anzahl der Messfelder für Autofocus. Bisher war die 1D Mark III meine Nummer eins. Jetzt nehme ich sie nur noch als Backup-Kamera. Guter Händler!', 'Reviewed in Germany on 29 March 2020', 1, 43),
(495, 'Teure, aber trotz ihres Alters (Modell von 2016) immer noch zeitgemäße Kamera. Alle kreativen Optionen offen!', 'Reviewed in Germany on 21 February 2020', 5, 43),
(496, '買ってすぐ毛のクズがポロポロ落ちてた洗面台でポンポン叩くとまたポロポロと…さすがに毛クズ出すぎじゃないですか？ノリのベタベタは布製品だし仕方ないとして毛クズが酷いですね まぁ値段相応なのかな追記 2日後もずっとポロポロ毛クズが落ちるとてもイライラする 星１に変更します', 'Reviewed in Japan on 29 April 2020', 4.5, 45),
(497, 'Bought due to the times we currently live in where getting a haircut is no longer an option. My hair was getting so long, I was no longer able to watch tv without it getting in my hair and transforming my look into something that would have fit into a 90s boyband! As a last resort before shaving my hair off and becoming a thug lookalike, I bought this and it is brilliant! I can actually see things now... although now I look like a wannabe Christian Ronaldo (or however you spell his name!)', 'Reviewed in the United Kingdom on 2 May 2020', 1, 45),
(498, 'Brilliant. Finally found something that fits my tiny pea head. Fits well and stays on. I don’t think it would fit so well or at least feel as comfortable on someone with a normal or slightly bigger head, probably best to avoid if you have a massive melon head.Not had a full on proper sweaty workout yet since getting it but I’d expect it will keep the sweat out of my eyes much better than not wearing anything all.I really only bought it to keep straggly bits of hair off my face which it does.', 'Reviewed in the United Kingdom on 25 June 2020', 5, 45),
(499, 'I sweat alot and this did not work, not sure wether I sweat too much or if this is a substandard product.  I expected more with it being Nike but no.  It is not like I had to wring it out or anything,  I sweat from my head and it runs down my face, this should stop that right?  But this one didn\'t.', 'Reviewed in the United Kingdom on 12 October 2019', 4, 45),
(500, 'Probably a fake but it does the job.', 'Reviewed in the United Kingdom on 19 June 2021', 3, 45),
(501, 'I thought it’d fully cover my forehead so protect against cold wind. But well, not really my style. It’s too thin.', 'Reviewed in the United Kingdom on 5 December 2020', 5, 45),
(502, 'best Head band', 'Reviewed in the United Kingdom on 1 May 2019', 2, 45),
(503, 'Doesn\'t last long in the wash. Gets tatty looking very quickly. I have similar under armour bands and they\'re far superior quality.', 'Reviewed in the United Kingdom on 4 August 2020', 5, 45),
(504, 'Covid-19 has ruined my hairdresser and she is not longer there; at the corner of my street. It is now six months and I have to keep the unruly mop in place until I can find a new hairdresser (not barber) to replace  him/her/him/her.It reminds me of my \'hippy days\' when I had hair flowing down my back. But I have the \'swoosh\' logo, which should dispel all thoughts of \'hippiedom\'!', 'Reviewed in the United Kingdom on 20 September 2020', 2, 45),
(505, 'Before i bought it , i checked the reviews and the majority are happy. Bought two..and the two of them are falling apart on me after one use. I wore them on runs and after taking them off ..both times i had a streak of fluff across my forehead. Not as good as some other headbands at catching the sweat. I expected more off nike, and hope i just got a rare bad batch. They were cheap though', 'Reviewed in the United Kingdom on 25 August 2021', 5, 45),
(506, 'حلو بالنسبة لفلوسه بس فيه اتجاه تقيل عندي والزرارين الي فوق صوتهم عالي جدا اكنه صوت كليك ماوسبعد شهرين فيه زرار باظ للاسف مانصحش حد يشتريهللدراع بدأ يعلق جامد بعد فترة', '17 October 2021', 4.3, 46),
(507, 'الازرار بتعمل صوت عالي مش زي الاصلية بس الكوالتي معقولة', '13 September 2021', 4, 46),
(508, 'The product arrived not working trash quality and the  packing isn\'t tight', '7 September 2021', 1, 46),
(509, 'جيد جدا', '7 November 2021', 1, 46),
(510, 'المتنج مستعمل و متسخ ولا يعمل و التغليف تالف .. عدم مصداقية', '18 October 2021', 4, 46),
(511, 'I have bought two controllers and they worked', '6 February 2022', 1, 46),
(512, 'المنتج لا يعمل باى شكل نهائى', '13 October 2021', 4, 46),
(513, 'الإيجابيات:أداء جيد جدا بسعر معقول جدا و التوصيل تم قبل الموعد المسجل.السلبيات:أحيانا قد لا تكون الاستجابة بالسرعة المطلوبة بالنسبة لزر الأتجاهات اليسرا لكن يمكن التغاضي عن ذلك.إيجابيات هذا المنتج:أداء جيد جدا بسعر معقول جدا و التوصيل تم قبل الموعد المسجلسلبيات هذا المنتج:في بعض الالعاب التي تحتاج سرعة رد فعل قد لا تكون الاستجابة بالسرعة المطلوبة بالنسبة لزر الأتجاهات اليسرا', '14 February 2019', 1, 46),
(514, 'السلك تالف عند توصيل السلك لاول مره بالجهاز لم يستجب للويندوز وبعد محاولات وجدت ان السلك تالف ويعمل عند ثنيه فقط. العلبه الخاصه بالمنتج لم تكن محكمة الغلق ومفتوحة من قبلإيجابيات هذا المنتج:التوصيل سريعسلبيات هذا المنتج:تالف', '2 November 2020', 5, 46),
(515, 'يد تحكم أكثر من رائعة مقارنة بسعرها المعقول جدًا وجودتها الممتازة التي ستشعر بها بمجرد الإمساك بها، بالإضافة لسهولة توصيلها بالحاسب الشخصي واستخدامها مباشرة.إيجابيات هذا المنتج: الجودة والأداء ممتازان، تتعرف بشكل مباشر مع ويندوز 10.سلبيات هذا المنتج:قرص التعريفات غير مرفق في العلبة، وتحتاج لتنزيل التعريف من موقع مايكروسوفت في حالة استخدام ويندوز 7 أو أقل.', '25 July 2018', 1, 46),
(516, 'حبيتهاااااا تمنيت انها باللغة العربية لكن غير مشكلة عجبني الجرافيكس فيها وصلني الشريط مغلف جديد اشكر البائع على الاهتمام بالمنتج ووصوله للعميل بأفضل حال انصح بالشراء منهإيجابيات هذا المنتج:رائعة واسطورة تشبه كثير هوريزن الجرافيكس رائع والألوان جميلة حبيناهاسلبيات هذا المنتج:لا يوجد شكرا لكم سوق كوم اهتمام بالاغراض ماشاء الله بالاغراض انتوا شركة رقم ١ لدي', '28 February 2019', 4.6, 48),
(517, 'ينصح باللعبة كبار السن ، وخاصة من يفهم ويقرأ في الأساطير القديمةبها ألفاظ قد يسيء فهمها بعض الناس مثل الألهة والموت للإله وسأهزم الإله وهكذافي المجمل هي لعبة مسليةأرجو إضافة اللعب الجماعي لو في حجرة منفصلة مثل كول أوف ديوتي مثلاكما أرجو أن تكون هناك حجرة للتمارين على كل المهاراتإيجابيات هذا المنتج:ممتازة - صوت صورة قصة ، إمكانيات ، تحدي كبير - تحديث باستمرار للأسلحةسلبيات هذا المنتج:عدم القدرة على تخطي الحوارات الطويلة', '20 July 2019', 5, 48),
(518, 'في قمة الروعة والجمال', '23 October 2019', 5, 48),
(519, 'GREAT GAME WORTH THE PRICE', '4 December 2018', 5, 48),
(520, 'تماما كما بالوصف.. السعر ممتاز والتوصيل سريع جدا', '17 November 2019', 5, 48),
(521, 'really great game', '11 June 2018', 5, 48),
(522, 'ممتازة جداً', '30 March 2020', 5, 48),
(523, 'جرافيك عالي جدا خصوصا مع تليفزيون الفور كيه', '4 February 2019', 5, 48),
(524, 'THUMBS UP!', '15 October 2018', 5, 48),
(525, 'Best entry so far on the GOW franchiseWhat\'s good about this product:Wonderful story', '12 January 2019', 5, 48),
(526, 'اللعبة حلوة و ممتعة و التغليف ممتاز بس بصراحة مش متأكد اذا اللعبة جديدة او مستعملة بس الي عجبني انها وصلت اسرع من المتوقع كان لازم توصلني 22 الشهر بس وصلتني 19 الشهر شكرا', '20 December 2021', 4.3, 47),
(527, 'القلتشات كثير نوعاًما', '15 March 2022', 5, 47),
(528, 'perfect', '27 January 2020', 1, 47),
(529, 'ExcellentWhat\'s good about this product:جيد', '3 October 2018', 5, 47),
(530, 'رائعه شكرا للبائع وشكرا لسوق .', '12 October 2019', 4, 47),
(531, 'لعبه رائعهإيجابيات هذا المنتج:رائعهسلبيات هذا المنتج:لا توجد', '16 December 2018', 5, 47),
(532, 'جديد بغلافة', '12 November 2018', 4, 47),
(533, 'المنتج اصلي والسعر جيد جدا عن المنافسينإيجابيات هذا المنتج:1.المنتج اصلي - 2.السعر جيد', '1 August 2019', 5, 47),
(534, 'سلعة اصلية ووقت قياسي في التوصيلشكراًَ', '31 October 2018', 5, 47),
(535, 'Super expensive', '4 January 2022', 5, 47),
(536, 'رائعه شكرا للبائع وشكرا لسوق .', '12 October 2019', 4.4, 49),
(537, 'Best game everWhat\'s good about this product:the absolute bestWhat\'s not so good about this product:nothing', '30 March 2017', 5, 49),
(538, 'جميله', '20 January 2022', 5, 49),
(539, 'This really is the game of the year edition the best game ever the Witcher 3 with all the expansion a massive RPG game open world you will never regret buying this game the Witcher 3 the game of the year edition it\'s a must have game for your collection you can\'t go wrong I recommend this to all the players who loves to play games.', 'Reviewed in the United Arab Emirates on 2 March 2020', 5, 49),
(540, 'Awesome rpg I am fan of the books and now the games it\'s a different world recommend it to any one who want a new taste of old medieval monster Fantasy', 'Reviewed in the United Arab Emirates on 15 December 2019', 5, 49),
(541, 'I ordered the item Aug 11,2020 and arrive Aug 13 but to my surprise and frustration... the cd case was tampered and the cd was missing. I will not change my review not untill  i receive a replacement. Be careful in ordering... just a precaution.', 'Reviewed in the United Arab Emirates on 13 August 2020', 5, 49),
(542, 'This game is actually Pretty fun for what i’ve seen but its not the game my brother wanted.. so i asked for a refund and they said (Ur refund had been issued) can someone explain what does it mean', 'Reviewed in the United Arab Emirates on 5 January 2021', 1, 49),
(543, 'A beautiful game with hours upon hours of fun and I would recommend this seller', 'Reviewed in the United Arab Emirates on 2 November 2019', 5, 49),
(544, 'the game was delivered on time and the service was perfecti enjoyed playing the game every second of it', 'Reviewed in the United Arab Emirates on 16 November 2020', 5, 49),
(545, 'Came as described!!', 'Reviewed in the United Arab Emirates on 25 September 2020', 5, 49),
(546, 'اللعبة وصلت تغليف ممتاز ومن يسأل باللغة العربية اللعبة تدعم العربية.', '17 February 2022', 4.8, 50),
(547, 'حلوه جدا اللعبه', '21 January 2022', 5, 50),
(548, 'Vraiment excellent, l\'histoire supplémentaire nous amène sur une petite île située entre Tsushima (ou se déroule le jeu de base) et l\'île principale du Japon. On y apprend beaucoup de choses concernant le passé de Jin et surtout de son clan. Le gameplay est toujours aussi qualitatif, les ennemis sont plus fort et des nouveaux \"moyens d\'attaquer\" permettent un renouveau qui ne nous fait pas nous lasser du jeu.', 'Reviewed in France on 26 August 2021', 5, 50),
(549, 'Je suis gamer depuis les années 90 et ça faisait longtemps que je n\'avais pas vu un jeu aussi bon, tout y est !Graphisme magnifique, scénario prenant, gameplay jouissif ! Honnêtement j\'en ai eu pour mon argent et c\'est assez rare en 2021 dans les jeux vidéo en général.', 'Reviewed in France on 22 September 2021', 5, 50),
(550, 'Je ne le trouvais nulle part hormis ici. Et le jeu… juste le meilleur selon moiPour les fans d’AC ils seront ravis !', 'Reviewed in France on 20 October 2021', 5, 50),
(551, 'Acheté pour ps5.J\'adore le Japon donc je ne pouvais pas faire autrement que de l\'acheter.Je n\'ai pas été déçu par les graphismes et l\'histoire.Le seul point négatif ce sont les scènes cinématographiques trop longues que l\'on ne peu pas passer.', 'Reviewed in France on 23 January 2022', 5, 50),
(552, 'excellent jeux une ambiance extraordinaire et des graphismes a couper le souffle. je suis au début de l aventure et pour le moment je me régale', 'Reviewed in France on 15 October 2021', 4, 50),
(553, 'J adore le jeu mes grosse deception j ai reçu la boîte du jeu cassé heureusement j en avait une de vide ses pour cela que j ai mis 3 étoiles si j avait reçu la boîte en bonne état j aurai mi 5 étoile donc 2 étoiles en moins juste pour l état de la boîte .', 'Reviewed in France on 4 September 2021', 5, 50),
(554, 'Ça faisait vraiment longtemps qu’un jeu ne m’avais pas autant transporté dans son monde, le jeu est magnifique et l’histoire est vraiment sympa.Le gameplay est très plaisant, ayant fait le jeu en mode létal j’ai vraiment adoré les combats contre des groupes sont très intenses, vous n’avez pas le droit à l’erreur et les duels sont vraiment incroyable.', 'Reviewed in France on 18 January 2022', 3, 50),
(555, 'Parfait rien à dire...je ne vois aucun défaut. Histoire graphisme game play. Temps de chargement inexistant.Merci', 'Reviewed in France on 8 January 2022', 5, 50),
(556, 'كنت خايف اشتريه اونلاين  لكن المنتج اصلى والتغليف الاصلى لشركة ابل', '12 November 2021', 4.9, 51),
(557, 'Genuine with low price, valid serial number', '6 January 2022', 5, 51),
(558, 'اصليراجعته ع برنامج apple supportارخص من السوق برا', '23 November 2021', 5, 51),
(559, 'Original and works perfectly', '1 February 2022', 5, 51),
(560, 'منتج اصلي والشحن ممتاز', '22 November 2021', 5, 51),
(561, 'Great thank you', '8 February 2022', 5, 51),
(562, 'تغليف رائع والمنتج اصلي', '25 February 2022', 5, 51),
(563, 'كنت خايف جدا اشتريه من سوق ، لكن لما اشتريته كان بتغليف ابل ودخلت السيريال على موقع ابل لاقيته لسه محدش فعله ، وفعلته على الاكونت الشخصي بتاعي ، تجربة ممتازة ، والسعر ارخص من برة حوالي 500 جنيه', '17 January 2021', 5, 51),
(564, 'Perfect', '3 February 2021', 5, 51),
(565, 'منتج جيد وأصلي ، والشحن تم سريعاإيجابيات هذا المنتج:منتج جيد وأصلي', '3 February 2020', 5, 51),
(566, 'Product is defective. After only 2 weeks of use it almost light the room on fire and stopped working. Would not recommend', '7 November 2021', 3.2, 52),
(567, 'It\'s not working and I requested to return it and they didn\'t pick it up till know, not have  I received my money yet', '21 October 2021', 5, 52),
(568, 'المنتج ليس اصليو علبه الشاحن مفتوحهلا أحبذ شراءه من هنا', '24 November 2021', 1, 52),
(569, 'مش اصلي', '6 September 2021', 1, 52),
(570, 'تقليد', '20 November 2021', 1, 52),
(571, 'Seller: Amazon.eg \"Original\"Original 20W USB-C Adapter with huge discount!! Marvelous Deal.', '21 September 2021', 1, 52),
(572, 'منتج اصلى ١٠٠٪؜ طالما امازون هى البائع ، سعر مناسب  و جودة شركة ابل 💚', '26 October 2021', 1, 52),
(573, 'منتج أصلي', '26 November 2021', 1, 52),
(574, 'المنتج مزيف', '5 September 2021', 5, 52),
(575, 'ممتاز جوده عاليه', '2 December 2021', 5, 52),
(576, 'Best iphone ever. Nothing to complain except its priceWhat\'s good about this product:Best Iphone ever. Cool features,great screen and super fastWhat\'s not so good about this product:The price!', '10 November 2018', 3.4, 53),
(577, 'طلب في بدايه الحجر ومع ذالك وصل في الوقت المناسب شكرا سوق كم .المنتج غني عن التعريف ولكن شدني طريقه تغليفه للحفاظ عليه من الشحن او حراره الجو أكرر شكري', '8 June 2020', 5, 53),
(578, 'والله كنت داخل اشتريه لاقيت سعره زاد 900 جنيه ، بدون اي سبب ، شكرا ، خليه ..', '29 December 2021', 1, 53),
(579, 'رااائع ، وحتى الآن لا مشاكل ، شكرا سوق كوم', '7 January 2019', 5, 53),
(580, 'الموبايل عند البيع تم اكتشافه انه مفتوح', '20 February 2021', 5, 53),
(581, 'Awesome', '28 November 2018', 1, 53),
(582, 'ممتاز كالعادة من سوقوالتوصيل اسرع ما يمكنشكرا سوق', '9 June 2020', 5, 53),
(583, 'للمساعدة في التحسينإيجابيات هذا المنتج:إلى الآن لم أجد مشاكل في نفس السلعةسلبيات هذا المنتج:التأخير في تسليمه عن الموعد المحدد', '4 January 2019', 5, 53),
(584, 'المنتج ممتاز واصلي و في غلافه الأصلي ولكن مدة التوصيل كانت طويله الى حد ما', '11 May 2019', 5, 53),
(585, 'منتج رائع وتسليم قبل الوقت المتوقع وسعر رائع شكرا سوق', '1 December 2018', 5, 53),
(586, 'جميل', '30 November 2021', 4.6, 54),
(587, 'Ordered on 17 Dec and delivered on 22 Dec in good condition.Same specifications as advertised.Highly recommend buying from the seller.***After activation, I’ve received 1 year warranty and Apple TV+ free for 3 month***', '22 December 2021', 5, 54),
(588, 'وصل قبل الموعد المحدد... المنتج ممتاز وأصلي من شركة آبل', '6 January 2022', 5, 54),
(589, 'iPad Prob12.9!inch 2021 is an absolute delight to use. I am a person who takes a lot of notes while working. This iPad with the Apple Pencil and notability has digitalised my notes. I thought the size would be too big and it would be too heavy to handle. All YouTube review videos were stating that in case of portability you need to buy the 11 inch version. I would say that feedback isn’t correct. If you can afford it, then indeed go for it. Absolute value for money. Plus Amazon has great offers. Grab it when you can.', 'Reviewed in the United Arab Emirates on 5 February 2022', 5, 54),
(590, 'One of the greatest tablet experience, awesome performance and integration of the apple pencil', 'Reviewed in the United Arab Emirates on 12 August 2021', 5, 54),
(591, 'I dont have any words for this item.  Its just brilliant from apple.', 'Reviewed in Saudi Arabia on 22 March 2022', 5, 54),
(592, 'Original and sealed pack iPad delivered on time. UAE Version', 'Reviewed in the United Arab Emirates on 10 December 2021', 5, 54),
(593, 'افضل بوكس لبث المحتوى جودة اداء حتى البرامج فيه غير وافضل من اندرويد وباقي المنصات جودة التطبيقات عالية', 'Reviewed in Saudi Arabia on 8 December 2021', 5, 55),
(594, 'Apple devices are well known..excellent and happy to buy it', 'Reviewed in the United Arab Emirates on 15 March 2022', 5, 55),
(595, 'Fast, smooth and the best UI for TV boxes. Very pleased', 'Reviewed in the United Arab Emirates on 3 March 2022', 5, 55),
(596, 'وحش جدا ومش اصلي', '7 March 2022', 4.6, 56),
(597, 'great', '7 April 2018', 1, 56),
(598, 'low quality', '18 September 2018', 5, 56),
(599, 'Perfect', '11 November 2018', 2, 56),
(600, 'I read the several negative reviews about this product and had doubts. But I decided to go for it either way. The box looked like it did come from Apple and everything looked okay. The box came with two power cable options - one with a cable for extra length and another that was just a plug head. The power cable seems thick enough and left a white residue when I rubbed my hands over it a few times.I plugged it into my MacBook Pro 2015 and it charged it quite quickly, compared to my previous 45W charger I had before (this one\'s the 85W version). The 45W version couldn\'t keep up with power-intensive applications that drained the battery faster than it could charge it. I\'ll see how the 85W version will fare with the same apps.I will definitely keep an eye on the charging port to make sure it doesn\'t get burned as reported by other users. Will give an update after about six months, if I remember and if nothing goes wrong.', 'Reviewed in the United Kingdom on 17 January 2020', 5, 56),
(601, 'One of the  reviews said this wasn\'t a genuine Apple Magsafe 2, well that\'s a load of rubbish, it is the genuine article. It\'s exactly the same as the Magsafe you did have but has broken/ lost/ stolen by someone from Sales team at work, resulting in you having to buy this one. The price is steep, but it\'s well engineered and packaged and more importantly will not upset your macbook and cause it to overheat. You get what you pay for.....Nothing else to say really.', 'Reviewed in the United Kingdom on 6 July 2020', 5, 56),
(602, 'I have owned my Macbook Pro for eight years and gone through two MagSafe 2 power cables. The second one broke this week and I needed a third. I was a bit hesitant to order based on comments about it not being legit.I can assure you that it is. Yes, the transformer does get very hot but so did my other two. I purchased the first when I brought the computer and the second from the Apple store a few years back. Due to lock down I ordered it here. The build and quality are identical as my other two.', 'Reviewed in the United Kingdom on 24 May 2020', 5, 56);
INSERT INTO `reviews` (`review_id`, `Review`, `Date`, `stars`, `product_id`) VALUES
(603, 'Ignore comments made by others saying this is fake - It\'s not. This is the genuine charger as supplied by Apple. Even the box and packaging is obviously Apple quality. It comes with two UK 3 pin plugs - one on a nice long power lead, and the other which attaches direct to the charger body. Not cheap at £76 but it pays to buy the real thing.', 'Reviewed in the United Kingdom on 11 July 2020', 4, 56),
(604, 'The apple cables are a complete disgrace, for what is supposed to be a top of the range product. They are not properly protected at the ends where bending is worst, so they perish and fatigue very quickly. Is this built in redundancy? I have now owned over 30 Macs starting with an Apple 2e. Build quality reliability and after care service has always been top end. Not any more. You don\'t have a choice in what you buy but each time I replace one of these I get more and more annoyed with Apple.', 'Reviewed in the United Kingdom on 18 September 2016', 5, 56),
(605, 'I had to buy this Apple MagSafe charger recently only because the previous non-Apple charger I bought was a complete waste of money and a fire hazard. The original Apple charger I got with my MacBook Pro Retina had worn out over the years as the cable stems are very weak and poorly made. So this recent buy (charger #3) seemed to be the only option. The charger is good but incredibly overpriced for what it is. As mentioned, the cable stems are very weak and easily susceptible to wear and tear, and the magnetic connector to my laptop is not very secure and tends to disconnect very easily if I happen to use the laptop on the sofa or my bed. I guess this Apple version is worth buying purely because the cheaper alternatives are so flimsy and dangerous. But all in all, this is just an extremely overpriced plug with design flaws, let\'s face it.', 'Reviewed in the United Kingdom on 23 June 2021', 1, 56),
(606, 'نشكركم على المنتج الرائع ولكن المنتج جاء بدون شهادة ضمان تحمي حقوق المستهلك .رجاء ذكر ذلك فى الإعلان حيث ان شهادة الضمان مهمة للكثير من المستهلكين .', '15 March 2022', 4.4, 57),
(607, 'Other that the jealy scrolling issue and being a 60hz display it’s a perfect tablet for reading and travel with', '8 February 2022', 5, 57),
(608, 'ممتاز و اصلي', '7 March 2022', 4, 57),
(609, 'كيف نجيبه دا 😭😭', '4 January 2022', 5, 57),
(610, 'This iPad are the best tablet for portable  and it can do  every things  you want  but you must  Visit store and make sure your eyes comfort with this screen before you buy', '7 March 2022', 5, 57),
(611, 'الشاشه غير جيده ولا تتناسب مع اصدارات سنة 2021', 'Reviewed in Saudi Arabia on 20 November 2021', 5, 57),
(612, 'منتج رائع جداً خفيف الوزن ومناسب لجميع الأعمال وأنيق وجودة لامثيل لها ومواصفات رائعة', 'Reviewed in Saudi Arabia on 2 November 2021', 4, 57),
(613, 'جميل صراحة أخذته لطفلي في الصف الثاني للدراسه عن بعد...👍🏻والأجمل اني طلبته وماكملت يوم الا واصلني ماشاءالله♥️..', 'Reviewed in Saudi Arabia on 8 November 2021', 5, 57),
(614, 'اول ايباد اخذه وانا مرتاح 👌🏻', 'Reviewed in Saudi Arabia on 8 October 2021', 5, 57),
(615, 'كل شي تمام ووصل سليمشكراً لامازون على التوصيل السريع', 'Reviewed in Saudi Arabia on 28 December 2021', 5, 57),
(616, 'FastWhat\'s good about this product:OriginalWhat\'s not so good about this product:Nothing', '23 March 2019', 4.6, 58),
(617, 'Love itWhat\'s good about this product:GreatWhat\'s not so good about this product:Nothing', '15 November 2016', 5, 58),
(618, 'رااااااائع', '24 December 2018', 2, 58),
(619, 'Perfect  Thanks', '5 October 2017', 5, 58),
(620, 'original', '3 September 2017', 5, 58),
(621, 'Great mouse', '29 June 2018', 5, 58),
(622, 'Best mouse everWhat\'s good about this product:Original!', '15 April 2019', 5, 58),
(623, 'Awsome mouse, really magical...', '2 October 2018', 5, 58),
(624, 'I love this apple original I like', '7 November 2018', 5, 58),
(625, 'perfect', '4 December 2018', 5, 58),
(626, 'great', '2022-07-05 21:59:41', 4, 37),
(627, 'wow', '2022-07-05 22:21:08', 4, 37),
(628, 'wow', '2022-07-05 22:22:03', 4, 37),
(629, 'good', '7/11/2022', 4.5, 1),
(630, 'great', '7/11/2022', 4.7, 2),
(631, 'wow', '7/11/2022', 4.7, 2),
(632, 'great game for ever', '11-16-2022', 4, 51),
(633, 'great', '11-24-2022', 4, 55),
(634, 'great', '11-27-2022', 4, 48),
(635, 'great', '11-28-2022', 4, 48),
(636, 'great', '11-31-2022', 5, 51),
(637, 'fantastic', '11-33-2022', 5, 48),
(638, 'cool game', '11-34-2022', 5, 48),
(639, 'cool game', '11-34-2022', 5, 48),
(640, 'wowww', '11-07-2022', 5, 48),
(641, 'woooow', '11-07-2022', 5, 48),
(642, 'wonderful game', '11-07-2022', 5, 48),
(643, 'great', '11-07-2022', 5, 48),
(644, 'so cool', '11-07-2022', 5, 48),
(645, 'so good', '11-07-2022', 5, 48),
(646, 'great pin', '11-07-2022', 5, 51),
(647, 'flixable', '11-07-2022', 5, 51),
(648, 'cool', '11-07-2022', 5, 51),
(649, 'great ipad', '11-07-2022', 5, 54),
(650, 'gigi', '11-07-2022', 5, 48),
(651, 'cool', '12-07-2022', 4, 54),
(652, 'good', '2022-07-14 11:52:44', 5, 2),
(653, 'great', '2022-07-14 11:53:52', 5, 48),
(654, 'wow', '2022-07-17 13:41:23', 5, 48),
(655, 'cool', '7/17/2022', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `review_users`
--

CREATE TABLE `review_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `country`, `gender`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 'mahmoud', 'amr', 'mko', 'amr12@gmail.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC92MVwvbG9naW5zcyIsImlhdCI6MTY1MzQ5NzkwMiwiZXhwIjoxNjUzNTAxNTAyLCJuYmYiOjE2NTM0OTc5MDIsImp0aSI6IjZlVFY4al', 'egypt', 'male', NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'amr128@gmail.com', '$2y$10$68c859pAwVoWMnBXl2lmnOiXe4PR1PC7V36de8uZ.tipAvjh003Pu', NULL, NULL, NULL, '2022-05-25', '2022-05-25'),
(3, 'mahmoud', 'nabih', 'mnabeh', 'nabeh01@gmail.com', '$2y$10$zAyAjpZByMaU8okaH/E5GObsVTQCh57eDoeMjzLoBlLqpzLiZtGj6', NULL, NULL, NULL, '2022-05-26', '2022-05-26'),
(4, NULL, NULL, NULL, 'amr1298@gmail.com', '$2y$10$Tvlc/qIwiqCx.xu2P1H/fOQQu/Jy08tzPFFsgVBHSPV8zrjJc7XSq', NULL, NULL, NULL, '2022-05-26', '2022-05-26'),
(5, NULL, NULL, NULL, 'amr198@gmail.com', '$2y$10$4QICwJfHM2OjdbLCsktzaucEFTimF1mgSlRziWtwTcphoOmTiZpqu', NULL, NULL, NULL, '2022-05-26', '2022-05-26'),
(11, 'ali', 'amr', 'alik5', 'amr1698@gmail.com', '$2y$10$1mMxeXFXGzkofjIgFOsICu4O16aPhJgQqDak4F3DWi5hjCArO/wfC', 'egypt', NULL, NULL, '2022-05-26', '2022-05-26'),
(12, 'amr', 'ali', 'amr05', 'amr125@gmail.com', '$2y$10$/MHrDFkVsoRxVVWxi8T7j.kIGB/Ku3heqtmAE/0CnwYt4LLI7KWpS', 'egypt', NULL, NULL, '2022-05-26', '2022-05-26'),
(13, 'ali', 'adel', 'ali54', 'ali157@gmail.com', '$2y$10$tZg4PsPTsVKwYxHJscvH..RKyCL59uD3Hfgcb2Rh/WkLOWuk14yve', 'egypt', NULL, NULL, '2022-05-26', '2022-05-26'),
(14, 'ali', 'amr', 'ali01', 'mahmoud1698@gmail.com', '$2y$10$hcpuT.A5/OGbSh/DBOgPF.0NZt8embyBOb8ZsIqEm71NMzfs.Gkpq', 'egypt', NULL, NULL, '2022-07-01', '2022-07-01'),
(16, 'ali', 'kamel', 'ali0', 'ali45@gmail.com', '$2y$10$k1WTprsOyQvDzAINRGO9HOZKxkCWszLxJpg9qCLxL69/xTpMpg9u.', 'egypt', 'male', NULL, '2022-07-01', '2022-07-01'),
(18, 'karim', 'nabeh', 'aljk', 'mahmoud_nabeh_f@gmail.com', '$2y$10$T192mUF3h9RSXvS1jmBvL.PEFF2spXZpTSLdLPx4hxrW4ASp9eMna', 'egypt', 'male', NULL, '2022-07-03', '2022-07-03'),
(19, 'mahmo', 'nabeh', 'mknabeh', 'mn_a12@gmail.com', '$2y$10$WqZXPXXXTzIRFTNr79qH0exyNg72bxLbZpq3BCSvZQO.eLvSMVrdi', 'egypt', 'male', NULL, '2022-07-03', '2022-07-03'),
(27, 'karim0', 'nabeh', 'aljk02', 'mahmoud_nabeh_f02@gmail.com', '$2y$10$jmSQq8umPiXgHR5QuG3LnOw1NVGo0pWr7oQhpKbLskL.syYIQnnr2', 'egypt', 'male', NULL, '2022-07-11', '2022-07-11'),
(31, 'ali', 'kamels', 'fady02', 'amr029@gmail.com', '$2y$10$VwpWCVb7XsQqMnpqeXd8Z.p4vvBXSMJQTKtmLOz9VkQ43buIJWJPC', 'egypt', 'male', NULL, '2022-07-11', '2022-07-11'),
(32, NULL, NULL, NULL, 'mofady02@gmail.com', '$2y$10$KJkJz77V5t5BwPbKKB5yAu3NVNzJZDAfR2u13CqZfpWVFPOpNwPB.', NULL, NULL, NULL, '2022-07-17', '2022-07-17'),
(33, NULL, NULL, NULL, 'mn_a197@gmail.com', '$2y$10$zXi/f201Xn/Pm4cw2migueMBSIEon/a.1W3SiOzXTmtYyOjF5r2Ay', NULL, NULL, NULL, '2022-07-17', '2022-07-17'),
(34, NULL, NULL, NULL, 'peter02@gmail.com', '$2y$10$rz/5g8zGe8t7z4fNZ5urEehqjy2j1nM6h0lJMCd7smyYRBPqnXExK', NULL, NULL, NULL, '2022-07-17', '2022-07-17'),
(35, NULL, NULL, NULL, 'kamel05@gmail.com', '$2y$10$yqoOQqC5870zJmJx7nsfDe4jbRA.NHYL.vJ6ag2X1B6jBpvVX4mau', NULL, NULL, NULL, '2022-07-17', '2022-07-17'),
(36, 'peter', 'adel', 'peter05', 'peter08@gmail.com', '$2y$10$G6rvLSFWIl/UIXpgwO8yp.j7IISr92qFyKJBPyGDZiqcNM9.rpBD2', 'egypt', 'male', NULL, '2022-07-17', '2022-07-17'),
(37, 'seif', 'gad', 'seif03', 'seif03@gmail.com', '$2y$10$Z/o9kjexhoyQ0RLQVAA6h.a1OmuXt9pAONuOxx1zavscEdFiVQada', NULL, NULL, NULL, '2022-07-17', '2022-07-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `cat_brand`
--
ALTER TABLE `cat_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1` (`brand_id`),
  ADD KEY `f2` (`catogry_id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`image_id`),
  ADD KEY `products_ibfk_2` (`category_id`),
  ADD KEY `products_ibfk_3` (`brand_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `reviews_ibfk_2` (`product_id`);

--
-- Indexes for table `review_users`
--
ALTER TABLE `review_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_users_ibfk_1` (`image_id`),
  ADD KEY `review_users_ibfk_2` (`review_id`),
  ADD KEY `userforeign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_brand`
--
ALTER TABLE `cat_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `review_users`
--
ALTER TABLE `review_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cat_brand`
--
ALTER TABLE `cat_brand`
  ADD CONSTRAINT `f1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `f2` FOREIGN KEY (`catogry_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `img` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `review_users`
--
ALTER TABLE `review_users`
  ADD CONSTRAINT `review_users_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `img` (`id`),
  ADD CONSTRAINT `review_users_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`review_id`),
  ADD CONSTRAINT `userforeign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
