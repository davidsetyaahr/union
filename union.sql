-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 03:38 AM
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
-- Table structure for table `category_package`
--

CREATE TABLE `category_package` (
  `id_category` int(2) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_package`
--

INSERT INTO `category_package` (`id_category`, `category`) VALUES
(1, 'Popular Package'),
(2, 'Adventure');

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
(7, 7, 6),
(8, 8, 7),
(9, 9, 8),
(10, 11, 10),
(11, 12, 11),
(12, 14, 13);

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
(7, 1, 7, 'BANYUWANGI – IJEN – BALI', '<p>\r\n    Wake up in the early morning for an excursion to Mount Ijen - one of the most spectacular natural wonders in Indonesia, and the world. Breakfast is served at the hotel before setting off by 4WD jeep. Alternatively, a breakfast box will be provided.\r\n</p>\r\n<p>\r\n    After a 1.5 hour drive, reach Paltuding Base Camp (1,850m). The trek to the top is 3 kilometres and follows a wide, well-worn pathway. At the top of Mount Ijen is a large crater lake surrounded by sulphur mines.\r\n</p>\r\n<p>\r\n    Upon reaching the top (2,385m), there is time to enjoy the views of the crater lake which is 200 metres deep and contains about 36 million cubic metres of steaming, acidic water. Witness the agility and strength of the miners as they collect and carry the sulphur blocks up to the crater rim.\r\n</p>\r\n<p>\r\n     <b>\r\n         <u>\r\n             Important notes:\r\n         </u>\r\n     </b>\r\n</p>\r\n<blockquote>\r\n    Local authorities only allow watching the scenery from the rim of the crater – It is strictly forbidden to walk down to the lake shore due to toxic fumes that are escaping from the lake. Only the sulphur porters are allowed in this area.\r\n    This trekking requires good physical condition as well as good walking shoes and some warm clothing because of the low morning temperatures.\r\n    Mt Ijen is an active volcano. Therefore access is subject change due to volcanic activity at the time of visit: an alternative program to Kaliklatak coffee and rubber plantation will be provided if the volcano is temperamental during the visit and must be shut down. Weekend surcharge USD 5 per person will be applied for visit to Ijen.\r\n</blockquote>\r\n<p>\r\n    Return via the same route to the base camp and continue by road to Banyuwangi. Arrive at the hotel to refresh. \r\n</p>\r\n<p>\r\n    In the late morning, check-in at the ferry terminal in Ketapang before crossing the Bali Straits to the island of Bali by local ferry for a scenic journey to Gilimanuk on Bali’s western shores.\r\n</p>\r\n<p>\r\n<b> Optional boat with surcharge:</b>\r\n</p>\r\n<p>\r\n    Crossing the Bali strait by a traditional Phinisi Schooner includes brunch served on board while crossing the Bali Strait and snorkeling season in Menjangan Island. Anchored at Plataran Menjangan pier.\r\n</p>\r\n<p>\r\n    Upon arriving at Bali, continue by road towards either Pemuteran or Lovina Beach.\r\n</p>\r\n<p>\r\n    Drop off at a selected hotel in Pemuteran or Lovina Beach (Accommodation not included).\r\n</p>'),
(8, 2, 1, 'YOGYAKARTA ARRIVAL - PRAMBANAN', '<p style=\"color:#007bff\">\r\n    Yogyakarta Airport – Yogyakarta city centre (6 km): 20 minutes Yogyakarta – Prambanan (22 km): 40 minutes\r\n</p>\r\n<p>Arrive at Yogyakarta International Airport.</p>\r\n<p><u>Recommended flights (not included in the quotation):</u> Silk Air from Singapore to Yogyakarta&nbsp; MI152, departing at 08:10 and arriving at 09:30 on Tuesday, Thursday, and Friday or MI154, departing at 15:40 and arriving at 17:05 on Sunday. Schedules are subject to change without prior notice.</p>\r\n<p>Meet with the guide and driver after arriving at International Airport in Yogyakarta and transfer to the hotel.&nbsp;</p>\r\n<p>After checking into the hotel, enjoy a lunch of local specialties and spend a bit of time to relax and freshen up.</p>\r\n<p><u>Note</u>: Legal check-in time at 14:00.</p><p>In the mid-afternoon, leave Yogyakarta by private car and head to the UNESCO World Heritage site of Prambanan. This collection of ancient Hindu temples, built in the 9th century, are among the world’s most spectacular cultural heritage sites in the world. While following the guide’s lead, learn about the temple’s fascinating history and the symbolism of its decorations.</p>\r\n<p>Afterwards, head to a nearby local restaurant and enjoy an early dinner followed by a traditional performance of the Ramayana Ballet in an open-air theatre surrounded by the illuminated temples of Prambanan.</p>\r\n<p><u>Note:</u> Ramayana dances at Prambanan are seasonal (between May and October) and only performed on certain days of the week. When there’s no show at Prambanan, it will be replaced by the similar one performed at the Pura Wisata theatre in Yogyakarta.</p>\r\n<p>Return to your hotel&nbsp; in Yogyakarta.</p>'),
(9, 2, 2, 'YOGYAKARTA - CANDIREJO - BOROBUDUR', '<p style=\"color:#007bff\">\r\n    Yogyakarta – Candirejo – Borobudur (42 km): 1 ½ hours\r\n</p>\r\n<p>After breakfast in the morning, head out to explore the charming city of Yogyakarta -the cultural centre of Java.</p><p>Start with a visit to The Sultan’s Palace. This building was constructed between 1756 and 1790 and remains a fine example of traditional Javanese sultanate architecture. Remaining today as the residence of the Sultan, this living museum features a showcase of Javanese cultural relics and, depending on the day, will be a cultural performances ranging from Golek Menak Puppet‘s to classical Javanese Poetry performance known as Macapat.</p><p>Afterwards, head on a 30-minute ride by becak (similar to a cyclo or trishaw) to explore the neighboring Kauman Village, built in the vicinity of the Kraton. This village is the central keepers of the Islamic religion as authorized by the Sultanate. The small gangs (laneways) of this village are so designed to ensure minimal disturbance of noise and traffic so as to not interrupt the Santri or Islamic students from their study. It was also said that by ensuring the laneways were only passable on foot - every man was equal.&nbsp;</p><p>End the becak ride at the Taman Sari Water Palace. This addition to the royal complex was built over 200 years ago by the first Sultan, in addition to its beautiful collection of pools and strange fusion of Dutch and classic Indonesian architectural styles, it also has a very interesting story to tell.</p><p>After visiting a batik factory for a look at how these beautiful works of art are created, watch a short demonstration on how Javanese leather shadow puppets (Wayang Kulit) are made.</p><p>Lunch in nearby local restaurant in Yogyakarta.</p><p>In the afternoon, proceed to the world-famous UNESCO World Heritage site of Borobudur. Get a taste of local life there with a horse cart ride through Candirejo Village. While travelling along small lanes lined with traditional houses, stop to partake in some village activities such as the making of cassava crackers, playing the gamelan and harvesting and drying local crops.</p><p>Continue with a visit to Mendut and Pawon Temples, near Borobudur. Older than Borobudur, these pyramid-shaped temples house three impressively carved stone statues.</p><p>Check in at your selected hotel.</p><p>Dinner at leisure and overnight near Borobudur.</p>'),
(10, 2, 3, 'BOROBUDUR - YOGYAKARTA - DEPARTURE', '<p style=\"color:#007bff\">\r\n    Borobudur – Yogyakarta (42 km): 1 hours 30 minutes\r\n</p>\r\n<p>Wake up dark and early in the morning to reach Borobudur in time for sunrise. This is the most magical time to see the temple. As the sun breaches the horizon, a golden light is cast over the temple and it’s hundreds of stupas to create a picture-perfect setting that is sure make a lasting impression on any visitor.</p><p>Explore this massive Buddhist Temple- the largest in the world- while listening to stories behind its construction and of the symbolic meaning of some of its works of art. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labour and took more than 75 years to complete.</p><p>After thoroughly exploring the architectural and historical marvels of Borobudur, return to the hotel for breakfast.</p><p>Spend the rest of the morning at leisure before heading to Yogyakarta Airport the onward flight, or continue with the next travel package.</p>'),
(11, 3, 1, 'YOGYAKARTA ARRIVAL', '<p style=\"color:#007bff\">\r\n    Yogyakarta Airport – Yogyakarta City Center (6 km): 20 minutes Yogyakarta – Prambanan (22 km): 40 minutes\r\n</p>\r\n<p>Arrive at Yogyakarta International Airport and be met by the guide and driver for transfer to the selected hotel in Yogyakarta&nbsp;&nbsp;</p><p><u>Recommended flights (not included in the quotation): </u>Silk Air from Singapore to Yogyakarta MI152, departing at 08:30 and arriving at 09:50 on Monday, Tuesday and Wednesday, Thursday, and Friday or MI154, departing at 13:55 &nbsp;and arriving at 15:25 on Sunday. Schedules are subject to change without prior notice.</p><p>After enjoying lunch at the hotel restaurant, check in and take some time to relax or freshen up at the hotel.</p><p><strong><u>Note</u></strong>: Check in time is 14:00.</p><p>Then, meet with the guide again and proceed to the UNESCO-recognized Prambanan Temple, a series of iconic and ancient Hindu temples built in the 9th century. This collection of sharp, jagged temples features three main inner shrines dedicated to the Hindu trinity: Brahma, Vishnu and Shiva. Hear all about the history and symbolism of the temples from the guide while walking around this incredible complex.</p><p>Afterwards, return to the hotel in Yogyakarta.</p><p>Overnight in Yogyakarta.</p>'),
(12, 3, 2, 'YOGYAKARTA - KALIURANG - KALIADEM CYCLING - RAMAYANA DANCE', '<p style=\"color:#007bff\">\r\n    Yogyakarta city center – Kaliurang (22 km): 1 hour Kaliurang – Kaliadem (6 km): 15 mins Kaliadem – Plaosan Temple (18 km): 2 hours (by bike) Prambanan Resto and open stage – Yogyakarta (18 km): 40 mins\r\n</p>\r\n<p>Start with a visit to the Sultan’s Palace, also known as <em>Kraton</em>. Built between 1756 – 1790, it’s an excellent example of traditional Javanese Sultanate architecture. While walking through the various rooms and chambers, learn a great deal about Javanese cultural heritage.</p><p>Also, visit the adjacent <em>Taman Sari</em>, water palace and garden. This addition to the royal complex was built over 200 years ago by the first Sultan, with bathing pools for his harem. Then, visit a home batik factory and attend a short demonstration of <em>Wayang Kulit</em>, a famous Javanese leather puppet performance.</p><p>Then drive to Kaliurang - around a one-hour drive from Yogyakarta. Take lunch at Beukenhof Restaurant, located in the complex of Ullen Sentalu Museum. Following lunch, take a tour in Ullen Sentalu Museum which displays ancient batiks, manuscripts and historical photographs of the Sultan’s palace as well as other interesting images of people and events during the colonial era. There are various artefacts, and many oil paintings, including painted portraits of Yogyakarta Sultans and their families.</p><p>After visiting the museum, be transferred to the nearby village of Kaliadem (15 minutes) for a two-hour biking trip. Pedal through the village and enjoy its stunning view of Mt Merapi until reaching the finish point in Candi Plaosan (cycling level: Easy to Moderate, mostly downhill).</p><p>Sit back and relax after cycling in a local restaurant near Prambanan Temple for dinner. Following dinner, enjoy an amazing Ramayana Dance at Prambanan’s open stage with the temples in the background.</p><p><em><u>Note:</u></em> Ramayana dances at Prambanan are seasonal (between May and October) and only performed on certain days of the week. When there’s no show at Prambanan, it will be replaced by a similar performance at Pura Wisata Theatre in Yogyakarta.</p><p>Return to the hotel and overnight in Yogyakarta.</p>'),
(13, 3, 3, 'YOGYAKARTA - KOTAGEDE - CANDIREJO - BOROBUDUR', '<p style=\"color:#007bff\">\r\nYogyakarta city center – Kotagede (5 km): 15 mins Kotagede – Sasanti Restaurant (17 km): 40 mins Sasanti Restaurant – Borobudur (33 km): 1 hour\r\n</p>\r\n<p>After breakfast at the hotel, check out and drive to Kotagede for a leisurely tour by becak -a javanese tricycle. This charming village retains some of Central Java’s best examples of traditional Javanese architecture; and is known as the ‘Silver Village’ due to its high concentration of silver artisans. On arrival to the village, visit a master baker’s house to sample Kembang Waru – a type of cookie only sold in Kotagede. Continue by becak to the central traditional market and take a tour of this bustling location. Resume the tour, arriving at the oldest mosque in Yogyakarta and don a traditional Javanese outfit -a sign of respect for the former kings- and then visit the Royal Cemetery of the First King of the Mataram Kingdom.</p><p>Take a tour of the linking laneways to discover the Kalang-style architecture, which is indigenous to Kotagede – a combination of Javanese and Colonial styles.</p><p>Leave Kotagede for lunch at the Ndalem Natan Restaurant, which is also popular for its gallery.</p><p>Then proceed to Borobudur after lunch. Upon arrival, get a taste for local life with a horse cart ride through Candirejo Village. Travel along small lanes lined with traditional houses and stop to see village activities such as making cassava crackers, playing the gamelan and harvesting and drying vanilla and chili.</p><p>Continue with a visit to Mendut and Pawon Temples, near Borobudur. Older than Borobudur, these pyramid-shaped temples house three impressively carved stone statues</p><p>Dinner at leisure and overnight in Borobudur.</p>'),
(14, 3, 4, 'BOROBUDUR - YOGYAKARTA - DEPARTURE', '<p style=\"color:#007bff\">Borobudur – Yogyakarta (42 km): 1 hours 30 minutes</p>\r\n<p>Wake up early this morning to reach Borobudur for the sunrise. This is the most mystical time to see the temple- the sun raises over the structure in the tranquil morning air with very few other tourists at the temple.</p><p>Before the crowds arrive, explore with your guide, this massive Buddhist Temple- the largest in the world- and discover the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labor and took more than 75 years to complete. These days, the UNESCO Heritage site is still visible in its full glory- with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>Return to your hotel for breakfast,</p><p>Time at leisure before your transfer to Yogyakarta airport for your onward flight to your next destination or continue with an extension package.</p>'),
(15, 4, 1, 'SEMARANG ARRIVAL - SALATIGA', '<p style=\"color:#007bff\">Semarang Airport – Lawang Sewu – Pesta Keboen Resto (6 km): 10 minutes Semarang city center – Salatiga (40 km): 1 hour 30 minutes</p>\r\n<p>Arrive at Achmad Yani International Airport in Semarang, meet with the guide and driver and transfer to the hotel in Salatiga.</p><p><u>Recommended flight (Airfares are not included and quoted separately. Schedules are subject to change without prior notice):</u> Singapore to Semarang by Silk Air MI102 departing at 09:05 and arriving at 10:10 on Monday and Friday, or departing at 14:15 and arriving at 15:30 on Wednesday.</p><p>Located on the north coast of the island of Java, Semarang is the capital of Central Java. An Important port on the Java Sea since the Dutch colonial era, Semarang, with its 1.5 million inhabitants, is now the 7th most populous city in the country.</p><p>Visit Lawang Sewu, the city’s most famous landmark and a masterpiece of Dutch colonial architecture. The building was built between 1904 and 1907 as former headquarter of the national railway of the Dutch East Indies. Its name in Javanese means ‘Thousands Doors’.</p><p>Lunch in a local restaurant in Semarang.</p><p>Following lunch, continue to Salatiga.</p><p>Upon arrival, check into the hotel and dinner at leisure.</p><p>Overnight in Salatiga.</p>'),
(16, 4, 2, 'SALATIGA – GEDONG SONGO – BANARAN – WONOSOBO ', '<p style=\"color:#007bff\">Salatiga – Gedong Songo (30 km): 1 hour Gedong Songo – Banaran coffee plantation (20 km): 40 minutes Banaran coffee plantation – Wonosobo (88 km): 3 hours\r\n</P>\r\n<p>In the morning, after breakfast, drive to Banaran Coffee Plantation at Tuntang for a short tour with a buggy car around the plantation. The guide will explain everything there is to know about the high-quality organic Robusta coffee grown on the property while touring hrough the fields.</p><p>Next stop is Bandungan, gateway to the Gedong Songo Temples Complex located 1,200m up on the slopes of the Ungaran Mountain. This group of small, 8th-century Hindu temples are among the oldest in Java. The best way to reach the complex is on horseback slowly going up to reach the mountain top for spectacular views and a chance to roam among these ancient monuments.&nbsp;</p><p>Continue to Banaran Coffee Plantation at Gemawang for a set menu lunch with views over the coffee fields .</p><p>In the mid-afternoon, take a 3-hour drive to Wonosobo a small town located 790 meters above sea level and the gateway to the volcanic Dieng Plateau, the “Abode of the Gods”.</p><p>Dinner at leisure and overnight in Wonosobo.</p>'),
(17, 4, 3, 'WONOSOBO – SUNRISE DIENG – TAMBI TEA PLANTATION – BOROBUDUR ', '<p style=\"color:#007bff\">\r\nWonosobo – Dieng (26 km): 1 hour Dieng – Tambi tea plantation (16 km): 30 minutes Tambi Tea Plantation – Wonosobo (15 km): 30 minutes Wonosobo – Borobudur (54 km): 2 hours\r\n</P>\r\n<p>Wake up and have breakfast early before leaving Wonosobo at 04:00 to the volcanic Dieng Plateau, which is located at an altitude of 2,000m.</p><p>Upon arrival at Sembungan Village in Dieng, hike for around 40 minutes (depending fitness levels) up to Mt Sikunir for an unforgettable sunrise experience as light crests over the distant volcanoes.</p><p>Then, observe the volcanic activity of the Dieng Crater and Kawah Sikidang and explore the oldest Hindu temples in Java. There are 8 shrines dating from the 7th and 8th centuries which line the crater floor amid sulphurous fumes and rugged natural surroundings.</p><p><strong><u>Note</u>: </strong>Temperatures during the day ranged between 15-20oC and can go as low as 0oC in July and August. Warm clothes are strongly recommended to visit the plateau</p><p>The mist generally rolls in around 11:00, so it is time to take a 1-hour tour of the Tambi Tea Plantation established in 1885, located at the foot of Mt Sindoro. It spans 830 hectares, with 1,100 workers who gather around 7kg of leaves in a mere 20 minutes. Learn about the process of picking and processing the tea.</p><p>Enjoy a cup of freshly brewed tea on the terrace of the plantation before returning to Wonosobo for a late lunch at a local restaurant.</p><p>In the afternoon leave Wonosobo and proceed to Borobudur via Mungkid through a small road on the southern slopes of Mt Sumbing, an active volcano with an altitude of 3,371m (70km – 2 hours 30 minutes).</p><p><strong><u>Note</u>: </strong>Starting 10 pax drive from Wonosobo to Borobudur via Magelang (85km – 3 hour 15 minutes)</p><p>Check in at the hotel in Borobudur.</p><p>Dinner at leisure and overnight in Borobudur.</p>'),
(18, 4, 4, 'SUNRISE BOROBUDUR – CANDIREJO – YOGYAKARTA ', '<p style=\"color:#007bff\">Borobudur Temple – Mendut Temple – Pawon Temple (5 km): 15 minutes Borobudur – Yogyakarta (42 km): 1 hour 30 minutes\r\n</P>\r\n<p>Depart around 04:30 from the hotel for sunrise at the UNESCO site of Borobudur -one of the most incredible experiences to be had in Asia. Following the lead of the guide, explore this massive Buddhist temple- the largest in the world- and discover the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labour and took more than 75 years to complete. As the sun begins to cast its first rays upon the temple, be sure to take some photos.</p><p>Afterwards, return to the hotel for breakfast and spend the rest of the morning at leisure.</p><p>Around 12:00, check out from the hotel and proceed to Candirejo Village to get a taste for local life with a horse cart ride. Known as a <em>dokar</em>, the local horse cart leads quietly through this peaceful, charming village.</p><p>After enjoying a traditional Javanese lunch in the village, travel along small lanes lined with traditional houses and stop to see village activities such as making cassava crackers, playing the gamelan and harvesting and drying of vanilla and chili.</p><p>Continue with a visit to nearby Mendut Temple. Older than Borobudur, this pyramid-shaped temple houses three impressively carved stone statues. Also visit Pawon Temple, a simple yet beautiful monument known for its precise symmetry</p><p>Proceed to Yogyakarta for check-in at the hotel there.</p><p>Despite the official spelling of ‘Yogyakarta’ this town is usually pronounced as and often written ‘Jogjakarta’ or simply ‘Jogja’. It is the most popular tourist destination in Java, largely thanks to its proximity to the temples of Borobudur and Prambanan. Jogja is also a centre of art and education, though, and is also considered to be the cradle of traditional Javanese culture. Additionally, locals of Jogja are renowned for their friendly nature.</p><p>Dinner this evening is at leisure.</p><p>Overnight in Yogyakarta.</p>'),
(19, 4, 5, 'YOGYAKARTA – PRAMBANAN TEMPLE ', '<p style=\"color:#007bff\">Yogyakarta city center – Prambanan Temple (18 km): 40 mins\r\n</P>\r\n<p>Today, have a chance to learn more about Yogyakarta’s historic and cultural traditions with a full-day city tour.</p><p>Start with a visit to the Sultan’s Palace, also known as Kraton. Built between 1756 – 1790, is a fine example of traditional Javanese sultanate architecture. While walking through various rooms and chambers, learn more about Javanese heritage and culture.</p><p>Also, visit the adjacent Taman Sari, water palace and garden. This addition to the royal complex was built over 200 years ago by the first Sultan, with bathing pools for his harem.</p><p>Continue this morning’s tour with a visit to Sonobudoyo Museum by becak. Focusing on Javanese culture, the museum features exhibits of artefacts such as hand-crafted weapons, wooden wayang puppets, masks and old Javanese gamelan instruments.</p><p>Lunch at a local restaurant before visiting Prambanan Temple.</p><p>Following lunch, spend the afternoon exploring the ancient Hindu temples at Prambanan, located 17 kilometres from Yogyakarta. Built in the 9th century, this collection of sharp, jagged temples features three main inner shrines dedicated to the Hindu trinity: Brahma, Vishnu and Shiva. UNESCO named Prambanan a Heritage Site in 1991. The guide will explain the history and symbolism of the temples while walking around.</p><p>Return to Yogyakarta for a chance to relax and freshen up.</p><p>In the evening, be treated to a performance of traditional Ramayana Dance while dining at a local restaurant.</p><p>Overnight in Yogyakarta.</p>'),
(20, 4, 6, 'YOGYAKARTA – DEPARTURE ', '<p>Transfer to Yogyakarta Airport in the morning in time for the onward flight, or choose an optional extension in East Java.</p>'),
(21, 5, 1, 'YOGYAKARTA ARRIVAL – YOGYAKARTA ', '<p style=\"color:#007bff\">Yogyakarta Airport – Yogyakarta city center (8 km): 20 minutes\r\n</P>\r\n<p>Arrive at Yogyakarta International Airport</p><p><u>Recommended flights (not included in the quotation): </u>Silk Air from Singapore to Yogyakarta MI152, departing at 08:30 and arriving at 09:50 on Monday, Tuesday and Wednesday , Thursday, and Friday or MI154, departing at 13:55&nbsp; and arriving at 15:25 on Sunday. Schedules are subject to change without prior notice.</p><p>Be met and greet by the guide and driver upon arrival and then be transferred to hotel in Yogyakarta.</p><p>Enjoying a lunch at the hotel restaurant before hotel check in. After checking in and getting settled, the rest of the day is free to spend at leisure either exploring independently or relaxing at the hotel.</p><p><u>Note</u>: Legal check-in time at 14:00.</p><p>Despite the official spelling of ‘Yogyakarta’ this town is usually pronounced Jogjakarta and often written as simply Jogja. It is the most popular tourist destination on Java, largely thanks to its proximity to the temples of Borobudur and Prambanan. Jogja is a center of art and education and the cradle of traditional Javanese culture</p><p>Dinner this evening is free at leisure.</p><p>Overnight in Yogyakarta</p><p><strong>Optional evening tour</strong></p><p><strong>Evening Food Hopping Around Yogyakarta</strong></p><p>After work or school, many of Yogyakarta’s local people go for a glass of kopi joss on the street. A piece of blazing charcoal is dropped into the coffee producing a sizzling sound which leads to the name “joss.” More than just a great drink, joss is an experience. Enjoy this unique beverage as locals do while bumping shoulders with them.</p><p>A short stroll away is bustling Malioboro Street. Visit a street vendor from South Sumatra who has been selling delicious Pempek fish cakes there since 1984. Served with spicy and sour tamarind sauce, it makes a great appetizer and is best enjoyed with Indonesia’s unofficial national drink, Botol.</p><p>The next stop, the popular Bakmi “Kadin”, named after the Indonesian Chamber or Industry of Commerce simply because it is located by the office building, is reached quickly by local Andong horse cart. Javanese-style fried noodles are on the menu, which are usually accompanied to the sound of traditional Javanese songs played by street musicians on a karaoke machine.</p><p>Move on by becak through the South-Square of the Sultan’s Palace to Alun-alun Kidul Field with its sacred twin Banyan. Locals gather here to ride on carts decorated with colorful lamps. Try to walk in a straight line between the two Banyan trees with blindfolded eyes: local legend says a wish will come true!</p><p>The journey continues to a so-called Pendopo, a semi-open royal house that turns into a food venue at night. Both sweet and savoury coconut and palm sugar treats are here in abundance. The atmosphere is a bit quirky and invites sitting down with a good cup of coffee or tea as day fades into night and the evening vibes settle in. <strong>(D)</strong></p>'),
(22, 5, 2, '\r\n\r\nYOGYAKARTA – KRATON – PRAMBANAN – RAMAYANA PERFORMANCE ', '<p style=\"color:#007bff\">Yogyakarta city center – Prambanan Temple (22 km): 45 minutes\r\n</P>\r\n<p>After breakfast we engage in exploring the many cultures of Yogyakarta.</p><p>Start with a visit to The Sultan’s Palace, also known as Kraton, is the central aspect of the Javanese cosmology being at the centre of the Mount Merapi and Parangtritis Beach lines. This building constructed between 1756 and 1790, is a fine example of traditional Javanese sultanate architecture. Remaining today as the residence of the Sultan, this living museum features a showcase of Javanese Culture and relics and depending on your day of visiting there will be a cultural performance ranging from Golek Menak Puppet‘s to classical Javanese Poetry performance known as Macapat.</p><p>Continue with a 30 minutes ride by becak (similar to a cyclo or trishaw) and explore the neighboring Kauman village built in the vicinity of the Kraton. This village is the central keepers of the Islamic religion as authorized by the Sultanate. The small gangs (laneways) of this village are so designed to ensure minimal disturbance of noise and traffic so as to not interrupt the Santri or Islamic students from their study. It was also said that by ensuring the laneways were only passable on foot - every man was equal.&nbsp;</p><p>End your Becak ride at the Taman Sari Water Palace This addition to the royal complex was built over 200 years ago by the first Sultan with bathing pools for his harem.</p><p>You will attend a short demonstration of Wayang Kulit, the famous Javanese leather puppet before enjoying lunch at a local restaurant</p><p>In the mid-afternoon, leave Yogyakarta for Prambanan: These huge ancient Hindu temples were built in the 9th century and the three main inner shrines are dedicated to the Hindu trinity: Brahma, Vishnu and Shiva. UNESCO named Prambanan a Heritage Site in 1991. Your guide will explain the history and symbolism of the temples as you walk around.</p><p>After the visit continue to the nearby Prambanan local restaurant where you will enjoy an early dinner followed by a traditional performance of the Ramayana ballet dance at an opened theatre with the illuminated temples of Prambanan as a background.</p><p><u>Note:</u> Ramayana dance at Prambanan are seasonal (between May and October) and only performed on certain days of the week. When there’s no show at Prambanan, it will be replaced by the similar one performed at the Pura Wisata theatre in Yogyakarta.</p><p>Return to your hotel &nbsp;in Yogyakarta.</p><p>Overnight in Yogyakarta.</p>'),
(23, 5, 3, 'YOGYAKARTA – CANDIREJO – BOROBUDUR', '<p style=\"color:#007bff\">Yogyakarta – Borobudur (42 km): 1 hours 30 minutes Borobudur Temple – Candirejo (3 km): 10 mins Candirejo – Mendut Temple – Pawon Temple (5 km): 15 mins\r\n</P>\r\n<p>After breakfast this morning the tour guide and driver pick you up for the drive to one of the highlights of your trip, Borobudur.</p><p>Together with your local guide, explore this massive Buddhist Temple- the largest in the world- and discover the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labor and took more than 75 years to complete. These days, the UNESCO Heritage site is still visible in its full glory- with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>Lunch will be served in a local restaurant near Borobudur.</p><p>Next, you’ll get a taste for local life with a horse cart ride through Candirejo Village. Known as a <em>dokar</em>, the local horse cart will take you through this peaceful, charming village. You’ll travel along small lanes lined with traditional houses and stop to see village activities such as making cassava crackers, playing the gamelan and harvesting of local crops.</p><p>Continue with a visit to Mendut and Pawon temples, nearby Borobudur. Older than Borobudur, this pyramid-shaped temple houses three impressively carved stone statues</p><p>Return to Yogyakarta.</p><p>Dinner at leisure.</p><p>Overnight in Yogyakarta.</p>'),
(24, 5, 4, 'YOGYAKARTA – JOMBANG – MT BROMO ', '<p style=\"color:#007bff\">Yogyakarta – Jombang (250 km): 3 hours 30 minutes by train Jombang – Trowulan (20 km): 40 minutes Trowulan – Pasuruan – Puspo – Tosari/Bromo (115 km): 4 hours Trowulan – Sukapura – Ngadisari/Bromo (130 km): 4 hours 30 minutes\r\n</P>\r\n<p>Early morning wakeup call at 05:30. A Breakfast box will be provided by your hotel (to be eaten on board the train).</p><p>At 06:00 this morning you will be transferred to Yogyakarta Railway station for a scenic train ride to Jombang in East Java.&nbsp;&nbsp;</p><p>Your guide will accompany on the journey.</p><p><strong><u>Note</u>:</strong></p><ul><li>Planned route is aboard Sancaka Pagi from Yogyakarta to Jombang, departing 06:45 and arriving 10:33. Schedule is subject to change without notice.</li></ul><ul><li>Full name and Passport details are required to book train ticket and must be provided at the time of reservation</li><li>The previous evening you need to bring down your main luggage to the reception before 22:00 with clear name identification. Main luggage will be transferred during the night with the driver and vehicle that will pick you up the next morning on arrival at Jombang Railway station in East Java.</li><li>It is advisable to bring a small bag with a change and toiletry and a jersey as air conditioner in the train can be quite chilly.</li></ul><p>Travelling by train in Java is a wonderful opportunity to meet local people and is also the best way to enjoy the volcanic landscapes of Central and East Java.</p><p>Upon arrival in Jombang, your local driver will be there to greet you.</p><p>Continue to the nearby Trowulan, the site of the former capital of the Majapahit Kingdom who ruled the island of Java for centuries. Visit the archaeological museum and the temples of Candi Bajang Ratu and Candi Tikus</p><p>From Trowulan, take lunch in a local restaurant before proceeding to Mount Bromo passing by the coastal town of Pasuruan which is located on the northeast coast of Java, before continuing by a picturesque mountain road to one of the entrance of the Bromo-Tengger National Park.</p><p>Check in at your hotel located in Tosari or Ngadisari on the edge of Tengger Caldera. &nbsp;</p><p>Check-in late in the afternoon to your hotel and freshen up before dinner</p><p>Overnight in&nbsp;Tosari or Ngadisari near Bromo.</p>'),
(25, 5, 5, 'MOUNT BROMO – JEMBER – KALIBARU', '<p style=\"color:#007bff\">Ngadisari – Probolinggo – Jember (148 km): 5 hours Tosari – Probolinggo – Jember (166 km): 5 hours 30 minutes Jember – Ijen (108 km): 3 hours 30 minutes Jember – Kalibaru (52 km): 1 hour 40 minutes\r\n</P>\r\n<p>Awake early this morning for a sunrise tour of Mount Bromo. You’ll travel by 4WD jeep to a viewing spot with stunning views of the Bromo volcano and surroundings. Watch the sun rise up from behind the volcano in Penanjakan.</p><p>Continue by jeep down to the volcano caldera, often still covered by mist in the early morning. The mist, combined with the grey ashen-covered ground form to create an unusual atmosphere, often compared to the surface of the moon.</p><p>A 20-minute ride on horseback will take you to a set of stairs which lead to the rim of the still-active Bromo crater.</p><p>Return by horse and jeep to your hotel in Ngadisari or Tosari for breakfast.</p><p><u>Note</u>:</p><ul><li>Please bring warm clothes for your sunrise excursion next morning in Bromo as the temperature is low and cold</li><li>Weekend surcharge USD 10 per person will be applied for visit to Bromo.</li></ul><p>Check out and continue by road to Kalibaru via Probolinggo and Jember.</p><p>This is a full day of driving but through some very scenic areas.</p><p>A lunch stop will be made in a local restaurant in Jember en route as well as breaks and photo stops along the way.</p><p>You arrive in the hotel in Kalibaru for check in late afternoon.</p><p>Dinner and overnight in Kalibaru.</p>'),
(26, 5, 6, '\r\nKALIBARU – BANYUWANGI – LICIN OR KETAPANG NEAR IJEN', '<p style=\"color:#007bff\">Kalibaru – Banyuwangi – Licin/Ijen (70 km): 2 hours 30 minutes Kalibaru – Banyuwangi – Ketapang (63 km): 2 hours 10 minutes\r\n</P>\r\n<p>Today after a leisurely breakfast, enjoy in the mid-morning a 90-minute tour around the plantation garden of Margo Utomo Agro Resort in Kalibaru.</p><p>Learn about coffee as well as a large variety of spices such as nutmeg, pepper, cinnamon, cocoa and coconut. See the processes involved from cultivation to growing, harvesting and we end with tasting the finished product.</p><p>Return to your room for refreshing before check out.</p><p>After an early lunch at your hotel in Kalibaru, leave for the region of Ijen near the small town of Banyuwangi</p><p>Check in upon arrival at your hotel located either in the area of the Kawah Ijen volcano near the small village of Licin or in the coastal town of Ketapang next to Banyuwangi and opposite the island of Bali</p><p>Remainder of the day is free at leisure.</p><p>Dinner at leisure.</p><p>Overnight in your hotel in Ketapang or Ijen.</p>'),
(27, 5, 7, 'MOUNT IJEN – END OF PROGRAM', '\r\n<p style=\"color:#007bff\">Ketapang – Banyuwangi – Paltuding Ijen base camp (38km): 1 hour 15 minutes Licin – Platuding Ijen Base camp (22 km): 45 minutes to 1 hour Ketapang harbor East Java – Gilimanuk harbor Bali (6 km): 45 minutes (by ferry) + 1 hour time difference between Java and Bali Gilimanuk – Pemuteran (32 km): 45 minutes Gilimanuk – Lovina (78km): 2 hours\r\n</P>\r\n<p>Awake early this morning for an excursion to Mount Ijen. Breakfast is served at the hotel before setting off by 4WD jeep (or alternatively a breakfast box will be provided).</p><p>After a 90-minute drive, reach the Paltuding base camp (1,850m). The trek to the top is 3 kilometres and follows a wide, packed dirt pathway. At the top of Mount Ijen is a large crater lake surrounded by sulphur mines and during your walk, you will probably encounter men carrying loads of up to 70 kg, often barefooted, down the mountainside.</p><p>Upon reaching the top (2,385m) there is time to enjoy the views of the Crater Lake which is 200 meters deep and contains about 36 million cubic meters of steaming, acidic water. Witness the agility and strength of the miners as they collect and carry the sulphur blocks up to the crater rim.</p><p><u>Important notes</u>:</p><ul><li>Local authorities only allow watching the scenery from the rim of the crater – It is strictly forbidden to walk down to the lake shore due to very toxic fumes that are escaping from the lake. Only the sulphur porters are allowed to this area.</li><li>This trekking requires good physical condition as well as good walking shoes and some warm clothing because of the low morning temperatures.</li><li>Mount Ijen is an active volcano therefore access is subject to volcanic activity at the time of visit: an alternative program to Kaliklatak coffee and rubber plantation will be provided if the volcano is closed during your stay.</li><li>Weekend surcharge USD 5 per person will be applied for visit to Ijen.</li></ul><p>Return via the same route to base camp and continue by road to Banyuwangi for a late lunch at a local restaurant.</p><p>In the afternoon, check in at the Ferry terminal in Ketapang before crossing the Bali straits to the island of Bali by local ferry for a scenic journey to Gilimanuk on Bali’s western shores.</p><p>Upon reaching Bali, you will continue by road to either Pemuteran or Lovina Beach.</p><p>Drop off at your selected hotel in Pemuteran or Lovina Beach (Accommodation not included).</p>'),
(28, 6, 1, 'SEMARANG ARRIVAL – AMBARAWA ', '<p style=\"color:#007bff\">Semarang – Salatiga (53 km): 1 hour 30 minutes Semarang – Losari (62 km): 2 hours\r\n</p>\r\n<p>Arrive at Achmad Yani International Airport in Semarang and, after meeting the local guide and driver, receive a private transfer to the city centre of Semarang.</p><p><strong><u>Recommended flight (not included in the quotation)</u></strong>: from Singapore to Semarang by Silk Air MI102, departing at 09:05 and arriving at 10:10 on Monday and Friday, or departing at 14:15 and arriving at 15:30 on Wednesday.</p><p>Located on the north coast of the island of Java, Semarang is the capital of Central Java. An Important port on the Java Sea since the Dutch colonial era, Semarang, with its 1.5 million inhabitants is now the 7th most populous city in Indonesia.</p><p>Visit Lawang Sewu, the city’s main landmark and a masterpiece of Dutch colonial architecture. The building was built between 1904 and 1907 as the former headquarters of the national railway of the Dutch East Indies. Its name in Javanese means ‘Thousands Doors’.</p><p>Lunch in a local restaurant in Semarang.</p><p>In the afternoon proceed to the hotel near Ambarawa in Central Java’s highlands.</p><p>Upon arrival at the hotel, freshen up and relax, and the rest of the afternoon is at leisure</p><p>Dinner is served at the hotel.</p><p>Overnight at the hotel near Ambarawa (Losari or Salatiga).</p>');
INSERT INTO `itinerary` (`id_itinerary`, `id_package`, `day`, `caption`, `detail`) VALUES
(29, 6, 2, 'AMBARAWA (LOSARI OR SALATIGA) – SELOGRIYO – BOROBUDUR', '<p style=\"color:#007bff\">Salatiga – Selogriyo (54Km): 1h45 Losari – Selogriyo (31Km): 1h Selogriyo – Magelang (12Km): 30 minutes Selogriyo – Borobudur (31Km): 1h\r\n</p>\r\n<p>Morning at leisure until before departing for a brief tour in the resort’s coffee plantation, and then check out time. After being picked up by the guide and driver, head to a small village on the slopes of Mt Sumbing for the start of a soft trekking experience.</p><p><strong><em><u>Note</u></em>: </strong>for Superior and First Class option, the coffee plantation tour will be at Banaran Coffee on the way to Borobudur</p><p>Enjoy lunch en route.</p><p>Walk through rice fields and plantations and see local villagers at work taking care of their crops or processing charcoal.</p><p>Then visit Selogriyo Temple. Although it’s a rather modest temple, the walk there (about 2 hours) is beautiful and easy to do for everybody.</p><p>The next stop is a visit to OHD Museum in Magelang for a look at the area’s contemporary art&nbsp; and one of the best private collections in the country. (OHD Museum closes on Tuesday)</p><p>Afterwards, continue to the Borobudur area and check in to the hotel</p>'),
(30, 6, 3, 'BOROBUDUR - CANDIREJO', '<p>Wake up early in the morning to reach Borobudur before sunrise, leaving the hotel around 04:30. This is the most mystical time to see the temple.</p><p>Explore this massive temple- the largest Buddhist temple in the world- and discover the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labour and took more than 75 years to complete. These days, the UNESCO Heritage site is still visible in its full glory with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>After an unforgettable Borobudur sunrise experience, head back to the hotel for breakfast and a bit of downtime.</p><p>About midday, meet with the guide and driver for a visit to nearby Pawon and Mendut temples which are older than Borobudur. Mendut is a pyramid-shaped temple which houses three impressively carved stone statues, and Pawon temple is a simple yet beautiful monument known for its precise symmetry.</p><p>Afterwards, make a stop for lunch at local restaurant with a view of paddy fields.</p><p>Then, travel to the village of Candirejo for a taste of the local life. Start with a horse cart ride, known as a <em>dokar</em>, through this peaceful and architecturally charming village.</p><p>Travel along small lanes lined with traditional houses and stop to see village activities such as making cassava crackers, learn about the rotating seasonal plantations and the harvesting and drying of chili Also, learn how to climb the coconut tree and take a refreshing drink from a young coconut.</p><p>Then, have the opportunity to play the gamelan, a traditional Indonesian musical instrument, using an interesting teaching method devised by the villagers accompanied with tea, coffee and a local snack.</p><p>Return to the hotel in Borobudur late afternoon.</p>'),
(31, 6, 4, 'BOROBUDUR – MERAPI/ KALIURANG – KALIADEM CYCLING - PRAMBANAN – YOGYAKARTA', '<p style=\"color:#007bff\">Borobudur – Kaliurang (41 km): 1h20 Kaliurang – Kaliadem (7.5 km): 15 minutes Kaliadem – Prambanan (21 km): 40 minutes\r\n</p>\r\n<p>After breakfast and check out this morning, start travelling to Kaliurang, in the cool highlands near Mt Merapi (2,925m).</p><p>The village offers magnificent views of the active volcano and dozens of ravines which have been created by molten streams of lava.</p><p>Visit Ullen Sentalu, a privately owned heritage museum offering an intriguing insight into the world of the Sultans of Solo, Yogyakarta and the Mataram Kingdom. Please note that Ullen Sentalu Museum is closed on Mondays.</p><p>Afterwards, proceed to Kalidem Village for the start of a cycling adventure.</p><p>Located near Gunung Merapi, about one hour’s drive from the city, the village offers magnificent views of the active volcano and the dozens of ravines which have been created by molten streams of lava.</p><p>From this stunning village, and with Gunung Merapi as the backdrop, set off by bike on a 15km ride, mostly downhill. Passing through the various villages and countryside, there will be plenty of opportunities to stop for photos or chat to locals. The guide will also explain the various local agricultural landscapes, such as tobacco, rice and snakeskin fruit plantations and explain the processes of growing and harvesting these native crops.</p><p>After 15km, take lunch in a local restaurant while enjoying magnificent views of Prambanan Temple.</p><p>After lunch, be driven to the huge Prambanan complex, a set of temples built in the middle of the 9th century, about 50 years after the construction of Borobudur.&nbsp; Very little is known about the early history of the complex, but it is thought to have been constructed to commemorate the return of a Hindu dynasty in Java.&nbsp; The temples lay in ruins for hundreds of years, and it was only in the 1930s that restoration began.&nbsp; Most of the temples within the complex have now been restored<strong>.</strong></p><p>Follow the guide’s lead around the temple grounds while he or she explains the history, construction processes and religious significance of these buildings. After the tour, transfer back to the hotel in Yogyakarta.</p>'),
(32, 6, 5, 'YOGYAKARTA – CITY TOUR – KOTA GEDE – RAMAYANA PERFORMANCE', '<p style=\"color:#007bff\">Yogyakarta city center – Kotagede (5 km): 15 minutes\r\n</p>\r\n<p>Start with a visit to The Sultan’s Palace, also known as Kraton, it’s central to Javanese cosmology as being at the centre of the Mount Merapi and Parangtritis Beach Lines. This building, constructed between 1756 and 1790, is a fine example of traditional Javanese sultanate architecture. Remaining today as the residence of the Sultan, this living museum features a showcase of Javanese culture and relics. Depending on the day of visit, there may also be a cultural performance ranging from Golek Menak Puppet‘s to classical Javanese Poetry performance known as Macapat that takes place at the temple.</p><p>Continue with a 30-minute ride by becak (similar to a cyclo or trishaw) and explore the neighboring Kauman Village built in the vicinity of the Kraton. This village is the central keeper of Islamic religion as authorized by the Sultanate. The small gangs (laneways) of this village are designed to ensure minimal disturbance of noise and traffic so as to not interrupt the Santri, or Islamic students, from their study. It is also said that by ensuring the laneways are only passable on foot - every man in the village is equal.&nbsp;</p><p>End the becak ride at the Taman Sari Water Palace. This addition to the royal complex was built over 200 years ago by the first Sultan with bathing pools for his harem.</p><p>Then, visiting a home batik factory, attend a short demonstration of Wayang Kulit, the famous Javanese leather puppet.</p><p>Lunch in nearby local restaurant in Yogyakarta.</p><p>Drive to Kotagede a charming suburb of Yogyakarta famous for its traditional Javanese atmosphere and known for its silversmith workshops.</p><p>On arrival In Kotagede, depart on a leisurely bicycle tour around the area and visit a master baker’s house for a taste of Kembang Waru – a delicious type of cookie only produced in Kotagede.</p><p>Continue to the traditional market and explore this bustling Pasar, once the main market in the area. Resume the tour, arriving at the oldest mosque in Yogyakarta dating back from 1575. There, borrow a traditional Javanese costume before entering, a sign of respect to the former kings, and then explore the historical compound of the Mataram Kingdom and its Royal Cemetery.</p><p>End the visit of Kotagede with a walking tour amongst narrow laneways and discover the unique Kalang-style architecture indigenous to Kotagede – a combination of Javanese and Colonial styles.</p><p>Return to the hotel.</p><p>In evening, be treated to a performance of traditional Ramayana dances after dining at a local restaurant.</p><p>Overnight in Yogyakarta.</p>'),
(33, 6, 6, 'SOLO CITY TOUR – SUKUH AND CETHO TEMPLES – SOLO ', '<p style=\"color:#007bff\">Solo city center – Sukuh Temple – Cetho Temple (41 km): 1 hour 30 minutes each way\r\n</p>\r\n<p>Today after breakfast, start the day with a visit of Solo.</p><p>Also known as Surakarta, the city of Solo was founded in 1745 by a local king. The site for the new Mataram Kingdom’s capital was reportedly chosen through voices heard by the king. Solo is the capital of batik in Java and remains home to some of the most intact Dutch colonial architecture in Indonesia.</p><p>Visit Keraton Mangkunegaran - a classical repository of classical Javanese art.</p><p>Built as a palace for a ‘junior’ line of the royal family in the 18th century, the splendid building has an extensive collection of 14th century jewelry, majestic silverworks, traditional Javanese weapons and classical dancing body ornaments.</p><p>End the morning with a visit to a well-known batik museum and learn about this famous Javanese art developed through the ages. Also, see craftsmen and women at work making new creations. Lunch will be served here as well.</p><p>Early in the afternoon, depart for a half-day excursion to Sukuh and Cetho, two of the latest Hindu temples built in Java before the island\'s courts were converted to Islam in the 16th century.&nbsp; Located on the western slopes of Mount Lawu (3,265m), this area, at the border between Central and East Java, offers spectacular landscapes with terraces covered by beautiful tea plantations&nbsp;</p><p>Explore Sukuh, located at 910 metres in elevation, and take a look at its unique pyramidal shape -similar in style to the Mayan temples of Central America and its stone carvings of Hindu phallic symbols.</p><p>Continue the drive, passing through beautiful tea plantations to Cetho, another Hindu temple located even higher on the mountain and rarely visited. Its carvings are similar to Sukuh Temple, but the multi-tiered temple differs in architectural layout.</p><p>Return to the hotel in Solo late in the afternoon.</p><p>Dinner at leisure.</p><p>Overnight in Solo.</p>'),
(34, 6, 7, 'SOLO – JOMBANG (BY TRAIN) – TROWULAN – PASURUAN – MT BROMO (BY CAR)', '<p style=\"color:#007bff\">Solo – Jombang (187 km): 2 hours 50 minutes by train Jombang – Trowulan (20 km): 40 minutes Trowulan – Pasuruan – Puspo – Tosari (115 km): 4 hours Trowulan – Sukapura - Ngadisari (130 km): 4 hours 30 minutes\r\n</p>\r\n<p>After an early breakfast this morning, be transferred to Solo Railway Station for a scenic train ride to Jombang, in East Java. The guide will be along during the journey.</p><p><strong><u>Note</u>:</strong></p><ul><li>Planned route is aboard Sancaka Morning Train from Solo to Jombang, departing 07:44 and arriving 10:33. Schedule is subject to change without notice.</li><li>Full name and Passport details are required to book train ticket and must be provided at the time of reservation</li><li>The previous evening you need to bring down your main luggage to the reception before 22:00 with clear name identification. Main luggage will be transferred during the night with the driver and vehicle that will pick you up the next morning on arrival at Jombang Railway station in East Java.</li><li>It is advisable to bring a small bag with a change and toiletry and a jersey as air conditioner in the train can be quite chilly.</li></ul><p>Travelling by train in Java is a wonderful opportunity to meet local people and is also the best way to enjoy the volcanic landscapes of Central and East Java.</p><p>Upon arrival in Jombang, meet with the local driver.</p><p>Continue to the nearby Trowulan, the site of the former capital of the Majapahit Kingdom who ruled the island of Java for centuries. Visit the archaeological museum and the temples of Candi Bajang Ratu and Candi Tikus.</p><p>From Trowulan, take lunch in a local restaurant before proceeding to Mount Bromo, passing by the coastal town of Pasuruan on the northeast coast of Java before continuing by a picturesque mountain road to one of the entrances of Bromo-Tengger National Park</p><p>Check in at a hotel in Tosari or Ngadisari, on the edge of Tengger Caldera.&nbsp;</p><p>Check-in late in the afternoon and freshen up before dinner at hotel’s restaurant.</p><p>Overnight in&nbsp;Tosari or Ngadisari near Bromo.</p>'),
(35, 6, 8, 'MOUNT BROMO – SURABAYA – DEPARTURE ', '<p style=\"color:#007bff\">Tosari – Surabaya City via Pasuruan (100 km): 4 hours Ngadisari – Surabaya City (120 km): 4 hours and 30 minutes Surabaya City – Surabaya Juanda Airport (12 km): 30 to 45 minutes\r\n</p>\r\n<p>Awake early this morning for an unforgettable Mount Bromo sunrise tour. Travel by 4WD jeep to a viewpoint with stunning panoramic views of the Bromo volcano and its other-worldly surroundings. Watch the sun rise up from behind the volcano in Penanjakan.</p><p>Continue by jeep down to the volcano caldera, often still covered by mist in the early morning. The mist, combined with the grey ashen-covered ground form to create an unusual atmosphere, often compared to the surface of the moon.</p><p>A 20-minute ride on horseback heads to a set of stairs which lead to the rim of the still-active Bromo crater for even more spectacular views.</p><p><u>Note</u>:</p><ul><li>Please bring warm clothes for your sunrise excursion next morning in Bromo as the temperature is low and cold</li><li>Weekend surcharge USD 10 per person will be applied for visit to Bromo.</li></ul><p>Return by horse and jeep to the hotel for breakfast.&nbsp;</p><p>Check out and leave Tosari or Ngadisari for a drive to Surabaya, Indonesia’s second largest city.</p><p>Once in the centre of Surabaya,we stop for a late lunch at the restaurant of Sampoerna Factory and then observe the fabrication of the famous Indonesian kretek cigarettes.&nbsp;</p><p>After the visit, transfer to Surabaya Airport for a late-afternoon onward flight to the next destination.</p>'),
(36, 7, 1, 'ARRIVAL TO JAKARTA', '<p style=\"color:#007bff\">Transfer Soekarno Hatta international Airport – Jakarta (30 km): 1 hours\r\n</p>\r\n<p>Arrive this afternoon at Soekarno Hatta International Airport and be greeted by the local guide and transferred to the Carita area.</p><p>Upon arrival, check-in at the hotel and enjoy the first day in Indonesia at leisure while relaxing at the resort.</p><p>Overnight in Jakarta.</p>'),
(37, 7, 2, 'OUTER BADUY TRIBE (SOFT TREKKING)', '<p style=\"color:#007bff\">Jakarta – Baduy (135 km): 4 hours\r\n</p>\r\n<p>Early morning at 05:00 am, be picked up at the hotel by a guide and driver.&nbsp;</p><p>Then drive for around 3.5 hours to the border of Baduy Tribe by private car. Breakfast will be provided at a local restaurant with a cup of coffee to enjoy. After breakfast, prepare to explore the unique Baduy Tribe. Get to visit and learn about the ethnic Sundanese ethnic. (<strong>Please note: </strong>It is not allowed to visit the inner Baduy Tribe. Only the outer Baduy Tribe is accessible.)</p><p>Learn all about the Baduy Tribe who call themselves Kanekes. They are a traditional Sundanese community living in the western part of Indonesia in the province of Banten, near Rangkasbitung. The population of 11,700 is centered in the Kendeng Mountains at 300-500 metres above sea level. Ethnically the Baduys belong to the Sundanese ethnic group. Their racial, physical and linguistic traits bear much resemblance to the rest of the Sundanese people, however, the difference is in their way of life.</p><p>Baduy people resist foreign influences and strive to preserve their traditional way of life, while most modern Sundanese are more open to foreign influences. The Baduy are divided into two sub-groups, the Baduy Dalam (Inner Baduy), and the Baduy Luar (Outer Baduy).</p><p>No foreigners are allowed to meet the Inner Baduy who practice limited contact with the outside world. The origin of the word Baduy may come from the term ‘Bedouin’ although other sources claim the source is a name of a local river.</p><p>Overnight will be at Gazebo at the outer Baduy.</p>'),
(38, 7, 3, 'OUTER BADUY TRIBE – BOGOR', '<p style=\"color:#007bff\">Transfer by vehicle Baduy – Bogor (138 km) : 3 hour 30 minutes Trekking distance : 60 minutes ascent , descending 1 hour (until the top level, if weather permit) Level difficulty : medium\r\n</p>\r\n<p>This morning, have breakfast at the local house at 07:00 while enjoying the beautiful glory of morning at the gazebo. After breakfast, prepare to drive to Bogor.</p><p>Enjoy the long and scenic drive before arriving at the beautiful and green Bogor.</p><p>Dinner is provided at the hotel.</p><p>Overnight in Bogor.</p>'),
(39, 7, 4, 'SUKABUMI – CIPICUNG – BUNIAYU (CAVING)', '<p style=\"color:#007bff\">Transfer Bogor – Buniayu (120 km) : 4 hours driving Caving distance : 1500 M ; 4 hours walking Difficulty: medium\r\n</p>\r\n<p>This morning, take an early breakfast at the hotel.</p><p>Enjoy a scenic drive passing some local villages to Sukabumi area.</p><p>Arrive at Buniayu Village in Central Java. The area is surrounded by 83 unique ornamental caves, partly shaped by the rainforest vegetation that grows inside them.</p><p>Refreshments will be provided upon arrival followed by a full safety briefing from a certified instructor from the International Union of Speleology&nbsp; (UIS).</p><p><strong><em>Please note:</em></strong><em> All participants should complete the guest form, provide an emergency contact and sign the waiver letter in advance.</em></p><p>The adventure begins with a 200 metres walk to the starting point where there is a vertical cave 18 metres deep. Be assisted by the instructor while using the rope to descend down into the cave. Then walk through the eternal darkness to discover an underground river and eventually a mesmerising waterfall about 400 metres into the cave. With a bit of luck, it’s possible to see some creatures endemic to Buniayu including the blind cricket and cave spiders.</p><p>While having a drink break, turn the lights off and feel the sensation of being in complete darkness. Continue to the next site, a shallow freshwater lake. Trek through water for 400 metres before arriving at some steps that lead to the finish point.</p><p>Then, take a refreshing dip in Bibijilan Waterfall. Afterwards, hop onto local transportation and transfer to the homestay for the evening.</p><p>Late lunch is provided at the homestay.</p><p><strong>Optional : Horizontal Caving </strong></p><p>If time permits, end the adventure by exploring a horizontal cave near the homestay. This 200m cave has impressive stalactites and stalagmites.<strong>No extra charge applied. </strong></p><p>Spend the rest of the day at leisure. Relax or take some time to explore the area independently.</p><p>Dinner at the homestay.</p><p>Overnight in Buniayu.</p><p><strong><em>Please note: </em></strong><em>The accommodation in Buniayu is a local house without air condition, no hot water or shower.</em></p>'),
(40, 7, 5, 'BUNIAYU – BIBIJILAN AREA – BUNIAYU (RIVER TREKKING & SHOWER CLIMBING)', '<p style=\"color:#007bff\">Transfer Homestay – starting point (5 km) : 15 minutes / one way Difficulty: medium\r\n</p>\r\n<p>Wake up early and enjoy breakfast at the homestay.</p><p>Next, receive a short briefing on how to shower climb. Then get fitted with equipment prior to being transferred to the starting point.</p><p>First, descend through an area of pine forest to locate the river trekking trail which is only 20cm deep during dry season. Sometimes it’s necessary to walk against the flow of the river, which can be challenging in the rainy season. Try to slide on the first waterfall to build confidence before getting the adrenaline pumping and attempting a 7m jump from the cliff edge into the waterfall.</p><p>Then, continue to the highlight of the day, a 125m climb up the highest waterfall, battling against the high volume of water that’s continuously pounding down, it’s the most challenging part of the day, but an incredibly rewarding experience.</p><p>Then, return to the starting point to enjoy a hot chocolate before transferring back to the homestay.</p><p>Enjoy a late lunch at the homestay followed by a free afternoon.</p><p>During dinner, the instructor will provide a farewell speech and distribute certificates to all UIS participants.</p><p>Overnight in Buniayu.</p><p><em>Note: The accommodation in Buniayu is a local house without air condition, no hot water or shower.</em></p>'),
(41, 7, 6, 'BUNIAYU – CANGKUANG – GARUT', '<p style=\"color:#007bff\">Transfer Buniayu – Cangkuang (100 km) : 3 hours 20 minutes Transfer Cangkuang – Garut (22 km) : 45 minutes driving\r\n</p>\r\n<p>Enjoy breakfast at the homestay and then transfer to the Garut area for the next adventure.</p><p>Today is a reasonably long drive but there will be picturesque photo stops along the way. Lunch is at a local restaurant in the Nagrek area. En route, take a short tour to Cangkuang Temple. Situated by Cangkuang Lake it is a major archaeological discovery found in West Java that dates back to the 8th century. Take a short horse cart ride followed by a bamboo raft across the small lake to reach the temple. Climb a flight of stairs through a grove of old trees to this hilltop temple. Afterwards, the local guide will lead the way on a short one-hour stroll through rice fields and small villages.</p><p>Upon arrival to Garut, relax and prepare for the sunrise trek the following morning.</p><p>Dinner at hotel.</p><p>Overnight in Garut</p>'),
(42, 7, 7, 'GARUT – PAPANDAYAN – KAMPUNG NAGA – GARUT (TREKKING)', '<p style=\"color:#007bff\">Transfer Garut – Papandayan (51 km) : 1 hour 30 minutes / one way Trekking distance : ascent 2 hours, descending 1 hour Difficulty: easy\r\n</p>\r\n<p>Begin this morning before dawn and aim to reach the summit of Mount Papandayan for sunrise. Mount Papandayan is one of most active volcanoes in Indonesia and offers a mesmerising golden panoramic view of the area that is one of the best in the archipelago. The trek starts at 2,200m and leads to the peak of 2,665m.</p><p>At the summit there are four large craters which contain active fumarole fields where smoke emerges from the volcano. The 1772 eruption truncated the volcano into a broad shape with two peaks and a flat 1.1 km wide crater in the middle, making it look like a twin volcano.&nbsp;</p><p>Enjoy a light breakfast while watching the sun rise. Afterwards, explore the crater and walk through the ‘dead forest’ to admire the icon of Papandayan – the edelweiss garden just after the forest. This area is the most photogenic spot in Papandayan.</p><p>After lunch drive to the Tasikmalaya area and visit one of the unique tribes in West Java, known as the Kampung Naga which&nbsp; means ‘The Dragon\'s Village’. It is a traditional Sundanese village on the border of the Ciwulan River. While walking around the village, see about 100 wooden houses with roofs made of<em> ijuk</em>, sugar palm fiber. There is no electricity in the village and the people maintain a traditional way of life. Return to the hotel and take a rest.</p><p>Dinner at the hotel.</p><p>Overnight in Garut</p>'),
(43, 7, 8, 'GARUT – CIPEUNDEUY RAILWAY STATION - YOGYAKARTA', '<p style=\"color:#007bff\">Transfer Garut – Cipeundeuy (92km): 3 hours Transfer Railway Station – Yogya (4 km): 15 minutes\r\n<p>Enjoy an early breakfast before a 3-hour transfer to Garut Railway Station and then catch the train to Yogyakarta, the artistic and cultural capital of central Java.</p><p><strong>Train details</strong>: Argo Wilis from Garut to Yogyakarta departs at 10:30 and arrives in Yogyakarta at 15:50. Schedules are subject to change without prior notice.</p><p>Upon arrival to Yogyakarta, transfer to the hotel, located in a central area, for an overnight stay.</p><p>Dinner at leisure.</p><p>Overnight in Yogyakarta</p>'),
(44, 7, 9, 'YOGYAKARTA – DEPARTURE', '<p style=\"color:#007bff\">Transfer Yogya – Adi Sutjipto International Airport (6 km): 20 minutes\r\n</p>\r\n<p>Breakfast at the hotel.</p><p>Depending on the flight schedule, transfer to Adi Sutjipto International Airport to catch the onward flight.</p><p>International flight option from Yogyakarta: Silk Air from Yogyakarta to Singapore MI153 departing at 1750 on Sunday (airfares not included and quoted separately). Schedules are subject to change without prior notice.</p>'),
(45, 8, 1, 'ARRIVAL JOGJA – BOROBUDUR', '<p style=\"color:#007bff\">Transfer from Jogjakarta Airport to Jogjakarta city center (6 km): 20 minutes Transfer from Jogjakarta to Borobudur (41km): 1 hour 20 minutes Jogjakarta city tour: around 30 minutes walking\r\n</p>\r\n<p>Upon arrival to Yogyakarta’s Airport, our guide and driver will be waiting at the arrival’s hall.</p><p>Begin the day with a short orientation tour of the city, starting at the Sultan’s Palace. Also known as ‘Kraton’, this building dates back to the 18th century and is a great example of traditional Javanese sultanate architecture. Walking through the rooms and chambers, learn all about this unique aspect of Javanese heritage and culture.</p><p><em>Recommended flights: Silk Air from Singapore to Yogyakarta &nbsp;MI152 arriving at 0930 on Tuesday, Friday and Sunday (airfares not included and quoted separately). Schedules are subject to notice without prior notice.</em></p><p>Lunch today will be held at the Gadri restaurant in front of the Kraton.</p><p>After lunch, proceed to Borobudur and check in to the hotel. The afternoon is at leisure and dinner will be had at the hotel.</p><p>Overnight at the hotel in Borobudur</p>'),
(46, 8, 2, 'BOROBUDUR – FROM MENOREH HILLS TO BOROBUDUR - SELO', '<p style=\"color:#007bff\">Transfer from Borobudur to Selo (36km): 1 hour 15 minutes Trekking: 2 hours 30 minutes Difficulty : Easy\r\n</p>\r\n<p>After an early breakfast at the hotel, depart at 07:00 for the transfer to Menoreh Hills. Start the first trek, which offers a chance to see the massive Borobudur complex from afar, along with the range of volcanoes sitting off in the distance. The trek goes along plantations and traditional villages until arriving at the temple.</p><p>Spend some time exploring the breathtaking Borobudur complex, the largest Buddhist temple in the world, learning all about the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labour and took more than 75 years to complete. These days, the UNESCO Heritage site is still visible in its full glory with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>Enjoy lunch today at a local restaurant near the complex.</p><p>After lunch, transfer to Selo village. Enjoy the afternoon at leisure and rest up at the hotel early before the evening’s hike. The Mt. Merapi trek will begin at midnight!</p><p>Overnight at guesthouse in Selo</p>'),
(47, 8, 3, 'SELO – MOUNT MERBABU – SOLO', '<p style=\"color:#007bff\">Trekking distance: 5-6 hour ascent; 3-4 hours descending Elevation: +1500m Average distance: 10km Difficulty : hard\r\n</p>\r\n<p>At 04.30 - Start the trekking from the starting point of your <strong>Merbabu trekking, at 1700 meters</strong> above seas level.</p><p>After a few hours rest we will be picked up at our accommodation at 3am and transfer to the base of Merbabu.</p><p>Our ascent will begin at around 4.30am with a 6hr climb, crossing through forests of pine, until we reach the Sabana II camp. We can rest a little while here before climbing for 45 more minutes up to the summit. As we climb we can enjoy watching the first light illuminate the panorama, which will include nearby Mt Merapi, as well as distant volcanoes away on the horizon.</p><p>We descend to the camp for a well-earned lunch before descending back down towards Selo, which should take around 3-4hrs. We check into our simple guesthouse in Selo where we can rest for the remainder of the day.</p>'),
(48, 8, 4, 'SOLO – MOJOKERTO (BY TRAIN) – TUMPANG', '<p style=\"color:#007bff\">Transfer from Yogyakarta to Mojokerto (282km) by train : 4 hours Transfer from Mojokerto to Tumpang (90km) by car: 3 hours\r\n</p>\r\n<p>Start the day with an early morning pick up from the hotel. Head out alongside the guide to the Solo train station, boarding the Sancaka Pagi train. The scenic ride will be in executive, air-conditioned class heading to Mojokerto in Eastern Java.</p><p><em><u>Note:</u></em><em>&nbsp;Planned route is aboard Sancaka Pagi, departing 0755 and arriving 1055. Schedule subject to change without notice. Your guide will accompany on the journey.</em></p><p>Travelling by train in Java is a wonderful opportunity to meet locals and is also the best way to enjoy the volcanic landscapes of Central and East Java. It is suggested to bring warm clothes as the air conditioning is usually turned on high!</p><p>Upon arrival in Mojokerto, our driver will be waiting to provide transport to Tumpang village at the gates of the Tengger National Park.</p><p>Lunch will be provided at a local restaurant en route.</p><p>Dinner will be provided at the guesthouse.</p><p>Overnight in Tumpang</p><p><strong><em><u>NOTE :&nbsp;</u></em></strong><em>Please provide your passport details to proceed with train tickets at the confirmation of the booking. Without passport details we will not be able to issue the tickets.</em></p>'),
(49, 8, 5, 'TUMPANG – RANUPANI – RANU KUMBOLO – KALIMATI', '<p style=\"color:#007bff\">Transfer from Tumpang to Ranupani (28 km) by Jeep: 2 hours Trekking (Ranu Pani – Ranu Kumbolo): 4hours Trekking (Ranu Kumbolo – Kalimati): 2hours Difficulty: Hard\r\n</p>\r\n<p>After breakfast at the hotel, there will be a brief medical check-up provided. Continue by Jeep for the scenic drive to the southern gate of Bromo Tengger National Park and Ranu Pani.</p><p>Upon arrival at Ranu Pani Village, meet the local guide and team of porters and report to the National Park office. After a briefing on the Semeru ascent, safety and logistics, start the challenging trek up Mt. Semeru.</p><p>Starting from Ranu Pani village and heading towards&nbsp;Ranu Kumbolo village, trek through bush and casuarina forest which dominates the landscape. Make a stop along the way at the stone wall of Watu Rejeng (4&nbsp; hours – approximately 10km).</p><p>After a picnic lunch, the climb will continue from Ranu Kumbolo (2400m) to Kalimati (2700m) through an undulating landscape of savanna (2 Hours – Approximately 5km), where the tents will be set up for the night.</p><p>Dinner is prepared by the team; overnight in tents at Kalimati Basecamp.</p>'),
(50, 8, 6, 'KALIMATI – MT SEMERU SUMMIT (MAHAMERU) – RANUPANI', '<p style=\"color:#007bff\">Transfer from Ranupani to Bromo: 1 hour Trekking to summit Mount Semeru: 3 hrs Trekking down to Ranupani: 6 hrs Difficulty: Very Hard\r\n</p>\r\n<p>Start the ascent to the top of Mt. Semeru at approximately 02:00 in the morning.</p><p>The peak of Mt Semeru is 3,676 m above sea level and is the highest mountain in<br> Java and one of its most active volcanoes. &nbsp;Mt Semeru resembles a perfect cone but in fact it is a dome form with a stripe field on the hillsides.</p><p>Estimated trekking time is 3-4 hours on sand and stone terrain. During the hike, there will be plenty of photo opportunities and also many chances to see its frequent eruptions. After reaching the top, start the descent back down to basecamp for breakfast before returning to Ranu Pani Village.</p><p>Dinner and accommodation tonight are both at the house of a Local Ranger in Ranupani.</p><p><em>Alternative program:</em></p><p><em>If it is not possible to climb Mt. Semeru due to natural circumstances we cannot control, we will offer an alternative trek to Welirang Volcano.</em></p>'),
(51, 8, 7, 'RANUPANI – CEMOROLAWANG – BROMO SUMMIT – CEMOROLAWANG', '<p style=\"color:#007bff\">Transfer from RanuPani to Cemorolawang: 1hour Trekking around Mount Bromo: 3 hours Difficulty: Easy\r\n</p>\r\n<p>After breakfast in the morning, transport will be provided by 4x4 vehicle, crossing the Tengger region and the Caldera of Mount Bromo, before finally arriving in Cemorolawang.</p><p>Upon arrival, check in to the hotel and freshen up before the next journey. Lunch will be provided at hotel.</p><p>In the afternoon, enjoy a walk through the exotic Tenggerese Villages, crossing a sea of sand to the base of Mount Bromo. Climb the volcano and summit the rim of the crater via approximately 250 steps (2329 M). Alongside the guide, discover some scenic viewing points around the crater before descending the volcano.</p><p>After the explorations, return to the hotel for dinner and relax for the evening.</p><p>Overnight in Cemorolawang</p>'),
(52, 8, 8, 'CEMOROLAWANG – MOUNT PENANJAKAN – KETAPANG', '<p style=\"color:#007bff\">Transfer from Cemorolawang to Seruni (5 km) : 10 minutes Transfer from Cemoro Lawang to Pasir Putih (126 km): 4 hours Transfer from Pasir Putih to Ketapang (109km): 3 ½ hours Trekking to Mount Penanjakan : 2 hours Difficulty: Easy\r\n</p>\r\n<p>Start the day early for the departure by Jeep to Seruni Village- the starting point of the day’s sunrise trek. Start trekking to Mount Penanjakan (2770 M) for the magnificent sunrise of Mount Bromo.</p><p>After sunrise, trek back down the mountain to enjoy breakfast at the hotel before returning to the Ketapang area. &nbsp;</p><p>Check-out of the hotel and transfer to Ketapang, enjoy lunch at a local restaurant. Upon arrival, enjoy the rest of day at leisure in the resort.</p><p>Dinner will be provided at hotel</p><p>Overnight in Ketapang</p>'),
(53, 8, 9, 'KETAPANG – TREK TO IJEN CRATER – PEMUTERAN', '<p style=\"color:#007bff\">Transfer from Ketapang – Banyuwangi – Paltuding Ijen base camp (38km) : 1 hour 15 minutes each way Transfer from Ketapang harbor East Java to Gilimanuk harbor Bali (6 km) by ferry: 45 minutes + 1 hour time difference between Java and Bali Transfer from Gilimanuk to Pemuteran (32 km) : 1 hour Trekking: 4hours Difficulty: Easy\r\n</p>\r\n<p>Awake early again this morning for an excursion to Mt Ijen. Breakfast is served at the hotel before setting off by 4x4 Jeep.</p><p>Reach Paltuding, the base camp of Kawah Ijen located at 1,850m. The trek to the top is 3 kilometres and follows a wide, packed dirt pathway for about 1 hour 30 minutes. At the top of Mt Ijen is a large crater lake surrounded by sulphur mines. During the walk, it is highly likely to encounter local miners carrying loads of up to 70 kg, often barefooted, down the mountainside.</p><p>Upon reaching the top (2,368m), enjoy views of the Crater Lake which is 200 meters deep and contains about 36 million cubic meters of steaming, acidic water.</p><p>Local authorities only allow watching the scenery from the rim of the crater; it is strictly forbidden to walk down to the lake shore due to very toxic fumes. For anyone wishing to walk down to observe the ‘blue fire’, a disclaimer must be signed.</p><p><em>Alternative program:</em></p><p><em>If it is not possible to climb Mount Ijen due to natural circumstances we cannot control, we will offer an alternative program to Kaliklatak coffee and rubber plantation.</em></p><p>Return to the hotel late in the morning.</p><p>In the afternoon, transport will be provided to the Ketapang ferry terminal near Banyuwangi. Check-in before crossing the Bali straits to the island of Bali by local ferry (45-minute journey.)</p><p>Upon reaching Gilimanuk on Bali’s western shores, continue by road to the village of Pemuteran.</p><p>Check in at the hotel in Pemuteran.</p><p>The Javanese guide and driver will return to Java; meet the Balinese guide and driver the following day at 14:00</p><p>Dinner and overnight in Pemuteran</p>'),
(54, 8, 10, 'PEMUTERAN – MENJANGAN ISLAND – PEMUTERAN', '<p style=\"color:#007bff\">Transfer from Pemuteran to Menjangan (15km): 30 minutes per waySnorkeling: 2 hours\r\n</p>\r\n<p>After enjoying breakfast at the hotel, spend the remainder of the day at leisure in Pemuteran, relaxing on the beach after a strenuous few days.</p><p><strong>*Optional Activity: </strong><strong>Menjangan Island snorkeling</strong></p><p>Head this morning for a snorkeling trip around the Menjangan Island in the heart of the West National Park of Bali. The island is without doubt the most fascinating underwater world Bali has to offer. You will spend your morning viewing beautiful coral gardens, whilst also having the chance to take a short walk on the island to view the local wildlife including deer.</p><p>Picnic lunch on the island. Back to your hotel and spend the afternoon at leisure</p><p><em>Inclusions: </em><em>snorkeling gear</em><em>, </em><em>local guide for snorkeling</em><em>, life </em><em>jacket, local boat, lunch box</em><em>.</em></p><p>Farewell dinner in Pemuteran</p><p>Overnight in Pemuteran</p>'),
(55, 8, 11, 'PEMUTERAN – DEPARTURE', '<p style=\"color:#007bff\">Transfer from Pemuteran to Ngurah Rai Airport (130 km): 4 hour\r\n</p>\r\n<p>After breakfast at the hotel, spend the morning at leisure until transport (provided) to the airport for the onward flight.</p>'),
(56, 9, 1, 'YOGYAKARTA ARRIVAL – YOGYAKARTA', '<p style=\"color:#007bff\">Yogyakarta Airport – Yogyakarta city center (8 km): 20 minutes\r\n</p>\r\n<p>Arrive at Adisucipto International Airport in Yogyakarta.</p><p><u>Recommended flights (Airfares are not included and quoted separately. Schedules are subject to change without prior notice):</u> Silk Air from Singapore to Yogyakarta MI152, departing at 08:10 and arriving at 09:30 on Tuesday, Thursday, and Friday or MI154, departing at 15:40 and arriving at 17:05 on Sunday.</p><p>Be met with guide and driver upon arrival and transfer to the hotel in Yogyakarta.</p><p>Enjoying a lunch at the hotel restaurant before hotel check in. After checking in and getting settled, the rest of the day is free to spend at leisure either exploring independently or relaxing at the hotel.</p><p><u>Note</u>: Legal check-in time at 14:00.</p><p>Despite the official spelling of ‘Yogyakarta’ this town is usually pronounced Jogjakarta and often written as simply Jogja. It is the most popular tourist destination on Java, largely thanks to its proximity to the temples of Borobudur and Prambanan. Jogja is a center of art and education and the cradle of traditional Javanese culture</p><p>Overnight in Yogyakarta.</p><p><strong>Optional evening tour</strong></p><p><strong>Evening Food Hopping Around Yogyakarta</strong></p><p>After work or school, many of Yogyakarta’s local people go for a glass of kopi joss on the street. A piece of blazing charcoal is dropped into the coffee producing a sizzling sound which leads to the name “joss.” More than just a great drink, joss is an experience. Enjoy this unique beverage as locals do while bumping shoulders with them.</p><p>A short stroll away is bustling Malioboro Street. Visit a street vendor from South Sumatra who has been selling delicious Pempek fish cakes there since 1984. Served with spicy and sour tamarind sauce, it makes a great appetizer and is best enjoyed with Indonesia’s unofficial national drink, Botol.</p><p>The next stop, the popular Bakmi “Kadin”, named after the Indonesian Chamber or Industry of Commerce simply because it is located by the office building, is reached quickly by local Andong horse cart. Javanese-style fried noodles are on the menu, which are usually accompanied to the sound of traditional Javanese songs played by street musicians on a karaoke machine.</p><p>Move on by becak through the South-Square of the Sultan’s Palace to Alun-alun Kidul Field with its sacred twin Banyan. Locals gather here to ride on carts decorated with colorful lamps. Try to walk in a straight line between the two Banyan trees with blindfolded eyes: local legend says a wish will come true!</p><p>The journey continues to a so-called Pendopo, a semi-open royal house that turns into a food venue at night. Both sweet and savoury coconut and palm sugar treats are here in abundance. The atmosphere is a bit quirky and invites sitting down with a good cup of coffee or tea as day fades into night and the evening vibes settle in. <strong>(D)</strong></p>'),
(57, 9, 2, 'YOGYAKARTA – KRATON – PRAMBANAN – RAMAYANA PERFORMANCE ', '<p style=\"color:#007bff\">Yogyakarta city center – Prambanan Temple (22 km): 45 minutes\r\n</p>\r\n<p>After breakfast engaging in exploring the many cultures of Yogyakarta.</p><p>Start with a visit to The Sultan’s Palace, also known as Kraton, is the central aspect of the Javanese cosmology being at the centre of the Mount Merapi and Parangtritis Beach lines. This building constructed between 1756 and 1790, is a fine example of traditional Javanese sultanate architecture. Remaining today as the residence of the Sultan, this living museum features a showcase of Javanese Culture and relics and depending on your day of visiting there will be a cultural performance ranging from Golek Menak Puppet‘s to classical Javanese Poetry performance known as Macapat.</p><p>Continue with a 30 minutes ride by becak (similar to a cyclo or trishaw) and explore the neighboring Kauman village built in the vicinity of the Kraton. This village is the central keepers of the Islamic religion as authorized by the Sultanate. The small gangs (laneways) of this village are so designed to ensure minimal disturbance of noise and traffic so as to not interrupt the Santri or Islamic students from their study. It was also said that by ensuring the laneways were only passable on foot - every man was equal.&nbsp;</p><p>End your Becak ride at the Taman Sari Water Palace This addition to the royal complex was built over 200 years ago by the first Sultan with bathing pools for his harem.</p><p>Attend a short demonstration of Wayang Kulit, the famous Javanese leather puppet before enjoying lunch at a local restaurant</p><p>In the mid-afternoon, leave Yogyakarta for Prambanan: These huge ancient Hindu temples were built in the 9th century and the three main inner shrines are dedicated to the Hindu trinity: Brahma, Vishnu and Shiva. UNESCO named Prambanan a Heritage Site in 1991. Your guide will explain the history and symbolism of the temples as you walk around.</p><p>After the visit continue to the nearby Prambanan local restaurant where you will enjoy an early dinner followed by a traditional performance of the Ramayana ballet dance at an opened theatre with the illuminated temples of Prambanan as a background.</p><p><u>Note:</u> Ramayana dance at Prambanan are seasonally (between May and October) and only performed on certain days of the week. When there’s no show at Prambanan, it will be replaced by the similar one performed at the Pura Wisata theatre in Yogyakarta.</p><p>Return to hotel in Yogyakarta.</p><p>Overnight in Yogyakarta.</p>'),
(58, 9, 3, 'YOGYAKARTA – CANDIREJO – BOROBUDUR ', '<p style=\"color:#007bff\">Yogyakarta – Borobudur (42 km): 1 hours 30 minutes Borobudur Temple – Candirejo (3 km): 10 mins Candirejo – Mendut Temple – Pawon Temple (5 km): 15 mins\r\n</p>\r\n<p>This morning be picked up by the tour guide and driver for the drive to one of the highlights of the trip, Borobudur.</p><p>Explore this massive Buddhist Temple- the largest in the world- and discover the incredible history behind its construction. Comprised of thousands of volcanic and river stone blocks, the temple was assembled entirely by human labor and took more than 75 years to complete. These days, the UNESCO Heritage site is still visible in its full glory- with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>Lunch will be served in a local restaurant near Borobudur.</p><p>Next, get a taste for local life with a horse cart ride through Candirejo Village. Known as a <em>dokar</em>, the local horse cart will take you through this peaceful, charming village. You’ll travel along small lanes lined with traditional houses and stop to see village activities such as making cassava crackers, playing the gamelan and harvesting of local crops.</p><p>Continue with a visit to Mendut and Pawon temples, nearby Borobudur. Older than Borobudur, this pyramid-shaped temple houses three impressively carved stone statues</p><p>Return to Yogyakarta.</p><p>Overnight in Yogyakarta.</p>'),
(59, 9, 4, 'YOGYAKARTA – JOMBANG – MT BROMO ', '<p style=\"color:#007bff\">Yogyakarta – Jombang (250 km): 3 hours 30 minutes by train Jombang – Trowulan (20 km): 40 minutes Trowulan – Pasuruan – Puspo – Tosari/Bromo (115 km): 4 hours Trowulan – Sukapura – Ngadisari/Bromo (130 km): 4 hours 30 minutes\r\n</p>\r\n<p>Early morning wakeup call at 05:30. A Breakfast box will be provided by the hotel (to be eaten on board the train).</p><p>At 06:00 this morning be transferred to Yogyakarta Railway station for a scenic train ride to Jombang in East Java.&nbsp;&nbsp;</p><p>The guide will accompany on the journey.</p><p><u>Note</u>:</p><ul><li>Planned route is aboard Sancaka Pagi from Yogyakarta to Jombang, departing 06:45 and arriving 10:33. Schedule is subject to change without notice.</li></ul><ul><li>Full name and Passport details are required to book train ticket and must be provided at the time of reservation</li><li>The previous evening you need to bring down your main luggage to the reception before 22:00 with clear name identification. Main luggage will be transferred during the night with the driver and vehicle that will pick you up the next morning on arrival at Jombang Railway station in East Java.</li><li>It is advisable to bring a small bag with a change and toiletry and a jersey as air conditioner in the train can be quite chilly.</li></ul><p>Travelling by train in Java is a wonderful opportunity to meet local people and is also the best way to enjoy the volcanic landscapes of Central and East Java.</p><p>Local driver will be there at the railway station upon arrival in Jombang.</p><p>Continue to the nearby Trowulan, the site of the former capital of the Majapahit Kingdom who ruled the island of Java for centuries. Visit the archaeological museum and the temples of Candi Bajang Ratu and Candi Tikus</p><p>From Trowulan, take lunch in a local restaurant before proceeding to Mount Bromo passing by the coastal town of Pasuruan which is located on the northeast coast of Java, before continuing by a picturesque mountain road to one of the entrance of the Bromo-Tengger National Park.</p><p>Check in at your hotel located in Tosari or Ngadisari on the edge of Tengger Caldera.&nbsp;</p><p>Check-in late in the afternoon to your hotel and freshen up before dinner</p><p>Overnight in&nbsp;Tosari or Ngadisari near Bromo.</p>'),
(60, 9, 5, 'MOUNT BROMO – BANYUWANGI ', '<p style=\"color:#007bff\">Tosari – Puspo – Pasuruan – Ketapang (288 km): 9 hours Ngadisari – Sukapura – Ketapang (247 km): 8 hours Ketapang – Banyuwangi – Licin/Ijen (22 km): 45 minutes\r\n</p>\r\n<p>Awake early this morning well before dawn for a sunrise tour of Mt Bromo.</p><p>Travel by 4WD jeep to a viewing spot with stunning views of the Bromo volcano and surroundings. Watch the sun rise up from behind the volcano in Penanjakan.</p><p>Continue by jeep down to the volcano caldera, often still covered by mist in the early morning. The mist, combined with the grey ashen-covered ground form to create an unusual atmosphere, often compared to the surface of the moon.</p><p>A 20-minute ride on horseback will take you to a set of stairs which lead to the rim of the still-active Bromo crater.</p><p><u>Note</u>:</p><ul><li>Please bring warm clothes for your sunrise excursion next morning in Bromo as the temperature is low and cold.</li><li>Weekend surcharge USD 10 per person will be applied for visit to Bromo.</li></ul><p>Return by jeep to your hotel for breakfast and time to refresh before checking out</p><p>Afterwards set off on a long drive along the northern coast of Java towards its Eastern end with a late a late lunch being served in a local restaurant en route.</p><p>Upon arrival late afternoon or early evening, check in at the hotel in Ketapang or Licin village near Ijen.</p><p>Dinner is served at the hotel.</p><p>Overnight in Ketapang or Ijen.&nbsp;&nbsp;&nbsp;</p>');
INSERT INTO `itinerary` (`id_itinerary`, `id_package`, `day`, `caption`, `detail`) VALUES
(61, 9, 6, 'MOUNT IJEN – PEMUTERAN ', '<p style=\"color:#007bff\">Ketapang – Banyuwangi – Paltuding Ijen base camp (38km): 1 hour 15 minutes Licin – Platuding Ijen Base camp (22 km): 45 minutes to 1 hour Ketapang harbor East Java – Gilimanuk harbor Bali (6 km): 45 minutes (by ferry) + 1 hour time difference between Java and Bali Gilimanuk – Pemuteran (32 km): 45 minutes\r\n</p>\r\n<p>Awake early this morning for an excursion to Mount Ijen. Breakfast is served at the hotel before setting off by 4WD jeep (or alternatively a breakfast box will be provided).</p><p>After a 90-minute drive, reach the Paltuding base camp (1,850m). The trek to the top is 3 kilometres and follows a wide, packed dirt pathway. At the top of Mount Ijen is a large crater lake surrounded by sulphur mines and during your walk, you will probably encounter men carrying loads of up to 70 kg, often barefooted, down the mountainside.</p><p>Upon reaching the top (2,385m) there is time to enjoy the views of the Crater Lake which is 200 meters deep and contains about 36 million cubic meters of steaming, acidic water. Witness the agility and strength of the miners as they collect and carry the sulphur blocks up to the crater rim.</p><p><em><u>Important notes</u></em><em>:</em></p><ul><li>Local authorities only allow watching the scenery from the rim of the crater – It is strictly forbidden to walk down to the lake shore due to very toxic fumes that are escaping from the lake. Only the sulphur porters are allowed to this area.</li><li>This trekking requires good physical condition as well as good walking shoes and some warm clothing because of the low morning temperatures.</li><li>Mount Ijen is an active volcano therefore access is subject to volcanic activity at the time of visit: an alternative program to Kaliklatak coffee and rubber plantation will be provided if the volcano is closed during your stay.</li><li>Weekend surcharge USD 5 per person will be applied for visit to Ijen.</li></ul><p>Return via the same route to base camp and continue by road to Banyuwangi for a late lunch at a local restaurant.</p><p>In the afternoon, check in at the Ferry terminal in Ketapang before crossing the Bali straits to the island of Bali by local ferry for a scenic journey to Gilimanuk on Bali’s western shores.</p><p>Upon reaching Bali, you will continue by road to Pemuteran</p><p>Overnight at Pemuteran</p>'),
(62, 9, 7, 'PEMUTERAN', '<p>Today is a day at leisure after a long and exhausting trip from Java Island.</p><p><strong>Optional:&nbsp; S</strong>norkeling in &nbsp;Menjangan Island pre-booked, please see the rate below</p><p>Overnight in Pemuteran.</p>\r\n'),
(63, 9, 8, 'PEMUTERAN - MUNDUK ', '<p style=\"color:#007bff\">Pemuteran – Munduki (55Km): 1 hour 30 minutes\r\n</p>\r\n<p>After check-out be picked up from the hotel by guide and driver for transferred to Munduk with some stops.</p><p>This morning drive to Brahma Vihara Arama, a rare Buddhist temple in Bali for a visit and from here we go to the hot springs where you can take a bath in these sacred waters (changing facilities are basic).</p><p>A holy spring at Banjar on the north coast, the natural Sulphur hot springs with their greenish milky water are believed to have healing powers. Take a dip in the soothing waters with a choice of two pools of different temperature.&nbsp; After a good soak, towel off and wrap up today’s exploration of the mountainous regions of Bali with the final leg of the trip to further up the hills over scenic roads before descending to the beautiful remote area of Munduk in Northern Bali.</p><p>Check in to the hotel and the rest of the day is at leisure.</p><p>Overnight in Munduk</p>'),
(64, 9, 9, 'MUNDUK - UBUD', '<p style=\"color:#007bff\">Munduk – Bratan Ulun Danu Lake (20.4 Km): 40 minutes Bratan Ulun Danu – Jatiluwih (22Km): 45 minutes Jatiluwih – Ubud (41Km): 1h30minutes\r\n</p>\r\n<p>Munduk is the ideal location for outdoor activities and this morning you’ll have the chance to explore with a light trek. Munduk is surrounded by tropical rainforest with beautiful waterfalls and because of its cool temperature (20-25°C) many fruits, vegetables and spices are grown in the area.</p><p>This 2-hour trek begins this morning from your hotel. The trek takes you through many plantations growing coffee, cloves, vanilla, avocado and more- you’ll see how they are grown and harvested.</p><p>Return to the hotel for refreshing and check out after which we drive to a nearby local restaurant for lunch.</p><p>This afternoon, drive over a small mountain road overlooking two superb lakes: Buyan and Tamblingan.&nbsp; We continue to Lake Bratan where you will stop for a visit to the very scenic Ulun Danu Temple. The temple is set in the middle of the lake’s calm waters on a small bit of land giving the impression that it is ‘floating’.&nbsp;</p><p>From here, go to the nearby traditional local market of Bedugul where a myriad of fruits, vegetables and orchids are for sale from the area’s gardens.</p><p>There are also stalls selling exotic spices and souvenirs.</p><p>After your visit, return to the south via the UNESCO heritage listed rice fields of Jatiluwih for a photo stop and having a coffee break.</p><p>Proceed to Ubud and check in at hotel in Ubud. Rest of the afternoon at leisure.</p><p>Overnight in Ubud.</p>'),
(65, 9, 10, 'UBUD', '<p>Today’s began with Ubud Palace and Ubud market where local vendors come to buy and sell food as well as handicrafts and textiles.</p><p>Afterwards, make a way to Sacred Monkey Forest and to get into the local spirit, there will provide a traditional sarong (the fabric wrap worn by men and women) for everyone.</p><p>After exploring through this Monkey Forest, visit ARMA Museum (Agung Rai Museum of Art) and enjoy one of the best permanent collections of Balinese and Indonesian paintings &amp; sculptures. A visit to ARMA provides a great overview of the island’s rich artistic traditions.</p><p>Enjoy lunch at a local restaurant with a view of Indus valley.</p><p>Going back to hotel and this afternoon is at leisure.</p><p>Overnight in Ubud.</p>'),
(66, 9, 11, 'UBUD - SANUR', '<p style=\"color:#007bff\">Ubud –Sanur (27Km): 1hour\r\n</p>\r\n<p>After checking out the hotel for going to Sanur, have a visit to Pura Gunung Kawi. Set amid lush rice terraces in the village of Tampaksiring, the 11th-century temple can only be accessed by a series of stair cases. The effort is worth it, arriving at the top to admire a series of ten shrines carved directly into a cliff face. See elements of Hindu and Buddhist architecture, learning from the guide about the significance of the temple and its carvings.</p><p>Continue to nearby Pura Tirta Empul, a popular water temple for local devotees. Discover why water is such an important element in Balinese Hindu culture, hearing how it is used as holy medium at special ceremonies. Then take a soak in Tirta Empul’s cool spring water, with the water pouring from the numerous fountains that fill the pools.</p><p>Following lunch, drive on more scenic roads, pausing to take photos or to chat with the friendly locals. A special stop will be made in Penglipuran, a traditional countryside village well known for its typical Balinese entrance gates and unique architectural traditions.</p><p>Check in at the beach hotel.</p><p>Overnight in Sanur</p>'),
(67, 9, 12, 'SANUR - DEPARTURE ', '<p style=\"color:#007bff\">Sanur – Ngurah Rai Bali International Airport (14 km): 30 minutes\r\n</p>\r\n<p>Enjoy breakfast at hotel.</p><p>This morning is free at leisure until transferring to Denpasar International Airport for your departure flight.</p>'),
(68, 10, 1, 'ARRIVAL YOGYAKARTA – BOROBUDUR', '<p style=\"color:#007bff\">Yogyakarta Airport – Borobudur (45 km): 90 mins\r\n</p>\r\n<p>Be received by the guide and driver upon arrival at the Adisucipto International Airport in Yogyakarta, and transfer to the hotel in Borobudur.</p><p>Recommended flights: Silk Air from Singapore to Yogyakarta MI152 arriving at 09:30 on Tuesday, Friday and Sunday</p><p>Check in at the hotel and spend the rest of the day at leisure.</p><p>Note: Check in time at 14:00 (an early check-in might be possible; a guaranteed early check-in can be booked)</p><p>Option: After taking some time to freshen up and relax in the hotel, meet with the guide again in the mid-afternoon and take a visit to two small temples in the vicinity of Borobudur. Visit Mendut, a pyramid-shaped temple housing three impressively carved stone statues and Pawon Temple, a simple yet beautiful monument known for its precise symmetry.</p><p>Be sure go to bed early in preparation for the sunrise experience the next day.</p><p>Overnight in Borobudur</p>'),
(69, 10, 2, 'BOROBUDUR', '<p style=\"color:#007bff\">Borobudur – Selogriyo (32 km): 1 hr 15 mins Selogriyo – OHD Museum (12 km): 35 mins OHD Museum – Borobudur (17 km): 35 mins\r\n</p>\r\n<p>Wake up early this morning for a departure at dawn (around 04:00) to Borobudur temple. Dawn is the most mystical time to see the temple; the sun rises over the structure in the tranquil morning air, before the tourists flock-in.</p><p>Coffee, tea and snacks are served at Plataran Borobudur.</p><p>Meet an anthropologist, Mohamad Yusuf, who works for Universitas Gadjah Mada, one of the most reputable educational institutions in the country. He will guide the exploration of this massive Buddhist Temple –the largest in the world. Learn about the incredible history behind its construction while soaking up magnificent views of the temple. Comprised of thousands of volcanic and river stone blocks, the temple was built by hand and took more than 75 years to complete. These days, the UNESCO World Heritage site is still visible in its full glory with magnificent carvings and an unusual, yet surprisingly beautiful bulk structure.</p><p>Return to the hotel for breakfast and spend the rest of the morning at leisure. There is an option to take lunch (not included) at the restaurant, from where there will be views of the temple in the horizon.</p><p>This afternoon, set off and discover some of the best kept secrets of Central Java and the surroundings of Magelang. The private museum of Dr. Oei Hong Djien has one of the most comprehensive collections of modern and contemporary Indonesian art. It features paintings, sculptures, installations and new media art.</p><p>Note: The museum is closed on Tuesdays.</p><p>Continue to a small village on the slopes of Mt. Sumbing for a two-hour hike through beautifully terraced rice fields and plantations to Selogriyo Temple. The structure of the temple itself is rather modest but the walk there is beautiful and resembles some of the finest landscapes in Java.</p><p>Return to the hotel in Borobudur.</p><p>Overnight in Borobudur</p>'),
(70, 10, 3, 'BOROBUDUR – YOGYAKARTA', '<p style=\"color:#007bff\">Borobudur – Yogyakarta (40 km): 90 mins Prambanan Temple – Hotel area (20 km): 40 mins\r\n</p>\r\n<p>Check out after breakfast and continue to Yogyakarta. The town is considered to be the cradle of Javanese culture, and until today it serves as an important centre of art and education.</p><p>Visit the Sultan’s Palace. Also known as Kraton, it was constructed between 1756 and 1790, and is one of the best examples of traditional Javanese architecture. This museum, showcasing Javanese relics, remains to be the residence of the Sultan today. Depending on the day of visit, there will be cultural performances ranging from Golek Menak puppet performances to classical Javanese poetry performances known as Macapat. Continue on foot to Taman Sari Water Palace. This addition to the royal complex was built over 200 years ago by the first Sultan to provide bathing pools for women in his home.</p><p>For lunch, dine at the office of the chef of a heritage hotel in Yogyakarta. The chef will present a degustation menu of six surprise dishes. Share the table with the chef and observe through the huge glass window how the&nbsp; meals are prepared. Get them served with the respective anecdotes by the chef.</p><p>Check in at the hotel and freshen up.</p><p>This afternoon proceed to Prambanan; explore the ancient Hindu temples in the UNESCO World Heritage site of Prambanan, located 17 kilometres from Yogyakarta. Built in the 9th century, this collection of sharp, jagged temples features three main inner shrines dedicated to the Hindu trinity of Gods: Brahma, Vishnu and Shiva. The guide will explain the history and symbolism of the temples while walking around.</p><p>Return to the hotel and spend the rest of the day at leisure.</p><p>Overnight in Yogyakarta</p>'),
(71, 10, 4, 'YOGYAKARTA', '<p style=\"color:#007bff\">Hotel area – Kotagede (7 km): 25 mins Kotagede – Restaurant (12 km): 35 mins Restaurant – Batik class(5 km): 15 mins Batik Class – Hotel Area (300 m): 2 mins\r\n</p>\r\n<p>After breakfast at the hotel, drive to the old town of Yogyakarta, Kotagede. Meet a guide from the quarter and embark together on a leisurely cycling tour on a vintage bicycle. This charming village retains some of central Java’s best examples of traditional Javanese architecture; it’s also known as the ‘Silver Village’ due to its high concentration of silver artisans. Upon arriving at the village, visit a master baker’s house to sample Kembang Waru – a type of cookie only sold in Kotagede. Continue by bicycle to the central traditional market and take a tour of this bustling location. Resume the tour, arriving at the oldest mosque in Yogyakarta and don a traditional Javanese outfit, a sign of respect for the former kings, and then visit the Royal Cemetery of the First King of the Mataram Kingdom. Take a tour of the linking laneways to discover the Kalang-style architecture, which is indigenous to Kotagede – a combination of Javanese and colonial styles.</p><p>Leave Kotagede for lunch at a local restaurant which is also popular for its gallery.</p><p>Visit the residence, boutique shop and factory of Ms. Chaliet and Mr. Bambang. The lovely couple are true masters in the art of Batik and have been engaged around the globe as ambassadors of Indonesian Batik. Get an introduction into this fine art at the small factory and private house. Assisted by the experts, learn the techniques in pattern making, waxing and colouring the cloth that makes a unique piece every time. Pick a technique, dye colours and utensils and create a personalised piece of Batik under the careful guidance of masters. It will be ready for delivery once it’s finished drying.</p><p>Return to hotel and spend the rest of the evening at leisure.</p><p>Overnight in Yogyakarta</p>'),
(72, 10, 5, 'YOGYAKARTA – MOJOKERTO (BY TRAIN) - MALANG', '<p style=\"color:#007bff\">Yogyakarta – Mojokerto (287 km): 4 hours by train Mojokerto – Malang (121Km): 2hours 40 minutes Mojokerto – Singosari Temple (84Km): 2 hours 15 minutes Singosari Temple – Malang (12Km): 35 minutes\r\n</p>\r\n<p>After an early breakfast, transfer to the Yogyakarta Railway Station for an early scenic train ride to Malang via Mojokerto in East Java. The train departs at 06:45. Be accompanied by the guide on this journey.</p><p><em><u>Note</u></em>:</p><ul><li>Planned route is aboard Sancaka Pagi from Yogyakarta to Mojokerto departing at 06:45 and arriving at 10:57. Schedule is subject to change without notice.</li></ul><ul><li>Full name and passport details are required to book a train ticket. It must be provided at the time of reservation.</li><li>The evening before, make sure to bring down the main luggage to the reception before 22:00 with clear name identification. The main luggage will be transferred during the night with the driver and vehicle who will be waiting the next afternoon at Malang Railway station in East Java.</li><li>It is advisable to bring a small bag containing toiletries, a change of clothes and a jacket (the air conditioner in the train can be quite chilly).</li></ul><p>Travelling by train in Java is a wonderful opportunity to meet local people and a good way to see the volcanic landscapes of central and East Java.</p><p>Upon arrival in Mojokerto, be met local driver at the railway station.</p><p>Lunch box is served en route</p><p>On the way to Malang, stop for a visit of the charming Singosari Hindu temple dating back from the 13th century</p><p>Continue to Malang, check-in hotel and enjoy the remaining afternoon.</p><p>Get dinner at the hotel and spend the rest of the evening at leisure.</p><p>Overnight in Malang&nbsp; at <strong>Tugu Malang&nbsp;</strong>4 stars (Superior)</p><p>In <strong>Devata Suite/ Babah Suite/ Zamrud Suite for 2 night stays</strong></p>'),
(73, 10, 6, 'MALANG', '<p style=\"color:#007bff\">Hotel area – Eng An Kiong Vihara (3 km): 10 mins Eng An Kiong Vihara – Malang Cathedral (4.5 Kl): 15 mins Malang Cathedral – Hotel area (1.8 km): 6 mins\r\n</p>\r\n<p>This morning after breakfast, take a short tour to Malang by becak, a local rickshaw. Cruise past the grand colonial-era buildings on the streets of Malang, the bird and flower markets and the Chinese temple Eng An Kiong before finally finishing at the city cathedral.</p><p>Return to the hotel to freshen up and spend the rest of the afternoon at leisure.</p><p>Have an early night in Malang.</p><p>Note: Please make sure all luggage is packed before bed.</p>'),
(74, 10, 7, 'MALANG – BROMO – PROBOLINGGO – BANYUWANGI (BY TRAIN)', '<p style=\"color:#007bff\">Malang – Bromo (64 km); 2 hrs 30 mins Bromo – Probolinggo (47.7 km): 1 hr 30 mins Probolinggo – Banyuwangi (193 km): 4 hrs 20 mins (by train)\r\n</p>\r\n<p>Awake early this morning and check out of the hotel before dawn for a drive to Puspo in the Bromo area. Then continue by 4x4 jeep and drive through the scenic caldera to the eastern gate of Bromo Tenger National Park. Once inside the park, head to Mt. Penanjakan which is a viewing spot with stunning views of the Bromo volcano and the surrounding area. Watch the sun rise up from behind the volcano in Penanjakan.</p><p>Continue by jeep down to the volcano caldera, often covered by mist in the early morning. The mist, combined with the grey ash-covered ground create an unusual atmosphere, often compared to the surface of the moon.</p><p>Note:</p><p>Please bring warm clothes for the sunrise excursion next morning in Bromo as the temperature can get low and cold.<br> Weekend surcharge USD 10 per person will be applied for the visit to Bromo.</p><p>Stop at a local restaurant for breakfast.</p><p>Afterwards, continue to the station and catch the train for Banyuwangi from Probolinggo. The train departs at 11:04 and arrives in Karangasem Railway Station, Banyuwangi at 15:20. This is another opportunity to witness the exotic scenery of eastern Java.</p><p>Lunch is prepared by the local restaurant and can be enjoyed during the trip on board the train.<br> Upon arrival in the late afternoon, check-in to the hotel in Licin village near Ijen.</p><p>Overnight in Licin, Banyuwangi</p>'),
(75, 10, 8, 'BANYUWANGI – MENJANGAN ISLAND (CRUISE DAY) ', '<p style=\"color:#007bff\">Hotel area – Paltuding (16 km): 40 mins Hotel area – Watu Dodol harbour (33 km): 1 hr Watu Dodol – Menjangan Island (30 km): 1hr 30 mins Menjangan Island – Hotel’s jetty (5 km): 30-45 mins\r\n</p>\r\n<p>Awake early again this morning for an excursion to Mount Ijen. Breakfast is served at the hotel before setting off by 4x4 jeep. Reach Paltuding,&nbsp; the base camp of Kawah Ijen located at 1,850 metres above sea level. The trek to the top is 3 kilometres and follows a wide, packed dirt pathway for about 1 hour 30 minutes. At the top of Mount Ijen is a large crater lake surrounded by sulphur mines and during the walk, there may be encounters with men carrying loads of up to 70 kilograms, often barefooted, down the mountainside.</p><p>Upon reaching the top (2,385m above sea level) there is time to enjoy the views of the Crater Lake which is 200 metres deep and contains about 36 million cubic metres of steaming, acidic water. Witness the agility and strength of the miners as they collect and carry the sulphur blocks up to the crater rim.</p><p>Important notes:</p><ul><li>Local authorities only allow viewing from the rim of the crater. It is strictly forbidden to walk down to the lake shore due to the very toxic fumes that escape the lake. Only the sulphur porters are allowed in this area.</li><li>This trekking requires good physical condition as well as good walking shoes and some warm clothing because of the low morning temperatures.</li><li>Mount Ijen is an active volcano therefore access is subject to volcanic activity at the time of visit. An alternative program to Kaliklatak coffee and rubber plantation will be provided if the volcano is closed during the visit.</li><li>Weekend surcharge of USD 5 per person will be applied for visit to Ijen.</li></ul><p>Continue to Banyuwangi harbor and board a traditional Phinisi Schooner where brunch is served while crossing the Bali Strait and cruising towards Menjangan Island. Arrive at the holy island inhabited only by a few temple priests and jump off the boat, enjoying the colourful underwater world with a snorkelling session in the afternoon.</p><p>Later, continue the cruise toward the West Bali National Park.</p><p>Check in and overnight at West Bali National Park</p>'),
(76, 10, 9, 'MENJANGAN ISLAND', '<p>Breakfast is served at the resort.</p><p>After the long overland journey across central and East Java, enjoy a tranquil day in the West Bali National Park situated right by the sea. The occasional deer or rabbit may pass by the villa. From the jetty, there is direct access to beautiful snorkelling grounds. Various activities, such as hiking, cycling, bird-watching, horse riding, snorkelling or diving or spa services are available (client’s account). There is also a beach club that has an inviting swimming pool.</p><p>Overnight at West Bali National Park</p>\r\n'),
(77, 10, 10, 'MENJANGAN ISLAND – MUNDUK', '<p style=\"color:#007bff\">Hotel area – Munduk (73 km): 2 hrs\r\n</p>\r\n<p>Check out of the hotel at around 11:00. Be picked up by the guide and driver, and drive along the scenic road up into the hills.</p><p>Enjoy lunch with a view up in the mountains near Munduk.</p><p>After lunch, check in to the accommodation in Munduk.</p><p>Munduk is the ideal location for outdoor activities and this afternoon, have the chance to explore this mountain village with a light trek. Munduk is surrounded by a tropical rainforest with beautiful waterfalls; because of its cool temperature (20-25°C) many fruits, vegetables and spices are grown in this area. Starting from the hotel, take a nice 2-hour trek in ??Munduk, exploring areas with numerous plantations including coffee, cloves and local spices. On the way back, stop at the village to taste the local coffee.</p><p>Return to the hotel in the late afternoon and spend the rest of the day at leisure.</p><p>Overnight in Munduk</p>'),
(78, 10, 11, 'MUNDUK – UBUD', '<p style=\"color:#007bff\">Munduk – Ulun Danu, Bedugul (15 km): 30 mins Ulun Danu, Bedugul – Jatiluwih (24 km): 45 mins Jatiluwih – Ubud (41 km): 1 hour 20 mins\r\n</p>\r\n<p>Depart after breakfast from Munduk and pass by the two volcanic lakes: Buyan and Tamblingan. Stop for photos and enjoy the scenery before descending to the thriving village of Bedugul. Enroute, stop at the major water temple of Pura Ulun Danu by the shores of Batur Lake. Founded in the 17th century, this is perhaps one of the most photographed temples in Bali and is dedicated to Dewi Danu, the goddess of water, featuring a beautiful thatched Hindu Meru which seems to float on the lake. This temple is also home to a Buddhist shrine and a small mosque.</p><p>Continue the drive to the rice terraces of Jatiluwih which is a UNESCO World Heritage site for its unique Subak irrigation system. Explore the terraces by e-bike for a comfortable experience viewing the best parts of the region. After a short safety briefing, set off for a 1-hour bicycle ride led by an experienced guide. Ride along farmers doing their daily routine and stop at Besi Kalung temple located in the middle of the rice fields.</p><p>Lunch will be served at a restaurant set in a bamboo forest.</p><p>After lunch, continue to Ubud and spend the rest of the day at leisure.</p><p>Overnight in Ubud</p>'),
(79, 10, 12, 'UBUD', '<p style=\"color:#007bff\">Ubud – Mas Village (12 km): 30 mins Mas Village – Campuhan (10 km): 20 mins\r\n</p>\r\n<p>Get a true taste of the local culture, traditions and lifestyles with this immersive Balinese Eat, Pray and Love experience: Be picked up by the guide and driver at the hotel for a short drive to a small village known for its wood carving tradition just around 15 kilometres from Ubud. Once here, take part in activities that are ‘uniquely Bali’. Receive a blessing by a pedanda, a traditional Balinese priest, meet an astrologer who uses ancient methods handed down from generation to generation to read fortunes.</p><p>Return to Ubud for lunch at one of the best restaurants in town, the Bridges located by the little bridge in the Champuhan Valley.</p><p>This afternoon, complete the experience with a relaxing 1-hour Balinese massage followed by a flower bath.</p><p>Transfer back to the hotel early this evening and spend the rest of the day at leisure.</p><p>Overnight in Ubud</p>'),
(80, 10, 13, 'UBUD – JIMBARAN ', '<p style=\"color:#007bff\">Ubud – Uluwatu (53 km): 1 hr 50 mins Uluwatu – Bukit Peninsula (11 km): 25 mins Peninsula – Jimbaran (8 km): 20 mins\r\n</p>\r\n<p>After breakfast, check out of the hotel in Ubud and set off to South Bali, with a full-day exploration of the sun-kissed Bukit Peninsula, home to the important Uluwatu Temple and mecca for sun worshippers and surfers. Spend the first half of the day at a cool beach club in a hidden cove, accessible only through electric funicular, worshipping the sun, chilling and relaxing by the turquoise sea.</p><p>Lunch will be served under the shade. In the early afternoon, continue to visit the impressive temple, majestically perched on the edge of a steep cliff overlooking the Indian Ocean. It is one of the key temples believed to be Bali\'s spiritual pillars.</p><p>Drive across the peninsula to Padang Padang. A sundowner will be served at a restaurant venue atop the cliffs, from where panoramic views open up over the long ‘Impossibles’ break where surfers shred waves during the sunset.</p><p>Finally, venture to the Jimbaran hills and be greeted by culinary artists serving a signature cuisine . Enjoy a chef tasting meals the tapas-style dinner shared for the whole table.</p><p>Overnight in Jimbaran&nbsp; at <strong>Belmond Jimbaran Puri </strong>5 stars (Deluxe)</p><p>In <strong>Deluxe Pool Villa&nbsp; for 1 night stay</strong></p>'),
(81, 10, 14, 'JIMBARAN - DEPARTURE', '<p style=\"color:#007bff\">Jimbaran – Ngurah Rai Bali International Airport (10 km): 25 mins\r\n</p>\r\n<p>Enjoy breakfast at hotel.</p><p>This morning is spent at leisure until the transfer to Denpasar International Airport for the departure flight.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id_package` int(3) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `id_duration` int(2) NOT NULL,
  `id_category` int(2) NOT NULL,
  `overview` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `informations` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id_package`, `package_name`, `id_duration`, `id_category`, `overview`, `images`, `informations`, `url`) VALUES
(1, 'Java In Depth', 7, 1, 'From central to east Java, explore the region’s nature, rhythm of life and cultural heritage. Uncover the ancient history of the Majapahit, visit the oldest coffee plantations and trek up the two iconic active volcanoes of Mount Bromo and Ijen for the most breathtaking views of nature. ', '76ghg.jpg,76ght.jpg,98ujh.jpg', '<ul>\r\n    <li>\r\n\r\n        Our rates are nets and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,  meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).\r\n    </li>\r\n    <li>\r\n\r\n        All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice\r\n    </li>\r\n    <li>\r\n        All timings are approximate. As the world’s most populated island, travel times can vary greatly during Eid al Fitr holiday break and other National Public Holidays. Eid al Fitr period in 2020 is 16-May-20 until 31-May-20\r\n    </li>\r\n    <li>\r\n        All language guides other than English subject to availability during high season July-September.\r\n    </li>\r\n    <li>\r\n        Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.\r\n    </li>    \r\n    <li>\r\n        Child rate is available on request\r\n    </li>\r\n</ul>', 'java-in-depth'),
(2, 'Highlights of Yogyakarta', 3, 1, 'Delve into Java’s rich culture with an insightful tour of Yogyakarta. Wander through the incredible Sultan’s Palace and visit villages where traditions have stood the test of time. Explore Java’s spiritual side at Prambanan temple and stare in awe as the sun illuminates majestic Borobodur. ', 'borobudur-min.jpg,prambanan-min.jpg,prambanan2-min.jpg', '<ul><li>Our rates are net and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>All timings are approximate. As the world’s most populated island, travel times can vary greatly.</li><li>During the important religious festival of Idul Fitri, which falls on 23-May-20 and 24-May-20, intense travel across the country, especially in Java, has to be expected with the consequence of long traffic jams. Overland travel is not advised during the two weeks from 16-May-20 until 31-May-20. Service availability during that time may be limited, tour guides may be travelling home, and restaurants may be closed.</li><li>All language guides other than English subject to availability during high season July-September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request.</li></ul>', 'highlights-yogyakarta-tour'),
(3, 'Best of Yogyakarta', 4, 1, 'Discover the temples, museums and artisan villages that make Yogyakarta so fascinating. See the main sites, including Prambanan and Borobodur temples, then get away from the tourist trail to discover authentic Javanese culture. Bike through rural villages, meet with traditional craftsmen and admire incredible artefacts on this insightful guided tour.', 'jogja-min.jpg,borobudur-min.jpg,tugu-jogja-min.jpg', '<ul><li>Our rates are nets and quoted in American dollars (USD), however some services (like transportation, guie fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>All timings are approximate. As the world’s most populated island, travel times can vary greatly during <em>Eid al Fitr</em> holiday break and other National Public Holidays. <em>Eid al Fitr</em> period in 2020 is 16-May-20 until 31-May-20</li><li>All language guides other than English subject to availability during high season July – September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request</li></ul>', 'best-of-yogyakarta'),
(4, 'Highlights of Central Java', 5, 1, 'Embark on a discovery of history, culture and sweeping landscapes in Central Java. Take in memorable sunrises at UNESCO-heritage Borobodur Temple and Mt Sikunir volcano. Sip coffee at a highland plantation and see traditional ways of life in rural villages, showcasing the true charm of Central Java. ', 'dieng-min.jpg,borobudur3-min.jpg,borobudur2-min.jpg', '<ul><li>Our rates are net and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>During the important religious festival of Idul Fitri, which falls on 23-May-20 until 24-May-20, intense travel across the country, especially in Java, has to be expected with the consequence of long traffic jams. Overland travel is not advised during the two weeks from 16-May-20 to 31-May-20. Service availability during that time may be limited, tour guides may be travelling home, and restaurants may be closed.</li><li>All language guides other than English subject to availability during high season July-September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request</li></ul>', 'central-java-indonesia-tour'),
(5, 'Central Java to Bali', 7, 2, 'Explore Central Java through culture and art, visit Borobudur and Prambanan temple and not to miss The Sultan’s Palace. Discover the local daily live in a simple village, and take a scenic train to the east to learn about coffee and spices on the sidelines of a visit to remarkable volcanoes.', 'ijen-min.jpg,bromo-min.jpg,borobudur-min.jpg', '<ul><li>Our rates are nets and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>All timings are approximate. As the world’s most populated island, travel times can vary greatly during <em>Eid al Fitr</em> holiday break and other National Public Holidays. <em>Eid al Fitr</em> period in 2020 is 16-May-20 until 31-May-20</li><li>During Nyepi Day, an important religious day in Bali, which falls on 07-Mar-19 and 25-Mar-20, visitors are not allowed to leave the premises of hotels from 06:00 until 06:00 on the following day (24-hour). The airport will not operate any flights and all public activities will cease but hotels will remain operate with limited staff</li><li>All language guides other than English subject to availability during high season July-September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request</li></ul>', 'overland-from-central-java-to-bali'),
(6, 'Java Temples and Volcanoes', 8, 2, 'Capture the essence of Java with an insightful journey filled with memorable moments. Don a traditional costume to explore Yogyakarta’s royal monuments, sip coffee at a highland plantation and cycle through authentic villages. Marvel at majestic Borobodur temple and watch the sun rise over spectacular Mount Bromo.', 'merapi-min.jpg,jogja-home-min.jpg,76ghg.jpg', '<ul><li>Our rates are net and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>All timings are approximate. As the world’s most populated island, travel times can vary greatly during <em>Eid al Fitr</em> holiday break and other National Public Holidays. <em>Eid al Fitr</em> period in 2019 is 27-May-19 until 12-Jun-19.</li><li>All language guides other than English subject to availability during high season July-September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request</li></ul>', 'java-temple-plantation-and-volcanoes'),
(7, 'West Java Volcano', 9, 2, 'From treks to remote traditional Baduy Tribes, summit on active Mount Papandayan Volcano to a challenging river trekking and caving in Buniayu, there are many adrenaline pumping activities that offer an in-depth exploration of wild and captivating West Java.', 'papandayan-min.jpg,buniayu.jpg,kampung-naga.jpg', '<ul>\r\n<li>Personal gear must be provided on your own: good trekking shoes, warm clothing, wind jacket, rain gear, hat/cap, sun’s cream, personal medicine, and personal toiletries.</li>\r\n<li>During the caving activity all the participants wearing the complete safety equipment such as wearpack, boots, helmet, gloves, headlamp, harness, life line component (carabiner &amp; webbing). All will be provided by Exo Adventure.</li>\r\n<li>During the important <strong>religious festival of Idul Fitri</strong>, which falls in 2019 on 03<sup>rd</sup> &amp; 05<sup>th</sup> June intense travel across the country, especially in Java, has to be expected with the consequence of long traffic jams. Overland travel is not advised during the two weeks from 27<sup>th</sup> May to 12<sup>ve </sup>July 2019. Especially the ferry crossing between Java and Bali may be blocked. Service availability during that time may be limited, tour guides may be travelling home, and restaurants may be closed.</li>\r\n<li>During <strong>Nyepi Day</strong>, an important religious day in Bali , which falls in 2019 on March 07<sup>th</sup>&nbsp; , visitors and the public are not allowed to leave the premises of hotels from 6am to 6am the following day; all public activities will cease, hotels remain operational with limited staff; the airport will not operate any flights.</li>\r\n<li>We strongly recommend the purchase of <strong>travel insurance</strong> (covering emergency medical evacuation) prior to travel. Since we are not able to advice on any matters regarding vaccinations or other precautionary medical measures, we recommend the consultation of a travel- or tropical-medicine doctor.</li>\r\n<li>Prices are <strong>valid 30 days from date of offer</strong>. Past this date price and conditions may be readjusted. We reserve the right to adjust prices for exceptional circumstances which are not under our control with a notice period of 30 day prior to travel. Services which are already paid are exempt from this.</li>\r\n<li>Reservations during <strong>peak seasons</strong> (Christmas, New Year, High Season, and National Holidays) may be subject to supplementary charges, obligatory meals or minimum-stays. In certain cases, these may be announced late by supplier and hotels and may only be communicated upon the receipt of your confirmation of a booking.</li>\r\n<li>Please note that all the above services &amp; tours have <strong>yet to be booked</strong>, they are proposed for your information only and we will not make any reservations before we receive your confirmation to do so. Availability is always subject to change until booking confirmation form our side.</li>\r\n<li>If any proposed service(s) is/are <strong>not available at the moment of booking</strong>, we will try to find other possibilities/options or other similar service(s) in order to avoid changes to the program.</li>\r\n<li>Note that <strong>certain experiences</strong>, such as blessings by a priest, the visit of an astrologer, etc. are linked with cultural and social obligations on the side of the providers that may change with very short notice, and thus are always subject to change. Cancellations from the supplier-side with short notice have occurred, and in such cases we would always try to re-schedule the activity or experience.</li>\r\n<li><strong>Room/Bedding-Configuration</strong>: Prices per person based on twin sharing relate either to accommodation in a Twin-, a Double- or a so called “Hollywood”-Double Bed configuration. The third bed for accommodation requested in Triple-rooms is often not a full-size single bed, but an extra-bed / roll-away bed / sofa-bed that can vary in size and standard from the regular bedding in the room.</li>\r\n<li><strong>Accommodation and service standards</strong> in remoter islands in Indonesia, and also in Sumatra, Kalimantan, Sulawesi, Flores, Sumba and other islands can be very basic and cannot be compared to those in Java or Bali. In some areas also the transportation means are of more basic standard.</li>\r\n<li>The <strong>cost of air tickets</strong> is subject to change without prior notice by the airlines. Flight tickets are issues as soon as we receive a booking confirmation. In case of any cancellation of a booking prior the period within which advised cancellation charges apply, we reserve the right to charge cancellation charges for flight tickets according to the airline cancellation policy.</li>\r\n<li><strong>Train tickets</strong> are issued as soon as we receive a booking and passport details of the passengers, and the ticketing is opened on the side of the railway company (usually 3 months prior to travel). For any change in travel dates or any cancellation of the tour – also prior to the period within which advised – cancellation charges do apply. We reserve the right to charge for the cancellation of the train tickets according to the railway company cancellation policy. Usually this is for any change of date and for any cancellation the full train ticket price.</li>\r\n<li>Bringing an additional day-bag: For guests <strong>travelling by train</strong> it is strongly advised to bring a day-bag. Luggage is usually not transported on the train and needs to be collected on the evening prior to departure and arrives late after arrival of the guests. The same applies for <strong>all travelers to Tangkahan and groups (GIT) Samosir in Sumatra</strong>. Due to limited space in the transportation, the main luggage can be stored while guest just take along a day-bag with content for 2 days.</li>\r\n<li><strong>Road conditions</strong> in Indonesia are not always very good and this can cause slow driving times. As a general rule we calculate 30 km = 1 hour driving. This can be even less when traveling in very remote areas and jungles with 4WD jeeps. Also some islands are very populated which during public holidays and long weekends can cause traffic problems that can influence your journey time considerably.</li>\r\n<li>Note that <strong>visits to volcanoes</strong> are always subject to change and may be cancelled due to weather conditions or volcanic activity during time of travel; volcano trekking is not possible during rainy months from November to March, except for Bromo, Ijen and Batur volcanoes, where clearance only depends on the daily weather situation.</li>\r\n<li>During the rainy season, especially during January and February <strong>boat transfers</strong> between Bali and Lombok or Gili Islands may be delayed or cancelled due to wave conditions in the Lombok Strait. We do strongly recommend using flights during that time! Occasionally cancellations also occur during the dry season. At any time it is strongly recommended to add one interim-night between a speedboat transfer and onward travel. Any flights should not be scheduled on the same day after a speedboat transfer.</li>\r\n<li>Any travel itinerary is generally dependent on <strong>weather conditions</strong>, and its feasibility may be constrained due to exceptional environmental or social events or circumstances</li>\r\n<li>Among others, the following <strong>Indonesian airlines</strong> are currently banned by the European Commission from operating in European airspace for safety reasons: Citilink Indonesia, Lion (Mentari) Air, Transnusa Aviation Mandiri, Trigana Air Service, Air Asia Indonesia. Any booking of flights with so called “blacklisted” airlines is done only on request of the clients.</li>\r\n<li><strong>Visa &amp; Passport</strong>: Visitors with certain nationalities are eligible for a 30-day Visa-On-Arrival (VOA) or a Visitor-Pass at certain international entry points in Indonesia. Certain nationalities are eligible for a non-extendable 30-day visa-free stay, if entering <u>and</u> exiting at certain checkpoints, among them Jakarta, Medan, Denpasar, Surabaya (and Batam). This <u>is only possible if both</u> entry <u>and</u> exit are at these ports, why caution is required by visitors on which option to choose! Those nationalities which are not eligible for a VOA need to apply in advance for a visa with the embassy or consulate of the Republic of Indonesia nearest to their place of residence in their country. For further information on visa regulations please refer to the official websites of the Directorate General of Immigration: <a href=\"http://www.imigrasi.go.id/index.php/en/\">http://www.imigrasi.go.id/index.php/en/</a>. Since those websites may not always be up-to-date you may check with us on a case-by-case basis for the requirements of your booking. Note that the passport of persons travelling to Indonesia still needs to be valid for at least 6 month on the day of departure</li>\r\n</ul>', 'west-java-tribes-volcano-cave-adventure'),
(8, 'Trekking East Java', 10, 2, 'Lace up the hiking boots for an active journey through East Java’s spectacular volcanic landscapes. Travel from Yogyakarta to Bali in search of breath taking vistas, submitting majestic peaks and witnessing a live volcanic eruption along the way. After all this excitement, kick back and relax on tropical Pemuteran Bay.', 'merbabu-min.jpg,ranu-kumbolo-min.jpg,menjangan-min.jpg', '<p><strong>Remark on trekking:</strong></p><ul><li>During Mount Semeru trekking, porter will bring trekking &amp; cooking equipment, logistic; porter does not carry the participant personal gear it is advice to carry a lighter bag for all trekking portion.</li></ul><ul><li>Prepare a light backpack that you can carry during your trekking. Personal gear must be provided on your own: good trekking shoes, warm clothing, wind jacket, rain gear, hat/cap, sun’s cream, gaiter, personal medicine, and personal toiletries.</li><li>All camping material are provide by our local guide team (tent, nap for picnic and camping chairs, toilet tent, sleeping bag, mattress, pillow, toilet paper), should you wish to bring your own camping material please inform your local guide upon briefing.</li></ul><ul><li>Please bring warm clothes during Mount Bromo sunrise excursion as the temperature is low and cold</li></ul><p><strong>Important notes:</strong></p><ul><li>During the important <strong>religious festival of Idul Fitri</strong>, which falls in 2020 on 23<sup>rd</sup> &amp; 24<sup>th</sup> May. intense travel across the country, especially in Java, has to be expected with the consequence of long traffic jams. Overland travel is not advised during the two weeks from 16<sup>th</sup> to 31<sup>st </sup>May 2020. Especially the ferry crossing between Java and Bali may be blocked. Service availability during that time may be limited, tour guides may be travelling home, and restaurants may be closed.</li></ul><ul><li>During <strong>Nyepi Day</strong>, an important religious day in Bali , which falls in 2020 on March 25<sup>th</sup> &nbsp;, visitors and the public are not allowed to leave the premises of hotels from 6am to 6am the following day; all public activities will cease, hotels remain operational with limited staff; the airport will not operate any flights.</li></ul><ul><li>We strongly recommend the purchase of <strong>travel insurance</strong> (covering emergency medical evacuation) prior to travel. Since we are not able to advice on any matters regarding vaccinations or other precautionary medical measures, we recommend the consultation of a travel- or tropical-medicine doctor.</li></ul><ul><li>Prices are <strong>valid 30 days from date of offer</strong>. Past this date price and conditions may be readjusted. We reserve the right to adjust prices for exceptional circumstances which are not under our control with a notice period of 30 day prior to travel. Services which are already paid are exempt from this.</li></ul><ul><li>Our prices are in United States Dollars (USD). Several of the services that we quote, are being paid in local currency – the Indonesian Rupiah (IDR). In case of any significant change oft the official exchange rate of more than 5% to our disadvantage, we reserve the right to adjust prices. This would be done with a minimum notice period of 30 days.</li></ul><ul><li>Our prices are based on a petrol price of 7.400 Indonesian Rupiah (IDR) / liter. Should the petrol price increase more than 10%, we reserve the right to adjust our prices with a minimum notice period of 30 days.</li></ul><ul><li>Reservations during <strong>peak seasons</strong> (Christmas, New Year, High Season, and National Holidays) may be subject to supplementary charges, obligatory meals or minimum-stays. In certain cases, these may be announced late by supplier and hotels and may only be communicated upon the receipt of your confirmation of a booking.</li></ul><ul><li>Please note that all the above services &amp; tours have <strong>yet to be booked</strong>, they are proposed for your information only and we will not make any reservations before we receive your confirmation to do so. Availability is always subject to change until booking confirmation form our side.</li></ul><ul><li>If any proposed service(s) is/are <strong>not available at the moment of booking</strong>, we will try to find other possibilities/options or other similar service(s) in order to avoid changes to the program.</li></ul><ul><li>Note that <strong>certain experiences</strong>, such as blessings by a priest, the visit of an astrologer, etc. are linked with cultural and social obligations on the side of the providers that may change with very short notice, and thus are always subject to change. Cancellations from the supplier-side with short notice have occurred, and in such cases we would always try to re-schedule the activity or experience.</li></ul><ul><li><strong>Room/Bedding-Configuration</strong>: Prices per person based on twin sharing relate either to accommodation in a Twin-, a Double- or a so called “Hollywood”-Double Bed configuration. The third bed for accommodation requested in Triple-rooms is often not a full-size single bed, but an extra-bed / roll-away bed / sofa-bed that can vary in size and standard from the regular bedding in the room.</li></ul><ul><li>Rooms at hotels are available only from <strong>check-in time</strong> at 14:00 pm on arrival day till <strong>check-out time</strong> at 12:00 o’clock noon on departure date. A supplement may need to be added if early check-in or late check-out is desired.</li></ul><ul><li><strong>Accommodation and service standards</strong> in remoter islands in Indonesia, and also in Sumatra, Kalimantan, Sulawesi, Flores, Sumba and other islands can be very basic and cannot be compared to those in Java or Bali. In some areas also the transportation means are of more basic standard.</li></ul><ul><li>The <strong>cost of air tickets</strong> is subject to change without prior notice by the airlines. Flight tickets are issues as soon as we receive a booking confirmation. In case of any cancellation of a booking prior the period within which advised cancellation charges apply, we reserve the right to charge cancellation charges for flight tickets according to the airline cancellation policy.</li></ul><ul><li><strong>Train tickets</strong> are issued as soon as we receive a booking and passport details of the passengers, and the ticketing is opened on the side of the railway company (usually 3 months prior to travel). For any change in travel dates or any cancellation of the tour – also prior to the period within which advised – cancellation charges do apply. We reserve the right to charge for the cancellation of the train tickets according to the railway company cancellation policy. Usually this is for any change of date and for any cancellation the full train ticket price.</li></ul><ul><li>Bringing an additional day-bag: For guests <strong>travelling by train</strong> it is strongly advised to bring a day-bag. Luggage is usually not transported on the train and needs to be collected on the evening prior to departure and arrives late after arrival of the guests. The same applies for <strong>all travelers to Tangkahan and groups (GIT) Samosir in Sumatra</strong>. Due to limited space in the transportation, the main luggage can be stored while guest just take along a day-bag with content for 2 days.</li></ul><ul><li><strong>Road conditions</strong> in Indonesia are not always very good and this can cause slow driving times. As a general rule we calculate 30 km = 1 hour driving. This can be even less when traveling in very remote areas and jungles with 4WD jeeps. Also some islands are very populated which during public holidays and long weekends can cause traffic problems that can influence your journey time considerably.</li></ul><ul><li>Note that <strong>visits to volcanoes</strong> are always subject to change and may be cancelled due to weather conditions or volcanic activity during time of travel; volcano trekking is not possible during rainy months from November to March, except for Bromo, Ijen and Batur volcanoes, where clearance only depends on the daily weather situation.</li></ul><ul><li>We do not encourage activities that do actively involve <strong>wildlife,</strong> such as dolphin tours, etc. For activities where guests come in touch with wildlife, very high standards apply and are carefully monitored in our side. Note that upon wildlife observations, including bird watching, and also Orang Utan trekking trips in North Sumatra or Kalimantan there is never a guarantee to see certain bird or primates. In the months between July and September the probability to see Orang Utans in the wild or at feeding stations, may be slightly lower than during other months of the year.</li></ul><ul><li>During the rainy season, especially during January and February <strong>boat transfers</strong> between Bali and Lombok or Gili Islands may be delayed or cancelled due to wave conditions in the Lombok Strait. We do strongly recommend using flights during that time! Occasionally cancellations also occur during the dry season. At any time it is strongly recommended to add one interim-night between a speedboat transfer and onward travel. Any flights should not be scheduled on the same day after a speedboat transfer.</li></ul><ul><li>Due to visibility, currents, higher waves and fast changing weather conditions, we refrain from booking <strong>dive excursions</strong> in Bali during the rainy season months from December to mid-March. All dive excursions take place at own risk and we reserve the right to let clients sign a waiver.</li></ul><ul><li>Any travel itinerary is generally dependent on <strong>weather conditions</strong>, and its feasibility may be constrained due to exceptional environmental or social events or circumstances</li></ul><ul><li>Among others, the following <strong>Indonesian airlines</strong> are currently banned by the European Commission from operating in European airspace for safety reasons: Citilink Indonesia, Lion (Mentari) Air, Transnusa Aviation Mandiri, Trigana Air Service, Air Asia Indonesia. Any booking of flights with so called “blacklisted” airlines is done only on request of the clients.</li></ul><p><strong>Visa &amp; Passport</strong>: Visitors with certain nationalities are eligible for a 30-day Visa-On-Arrival (VOA) or a Visitor-Pass at certain international entry points in Indonesia. Certain nationalities are eligible for a non-extendable 30-day visa-free stay, if entering <u>and</u> exiting at certain checkpoints, among them Jakarta, Medan, Denpasar, Surabaya (and Batam). This <u>is only possible if both</u> entry <u>and</u> exit are at these ports, why caution is required by visitors on which option to choose! Those nationalities which are not eligible for a VOA need to apply in advance for a visa with the embassy or consulate of the Republic of Indonesia nearest to their place of residence in their country. For further information on visa regulations please refer to the official websites of the Directorate General of Immigration: <a href=\"http://www.imigrasi.go.id/index.php/en/\">http://www.imigrasi.go.id/index.php/en/</a>. Since those websites may not always be up-to-date you may check with us on a case-by-case basis for the requirements of your booking. Note that the passport of persons travelling to Indonesia still needs to be valid for at least 6 month on the day of departure.</p>', 'trekking-east-java-volcano-summit'),
(9, 'Classic Java Bali', 11, 2, 'Explore the ancient temples of Java and Bali on this road trip and learn about the confluence of Hinduism and Buddhism over the years. See many UNESCO World Heritage sites like the Borobudur Temples and the Jatiluwih rice fields. Take a trek up active volcanoes Mount Bromo and Ijen and be rewarded with breathtaking views.', 'bromo-min.jpg,ijen-min.jpg,ubud.jpg', '<ul><li>Our rates are nett and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In the case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), we reserve the right to correct our quotes to align our rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10% we would readjust transfer rates with a 30 days prior notice</li><li>All timings are approximate. As the world’s most populated island, travel times can vary greatly during <em>Eid al Fitr</em> holiday break and other National Public Holidays. <em>Eid al Fitr</em> period in 2019 is 16-May-20 until 31-May-20</li><li>During Nyepi Day, an important religious day in Bali, which falls on 25-Mar-20 and 14-Mar-21, visitors are not allowed to leave the premises of hotels from 06:00 until 06:00 on the following day (24-hour). The airport will not operate any flights and all public activities will cease but hotels will remain operate with limited staff.</li><li>All language guides other than English subject to availability during high season July-September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request</li></ul>', 'classic-java-bali'),
(10, 'Java Bali Overland In Style', 12, 2, 'Take this 14-day tour to Bali’s well-known beaches, tropical forests and temples. Trek through a mountain village passing by fruits, vegetable and spice produce. Snorkel at a beach club in Menjangan Island, ride a horse, go bird watching or hike  the terraced rice fields on the way to Selogriyo Temple. Enjoy a scenic train ride from Yogyakarta to Malang and cruise past colonial buildings via a local rickshaw. It’s a trip of a lifetime to Bali!', 'menjangan.jpg,borobudur2-min.jpg,ubud.jpg', '<ul><li>Rates are nets and quoted in American dollars (USD), however some services (like transportation, guide fees, entrance fees, some activities,&nbsp; meals, air tickets and train tickets and sometimes accommodations) are based on local prices in Indonesian Rupiah in (IDR). In case of a major change in the exchange rate (5% or more) between the Indonesian Rupiah and the American dollar (USD), EXO reserves the right to correct the quotes to align with the rates and revise the value of the American dollar (USD).</li><li>All rates are based on the current gasoline price. Should the gasoline price increase by more than 10%, EXO would readjust transfer rates with a 30 days prior notice.</li><li>Road conditions in Indonesia are not always very good and this can cause slow driving times. As a general rule, EXO calculates 30 km = 1 hour driving. This can be even less when traveling in very remote areas and jungles with 4x4 jeeps. Also, some islands are very populated which during public holidays and long weekends can cause traffic problems, influencing the journey can time considerably.</li><li>All language guides other than English are subject to availability during high season from July to September<strong>.</strong></li><li>Compulsory gala dinners and special conditions may be applied during peak season. Rates and details will be informed in advance.</li><li>Child rate is available on request.</li><li>All timings are approximate. As the world’s most populated island, Java, travel times can vary greatly during <em>Eid al Fitr</em> holiday break and other National Public Holidays. <em>Eid al Fitr</em> period in 2019 is 16-May-20 until 31-May-20</li><li>During Nyepi Day, an important religious day in Bali, which falls on 25-Mar-20, visitors are not allowed to leave the premises of hotels from 06:00 until 06:00 on the following day (24-hour). The airport will not operate any flights and all public activities will cease but hotels will resume operation with limited staff.</li><li>Note that certain experiences, such as blessings by a priest, the visit of an astrologer, etc. are linked with cultural and social obligations on the side of the providers that may change with very short notice, and thus are always subject to change. Cancellations from the supplier-side with short notice have occurred, and in such cases, EXO would always try to re-schedule the activity or experience.</li></ul>', 'java-bali-overland-in-style');

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
(6, 1, 6),
(7, 8, 7),
(8, 8, 8),
(9, 8, 9),
(10, 8, 10),
(11, 8, 11),
(12, 8, 1),
(13, 8, 12),
(14, 8, 13),
(15, 8, 2),
(16, 8, 14),
(17, 8, 15),
(18, 3, 14),
(19, 3, 15),
(20, 4, 14),
(21, 4, 15),
(22, 4, 16),
(23, 4, 17),
(24, 4, 18),
(25, 5, 19),
(26, 5, 20),
(27, 5, 1),
(28, 5, 2),
(29, 5, 15),
(30, 2, 14),
(31, 2, 15),
(32, 2, 19),
(33, 6, 19),
(34, 6, 11),
(35, 6, 21),
(36, 6, 12),
(37, 6, 13),
(38, 6, 2),
(39, 6, 15),
(40, 6, 22),
(41, 6, 18),
(42, 10, 23),
(43, 10, 25),
(44, 10, 1),
(45, 10, 2),
(46, 10, 3),
(47, 10, 14),
(48, 10, 15),
(49, 9, 23),
(50, 9, 8),
(51, 9, 24),
(52, 9, 26),
(53, 9, 1),
(54, 9, 15),
(55, 7, 27),
(56, 7, 15),
(57, 7, 28),
(58, 7, 29);

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
(15, 1, 15),
(16, 2, 1),
(17, 2, 2),
(18, 2, 3),
(19, 2, 4),
(20, 2, 5),
(21, 2, 7),
(22, 2, 8),
(23, 2, 9),
(24, 2, 10),
(25, 2, 11),
(26, 2, 12),
(27, 2, 13),
(28, 2, 14),
(29, 2, 15),
(30, 3, 1),
(31, 3, 2),
(32, 3, 3),
(33, 3, 4),
(34, 3, 5),
(35, 3, 7),
(36, 3, 8),
(37, 3, 9),
(38, 3, 10),
(39, 3, 11),
(40, 3, 12),
(41, 3, 13),
(42, 3, 14),
(43, 3, 15),
(44, 4, 1),
(45, 4, 2),
(46, 4, 3),
(47, 4, 4),
(48, 4, 5),
(49, 4, 7),
(50, 4, 8),
(51, 4, 9),
(52, 4, 10),
(53, 4, 11),
(54, 4, 12),
(55, 4, 13),
(56, 4, 14),
(57, 4, 15),
(58, 5, 1),
(59, 5, 2),
(60, 5, 3),
(61, 5, 4),
(62, 5, 5),
(63, 5, 6),
(64, 5, 7),
(65, 5, 8),
(66, 5, 9),
(67, 5, 10),
(68, 5, 11),
(69, 5, 12),
(70, 5, 13),
(71, 5, 14),
(72, 5, 15),
(73, 6, 1),
(74, 6, 2),
(75, 6, 3),
(76, 6, 4),
(77, 6, 5),
(78, 6, 6),
(79, 6, 7),
(80, 6, 8),
(81, 6, 9),
(82, 6, 10),
(83, 6, 11),
(84, 6, 12),
(85, 6, 13),
(86, 6, 14),
(87, 6, 15),
(88, 7, 1),
(89, 7, 2),
(90, 7, 3),
(91, 7, 4),
(92, 7, 5),
(93, 7, 6),
(94, 7, 7),
(95, 7, 8),
(96, 7, 9),
(97, 7, 10),
(98, 7, 11),
(99, 7, 12),
(100, 7, 13),
(101, 7, 14),
(102, 7, 15),
(103, 8, 1),
(104, 8, 2),
(105, 8, 3),
(106, 8, 4),
(107, 8, 5),
(108, 8, 6),
(109, 8, 7),
(110, 8, 8),
(111, 8, 9),
(112, 8, 10),
(113, 8, 11),
(114, 8, 12),
(115, 8, 13),
(116, 8, 14),
(117, 8, 15),
(118, 9, 1),
(119, 9, 2),
(120, 9, 3),
(121, 9, 4),
(122, 9, 5),
(123, 9, 6),
(124, 9, 7),
(125, 9, 8),
(126, 9, 9),
(127, 9, 10),
(128, 9, 11),
(129, 9, 12),
(130, 9, 13),
(131, 9, 14),
(132, 9, 15),
(133, 10, 1),
(134, 10, 2),
(135, 10, 3),
(136, 10, 4),
(137, 10, 5),
(138, 10, 6),
(139, 10, 7),
(140, 10, 8),
(141, 10, 9),
(142, 10, 10),
(143, 10, 11),
(144, 10, 12),
(145, 10, 13),
(146, 10, 14),
(147, 10, 15);

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
(1, 1, 1),
(2, 1, 2),
(3, 2, 5),
(4, 3, 5),
(5, 4, 2),
(6, 4, 5),
(7, 5, 5),
(8, 5, 4),
(9, 6, 2),
(10, 6, 5),
(11, 6, 1),
(12, 7, 3),
(13, 8, 2),
(14, 8, 1),
(15, 9, 5),
(16, 9, 1),
(17, 9, 4),
(18, 10, 5),
(19, 10, 1),
(20, 10, 4);

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
(2, 1, 2),
(3, 8, 3),
(4, 3, 4),
(5, 4, 1),
(6, 4, 2),
(7, 5, 1),
(8, 5, 2),
(9, 2, 4),
(10, 6, 1),
(11, 6, 2),
(12, 10, 5),
(13, 9, 1),
(14, 9, 2),
(15, 7, 3),
(16, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `id_pdf` int(3) NOT NULL,
  `package` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id_pdf`, `package`, `url`) VALUES
