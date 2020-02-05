-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2020 at 03:17 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `union`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_destination`
--

CREATE TABLE `category_destination` (
  `id_category` int(2) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_destination`
--

INSERT INTO `category_destination` (`id_category`, `category_name`, `icon`) VALUES
(1, 'Mountain', 'flaticon-003-mountains-1'),
(2, 'City', 'flaticon-004-tent-1'),
(3, 'Traditional Market', ''),
(4, 'Palace', ''),
(5, 'Island', ''),
(6, 'Beach', ''),
(7, 'Temple', ''),
(8, 'Village', '');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id_destination` int(3) NOT NULL,
  `destination_name` varchar(100) NOT NULL,
  `id_category` int(2) NOT NULL,
  `overview` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id_destination`, `destination_name`, `id_category`, `overview`, `images`, `map`) VALUES
(1, 'Mount Ijen', 1, '', '', ''),
(2, 'Mount Bromo', 1, '', '', ''),
(3, 'Malang', 2, '', '', ''),
(4, 'Pasar Triwindu', 3, '', '', ''),
(5, 'Keraton Mangkunegaran', 4, '', '', ''),
(6, 'Kelud', 1, '', '', ''),
(7, 'Menjangan Island', 5, '', '', ''),
(8, ' Pemuteran', 6, '', '', ''),
(9, 'Mojokerto', 2, '', '', ''),
(10, 'Mount Semeru', 1, '', '', ''),
(11, 'Mount Merapi', 1, '', '', ''),
(12, 'Solo', 2, '', '', ''),
(13, 'Surakarta', 2, '', '', ''),
(14, 'Borobodur', 7, '', '', ''),
(15, 'Yogyakarta', 2, '', '', ''),
(16, 'Wonosobo', 2, '', '', ''),
(17, 'Salatiga', 2, '', '', ''),
(18, 'Semarang', 2, '', '', ''),
(19, 'Prambanan', 7, '', '', ''),
(20, 'Kalibaru', 8, '', '', ''),
(21, 'Surabaya', 2, '', '', ''),
(22, 'Ambarawa', 2, '', '', ''),
(23, 'Munduk', 8, '', '', ''),
(24, 'Ubud', 8, '', '', ''),
(25, 'Jimbaran', 8, '', '', ''),
(26, 'Sanur', 6, '', '', ''),
(27, 'Garut Regency', 2, '', '', ''),
(28, 'Bogor', 2, '', '', ''),
(29, 'Jakarta', 2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id_duration` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `night` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id_duration`, `day`, `night`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 3),
(5, 5, 4),
(6, 6, 5),
(7, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(3) NOT NULL,
  `text` varchar(255) NOT NULL,
  `type` enum('in','ex') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `text`, `type`) VALUES
