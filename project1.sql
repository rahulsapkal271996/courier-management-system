-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analyst`
--

DROP TABLE IF EXISTS `analyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analyst` (
  `ANALYST_ID` varchar(20) NOT NULL,
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `REPORT_ID` varchar(20) NOT NULL,
  `ANALYST_NAME` varchar(30) NOT NULL,
  `CONTACT` bigint(15) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `SALARY` bigint(10) NOT NULL,
  PRIMARY KEY (`ANALYST_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  KEY `REPORT_ID` (`REPORT_ID`),
  CONSTRAINT `analyst_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`),
  CONSTRAINT `analyst_ibfk_2` FOREIGN KEY (`REPORT_ID`) REFERENCES `report` (`REPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analyst`
--

LOCK TABLES `analyst` WRITE;
/*!40000 ALTER TABLE `analyst` DISABLE KEYS */;
INSERT INTO `analyst` VALUES ('1001','4','Report 1','',0,'',0),('1002','5','Report 2','',0,'',0),('1003','9','Report 3','',0,'',0),('1004','14','Report 4','',0,'',0);
/*!40000 ALTER TABLE `analyst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` varchar(20) NOT NULL,
  `CUSTOMER_NAME` varchar(30) NOT NULL,
  `CONTACT` bigint(15) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C10','Chandler Bing',2123134141,'2348 Wilson Street New York 1006'),('C11','Chandler Bing',2123134141,'2348 Wilson Street New York 10006'),('C12','Alex Philips',6452158492,'138 Alison Park Paris 75002'),('C13','Niki Pawar',6662131324,'1787 Lawrence Chicago 60602'),('C14','Rahul Sharma',6692141754,'2133 Benson street Denver 80201'),('C15','Cody Lione',6672161734,'1286 Eden Road New York 10005'),('C16','Shaun Johnson',2432251657,'6615 gray\'s street Austin 78701'),('C17','Cody Lione',6672161734,'1286 Eden Road New York 10005'),('C18','Neil Caffrey',6694518264,'1354 Benton road Austin 78702'),('C19','Peter Russel',4063512214,'3315 St joseph Denver 80206'),('C20','Rachael Zane',4088546612,'1308 Newark street Miami 33125'),('CO1','Rahul Sharma',6692141754,'2133 Benson Street Denver 80201'),('CO2','Cody Lione',6672161734,'1286 Eden Road New York 10005'),('CO3','Niki Pawar',6662131324,'1787 Lawrence Chicago 60602'),('CO4','Mihir Kate',6221231789,'6824 Santa Rosa Austin 78701'),('CO5','John Miller',6213331272,'1631 Hilmar Street Miami 33124'),('CO6','Kate Johnson',3392161284,'1231 Avenue Maine Paris 75002'),('CO7','Jim Bomer',3213211284,'1211 St. Claire Denver 80206'),('CO8','Hudson Jerry',3336669999,'431 Greens Road New York 10006'),('CO9','Jerry Richard',2224443333,'337 Ballomy Street Miami 33125');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1','Manager'),('10','Manager'),('11','Manager'),('12','Manager'),('13','Manager'),('14','Analyst'),('15','Staff'),('16','Staff'),('17','Staff'),('18','Staff'),('19','Staff'),('2','Manager'),('20','Staff'),('21','Staff'),('22','Staff'),('3','Manager'),('4','Analyst'),('5','Analyst'),('6','Staff'),('7','Staff'),('8','Staff'),('9','Analyst');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_complaint`
--

DROP TABLE IF EXISTS `enquiry_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry_complaint` (
  `ENQUIRY_ID` varchar(20) NOT NULL,
  `STAFF_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL,
  `PACKAGE_ID` varchar(20) DEFAULT NULL,
  `ENQUIRY_COMPLAINT_STATUS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ENQUIRY_ID`),
  KEY `PACKAGE_ID` (`PACKAGE_ID`),
  KEY `STAFF_ID` (`STAFF_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `enquiry_complaint_ibfk_1` FOREIGN KEY (`PACKAGE_ID`) REFERENCES `package` (`PACKAGE_ID`),
  CONSTRAINT `enquiry_complaint_ibfk_2` FOREIGN KEY (`STAFF_ID`) REFERENCES `franchise_staff` (`FRANCHISE_STAFF_ID`),
  CONSTRAINT `enquiry_complaint_ibfk_3` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_complaint`
--

LOCK TABLES `enquiry_complaint` WRITE;
/*!40000 ALTER TABLE `enquiry_complaint` DISABLE KEYS */;
INSERT INTO `enquiry_complaint` VALUES ('E1','2001','CO1','Late Delivery','F301','Resolved'),('E10','2007','C12','Payment Issue','F306','Pending'),('E11','2004','C13','Payment Issue','F307','Pending'),('E2','2002','CO2','Tracking Lost Package','F302','Pending'),('E3','2001','CO3','Delayed Delivery','F303','Resolved'),('E4','2005','CO4','Damaged Goods','F304','Pending'),('E5','2003','CO9','Delayed Delivery','F305','Pending'),('E6','2004','CO7','Payment Issue','F304','Resolved'),('E7','2002','CO5','Payment Issue','F305','Pending'),('E8','2001','CO6','Delayed Delivery','F302','Resolved'),('E9','2001','CO8','Damaged Goods','F304','Resolved');
/*!40000 ALTER TABLE `enquiry_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise`
--

DROP TABLE IF EXISTS `franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise` (
  `FRANCHISE_ID` varchar(20) NOT NULL,
  `FRANCHISE_LOCATION` varchar(30) NOT NULL,
  `franchise_contact` bigint(15) DEFAULT NULL,
  `REGISTRATION_NO` int(20) NOT NULL,
  PRIMARY KEY (`FRANCHISE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise`
--

LOCK TABLES `franchise` WRITE;
/*!40000 ALTER TABLE `franchise` DISABLE KEYS */;
INSERT INTO `franchise` VALUES ('A1','Little Rock',12143387217,1111),('B1','Denver',13872881287,1122),('C1','Miami',11321880206,1133),('D1','Chicago',13801307456,1144),('E1','Austin',15483831277,1155),('F1','Paris',33396211837,1166),('G1','New York',16621241339,1177),('H1','Washington',33241261403,1188);
/*!40000 ALTER TABLE `franchise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise_manager`
--

DROP TABLE IF EXISTS `franchise_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise_manager` (
  `FRANCHISE_MANAGER_ID` varchar(20) NOT NULL,
  `FRANCHISE_ID` varchar(20) NOT NULL,
  `ANALYST_ID` varchar(20) NOT NULL,
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `MANAGER_NAME` varchar(30) NOT NULL,
  `CONTACT` bigint(15) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `SALARY` bigint(10) NOT NULL,
  PRIMARY KEY (`FRANCHISE_MANAGER_ID`),
  KEY `FRANCHISE_ID` (`FRANCHISE_ID`),
  KEY `ANALYST_ID` (`ANALYST_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  CONSTRAINT `franchise_manager_ibfk_1` FOREIGN KEY (`FRANCHISE_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `franchise_manager_ibfk_2` FOREIGN KEY (`ANALYST_ID`) REFERENCES `analyst` (`ANALYST_ID`),
  CONSTRAINT `franchise_manager_ibfk_3` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_manager`
--

LOCK TABLES `franchise_manager` WRITE;
/*!40000 ALTER TABLE `franchise_manager` DISABLE KEYS */;
INSERT INTO `franchise_manager` VALUES ('101','A1','1002','1','Noah Alder',3487384231,'2147 LittleRock 72201',8000),('102','B1','1001','2','Liam Anderson',6782132326,'3714 Denver 80201',7000),('103','C1','1003','3','Mason Bardot',5867189921,'1288 Miami 33124',6000),('104','D1','1002','10','Jason Mayo',3321261482,'3241 Chicago 60601',6500),('105','E1','1003','11','Prachi Desai',3348912634,'7182 Austin 78701',7000),('106','F1','1004','12','Sanjana Bothale',1287883147,'2137 Paris 75004',7500),('107','G1','1001','13','Harshada Kulkarni',3369912891,'8123 New York 10006',7000);
/*!40000 ALTER TABLE `franchise_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise_staff`
--

DROP TABLE IF EXISTS `franchise_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchise_staff` (
  `FRANCHISE_STAFF_ID` varchar(20) NOT NULL,
  `FRANCHISE_ID` varchar(20) NOT NULL,
  `EMPLOYEE_ID` varchar(20) NOT NULL,
  `STAFF_NAME` varchar(30) NOT NULL,
  `CONTACT` bigint(15) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `SALARY` bigint(10) NOT NULL,
  PRIMARY KEY (`FRANCHISE_STAFF_ID`),
  KEY `FRANCHISE_ID` (`FRANCHISE_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  CONSTRAINT `franchise_staff_ibfk_1` FOREIGN KEY (`FRANCHISE_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `franchise_staff_ibfk_2` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_staff`
--

LOCK TABLES `franchise_staff` WRITE;
/*!40000 ALTER TABLE `franchise_staff` DISABLE KEYS */;
INSERT INTO `franchise_staff` VALUES ('2001','A1','8','Alex Miller',2143262137,'3622 LittleRock 72202',4000),('2002','B1','7','James Lennon',9664664638,'1286 Denver 80204',3500),('2003','C1','6','Ethan Smith',1283884278,'3328 Miami 33124',3000),('2004','D1','15','Ronak Gune',3216213334,'1378 Chicago 60602',4000),('2005','E1','16','Peter Parker',4213213321,'1233 Austin 78701',3500),('2006','F1','17','Chris Louis',3321273321,'1011 Paris 75004',3000),('2007','G1','18','David Tim',1476232147,'7822 New York 10005',3200),('2008','D1','19','Steve Jobs',3214268293,'3124 Chicago 32001',3600),('2009','D1','20','Bob Grays',3334289123,'3302 Chicago 32002',4500),('2010','D1','21','Ross Geller',4446217210,'3103 Chicago 32002',3500),('2011','E1','22','Rachel Green',1268296231,'2204 Austin 78702',4000);
/*!40000 ALTER TABLE `franchise_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `PACKAGE_ID` varchar(20) NOT NULL,
  `SENDER_ID` varchar(20) NOT NULL,
  `RECEIVER_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL,
  `DELIVERY_TYPE` varchar(20) NOT NULL,
  `PACKAGE_TYPE` varchar(30) NOT NULL,
  `WEIGHT` float DEFAULT NULL,
  `SOURCE_NAME` varchar(20) NOT NULL,
  `DESTINATION_NAME` varchar(20) NOT NULL,
  `SOURCE_ID` varchar(20) DEFAULT NULL,
  `DESTINATION_ID` varchar(20) DEFAULT NULL,
  `AMT_PAYABLE` float NOT NULL,
  PRIMARY KEY (`PACKAGE_ID`),
  KEY `SOURCE_ID` (`SOURCE_ID`),
  KEY `DESTINATION_ID` (`DESTINATION_ID`),
  KEY `RECEIVER_ID` (`RECEIVER_ID`),
  KEY `SENDER_ID` (`SENDER_ID`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`SOURCE_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `package_ibfk_2` FOREIGN KEY (`DESTINATION_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `package_ibfk_3` FOREIGN KEY (`RECEIVER_ID`) REFERENCES `receiver` (`RECEIVER_ID`),
  CONSTRAINT `package_ibfk_4` FOREIGN KEY (`SENDER_ID`) REFERENCES `sender` (`SENDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES ('F301','SC1','RC1','Fragile','Local','Baggage',46,'Denver','Miami','B1','C1',200),('F302','SC2','RC2','Official Docs','International','documents',3,'New York','Paris','G1','F1',250),('F303','SC3','RC3','Liquid','local','food',23,'Chocago','Denver','D1','B1',100),('F304','SC4','RC4','Docs','local','university application',4,'Austin','New York','E1','G1',50),('F305','SC5','RC5','Docs','local','documents',3,'Miami','New York','C1','G1',80),('F306','SC6','RC6','Liquid','Local','Food',5,'New York','Paris','G1','F1',60),('F307','SC7','RC7','Docs','Local','Documents',7,'Chicago','Denver','D1','B1',90),('F308','SC8','RC8','Solid vacuumed food','Local','Food',25,'New York','Austin','G1','E1',300),('F309','SC9','RC9','Dehydrated food','Local','Food',30,'New York','Austin','G1','E1',350),('F310','SC10','RC10','Fragile','Local','Baggage',56,'Denver','Miami','B1','C1',400);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiver`
--

DROP TABLE IF EXISTS `receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiver` (
  `RECEIVER_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`RECEIVER_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `receiver_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver`
--

LOCK TABLES `receiver` WRITE;
/*!40000 ALTER TABLE `receiver` DISABLE KEYS */;
INSERT INTO `receiver` VALUES ('RC6','C12'),('RC7','C14'),('RC8','C16'),('RC9','C18'),('RC10','C20'),('RC1','CO1'),('RC2','CO2'),('RC3','CO3'),('RC4','CO4'),('RC5','CO5');
/*!40000 ALTER TABLE `receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `REPORT_ID` varchar(20) NOT NULL,
  `TRACKING_DETAIL_ID` varchar(20) NOT NULL,
  `EXPENSE` int(20) DEFAULT NULL,
  `REVENUE` int(20) DEFAULT NULL,
  PRIMARY KEY (`REPORT_ID`),
  KEY `TRACKING_DETAIL_ID` (`TRACKING_DETAIL_ID`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`TRACKING_DETAIL_ID`) REFERENCES `tracking_details` (`TRACKING_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES ('Report 1','TD1',20,180),('Report 2','TD2',25,225),('Report 3','TD3',10,90),('Report 4','TD4',30,20),('Report 5','TD5',45,35);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `ROUTE_ID` varchar(20) NOT NULL,
  `STAFF_ID` varchar(20) NOT NULL,
  `SOURCE_ID` varchar(20) NOT NULL,
  `DESTINATION_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`ROUTE_ID`),
  KEY `STAFF_ID` (`STAFF_ID`),
  KEY `SOURCE_ID` (`SOURCE_ID`),
  KEY `DESTINATION_ID` (`DESTINATION_ID`),
  CONSTRAINT `route_ibfk_1` FOREIGN KEY (`STAFF_ID`) REFERENCES `franchise_staff` (`FRANCHISE_STAFF_ID`),
  CONSTRAINT `route_ibfk_2` FOREIGN KEY (`SOURCE_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `route_ibfk_3` FOREIGN KEY (`DESTINATION_ID`) REFERENCES `franchise` (`FRANCHISE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('R1','2002','B1','C1'),('R10','2002','B1','C1'),('R2','2007','G1','F1'),('R3','2004','D1','B1'),('R4','2005','E1','G1'),('R5','2003','C1','G1'),('R6','2007','G1','F1'),('R7','2004','D1','B1'),('R8','2007','G1','E1'),('R9','2007','G1','E1');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sender`
--

DROP TABLE IF EXISTS `sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sender` (
  `SENDER_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`SENDER_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `sender_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender`
--

LOCK TABLES `sender` WRITE;
/*!40000 ALTER TABLE `sender` DISABLE KEYS */;
INSERT INTO `sender` VALUES ('SC6','C11'),('SC7','C13'),('SC8','C15'),('SC9','C17'),('SC10','C19'),('SC1','CO1'),('SC2','CO2'),('SC3','CO3'),('SC4','CO4'),('SC5','CO5');
/*!40000 ALTER TABLE `sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subroute`
--

DROP TABLE IF EXISTS `subroute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subroute` (
  `SUBROUTE_ID` varchar(20) NOT NULL,
  `ROUTE_ID` varchar(20) NOT NULL,
  `VEHICLE_ID` varchar(20) NOT NULL,
  `SUBROUTE_SOURCE_ID` varchar(20) DEFAULT NULL,
  `SUBROUTE_DESTINATION_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SUBROUTE_ID`),
  KEY `ROUTE_ID` (`ROUTE_ID`),
  KEY `SUBROUTE_SOURCE_ID` (`SUBROUTE_SOURCE_ID`),
  KEY `SUBROUTE_DESTINATION_ID` (`SUBROUTE_DESTINATION_ID`),
  CONSTRAINT `subroute_ibfk_1` FOREIGN KEY (`ROUTE_ID`) REFERENCES `route` (`ROUTE_ID`),
  CONSTRAINT `subroute_ibfk_2` FOREIGN KEY (`SUBROUTE_SOURCE_ID`) REFERENCES `franchise` (`FRANCHISE_ID`),
  CONSTRAINT `subroute_ibfk_3` FOREIGN KEY (`SUBROUTE_DESTINATION_ID`) REFERENCES `franchise` (`FRANCHISE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subroute`
--

LOCK TABLES `subroute` WRITE;
/*!40000 ALTER TABLE `subroute` DISABLE KEYS */;
INSERT INTO `subroute` VALUES ('SR1','R1','FD-909','B1','E1'),('SR10','R6','A6-162','G1','F1'),('SR11','R7','CH-152','D1','B1'),('SR12','R8','A6-132','G1','E1'),('SR13','R9','A6-130','G1','E1'),('SR14','R10','FD-800','B1','C1'),('SR2','R1','AS-301','E1','A1'),('SR3','R1','LR-202','A1','C1'),('SR4','R5','AS-322','E1','A1'),('SR5','R5','LR-205','A1','G1'),('SR6','R4','MI-451','C1','H1'),('SR7','R4','WA-105','H1','G1'),('SR8','R2','A-6142','G1','F1'),('SR9','R3','CH-138','D1','B1');
/*!40000 ALTER TABLE `subroute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_assignment`
--

DROP TABLE IF EXISTS `tracking_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_assignment` (
  `TRACKING_DETAIL_ID` varchar(20) NOT NULL,
  `SUBROUTE_ID` varchar(20) NOT NULL,
  `ROUTE_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`TRACKING_DETAIL_ID`,`SUBROUTE_ID`,`ROUTE_ID`),
  KEY `ROUTE_ID` (`ROUTE_ID`),
  KEY `SUBROUTE_ID` (`SUBROUTE_ID`),
  CONSTRAINT `tracking_assignment_ibfk_1` FOREIGN KEY (`ROUTE_ID`) REFERENCES `route` (`ROUTE_ID`),
  CONSTRAINT `tracking_assignment_ibfk_2` FOREIGN KEY (`SUBROUTE_ID`) REFERENCES `subroute` (`SUBROUTE_ID`),
  CONSTRAINT `tracking_assignment_ibfk_3` FOREIGN KEY (`TRACKING_DETAIL_ID`) REFERENCES `tracking_details` (`TRACKING_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_assignment`
--

LOCK TABLES `tracking_assignment` WRITE;
/*!40000 ALTER TABLE `tracking_assignment` DISABLE KEYS */;
INSERT INTO `tracking_assignment` VALUES ('TD1','SR1','R1'),('TD1','SR2','R1'),('TD1','SR3','R1'),('TD10','SR14','R10'),('TD2','SR8','R2'),('TD3','SR9','R3'),('TD4','SR6','R4'),('TD4','SR7','R4'),('TD5','SR4','R5'),('TD5','SR5','R5'),('TD6','SR10','R6'),('TD7','SR11','R7'),('TD8','SR12','R8'),('TD9','SR13','R9');
/*!40000 ALTER TABLE `tracking_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_details`
--

DROP TABLE IF EXISTS `tracking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_details` (
  `TRACKING_DETAIL_ID` varchar(20) NOT NULL,
  `DATE_OF_TRANSACTION` date NOT NULL,
  `PACKAGE_ID` varchar(20) NOT NULL,
  `EST_DELIVERY_DATE` date NOT NULL,
  `DELIVERY_STATUS` varchar(20) NOT NULL,
  `ACTUAL_DELIVERY_DATE` date DEFAULT NULL,
  `DISPATCH_DATE` date DEFAULT NULL,
  `CURRENT_DELIVERY_LOCATION` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TRACKING_DETAIL_ID`),
  KEY `PACKAGE_ID` (`PACKAGE_ID`),
  CONSTRAINT `tracking_details_ibfk_1` FOREIGN KEY (`PACKAGE_ID`) REFERENCES `package` (`PACKAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_details`
--

LOCK TABLES `tracking_details` WRITE;
/*!40000 ALTER TABLE `tracking_details` DISABLE KEYS */;
INSERT INTO `tracking_details` VALUES ('TD1','2018-03-12','F301','2018-03-16','Delivered','2018-03-16','2018-03-13','1631 Hilmar Street Miami 33124'),('TD10','2018-02-19','F310','2018-02-23','Delivered','2018-02-24','2018-02-20','1223 Lincoln Park Miami 33124'),('TD2','2018-03-12','F302','2018-03-16','Delivered','2018-03-16','2018-03-13','1231 Avenue Main Paris 75002'),('TD3','2018-03-12','F303','2018-03-16','Delivered','2018-03-16','2018-03-13','1211 St Caire Denver 80206'),('TD4','2018-03-12','F304','2018-03-16','Pending','2018-03-16','2018-03-13','2251 Alamada Little Rock 72202'),('TD5','2018-03-12','F305','2018-03-16','Pending','2018-03-16','2018-03-13','951 Concord Austin 78701'),('TD6','2017-12-08','F306','2017-12-11','Pending','0000-00-00','2017-12-09','1312 Lafayette Paris 76801'),('TD7','2017-12-10','F307','2017-12-13','Pending','0000-00-00','2017-12-11','1342 El Camino Denver 80206'),('TD8','2018-02-20','F308','2018-02-22','Delivered','2018-02-22','2018-02-20','206 Domi LittleRock 72202'),('TD9','2018-02-18','F309','2018-02-25','Delivered','2018-02-25','2018-02-20','221 Park Avenue Austin 78707');
/*!40000 ALTER TABLE `tracking_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-14  3:18:55
