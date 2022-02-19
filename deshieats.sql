-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 05:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deshieats`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartlist`
--

CREATE TABLE `cartlist` (
  `ID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `ChefID` int(11) NOT NULL,
  `ChefName` varchar(50) NOT NULL,
  `ChefEmail` varchar(50) NOT NULL,
  `ChefPassword` varchar(50) NOT NULL,
  `ChefContactNumber` int(15) NOT NULL,
  `ChefDescription` varchar(100) NOT NULL,
  `ChefAddress` varchar(50) NOT NULL,
  `ChefArea` varchar(50) NOT NULL,
  `ChefImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`ChefID`, `ChefName`, `ChefEmail`, `ChefPassword`, `ChefContactNumber`, `ChefDescription`, `ChefAddress`, `ChefArea`, `ChefImage`) VALUES
(1, 'New-Chef', 'reaperj42@gmail.com', '123456', 1552321408, 'About Chef', 'Chef/Company Address', 'Chef/Company area', 'Chef Image'),
(2, 'Homely Chinese', 'xyz@gmail.com', '123456', 1, 'Whether you want Fried rice or a banquet with spectacular Chinese food, We serve them all in Homely ', 'abc', 'abc', 'images\\DeshiEatsMenu\\Homely Chinese\\Cover.jpg'),
(3, 'Food Tong', 'xyz@gmail.com', '123456', 1, 'Craving light snacks? At our Food Tong, we offer a variety of Bengali snacks prepared in the healthi', 'abc', 'abc', 'images\\DeshiEatsMenu\\Food Tong\\Cover.jpg'),
(4, 'Ghorowa Shaad', 'xyz@gmail.com', '123456', 1, 'Ghorowa Shaad brings authentic Bengali homemade dishes to your doorstep! ', 'abc', 'abc', 'images\\DeshiEatsMenu\\Ghorowa Shaad\\Cover.jpg'),
(5, 'The Cake Room', 'xyz@gmail.com', '123456', 1, 'At The Cake Room, we are all about being able to provide the joy and happiness that occurs when the ', 'abc', 'abc', 'images\\DeshiEatsMenu\\The Cake Room\\Cover.jpg'),
(6, 'Pitha Ghor', 'xyz@gmail.com', '123456', 1, 'Pitha Shop provides different types of Pitha with original tastes. Buy Pitha online to surprise your', 'abc', 'abc', 'images\\DeshiEatsMenu\\PithaGhor\\Cover.jpg'),
(7, 'Foodies Fastfood', 'xyz@gmail.com', '123456', 1, 'Have the perfect fastfood for your hangout and chills!', 'abc', 'abc', 'images\\DeshiEatsMenu\\Foodies Fastfood\\Cover.jfif'),
(8, 'Maryam\'s Momo Inn', 'xyz@gmail.com', '123456', 1, 'We cook authentic and tasty dumplings in various flavors! Be a vegan or non-vegan, we have dumplings', 'abc', 'abc', 'images\\DeshiEatsMenu\\Maryams Momo Inn\\coverpic.jfi'),
(9, 'Misti Mukh', 'xyz@gmail.com', '123456', 1, 'We offer authentic Bengali desserts to please your sweet tooth. Whether you are craving sweets or lo', 'abc', 'abc', 'images\\DeshiEatsMenu\\Misti Mukh\\Cover pic.jpg'),
(10, 'Chatgaiya House', 'xyz@gmail.com', '123456', 1, 'We, at Chatgaiya House, are aimed to serve you the most authentic traditional cuisine from Chottogra', 'abc', 'abc', 'images\\DeshiEatsMenu\\Chatgaiya House\\Cover pic.jpg'),
(11, 'EatSylheti', 'xyz@gmail.com', '123456', 1, 'Taste the best Sylheti Cuisine at EatSylheti. Our very own Sylheti chefs cook authentic and deliciou', 'abc', 'abc', 'images\\DeshiEatsMenu\\EatSylheti\\Cover Pic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustID` int(11) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `CustEmail` varchar(50) NOT NULL,
  `CustPassword` varchar(50) NOT NULL,
  `CustContactNumber` int(15) NOT NULL,
  `CustOrder` int(10) NOT NULL,
  `CustAddress` varchar(100) NOT NULL,
  `CustArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `ShortDescription` varchar(150) NOT NULL,
  `Description` varchar(455) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `ItemImage` varchar(100) NOT NULL,
  `OrderCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `ShortDescription`, `Description`, `Price`, `Quantity`, `OwnerID`, `ItemImage`, `OrderCount`) VALUES