(1, 'Hotel accommodation in half-twin/double room with daily breakfast.', 'in'),
(2, 'Meals as mentioned in the itinerary (B = Breakfast, L = Lunch, D = Dinner).', 'in'),
(3, 'Tours and transfers by private air-conditioned vehicles with cold water and towel provided.', 'in'),
(4, 'Service of English/French/German/Dutch/Spanish speaking local guide.', 'in'),
(5, 'All entrance fees and tours as indicated in itinerary.', 'in'),
(6, 'Empty return to Yogyakarta for vehicle and guide.', 'in'),
(7, 'Accommodation in Bali (e.q Pemuteran or Lovina Beach).', 'ex'),
(8, 'Visa arrangements.', 'ex'),
(9, 'International and domestic flights.', 'ex'),
(10, 'International and domestic departure tax.', 'ex'),
(11, 'Meals other than mentioned above.', 'ex'),
(12, 'Camera/video entrance fees.', 'ex'),
(13, 'Personal expenses (drinks, laundry, telephone, tips etc).', 'ex'),
(14, 'Travel insurance ', 'ex'),
(15, 'Other services not clearly indicated in the package inclusions above.', 'ex');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `id_itinerary` int(5) NOT NULL,
  `id_package` int(3) NOT NULL,
  `day` int(2) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id_itinerary`, `id_package`, `day`, `caption`, `detail`) VALUES
(1, 1, 1, 'SOLO ARRIVAL - SOLO', '<p style=\"color:#007bff\">\r\n    Yogyakarta- Solo Mangkunegaran (55Km): 1h 35 min Mangkunegaran – Triwindu (400m): 5 min walking\r\n</p>\r\n<p>Arrive at Solo from Yogyakarta International Airport.</p>\r\n<p><b><u>Recommended flights</u></b></p>\r\n<p>\r\n    (Airfares are not included and quoted separately. Schedules are subject to change without prior notice)\r\n</p>\r\n<p>\r\n    Silk Air from Singapore to Yogyakarta MI152, departing at 08:00 and arriving at 09:50 on Tuesday, Wednesday, Thursday, Friday and Saturday, or MI154, departing at 13:55 and arriving at 15:25 on Sunday.\r\n</p>\r\n<p>\r\n    Garuda Indonesia from Singapore GA9454, departing 08:00 and arriving 09:50 on Friday, or GA9444 departing at 15:40 and arriving at 17:05 on Sunday\r\n</p>\r\n<p>\r\n    Be met by the local guide and driver upon arrival and be transferred to Solo.\r\n</p>\r\n<p>\r\n    Also known as Surakarta, the city of Solo was founded in 1745 by a local king. The site for the new Mataram Kingdom’s capital was reportedly chosen through voices heard by the king. Solo is the capital of batik in Java and remains home to some of the most intact Dutch colonial architecture in Indonesia.\r\n</p>\r\n<p>\r\n    Visit a well-known batik museum and learn about this famous Javanese art developed through the ages. Also, see craftsmen and women at work making new creations.\r\n</p>\r\n<p>\r\n    Lunch will be served at a local restaurant under a Joglo a Javanese traditional wooden open-building.\r\n</p>\r\n<p>\r\n    Following the lunch, take a walk to antique market Pasar Triwindu.\r\n</p>\r\n<p>\r\n    Check in hotel and spend the remaining of the day is at leisure\r\n</p>\r\n<p>\r\n    Dinner at leisure.\r\n</p>\r\n<p>\r\n    Overnight in Solo.\r\n</p>\r\n\r\n'),
(2, 1, 2, 'SOLO', '<p style=\"color:#007bff\">\r\n        Solo city center – Sukuh Temple – Cetho Temple (41 km): 1 hour 30 minutes each way\r\n        Today’s excursion begins with a visit to Keraton Mangkunegaran - a repository of classical Javanese art.\r\n</p>\r\n<p>\r\n    Built as a palace for a ‘junior’ line of the royal family in the 18th century, the splendid building has an extensive collection of 14th century jewellery, majestic silverworks, traditional Javanese weapons and classical dancing body ornaments.\r\n</p>\r\n<p>\r\n    Continue on for a half-day excursion to Sukuh and Cetho, two of the latest Hindu temples built in Java before the island\'s courts were converted to Islam in the 16th century.  Located on the western slopes of Mount Lawu (3,265m), this area, at the border between Central and East Java, offers spectacular landscapes with terraces covered by beautiful tea plantations \r\n</p>\r\n<p>\r\n    Explore Sukuh, located at 910 metres above sea level, and take a look at its unique pyramidal shape -similar in style to the Mayan temples of Central America and its stone carvings of Hindu phallic symbols.\r\n</p>\r\n<p>\r\n    Stop for lunch on the way to Ceto Temple, at Javadwipa restaurant.\r\n</p>\r\n<p>\r\n    Continue the drive, passing through beautiful tea plantations to Cetho, another Hindu temple located even higher on the mountain and rarely visited. Its carvings are similar to Sukuh Temple, but the multi-tiered temple differs in architectural layout.\r\n</p>\r\n<p>\r\n    Find a starting point at the Kemuning Plantation located 5km higher at an altitude of 1,540m for a small walk to observe the tea plantations of this beautiful plantation founded in 1925 by the Dutch settlers\r\n</p>\r\n<p>\r\n    Return to the hotel in Solo late in the afternoon.\r\n</p>\r\n<p>\r\n    Dinner at leisure.\r\n</p>\r\n<p>\r\n    Overnight in Solo.\r\n</p>'),
(3, 1, 3, 'SOLO – BLITAR BY TRAIN', '<p style=\"color:#007bff\">\r\n        Solo city center – Blitar (228Km): 5 hours Tugu Blitar – Penataran temple(14Km): 25 minutes\r\n        After an early breakfast this morning, be transferred to Solo Railway Station for a scenic train ride to Blitar, in East Java. Be accompanied by the guide during the journey.\r\n</p>\r\n<p>\r\n   <b> <u>Note:</u></b>\r\n</p>\r\n<blockquote>\r\n\r\n    Planned route is aboard Malioboro Express Train from Solo to Blitar, departing 07:30 and arriving 13:46. The schedule is subject to change without notice.\r\n    Full name and passport details are required to book train ticket and must be provided at the time of reservation.\r\n    The evening before, bring down the main luggage to the reception before 22:00 labeled clearly with name and identification. Main luggage will be transferred during the night with the driver and vehicle. Be picked up by the same driver and vehicle the next afternoon on arrival at Blitar Railway station in East Java.\r\n    It is advisable to bring a small bag with a change of clothes, toiletries and a jersey as the air conditioner in the train can be quite chilly.\r\n</blockquote>\r\n<p>\r\n    Travelling by train in Java is a wonderful opportunity to meet local people and is also the best way to enjoy the volcanic landscapes of Central and East Java.\r\n</p>\r\n<p>\r\n    Upon arrival in Blitar , meet with the local driver and be transferred for lunch at Tugu Restaurant.\r\n</p>\r\n<p>\r\n    Early in the afternoon after check-in to the hotel, proceed to Penataran Temple, the largest and most important Hindu temple complex in East Java. It lies just 10 kilometres north of Blitar on the lower slopes of Mt. Kelud . Most of the buildings seen today were constructed during the golden century of Majapahit.\r\n</p>\r\n<p>\r\n    Return to hotel and spend dinner at leisure.\r\n</p>\r\n<p>\r\n    Overnight in Blitar.\r\n</p>'),
(4, 1, 4, 'BLITAR - MALANG', '<p style=\"color:#007bff\">\r\n    Blitar – Kawisari Plantation (38Km): 1hour 25 minutes Kawisari Plantation – Malang (80Km): 2hour 30 minutes\r\n</p>\r\n<p>\r\n    Early morning after breakfast, check-out from the hotel and be transferred to Kawisari Coffee Plantation for a coffee tour.\r\n</p>\r\n<p>\r\n    Surrounded by two mountains Kelud and Kawi, the plantation produces the best quality of coffee beans and has its own secret recipe dating back to the Dutch era. Get on a 4X4 to explore the plantation with an easy trek between. Learn the history of growing the finest Java coffee beans, roasting and processing.\r\n</p>\r\n<p>\r\n    Enjoy lunch prepared by local villagers in Kawisari and also get a chance to taste the variety of arabica and robusta coffee beans.\r\n</p>\r\n<p>\r\n    Following the lunch, continue driving to Malang.\r\n</p>\r\n<p>\r\n    Take a tour of Malang by becak, a local cyclo. The streets of Malang are filled with grand colonial-era buildings. Cruise past historic sites such as the Eng An Kiong chinese temple before arriving at the end point of the city’s Cathedral. Then, go on a walking  tour in the colourful village of Jodipan .\r\n</p>\r\n<p>\r\n    Check-in to the hotel and spend dinner at leisure.\r\n</p>\r\n<p>\r\n    Overnight in Malang.\r\n</p>'),
(5, 1, 5, 'MALANG - BROMO', '<p style=\"color:#007bff\">\r\n    Malang – Pelangi waterfall (32Km): 1 hour Pelangi – Jemplang (9Km): 25 minutes Jemplang – Bromo (12Km): 45 minutes Bromo – Hotel area (Lava View 4Km, Jiwa Jawa Bromo 6Km, Plataran Bromo 17Km ): 17min, 25 min, 1hour\r\n</p>\r\n<p>\r\n    Take a morning walk to flower market in Malang, enjoy the city when the people just about starting the day.\r\n</p>\r\n<p>\r\n    Return to the hotel and be ready for jeep riding towards Mt. Bromo through Jemplang.\r\n</p>\r\n<p>\r\n    Stop by at Pelangi Waterfall and enjoy a catered lunch box here.\r\n</p>\r\n<p>\r\n    Continue driving before making another stop on the southern slope of the caldera with panoramic views of the surroundings. Then driving down the caldera passing through the savanna to reach Mount Bromo.\r\n</p>\r\n<p>\r\n    Walk towards a set of stairs which leads to the rim of the still-active Bromo crater. Enjoy the spectacular atmosphere of the massive caldera as the sun sets in the silence of nature. \r\n</p>\r\n<p>\r\n   <b>Please note:</b> There are horses available for riding with a charge of IDR 150,000 to be paid on the spot.\r\n</p>\r\n<p>\r\n    Return to the jeep and drive to the hotel for check-in.\r\n</p>\r\n<p>\r\n    Dinner at leisure\r\n</p>\r\n<p>\r\n    Overnight at Bromo. \r\n</p>'),
(6, 1, 6, 'BROMO - BANYUWANGI', '<p style=\"color:#007bff\">\r\n        Hotel area – Penanjakan (Lava View 12Km, Jiwa Jawa Bromo 15Km, Plataran Bromo 14Km ): 40min, 55 min, 45 min Pelangi – Jemplang (9Km): 25 minutes\r\n</p>\r\n<p>\r\n    This morning, rise in early dawn for an unforgettable experience of viewing Mount Bromo as the sun rises over its space-like landscape. Travel by 4WD jeep to a viewing spot with stunning views of Bromo volcano and surroundings. Watch the sun rise up from behind the volcano in Penanjakan.\r\n</p>\r\n<p>\r\n    <b>\r\n        <u>\r\n            Please note:\r\n        </u>\r\n    </b>\r\n</p>\r\n<blockquote>\r\n    Please bring warm clothes for the sunrise excursion in Bromo as it will be cold.\r\n    Weekend surcharge USD 10 per person will be applied for visits to Bromo.\r\n</blockquote>\r\n<p>\r\n    Continue by jeep down to the volcano caldera, usually still covered by the early morning mist. The mist, combined with the grey ashen-covered ground creates a unique atmosphere often compared to the surface of the moon.\r\n</p>\r\n<p>\r\n    Enjoy a picnic breakfast set in the middle of nowhere with the spectacular natural savanna as the backdrop.\r\n</p>\r\n<p>\r\n    Return by jeep to the hotel and check out. Afterwards get on a long drive along the northern coast of Java towards its eastern end with a late lunch served en route at a local restaurant.\r\n</p>\r\n<p>\r\n    Check-in upon arrival at the hotel located either in the area of the Kawah Ijen Volcano near the small village of Licin or in the coastal town of Ketapang next to Banyuwangi, opposite the island of Bali.\r\n</p>\r\n<p>\r\n    Spend the remainder of the day free at leisure.\r\n</p>\r\n<p>\r\n    Dinner at leisure.\r\n</p>    \r\n<p>\r\n    Overnight in the hotel in Ketapang/Ijen.\r\n</p>'),
(7, 1, 7, 'BANYUWANGI – IJEN – BALI', '<p>\r\n    Wake up in the early morning for an excursion to Mount Ijen - one of the most spectacular natural wonders in Indonesia, and the world. Breakfast is served at the hotel before setting off by 4WD jeep. Alternatively, a breakfast box will be provided.\r\n</p>\r\n<p>\r\n    After a 1.5 hour drive, reach Paltuding Base Camp (1,850m). The trek to the top is 3 kilometres and follows a wide, well-worn pathway. At the top of Mount Ijen is a large crater lake surrounded by sulphur mines.\r\n</p>\r\n<p>\r\n    Upon reaching the top (2,385m), there is time to enjoy the views of the crater lake which is 200 metres deep and contains about 36 million cubic metres of steaming, acidic water. Witness the agility and strength of the miners as they collect and carry the sulphur blocks up to the crater rim.\r\n</p>\r\n<p>\r\n     <b>\r\n         <u>\r\n             Important notes:\r\n         </u>\r\n     </b>\r\n</p>\r\n<blockquote>\r\n    Local authorities only allow watching the scenery from the rim of the crater – It is strictly forbidden to walk down to the lake shore due to toxic fumes that are escaping from the lake. Only the sulphur porters are allowed in this area.\r\n    This trekking requires good physical condition as well as good walking shoes and some warm clothing because of the low morning temperatures.\r\n    Mt Ijen is an active volcano. Therefore access is subject change due to volcanic activity at the time of visit: an alternative program to Kaliklatak coffee and rubber plantation will be provided if the volcano is temperamental during the visit and must be shut down. Weekend surcharge USD 5 per person will be applied for visit to Ijen.\r\n</blockquote>\r\n<p>\r\n    Return via the same route to the base camp and continue by road to Banyuwangi. Arrive at the hotel to refresh. \r\n</p>\r\n<p>\r\n    In the late morning, check-in at the ferry terminal in Ketapang before crossing the Bali Straits to the island of Bali by local ferry for a scenic journey to Gilimanuk on Bali’s western shores.\r\n</p>\r\n<p>\r\n<b> Optional boat with surcharge:</b>\r\n</p>\r\n<p>\r\n    Crossing the Bali strait by a traditional Phinisi Schooner includes brunch served on board while crossing the Bali Strait and snorkeling season in Menjangan Island. Anchored at Plataran Menjangan pier.\r\n</p>\r\n<p>\r\n    Upon arriving at Bali, continue by road towards either Pemuteran or Lovina Beach.\r\n</p>\r\n<p>\r\n    Drop off at a selected hotel in Pemuteran or Lovina Beach (Accommodation not included).\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id_package` int(3) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `id_duration` int(2) NOT NULL,
  `overview` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `informations` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id_package`, `package_name`, `id_duration`, `overview`, `images`, `informations`, `url`) VALUES
(1, 'Java In Depth', 7, 'From central to east Java, explore the region’s nature, rhythm of life and cultural heritage. Uncover the ancient history of the Majapahit, visit the oldest coffee plantations and trek up the two iconic active volcanoes of Mount Bromo and Ijen for the most breathtaking views of nature. ', '76ghg.jpg,76ght.jpg,98ujh.jpg', '<ul>\r\n    <li>\r\n\r\n        Our rates are nets and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,  meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).\r\n    </li>\r\n    <li>\r\n\r\n        All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice\r\n    </li>\r\n    <li>\r\n        All timings are approximate. As the world’s most populated island, travel times can vary greatly during Eid al Fitr holiday break and other National Public Holidays. Eid al Fitr period in 2020 is 16-May-20 until 31-May-20\r\n    </li>\r\n    <li>\r\n        All language guides other than English subject to availability during high season July-September.\r\n    </li>\r\n    <li>\r\n        Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.\r\n    </li>    \r\n    <li>\r\n        Child rate is available on request\r\n    </li>\r\n</ul>', 'java-in-depth');

-- --------------------------------------------------------

--
-- Table structure for table `package_destinations`
--

CREATE TABLE `package_destinations` (
  `id_package_destination` int(4) NOT NULL,
  `id_package` int(3) NOT NULL,
  `id_destination` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_destinations`
