-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `bookingDate` date NOT NULL,
  `tableNo` int NOT NULL,
  `customerID` int NOT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `customer_id_fk_idx` (`customerID`),
  CONSTRAINT `customer_id_fk` FOREIGN KEY (`customerID`) REFERENCES `customerdetails` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2022-10-10',5,1),(2,'2022-11-12',3,3),(3,'2022-10-11',2,2),(4,'2022-10-13',2,1),(5,'2025-01-14',5,5),(6,'2025-01-15',6,6),(7,'2025-01-16',7,7),(8,'2025-01-17',8,8),(10,'2025-01-19',10,10),(11,'2022-12-30',3,4);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (1,'John Doe','123-456-7890','johndoe@example.com'),(2,'Jane Smith','234-567-8901','janesmith@example.com'),(3,'Michael Brown','345-678-9012','michaelbrown@example.com'),(4,'Emily Davis','456-789-0123','emilydavis@example.com'),(5,'Chris Johnson','567-890-1234','chrisjohnson@example.com'),(6,'Sarah Wilson','678-901-2345','sarahwilson@example.com'),(7,'David Lee','789-012-3456','davidlee@example.com'),(8,'Laura Garcia','890-123-4567','lauragarcia@example.com'),(9,'Daniel Martinez','901-234-5678','danielmartinez@example.com'),(10,'Sophia Hernandez','012-345-6789','sophiahernandez@example.com');
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuID` int NOT NULL AUTO_INCREMENT,
  `cuisine` varchar(100) NOT NULL,
  `menuName` varchar(100) NOT NULL,
  `menuItemsID` int NOT NULL,
  PRIMARY KEY (`menuID`),
  KEY `menuItems_fk_idx` (`menuItemsID`),
  CONSTRAINT `menuItems_fk` FOREIGN KEY (`menuItemsID`) REFERENCES `menuitems` (`menuItemsID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Italian','Italian Feast',1),(2,'Seafood','Seafood Special',2),(3,'Steakhouse','Steak Night',3),(4,'Vegetarian','Vegetarian Delight',4),(5,'Mexican','Mexican Fiesta',5),(6,'Asian','Asian Fusion',6),(7,'Comfort Food','Comfort Classics',7),(8,'Mediterranean','Mediterranean Platter',8),(9,'Breakfast','Breakfast Bliss',9),(10,'BBQ','BBQ Bash',10);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `menuItemsID` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(255) NOT NULL,
  `starterName` varchar(255) NOT NULL,
  `dessertName` varchar(255) NOT NULL,
  PRIMARY KEY (`menuItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,'Italian Feast','Bruschetta','Tiramisu'),(2,'Seafood Special','Crab Cakes','Lemon Tart'),(3,'Steak Night','Caesar Salad','Chocolate Lava Cake'),(4,'Vegetarian Delight','Stuffed Mushrooms','Fruit Sorbet'),(5,'Mexican Fiesta','Nachos','Churros'),(6,'Asian Fusion','Spring Rolls','Mango Pudding'),(7,'Comfort Classics','Tomato Soup','Apple Pie'),(8,'Mediterranean Platter','Hummus Plate','Baklava'),(9,'Breakfast Bliss','Avocado Toast','Pancakes with Syrup'),(10,'BBQ Bash','Chicken Wings','Peach Cobbler');
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdeliverystatus`
--

DROP TABLE IF EXISTS `orderdeliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdeliverystatus` (
  `deliveryID` int NOT NULL AUTO_INCREMENT,
  `deliveryDate` date NOT NULL,
  `deliveryStatus` varchar(100) NOT NULL,
  `orderID` int NOT NULL,
  PRIMARY KEY (`deliveryID`),
  KEY `order-id-delivery_idx` (`orderID`),
  CONSTRAINT `order-id-delivery` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdeliverystatus`
--

LOCK TABLES `orderdeliverystatus` WRITE;
/*!40000 ALTER TABLE `orderdeliverystatus` DISABLE KEYS */;
INSERT INTO `orderdeliverystatus` VALUES (11,'2025-01-11','Delivered',1),(12,'2025-01-12','Pending',2),(13,'2025-01-13','Delivered',3),(14,'2025-01-14','In Transit',4),(16,'2025-01-16','Pending',6),(17,'2025-01-17','Delivered',7),(18,'2025-01-18','In Transit',8),(19,'2025-01-19','Delivered',9),(20,'2025-01-20','Pending',10);
/*!40000 ALTER TABLE `orderdeliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `orderDate` date NOT NULL,
  `quantity` int NOT NULL,
  `totalCost` decimal(10,0) NOT NULL,
  `customerID` int NOT NULL,
  `menuID` int NOT NULL,
  `staffID` int NOT NULL,
  PRIMARY KEY (`orderID`),
  KEY `customer_id_fk_idx` (`customerID`),
  KEY `staff_id_fk_idx` (`staffID`),
  KEY `menu_id_fk_idx` (`menuID`),
  CONSTRAINT `customer_id_orders_fk` FOREIGN KEY (`customerID`) REFERENCES `customerdetails` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu_id_fk` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_id_fk` FOREIGN KEY (`staffID`) REFERENCES `staffinformation` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-01-10',2,30,1,1,1),(2,'2025-01-11',1,90,2,3,2),(3,'2025-01-12',3,45,3,5,3),(4,'2025-01-13',4,60,4,2,4),(6,'2025-01-15',2,25,6,6,6),(7,'2025-01-16',1,150,7,7,7),(8,'2025-01-17',3,40,8,8,8),(9,'2025-01-18',2,30,9,9,9),(10,'2025-01-19',1,75,10,10,10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `orderID`,
 1 AS `quantity`,
 1 AS `totalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staffinformation`
--

DROP TABLE IF EXISTS `staffinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffinformation` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffinformation`
--

LOCK TABLES `staffinformation` WRITE;
/*!40000 ALTER TABLE `staffinformation` DISABLE KEYS */;
INSERT INTO `staffinformation` VALUES (1,'Alice Johnson','Manager',75000),(2,'Bob Smith','Chef',55000),(3,'Catherine Lee','Waiter',30000),(4,'David Brown','Bartender',32000),(5,'Emma Davis','Host',28000),(6,'Frank Wilson','Sous Chef',50000),(7,'Grace Martinez','Cleaner',25000),(8,'Hannah Garcia','Supervisor',60000),(9,'Ian Hernandez','Dishwasher',24000),(10,'Julia Adams','Cashier',29000);
/*!40000 ALTER TABLE `staffinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`littlelemon`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `orders`.`orderID` AS `orderID`,`orders`.`quantity` AS `quantity`,`orders`.`totalCost` AS `totalCost` from `orders` where (`orders`.`quantity` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-18 20:59:59