(1, 'Classic Vanilla Cake', 'Classic Vanilla Cake is made with vanilla sponge, vanilla cream, and mixed fruit jam for the sweet base flavor.', 'Sometimes the best way to go is to stay simple! This Classic Vanilla Cake proves all that, made with vanilla sponge, vanilla cream, and mixed fruit jam for the sweet base flavor, the cake is coated in white icing and designed with icing swirls. Make it more personal when you add your own message to make it a memorable dessert. Order now and have it delivered to you today!', 1000, 10, 5, 'images\\DeshiEatsMenu\\The Cake Room\\Vanilla Cake.jpg', 0),
(2, 'Classic Chocolate Ca', 'Layers of chocolate sponge stacked up high with a smooth chocolate-flavored cream spread.', 'Layers of chocolate sponge stacked up high with a smooth chocolate-flavored cream spread in between and finished off with cream swirls and chocolate sprinkles. The highlight of this cake is the gorgeous marble effect on the exterior creating a real sweet masterpiece.', 1200, 10, 5, 'images\\DeshiEatsMenu\\The Cake Room\\ChocolateCake.jpg', 0),
(3, 'Black Forest Cake 1 ', 'Light moist chocolate sponge with layers of vanilla confectionery cream and black cherry jam.', 'The Black Forest has been a favorite for us all. A mix of sponge, chocolate, and cherries, it\'s a hard one not to love. Light moist chocolate sponge with layers of vanilla confectionery cream and black cherry jam, covered with more finger-licking good cream and gorgeously glazed cherries, it\'s perfect for a little sweet treat.', 1400, 10, 5, 'images\\DeshiEatsMenu\\The Cake Room\\BlackforestCake.jpg', 0),
(4, 'White Forest Cake 1 ', 'Light vanilla sponge blanketed with smooth vanilla flavored confectionery cream and cherry jam.', 'This cake gives the classic Black Forest cake an impressive spin. Light vanilla sponge blanketed with smooth vanilla flavored confectionery cream and cherry jam, decorated with white chocolate curls covering the entire cake and glace cherries on the top. Have your personalized message piped onto the white chocolate plaque.', 1400, 10, 5, 'images\\DeshiEatsMenu\\The Cake Room\\WhiteForest.jpg', 0),
(5, 'Red Velvet Cake 1KG', 'Blood red chocolate sponge layered with cream cheese flavored cream.', 'One of our most unique cakes, with the perfect touch of sweetness. Our delicious Red Velvet cake is absolutely indulgent. Blood red chocolate sponge layered with cream cheese flavored cream only to leave you wanting more.', 1500, 10, 5, 'images\\DeshiEatsMenu\\The Cake Room\\RedVelvet.jpg', 0),
(6, 'Shada Vaat', 'Freshly Cooked Basmati Rice', 'Freshly Cooked Basmati Rice. You can pair it up with other dishes.', 100, 10, 10, 'images\\DeshiEatsMenu\\Chatgaiya House\\ShadaVaat.jpg', 0),
(7, 'Kaala Vuna Beef', 'Prepared with shoulder pieces of beef and traditional spices', 'Kala Bhuna is a famous dark and tender dish native to Chittagong prepared with shoulder pieces of beef and traditional spices.', 400, 10, 10, 'images\\DeshiEatsMenu\\Chatgaiya House\\Kala Vuna Beef.JPG', 0),
(8, 'Mejbani Beef', 'Meat braised in a specially made spice mix.', 'Meat braised in a specially made spice mix, simmered, and cooked for long for its authentic taste.', 350, 10, 10, 'images\\DeshiEatsMenu\\Chatgaiya House\\Mejbani Beef.jpg', 0),
(9, 'Choner Daal', 'The savory-sweet Choner dal is a Chatgaiya classic.', 'The savory-sweet Choner dal is a Chatgaiya classic. Bursting with warm, mellow flavors, it is insanely delicious.', 100, 10, 10, 'images\\DeshiEatsMenu\\Chatgaiya House\\Choner Daal.jpg', 0),
(10, 'Aakhni', 'A mixed rice dish cooked in Sylheti style.', 'Aakhni is made with extracts of different types of aromatic masalas mixed in water and this water is used to cook the rice to make pulao.', 400, 10, 11, 'images\\DeshiEatsMenu\\EatSylheti\\Aakhni.jpg', 0),
(11, 'Shatkora Beef', 'Made with shatkora citrus and beef.', 'Shatkora Beef is made with shatkora citrus and beef curry. The presence of Shatkora makes the dish unique in terms of taste and aroma.', 400, 10, 11, 'images\\DeshiEatsMenu\\EatSylheti\\Shatkora Beef.jpg', 0),
(12, 'Dried Fish Vuna', 'Dried fish cooked in authentic Sylheti style.', 'Dried fish cooked in the authentic Sylheti style.', 150, 10, 11, 'images\\DeshiEatsMenu\\EatSylheti\\Dried Fish Vuna.jpg', 0),
(13, 'Shat Ronger Cha', '7 layered tea.', 'The most popular beverage of Sylhet, 7 layered tea!', 50, 10, 11, 'images\\DeshiEatsMenu\\EatSylheti\\Shat Ronger Cha.jpg', 0),
(14, 'Kolija Shingara', 'Shingara stuffed with potato and beef liver.', 'Shingara stuffed with potato and beef liver.', 20, 50, 3, 'images\\DeshiEatsMenu\\Food Tong\\KolijaShingara.jpg', 0),
(15, 'Somucha', 'Somucha fried with a savory filling.', 'Fried with a savory filling, including ingredients such as spiced potatoes, onions, peas.', 10, 50, 3, 'images\\DeshiEatsMenu\\Food Tong\\Somucha.jpg', 0),
(16, 'Puri', 'Stuffed with mashed potato.', 'Crispy, golden deep-fried snack stuffed with mashed potato.', 10, 50, 3, 'images\\DeshiEatsMenu\\Food Tong\\puri.jpg', 0),
(17, 'Vegetable Roll', 'Made with fresh herbs and vegetables.', 'Made with fresh herbs and vegetables. Comes with tomato sauce.\r\n', 20, 50, 3, 'images\\DeshiEatsMenu\\Food Tong\\VegetableRoll.jpg', 0),
(18, 'Chicken Momo', 'Made with chicken stuffing.', 'Steamed dumplings made from flour with chicken stuffing. Served in 6 pieces per order.', 180, 50, 8, 'images\\DeshiEatsMenu\\Maryams Momo Inn\\ChickenMomo.jpg', 0),
(19, 'Beef Momo', 'Made with beef stuffing.', 'Steamed dumplings made from flour with beef stuffing. Served in 6 pieces per order.\r\n', 240, 50, 8, 'images\\DeshiEatsMenu\\Maryams Momo Inn\\BeefMomo.jpg', 0),
(20, 'Prawn Momo', 'Made with prawn stuffing.', 'Steamed dumplings made from flour with prawn stuffing. Served in 6 pieces per order.\r\n', 280, 20, 8, 'images\\DeshiEatsMenu\\Maryams Momo Inn\\PrawnMomo.jpg', 0),
(21, 'Vegetable Momo', 'Made with vegetable stuffing.', 'Steamed dumplings made from flour with vegetable stuffing. Served in 6 pieces per order.\r\n', 120, 20, 8, 'images\\DeshiEatsMenu\\Maryams Momo Inn\\vegetableMomo.jpg', 0),
(22, 'Mixed Momo Platter', 'Comes with 4 different kinds of momo.', 'The Mixed Momo Platter includes 2 pieces chicken momo, 2 pieces beef momo, 2 pieces prawn momo, and 2 pieces vegetable momo.', 250, 20, 8, 'images\\DeshiEatsMenu\\Maryams Momo Inn\\MixedMomoPlatter.jpg', 0),
(23, 'Vapa Pitha', 'Comes in 5 pieces per platter.', 'Comes in 5 pieces per platter.', 100, 50, 6, 'images\\DeshiEatsMenu\\PithaGhor\\VapaPitha.jpg', 0),
(24, 'Patishapta Pitha', 'Comes in 5 pieces per platter.', 'Comes in 5 pieces per platter.', 250, 50, 6, 'images\\DeshiEatsMenu\\PithaGhor\\Patishapta.jpg', 0),
(25, 'Nokshi Pitha', 'Comes in 5 pieces per platter.', 'Comes in 5 pieces per platter.', 300, 20, 6, 'images\\DeshiEatsMenu\\PithaGhor\\NokshiPitha.jfif', 0),
(26, 'Chitoi Pitha', 'Comes in 5 pieces per platter.', 'Comes in 5 pieces per platter.', 50, 20, 6, 'images\\DeshiEatsMenu\\PithaGhor\\ChitoiPitha.jpg', 0),
(27, 'Mixed Pitha Platter', 'Consists of Vapa Pitha, Nokshi Pitha, Patishapta Pitha, and Chitoi Pitha', 'Consists of Vapa Pitha, Nokshi Pitha, Patishapta Pitha, and Chitoi Pitha. Total 10 pieces of Pitha per platter.', 250, 20, 6, 'images\\DeshiEatsMenu\\PithaGhor\\MixedPithaPlatter.jfif', 0),
(28, 'Roshogolla', 'Half KG Roshogolla', 'Ball-shaped dumplings of chhana and semolina dough, cooked in light sugar syrup made of sugar.', 300, 50, 9, 'images\\DeshiEatsMenu\\Misti Mukh\\Roshogolla.jpg', 0),
(29, 'Shahi Phirni', 'Half KG Phirni', 'Shahi phirni is a milk based sweet delicacy that is made with coarsely ground rice and lots of dry fruits. Saffron and rose water are added to enhance the taste.', 400, 20, 9, 'images\\DeshiEatsMenu\\Misti Mukh\\ShahiFirni.jpg', 0),
(30, 'Bagurar Doi', 'Authentic yogurt from Bagura (Half KG)', 'Authentic yogurt from Bagura.', 250, 10, 9, 'images\\DeshiEatsMenu\\Misti Mukh\\BogurarDoi.jpg', 0),
(31, 'Halwa Platter', 'Mixed Halwa in a platter.', 'Mixed Halwa in a platter.', 500, 10, 9, 'images\\DeshiEatsMenu\\Misti Mukh\\HalwaPlatter.jpg', 0),
(32, 'Shondesh Platter', 'A variety of Shondesh sweets in a platter.', 'A variety of Shondesh sweets in a platter.', 500, 10, 9, 'images\\DeshiEatsMenu\\Misti Mukh\\ShondeshPlatter.jpg', 0),
(33, 'Chinese Chicken Plat', 'Fried rice served with chicken, vegetables, and house special sauce.', 'Fried rice served with chicken, vegetables, and house special sauce.', 350, 10, 2, 'images\\DeshiEatsMenu\\Homely Chinese\\ChickenPlatter.jpg', 0),
(34, 'Chinese Beef Platter', 'Fried rice served with beef steak, vegetables, and house special sauce.', 'Fried rice served with beef steak, vegetables, and house special sauce.', 450, 10, 2, 'images\\DeshiEatsMenu\\Homely Chinese\\BeefPlatter.jpg', 0),
(35, 'Prawn Platter', 'Fried rice served with Prawn curry, vegetables, and house special sauce.', 'Fried rice served with Prawn curry, vegetables, and house special sauce.', 450, 10, 2, 'images\\DeshiEatsMenu\\Homely Chinese\\PrawnPlatter.jpg', 0),
(36, 'Chinese Fish Platter', 'Fried rice served with fish curry, vegetables, and house special sauce.', 'Fried rice served with fish curry, vegetables, and house special sauce.', 400, 10, 2, 'images\\DeshiEatsMenu\\Homely Chinese\\FishPlatter.jpg', 0),
(37, 'Chicken Pizza', 'Prepared with chicken, sausage, capsicum, black olive, mozarella cheese, and house special sauce.', 'Pizza prepared with chicken, sausage, capsicum, black olive, mozarella cheese, and house special sauce.', 600, 10, 7, 'images\\DeshiEatsMenu\\Foodies FastFood\\Pizza1.jpg', 0),
(38, 'Beef Pizza', 'Prepared with beef, sausage, capsicum, black olive, mozarella cheese, and house special sauce.\r\n', 'Pizza prepared with beef, sausage, capsicum, black olive, mozarella cheese, and house special sauce.\r\n', 800, 10, 7, 'images\\DeshiEatsMenu\\Foodies FastFood\\Pizza2.jpg', 0),
(39, 'Cheese Burger', 'Deliciously Made with a chunk of meat, onions, tomato, cheddar cheese, and House special Bun.', 'Deliciously Made with a chunk of meat, onions, tomato, cheddar cheese, and House special Bun.', 250, 10, 7, 'images\\DeshiEatsMenu\\Foodies FastFood\\Burger.jfif', 0),
(40, 'French Fry', 'Freshly made french fries.', 'Freshly made french fries. Comes with house special dip.', 100, 20, 7, 'images\\DeshiEatsMenu\\Foodies FastFood\\frenchFry.jpg', 0),
(41, 'Morog Polao', 'Comes with Polao, Chicken Roast, salad, and House special Achar.', 'Comes with Polao, Chicken Roast, salad, and House special Achar.', 200, 10, 4, 'images\\DeshiEatsMenu\\Ghorowa Shaad\\Polao.jpg', 0),
(42, 'Tehari', 'Comes with beef tehari, salad, and our house special achar.', 'Comes with beef tehari, salad, and our house special achar.', 300, 10, 4, 'images\\DeshiEatsMenu\\Ghorowa Shaad\\Tehari.jpg', 0),
(43, 'Vuna Khichuri', 'Comes with Vuna Khichuri, salad, and our house special achar.', 'Comes with Vuna Khichuri, chicken curry, salad, and our house special achar.', 180, 10, 4, 'images\\DeshiEatsMenu\\Vuna Khichuri.jpg', 0),
(44, 'Kacchi', 'Comes with rice, mutton, salad, and our house special acahar.', 'Comes with rice, 2 pieces of mutton, salad, and our house special acahar.', 400, 10, 4, 'images\\DeshiEatsMenu\\Ghorowa Shaad\\Kacchi.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderAddress` varchar(255) NOT NULL,
  `OrderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) NOT NULL,
  `OrderPrice` double NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryInstruction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Message` mediumtext NOT NULL,
  `Rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartlist`
--
ALTER TABLE `cartlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`ChefID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartlist`
--
ALTER TABLE `cartlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `ChefID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