--

INSERT INTO `package_destinations` (`id_package_destination`, `id_package`, `id_destination`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `package_info`
--

CREATE TABLE `package_info` (
  `id_package_info` int(6) NOT NULL,
  `id_package` int(3) NOT NULL,
  `id_info` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_info`
--

INSERT INTO `package_info` (`id_package_info`, `id_package`, `id_info`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `package_region`
--

CREATE TABLE `package_region` (
  `id_package_region` int(4) NOT NULL,
  `id_package` int(3) NOT NULL,
  `id_region` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_region`
--

INSERT INTO `package_region` (`id_package_region`, `id_package`, `id_region`) VALUES
(1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `package_styles`
--

CREATE TABLE `package_styles` (
  `id_package_style` int(4) NOT NULL,
  `id_package` int(3) NOT NULL,
  `id_style` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_styles`
--

INSERT INTO `package_styles` (`id_package_style`, `id_package`, `id_style`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id_region` int(2) NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `banner` varchar(10) NOT NULL,
  `banner_position` enum('top','bottom','center') NOT NULL,
  `overview` text NOT NULL,
  `map` text NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id_region`, `region_name`, `banner`, `banner_position`, `overview`, `map`, `url`) VALUES
(1, 'Kepulauan Riau', '1.jpg', 'center', '', '', 'kepulauan-riau'),
(2, 'West Nusa Tenggara', '2.jpg', 'center', '', '', 'west-nusa-tenggara'),
(3, 'Sumba', '3.jpg', 'bottom', '', '', 'sumba'),
(4, 'Raja Ampat Island', '4.jpg', 'center', '', '', 'raja-ampat-island'),
(5, 'Bali', '5.jpg', 'center', '', '', 'bali'),
(6, 'Java', '6.jpg', 'center', '', '', 'java'),
(7, 'Flores and Komodo Island', '7.jpg', 'center', '', '', 'flores-and-komodo-island'),
(8, 'Kalimantan', '8.jpg', 'center', '', '', 'kalimantan'),
(9, 'Lombok', '9.jpg', 'bottom', '', '', 'lombok'),
(10, 'Papua', '10.jpg', 'bottom', '', '', 'papua'),
(11, 'Sulawesi', '11.jpg', 'top', '', '', 'sulawesi'),
(12, 'Sumatra', '12.jpg', 'bottom', '', '', 'sumatra');

-- --------------------------------------------------------

--
-- Table structure for table `tour_styles`
--

CREATE TABLE `tour_styles` (
  `id_style` int(2) NOT NULL,
  `style_name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_styles`
--

INSERT INTO `tour_styles` (`id_style`, `style_name`, `icon`) VALUES
(1, 'Active Travel', ''),
(2, 'Classic Jouney', '');

-- --------------------------------------------------------

--
-- Table structure for table `trip_highlights`
--

CREATE TABLE `trip_highlights` (
  `id_highlight` int(4) NOT NULL,
  `id_package` int(3) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_highlights`
--

INSERT INTO `trip_highlights` (`id_highlight`, `id_package`, `caption`, `detail`) VALUES
(1, 1, 'Discover Solo in Central Java', 'The cradle of Javanese culture, visit Mangkunegaran Palace, the antiques market, explore Sukuh and Ceto Temples and Kemuning tea plantation.'),
(2, 1, 'Uncover the history of ancient Java', 'Visit the old capital of Majapahit and the oldest coffee plantation in Java to learn about the culture of drinking coffee'),
(3, 1, 'Explore Mount Bromo and Mount Ijen', 'Climb Mount Bromo at sunset and Mount Ijen before sunrise and enjoy the contrasting and spectacular views of these active volcanoes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_destination`
--
ALTER TABLE `category_destination`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id_destination`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id_duration`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`id_itinerary`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id_package`);

--
-- Indexes for table `package_destinations`
--
ALTER TABLE `package_destinations`
  ADD PRIMARY KEY (`id_package_destination`);

--
-- Indexes for table `package_info`
--
ALTER TABLE `package_info`
  ADD PRIMARY KEY (`id_package_info`);

--
-- Indexes for table `package_region`
--
ALTER TABLE `package_region`
  ADD PRIMARY KEY (`id_package_region`);

--
-- Indexes for table `package_styles`
--
ALTER TABLE `package_styles`
  ADD PRIMARY KEY (`id_package_style`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indexes for table `tour_styles`
--
ALTER TABLE `tour_styles`
  ADD PRIMARY KEY (`id_style`);

--
-- Indexes for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  ADD PRIMARY KEY (`id_highlight`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_destination`
--
ALTER TABLE `category_destination`
  MODIFY `id_category` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id_destination` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id_duration` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id_itinerary` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id_package` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_destinations`
--
ALTER TABLE `package_destinations`
  MODIFY `id_package_destination` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_info`
--
ALTER TABLE `package_info`
  MODIFY `id_package_info` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `package_region`
--
ALTER TABLE `package_region`
  MODIFY `id_package_region` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_styles`
--
ALTER TABLE `package_styles`
  MODIFY `id_package_style` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tour_styles`
--
ALTER TABLE `tour_styles`
  MODIFY `id_style` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  MODIFY `id_highlight` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
