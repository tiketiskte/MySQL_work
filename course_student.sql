-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: course
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `S_no` char(12) NOT NULL COMMENT '学号',
  `S_name` varchar(4) NOT NULL COMMENT '姓名',
  `gender` char(1) NOT NULL DEFAULT '男' COMMENT '性别',
  `d_no` varchar(8) NOT NULL COMMENT '系号',
  `phone` char(12) NOT NULL COMMENT '电话',
  `birthday` date NOT NULL COMMENT '出生日期',
  `address` varchar(20) NOT NULL COMMENT '家庭住址',
  PRIMARY KEY (`S_no`),
  KEY `FK_ID` (`d_no`),
  CONSTRAINT `FK_ID` FOREIGN KEY (`d_no`) REFERENCES `department` (`d_no`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('18408220','孙敬垚','男','001','15092524952','2001-01-29','山东'),('201510101101','刘晓东','男','001','11000000001','1999-05-10','昆明'),('201510101102','林慧','女','001','11000000002','1999-12-15','上海'),('201511101103','李远鹏','男','002','11000000003','1998-10-25','北京'),('201511101104','吴娜文','女','002','11000000004','1999-08-10','昆明'),('201511101105','刘智','男','003','11000000005','1999-05-08','北京'),('201511101106','赵立民','男','003','11000000006','1999-02-25','上海'),('201513101111','张亮亮','男','004','11000000007','1998-09-05','上海'),('201513101116','王丽萍','女','005','11000000008','1998-06-03','重庆');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 21:34:13
