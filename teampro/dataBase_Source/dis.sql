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
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dimg` varchar(100) DEFAULT NULL,
  `dcimg` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `gubun` char(10) DEFAULT NULL,
  `gigan` varchar(100) DEFAULT NULL,
  `dcode` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (3,'삼성카드3.png','section12.jpg','삼성카드 씨네샾 프로모션','2','2022.09.01~2022.09.30','0101'),(4,'우리카드1.jpg','2.jpg','CGV X 우리카드 PLCC 출시!','2','2021.12.21~2022.12.31','0102'),(5,'카카오페이1.jpg','3.jpg','카카오페이 4천원 할인','3','2022.09.09~2022.09.30','0103'),(6,'41.jpg','42.jpg','CGV우리카드 이용 시 영화관람권 10매 제공!','2','2022.09.01~2022.09.30','0104'),(7,'51.jpg','5.png','PASS (모바일 운전면허증) 성인 인증 서비스 도입','4','2022.08.24~2022.09.30','0105'),(8,'61.jpg','62.jpg','현대백화점 모바일카드 신규 가입 프로모션','3','2022.08.08~2022.09.30','0106'),(9,'71.jpg','72.jpg','CGV 4,000원 · 8,000원 할인','2','2022.08.03~2022.09.30','0107'),(10,'81.jpg','82.jpg','TOSS로 결제하고 3천원 캐시백 혜택 받기!','3','2022.08.01~2022.09.30','0108'),(11,'91.jpg','92.jpg','우체국 체크카드 회원이라면 CGV에서 할인 받자!','2','2022.09.05~2022.10.05','0109'),(12,'101.jpg','102.jpg','2022년 KT멤버십 혜택!','1','2022.01.01~2022.12.31','0110'),(13,'111.jpg','112.jpg','LGU+ \'영화콕\'','1','2022.01.01~2022.12.31','0111'),(14,'121.jpg','122.jpg','모바일문화상품권 CGV에서 사용하는 방법!','3','2022.09.05~2022.10.05','0112'),(15,'131.jpg','132.jpg','아시아나 마일리지로 IMAX 예매도 된다!!','3','2021.06.24~2022.09.30','0113'),(16,'141.jpg','142.jpg','영화즉시할인은 바로 NH농협카드','2','2021.06.16~2023.05.31','0114'),(17,'151.jpg','152.jpg','문화누리카드로 CGV에서 문화생활 즐기세요!','4','2021.02.01~2023.12.31','0115'),(18,'161.jpg','162.jpg','현대 M포인트로 매주 할인 상시 6천 M포인트 차감할인','2','2021.01.01~2022.12.31','0116'),(19,'171.jpg','172.jpg','우리WON꿀머니로 CGV에서 현금처럼 사용하자!','2','2021.01.01~2022.12.31','0117'),(20,'181.jpg','182.jpg','기아멤버스 회원 전용 파격 혜택!','3','2020.03.09~2023.01.31','0118');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 17:22:26
