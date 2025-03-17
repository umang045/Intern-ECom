-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: emartbackup
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id_idx` (`users_id`),
  CONSTRAINT `users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'India','Gujarat','Ahmedabad',NULL,'380001',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,23.0309,72.5925),(2,'India','Gujarat','Ahmedabad',NULL,'380009',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,23.0359,72.5631),(4,'India','Gujarat','Ahmedabad',NULL,'380004',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,23.0514,72.5968),(5,'India','Gujarat','Ahmedabad',NULL,'380014',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,23.0463,72.5707),(6,'India','Gujarat','Ahmedabad',NULL,'380021',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,23.0298,72.6011),(7,'India','Gujarat','Ahmedabad',NULL,'380013',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,23.0522,72.5526),(8,'India','Gujarat','Ahmedabad',NULL,'380027',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,23.0608,72.5801),(9,'India','Gujarat','Ahmedabad',NULL,'380004',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,23.049,72.5971),(11,'India','Gujarat','Ahmedabad',NULL,'380025',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,23.0383,72.6007),(12,'India','Gujarat','Ahmedabad',NULL,'380016',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,23.0553,72.6069),(17,'India','Gujarat','Ahmedabad',NULL,'380009',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,23.024,72.5501),(18,'India','Gujarat','Ahmedabad',NULL,'380016',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,23.0585,72.6047),(19,'India','Gujarat','Ahmedabad',NULL,'380054',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,23.0512,72.5285),(22,'India','Gujarat','Ahmedabad',NULL,'382346',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,23.0444,72.6341),(23,'India','Gujarat','Ahmedabad',NULL,'380001',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,23.0335,72.5924);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `color_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (26,11,4,20,2,'S',NULL,NULL,NULL,NULL,NULL,NULL),(28,13,4,20,2,'S',NULL,NULL,NULL,NULL,NULL,NULL),(30,15,5,24,2,'S',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_code` varchar(45) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'#8d2929','1'),(2,'#44298d','1'),(3,'#441eaa','1'),(4,'#6f5aa8','1'),(5,'#5da85a','1'),(6,'#8d2929','2'),(7,'#5aa87c','2'),(8,'#5a63a8','2'),(9,'#9a5aa8','2'),(10,'#a8795a','2'),(11,'#8d2929','3'),(12,'#5aa87c','3'),(13,'#5a63a8','3'),(14,'#9a5aa8','3'),(15,'#a8795a','3'),(16,'#8d2929','4'),(17,'#5aa87c','4'),(18,'#a8795a','4'),(19,'#5aa865','4'),(20,'#1fdf3a','4'),(21,'#8d2929','5'),(22,'#5aa87c','5'),(23,'#a8795a','5'),(24,'#df1fc0','5'),(25,'#4a1fdf','5'),(26,'#9b6767','6'),(27,'#677b9b','6'),(28,'#204078','6'),(29,'#22427a','6'),(30,'#355489','6'),(31,'#9b6767','7'),(32,'#22427a','7'),(33,'#355489','7'),(34,'#7c687f','7'),(35,'#782985','7'),(36,'#8f4f4f','8'),(37,'#728f4f','8'),(38,'#4f8f63','8'),(39,'#4f8f6e','8'),(40,'#4f8f79','8'),(41,'#b94343','9'),(42,'#b99043','9'),(43,'#82704f','9'),(44,'#745417','9'),(45,'#1a7417','9'),(46,'#e816ff','10'),(47,'#6bff16','10'),(48,'#168eff','10'),(49,'#5f7f9d','10'),(50,'#7f8b96','10'),(51,'#393d40','10'),(52,'#5387d0','11'),(53,'#53d09c','11'),(54,'#8bd053','11'),(55,'#9a53d0','11'),(56,'#d053b1','11'),(57,'#1657db','12'),(58,'#5074bc','12'),(59,'#5c8be9','12'),(60,'#2a4b8c','12'),(61,'#1d3f83','12'),(62,'#213969','12'),(63,'#16dcff','13'),(64,'#16ffb5','13'),(65,'#306b59','13'),(66,'#1b382f','13');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `color_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,3,3,'L',12,150,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,5,3,'S',24,120,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,7,1,'M',31,300,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,4,1,'S',20,350,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,9,2,'L',42,320,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,4,1,'M',19,350,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,4,3,'S',16,350,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,4,1,'M',19,350,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,5,2,'S',21,120,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,4,1,'S',20,350,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,5,2,'S',24,120,NULL,NULL,NULL,NULL,NULL,NULL),(12,11,4,2,'S',20,350,NULL,NULL,NULL,NULL,NULL,NULL),(13,12,4,2,'S',16,350,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,10,2,13,450,'Cancelled',NULL,'2025-02-18 14:19:53',NULL,NULL,NULL,NULL),(2,11,5,14,360,'Cancelled',NULL,'2025-02-18 14:21:17',NULL,NULL,NULL,NULL),(3,11,6,14,300,'pending',NULL,'2025-02-18 14:23:18',NULL,NULL,NULL,NULL),(4,11,6,13,350,'Cancelled',NULL,'2025-02-18 14:23:56',NULL,NULL,NULL,NULL),(5,12,8,14,640,'pending',NULL,'2025-02-18 14:25:11',NULL,NULL,NULL,NULL),(6,13,10,13,350,'Delivered',NULL,'2025-02-18 14:34:54',NULL,NULL,NULL,NULL),(7,10,1,10,1050,'Out For Delivery',NULL,'2025-03-05 12:28:15',NULL,NULL,NULL,NULL),(8,10,16,10,350,'Out For Delivery',NULL,'2025-03-05 12:30:36',NULL,NULL,NULL,NULL),(9,10,17,10,240,'Out For Delivery',NULL,'2025-03-06 17:12:04',NULL,NULL,NULL,NULL),(10,10,17,10,350,'Dispatched',NULL,'2025-03-07 14:34:30',NULL,NULL,NULL,NULL),(11,11,6,11,940,'Out For Delivery',NULL,'2025-03-10 16:35:04',NULL,NULL,NULL,NULL),(12,15,20,15,700,'Dispatched',NULL,'2025-03-12 14:25:53',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `pass_reset_id` int NOT NULL AUTO_INCREMENT,
  `pass_resetToken` varchar(200) DEFAULT NULL,
  `pass_resetTokenExpire` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pass_reset_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
INSERT INTO `password_reset` VALUES (2,'e01ddcb4730391cd95259d792c467f60c458d96b537f5ad4381871d85ff4dab4','2025-03-10 14:07:42',10,NULL,NULL,NULL,NULL,NULL,NULL),(3,'6bcd3bfa7e477515f456c166e6ef92631039e4cd785bf57998468888c19fa328','2025-03-16 11:53:47',10,NULL,NULL,NULL,NULL,NULL,NULL),(4,'72ee59631312da327fe8e23fac85530fd3a858db6414b93ad5d2847e3562b510','2025-03-16 11:55:38',10,NULL,NULL,NULL,NULL,NULL,NULL),(5,'819540167ac0d06416568839a1b491ec398cd697f930b5d8706a386377bb0c38','2025-03-16 11:56:53',10,NULL,NULL,NULL,NULL,NULL,NULL),(6,'262f86e7a2172f99403b707b246fec0bf168219de71b377c94223f1dae0639cf','2025-03-16 12:03:52',10,NULL,NULL,NULL,NULL,NULL,NULL),(7,'2fc7f24fbeb49120cbd6763f9926199b01c3b065c4e8a3bc6d8e3dbf30b77c5f','2025-03-16 12:06:36',10,NULL,NULL,NULL,NULL,NULL,NULL),(8,'413c0c54978432656c30db497ccf15062b597ef8d887537ffb544e81cbd3c667','2025-03-16 12:09:29',10,NULL,NULL,NULL,NULL,NULL,NULL),(11,'2937ff916dd56402454497cf4a2cf2106739f4cc58981a77ed11bd9a59cda5c8','2025-03-16 19:35:11',10,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `payment_method` varchar(200) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,10,'online',450,'2025-02-18 14:19:53','Finished'),(2,2,11,'online',360,'2025-02-18 14:21:17','Finished'),(3,3,11,'online',300,'2025-02-18 14:23:18','Finished'),(4,4,11,'Cash On Delivery',350,'2025-02-18 14:23:56','pending'),(5,5,12,'online',640,'2025-02-18 14:25:11','Finished'),(6,6,13,'online',350,'2025-02-18 14:34:54','Finished'),(7,7,10,'online',1050,'2025-03-05 12:28:15','Finished'),(8,8,10,'Cash On Delivery',350,'2025-03-05 12:30:36','pending'),(9,9,10,'online',240,'2025-03-06 17:12:04','Finished'),(10,10,10,'online',350,'2025-03-07 14:34:30','Finished'),(11,11,11,'online',940,'2025-03-10 16:35:04','Finished'),(12,12,15,'online',700,'2025-03-12 14:25:53','Finished');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'mens'),(2,'womens'),(3,'kids');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `img_public_id` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `size` json DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `totalsell` int DEFAULT '0',
  `price` int DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  `product_tag` varchar(45) DEFAULT NULL,
  `product_tag_color` varchar(45) DEFAULT NULL,
  `tag_active` tinyint DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739862191/mbh1bz33rmx5g0zxkxzf.jpg',NULL,'Amazon Brand - Symbol Men\'s Solid Cotton Shirt | Casual | Plain | Full Sleeve | Summer-Regular Fit (Available in Plus Size)','Soft and Breathable 100% Cotton Fabric Long sleeve shirt in solid color Single pocket at chest Regular collar long sleeve shirt Pair it up with dark denims or classic chinos for everyday casual look Refer to size chart to pick your correct size Additional Information ManufacturerAmazon Brand - Symbol Item Weight1 kg Net Quantity1 1 Generic NameCotton Shirt | Casual | Plain | Full Sleeve | Summer - Regular Fit (Available in Plus Size)',NULL,500,0,345,1,'2025-02-18 12:33:38',NULL,'2025-02-18 14:38:31',13,NULL,'Popular','#6c48ea',0),(2,1,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739862303/ilrvbyk6gwzg0l2efa7h.jpg',NULL,'TAGDO Men\'s Regular Fit Casual Shirt (5171)','Fabric: Polyester, Designed to withstand daily wear and maintain its shape and color over time. Versatile design : Ideal for casual outings, everyday wear for a stylish ensemble. Stylish color options : Choose from a selection of classic and contemporary colors to suit your preference. Fit : Modern regular fit for a sleek and flattering look. Surface : Luxuriously soft texture that feels gentle against the skin for all-day wear. Additional Information ManufacturerTagdo, Tagdo - Surat PackerTagdo - Surat ImporterTagdo - Surat Item Weight200 g Item Dimensions LxWxH20 x 20 x 2 Centimeters Net Quantity1.00 count Generic NameShirt','[\"M\", \"L\", \"S\", \"XL\"]',50,0,200,0,'2025-02-18 12:35:33',NULL,NULL,NULL,NULL,'Featured','#901616',0),(4,2,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739862571/t6e2vhizyup9qxo5qqcr.jpg',NULL,'GoSriKi Women\'s Rayon Viscose Anarkali Printed Kurta with Palazzo & Dupatta','shirt for men| half shirt for men| Printed shirts for men Premium Quality: Our men shirt is made from high-quality Rayon materials for lasting durability. Stylish Comfort: A shirt for men stylish enough for any event, yet comfortable for daily,office,party wear. Enhance Look : Enhance Your Look by Wearing this Casual Stylish Men\'s shirt, Team it with a Pair of Tapered Denims Or Solid Chinos and Loafers for a fun Smart Casual Look. Occasion:- Evening Wear, Work Wear, Festival Wear, Function Wear, Club Wear, Party, Hangouts Additional Information ManufacturerLERIYA FASHION, OSLC House, Kosad Ring Road, 394107, Surat, Gujarat, help.oslc@gmail.com, LERIYA FASHION, OSLC House, Kosad Ring Road, 394107, Surat, Gujarat, help.oslc@gmail.com PackerOSLC House, Kosad Ring Road, 394107, Surat, Gujarat, help.oslc@gmail.com ImporterOSLC House, Kosad Ring Road, 394107, Surat, Gujarat, help.oslc@gmail.com Item Weight300 g Item Dimensions LxWxH10 x 15 x 2 Centimeters Generic NameShirt for Men | Mens Casual Shirt | Men Stylish Shirt | Men Printed Shirt | Men\'s Regular Fit | Men Formal Shirt | Half Sleeve Shirt','[\"M\", \"L\", \"S\"]',505,-5,350,1,'2025-02-18 12:39:59',NULL,NULL,NULL,NULL,'Featured','#161f90',0),(5,3,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739862685/pnswvjptmfhj1npz2kuw.jpg',NULL,'Hopscotch Girls Knee Length Party Dresses','Material: 95% Cotton, 5% Lycra Package Includes: 1 Party Dress The actual product may differ slightly in color from the one illustrated in the images. Fit Type: Regular All Dimensions are in cms :- Party Dresses: Length: 67 cm , Chest: 68 cm Additional Information ManufacturerHopscotch Wholesale Trading PVT.LTD., Hopscotch Wholesale Trading PVT.LTD., A/7,Harihar Corp,Mankoli Naka,Dapode,Bhiwandi,Thane,Maharashtra-421388 PackerHopscotch Wholesale Trading PVT.LTD. Item Weight349 g Item Dimensions LxWxH19 x 17 x 4 Centimeters Net Quantity1.00 count Generic NameParty Dresses','[\"M\", \"L\", \"S\"]',496,4,120,1,'2025-02-18 12:41:42',NULL,NULL,NULL,NULL,'Best Seller','#161f90',1),(6,2,14,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739862924/bfluwbefvhktwfhlaf5l.jpg',NULL,'KrazzyKudy Women\'s Rayon Flared Embroidery Kurti Under 599','KrazzyKudy Women\'s Rayon Flared Embroidery Kurti Under 599 KrazzyKudy Women\'s Rayon Flared Embroidery Kurti Under 599 KrazzyKudy Women\'s Rayon Flared Embroidery Kurti Under 599','[\"M\", \"S\"]',90,0,543,1,'2025-02-18 12:45:47',NULL,NULL,NULL,NULL,'Popular','#ae2982',1),(7,3,14,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739863057/a3gcfyrytonpwr971ojt.jpg',NULL,'Nusyl Boy\'s Printed Loose Fit T-Shirt','Color: Lilac Fabric Name: Cotton Rich; Composition: 80% Cotton 20% Polyester Neck Type: Round Neck; Sleeve Type: Short sleeve; Print','[\"M\", \"S\"]',289,1,300,1,'2025-02-18 12:47:51',NULL,NULL,NULL,NULL,'Featured','#ae2982',1),(8,3,14,'http://res.cloudinary.com/dchhwidrr/image/upload/v1739863218/qwwrsqd0dot2zsfqhdfi.jpg',NULL,'MIGLOCUST Anime T Shirt for Boys - Tokyo Revengers Manji Gang Kids Half Sleeve','Material: Cotton 200GSM, Pattern: Anime Graphic Printed, Fit Type: Oversized Drop Shoulder Youthful Design: Tailored for boys aged 8 ,9,10,11,12,13,14,15,16,17 the T-shirt features a trendy','[]',220,0,450,1,'2025-02-18 12:50:34',NULL,NULL,NULL,NULL,'Featured','#efe30b',1),(9,1,7,'http://res.cloudinary.com/dchhwidrr/image/upload/v1738052081/dy8filnj5d3jjfa1grqp.jpg',NULL,'camera','Jordar Camero with joradr zoom ne clear result hign resolution','null',400,2,400,1,'2025-02-18 12:56:37',NULL,'2025-03-16 10:47:25',7,NULL,NULL,NULL,NULL),(10,1,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1741760365/van2bmccgf1awgllelzh.jpg',NULL,'U.S. POLO ASSN. Men\'s Regular Fit Shirt','<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Material composition</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">65% Linen, 35% Cotton</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Pattern</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Solid</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Fit type</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Regular Fit</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Sleeve type</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Long Sleeve</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Collar style</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Spread Collar</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Length</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Standard Length</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Country of Origin</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">India</span></li></ol><p><br></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Manufacturer</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">M/s. Punit Creation, SY #42 Near Macaulay English School, Bangalore, Karnataka - 560068, M/s. Punit Creation, SY #42 Near Macaulay English School, Bangalore, Karnataka - 560068</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Packer</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">M/s. Punit Creation, SY #42 Near Macaulay English School, Bangalore, Karnataka - 560068</span></p><p><br></p>','[\"M\", \"XL\", \"L\"]',599,0,399,1,'2025-03-12 11:53:26',NULL,NULL,NULL,NULL,'Popular','#ff1668',0),(11,3,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1742054687/muyz1qdnomufh06jlxlv.jpg',NULL,'Hopscotch Boys Cotton Text Print Jacket and Joggers Set In Orange Color','<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Material: 100 % COTTON</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Package Includes: 1 Jacket, 1 Jogger</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">The actual product may differ slightly in color from the one illustrated in the images.</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Product Length: Waist Length</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">All Dimensions are in cms :- Hoodies: Length: 33.5 cm , Chest: 54.0 cm , Pants: Length: 46 cm , Waist: 40 cm</span></li></ol><p><br></p><p><strong style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Manufacturer</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Hopscotch Wholesale Trading PVT.LTD., Hopscotch Wholesale Trading PVT.LTD., A/7,Harihar Corp,Mankoli Naka,Dapode,Bhiwandi,Thane,Maharashtra-421302</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Packer</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Hopscotch Wholesale Trading Pvt Ltd</span></p><p><strong style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Item Weight</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">348 g</span></p><p><strong style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Item Dimensions LxWxH</strong></p><p><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">19 x 17 x 4 Centimeters</span></p><p><br></p>','[\"S\", \"M\"]',399,0,250,1,'2025-03-15 21:35:23',NULL,NULL,NULL,NULL,'Featured','#ffffff',0),(12,2,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1742095465/jx6vigiac3jithihzyyx.jpg','jx6vigiac3jithihzyyx','Patolu Special Womens Banarasi Silk Blue Saree With Blouse Piece','<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Saree comes with 5.5 meters &amp; blouse piece 0.8 meters</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Work : Woven Zari Work</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Occasion: Ceremonial, Festival, Party, Wedding, Casual</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Color : Admiral Blue</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Fabric Type : Banarasi Silk</span></li></ol><p><br></p>','[\"M\"]',200,0,2599,1,'2025-03-16 08:54:51',NULL,'2025-03-16 10:52:47',13,NULL,'Popular','#ff16e4',1),(13,2,13,'http://res.cloudinary.com/dchhwidrr/image/upload/v1742103901/gv7aiesuu1xietgl29ei.jpg','gv7aiesuu1xietgl29ei','SHANVIKA Women\'s Cotton Saree','<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Material composition</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Pure Cotton</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Length</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">6 yards</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Occasion type</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Festival, Party, Wedding</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Pattern</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Floral</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Included components</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Without blouse piece</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Care instructions</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Hand Wash Only</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">Country of Origin</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"background-color: rgb(255, 255, 255); color: var(--__N4QdCheV6mGo,#0f1111);\">India</span></li></ol><p><br></p>','[\"M\"]',599,0,999,1,'2025-03-16 11:15:06',NULL,NULL,NULL,NULL,'Special','#4e8d6d',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ratting` int DEFAULT NULL,
  `review` varchar(2000) DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (2,4,10,3,'Awsome product!! and budget friendly',1,NULL,NULL,NULL,NULL,NULL),(3,4,14,4,'very good products',1,NULL,NULL,NULL,NULL,NULL),(5,1,10,3,'Very Good',1,NULL,NULL,NULL,NULL,NULL),(6,5,10,5,'good Dress!!',1,NULL,NULL,NULL,NULL,NULL),(7,6,10,4,'Good Products!!!',1,NULL,NULL,NULL,NULL,NULL),(8,7,10,3,'awsome products!!',1,NULL,NULL,NULL,NULL,NULL),(9,8,10,5,'jordar t shirt !!',1,NULL,NULL,NULL,NULL,NULL),(10,9,10,3,'Average!!',1,NULL,NULL,NULL,NULL,NULL),(11,10,15,3,'bov ny saro!!',1,NULL,NULL,NULL,NULL,NULL),(12,5,13,3,'awsome!!',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'superadmin',NULL,NULL,NULL,NULL,NULL,NULL),(2,'seller',NULL,NULL,NULL,NULL,NULL,NULL),(3,'user',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,13,1,'2025-02-18 12:33:38',500,NULL,500),(2,13,2,'2025-02-18 12:35:33',50,NULL,50),(3,13,3,'2025-02-18 12:36:56',500,NULL,500),(4,13,4,'2025-02-18 12:39:59',500,NULL,500),(5,13,5,'2025-02-18 12:41:42',500,NULL,500),(6,14,6,'2025-02-18 12:45:47',90,NULL,90),(7,14,7,'2025-02-18 12:47:51',290,NULL,290),(8,14,8,'2025-02-18 12:50:34',220,NULL,220),(9,13,9,'2025-02-18 12:56:37',120,NULL,120),(10,10,3,'2025-02-18 14:19:53',NULL,3,497),(11,11,5,'2025-02-18 14:21:17',NULL,3,497),(12,11,7,'2025-02-18 14:23:18',NULL,1,289),(13,11,4,'2025-02-18 14:23:56',NULL,1,499),(14,12,9,'2025-02-18 14:25:11',NULL,2,118),(15,13,4,'2025-02-18 14:34:54',NULL,1,498),(16,10,4,'2025-03-05 12:28:15',NULL,3,495),(17,10,4,'2025-03-05 12:30:36',NULL,1,494),(18,10,5,'2025-03-06 17:12:04',NULL,2,495),(19,10,3,'2025-03-07 12:27:10',3,NULL,500),(20,10,3,'2025-03-07 12:28:07',3,NULL,503),(21,10,4,'2025-03-07 12:46:53',3,NULL,497),(22,10,4,'2025-03-07 12:53:53',3,NULL,500),(23,10,4,'2025-03-07 12:59:38',3,NULL,503),(24,10,4,'2025-03-07 13:02:52',3,NULL,506),(25,10,4,'2025-03-07 13:19:09',3,NULL,509),(26,10,4,'2025-03-07 14:34:30',NULL,1,508),(27,11,5,'2025-03-10 16:35:04',NULL,2,493),(28,11,4,'2025-03-10 16:35:04',NULL,2,506),(29,11,5,'2025-03-10 16:56:53',3,NULL,496),(30,11,4,'2025-03-10 16:57:09',1,NULL,507),(31,13,10,'2025-03-12 11:53:26',599,NULL,599),(32,15,4,'2025-03-12 14:25:53',NULL,2,505),(33,13,11,'2025-03-15 21:35:23',399,NULL,399),(34,13,12,'2025-03-16 08:54:51',200,NULL,200),(35,13,13,'2025-03-16 11:15:06',599,NULL,599);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  `img_public_id` varchar(200) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `config` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_idx` (`role`),
  CONSTRAINT `role` FOREIGN KEY (`role`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'user1@mail.com','$2a$10$98UkXFSSgB/r5UKyMjSb/OwXumWHIT5qBuX3Kbw7nK/5VhqiHMePe','ajay bhai dodiya','9988776655','http://res.cloudinary.com/dchhwidrr/image/upload/v1742131592/fcqphiydtsiood0yacbb.jpg','fcqphiydtsiood0yacbb',3,1,NULL,NULL,NULL,NULL,NULL),(11,'user2@mail.com','$2a$10$s224m58eYpGmWKRBwEGoieHMvyN66wGgyWhF0IKJP2thryq.dHfwi','sanjay','8776484783',NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL),(12,'user3@mail.com','$2a$10$y0kKwf4fe5h.OzbJ0OfJO.bdksXVZIHxsuYBK8RDkcYI1I3PryZI6','vijay','9988776655',NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL),(13,'seller1@mail.com','$2a$10$l.jgGP7/P0LiM3yYbF5PweJEv2Q92k0Ayqxg0I/vktZXiSTSeOTtS','mahesh','9988776655','http://res.cloudinary.com/dchhwidrr/image/upload/v1740391908/iyskbuyqrp0u3a5m5jw9.jpg',NULL,2,1,NULL,NULL,NULL,NULL,NULL),(14,'seller2@mail.com','$2a$10$ohlkkpROL4WPmWk7Faizw.oZTN6g2t2QteFF2k7f9wX3X9KAKM9LW','rajesh','9876542545',NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL),(15,'superadmin@mail.com','$2a$10$tvdlxwzP5QWkwl0/LLkSAOqUDVNDMAd8abpz/r1jIZAXj79fLjGru','superAdmin','9088776655',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emartbackup'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `daily_event` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `daily_event` ON SCHEDULE EVERY 1 DAY STARTS '2025-02-11 14:35:52' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
        update orders set status='Dispatched' where datediff(now(),created_at)=1 and order_id!=0;
        update orders set status='Out For Delivery' where datediff(now(),created_at)=2 and order_id!=0;
        UPDATE orders o
            JOIN payment p ON p.order_id = o.order_id
            SET
                o.status = 'Delivered',
                p.status = 'Finished',
                p.payment_date = NOW()
            WHERE DATEDIFF(NOW(), o.created_at) = 3 and order_id!=0;
    END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `update_order_status` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `update_order_status` ON SCHEDULE EVERY 2 MINUTE STARTS '2025-02-11 10:17:07' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
		SET SQL_SAFE_UPDATES = 0;
        update orders set status='Dispatched' where datediff(now(),created_at)=1;
        update orders set status='Out For Delivery' where datediff(now(),created_at)=2;
        UPDATE orders o
            JOIN payment p ON p.order_id = o.order_id
            SET
                o.status = 'Delivered',
                p.status = 'Finished',
                p.payment_date = NOW()
            WHERE DATEDIFF(NOW(), o.created_at) = 3;
		SET SQL_SAFE_UPDATES = 1;
    END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'emartbackup'
--
/*!50003 DROP PROCEDURE IF EXISTS `activeProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `activeProd`(
in product_id int
)
BEGIN
	update products
    set is_active = case
						when is_active = true then false
                        else true
					end
    where products.product_id = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addColors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addColors`(
in color_code varchar(200),
in product_id int
)
BEGIN
	insert into colors(color_code , product_id) 
    values(color_code , product_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrder`(
in user_id int,
in seller_id int,
in address_id int,
in amount int,
in status varchar(200)
)
BEGIN
	insert into orders(user_id,seller_id,address_id,amount,status,created_at)
	values (user_id ,seller_id, address_id , amount , status,(SELECT CURRENT_TIMESTAMP() FROM DUAL));
    
     SELECT LAST_INSERT_ID() AS order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addOrderItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrderItem`(
in order_id int,
in product_id int,
in color_id int,
in quantity int,
in size varchar(200),
in price int
)
BEGIN
	insert into
    order_items(order_id , product_id,color_id ,quantity , size ,price )
    values(order_id , product_id , color_id , quantity , size , price);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addPayment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPayment`(
in order_id int,
in user_id int,
in payment_method varchar(200),
in amount int,
in payment_status varchar(200)
)
BEGIN
	insert into payment(order_id , user_id , payment_method , amount , payment_date ,payment_status)
    values(order_id,user_id,payment_method,amount, (SELECT CURRENT_TIMESTAMP() FROM DUAL),payment_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkAddress`(
in users_id int
)
BEGIN
	select count(*) from address
    where address.users_id = users_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkPass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkPass`(
in user_id int
)
BEGIN
	select password from users where users.user_id = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `countUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `countUser`()
BEGIN
	select count(user_id) as totalusers from users;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delSellerProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delSellerProd`(
in product_id int
)
BEGIN
	delete from products where products.product_id = product_id;
    delete from cart where cart.product_id = product_id;
	delete from reviews where reviews.product_id = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchOrderStatusForAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchOrderStatusForAdmin`()
BEGIN
	select status,count(*) as count 
    from orders
    group by status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchProductBySellerId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchProductBySellerId`(
in seller_id int
)
BEGIN
	select * from products where products.seller_id = seller_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchProducts`(in product_id int)
BEGIN
	if product_id is not null then 
		select * from products where products.product_id = product_id;
		select * from colors where colors.product_id = product_id;
         select avg(r.ratting) as avg_rating , count(r.review_id) as total_review
		 from products p join reviews r on r.product_id = p.product_id where p.product_id = product_id group by r.product_id ;
	else 
		select p.* , avg(r.ratting) as avg_rating
		from products p
		left join reviews r
		on p.product_id = r.product_id
		where p.is_active = true
		group by p.product_id
		order by avg_rating desc;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchUserOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchUserOrders`(
in user_id int
)
BEGIN
	SELECT * from orders
	WHERE orders.user_id = user_id
    ORDER BY created_at DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchUsersOrderItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchUsersOrderItem`(
in order_id int
)
BEGIN
	select o.* ,oi.* , p.* , c.*
	from orders o
	join order_items oi
		on oi.order_id = o.order_id
	join products p
		on p.product_id = oi.product_id
	join colors c
		on c.color_id = oi.color_id
	where oi.order_id = order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filetrProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filetrProd`(
in selected_category_id int,
in min_price decimal(10, 2),
in max_price decimal(10, 2),
in selected_color_id int,
in sort_option varchar(20)
)
BEGIN
	 select
        p.*,
        p.price,
        p.created_at,
        c.*,
        pc.category_name,
        avg(r.ratting) as avg_rating
    from
        products p
    left join
        colors c on p.product_id = c.product_id
    left join
        product_category pc on p.category_id = pc.category_id
    left join
        reviews r on p.product_id = r.product_id
    where
        (selected_category_id is null or p.category_id = selected_category_id)
        and (min_price is null or p.price >= min_price)
        and (max_price is null or p.price <= max_price)
        and (selected_color_id is null or c.color_id = selected_color_id)
        and p.is_active = true
    group by
        p.product_id,
        c.color_id,
        pc.category_id
    order by
        case
            when sort_option = 'price_asc' then p.price
            when sort_option = 'price_desc' then -p.price 
            when sort_option = 'latest' then p.created_at 
            when sort_option = 'oldest' then -p.created_at
            when sort_option = 'rating_desc' then avg_rating
            when sort_option = 'rating_asc' then -avg_rating
        end,
        p.product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filetrProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filetrProducts`(
    in selected_category_id int,
    in min_price decimal(10, 2),
    in max_price decimal(10, 2),
    in selected_color_id int,
    in sort_option varchar(20),
	in page_number int,
    in products_per_page int
)
BEGIN
	DECLARE offset_value INT;
    SET offset_value = (page_number - 1) * products_per_page;

    select
        p.product_id,
        p.*,
        p.price,
        p.created_at,
        p.is_active,
        pc.category_name,
        COALESCE(avg(r.ratting), 0) as avg_rating
    from
        products p
    left join
        product_category pc on p.category_id = pc.category_id
    left join
        reviews r on p.product_id = r.product_id
    where
        (selected_category_id is null or p.category_id = selected_category_id)
        and (min_price is null or p.price >= min_price)
        and (max_price is null or p.price <= max_price)
        and p.is_active = true
    group by
        p.product_id,
        p.price,
        p.created_at,
        p.is_active,
        pc.category_name
    having
        (selected_color_id is null or exists (
            select 1
            from colors c
            where c.product_id = p.product_id and c.color_id = selected_color_id
        ))
    order by
        case
            when sort_option = 'price_asc' then p.price
            when sort_option = 'price_desc' then -p.price 
            when sort_option = 'latest' then p.created_at 
            when sort_option = 'oldest' then -p.created_at
            when sort_option = 'rating_desc' then avg_rating
            when sort_option = 'rating_asc' then -avg_rating
        end,
        p.product_id
	 LIMIT products_per_page OFFSET offset_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filterOrdrByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filterOrdrByDate`(
in seller_id int,
in dif  int
)
BEGIN
	select o.*, o.created_at as order_date,  oi.* , pr.* , u.* 
	from orders o
	join users u
		on o.user_id = u.user_id
	join order_items oi
		on oi.order_id = o.order_id
	join products pr
		on pr.product_id = oi.product_id
	where 
    pr.seller_id = seller_id
    and DATEDIFF(NOW(), o.created_at) <= dif;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filterOrdrByStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filterOrdrByStatus`(
in seller_id int,
in order_status varchar(200)
)
BEGIN
	select o.*, o.created_at as order_date,  oi.* , pr.* , u.* 
	from orders o
	join users u
		on o.user_id = u.user_id
	join order_items oi
		on oi.order_id = o.order_id
	join products pr
		on pr.product_id = oi.product_id
	where 
    pr.seller_id = seller_id
    and o.status = order_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filterProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filterProd`(
in selected_category_id int,
in min_price decimal(10, 2),
in max_price decimal(10, 2),
in selected_color_id int,
in sort_option varchar(20)
)
BEGIN
	 select
        p.*,
        group_concat(c.color_code) as color_code,
        group_concat(c.color_id) as color_id,
        pc.category_name
    from
        products p
    left join
        colors c on p.product_id = c.product_id
	left join
        product_category pc on p.category_id = pc.category_id
    where
        (selected_category_id is null or p.category_id = selected_category_id)
        and (min_price is null or p.price >= min_price)
        and (max_price is null or p.price <= max_price)
        and (selected_color_id is null or c.color_id = selected_color_id)
        and p.is_active = true
	group by
		p.product_id
    order by
        case
            when sort_option = 'price_asc' then p.price
            when sort_option = 'price_desc' then -p.price 
            when sort_option = 'latest' then p.created_at 
            when sort_option = 'oldest' then -p.created_at
        end,
        p.product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findUserByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findUserByEmail`(in email varchar(255))
BEGIN
	select users.* , role.role as uesrsRole
	from users 
	join role
	on users.role = role.role_id
	where users.email = email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrderForAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderForAdmin`()
BEGIN
select o.*, o.created_at as order_date,  oi.* , pr.* , u.* 
	from orders o
	join users u
		on o.user_id = u.user_id
	join order_items oi
		on oi.order_id = o.order_id
	join products pr
		on pr.product_id = oi.product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrderStatusCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderStatusCount`(
in seller_id int
)
BEGIN
	select o.status as label,count(o.status) as value from order_items ot 
	inner join orders o on o.order_id = ot.order_id 
	inner join products p on p.product_id = ot.product_id where p.seller_id=seller_id group by 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductTransaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductTransaction`(
in product_id int
)
BEGIN
	select transaction.* , users.name , users.mobile , products.stock
	from transaction
	join products 
	on transaction.product_id = products.product_id
	join users
    on users.user_id = transaction.user_id
	where transaction.product_id = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSellerOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSellerOrders`(
in seller_id int
)
BEGIN
	select o.*, o.created_at as order_date,  oi.* , pr.* , u.* 
	from orders o
	join users u
		on o.user_id = u.user_id
	join order_items oi
		on oi.order_id = o.order_id
	join products pr
		on pr.product_id = oi.product_id
	where pr.seller_id = seller_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSingleOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSingleOrder`(
in order_id int
)
BEGIN
	select o.* , p.* , u.* , ad.* 
	from orders o
	join payment p
		on p.order_id = o.order_id
	join users u
		on o.user_id = u.user_id
	join address ad
		on o.address_id = ad.address_id
	where o.order_id = order_id;

	select o.* , oi.* , pr.* , c.*
	from orders o
	join order_items oi
		on oi.order_id = o.order_id
	join products pr
		on oi.product_id = pr.product_id
	join colors c
		on oi.color_id = c.color_id
	where o.order_id = order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getusr`()
BEGIN
	select * from users where role = 2;
    select	* from users where role = 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getYearWiseSell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getYearWiseSell`(
in seller_id int
)
BEGIN
	select 
		year(created_at) as year,
        monthname(created_at) as month,
        sum(amount) as total_sales
	from orders
    where orders.seller_id = seller_id
    group by year , month
    order by year , field(month, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manageAddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manageAddress`(
in actions varchar(255),
in country varchar(200),
in state varchar(200),
in city varchar(200),
in address varchar(200),
in pincode varchar(200),
in lat float,
in lng float,
in users_id int,
in address_id int
)
BEGIN
	if actions = 'addAddress' then
		insert into address(country , state, city,address,pincode,users_id,lat,lng)
        value(country , state , city ,address, pincode , users_id,lat,lng);
	elseif actions = 'checkAddress' then
		select count(*) as totalRecord from address where
		address.users_id = users_id;
	elseif actions = 'delAddress' then 
		delete from address where
		address.address_id = address_id;
	elseif actions = 'fetchAddress' then
		select * from address
        where address.users_id = users_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manageCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manageCart`(
in actions varchar(255),
in user_id int,
in product_id int,
in color_id int,
in quantity int,
in size varchar(255),
in cart_id int
)
BEGIN
	if actions = 'fetchCart' then
		select products.*,products.is_active as active , cart.* , colors.color_code from cart
		join products
			on cart.product_id = products.product_id
        join colors
			on cart.color_id = colors.color_id
		where cart.user_id = user_id;
	elseif actions = 'addToCart' then 
		insert into cart(user_id,product_id,color_id,quantity,size) 
        values(user_id , product_id,color_id,quantity,size);
	elseif actions = 'findSingleProdInCart' then 
		select * from cart where cart.user_id = user_id and cart.product_id = product_id;
	elseif  actions = 'updateQuantityCart' then
		SET SQL_SAFE_UPDATES=0;
		UPDATE cart SET cart.quantity = quantity
        WHERE
        cart.user_id = user_id AND cart.product_id = product_id;
        SET SQL_SAFE_UPDATES=1;
	elseif actions = 'removeFromCart' then
		delete from cart where cart.cart_id  = cart_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manageReviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manageReviews`(
in actions varchar(255),
in product_id int,
in user_id int,
in ratting int,
in review varchar(2000)
)
BEGIN
	if actions = 'checkReview' then
		select * from reviews where 
        reviews.user_id = user_id and reviews.product_id = product_id; 
	elseif actions = 'addReview' then
		insert into reviews(product_id,user_id,ratting,review) values 
        (product_id,user_id,ratting,review);
	elseif actions = 'updateReview' then
		update reviews set reviews.ratting = ratting, reviews.review = review
        where
        reviews.user_id = user_id and reviews.product_id = product_id;
	elseif actions = 'delReview' then
		delete from reviews where reviews.user_id = user_id
        and reviews.product_id = product_id;
	elseif actions = 'getAllProdReview' then
		SELECT users.name, reviews.*, AVG(reviews.ratting)
        OVER (PARTITION BY reviews.product_id) as avg_rating
        FROM reviews
		JOIN users 
		ON   reviews.user_id = users.user_id 
		WHERE reviews.product_id = product_id and reviews.is_active = true;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manageSellerProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manageSellerProduct`(
in actions varchar(255),
in category_id int ,
in seller_id int ,
in size json,
in price int,
in stock int,
in image varchar(255),
in title varchar(255),
in description varchar(10000),
in product_tag varchar(200),
in product_tag_color varchar(200),
in tag_active varchar(200),
in public_id varchar(200),
in product_id int
)
BEGIN
	if actions = 'addProd' then
		INSERT INTO products (category_id, seller_id, size, price, stock, image, title,
        description , product_tag , product_tag_color , tag_active ,created_at , img_public_id )
		VALUES (category_id, seller_id, size, price, stock, image, title,
        description ,product_tag , product_tag_color , tag_active , (SELECT CURRENT_TIMESTAMP() FROM DUAL) , public_id);
        
		 SELECT LAST_INSERT_ID() AS prod_id;
	elseif actions = 'updateProd' then
		UPDATE products
        SET products.category_id = category_id,
            products.seller_id = seller_id,
            products.size = size,
            products.price = price,
            products.stock = stock,
            products.image = image,
            products.title = title,
            products.description = description,
			products.product_tag = product_tag,
            products.product_tag_color = product_tag_color,
            products.tag_active = tag_active,
            products.updated_at = (SELECT CURRENT_TIMESTAMP() FROM DUAL),
            products.img_public_id = public_id,
            products.updated_by = seller_id
        WHERE products.product_id = product_id;
		
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_transaction`(
in user_id int,
in product_id int,
in credit int,
in debit int,
in available int
)
BEGIN
	insert into transaction(user_id , product_id,transaction_time,credit,debit,available)
    values(user_id ,product_id ,(SELECT CURRENT_TIMESTAMP() FROM DUAL), credit ,debit , available);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registerUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registerUser`(
in u_email varchar(255),
in u_password varchar(255),
in u_name varchar(255),
in u_mobile varchar(255),
in u_role int
)
BEGIN
insert into users(email , password ,name , mobile,role) values (u_email,
   u_password,u_name,u_mobile,u_role);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reviews`(
in actions varchar(255),
in product_id int,
in user_id int,
in ratting int,
in review varchar(2000)
)
BEGIN
	if actions = 'checkReview' then
		select * from reviews where 
        reviews.user_id = user_id and reviews.product_id = product_id; 
	elseif actions = 'addReview' then
		insert into reviews(product_id,user_id,ratting,reviews) values 
        (product_id,user_id,ratting,reviews);
	elseif actions = 'updateReview' then
		update reviews set reviews.rating = rating, reviews.review = review
        where
        reviews.user_id = user_id and reviews.product_id = product_id;
	elseif actions = 'delReview' then
		delete from reviews where reviews.user_id = user_id
        and reviews.product_id = product_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchProd`(
in searchInput varchar(300),
in pagenum int,
in seller_id int
)
BEGIN
	declare skp int;
    set skp = (pagenum-1)*5;
	select * from products where products.title like concat('%',searchInput,'%')
    and products.seller_id = seller_id
    limit skp,5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOrderStatus`(
in status varchar(255),
in order_id int
)
BEGIN
	update orders 
    set orders.status = status
    where orders.order_id = order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePass`(
in user_id int,
in password varchar(500)
)
BEGIN
	update users 
    set users.password = password 
    where users.user_id = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProfile`(
in u_email varchar(255),
in u_name varchar(255),
in u_mobile varchar(255),
in user_id int
)
BEGIN
	update users set
		users.email =u_email ,
        users.name = u_name,
        users.mobile = u_mobile
	where users.user_id = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProfilePic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProfilePic`(
in profile_pic varchar(255),
in img_public_id varchar(255),
in user_id int
)
BEGIN
	update users 
    set users.profile_pic = profile_pic ,
     users.img_public_id = img_public_id
    where users.user_id = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 19:33:22
