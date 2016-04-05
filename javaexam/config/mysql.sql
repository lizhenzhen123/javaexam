-- MySQL dump 10.13  Distrib 6.0.11-alpha, for Win64 (unknown)
--
-- Host: localhost    Database: javaexam
-- ------------------------------------------------------
-- Server version	6.0.11-alpha-community

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blank`
--

DROP TABLE IF EXISTS `blank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `after` varchar(50) NOT NULL COMMENT '空前',
  `before` varchar(50) NOT NULL COMMENT '空后',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `difficult` int(11) NOT NULL COMMENT '难度',
  `score` int(11) NOT NULL COMMENT '分值',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `createtime` varchar(50) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_blank_chapter` (`chapterId`),
  KEY `FK_blank_teacher` (`teacherId`),
  CONSTRAINT `FK_blank_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK_blank_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='填空';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blank`
--

LOCK TABLES `blank` WRITE;
/*!40000 ALTER TABLE `blank` DISABLE KEYS */;
/*!40000 ALTER TABLE `blank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` int(11) NOT NULL COMMENT '标题',
  `content` int(11) NOT NULL COMMENT '内容',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `section` varchar(50) NOT NULL COMMENT '小结',
  `teacherId` int(11) DEFAULT NULL COMMENT '教师Id',
  PRIMARY KEY (`id`),
  KEY `FK_chapter_teacher` (`teacherId`),
  CONSTRAINT `FK_chapter_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='章节';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '考试时长',
  `totalscore` int(11) NOT NULL DEFAULT '0' COMMENT '满分分值',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examdetail`
--

DROP TABLE IF EXISTS `examdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `examId` int(11) NOT NULL COMMENT '试卷编号',
  `questionType` int(1) NOT NULL COMMENT '试题类型，1、单选；2、多选，3、判断，4、填空，5、简答',
  `questionId` int(11) NOT NULL COMMENT '试题ID',
  `answer` varchar(500) DEFAULT NULL COMMENT '答题记录',
  PRIMARY KEY (`id`),
  KEY `FK_examdetail_exam` (`examId`),
  CONSTRAINT `FK_examdetail_exam` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examdetail`
--

LOCK TABLES `examdetail` WRITE;
/*!40000 ALTER TABLE `examdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `examdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examscore`
--

DROP TABLE IF EXISTS `examscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `studentId` int(11) NOT NULL COMMENT '学生ID',
  `examId` int(11) NOT NULL COMMENT '试卷编号',
  `objectScore` int(11) NOT NULL DEFAULT '-1' COMMENT '客观题成绩',
  `subjectScore` int(11) NOT NULL DEFAULT '-1' COMMENT '主观题成绩',
  PRIMARY KEY (`id`),
  KEY `FK_examscore_student` (`studentId`),
  KEY `FK_examscore_exam` (`examId`),
  CONSTRAINT `FK_examscore_student` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_examscore_exam` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examscore`
--

LOCK TABLES `examscore` WRITE;
/*!40000 ALTER TABLE `examscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `examscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `express`
--

DROP TABLE IF EXISTS `express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `express` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `answer` text NOT NULL COMMENT '答案',
  `difficult` int(11) NOT NULL COMMENT '难度',
  `score` int(11) NOT NULL COMMENT '分值',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  `teacherId` int(11) NOT NULL COMMENT '教师ID',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_express_chapter` (`chapterId`),
  KEY `FK_express_teacher` (`teacherId`),
  CONSTRAINT `FK_express_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK_express_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `express`
--

LOCK TABLES `express` WRITE;
/*!40000 ALTER TABLE `express` DISABLE KEYS */;
/*!40000 ALTER TABLE `express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge`
--

DROP TABLE IF EXISTS `judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `answer` tinyint(4) NOT NULL COMMENT '答案',
  `difficult` int(11) NOT NULL COMMENT '难度',
  `score` int(11) NOT NULL COMMENT '分值',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_judge_chapter` (`chapterId`),
  KEY `FK_judge_teacher` (`teacherId`),
  CONSTRAINT `FK_judge_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`),
  CONSTRAINT `FK_judge_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='判断';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge`
--

LOCK TABLES `judge` WRITE;
/*!40000 ALTER TABLE `judge` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mulchoice`
--

DROP TABLE IF EXISTS `mulchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mulchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `A` varchar(50) NOT NULL COMMENT '选项1',
  `B` varchar(50) NOT NULL COMMENT '选项2',
  `C` varchar(50) NOT NULL COMMENT '选项3',
  `D` varchar(50) NOT NULL COMMENT '选项4',
  `E` varchar(50) DEFAULT NULL COMMENT '选项5',
  `F` varchar(50) DEFAULT NULL COMMENT '选项6',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `difficult` int(11) NOT NULL COMMENT '难度',
  `score` int(11) NOT NULL COMMENT '分值',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_mulchoice_chapter` (`chapterId`),
  KEY `FK_mulchoice_teacher` (`teacherId`),
  CONSTRAINT `FK_mulchoice_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`),
  CONSTRAINT `FK_mulchoice_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多选';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mulchoice`
--

LOCK TABLES `mulchoice` WRITE;
/*!40000 ALTER TABLE `mulchoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mulchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onechoice`
--

DROP TABLE IF EXISTS `onechoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onechoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `A` varchar(50) NOT NULL COMMENT '选项1',
  `B` varchar(50) NOT NULL COMMENT '选项2',
  `C` varchar(50) NOT NULL COMMENT '选项3',
  `D` varchar(50) DEFAULT NULL COMMENT '选项4',
  `E` varchar(50) DEFAULT NULL COMMENT '选项5',
  `F` varchar(50) DEFAULT NULL COMMENT '选项6',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `difficult` int(11) NOT NULL COMMENT '难度系数',
  `score` int(11) NOT NULL COMMENT '分值',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FK_onechoice_chapter` (`chapterId`),
  KEY `FK_onechoice_teacher` (`teacherId`),
  CONSTRAINT `FK_onechoice_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`),
  CONSTRAINT `FK_onechoice_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单选表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onechoice`
--

LOCK TABLES `onechoice` WRITE;
/*!40000 ALTER TABLE `onechoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `onechoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiss`
--

DROP TABLE IF EXISTS `permiss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiss` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `teacherId` int(11) NOT NULL COMMENT '教师Id',
  `chapterId` int(11) NOT NULL COMMENT '章节Id',
  PRIMARY KEY (`id`),
  KEY `FK_permiss_teacher` (`teacherId`),
  KEY `FK_permiss_chapter` (`chapterId`),
  CONSTRAINT `FK_permiss_teacher` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK_permiss_chapter` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiss`
--

LOCK TABLES `permiss` WRITE;
/*!40000 ALTER TABLE `permiss` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-02  4:03:23
