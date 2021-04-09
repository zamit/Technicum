-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ont
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `attestation`
--

DROP TABLE IF EXISTS `attestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attestation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `semestr` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `disciplina` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `student` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disciplinaFK_idx` (`disciplina`),
  KEY `teacherFK_idx` (`teacher`),
  KEY `studentFK_idx` (`student`),
  CONSTRAINT `disciplinaFK` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `studentFK` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherFK` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attestation`
--

LOCK TABLES `attestation` WRITE;
/*!40000 ALTER TABLE `attestation` DISABLE KEYS */;
INSERT INTO `attestation` VALUES (5,2,2021,1,1,4,2),(6,1,2021,3,1,5,1),(19,1,2321,1,1,1,3),(20,8,2021,12,1,5,4),(21,7,2021,12,1,5,2),(22,1,2020,3,1,5,3),(23,8,2021,13,3,5,1),(26,2,2021,3,1,4,1),(27,4,2021,12,1,2,2),(29,4,2021,12,1,5,6),(30,3,2021,8,1,4,1);
/*!40000 ALTER TABLE `attestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_load`
--

DROP TABLE IF EXISTS `character_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_load` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_load`
--

LOCK TABLES `character_load` WRITE;
/*!40000 ALTER TABLE `character_load` DISABLE KEYS */;
INSERT INTO `character_load` VALUES (1,'нагрузка'),(2,'вакансия');
/*!40000 ALTER TABLE `character_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classwork`
--

DROP TABLE IF EXISTS `classwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classwork` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` bigint DEFAULT NULL,
  `specialnost` int DEFAULT NULL,
  `date_save` bigint DEFAULT NULL,
  `kvalification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `specIDX_idx` (`specialnost`),
  CONSTRAINT `specIDX` FOREIGN KEY (`specialnost`) REFERENCES `specialnost` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classwork`
--

LOCK TABLES `classwork` WRITE;
/*!40000 ALTER TABLE `classwork` DISABLE KEYS */;
INSERT INTO `classwork` VALUES (1,2019,1,2014,'техник-программмист'),(2,2010,1,2001,'техник'),(5,2009,2,2003,'Техник'),(6,2019,1,2001,'Повар');
/*!40000 ALTER TABLE `classwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `max_hours` bigint DEFAULT NULL,
  `stud_hours` bigint DEFAULT NULL,
  `learn_max_hours` bigint DEFAULT NULL,
  `classwork` int DEFAULT NULL,
  `_index` varchar(45) DEFAULT NULL,
  `count_exam` bigint DEFAULT NULL,
  `count_kurs_work` bigint DEFAULT NULL,
  `count_zachet` bigint DEFAULT NULL,
  `learn_classwork_hours` bigint DEFAULT NULL,
  `learn_lab_hours` bigint DEFAULT NULL,
  `learn_kurs_project_hours` bigint DEFAULT NULL,
  `one_semestr` bigint DEFAULT NULL,
  `two_semestr` bigint DEFAULT NULL,
  `three_semestr` bigint DEFAULT NULL,
  `four_semestr` bigint DEFAULT NULL,
  `five_semestr` bigint DEFAULT NULL,
  `six_semestr` bigint DEFAULT NULL,
  `seven_semestr` bigint DEFAULT NULL,
  `eigth_semestr` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ClassFRG_idx` (`classwork`),
  CONSTRAINT `ClassFRG` FOREIGN KEY (`classwork`) REFERENCES `classwork` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'МДК11.01',500,400,200,2,'123',123,343,234,23,34,54,23,34,23,34,45,34,23,34),(3,'МДК03.01',620,380,123,1,'324',5,13,26,23,8,11,23,25,23,23,23,23,27,11),(8,'Русский язык',123,123,123,2,'123',213,213,213,23,34,45,23,34,24,12,22,56,11,10),(11,'Русский язык',234,123,23123,5,'123',123,123,123,132,123,23,123,231,2,23,342,3423,23,3),(12,'Математика',534,34,34,6,'345',234,4,534,34,53,4534,345,34,3,34,343,43,4,345),(13,'Английский язык',43,453,3,1,'324',324,43,453,434,34,345,35,34,343,43,53,5434,3,54),(14,'Химия',450,545,45,1,'234',340,5,656,45,4,54,54,54,54,54,54,54,54,5),(16,'Физика',5,45,45,6,'3454',23,545,44,45,45,45,45,45,456,45,45,45,456,2);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_learn`
--

DROP TABLE IF EXISTS `form_learn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_learn` (
  `id` int NOT NULL,
  `form` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_learn`
--

LOCK TABLES `form_learn` WRITE;
/*!40000 ALTER TABLE `form_learn` DISABLE KEYS */;
INSERT INTO `form_learn` VALUES (1,'очное'),(2,'заочное'),(3,'очно-заочное');
/*!40000 ALTER TABLE `form_learn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruppa`
--

DROP TABLE IF EXISTS `gruppa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gruppa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cours` enum('1','2','3','4') DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `year_learn` int DEFAULT NULL,
  `form_learn` int DEFAULT NULL,
  `learn_plan` date DEFAULT NULL,
  `specialnost` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherPKG_idx` (`teacher`),
  KEY `form_learnPKG_idx` (`form_learn`),
  KEY `spec_idx` (`specialnost`),
  CONSTRAINT `form_learnPKG` FOREIGN KEY (`form_learn`) REFERENCES `form_learn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spec` FOREIGN KEY (`specialnost`) REFERENCES `specialnost` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherPKG` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruppa`
--

LOCK TABLES `gruppa` WRITE;
/*!40000 ALTER TABLE `gruppa` DISABLE KEYS */;
INSERT INTO `gruppa` VALUES (1,'ИПС-1','4',1,2018,2,'2021-03-24',1),(2,'РИПК-8','2',1,2002,3,'2016-01-01',2);
/*!40000 ALTER TABLE `gruppa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_cabinet`
--

DROP TABLE IF EXISTS `inv_cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_cabinet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `number_cab` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_idx` (`teacher`),
  CONSTRAINT `parent` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_cabinet`
--

LOCK TABLES `inv_cabinet` WRITE;
/*!40000 ALTER TABLE `inv_cabinet` DISABLE KEYS */;
INSERT INTO `inv_cabinet` VALUES (1,'склад химикатов',1,'30б'),(2,'Препараторская',3,'30а');
/*!40000 ALTER TABLE `inv_cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_predmet`
--

DROP TABLE IF EXISTS `inv_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_predmet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_vipuska` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `kolvo` bigint DEFAULT NULL,
  `cabinet` int DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cabinet_idx` (`cabinet`),
  CONSTRAINT `cabinet` FOREIGN KEY (`cabinet`) REFERENCES `inv_cabinet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_predmet`
--

LOCK TABLES `inv_predmet` WRITE;
/*!40000 ALTER TABLE `inv_predmet` DISABLE KEYS */;
INSERT INTO `inv_predmet` VALUES (1,'2020-03-10 00:00:00','Колба',20,1,'342432'),(2,'2020-02-11 00:00:00','Стул компьютерный',8,2,'345345'),(3,'2018-01-20 00:00:00','Халат',20,1,'534324');
/*!40000 ALTER TABLE `inv_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `load_teaches`
--

DROP TABLE IF EXISTS `load_teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `load_teaches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disciplina` int DEFAULT NULL,
  `gruppa` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `character` int DEFAULT NULL,
  `itogo` bigint DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `lesson1` bigint DEFAULT NULL,
  `groups1` int DEFAULT NULL,
  `projects1` int DEFAULT NULL,
  `proverka1` int DEFAULT NULL,
  `exam1` int DEFAULT NULL,
  `first_semestr` bigint DEFAULT NULL,
  `lesson2` bigint DEFAULT NULL,
  `groups2` int DEFAULT NULL,
  `projects2` int DEFAULT NULL,
  `proverka2` int DEFAULT NULL,
  `exam2` int DEFAULT NULL,
  `second_semestr` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disp` (`disciplina`) /*!80000 INVISIBLE */,
  KEY `groupIND` (`gruppa`) /*!80000 INVISIBLE */,
  KEY `typeIND` (`type`) /*!80000 INVISIBLE */,
  KEY `characterIND` (`character`),
  KEY `teacherFRG_idx` (`teacher`),
  CONSTRAINT `characterFRG` FOREIGN KEY (`character`) REFERENCES `character_load` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dispFRG` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `groupFRG` FOREIGN KEY (`gruppa`) REFERENCES `gruppa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherFRG` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `typeFRG` FOREIGN KEY (`type`) REFERENCES `type_load` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `load_teaches`
--

LOCK TABLES `load_teaches` WRITE;
/*!40000 ALTER TABLE `load_teaches` DISABLE KEYS */;
INSERT INTO `load_teaches` VALUES (1,1,1,2,1,162,1,30,2,12,23,12,77,32,2,13,25,15,85),(5,8,1,1,2,23,3,NULL,NULL,NULL,NULL,0,12,NULL,NULL,NULL,NULL,NULL,13),(6,1,1,1,2,1322,3,NULL,NULL,NULL,NULL,0,123,NULL,NULL,NULL,NULL,NULL,234),(7,8,1,2,1,213,3,NULL,NULL,NULL,NULL,0,213,NULL,NULL,NULL,NULL,NULL,213),(8,3,1,1,1,25,1,NULL,NULL,NULL,NULL,0,12,NULL,NULL,NULL,NULL,NULL,13),(11,8,2,1,2,284,1,23,213,123,23,23,192,23,23,23,23,23,92),(12,3,1,1,1,140,3,30,2,12,13,15,70,40,2,12,14,11,70),(13,14,2,1,1,136,1,20,2,16,16,11,63,30,2,15,16,12,73),(14,11,1,1,2,3681,3,3443,23,23,23,23,3512,34,54,45,45,45,169),(15,1,1,1,1,180,1,3,43,34,34,34,105,34,33,4,34,3,75);
/*!40000 ALTER TABLE `load_teaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posechaemost`
--

DROP TABLE IF EXISTS `posechaemost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posechaemost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` int NOT NULL,
  `year` int NOT NULL,
  `student` int NOT NULL,
  `P1` enum('н','у','') DEFAULT '',
  `P2` enum('н','у','') DEFAULT '',
  `P3` enum('н','у','') DEFAULT '',
  `P4` enum('н','у','') DEFAULT '',
  `P5` enum('н','у','') DEFAULT '',
  `P6` enum('н','у','') DEFAULT '',
  `P7` enum('н','у','') DEFAULT '',
  `P8` enum('н','у','') DEFAULT '',
  `P9` enum('н','у','') DEFAULT '',
  `P10` enum('н','у','') DEFAULT '',
  `P11` enum('н','у','') DEFAULT '',
  `P12` enum('н','у','') DEFAULT '',
  `P13` enum('н','у','') DEFAULT '',
  `P14` enum('н','у','') DEFAULT '',
  `P15` enum('н','у','') DEFAULT '',
  `P16` enum('н','у','') DEFAULT '',
  `P17` enum('н','у','') DEFAULT '',
  `P18` enum('н','у','') DEFAULT '',
  `P19` enum('н','у','') DEFAULT '',
  `P20` enum('н','у','') DEFAULT '',
  `P21` enum('н','у','') DEFAULT '',
  `P22` enum('н','у','') DEFAULT '',
  `P23` enum('н','у','') DEFAULT '',
  `P24` enum('н','у','') DEFAULT '',
  `P25` enum('н','у','') DEFAULT '',
  `P26` enum('н','у','') DEFAULT '',
  `P27` enum('н','у','') DEFAULT '',
  `P28` enum('н','у','') DEFAULT '',
  `P29` enum('н','у','') DEFAULT '',
  `P30` enum('н','у','') DEFAULT '',
  `P31` enum('н','у','') DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `studentFK_idx` (`student`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posechaemost`