(14, 'TRAVEL  SERVICES INVOICE SARAH', 'https://drive.google.com/file/d/1baWNm0krDunSfVwNG4vQ-0NeHGdaCmrP/preview');

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
(1, 'East Java', '6.jpg', 'center', '', '', 'java'),
(2, 'Central Java', '2.jpg', 'center', '', '', 'central-java'),
(3, 'West Java', '3.jpg', 'center', '', '', 'west-java'),
(4, 'Bali', 'bali.jpg', 'center', '', '', 'bali'),
(5, 'Yogyakarta', '5.jpg', 'center', '', '', 'yogyakarta');

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
(1, 'Active Travel', 'flaticon-007-compass'),
(2, 'Classic Jouney', 'flaticon-012-backpack-1'),
(3, 'Trekking', 'flaticon-003-mountains-1'),
(4, 'Short Trip', 'flaticon-010-gopro'),
(5, 'Luxury', 'flaticon-023-parachute'),
(6, 'Multi', 'flaticon-040-drone');

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
(3, 1, 'Explore Mount Bromo and Mount Ijen', 'Climb Mount Bromo at sunset and Mount Ijen before sunrise and enjoy the contrasting and spectacular views of these active volcanoes'),
(4, 2, 'Explore UNESCO-heritage temples', 'Learn about Hindu mythology at the 9th-century Prambanan temple and admire the magnificent carvings at Borobodur, two UNESCO heritage sites.'),
(5, 2, 'Learn about village traditions', 'Travel by local horsecart and cyclo through two small villages to see scenes of authentic daily life and traditional activities.'),
(6, 2, 'See Yogyakarta’s Sultan Palace', 'Learn about Javanese architecture and culture while touring the ‘living museum’ which serves as the King’s residence.'),
(7, 3, 'Understand Java’s heritage', 'Visit the Sultan’s Palace and Ullen Sentalu Museum, seeing historical artefacts and learning about the island’s intriguing past. '),
(8, 3, 'Visit remarkable temples', 'Explore UNESCO-heritage Prambanan and Borobodur monuments and the older, pyramid-shaped Mendut and Pawon temples.'),
(9, 3, 'Take a scenic bike ride', 'Head to the hills near of Yogyakarta for an easy, scenic ride past Mount Merapi and through the countryside.'),
(10, 4, 'Explore UNESCO-heritage temples', 'Wake up for a sunrise over Borobodur, a massive Buddhist temple, and wander through the 9th-century Prambanan Hindu temple.'),
(11, 4, 'Discover local village life', 'Take a horse cart to Candirejo village, dining in a local family’s house and seeing scenes of daily Javanese life. '),
(12, 4, 'See Yogyakarta’s highlights', 'See the Sultan’s Palace, Taman Sari water palace and more for a taste of the city’s rich history and culture. '),
(13, 5, 'Understand Java’s Heritage', 'Visit the Sultan’s Palace for its history, UNESCO-heritage Borobudur and  Prambanan monuments and  temples in Trowuluan the former capital of Majapahit , seeing historical artefacts and learning about the island’s intriguing past.\r\n'),
(14, 5, 'Take a scenic train journey\r\n', 'Travel from Yogyakarta to Jombang by train, gazing upon Java\'s volcanic landscape from a different point of view\r\n'),
(15, 5, 'Explore the two magnificent volcanoes\r\n', 'Travel by jeep to the rim of Bromo volcan for sunrise then get closer look at its massive caldera. Trek to the crater of Ijen , witness the agility and strength of the miners collect and carry the sulphur blocks up to the crater rim\r\n'),
(16, 6, 'Explore Yogyakarta’s cultural sites', 'Visit the insightful Sultan’s Palace, the Mataram Kingdom’s historic compound and the city’s vibrant market.'),
(17, 6, 'Journey through Java’s highlands', 'Take a local train through volcanic landscapes, drive by verdant tea plantations and spend a night at a coffee plantation.'),
(18, 6, 'Visit iconic temples and volcanos', 'Explore UNESCO-heritage Borobodur and Prambanan temples and journey to the spectacular volcanos of Mount Bromo and Mount Lawu.'),
(19, 7, 'Explore remote Baduy Tribe', 'Trek to visit the traditional community of the outer Baduay Tribe in the remote Kendeng Mountains.'),
(20, 7, 'River trekking and caving in Buniayu', 'Go on an adrenaline pumping river trek, caving and shower climbing in Buniayu.'),
(21, 7, 'Trek to ‘Dead Forest’ of Mount Papandayan', 'Explore an enchanting, active volcano, its sulfurous ‘dead forest’ and the glory of edelweiss garden'),
(22, 8, 'Trek one of Java’s highest mountains', 'Take a pre-dawn trek to Mt Merbabu’s summit to enjoy sunrise views over four neighbouring volcanos and the Dieng Plateau'),
(23, 8, 'Watch a live volcanic eruption', 'Climb to the top of Mt Semeru at sunrise and watch as Java’s most active volcano explodes every twenty minutes'),
(24, 8, 'Take a scenic train journey', 'Travel from Solo to Mojokerto by train, gazing upon Java’s volcanic landscapes from a different point of view.'),
(25, 9, 'Visit Ancient Temples', 'Explore many ancient temples of Java and Bali and learn about the influences of Hinduism and Buddhism religions.'),
(26, 9, 'Trek up active volcanoes', 'Take a challenging trek up Mount Bromo and Mount Ijen and see local miners working around the active craters.'),
(27, 9, 'Traditional shows and crafts', 'Partake in creating traditional Batik and watch traditional cultural shows like Wayang Kulit and Macapat.'),
(28, 10, 'Buddhist Temple Borobudur', 'Visit the massive Buddhist Temple Borobudur and learn about the incredible history behind it from an anthropologist.'),
(29, 10, 'Sultan’s Palace', 'View the Javanese relics on display at the Sultan’s Palace, the same place of residence of the current Sultan.'),
(30, 10, 'Two volcanoes', 'Hike towards the crater of two volcanoes and experience the out-of-this-world atmosphere on top.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `levelUser` enum('1','2') NOT NULL,
  `createdAt` date NOT NULL,
  `lastLogin` date NOT NULL,
  `statusAktif` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `fullname`, `levelUser`, `createdAt`, `lastLogin`, `statusAktif`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '1', '2019-05-31', '2020-02-15', '1'),
