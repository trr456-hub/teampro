-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teampro
-- ------------------------------------------------------
-- Server version	10.5.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pimg` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `su` int(11) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `pcode` char(10) DEFAULT NULL,
  `gubun` int(11) DEFAULT NULL,
  `gusung` varchar(50) DEFAULT NULL,
  `gigan` varchar(50) DEFAULT NULL,
  `made` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (26,'movie14.jpg','CCV 영화관람권',6000,1,'2022-09-23','0101',1,'일반 영화관람권','구매일로부터 24개월 이내','CCV'),(27,'movie21.jpg','CCV 골드클래스',20000,1,'2022-09-23','0102',1,'골드클래스 관람권','구매일로부터 24개월 이내','CCV'),(28,'movie31.jpg','CCV 씨네드쉐프 관람권',30000,1,'2022-09-23','0103',1,'씨네드쉐프 관람권','구매일로부터 24개월 이내','CCV'),(29,'movie41.jpg','4DX 관람권',9000,1,'2022-09-23','0104',1,'4DX 영화관람권','구매일로부터 24개월 이내','CCV'),(30,'movie51.jpg','IMAX 관람권',9000,1,'2022-09-23','0105',1,'IMAX 영화관람권','구매일로부터 24개월 이내','CCV'),(31,'popcorn11.jpg','고소팝콘(L)',5000,1,'2022-09-23','0201',2,'고소팝콘(L)','구매일로부터 6개월 이내','옥수수: 미국산'),(32,'popcorn21.jpg','달콤팝콘(L)',6000,1,'2022-09-23','0202',2,'달콤팝콘(L)','구매일로부터 6개월 이내','옥수수: 미국산'),(33,'popcorn31.jpg','더블치즈팝콘(L)',6000,1,'2022-09-23','0203',2,'더블치즈팝콘(L)','구매일로부터 6개월 이내','옥수수: 미국산'),(34,'popcorn41.jpg','바질어니언팝콘(L)',6000,1,'2022-09-23','0204',2,'바질어니언팝콘(L)','구매일로부터 6개월 이내','옥수수: 미국산'),(35,'popcorn51.jpg','바질어니언팝콘(M)',5500,1,'2022-09-23','0205',2,'바질어니언팝콘(M)','구매일로부터 6개월 이내','옥수수: 미국산'),(36,'popcorn61.jpg','더블치즈팝콘(M)',5500,1,'2022-09-23','0206',2,'더블치즈팝콘(M)','구매일로부터 6개월 이내','옥수수: 미국산'),(37,'combo11.jpg','CCV콤보',9000,1,'2022-09-23','0301',3,'팝콘(L)1+탄산음료(M)2','구매일로부터 6개월 이내','옥수수: 미국산'),(38,'combo21.jpg','더블콤보',12000,1,'2022-09-23','0302',3,'팝콘(M)2+탄산음료(M)2','구매일로부터 6개월 이내','옥수수: 미국산'),(39,'combo31.jpg','스몰세트',6500,1,'2022-09-23','0303',3,'팝콘(M)1+탄산음료(M)1','구매일로부터 6개월 이내','옥수수: 미국산');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28 14:00:54