--

LOCK TABLES `posechaemost` WRITE;
/*!40000 ALTER TABLE `posechaemost` DISABLE KEYS */;
INSERT INTO `posechaemost` VALUES (8,12,2020,1,'н','н','у','у','','','','н','н','н','','','у','у','н','н','н','н','','','','','','у','н','у','у','у','','',''),(9,12,2020,3,'у','','','','','у','','','','','','','н','н','н','н','н','','','','','','','','','','','','','',''),(12,12,2020,4,'у','','н','н','у','у','','у','','','','','у','у','у','н','н','н','','','','','','','','','','','','',''),(13,7,2020,1,'у','','н','у','у','у','у','н','н','н','','','','','','н','','','','','','','','','','','','','','',''),(14,7,2009,2,'','','н','н','н','н','н','н','н','','','','','','','','','','','','','','','н','','','','','','','');
/*!40000 ALTER TABLE `posechaemost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialnost`
--

DROP TABLE IF EXISTS `specialnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialnost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialnost`
--

LOCK TABLES `specialnost` WRITE;
/*!40000 ALTER TABLE `specialnost` DISABLE KEYS */;
INSERT INTO `specialnost` VALUES (1,'13.23.23','Программирование в компьютерных сетях'),(2,'13.34.09','Бухгалтер');
/*!40000 ALTER TABLE `specialnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `bithdate` date DEFAULT NULL,
  `pole` enum('Мужской','Женский') DEFAULT NULL,
  `gruppa` int DEFAULT NULL,
  `Counter` varchar(100) DEFAULT NULL,
  `Oblast` varchar(100) DEFAULT NULL,
  `Raion` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `NumberHome` varchar(50) DEFAULT NULL,
  `NumberKvartira` bigint DEFAULT NULL,
  `Yandex` bigint DEFAULT NULL,
  `number_student` bigint DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `PasSeriya` bigint DEFAULT NULL,
  `PasNumber` bigint DEFAULT NULL,
  `CodePodrazd` bigint DEFAULT NULL,
  `PasDate` date DEFAULT NULL,
  `PasWho` varchar(200) DEFAULT NULL,
  `Polis` bigint DEFAULT NULL,
  `mother` varchar(100) DEFAULT NULL,
  `father` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gruppaIND` (`gruppa`),
  CONSTRAINT `gruppaFRG` FOREIGN KEY (`gruppa`) REFERENCES `gruppa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Жаулыбаев','Тамерлан','Кайратович','2005-07-14','Мужской',1,'Россия','Оренбургская','Оренбургская','Оренбург','Мирная','7',5,124534,1245,86456456,5314,488711,423543,'2020-03-20','УФМ по Оренбургской обл.',5345433,'Rfef','ef'),(2,'Ропов','Андрей','Юрьевич','2000-02-25','Мужской',2,'США','Калифорния','Минктон','Минктон','Джерси','4',3,345675,2343,9037248,3456,564565,546456,'2020-01-20','USA American freedom',342433,'Djesci','Mike'),(3,'Arlert','Armin','Radim','1999-02-26','Мужской',2,'gtr','trg','trg','gr','rtg','435',45,345,453,435,345,345,45,'2021-01-28','rg',345,'345','345'),(4,'Каипова','Полина','Александровна','2000-02-02','Женский',1,'Россия','Оренбургская','Орский','Орск','советская','67',34,324567,5344,8965335623,4354,345454,234345,'2021-02-14','УФС России в Орске',34324,'Таисия','Павел'),(6,'Волков','Виктор','Сергеевич','2001-03-28','Мужской',1,'Россия','Оренбургская','Орский','Орск','Добровольского','15а',123,213432,325,89225552144,5453,157214,2144,'2020-04-20','УМВД России по городу Орск',43543,'','');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `categories` varchar(45) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` enum('администратор','обычный') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Финк','Игорь','Валерьевич','1','Igor','123','администратор'),(3,'Павлова','Людмила','Михайловна','2','Luda','123','обычный');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_load`
--

DROP TABLE IF EXISTS `type_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_load` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_load`
--

LOCK TABLES `type_load` WRITE;
/*!40000 ALTER TABLE `type_load` DISABLE KEYS */;
INSERT INTO `type_load` VALUES (1,'бюджет'),(2,'внебюджет');
/*!40000 ALTER TABLE `type_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uspevaemost`
--

DROP TABLE IF EXISTS `uspevaemost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uspevaemost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `disciplina` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `student` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disc_idx` (`disciplina`),
  KEY `teacher_idx` (`teacher`),
  KEY `student_idx` (`student`),
  CONSTRAINT `discUsp` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `studentUsp` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherUsp` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uspevaemost`
--

LOCK TABLES `uspevaemost` WRITE;
/*!40000 ALTER TABLE `uspevaemost` DISABLE KEYS */;
INSERT INTO `uspevaemost` VALUES (7,1,2021,3,3,2,4),(12,9,2021,3,3,4,1),(16,9,2021,8,1,2,1),(17,2,2022,1,3,1,4),(18,11,2020,1,1,4,3),(35,9,2020,8,1,5,1),(36,9,2020,8,1,5,4),(37,9,2020,8,1,5,6),(41,12,2021,1,1,5,1),(42,10,2021,8,1,5,1),(43,10,2021,8,1,4,4),(44,10,2021,8,1,3,6),(45,10,2021,8,1,5,3),(46,9,2021,14,1,4,2),(47,9,2021,14,1,5,3),(49,12,2020,11,3,5,1),(50,12,2020,11,3,4,4),(51,12,2020,11,3,3,6),(52,11,2020,3,3,5,2),(53,11,2020,3,3,4,3),(55,10,2021,12,3,3,2),(56,10,2021,12,3,3,3),(57,9,2020,13,3,5,1),(58,9,2020,13,3,4,4),(59,9,2020,13,3,4,6),(60,10,2021,1,1,3,1),(61,10,2021,1,1,4,4),(62,10,2021,1,1,3,6),(63,10,2021,1,1,3,1),(64,10,2021,3,1,5,1),(65,10,2021,3,1,4,4),(66,10,2021,3,1,3,6),(70,5,2021,3,1,4,2),(71,5,2021,3,1,NULL,3),(74,1,2021,14,1,5,1),(75,1,2021,14,1,4,4),(76,1,2021,14,1,3,6),(80,8,2021,1,1,4,2),(81,8,2021,1,1,5,3),(82,8,2021,12,1,5,2),(83,7,2021,8,1,3,2);
/*!40000 ALTER TABLE `uspevaemost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zanatiya`
--

DROP TABLE IF EXISTS `zanatiya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zanatiya` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `disciplina` int DEFAULT NULL,
  `gruppa` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `character` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `P1` bigint DEFAULT NULL,
  `P2` bigint DEFAULT NULL,
  `P3` bigint DEFAULT NULL,
  `P4` bigint DEFAULT NULL,
  `P5` bigint DEFAULT NULL,
  `P6` bigint DEFAULT NULL,
  `P7` bigint DEFAULT NULL,
  `P8` bigint DEFAULT NULL,
  `P9` bigint DEFAULT NULL,
  `P10` bigint DEFAULT NULL,
  `P11` bigint DEFAULT NULL,
  `P12` bigint DEFAULT NULL,
  `P13` bigint DEFAULT NULL,
  `P14` bigint DEFAULT NULL,
  `P15` bigint DEFAULT NULL,
  `P16` bigint DEFAULT NULL,
  `P17` bigint DEFAULT NULL,
  `P18` bigint DEFAULT NULL,
  `P19` bigint DEFAULT NULL,
  `P20` bigint DEFAULT NULL,
  `P21` bigint DEFAULT NULL,
  `P22` bigint DEFAULT NULL,
  `P23` bigint DEFAULT NULL,
  `P24` bigint DEFAULT NULL,
  `P25` bigint DEFAULT NULL,
  `P26` bigint DEFAULT NULL,
  `P27` bigint DEFAULT NULL,
  `P28` bigint DEFAULT NULL,
  `P29` bigint DEFAULT NULL,
  `P30` bigint DEFAULT NULL,
  `P31` bigint DEFAULT NULL,
  `itogo` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DiscFRG_idx` (`disciplina`),
  KEY `Gruppa_idx` (`gruppa`),
  KEY `TypeFRG_idx` (`type`),
  KEY `charact_idx` (`character`),
  KEY `TeacherFRG_idx` (`teacher`),
  CONSTRAINT `charact` FOREIGN KEY (`character`) REFERENCES `character_load` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `DiscFRG` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Gruppa` FOREIGN KEY (`gruppa`) REFERENCES `gruppa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacher` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `type` FOREIGN KEY (`type`) REFERENCES `type_load` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zanatiya`
--

LOCK TABLES `zanatiya` WRITE;
/*!40000 ALTER TABLE `zanatiya` DISABLE KEYS */;
INSERT INTO `zanatiya` VALUES (8,5,2007,1,1,1,2,3,0,0,0,0,0,2,2,2,2,2,23,2,1,23,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,93),(14,5,2020,1,1,2,1,1,0,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4),(23,4,2007,3,1,1,1,1,2,0,2,0,4,4,0,0,0,0,0,2,0,4,4,0,0,0,0,0,2,2,2,4,0,0,0,0,0,0,0,32),(26,10,2020,8,2,1,2,1,2,0,0,2,0,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,2,2,2,2,0,0,0,0,2,2,0,20),(29,8,2021,8,1,1,2,3,2,2,2,2,2,2,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,30),(32,10,2020,8,2,1,2,1,2,0,2,2,0,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,2,2,2,2,0,0,0,0,2,2,0,22),(35,10,2020,14,2,1,1,1,2,0,2,2,2,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0,20),(36,4,2005,3,1,1,1,1,0,0,0,2,2,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,2,2,2,2,0,0,0,0,0,0,0,16),(37,5,2020,1,1,2,1,1,0,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4);
/*!40000 ALTER TABLE `zanatiya` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-09 19:35:34