(2, 'eugenecw.ng@gmail.com', 'a151b60f3197544d0bce5ad7cbbd0432', 'Eugene', '2', '2019-07-30', '2019-07-30', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_destination`
--
ALTER TABLE `category_destination`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `category_package`
--
ALTER TABLE `category_package`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id_destination`),
  ADD KEY `id_category` (`id_category`);

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
  ADD PRIMARY KEY (`id_itinerary`),
  ADD KEY `id_package` (`id_package`);

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
  ADD PRIMARY KEY (`id_package_info`),
  ADD KEY `id_info` (`id_info`);

--
-- Indexes for table `package_region`
--
ALTER TABLE `package_region`
  ADD PRIMARY KEY (`id_package_region`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `package_styles`
--
ALTER TABLE `package_styles`
  ADD PRIMARY KEY (`id_package_style`),
  ADD KEY `id_style` (`id_style`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id_pdf`);

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
  ADD PRIMARY KEY (`id_highlight`),
  ADD KEY `id_package` (`id_package`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_destination`
--
ALTER TABLE `category_destination`
  MODIFY `id_category` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_package`
--
ALTER TABLE `category_package`
  MODIFY `id_category` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id_destination` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id_duration` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id_itinerary` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id_package` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package_destinations`
--
ALTER TABLE `package_destinations`
  MODIFY `id_package_destination` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `package_info`
--
ALTER TABLE `package_info`
  MODIFY `id_package_info` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `package_region`
--
ALTER TABLE `package_region`
  MODIFY `id_package_region` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `package_styles`
--
ALTER TABLE `package_styles`
  MODIFY `id_package_style` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id_pdf` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tour_styles`
--
ALTER TABLE `tour_styles`
  MODIFY `id_style` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  MODIFY `id_highlight` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category_destination` (`id_category`);

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `itinerary_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `packages` (`id_package`);

--
-- Constraints for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  ADD CONSTRAINT `trip_highlights_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `packages` (`id_package`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
