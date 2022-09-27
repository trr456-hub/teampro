-- MySQL dump 10.19  Distrib 10.3.35-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teampro
-- ------------------------------------------------------
-- Server version	10.3.35-MariaDB

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
-- Table structure for table `cmovie`
--

DROP TABLE IF EXISTS `cmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `pimg` varchar(100) DEFAULT NULL,
  `cimg` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `gamdok` char(30) DEFAULT NULL,
  `baeoo` char(30) DEFAULT NULL,
  `jang` char(60) DEFAULT NULL,
  `gaebong` date DEFAULT NULL,
  `mcode` char(10) DEFAULT NULL,
  `age` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mcode` (`mcode`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmovie`
--

LOCK TABLES `cmovie` WRITE;
/*!40000 ALTER TABLE `cmovie` DISABLE KEYS */;
INSERT INTO `cmovie` VALUES (30,'매트릭스','매트릭스.jpg','매트릭스1.jpg','인간의 기억마저 AI에 의해 입력되고 삭제 되는 세상.진짜보다 더 진짜 같은 가상 현실 ‘매트릭스’ 그 속에서 진정한 현실을 인식할 수 없게 재배되는 인간들. <br><br>그 ‘매트릭스’를 빠져 나오면서 AI에게 가장 위험한 인물이 된 \'모피어스’는 자신과 함께 인류를 구할 마지막 영웅 ‘그’를 찾아 헤맨다. <br><br>마침내 ‘모피어스’는 낮에는 평범한 회사원으로, 밤에는 해커로 활동하는 청년 ‘네오’를 ‘그’로 지목하는데… 꿈에서 깨어난 자들, 이제 그들이 만드는 새로운 세상이 열린다!','릴리 워쇼스키','키아누 리브스','SF','1999-05-15','01','12'),(31,'머니볼','머니볼.jpg','머니볼1.jpg','게임의 역사를 바꾼 감동의 리그가 시작된다! 메이저리그 만년 최하위에 그나마 실력 있는 선수들은 다른 구단에 뺏기기 일수인 ‘오클랜드 애슬레틱스’. <br><br>돈 없고 실력 없는 오합지졸 구단이란 오명을 벗어 던지고 싶은 단장 ‘빌리 빈(브래드 피트)’은 경제학을 전공한 ‘피터’를 영입, 기존의 선수 선발 방식과는 전혀 다른 파격적인 ‘머니볼’ 이론을 따라 새로운 도전을 시작한다. <br><br>그는 경기 데이터에만 의존해 사생활 문란, 잦은 부상, 최고령 등의 이유로 다른 구단에서 외면 받던 선수들을 팀에 합류시키고, 모두가 미친 짓이라며 그를 비난한다. 과연 빌리와 애슬레틱스 팀은 ‘머니볼’의 기적을 이룰 수 있을까?','드라마','브래드피트','베넷 밀러','2011-11-17','02','12'),(32,'브루스 올마이티','브루스올마이티.jpg','브루스올마이티1.jpg','브루스의 원망에 응답해 모습을 나타낸 신은, 이 열 잘 받는 전직 리포터에게 자신의 전지전능한 힘을 주고,<br>얼마나 더 나은 세상을 만들 수 있는지 보자고 한다. 이게 꿈인가 생신가, 자신의 능력을 시험해본 브루스는 자신에게 주어진 힘이 악몽도 환상도 아님을 알게 되고, <br><br>무엇이든 마음대로 할 수 있는 전능한 존재가 됐음을 알게 된다. 이제 브루스 놀란은 우주에서 가장 강력한 망나니가 되고, 마음대로 손가락을 휘둘러대기 시작한다. 과연 브루스는 자신에게 가장 소중한 것을 찾아낼 수 있을 것인가.','톰 새디악','짐 캐리','코미디','2003-07-11','03','12'),(33,'소셜 네트워크','소셜네트워크.jpg','소셜네트워크1.jpg','2004년 첫 투자금 단돈 1천 달러 서비스 오픈 첫날 가입자수 650명 하버드대 학생들의 소규모 커뮤니티 코딩밖에 모르는 너드(Nerd) 마크 주커버그 VS 2021년 기업가치 1조 달러 돌파 전 세계 가입자수 약 28억 명 미국을 이끄는 최고의 5대 빅테크 기업 세계 10대 자산가 마크 주커버그 “페이스북”의 첫 시작, 그에 대한 모든 것.','데이빗 핀쳐','제시 아이젠버그','드라마','2010-11-18','04','12'),(34,'어벤져스1','어벤져스1.jpg','어벤져스11.jpg','지구의 안보가 위협당하는 위기의 상황에서 슈퍼히어로들을 불러모아 세상을 구하는, 일명 [어벤져스] 작전. 에너지원 ‘큐브’를 이용한 적의 등장으로 인류가 위험에 처하자 국제평화유지기구인 쉴드 (S.H.I.E.L.D)의 국장 닉 퓨리(사무엘 L.잭슨)는 [어벤져스] 작전을 위해 전 세계에 흩어져 있던 슈퍼히어로들을 찾아나선다. <br><br>아이언맨(로버트 다우니 주니어)부터 토르(크리스 헴스워스), 헐크(마크 러팔로), 캡틴 아메리카(크리스 에반스)는 물론, 쉴드의 요원인 블랙 위도우(스칼렛 요한슨), 호크 아이(제레미 레너)까지, 최고의 슈퍼히어로들이 [어벤져스]의 멤버로 모이게 되지만, 각기 개성이 강한 이들의 만남은 예상치 못한 방향으로 흘러가는데… 지구의 운명을 건 거대한 전쟁 앞에 [어벤져스] 작전은 성공할 수 있을까?','조스 웨던','로버트 다우니 주니어','액션','2012-04-26','05','12'),(35,'어벤져스: 엔드게임','엔드게임.jpg','엔드게임1.jpg','인피니티 워 이후 절반만 살아남은 지구 마지막 희망이 된 어벤져스 먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스 운명을 바꿀 최후의 전쟁이 펼쳐진다!','안소니 루소','로버트 다우니 주니어','액션','2019-04-24','06','12'),(36,'인셉션','인셉션.jpg','인셉션1.jpg','타인의 꿈에 들어가 생각을 훔치는 특수 보안요원 코브. 그를 이용해 라이벌 기업의 정보를 빼내고자 하는 사이토는 코브에게 생각을 훔치는 것이 아닌, 생각을 심는 ‘인셉션’ 작전을 제안한다. <br><br>성공 조건으로 국제적인 수배자가 되어있는 코브의 신분을 바꿔주겠다는 거부할 수 없는 제안을 하고, 사랑하는 아이들에게 돌아가기 위해 그 제안을 받아들인다. <br><br>최강의 팀을 구성, 표적인 피셔에게 접근해서 ‘인셉션’ 작전을 실행하지만 예기치 못한 사건들과 마주하게 되는데… 꿈 VS 현실 시간, 규칙, 타이밍 모든 것이 완벽해야만 하는, 단 한 번도 성공한 적 없는 ‘인셉션’ 작전이 시작된다!','크리스토퍼 놀ㄹ나','레오타르도 디카프리오','액션','2010-07-21','07','12'),(37,'인터스텔라','인터스텔라.jpg','인터스텔라1.jpg','세계 각국의 정부와 경제가 완전히 붕괴된 미래가 다가온다. 지난 20세기에 범한 잘못이 전 세계적인 식량 부족을 불러왔고, NASA도 해체되었다. <br><br>이때 시공간에 불가사의한 틈이 열리고, 남은 자들에게는 이 곳을 탐험해 인류를 구해야 하는 임무가 지워진다. <br><br>사랑하는 가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해, 그들은 이제 희망을 찾아 우주로 간다. 그리고 우린 답을 찾을 것이다. 늘 그랬듯이…','크리스토퍼 놀란','매튜 맥커너히','SF','2014-11-06','08','12'),(38,'어벤져스: 인피니티 워','인피니티워.jpg','인피니티워1.jpg','새로운 조합을 이룬 어벤져스, 역대 최강 빌런 타노스에 맞서 세계의 운명이 걸린 인피니티 스톤을 향한 무한 대결이 펼쳐진다! 마블의 클라이맥스를 목격하라! ','안소니 루소','로버트 다우니 주니어','액션','2018-04-25','09','12'),(39,'타이타닉','타이타닉.jpg','타이타닉1.jpg','우연한 기회로 티켓을 구해 타이타닉호에 올라탄 자유로운 영혼을 가진 화가 잭(레오나르도 디카프리오)은 막강한 재력의 약혼자와 함께 1등실에 승선한 로즈(케이트 윈슬렛)에게 한 눈에 반한다. <br>진실한 사랑을 꿈꾸던 로즈 또한 생애 처음 황홀한 감정에 휩싸이고, 둘은 운명 같은 사랑에 빠지는데…','제임스 카메론','레오나르도 디카프리오','로맨스','1998-02-20','10','12'),(40,'해리포터와 마법사의 돌','해리포터마법사의돌.jpg','해리포터마법사의돌1.jpg','해리 포터(다니엘 래드클리프 분)는 위압적인 버논 숙부(리챠드 그리피스 분)와 냉담한 이모 페투니아 (피오나 쇼 분), 욕심 많고 버릇없는 사촌 더즐리(해리 멜링 분) 밑에서 갖은 구박을 견디며 계단 밑 벽장에서 생활한다. <br><br>이모네 식구들 역시 해리와의 동거가 불편하기는 마찬가지. 이모 페투니아에겐 해리가 이상한(?) 언니 부부에 관한 기억을 떠올리게 만드는 달갑지 않은 존재다. <br><br>11살 생일이 며칠 앞으로 다가왔지만 한번도 생일파티를 치르거나 제대로 된 생일선물을 받아 본 적이 없는 해리로서는 특별히 신날 것도 기대 할 것도 없다. <br><br>11살 생일을 며칠 앞둔 어느 날 해리에게 초록색 잉크로 쓰여진 한 통의 편지가 배달된다. 그 편지의 내용은 다름 아닌 해리의 11살 생일을 맞이하여 전설적인“호그와트 마법학교”에서 보낸 입학초대장이었다.','크리스 콜럼버스','다니앨 래드클리프','판타지','2001-12-14','11','12');
/*!40000 ALTER TABLE `cmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongji`
--

DROP TABLE IF EXISTS `gongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `gubun` int(11) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongji`
--

LOCK TABLES `gongji` WRITE;
/*!40000 ALTER TABLE `gongji` DISABLE KEYS */;
INSERT INTO `gongji` VALUES (2,'하이2','안','2022-08-25',0,7),(4,'gdgd중요',' gdgdgdgd','2022-08-25',0,13),(6,'gdsg',' fsff','2022-08-25',0,8),(16,'f',' df','2022-08-25',0,1),(19,'faa중',' dfadㅇㅇ','2022-08-25',1,17),(21,'dfd',' fdf','2022-08-26',0,5),(28,'28','28','2022-08-26',28,1),(29,'dd',' dd','2022-08-26',0,6),(31,'ff',' ff','2022-08-26',1,3),(32,'ㄹㄹ',' ㄹㄹ','2022-08-26',0,1),(33,'',' ','2022-08-26',0,0),(34,'ㅇㄹㅇㄴ',' ㄹㅇㄴㄹ','2022-08-26',1,0);
/*!40000 ALTER TABLE `gongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gumae`
--

DROP TABLE IF EXISTS `gumae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gumae` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pcode` char(10) DEFAULT NULL,
  `su` int(11) DEFAULT NULL,
  `userid` char(20) DEFAULT NULL,
  `chong` int(11) DEFAULT NULL,
  `sudan` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `card` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `jumuncode` char(20) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gumae`
--

LOCK TABLES `gumae` WRITE;
/*!40000 ALTER TABLE `gumae` DISABLE KEYS */;
INSERT INTO `gumae` VALUES (10,'0101',1,'honghong',12000,0,0,-1,0,'honghong0001','2022-09-22'),(11,'0102',1,'honghong',40000,0,-1,-1,0,'honghong0002','2022-09-22'),(12,'0102',1,'honghong',40000,0,2,-1,0,'honghong0003','2022-09-22'),(13,'0102',1,'honghong',40000,0,-1,-1,0,'honghong0004','2022-09-22'),(14,'0102',1,'honghong',40000,1,-1,1,0,'honghong0005','2022-09-22'),(15,'0101',1,'honghong',12000,0,0,-1,0,'honghong0006','2022-09-22'),(16,'0102',1,'honghong',40000,0,-1,-1,0,'honghong0007','2022-09-22'),(17,'0101',1,'honghong',12000,0,0,-1,0,'honghong0008','2022-09-27');
/*!40000 ALTER TABLE `gumae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(10) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `juso` varchar(100) DEFAULT NULL,
  `juso_etc` varchar(100) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'honghong','홍길박','1234','gho914@naver.com',0,'2022-08-30','010-1234-5677','경기 파주시 미래로 601','해솔마을','10871'),(2,'hongjk','홍종국','1234','hongjk@naver.com',0,'2022-09-21','010-1234-5678','경기 고양시 일산서구 중앙로 지하 1569','대화역','10381');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (7,'movie1.jpg','CGV 영화관람권',12000,1,'2022-09-20','0101'),(8,'movie21.jpg','CGV 골드클래스',40000,1,'2022-09-20','0102'),(9,'movie31.jpg','CGV 씨네드쉐프 관람권',50000,1,'2022-09-20','0103'),(10,'movie41.jpg','4DX관람권',19000,1,'2022-09-20','0104'),(11,'movie51.jpg','IMAX 관람권',18000,1,'2022-09-20','0105');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mcode` char(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `userid` char(30) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (17,'11','잼써요','honghong','2022-09-16','ㅎㅎ'),(18,'10','재미있습니다','honghong','2022-09-16','감동적이네요'),(19,'09','보세요','honghong','2022-09-16','재밌\r\n\r\n네요'),(20,'08','우주는','honghong','2022-09-16','신비하다'),(21,'07','크리스토퍼 놀란','honghong','2022-09-16','만세'),(22,'06','엔드게임 입니다','honghong','2022-09-16','엔드게임 리뷰임'),(23,'05','아이언맨 멋있음','honghong','2022-09-16','토니스타크'),(24,'04','ㅇㅇ','honghong','2022-09-16','서셜네트워크 ㅋ'),(25,'03','올마이티','honghong','2022-09-16','올마이티라고함'),(26,'02','돈볼','honghong','2022-09-16','돈볼'),(27,'01','고전 명작','honghong','2022-09-16','매트릭스 입니다'),(28,'11','해리포터리뷰','honghong','2022-09-16','리뷰이빈다'),(29,'11','fdsfdsfdsfdsf','honghong','2022-09-19','adsfdsfafds'),(30,'10','타이타닉의 리뷰이빈다','honghong','2022-09-19','볼만한데 너무 고전이네요'),(31,'09','어벤져스 엔드게임','honghong','2022-09-19','타노스 죽음'),(32,'07','놀란 팬입니다','honghong','2022-09-19','잘봣어요'),(33,'10','홍종국씨의 리뷰','honghong','2022-09-21','잭 컴백'),(34,'11','dddd','hongjk','2022-09-21','ddddd'),(35,'10','d','honghong','2022-09-27','d');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt`
--

DROP TABLE IF EXISTS `tt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt` (
  `ccc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt`
--

LOCK TABLES `tt` WRITE;
/*!40000 ALTER TABLE `tt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 17:26:26
