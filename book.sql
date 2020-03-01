-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 图书',7,'add_book'),(26,'Can change 图书',7,'change_book'),(27,'Can delete 图书',7,'delete_book'),(28,'Can view 图书',7,'view_book'),(29,'Can add 用户',8,'add_user'),(30,'Can change 用户',8,'change_user'),(31,'Can delete 用户',8,'delete_user'),(32,'Can view 用户',8,'view_user'),(33,'Can add 评分',9,'add_score'),(34,'Can change 评分',9,'change_score'),(35,'Can delete 评分',9,'delete_score'),(36,'Can view 评分',9,'view_score'),(37,'Can add 评分信息',10,'add_rate'),(38,'Can change 评分信息',10,'change_rate'),(39,'Can delete 评分信息',10,'delete_rate'),(40,'Can view 评分信息',10,'view_rate'),(41,'Can add 评论',11,'add_commen'),(42,'Can change 评论',11,'change_commen'),(43,'Can delete 评论',11,'delete_commen'),(44,'Can view 评论',11,'view_commen'),(45,'Can add 活动',12,'add_action'),(46,'Can change 活动',12,'change_action'),(47,'Can delete 活动',12,'delete_action'),(48,'Can view 活动',12,'view_action'),(49,'Can add 留言',13,'add_liuyan'),(50,'Can change 留言',13,'change_liuyan'),(51,'Can delete 留言',13,'delete_liuyan'),(52,'Can view 留言',13,'view_liuyan'),(53,'Can add action comment',14,'add_actioncommen'),(54,'Can change action comment',14,'change_actioncommen'),(55,'Can delete action comment',14,'delete_actioncommen'),(56,'Can view action comment',14,'view_actioncommen');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$YBMzXLaragKy$B0VY+a4d/SLRRnmiIJFLR66MbwY9h8T+wGj2G8k4jLg=','2019-05-06 10:16:17.383178',1,'root','','','',1,1,'2019-04-29 12:10:11.903212');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-29 12:11:29.368634','1','fangge',1,'[{\"added\": {}}]',8,1),(2,'2019-04-29 13:30:46.743740','1','Action object (1)',1,'[{\"added\": {}}]',12,1),(3,'2019-05-01 16:09:52.641726','2','Action object (2)',1,'[{\"added\": {}}]',12,1),(4,'2019-05-04 11:38:09.831168','2','Action object (2)',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',12,1),(5,'2019-05-04 13:19:09.349203','2','Action object (2)',2,'[{\"changed\": {\"fields\": [\"two\", \"three\"]}}]',12,1),(6,'2019-05-04 13:28:56.541490','2','Action object (2)',2,'[{\"changed\": {\"fields\": [\"three\"]}}]',12,1),(7,'2019-05-05 05:45:27.526900','2','Action object (2)',2,'[{\"changed\": {\"fields\": [\"one\", \"two\"]}}]',12,1),(8,'2019-05-05 05:46:21.194870','1','Action object (1)',2,'[{\"changed\": {\"fields\": [\"new\", \"two\", \"three\"]}}]',12,1),(9,'2019-05-06 10:18:06.858266','201','北京故事',1,'[{\"added\": {}}]',7,1),(10,'2019-05-06 10:39:10.385163','200','挪威的森林',2,'[{\"changed\": {\"fields\": [\"author\", \"intro\", \"nb\", \"md\"]}}]',7,1),(11,'2019-05-06 10:39:18.102318','199','情书',2,'[{\"changed\": {\"fields\": [\"author\", \"intro\", \"nb\", \"md\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(12,'user','action'),(14,'user','action_comment'),(7,'user','book'),(11,'user','comment'),(13,'user','message_boards'),(10,'user','rate'),(9,'user','score'),(8,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-28 02:13:05.424690'),(2,'auth','0001_initial','2019-04-28 02:13:06.961797'),(3,'admin','0001_initial','2019-04-28 02:13:12.408782'),(4,'admin','0002_logentry_remove_auto_add','2019-04-28 02:13:13.651383'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-28 02:13:13.696906'),(6,'contenttypes','0002_remove_content_type_name','2019-04-28 02:13:14.555510'),(7,'auth','0002_alter_permission_name_max_length','2019-04-28 02:13:15.176268'),(8,'auth','0003_alter_user_email_max_length','2019-04-28 02:13:15.773525'),(9,'auth','0004_alter_user_username_opts','2019-04-28 02:13:15.836719'),(10,'auth','0005_alter_user_last_login_null','2019-04-28 02:13:16.311866'),(11,'auth','0006_require_contenttypes_0002','2019-04-28 02:13:16.345180'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-28 02:13:16.384478'),(13,'auth','0008_alter_user_username_max_length','2019-04-28 02:13:16.983388'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-28 02:13:17.530391'),(15,'auth','0010_alter_group_name_max_length','2019-04-28 02:13:18.152552'),(16,'auth','0011_update_proxy_permissions','2019-04-28 02:13:18.203090'),(17,'sessions','0001_initial','2019-04-28 02:13:18.470368'),(18,'user','0001_initial','2019-04-28 02:13:20.757899'),(19,'user','0002_auto_20190421_2247','2019-04-28 02:13:25.876996'),(20,'user','0003_auto_20190428_1012','2019-04-28 02:13:30.744683'),(21,'user','0004_action_new','2019-05-01 16:04:22.867621'),(22,'user','0005_auto_20190502_0030','2019-05-01 16:30:09.161664'),(23,'user','0006_auto_20190504_2052','2019-05-04 12:52:50.082521'),(24,'user','0007_auto_20190504_2118','2019-05-04 13:18:35.965803'),(25,'user','0008_auto_20190506_1817','2019-05-06 10:17:15.230033'),(26,'user','0009_auto_20190506_1820','2019-05-06 10:20:18.993063'),(27,'user','0010_auto_20190507_1214','2019-05-07 04:14:11.433118');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6894y9ibb4fgq11ydbet5iznz55sdqaq','NTZkMWEyNzlhNGNiNTdhNGFlNzE5NjNlOGE2NDE2NTEwYTE4OWFjYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGM0MTViY2QxZjA2MzI3MzFlZTkxOWFiYWY2MzRmZjVmNGU3YTI0IiwibG9naW5faW4iOnRydWUsInVzZXJfaWQiOjEsIm5hbWUiOiJmYW5nZ2UifQ==','2019-05-19 06:06:59.067825'),('7np5mi1xjf0p6xdsxngvrsf4dvnd2rf4','YjdlMDYyNTRmMDgzNjQ3NTA3ZjMzNGUzNDM5ZWFhZWIxODQ3NDY2Mjp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxLCJuYW1lIjoiZmFuZ2dlIn0=','2019-05-20 13:28:49.362028'),('fbirp1mqwndvbd52pzd2dzba26fb6o4t','NTZkMWEyNzlhNGNiNTdhNGFlNzE5NjNlOGE2NDE2NTEwYTE4OWFjYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGM0MTViY2QxZjA2MzI3MzFlZTkxOWFiYWY2MzRmZjVmNGU3YTI0IiwibG9naW5faW4iOnRydWUsInVzZXJfaWQiOjEsIm5hbWUiOiJmYW5nZ2UifQ==','2019-05-13 12:11:42.549957'),('kha7fny18uxyz7golu1byij73rjj6phg','OGVkZjU5MDhiN2M1ZTI5ODk4MzFmZDJhMDI3M2VkMGNiOTQ3YmI5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGM0MTViY2QxZjA2MzI3MzFlZTkxOWFiYWY2MzRmZjVmNGU3YTI0In0=','2019-05-20 10:16:17.416532'),('mgspkx5sc6hrru4r4h6xx00anpblyvja','YzU4ZmNhN2JiYWNjYTE2MGM0OTljODk2Yjk5NWVjMzliNzk4ZTIxZDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxLCJuYW1lIjoiZmFuZ2dlIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkYzQxNWJjZDFmMDYzMjczMWVlOTE5YWJhZjYzNGZmNWY0ZTdhMjQifQ==','2019-05-13 13:29:43.853402');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_action`
--

DROP TABLE IF EXISTS `user_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(64) NOT NULL,
  `one` varchar(100) NOT NULL,
  `three` varchar(100) DEFAULT NULL,
  `two` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_action`
--

LOCK TABLES `user_action` WRITE;
/*!40000 ALTER TABLE `user_action` DISABLE KEYS */;
INSERT INTO `user_action` VALUES (1,1,'抓兔子',1,'大灰狼','2019-05-04 13:18:34.394694+00:00','media/s1070959.jpg','media/s1068707_dTASSw5.jpg'),(2,1000,'大河向东流',0,'关于读书日的活动','media/s1005875_pGe3jmZ.jpg','media/s1005875.jpg','media/s1005875_4nm4Cb6.jpg');
/*!40000 ALTER TABLE `user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_action_new`
--

DROP TABLE IF EXISTS `user_action_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_action_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_action_new_action_id_user_id_61a5d693_uniq` (`action_id`,`user_id`),
  KEY `user_action_new_user_id_225b37b4_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_action_new_action_id_d1de4bd9_fk_user_action_id` FOREIGN KEY (`action_id`) REFERENCES `user_action` (`id`),
  CONSTRAINT `user_action_new_user_id_225b37b4_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_action_new`
--

LOCK TABLES `user_action_new` WRITE;
/*!40000 ALTER TABLE `user_action_new` DISABLE KEYS */;
INSERT INTO `user_action_new` VALUES (2,1,1),(1,2,1);
/*!40000 ALTER TABLE `user_action_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_action_user`
--

DROP TABLE IF EXISTS `user_action_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_action_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_action_user_action_id_user_id_efadc5b2_uniq` (`action_id`,`user_id`),
  KEY `user_action_user_user_id_32ef60a6_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_action_user_action_id_09849044_fk_user_action_id` FOREIGN KEY (`action_id`) REFERENCES `user_action` (`id`),
  CONSTRAINT `user_action_user_user_id_32ef60a6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_action_user`
--

LOCK TABLES `user_action_user` WRITE;
/*!40000 ALTER TABLE `user_action_user` DISABLE KEYS */;
INSERT INTO `user_action_user` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `user_action_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_actioncommen`
--

DROP TABLE IF EXISTS `user_actioncommen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_actioncommen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commen` varchar(64) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `action_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_actioncommen_action_id_9ef8e129_fk_user_action_id` (`action_id`),
  KEY `user_actioncommen_user_id_683d3220_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_actioncommen_action_id_9ef8e129_fk_user_action_id` FOREIGN KEY (`action_id`) REFERENCES `user_action` (`id`),
  CONSTRAINT `user_actioncommen_user_id_683d3220_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_actioncommen`
--

LOCK TABLES `user_actioncommen` WRITE;
/*!40000 ALTER TABLE `user_actioncommen` DISABLE KEYS */;
INSERT INTO `user_actioncommen` VALUES (1,'非常榜\r\n','2019-05-05 06:07:11.211159',2,1),(2,'加油','2019-05-05 06:07:22.911150',2,1),(3,'期待万分','2019-05-05 06:27:00.079265',1,1);
/*!40000 ALTER TABLE `user_actioncommen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_book`
--

DROP TABLE IF EXISTS `user_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sump` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `intro` longtext NOT NULL,
  `pic` varchar(64) NOT NULL,
  `tags` varchar(64) NOT NULL,
  `nb` tinyint(1) DEFAULT NULL,
  `md` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_book`
--

LOCK TABLES `user_book` WRITE;
/*!40000 ALTER TABLE `user_book` DISABLE KEYS */;
INSERT INTO `user_book` VALUES (1,0,'﻿﻿﻿﻿﻿狼图腾','姜戎','    《狼图腾》由几十个有机连贯的“狼故事”组成，情节紧张激烈而又新奇神秘。读者可从书中每一篇章、每个细节中攫取强烈的阅读快感，令人欲罢不能。那些精灵一般的蒙古草原狼随时从书中呼啸而出：狼的每一次侦察、布阵、伏击、奇袭的高超战术;狼对气象、地形的巧妙利用；狼的视死如归和不屈不挠；狼族中的友爱亲情；狼与草原万物的关系；倔强可爱的小狼在失去自由后艰难的成长过程——无不使我们联想到人类，进而思考人类历','s1466042.jpg','狼图腾|小说|草原|狼|姜戎|中国文学|文化|图腾|',NULL,NULL),(2,0,'罗生门','[日]\n            芥川龙之介','    芥川龙之介(1892—1927)，日本新思潮派代表作家，创作上既有浪漫主义特点，又具有现实主义倾向。以其名字命名的“芥川奖”成为日本文坛的重要奖项之一。作品以短篇小说为主，多为历史题材，情节新奇甚至诡异，以冷峻的文笔和简洁有力的语言让读者关注到社会丑恶现象，这使得他的小说既具有高度的艺术性，又成为当时社会的缩影。《罗生门》是其代表作。本书收录芥川的中短篇小说共十三篇。《罗生门》以风雨不透的','s3435158.jpg','芥川龙之介|日本文学|日本|小说|罗生门|短篇小说|外国文学|短篇|',NULL,NULL),(3,0,'动物凶猛','王朔','    他们逃课、泡妞、打群架，他们由于“不必学习那些后来注定要忘掉的无用的知识”而使自身的动物本能获得了空前的解放； 他们深知自己的未来已被框定于固定的范畴之内，所以他们一点也不担心自己的前程。“一切都无须争取，我只要等待，十八岁时自然会轮到我。”因此他们在现实生活中就只剩下随处发泄的精力、四处寻找刺激的欲望、自以为是的狂傲、随波逐流漂泊不定的心灵。在“我”的世界里，高氏兄弟是山大王、汪若海是贰','s9853099.jpg','王朔|小说|动物凶猛|青春|中国文学|阳光灿烂的日子|当代文学|中国|',NULL,NULL),(4,0,'简爱（英文全本）','[英]\n            夏洛蒂·勃朗特','    《简爱》是英国女作家夏洛蒂·勃朗特的代表作品。女主人公简爱是一个追赶求平等与自主的知识女性形象，小说以其感人的对于一位“灰姑娘式”人物奋斗史的刻划取胜，《简爱》也是女性文学的代表作品。','s5924326.jpg','简爱|外国文学|经典|爱情|小说|名著|英国|外国名著|',NULL,NULL),(5,0,'恶童日记','[匈牙利]\n            雅歌塔·克里斯多夫','    一座被外国军队占领的城市，由于粮食短缺，人民生活艰难困苦，一位年轻妇女只好带着双胞胎儿子们投靠住在乡间的母亲。这位“外婆”不仅不识字、骯脏、吝啬、凶恶，甚至是一名凶手。两兄弟在艰困的环境中成长，为了让自己变得坚强，两人每日以互相打骂对方、绝食等各种方式锻炼生存本领。他们将每天发生的事情仔细记载在一本大笔记本中。随着日记一页页被翻开，一场冷酷的梦魇式寓言也逐步呈现。','s3526073.jpg','小说|匈牙利|恶童三部曲|雅歌塔-克里斯多夫|外国文学|恶童日记|匈牙利文学|外国小说|',NULL,NULL),(6,0,'东霓','笛安','    《东霓》和《西决》一样，还是在讲发生在那个永远的龙城的，郑家人的故事。但是不同于西决的隐忍，东霓是个活色声香的女人。这本《西决》的姐妹篇，却完全转换了主人公以及第一人称叙述的视角，呈现出来一个东霓眼中完全不同的郑家，完全不同的世界。东霓是一个经历坎坷、自私势利，却又坚韧勇敢、情深似海的女人。残酷的生活教会她精明和算计，但是在真正紧要的转折点上，她却依然把自己交付给生命深处燃烧着的冲动和本能','s4397380.jpg','笛安|小说|东霓|青春文学|青春|柯艾|中国文学|中国|',NULL,NULL),(7,0,'双城记','[英]\n            查尔斯·狄更斯','    1775年12月的一个月夜，寓居巴黎的年轻医生梅尼特散步时，突然被厄弗里蒙地侯爵兄弟强迫出诊。在侯爵府第中，他目睹一个发狂的绝色农妇和一个身受剑伤的少年饮恨而死的惨状，并获悉侯爵兄弟为了片刻淫乐杀害他们全家的内情。他拒绝侯爵兄弟的重金贿赂，写信向朝廷告发。不料控告信落到 被告人手中，医生被关进巴士底狱，从此与世隔绝，杳无音讯。两年后，妻子心碎而死。幼小的孤女路茜被好友劳雷接到伦敦，在善良的','s1298847.jpg','狄更斯|外国文学|双城记|小说|英国|名著|经典|英国文学|',NULL,NULL),(8,0,'放学后','[日]\n            东野圭吾','    东野圭吾成名作    荣获第31届江户川乱步奖    草长莺飞的青春，忽如琉璃般生生粉碎。    当美丽、纯粹、真实的事物被破坏，重视的回忆和梦想被摧毁时，恨意便开始萌发，恣意蔓延开来……    在这所清华女中，有人喜欢我，有人恨我。    星期六早晨，车站月台上，有人突然从旁撞来，我险些跌落铁轨；    星期一放学后，我游完泳进入淋浴间冲洗，差点中机关触电身亡；    星期二放学后，一盆','s4066862.jpg','东野圭吾|推理|日本|小说|東野圭吾|推理小说|日本文学|悬疑|',NULL,NULL),(9,0,'失乐园','[日]\n            渡边淳一','    本书是当代日本著名小说家渡边淳一的作品。作品讲述的是一场悲剧性的婚外恋，从一个侧面反映了都市生活和当代日本人的种种心态。作品情节生动曲折，真切感人，文字优美。本书在日本出版后曾长期雄踞畅销书排行榜榜首，改编成同名电影和电视剧上演后家喻户晓。    渡边淳一，1933年出生于日本北海道，札幌医科大学毕业并曾在整形外科专业担任讲师。1965年以《死化妆》获新潮同人杂志奖，1970年以《光与影》','s2364502.jpg','渡边淳一|日本|日本文学|失乐园|小说|情色|爱情|外国文学|',NULL,NULL),(10,0,'白夜行','[日]\n            东野圭吾','    “只希望能手牵手在太阳下散步”，这个象征故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的故事片段像纪录片一样一一还原：没有痴痴相思，没有海枯石烂，只剩下一个冰冷绝望的诡计，最后一丝温情也被完全抛弃，万千读者在一曲救赎罪恶的凄苦爱情中悲切动容……','s4610502.jpg','東野圭吾|东野圭吾|推理|日本|悬疑|小说|日本文学|推理小说|',NULL,NULL),(11,0,'边城','沈从文','    《边城》是沈从文的代表作，写于一九三三年至一九三四年初。这篇作品如沈从文的其他湘西作品，着眼于普通人、善良人的命运变迁，描摹了湘女翠翠阴差阳错的生活悲剧，诚如作者所言：“一切充满了善，然而到处是不凑巧。既然是不凑巧，因之素朴的善终难免产生悲剧。”    《边城》写出了一种如梦似幻之美，像摆渡、教子、救人、助人、送葬这些日常小事，在作者来都显得相当理想化，颇有几分“君子田”的气象。当然，矛盾','s1595557.jpg','沈从文|边城|中国文学|小说|乡土|经典|文学|现代文学|',NULL,NULL),(12,0,'百年孤独','[哥伦比亚]\n            加西亚·马尔克斯','    《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》','s6384944.jpg','百年孤独|加西亚·马尔克斯|经典|拉美文学|外国文学|小说|魔幻现实主义|文学|',NULL,NULL),(13,0,'没有色彩的多崎作和他的巡礼之年','[日]\n            村上春树','    “并不是一切都消失在了时间的长河里。那时，我们坚定地相信某种东西，拥有能坚定地相信某种东西的自我。这样的信念绝不会毫无意义地烟消云散”——十六年的彷徨迷惑，换来一场决然的巡礼之年，当最后一块拼图集齐，重回完满的正五边形，剩下最稀薄的人，重建大地。    人若真的受伤，通常会无法直视伤口，想隐 藏它忘却它，把心 门关起来。这是一个成长的故事。要成长，伤痛就得大一点，伤口就得深一点。——村上春','s27094300.jpg','村上春树|日本文学|小说|日本|文学|日本小说|外国文学|成长|',NULL,NULL),(14,0,'1Q84 BOOK 2','[日]\n            村上春树','    1Q84简体中文版官方网站：http://www.douban.com/minisite/1q84/    今年夏天，属于1Q84年。    在1984年，他们连相遇的机会都没有，只能一面思念着对方，一面孤独地远去。    在1Q84年，他们却决定拯救彼此……    “不管喜欢还是不喜欢，目前我已经置身于这‘1Q84年’。我熟悉的那个1984年已经无影无踪，今年是1Q84年。空气变了，风景','s4393610.jpg','村上春树|日本|小说|1Q84|日本文学|村上春樹|文学|外国文学|',NULL,NULL),(15,0,'半生缘','张爱玲','    他和曼桢认识，已经是多年前的事了。算起来倒已经有十四年了——真吓人一跳！马上使他连带地觉得自己已老了许多。日子过得真快，尤其对于中年以后的人，十年八年都好像是指顾间的事。可是对于年轻人，三年五载就可以是一生一世。他和曼桢从认识到分手，不过几年的工夫，这几年里面却经过这么许多事情，仿佛把生老病死一切的哀乐都经历到了。    曼桢曾经问过他，他是什么时候起开始喜欢她的。他当然回答说：“第一次看','s2838737.jpg','张爱玲|半生缘|小说|爱情|中国文学|文学|文学经典|中国|',NULL,NULL),(16,0,'飘','[美]\n            玛格丽特·米切尔','    小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环境的恶化，郝思嘉的叛逆个性越来越丰满，越鲜明，在一系列的的挫折中她改造了自我，改变了个人甚至整个家族的命运，成为时代时势造就的新女性的形象。    作品在描绘人物生活与爱情的同时，勾勒出南北双方在政治，经济，文化各个层次的异同，具有浓厚','s1078958.jpg','飘|外国文学|经典|爱情|小说|美国|外国名著|名著|',NULL,NULL),(17,0,'藏地密码1','何马','    这是一个西藏已经开放为全世界的旅游胜地却依旧守口如瓶的秘密——公元838年，吐蕃末代赞普朗达玛登位，随即宣布禁佛，开始了西藏历史上最彻底、最血腥的一段灭佛史。在那次灭佛运动中，僧侣们提前将大量经典和圣物埋藏起来，随后将其秘密转移至一个隐秘的地方，他们在那里修建了神庙，称为帕巴拉一仁博切一达赖神庙。随着时光流失，战火不断，那座隐藏着无尽佛家珍宝的神庙彻底消失于历史尘埃之中……    1938','s3099407.jpg','藏地密码|西藏|探险|小说|宗教|何马|藏獒|藏传佛教|',NULL,NULL),(18,0,'关于莉莉周的一切','[日]\n            岩井俊二','    故事发生在田园风景广袤幽静的彼端。默默忍受着同学欺负的莲见雄一，逐渐变得自闭孤僻。他只有在歌手“莉莉周”的歌声里寻求安慰，习惯于在“莉莉周”的网站BBS和别人交流。在这个虚拟世界里，他和一个叫“青猫”的ID相遇。随着倾诉的话语愈加痛楚，他们互相安慰，彼此温暖，约定在莉莉周演唱会上见面，那一晚，当莉莉周的音乐响起，在那个现实与虚幻的交叉点上，却爆发成一个残酷的青春物语……','s1928640.jpg','岩井俊二|关于莉莉周的一切|日本|小说|青春|日本文学|莉莉周|电影|',NULL,NULL),(19,0,'舞！舞！舞！','[日]\n            村上春树','    六具白骨摆列在一间亦真亦幻的死亡之屋里。“我”的老朋友“鼠”已经死于寻羊冒险。“我”好不容易找到了投缘的老同学五反田，可这位被演艺界包装得精神分裂的电影明星，却接连勒死了两名高级应召女郎，自己也驾着高级跑车“玛莎拉蒂”葬身大海。孤独的女孩“雪”和她孤傲的母亲“雨”，虽然还能在这疯狂世界上勉强生存，可“雨”的守护神笛克，却也躲不过一场莫名的车祸。度过了一段死亡陪伴的惊魂日子，“我”终于在宾馆','s1231290.jpg','村上春树|舞!舞!舞!|日本文学|小说|日本|村上春樹|外国文学|文学|',NULL,NULL),(20,0,'天使与魔鬼','[美]\n            丹·布朗','    虔诚的上帝信徒——欧洲原子核研究组织的杰出科学家列奥纳多·维特勒毕生致力于以科学的手段证明神的存在。他和其养女、神秘妩媚的科学家维特多利亚在实验室里进行高度机密的试验，成功地制造出了一种极其强大的能量——“反物质”。    在这个重大发现尚未对外公布时，列奥纳多在实验室里惨遭杀害，一颗眼珠被凶手挖走，胸口上赫然印着一个神秘的标记——“光照派”！更令人震惊的是，藏在地下的反物质不翼而飞。哈佛','s1914485.jpg','丹·布朗|悬疑|小说|宗教|推理|天使与魔鬼|美国|外国文学|',NULL,NULL),(21,0,'傲慢与偏见','[英]\n            简·奥斯汀','    《傲慢与偏见》是简·奥斯汀的代表作，是一部描写爱情与婚姻的经典小说。作品以男女主人公达西和伊丽莎白由于傲慢和偏见而产生的爱情纠葛为线索，共写了四起姻缘：伊丽莎白与达西、简与宾利、莉迪亚与威克姆、夏洛蒂与柯林斯。伊丽莎白、简和莉迪亚是贝内特家五个女儿中的三个姐妹，而夏洛蒂则是她们的邻居，也是伊丽莎白的朋友。男主人公达西与宾利是好友，且与威克姆一起长大，而柯林斯则是贝内特家的远房亲戚。    ','s4250062.jpg','傲慢与偏见|奥斯丁|外国文学|爱情|经典|小说|英国|外国名著|',NULL,NULL),(22,0,'教父','[美]\n            马里奥·普佐','    《教父》这部小说的不同凡响的艺术魅力就在于：尽管描写的全是坏蛋，但作者曲尽妙笔，竟然能让读者不痛恨个别坏蛋，而痛恨整个龌龊的社会结构。教父及其继承人——他的小儿子迈克尔本来都是坏透了的坏蛋，但是却并不显得令人痛恨，因为他们杀人是整个不合理的社会逼出来的，因为他们杀的也都是更坏的人，他们同那些在幕后“坐地分赃”的政客比较起来，在“坏”的程度上，可真是小巫见大巫了。        美国纽约五大','s2832939.jpg','教父|黑帮|小说|外国文学|马里奥·普佐|经典|美国|美国文学|',NULL,NULL),(23,0,'那些生命中温暖而美好的事情','落落','    典藏青春的爱与梦    校园女王落落经典小说集精装上阵    《那些生命中温暖而美好的事情》精装版    尽受郭敬明“如同阳光一样难能可贵”赞誉的温暖系小说领军之作，超人气青春文学作家落落中、短篇经典作品完全收录。继热销旧版之后，全新收入《有氧亲吻》、《线香花火》、《天体观测》、《樱花前线》、《沿绿光逃跑》五篇唯美的高人气故事，不留遗憾、完全珍藏青春的心动与感动！    全新的装帧设计清新','s2949524.jpg','落落|那些生命中温暖而美好的事情|小说|青春|温暖|小说集|青春文学|80后|',NULL,NULL),(24,0,'那些年，我们一起追的女孩','九把刀','    柯景腾读国中时是一个成绩暴烂而且又调皮捣蛋的男生，老师将他“托付”给班里最优秀的女生沈佳仪。只要他不认真学习，沈佳仪就会用钢笔戳他的衣服。    在沈佳仪的监督和鼓励下，柯景腾的成绩就像芝麻开花节节高，渐渐地，他也喜欢上了气质优雅的沈佳仪。但是柯景腾却不敢向心爱的女生表白，因为几乎被所有男生喜欢的沈佳仪对追求她的男生一律有一种反感，她只想好好学习，不希望别人介入自己的生活。    但是，为','s1982025.jpg','九把刀|青春|那些年我们一起追的女孩|小说|台湾|爱情|台湾小说|那些年|',NULL,NULL),(25,0,'何以笙箫默','顾漫','    一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……','s2529195.jpg','顾漫|何以笙箫默|小说|爱情|言情|青春|网络小说|网络文学|',NULL,NULL),(26,0,'红拂夜奔','王小波','    《红拂夜奔》这书题就会让读者认为是写隋末杨素家妓红拂敬慕大军事家李靖，私奔相从的风流逸事。然而，这本书它以现代人的眼光去观照历史，又以历史文化原型来建构现代小说的结构。历史的重建和复归在于人类有共同的心理品质、共同的生存状态和共同的生存困境。王小波在序言中说：“我写的是内心而不是外形，是神似而不是形似。”人类自身的进化是在不断循环、重演的历史中进行的，唯有如此，那些世代相传的古典名著才能震','s26384792.jpg','王小波|红拂夜奔|小说|中国文学|幽默|当代文学|中国|文学|',NULL,NULL),(27,0,'西游记（全二册）','吴承恩','    《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。唐僧取经是历史上一件真实的事。大约距今一千三百多年前，即唐太宗贞观元年（627），年仅25岁的青年和尚玄奘离开京城长安，只身到天竺（印度）游学。他从长安出发后，途经中亚、阿富汗、巴基斯坦，历尽艰难险阻，最后到达了印度。他在那里学习了两年多，并在一次大型佛教经学辩论会任主讲，受到了赞誉。贞观十九年（645）玄奘回到了长安，带','s1627374.jpg','古典文学|西游记|小说|古典名著|名著|中国|中国文学|经典|',NULL,NULL),(28,0,'三生三世 十里桃花','唐七公子','    前世今生系列之一。    “你若敢死，我立刻便去找折颜要药水，把你忘得干干净净”    他的身子一颤，半晌，扯出一个笑来，他说：“那样也好。”    他在这世上，留给我的最后一句话是，那样也好。    你有没有爱过一个人？你有没有恨过一个人？    三百年前，诛仙台上的她绝然转身跳下，让铜镜那边的他亲眼见她隔世永别。    这世间再没她这样一个凡尘女子了，九重天上的太子夜华，不过是她做的一','s3551687.jpg','唐七公子|言情|三生三世|小说|玄幻|十里桃花|爱情|抄袭|',NULL,NULL),(29,0,'盗墓笔记','南派三叔','    五十年前，一群长沙土夫子（盗墓贼）挖到一部战国帛书，残篇中记载了一座奇特的战国古墓的位置，但那群土夫子在地下碰上了诡异事件，几乎全部身亡。    五十年后，其中一个土夫子的孙子在先人笔记中发现了这个秘密，他纠集了一批经验丰富的盗墓高手前去寻宝。但谁也没有想到，这个古墓中竟然有着这么多诡异的事物：七星疑棺、青眼狐尸、九头蛇柏……    这神秘的墓主人到底是谁，他们到底能不能找到真正的棺椁？为','s4442295.jpg','盗墓笔记|南派三叔|盗墓|小说|悬疑|惊悚|中国|网络小说|',NULL,NULL),(30,0,'海边的卡夫卡','[日]\n            村上春树','    小说的主人公是一位自称名叫田村卡夫卡——作者始终未交代其真名——的少年。他在十五岁生日前夜独自离家出走，乘坐夜行长途巴士远赴四国。出走的原因是为了逃避父亲所作的比俄底浦斯王还要可怕的预言：尔将弑父，将与尔母、尔姐交合。卡夫卡四岁时，母亲突然失踪，带走了比卡夫卡年长四岁、其实是田村家养女的姐姐，不知何故却将亲生儿子抛弃。他从未见过母亲的照片，甚至连名字也不知道。仿佛是运命在冥冥之中引导，他偶','s1094940.jpg','村上春树|海边的卡夫卡|日本文学|小说|日本|青春|外国文学|文学|',NULL,NULL),(31,0,'许三观卖血记','余华','    《许三观卖血记》是余华1995年创作的一部长篇小说，它以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述了许三观靠着卖血渡过了人生的一个个难关，战胜了命运强加给他的惊涛骇浪，而当他老了，知道自己的血再也没有人要时，精神却崩溃了。','s1074291.jpg','余华|小说|许三观卖血记|中国文学|人生|当代|文学|中国|',NULL,NULL),(32,0,'山月不知心底事','辛夷坞','    山月清辉已远，她仅有的，也只是清晨枕边的那一缕阳光。    曾经在山月的清辉下，年幼的他们并肩坐在溪涧的边缘，叶骞泽说：〔向远，我们水远不会分开。〕喧嚣浮华的城市中，向远披荆斩棘朝梦想而去，终于嫁给了心爱的那个人，也拥有了梦寐以求的财富。然而，记忆里的山月只在她一个人的心里散放清辉，于他而言，只是遇风而碎的泡影。把心里最柔软的角落给了他，为他实现一个个愿望。他一步步进，她一步步退……当山月','s3088679.jpg','辛夷坞|山月不知心底事|小说|青春|爱情|言情|现代都市|网络小说|',NULL,NULL),(33,0,'射雕英雄传（全四册）','金庸','    《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这是中国传统小说和戏剧的特征，但不免缺乏人物内心世界的复杂性。由于人物性格单纯而情节热闹，所以《射雕》比较得到欢迎，被拍成各种语种的电影和电视剧在全球众多国家和地区热播。','s2157336.jpg','金庸|武侠|射雕英雄传|小说|武侠小说|经典|中国|中国文学|',NULL,NULL),(34,0,'匆匆那年（上下）','九夜茴','    80年代生人的张楠因大学毕业找不到好工作而留学澳洲，在那里他认识了同样留学的方茴。就在他被方茴的神秘感吸引时，却听说她竟然是同性恋。阴错阳差，他与方茴住在了同一屋檐下，并且通过其他朋友知道方茴并不是真正的同性恋者，而是曾经深受伤害，有过一段难以忘怀的经历。一次偶然的机会，在张楠的房间里，方茴给他讲述了自己的故事……    作品通过诙谐的文字，以方茴和陈寻的爱情故事为主线，描述了80后的情感','s2892553.jpg','匆匆那年|青春|小说|九夜茴|80后|青春小说|爱情|80年代的记忆|',NULL,NULL),(35,0,'动物农场','[英]\n            乔治·奥威尔','    《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。    农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一个平等的动物社会。然而，动物领袖，那些聪明的猪们最终却篡夺了革命的果实，成为比人类东家更加独裁和极权的统治者。','s2347590.jpg','乔治·奥威尔|政治寓言|小说|外国文学|英国|极权主义|政治|动物农场|',NULL,NULL),(36,0,'穆斯林的葬礼','霍达','    一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮，两个发生在不同时代、有着不同内容却又交错扭结的爱情悲剧。    这部五十余万字的长篇，以独特的视角，真挚的情感，丰厚的容量，深刻的内涵，冷峻的文笔，宏观地回顾了中国穆斯林漫长而艰难的足迹，揭示了他们在华夏文化与穆斯林文化的撞击和融合中独特的心理结构，以及在政治、宗教氛围中对人生真谛的困惑和追求，塑造了梁亦清、韩子奇、梁君壁、梁冰玉、韩新月、','s1790771.jpg','穆斯林的葬礼|小说|霍达|中国文学|宗教|爱情|穆斯林|经典|',NULL,NULL),(37,0,'鬼吹灯之精绝古城','天下霸唱','    胡八一上山下乡来到中蒙边境的岗岗营子，带上了家中仅存的一本书——《十六字风水秘术》，闲来无事将书中文字背得滚瓜烂熟。之后参军到西藏，遇上雪崩掉落一条巨大的地沟当中，胡八一利用自己懂得的墓葬秘术逃得不死。复员后，胡八一和好友胖子一起加入了一支前往新疆考古的考古队。一行人历经万险来到了塔克拉玛干沙漠中的精绝古城遗址，进入了地下“鬼洞”。洞中机关重重、陷阱不断，这神秘的鬼洞似乎在住先知的掌控之中','s2001786.jpg','鬼吹灯|盗墓|小说|天下霸唱|探险|网络小说|灵异|奇幻|',NULL,NULL),(38,0,'三体','刘慈欣','    文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……    四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁','s2768378.jpg','科幻|刘慈欣|三体|科幻小说|中国|小说|中国科幻|硬科幻|',NULL,NULL),(39,0,'麦琪的礼物','[美]\n            欧·亨利','    选收欧·亨利的小说34篇，国外当代文学类重要工具书介绍的有代表性的作品均已收入。欧·亨利是位有独特风格的杰出短篇小说家，以巧妙的构思、夸张和幽默的文笔反映了他那个时代的人和事。','s1137441.jpg','欧·亨利|外国文学|麦琪的礼物|小说|美国|经典|名著|外国名著|',NULL,NULL),(40,0,'查令十字街84号','[美]\n            海莲·汉芙','    这本被全球人深深钟爱的书，记录了纽约女作家海莲和一家伦敦旧书店的书商弗兰克之间的书缘情缘。双方二十年间始终未曾谋面，相隔万里，深厚情意却能莫逆于心。无论是平淡生活中的讨书买书论书，还是书信中所蕴藏的难以言明的情感，都给人以强烈的温暖和信任。这本书既表现了海莲对书的激情之爱，也反映了她对弗兰克的精神之爱。海莲的执著、风趣、体贴、率真，跳跃于一封封书信的字里行间，使阅读成为一种愉悦而柔软的经历','s1326174.jpg','查令十字街84号|外国文学|书信集|书信|小说|英国|美国|读书|',NULL,NULL),(41,0,'东方快车谋杀案','[英]\n            阿加莎·克里斯蒂','    午夜过后，一场大雪迫使东方快车停了下来。这辆豪华列车整年都处于满员状态。但那天早上却发现少了一名乘客。一个美国人死在了他的包厢里，他被刺了十二刀，可他包厢的门却是反锁着的。    随着紧张气氛逐渐增强，侦探赫尔克里·波洛想出了两个侦破此案的方法……','s1765799.jpg','阿加莎·克里斯蒂|推理|英国|小说|侦探|推理小说|侦探推理|东方快车谋杀案|',NULL,NULL),(42,0,'沙之书','(阿根廷)博尔赫斯','    小说集，一九七五年出版，收短篇小说十三篇，博尔赫斯写作后期的顶尖之作。面对一本页码无穷尽的“沙之书”，先开始是据为己有的幸福感，最终领悟是可怕的怪物，是一切烦恼的根源。这本书，是博尔赫斯书籍崇拜情结的体现，象征具有无限性的宇宙、世界。人竭力突破未知，最终却体验到无限而确证自我的渺小无力。“如果空间是无限的，我们就处在空间的任何一点。如果时间是无限的，我们就处在时间的任何一点。”无限性、可能','s28077180.jpg','博尔赫斯|小说|阿根廷|短篇小说|拉美文学|外国文学|阿根廷文学|文学|',NULL,NULL),(43,0,'ZOO','[日]\n            乙一','    每天早上都有一张我女朋友尸体的照片放到我的收件箱里，照片显示着女朋友的尸体正在一天天地生蛆、腐化。她是在我们去过动物园之后失踪的。所有人都认为她只是失踪了，只有我知道她被杀了。我辞了职，拿着她生前的照片四处寻找凶手的线索，一副心力憔悴的模样。然而苦心寻找的背后隐藏的却是我不愿面对的真相，是我亲手杀了她……','s2756239.jpg','乙一|日本|推理|小说|恐怖|日本文学|ZOO|短篇集|',NULL,NULL),(44,0,'第三种爱情','自由行走','    他爱上了她，在她还不知道他是谁的时候。他想给她一切，只是他需要时间。她也一样，她甚至无法抵抗他的清澈眼神。不该开始的，往往都会开始，一旦开始了，就只能在甜蜜与伤痛中沉沦。他说：不要想将来，将来让我来想。她说：我不要将来，我只要现在。真的能做到吗？    如果你是一个曾经爱过的人，如果你是个曾经迷惘过的人，如果你希望在小说里看到自己曾有过的心情，曾经历的事，或许可以读一读这部小说。','s3195338.jpg','第三种爱情|小说|爱情|言情|现代都市|自由行走andrea|网络小说|晋江|',NULL,NULL),(45,0,'岛','[英]\n            维多利亚·希斯洛普','    多年来，阿丽克西斯发觉母亲总是过分守护着自己的过去，不仅掩埋了自己的根，还把上面的泥土踩得结结实实。    阿丽克西斯决定打开母亲尘封的过去。    她来到爱琴海的布拉卡，登上一座叫斯皮纳龙格的荒凉小岛。这是一处禁地，一处令布拉卡、爱琴海，甚至整个欧洲都谈虎色变的禁地，更是母亲的禁地。    禁地打开，一个融合爱恨纠葛的凄凉故事怆然铺展，一曲令整个欧洲潸然泪下的生死悲欢徐徐打开……','s3735710.jpg','小说|英国文学|岛|外国文学|爱情|英国|希斯洛普|麻风病|',NULL,NULL),(46,0,'皮囊','蔡崇达','    一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。    作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来 表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。    书中收录有《皮囊》《母亲的','s27943411.jpg','蔡崇达|散文|随笔|散文随笔|中国文学|文学|小说|成长|',NULL,NULL),(47,0,'兄弟（上）','余华','    《兄弟》讲述了江南小镇两兄弟李光头和宋钢的人生。李光头的父亲不怎么光彩地意外身亡，而同一天李光头出生。宋钢的父亲宋凡平在众人的嘲笑声中挺身而出，帮助了李光头的母亲李兰，被后者视为恩人。几年后宋钢的母亲也亡故，李兰和宋凡平在互相帮助中相爱并结婚，虽然这场婚姻遭到了镇上人们的鄙夷和嘲弄，但两人依然相爱甚笃，而李光头和宋钢这对没有血缘关系的兄弟也十分投缘。    李兰去上海看病，而“文革”开始，','s1427312.jpg','余华|小说|兄弟|文革|中国文学|当代|中国|兄弟(上)|',NULL,NULL),(48,0,'阿Q正传','鲁迅','    《阿Q正传》讲述值此世纪末，衷心祈愿这里所议论的人物在下一世纪的中国现实生活中淡出；当然，作为光辉的典型人物，他将和哈姆雷特、唐·吉诃德等不朽的名字一样万古不朽。阿Q，是一个卑微渺小的人物，但却是一个巨大的名字。我不说：“伟大”而说“巨大”，是因为这个小人物的确称不上伟大，但这个名字的历史的和美学的涵容量却真是巨大得无比，我想不出世界任何一个文学人物能有阿Q那样巨大的概括性，把几亿人都涵盖','s1074811.jpg','鲁迅|阿Q正传|中国文学|小说|经典|现代文学|中国|文学|',NULL,NULL),(49,0,'盗墓笔记8·大结局（下）','南派三叔','    吴邪戴上了三叔的人皮面具，以三叔的身份整顿了三叔在长沙的产业，三叔手下盘口的马仔无不归顺。吴邪、潘子和小花等人兵分三路，从杭州、长沙和北京出发前往广西。 在广西巴乃的村寨中，吴邪假扮的三叔再遇裘德考的队伍，并见到了一个肩膀融化垮塌的鬼影。他们发现，这个鬼影就是三十年前张家古楼考古队的队员，名叫张起灵！    鬼影是解开这一切秘密的钥匙吗？在鬼影的推动下，他们终于深入这苍茫诡异群山中的巨大秘','s7006075.jpg','盗墓笔记|南派三叔|小说|盗墓|悬疑|中国|没看到结局呢还|中国文学|',NULL,NULL),(50,0,'第七天','余华','    “浓雾弥漫之时，我走出了出租屋，在空虚混沌的城市里孑孓而行。我要去的地方名叫殡仪馆，这是它现在的名字，它过去的名字叫火葬场。我得到一个通知，让我早晨九点之前赶到殡仪馆，我的火化时间预约在九点半。”    这是余华最新长篇小说《第七天》的开篇，给读者留下了足够大的悬念，一个走向殡仪馆、将被火化的人，在死亡之后还能留给读者什么呢？这次余华用荒诞的笔触和意象讲述了一个比《活着》更绝望、比《兄弟》','s26710519.jpg','余华|小说|第七天|中国文学|中国当代文学|中国|中国现当代文学|社会成长史，个体成长记|',NULL,NULL),(51,0,'巴别塔之犬','[美]\n            卡罗琳·帕克丝特','    “我想念我穿着白纱的妻子，是否能让她的狗告诉我，埋藏在她生命尽头的秘密……”    妻子的意外身亡，是意外还是自杀？唯一的目击者是她的爱犬“罗莉”。丈夫保罗是一位语言学家，他要找到妻子死亡的真相，于是决定教会“罗莉”说话，道出真相。美国新生代女作家卡罗琳·帕克丝特的爱情悬疑小说《巴别塔之犬》以象征语言分野、表达困境的“巴别塔”作为基调，在悬疑的背后，探讨的是关于爱情和隔膜的永恒追问。','s2609483.jpg','巴别塔之犬|小说|外国文学|卡罗琳·帕克丝特|美国|爱与隔膜与孤独|心灵|沟通|',NULL,NULL),(52,0,'牛虻','[爱尔兰]\n            艾捷尔·伏尼契','    六月里一个炎热的傍晚，所有的窗户都敞开着，大学生亚瑟·勃尔顿正在比萨神学院的图书馆里翻查一大叠讲道稿。院长蒙太尼里神甫慈爱地注视着他。亚瑟出生在意大利的一个英国富商勃尔顿家中，名义上他是勃尔顿与后妻所生，但实则是后妻与蒙太尼里的私生子。亚瑟从小在家里受异母兄嫂的歧视，又看到母亲受他们的折磨和侮辱，精神上很不愉快，却始终不知道事情的真相。亚瑟崇敬蒙太尼里神甫的渊博学识，把他当作良师慈父，以一','s1008427.jpg','外国文学|牛虻|伏尼契|小说|革命|爱尔兰|名著|经典|',NULL,NULL),(53,0,'金锁记','张爱玲','    《金锁记》写于1943年，小说描写了一个小商人家庭出身的女子曹七巧的心灵变迁历程。七巧做过残疾人的妻子，欲爱而不能爱，几乎像疯子一样在姜家过了30年。在财欲与情欲的压迫下，她的性格终于被扭曲，行为变得乖戾，不但破坏儿子的婚姻，致使儿媳被折磨而死，还拆散女儿的爱情。\"30年来她戴着黄金的枷。她用那沉重的枷角劈杀了几个人，没死的也送了半条命。\"    张爱玲在本书中在空前深刻的程度上表现了现代','s2976745.jpg','张爱玲|金锁记|小说|中国文学|爱情|经典|现代文学|中国|',NULL,NULL),(54,0,'麦田里的守望者','J·D·塞林格','    霍尔顿是出身于富裕中产阶级的十六岁少年，在第四次被开除出学校之后，不敢贸然回家，只身在美国最繁华的纽约城游荡了一天两夜，住小客店，逛夜总会，滥交女友，酗酒……他看到了资本主义社会的种种丑恶，接触了各式各样的人物，其中大部分是“假模假式的”伪君子。    霍尔顿几乎看不惯周围发生的一切，他甚至想逃离这个现实世界，到穷乡僻壤去假装一个又聋又哑的人，但要真正这样做，又是不可能的，结果他只能生活在','s2738366.jpg','麦田里的守望者|塞林格|外国文学|小说|青春|美国|经典|文学|',NULL,NULL),(55,0,'上海堡垒','江南','    12年9个月又6天。这条短信在中国移动的信号台之间穿梭，找不到它的目的地，就像是永不消逝的电波，穿行在空无一人的城市里。我想象这个沉眠在地下的城市，那条短信是个虚无缥缈的女孩，有的时候她会升上泡防御界面的顶端，隔着那层透明的东西，看着紫色的大丽花盛开，而后低头俯视空无一人的城市，夜晚到来的时候，路灯在程序控制下“刷刷刷”地都亮了，她站在路灯下，哼着我听不懂的歌。    凝结的时间，流动的语','s3510011.jpg','江南|科幻|小说|爱情|上海堡垒|伪科幻|青春|中国|',NULL,NULL),(56,0,'幻城','郭敬明','    这是一本奇特的书。一边是火族，一边是冰族，一边是火焰之城，一边是幻雪帝国。作品属于纯粹的虚构。对虚空的虚构，其实比对现实的摹写更难。相对于虚构的能力，我以为摹写的能力只是一个基本的能力，而虚构才是更高一层的能力，而且是区别文学是否进入风光境界的能力。中国文学的可检讨之处，就正在于若干年来停滞于摹写，而无法将文字引入虚构。','s1100387.jpg','郭敬明|小说|幻城|奇幻|青春|魔幻|80后|中国|',NULL,NULL),(57,0,'喜宝','[加拿大]\n            亦舒','    读书就是这样好，无论心不在焉，板着长脸，只要考试及格，就是一个及格的人。你试着拉长脸到社会去试一试。这是一个卖笑的社会。除非能够找到高贵的职业，而高贵的职业需要高贵的学历支持，高贵的学历需要金钱，始终兜回来。    富家女勖聪慧热情地邀请刚认识的剑桥高材生姜喜宝参加自己的家宴，有意制造机会以撮合她和哥哥勋聪恕。聪慧的父亲勋存姿，也向喜宝展开追求。喜宝在其父亲、儿子的双双夹击下，非常现实地选','s5813979.jpg','亦舒|喜宝|小说|爱情|香港|金钱|成长|言情|',NULL,NULL),(58,0,'水浒传（全二册）','罗贯中','    《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑，也是世界文学宝库中一颗光彩夺目的明珠。数百年来，它一直深受我国人民的喜爱，并被译为多种文字，成为我国流传最为广泛的古代长篇小说之一。        《水浒传》具体而生动地描写了以宋江为首的农民起义发生、发展直至失财的整个过程，揭露了封建社会的黑暗、腐朽和统治阶级的种种罪恶，热情歌颂了起义英雄的反抗精神和','s1147854.jpg','古典文学|水浒传|四大名著|小说|中国|古典名著|经典|名著|',NULL,NULL),(59,0,'哈利·波特与魔法石','[英]\n            J·K·罗琳','    《哈利·波特与魔法石》是“哈利·波特”系列的第一部。    一岁的哈利·波特失去父母后，神秘地出现在姨父姨妈家的门前。哈利在姨父家饱受欺凌，度过十年极其痛苦的日子。姨父和姨妈好似凶神恶煞，他们那混世魔王儿子达力——一个肥胖、娇惯、欺负人的大块头，更是经济对哈利拳脚相加。哈利的“房间”是位于楼梯口的一个又暗又小的碗橱。十年来，从来没有人为他过过生日。    但是在他十一岁生日那天，一切都发生','s1990480.jpg','哈利波特|J.K.罗琳|魔幻|小说|英国|外国文学|哈利・波特|哈利·波特|',NULL,NULL),(60,0,'原来你还在这里','辛夷坞','    苏韵锦爱上了高中同学程铮，程铮也深深爱着她。但是家庭背景不同的二人，生活上的差异要彼此分开。而韵锦在分开之后才发觉有了程铮的孩子。个性强的韵锦没有告知程铮。在几年后，韵锦事业有成发觉程铮又出现在她的生活中，她们的爱情会开花结果吗？','s3358963.jpg','辛夷坞|原来你还在这里|小说|青春|爱情|言情|网络小说|晋江|',NULL,NULL),(61,0,'你在天堂里遇见的五个人','[美]\n            米奇·阿尔博姆','    有些故事注定要从结局讲起的——其实，所有的结尾又何尝不是开端呢？ 《相约星期二》随着莫里的阖然长逝而告终。六年后，在米奇·阿尔博姆的全新力作中，纪实换成了虚构；死亡从结局演变成了开端；主角还是一位老人——不是洞明世事的教授，而是到死都对自己的一生心存惶惑的退伍老兵，游乐场维修工。    他叫爱迪，八十三岁生日那天，为了拯救在突发事故中身处险境的女孩而殒命游乐场。醒来时，爱迪已身处天堂，这才','s2689596.jpg','你在天堂里遇见的五个人|米奇·阿尔博姆|小说|心灵|外国文学|美国|成长|感动　人情味|',NULL,NULL),(62,0,'刀锋','[英]\n            威廉·萨默塞特·毛姆','    威廉·萨默塞特·毛姆（1874-1965），英国著名小说家、戏剧家。《刀锋》是他的主要作品之一。    小说写一个参加第一次世界大战的美国青年飞行员拉里·达雷尔。在军队里，拉里结识了一个爱尔兰好友：这人平时是那样一个生龙活虎般的置生死于度外的飞行员，但在一次遭遇战中，因趋救拉里而中弹牺牲。拉里因此对人生感到迷惘，弄不懂世界上为什么有恶和不幸，拉里开始了他令人匪夷所思的转变……','s2347562.jpg','毛姆|小说|英国|外国文学|英国文学|刀锋|经典|文学|',NULL,NULL),(63,0,'十一种孤独','[美]\n            理查德·耶茨','    “我根本不敢肯定这间房子有没有窗户……上帝知道，伯尼，上帝知道这儿当然在哪儿会有窗户的，一扇我们大家的窗户。”    《十一种孤独》以冷峻的笔触描写了美国二战后五六十年代普通纽约人的生活，写了十一种孤独的人生，主人公都是缺乏安全感、生活不太如意的人：曼哈顿办公楼里被炒的白领、有着杰出想象力的出租车司机、屡屡遭挫却一心想成为作家的年轻人、即将结婚十分迷茫的男女、古怪的老教师、新转学的小学生、','s4099866.jpg','理查德·耶茨|十一种孤独|小说|外国文学|美国|美国文学|孤独|文学|',NULL,NULL),(64,0,'寂寞空庭春欲晚','匪我思存','    一曲箫簧合奏，引出一段盛世情错。康熙十八年春，皇帝前往保定行围。是晚随驾的御前侍卫纳兰容若，听皇帝吹奏一曲铁簧《月出》大营远处有人以箫相和。纳兰听出吹箫之人是自己籍没八宫的表妹琳琅，情不自禁神色中略有流露。皇帝遂命裕亲王福全去寻找这名吹箫的宫女，意欲赏赐给纳兰。    不想福全认出琳琅就是皇帝倾心之女子，私下移花接木．另择他人指婚给纳兰，并将琳琅派至御前当差。待皇帝对琳琅情根深种时，方知她','s2784119.jpg','匪我思存|言情|寂寞空庭春欲晚|小说|清宫|爱情|纳兰|古代|',NULL,NULL),(65,0,'那些回不去的年少时光','桐华','    最值得珍藏的怀旧读物，写给年少自己的书，纪念我们共同的青春和成长    您还记得上世纪最后十年的青春是怎样吗？那可是我们独一无二的成长！    那些回不去的年少时光》以真挚的感情，真实的细节，讲述了一段发生在那个年代精彩扣人的青春和爱——少女罗琦琦天性桀骜，从不妥协。青春期的她游走在两种截然不同的世界里：作业、考试、小团体的校园；游戏机房、歌舞厅、小混混斗殴泡妞的社会。她看着中国第一代歌舞','s4130990.jpg','桐华|青春|那些回不去的年少时光|成长|小说|回忆|青春文学|人生如戏，戏如人生（纪实/小说）|',NULL,NULL),(66,0,'红楼梦','[清] 曹雪芹 著','    《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主思想的萌动。结构宏大、情节委婉、细节精致，人物形象栩栩如生，声口毕现，堪称中国古代小说中的经 典。    由红楼梦研究所校注、人民文学出版社出版的《红楼梦》以庚辰（1760）本《脂砚斋重评石头记》为底本，以甲戌（1754）本、已卯（17','s1070959.jpg','红楼梦|古典文学|曹雪芹|经典|古典名著|小说|中国|名著|',NULL,NULL),(67,0,'羊脂球','[法]\n            居伊·德·莫泊桑','    莫泊桑短篇小说的代表作。写普法战争时，法国的一群贵族、政客、商人、修女等高贵者，和一个叫作羊脂球的妓女，同乘一辆马车逃离普军占区，在一关卡受阻。普鲁士军官要求同羊脂球过夜，遭到羊脂球拒绝，高贵者们也深表气愤。但马车被扣留后，高贵者们竟施展各种伎俩迫使羊脂球就范，而羊脂球最终得到的却是高贵者们的轻蔑。小说反衬鲜明，悬念迭生，引人入胜，写出了法国各阶层在占领者面前的不同态度，揭露了贵族资产阶级','s1469280.jpg','莫泊桑|外国文学|羊脂球|小说|法国|名著|经典|外国名著|',NULL,NULL),(68,0,'偷书贼','[澳]\n            马克斯·苏萨克','    1939年的德国，9岁的小女孩莉赛尔和弟弟被迫送往慕尼黑远郊的寄养家庭。6岁的弟弟不幸死在了路途中。在冷清的葬礼后，莉赛尔意外得到她的第一本书《掘墓人手册》。    这将是14本给她带来无限安慰的书之一。她是个孤苦的孩子，父亲被打上了共产主义者的烙印，被纳粹带走了；母亲随后也失踪了。在弹奏手风琴的养父的帮助下，她学会了阅读。尽管生活艰苦，她却发现了一个比食物更难以抗拒的东西——书。她忍不住','s2686452.jpg','偷书贼|小说|外国文学|德国|纳粹|犹太人|关于书的书|死神|',NULL,NULL),(69,0,'明朝那些事儿（壹）','当年明月','    从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎，铲除张士诚。徐达、常遇春等不世名将乘胜逐北破北元。更有明朝最大的谜团——永乐夺位、建文失踪的靖难之役。','s1872653.jpg','历史|明朝那些事儿|当年明月|明朝|中国历史|小说|明史|朱元璋|',NULL,NULL),(70,0,'山楂树之恋','[美]\n            艾米','    小说《山楂树之恋》中的故事，发生在1975年前后那段贫穷而包含理想的时光。    静秋是个漂亮的城里姑娘，因为父亲是地主后代，家庭成份不好，文革时很受打击，静秋一直很自卑。静秋和一群学生去西村坪体验生活，编教材。她住在村长家，认识了“老三”。老三喜欢上了静秋，很喜欢，静秋怕他欺骗她，起初常常躲避。英俊又有才气的老三是军区司令员的儿子，却是极重情谊的人，甘愿为静秋做任何事，给了静秋前所未有的','s2684486.jpg','山楂树之恋|小说|爱情|文革|艾米|中国文学|有关青春|感人|',NULL,NULL),(71,1,'一个人的好天气','[日]\n            青山七惠','    《一个人的好天气》描述了一个打零工的女孩如何与年长亲人相处，同时追寻自我、独立的故事，走向自立的一名女孩在工作、生活和恋爱中的种种际遇和心情令人揪心，小说写尽了做一名自由职业者（“飞特族”）的辛酸。内容折射出当前日本的一个社会问题，即许多年轻人不愿投入全职工作而四处打工，宁愿做自由职业者，他们不想长大，不愿担负责任，无法独立，害怕走出去看看这个世界，但是又不知道这种恐惧从何而来。据日本官方','s2732804.jpg','一个人的好天气|日本文学|青山七惠|日本|小说|成长|青春|芥川龙之介奖|',NULL,NULL),(72,0,'心是孤独的猎手','[美]\n            卡森·麦卡勒斯','    《心是孤独的猎手》作者麦卡勒斯的第一部长篇小说，也是她一举成名的作品和最具震撼力的代表作，居“现代文库20世纪百佳英文小说”第17位，曾被评为百部最佳同性恋小说之一。    故事的背景类似于《伤心咖啡馆之歌》中炎热的南方小镇。小说中两个聋哑男子的同性之爱令人感动，而同性之恋又是若有若无的，时而激烈，时而沉默。主旨凸显的是麦卡勒斯式的主题：孤独是绝对的，最深切的爱也无法改变人类最终极的孤独。','s1436379.jpg','卡森·麦卡勒斯|心是孤独的猎手|小说|外国文学|美国|孤独|美国文学|文学|',NULL,NULL),(73,0,'悲观主义的花朵','廖一梅','    《悲观主义的花朵》是编剧廖一梅的长篇小说，再版恢复了早年被删节的部分。    陶然爱上一个比她大20岁的男人陈天，她以为这个男人可以成为容纳她悲观然而疯狂的爱情的容器。但是实际上，没有任何一个现实的存在可以承接得住。一开始这个陈天似乎是最佳人选，但后来逃开了。','s2999388.jpg','廖一梅|悲观主义的花朵|小说|爱情|中国文学|女性作家|中国|悲观|',NULL,NULL),(74,0,'我的前半生','[加拿大]\n            亦舒','    一个三十几岁的美丽女人子君，在家做全职家庭主妇。却被一个平凡女人夺走丈夫，一段婚姻的失败，让女主角不得不坚强，变得更美丽，有了事业，最终遇见一个更值得爱的男人……','s2720819.jpg','亦舒|我的前半生|小说|女性|爱情|香港|言情|中国文学|',NULL,NULL),(75,0,'三国演义（全二册）','罗贯中','    《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。 《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父子批改。在其成书前，“三国故事”已经历了数百年的历史发展过程。在唐代，三国故事已广为流传，连儿童都很熟悉。随着市民文艺的发展，宋代的“说话”艺人，已有专门说三国故事的，当时称为“说三分”。元代出现的《三国志平话》，实际上是从说书人使用的','s1076932.jpg','三国演义|古典文学|小说|罗贯中|古典名著|名著|中国|历史|',NULL,NULL),(76,0,'莲花','安妮宝贝（庆山）','    全书收录安妮墨脱之行所拍八张图片，皆沿途所见。    《莲花》叙述年轻女子庆昭身患疾病，滞留高原，静等死亡。中年男人善生刚刚结束追名逐利的暄腾往日，内心长久压抑的黑暗苏醒，准备去与世隔绝的墨脱，寻访旧友内河。内河是被世界遗忘的女子，命运多舛。一路上善生向庆昭讲述自己和内河的往昔，雅鲁藏布江江河谷的奇崛险阻，恰似叙述中依次展开的一代人苦痛而流离的蜕变过程。','s1513548.jpg','安妮宝贝|莲花|小说|墨脱|行走|西藏|文学|安妮|',NULL,NULL),(77,0,'了不起的盖茨比','[美]\n            弗·司各特·菲茨杰拉德','    盖茨比为了久久地抱着的一个梦而付出了很高的代价。他死后，尼克发觉是汤姆暗中挑拨威尔逊去杀死盖茨比。他感到东部鬼影幢幢，世态炎凉，便决定回中西部老家去。这是一个简单的故事，却有着极悲凉的人生况味。','s1005875.jpg','菲茨杰拉德|了不起的盖茨比|美国|小说|外国文学|经典|名著|文学|',NULL,NULL),(78,0,'追风筝的人','[美]\n            卡勒德·胡赛尼','    12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。    成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽最后一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？    故事如此残忍而又美丽','s1727290.jpg','追风筝的人|人性|阿富汗|救赎|小说|外国文学|卡勒德·胡赛尼|外国小说|',NULL,NULL),(79,0,'微微一笑很倾城','顾漫','    如果你“惨”遭抛弃后，忽然有个很强很拽很不可一世的男人向你求婚，你怎么反应？    贝微微同学的反应是：“大神……你被盗号了么＝ ＝”    这个世界也太不真实了吧！    前脚“前夫”才“移情别恋”娶了第一美女，后脚就有第一高手来求婚？还说要给一个更盛大的婚礼？名校计算机系的系花贝微微一边囧着，一边……飞快地嫁了。    如果一个被无数人仰望的传奇人物、名校顶尖牛人，第一次见面就反问你，','s10320248.jpg','顾漫|言情|小说|网游|青春|爱情|温馨|大神|',NULL,NULL),(80,0,'悟空传','今何在','    猪八戒和孙悟空虽然都神通广大，但在命运面前终究是软弱无力的小人物。顶天立地的美猴王实际上仍然是那个充满惊恐的小猴子，而决心与命运抗争的天逢若非紧急也终究不肯以猪的面目见阿月。神仙尚且如此，何况吾辈生来渺小的小人物呢？随着年纪的增长，少年时素怀的“愿乘长风破万里浪”的豪情壮志早已经烟消云散，只剩下一个行尸走肉的家伙还在苟延残喘。自己何尝不是一只因为知道自己身份而在午夜对月痛哭的猪啊！但他们最','s9026255.jpg','悟空传|今何在|小说|网络小说|网络文学|西游记|中国|文学|',NULL,NULL),(81,0,'一个陌生女人的来信','[奥地利]\n            斯蒂芬·茨威格','    这是一部短篇小说集，除《一个陌生女人的来信》，亦按时间顺序收录了《火烧火燎的秘密》、《马来狂人》等名篇，作者的创作历程一目了然。    《一个陌生女人的来信》讲述一个刻骨铭心的爱情故事，一个女子暗恋男主人公18年，直至临死才决定向他告白。','s2611329.jpg','茨威格|一个陌生女人的来信|外国文学|爱情|小说|奥地利|经典|文学|',NULL,NULL),(82,0,'岛上书店','[美]\n            加·泽文','    岛上书店是间维多利亚风格的小屋，门廊上挂着褪色的招牌，上面写着： 没有谁是一座孤岛，每本书都是一个世界 A．J．费克里，人近中年，在一座与世隔绝的小岛上，经营一家书店。 命运从未眷顾过他，爱妻去世，书店危机，就连唯一值钱的宝贝也遭窃。他的人生陷入僵局，他的内心沦为荒岛。 就在此时，一个神秘的包袱出现在书店中，意外地拯救了陷于孤独绝境中的A．J．，成为了连接他和小姨子伊斯梅、警长兰比亚斯、出','s28049685.jpg','小说|外国文学|好书，值得一读|心灵|美国文学|生活|文学|美国|',NULL,NULL),(83,0,'人间失格','太宰治','    《人间失格》是日本著名小说家太宰治最具影响力的小说作品，同时也是糸色望（注：动漫《再见！绝望先生》的主角）老师日常生活必备的读物之一。另外在日本轻小说《文学少女》第一卷中被大量提及。《人间失格》（又名《丧失为人的资格》）发表于1948年，是一部自传体的小说，纤细的自传体中透露出极致的颓废，毁灭式的绝笔之作。太宰治巧妙地将自己的人生与思想，隐藏于主角叶藏的人生遭遇，藉由叶藏的独白，窥探太宰治','s6100756.jpg','太宰治|日本文学|日本|人间失格|小说|人性|文学|外国文学|',NULL,NULL),(84,0,'当我们谈论爱情时我们在谈论什么','[美]\n            雷蒙德·卡佛','    《当我们谈论爱情时我们在谈论什么》出版于1981年，是雷蒙德•卡佛的成名之作，同时也是其最负盛名的代表作。本书由十七篇短篇小说组成，讲述了如餐馆女招待、锯木厂工人、修车工、推销员和汽车旅馆管理员等社会底层的体力劳动者的生活。这些普通人有着普通人的愿望，做着再普通不过的事情，但他们发现自己在为生存而挣扎，无法获得在常人看来并不远大的人生目标。他们的生活中充满了窘困和不如意，婚姻破裂，失业，酗','s4145144.jpg','雷蒙德·卡佛|小说|美国|外国文学|短篇|美国文学|文学|Raymond_Carver|',NULL,NULL),(85,0,'那些回不去的年少时光·终场','桐华','    故事虽落幕，青春不终场！经过孤独的小学时光，混乱的初中生涯，罗琦琦来到了高中。和所有走过那段岁月的人一样，面对高考的折磨，罗琦琦虽然不情愿，却也无法做到不在乎，学习并不好的她，性格倔强不服输的她，究竟如何才能完成完美转身？    爱情，也是挑战她的另一大命题。她和他又走到了一起，他对她似乎已经倾心，只是她们身后还有一个他。她该如何面对，又该如何选择？    青春期的友情叫人唏嘘和心碎，青春','s4296814.jpg','桐华|青春|小说|成长|那些回不去的年少时光|那些回不去的年少时光终场|回忆|青春文学|',NULL,NULL),(86,0,'大地之灯','七堇年','    雪域高原深处长大的孤儿卡桑，父母在一次朝圣的途中双双遇难；出生在北大荒的孩子简生，父母是北大荒的插队知青，在他出生之后先后被急于返城的父母遗弃，一直到十岁，才被母亲接回大城市。十九岁时简生的母亲因为受贿案件而自杀。简生将卡桑带回城市，由于父母缺席的家庭抚养，两人在整个成长过程中充满了欠缺。在成年之后的岁月依旧伴随着内心阴影，一直都艰苦地进行自我扶正与探索。最终他们用回报或者付出的方式，获得','s1994710.jpg','七堇年|大地之灯|小说|青春|西藏|行走|质朴|文学|',NULL,NULL),(87,0,'世界尽头与冷酷仙境','[日]\n            村上春树','    《世界尽头与冷酷仙境》是村上春树最重要的小说之一，与《挪威的森林》、《舞舞舞》合称为村上春树三大杰作。小说共40章，单数20章“冷酷仙境”，双数20章为“世界尽头”，这种交叉平行地展开故事情节的手法是村上春树小说的特征，而这部作品是这种特征最典型的体现。“冷酷仙境”写两大黑社会组织在争夺一个老科学家发明的控制人脑的装置，老人躲到了地底。主人公“我”是老人的实验对象，他受到黑社会的恐吓，在老','s1801057.jpg','村上春树|世界尽头与冷酷仙境|日本文学|小说|日本|村上春樹|文学|外国文学|',NULL,NULL),(88,0,'不能承受的生命之轻','[捷克]\n            米兰·昆德拉','    《不能承受的生命之轻》是米兰·昆德拉最负盛名的作品。小说描写了托马斯与特丽莎、萨丽娜之间的感情生活。但它不是一个男人和两个女人的三角性爱故事，它是一部哲理小说，小说从“永恒轮回”的讨论开始，把读者带入了对一系列问题的思考中，比如轻与重、灵与肉。    《不能承受的生命之轻》是一部意象繁复的书，其中装载了多种涵义：被政治化了的社会内涵的揭示、人性考察、个人命运在特定历史与政治语境下的呈现，以','s1091698.jpg','米兰・昆德拉|不能承受的生命之轻|外国文学|小说|哲学|捷克|文学|米兰·昆德拉|',NULL,NULL),(89,0,'洛丽塔','[美]\n            弗拉基米尔·纳博科夫','    《洛丽塔》原著问世五十年来第一部中文全译本。纳博科夫最著名最有争议的小说杰作。','s1483347.jpg','洛丽塔|弗拉基米尔·纳博科夫|外国文学|小说|lolita|美国|经典|纳博科夫|',NULL,NULL),(90,0,'华莱士人鱼','[日]\n            岩井俊二','    19世纪末的香港，相传生物学家华莱士发现了一条怀孕的雌人鱼，对其进行研究。好友之子海洲化却爱上了人鱼之女，与她缔结连理。1913年，华莱士留下一部名叫《香港人鱼录》的奇书后与世长辞，人鱼的传说失落在历史的尘埃里。一百年之后，一艘科学考察船正航行于茫茫太平洋，一条传说中的人鱼模样的东西围绕考察船久久徘徊。未久，一个叫海原密的年轻男子遭遇海难，沉入海底三个月竟然平安生还……人鱼传说缓缓铺展，一','s3233365.jpg','岩井俊二|日本|华莱士人鱼|小说|日本文学|科幻|人鱼|外国文学|',NULL,NULL),(91,0,'看上去很美','王朔','    作者王朔说这部长篇小说写的“是北京复兴路29号院的一帮孩子,时间是六一年到六六年文化大革命开始,主要地点是幼儿园、翠微小学和那个大院的操场、食堂、宿舍楼之间和楼上的一个家。主要人物有父母、阿姨、老师、一群小朋友和解放军官兵若干。没有坏人，有一个幼儿园的阿姨有一点可笑，仅此而已。”','s1244542.jpg','王朔|小说|看上去很美|中国文学|当代文学|童年|中国|文学|',NULL,NULL),(92,0,'无人生还','[英]\n            阿加莎·克里斯蒂','    十个互不相识的人，被富有的欧文先生邀请到了印地安岛上的私人别墅里。晚餐后，一个神秘的声音揭开了人们心中所各自隐藏着的可怕秘密。当天晚上，年轻的马斯顿先生离奇死去，古老的童谣就像诅咒一样笼罩着所有人，似乎有一双神秘的眼镜在时刻窥视着这场死亡游戏，到访者就像消失的印地安小瓷人一样一个又一个的走向死神……','s2962510.jpg','阿加莎·克里斯蒂|推理|英国|悬疑推理|小说|无人生还|侦探推理|外国文学|',NULL,NULL),(93,0,'呐喊','鲁迅','    《呐喊》收录作者1918年至1922年所作小说十四篇。1923年8月由北京新潮社出版，原收十五篇，列为该社《文艺丛书》之一。1924年5月第三次印刷时起，改由北京北新书局出版，列为作者所编的《乌合丛书》之一。1930年1 月第十三次印刷时，由作者抽去其中的《不周山》一篇(后改名为《补天》，收入《故事新编》)。作者生前共印行二十二版次。','s4696893.jpg','鲁迅|中国文学|呐喊|小说|经典|杂文|中国|文学|',NULL,NULL),(94,1,'哈利·波特与密室','[英]\n            J·K·罗琳','    《哈利·波特与密室》是“哈利·波特”系列的第二部。    哈利·波特在霍格沃茨魔法学校学习一年之后，暑假开始了。他在姨父姨妈家熬过痛苦的假期。正当他准备打点行装去学校时，小精灵多比前来发出警告：如果哈利返回霍格沃茨，灾难将会临头。    但哈利义无返顾地回到了霍格沃茨，新来的吉罗德·洛哈特教授装腔作势，让他作呕；游荡在女生舆洗室里的幽灵“哭泣的桃金娘”搅得他不得安宁；低年级的小女生金妮对他','s1557672.jpg','哈利波特|J.K.罗琳|魔幻|小说|英国|外国文学|哈利·波特|HarryPotter|',NULL,NULL),(95,0,'神雕侠侣','金庸','    《神雕侠侣》是金庸作品集之一。其主人公杨过自然而然地走上了非正统的人生道路，入了“道流”。其特点是“至情至性，实现自我”，即把个人的利益、情感、个性及人格尊严置于人生首位，作为首要目标，亦作为待人处事，评价是非的首要原则。书中将杨过对郭靖的杀父之仇与疼惜之恩难以取舍的复杂心理刻画得维妙维肖；他与“姑姑”小龙女的情感纠葛和他对江湖世事的渴望又令他挣扎不已……','s26018916.jpg','金庸|武侠|神雕侠侣|小说|武侠小说|经典|爱情|中国|',NULL,NULL),(96,0,'天龙八部','金庸','    天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等    几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作品。是金庸作品中集大成的一部。故事以南宋末年动荡的社会环境为背景，展开波澜壮阔的历史画卷，塑造了乔峰、段誉、虚竹、慕容复等形象鲜明的人物，成为武侠史上的经典之作。故事精彩纷呈，人物命运悲壮多变，是可读性很强的作品，具有震撼人心的力','s23632058.jpg','金庸|武侠|天龙八部|小说|武侠小说|经典|中国文学|中国|',NULL,NULL),(97,0,'骆驼祥子','老舍','    《骆驼祥子》是老舍用同情的笔触描绘的一幕悲剧：二十年代的北京，一个勤劳、壮实的底层社会小人物怀着发家、奋斗的美好梦想，却最终为黑暗的暴风雨所吞噬。它揭示了当时“小人物”的奴隶心理和希望的最终破灭。随着祥子心爱的女人小福子的自杀，祥子熄灭了个人奋斗的最后一朵火花。这是旧中国老北京贫苦市民的典型命运。','s1146040.jpg','老舍|中国文学|骆驼祥子|小说|经典|现代文学|名著|社会|',NULL,NULL),(98,0,'三体Ⅱ','刘慈欣','    三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。    面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。    三体人自身虽然无法识破人类的诡谲计谋，却依靠由地球人中的背叛者挑选出的“破壁人”，与“面壁者”','s3078482.jpg','科幻|刘慈欣|三体|小说|科幻小说|中国|黑暗森林|中国科幻|',NULL,NULL),(99,0,'尘埃落定','阿来','    一个声势显赫的康巴藏族土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，却有着超时代的预感和举止，成为土司制度兴衰的见证人。小说故事精彩曲折动人，以饱含激情的笔墨，超然物外的审视目光，展现了浓郁的民族风情和土司制度的浪漫神秘。','s9140762.jpg','阿来|小说|西藏|尘埃落定|中国文学|当代文学|文学|中国|',NULL,NULL),(100,0,'最初的爱情 最后的仪式','[英]\n            伊恩·麦克尤恩','    全书由八个短篇组成，分别从八个位于童年、青春期和青年等不同阶段的男性视角出发，以意识和潜意识交接地带的经验为揭示对象，有时荒唐，有时伤感，有时温柔，有时骇人，有时魔幻，却都无限接近真实，接近每个人的内心。    麦克尤恩素来擅长以冷静细腻的笔触打磨幽暗题材，赋予其精妙无双的质感。八个故事各如黑晶棱镜之一面，折射出日常生活中平凡人性所可能误陷的种种魔怔与梦魇。平地与深渊，生与死，真实与玄幻，','s3979661.jpg','伊恩·麦克尤恩|小说|英国|最初的爱情，最后的仪式|外国文学|英国文学|文学|IanMcewan|',NULL,NULL),(101,0,'狂人日记','鲁迅','    《狂人日记》是鲁迅1918年发表的第一篇白话短篇小说，当时正值“五四”运动的前夜。由于辛亥革命的关途而废，特别是帝国主义侵略的加剧，使社会各种矛盾更加复杂尖锐。鲁迅以他锐敏的思想和犀利的笔触，对封建制度及其上层建筑表现了彻底的反抗。    《狂人日记》是中国现代文学史上第一篇真正的现代白话小说。令人惊异的是，这部中国现代小说史上具有开山意义的作品，已经显示出极其成熟的特色，使后来的许多研究','s1426308.jpg','鲁迅|狂人日记|中国文学|小说|经典|现代文学|中国|文学|',NULL,NULL),(102,0,'香水','[德]\n            帕·聚斯金德','    小说叙述一个奇才怪杰谋杀了26个少女的故事。其中每一次谋杀都是一个目的：只是因为迷上她们特有的味道。对格雷诺耶来说，每次都是一场恋爱，但是他爱的不是人，而是她们身上的香味；谋杀她们只是为了永远占有，并且拥有他所钟爱的那种没有感觉，没有生命的“香味”……    这本书不是一部通俗的惊险小说，而是一部构思奇特，充满幻想，离意深刻的严肃作品；自1985年出版以来，始终高居德国畅销书排行榜前列，已','s1556748.jpg','香水|小说|德国|聚斯金德|外国文学|悬疑|谋杀|经典|',NULL,NULL),(103,0,'青铜时代','王小波','    《青铜时代》是“时代三部曲”之三。这是以中国古代唐朝为背景的三部作品构成的长篇。这组作品的主人公，是古代的知识分子和传奇人物。他们作为一群追求个性、热爱自由、想按自己的价值观念精神信条生活的人，充满了强烈的创造欲望和人道需求，但被当时的权力斗争控制和扭曲了心态与行状、竟将智慧和爱情演变为滑稽闹剧。作者在这部长篇中，借助才子佳人、夜半私奔、千里寻情、开创伟业等风华绝代的唐朝秘传故事，将今伯爱','s1072541.jpg','王小波|青铜时代|小说|中国文学|中国|当代|经典|文学|',NULL,NULL),(104,0,'灿烂千阳','[美]\n            卡勒德·胡赛尼','    私生女玛丽雅姆在父亲的宅院门口苦苦守候，回到家却看到因绝望而上吊自杀的母亲。那天是她十五岁的生日，而童年嘎然而止。玛丽雅姆随后由父亲安排远嫁喀布尔四十多岁的鞋匠拉希德，几经流产，终因无法生子而长期生活在家暴阴影之下。    十八年后，少女莱拉的父母死于战火，青梅竹马的恋人也在战乱中失踪，举目无亲的莱拉别无选择，被迫嫁给拉希德。两名阿富汗女性各自带着属于不同时代的悲惨回忆，共同经受着战乱、贫','s2651394.jpg','卡勒德·胡塞尼|阿富汗|灿烂千阳|女性|小说|外国文学|苦难|卡勒德·胡赛尼|',NULL,NULL),(105,0,'悲惨世界（上中下）','[法]\n            雨果','    这是法国十九世纪浪漫派领袖雨果继《巴黎圣母院》之后创作的又一部气势恢宏的鸿篇巨著。全书以卓越的艺术魅力，展示了一幅自1793年法国大革命至1832年巴黎人民起义期间，法国近代社会生活和政治生活的辉煌画卷，最大限度地体现了雨果在叙事方面的过人才华，是世界文学史上现实主义与浪漫主义结合的典范。小说集中反映了雨果的人道主义思想，饱含了雨果对于人类苦难命运的关心和对末来坚定不移的信念，具有震撼人心','s1148102.jpg','雨果|悲惨世界|外国文学|法国|小说|经典|名著|外国名著|',NULL,NULL),(106,0,'致我们终将逝去的青春','辛夷坞','    自喻为“玉面小飞龙”的郑微，洋溢着青春活力，心怀着对邻家哥哥林静浓浓的爱意，来到大学。可是当她联系林静的时候，却发现出国的林静并没有告诉她任何消息。生性豁达的她，埋藏起自己的爱情，享受大学时代的快乐生活。却意外地爱上同学校的陈孝正，板正、自闭而又敏感、自尊的陈孝正却在毕业的时候又选择了出国放弃了郑微。    几年后，林静和陈孝正都出现在郑微面前，而工作后的郑微也纠葛在工作、感情甚至阴谋之中','s2652662.jpg','致我们终将逝去的青春|青春|辛夷坞|小说|爱情|当我们发现青春的美好，青春已经离我们远去......|言情|网络小说|',NULL,NULL),(107,0,'此间的少年','江南','    《此间的少年》讲述的是让人熟悉的大学生活的故事。小说以宋代嘉佑年为时间背景，地点在以北大为模版的“汴京大学”，登场的人物是乔峰、郭靖、令狐冲等大侠，不过在大学里，他们和当代的年轻人没有什么不同。他们早上要跑圈儿，初进校门的时候要扫舞盲，有睡不完的懒觉，站在远处默默注视自己心爱的姑娘……    在这个学校里，郭靖和黄蓉是因为一场自行车的事故认识的，而这辆自行车是化学系的老师丘处机淘汰下来的，','s1068707.jpg','江南|此间的少年|青春|小说|校园|大学|网络小说|中国|',NULL,NULL),(108,0,'哈利·波特与阿兹卡班的囚徒','[英]\n            J·K·罗琳','    《哈利·波特与阿兹卡班的囚徒》是“哈利·波特”系列的第三部。    哈利·波特在霍格沃茨魔法学校已经度过了不平凡的两年，而且早已听说魔法世界中有一座守备森严的阿兹卡班监狱，里面关押着一个臭名昭著的囚徒，名字叫小天狼星布莱克。传言布莱克是“黑魔法”高手伏地魔——杀害哈利父母的凶手——的忠实信徒，曾经用一句魔咒接连结束了十三条性命。不幸的是，布莱克逃出了阿兹卡班，一心追寻哈利。布莱克在睡梦中仍','s1074376.jpg','哈利波特|J.K.罗琳|魔幻|小说|英国|外国文学|哈利·波特|HarryPotter|',NULL,NULL),(109,0,'他的国','韩寒','    在你年少时是否曾梦想成为国王？    长大后的你是否还会继续这个英雄梦？    有些人的心里没有很多东西，哪怕是穿过内心的深处挖到肝里也没有。    有没有比兄弟和女人更加重要的情谊？    有没有比飙车时凛冽的风更刺激的逃亡？    纵身跳下，恍惚里终于看见一双双惊讶和肯定的眼神。    画面在人们面前晃过，你的青春是否也只是果园里一块不和谐的石头？    这是一个关于他的国的故事。  ','s3557848.jpg','韩寒|小说|他的国|讽刺|青春|中国|超现实|中国文学|',NULL,NULL),(110,0,'霸王别姬 青蛇','李碧华','    书中收入《霸王别姬》和《青蛇》两个长篇。    《霸王别姬》通过饰演虞姬的演员程蝶衣和饰演楚霸王的演员段晓楼以及一个妓女之间的三角感情纠葛，反映了新旧社会灾难深重年代的梨园血泪和梨园风气，其纵深的历史感及对人的命运的高度关注，成为亮点。    《青蛇》描写的是南宋年间，传说中的白蛇、青蛇与许仙之间曲折哀婉的爱情悲剧，充满叛逆之美。','s1077339.jpg','李碧华|小说|霸王别姬|青蛇|香港|爱情|中国文学|李碧華|',NULL,NULL),(111,0,'恶意','[日]\n            东野圭吾','    畅销书作家在出国的前一晚于家中被杀。凶手很快落网，对罪行供认不讳、但求速死，却对作案动机语焉不详。    他当真是罪犯？他究竟为何杀人？    在彻查被害人与凶手的过去之后，警官面对案情、手法均平淡无奇的事实，却感到如坠万丈深渊般无边的寒意……    作为一部手记体杰作，《恶意》多年来在票选中始终名列前茅，同时被评论界和众多读者视为东野圭吾的巅峰之作，与《白夜行》同享光辉与荣耀：环环相扣的','s3814606.jpg','东野圭吾|推理|日本|小说|東野圭吾|推理小说|悬疑|日本文学|',NULL,NULL),(112,0,'小团圆','张爱玲','    这是一个热情故事，我想表达出爱情的万转千回，完全幻灭了之后也还有点什么东西在。——张爱玲    《小团圆》以一贯嘲讽的细腻工笔，刻画出张爱玲最深知的人生素材，在她历史中过往来去的那些辛酸往事现实人物，于此处实现了历史的团圆。那余韵不尽的情感铺陈已臻炉火纯青之境，读来时时有被针扎人心的滋味，故事中男男女女的矛盾挣扎和颠倒迷乱，正映现了我们心底深处诸般复杂的情结。','s4197443.jpg','张爱玲|小团圆|小说|中国文学|传记|文学|張愛玲|中国|',NULL,NULL),(113,0,'变形记','[奥地利]\n            弗朗茨·卡夫卡','    1 判决    2 变形记    3 司炉    4 在流放营    5 乡村医生    6 饥饿艺术家    7 铁桶骑士    8 万里长城建造时    9 一条狗的研究    10 中国人来访    ……','s26042134.jpg','卡夫卡|外国文学|变形记|荒诞|小说|奥地利|经典|文学|',NULL,NULL),(114,0,'国境以南 太阳以西','[日]\n            村上春树','    37岁的男主人公，在东京市区拥有两家兴旺的酒吧，还有娇美的妻子，可爱的女儿，他是一位真正的成功人士。但是，他的内心还是感到饥饿干渴，事业和家庭都填补不了，而让他那缺憾的部分充盈起来的，是他小学时的女友岛本。岛本不愿吐露自己的经历、身份、只希望他就这样接受眼前的自己，只把她当成小学时那个爱古典乐的女孩。然而，就在他接受了这不可能接受的条件时，两人却在箱根别墅度过了销魂的一夜。翌晨，她一去杳然','s2333463.jpg','村上春树|小说|日本|日本文学|国境以南|太阳以西|村上春樹|文学|',NULL,NULL),(115,0,'小姨多鹤','[美]\n            严歌苓','    二战进入尾声，日本战败投降，大批当年被移民来中国东北企图对中国实施长期殖民统治的普通日本国民被抛弃。十六岁的少女多鹤即为其一，在死难多艰的逃亡中，她依靠机智和对生的本能的渴望逃过了死亡，被装进麻袋论斤卖给了东北某小火车站站长的二儿子张俭作为传宗接代的“工具”。张俭的哥哥据传因为抗日而被日本人杀害，张俭的老婆朱小环因日本鬼子的惊吓导致流产，从此不能生育。国仇家恨的大背景下，日本少女多鹤的介入','s4045138.jpg','严歌苓|小说|小姨多鹤|当代文学|中国文学|中国|日本|女性|',NULL,NULL),(116,0,'质数的孤独','[意]\n            保罗·乔尔达诺','    《质数的孤独》是意大利八〇后作家、粒子物理学博士保罗·乔尔达诺的处女作，2008年出版后，即获得意大利最高文学奖斯特雷加奖，并迅速成为欧美超级畅销书，迄今在欧洲销量已超过500万册。同名电影于今年9月在威尼斯电影节首映。    马蒂亚是一个年轻的数学天才，他相信自己是质数中的一个，而中学同学爱丽丝正是他的孪生质数。他们都有痛苦的过往，同样孤独，同样无法拉近和其他人之间的距离。从少年到成年，','s4642526.jpg','质数的孤独|意大利|小说|外国文学|保罗•乔尔达诺|意大利文学|文学|上海译文|',NULL,NULL),(117,0,'红玫瑰与白玫瑰','张爱玲','    “也许每一个男子全都有过这样的两个女人，至少两个。娶了红玫瑰，久而久之，红的变了墙上的一抹蚊子血，白的还是\"床前明月光\"；娶了白玫瑰，白的便是衣服上沾的一粒饭黏子，红的却是心口上一颗朱砂痣”。因为《红玫瑰与白玫瑰》这句话成了脍炙人口的名言……本书收录了张爱玲1944年的中短篇小说作品。','s3695882.jpg','张爱玲|红玫瑰与白玫瑰|小说|爱情|中国文学|经典|張愛玲|文学|',NULL,NULL),(118,0,'华胥引（全二册）','唐七公子','    《华胥引(套装共2册)》主要内容包括：华胥一引，乱世成殇。琴弦震响于九州列国之上，无声惊动。这是一个发生在乱世的故事。城破之日，卫国公主叶蓁以身殉国，依靠鲛珠死而复生。当她弹起华胥调，便生死人肉白骨，探入梦境与回忆。幻术构成的曲谱里，尽是人世的辛酸与苦涩。而她与亡她国家的陈国世子一次一次于幻境中相遇，身份两重，缘也两重。清平华胥调，能不能让每个人追回旧日的思念，不再悲伤？','s4599550.jpg','唐七公子|言情|小说|奇幻|爱情|玄幻|九州|网络小说|',NULL,NULL),(119,0,'失恋33天','鲍鲸鲸','    黄小仙儿，27岁的大龄少女，从事高端婚庆策划；胸前无大物，姿色平平，家境也一般，唯一拿得出手的，就是一口刻薄言辞，和对这世界满腔的乐观。长途恋爱谈了七年，没有修成正果，反而在商场里看到了男友和自己闺蜜喜笑颜开的走在一起。    黄小仙儿的失恋日记，就这样一天一天的开始写了下去。工作上困难重重，刚刚惨遭失恋，却要替一对恋爱同样谈了很多年但现在仍然如胶似漆的新人策划婚礼；同事王小贱，既冷酷又毒','s6980516.jpg','失恋33天|小说|爱情|大丽花|搞笑|傻逼中的战斗机。让我来回忆你。|中国|鲍鲸鲸|',NULL,NULL),(120,0,'堂吉诃德','塞万提斯','    《堂吉诃德》（1606-1615）是塞万提斯最杰出的作品。俄国批评家别林斯基说：“在欧洲所有一切文学作品中，把严肃和滑稽，悲剧性和喜剧性，生活中的琐屑和庸俗与伟大和美丽如此水乳交融……这样的范例仅见于塞万提斯的《堂吉诃德》。”','s1082449.jpg','塞万提斯|外国文学|堂吉诃德|西班牙|小说|名著|经典|外国名著|',NULL,NULL),(121,0,'曾有一个人，爱我如生命','舒仪','    如果当初我勇敢，结局是不是不一样。如果当时你坚持，回忆会不会不这样。    我年少的爱人啊，你在我身上刻下伤痕、刻下时光。在那些泪眼相望的夜，我依然记得，你便是爱情本身……    年少时，以为爱能超越一切，那时不明白，世上另有一种力量，叫做命运……','s3635269.jpg','曾有一个人，爱我如生命|舒仪|小说|爱情|言情|青春|曾有一个人,爱我如生命|中国文学|',NULL,NULL),(122,0,'京华烟云','林语堂','    《京华烟云》是林语堂旅居巴黎时于1938年8月至1939年8月间用英文写就的长篇小说，并题献给“英勇的中国士兵”，英文书名为Moment in Peking，《京华烟云》是它转译为中文后的书名，也有译本将本书译为《瞬息京华》。林语堂原本打算将《红楼梦》译作英文介绍给西方读者，因故未能译成，此后决定仿照《红楼梦》的结构写一部长篇小说，于是写出了《京华烟云》。    小说讲述了北平曾、姚、牛三','s1395779.jpg','林语堂|京华烟云|小说|中国文学|经典|中国|现代文学|文学|',NULL,NULL),(123,0,'我的名字叫红','[土耳其]\n            奥尔罕·帕慕克','    1590年末的伊斯坦布尔，国王苏丹秘密委制一本伟大的书籍，颂扬他的生活与帝国。四位当朝最优秀的细密画家齐聚京城，分工合作，精心绘制这本旷世之作。此时离家12年的青年黑终于回到他的故乡——伊斯坦布尔，迎接他归来的除了爱情，还有接踵而来的谋杀案……    一位细密画家失踪了，随即被发现死于深井中，奉命为苏丹绘制抄本的长者也惨遭杀害。遇害的画家究竟是死于画师间的夙仇、爱情的纠葛、还是与苏丹的这次','s1950252.jpg','奥尔罕·帕慕克|我的名字叫红|土耳其|小说|诺贝尔文学奖|外国文学|文学|诺贝尔|',NULL,NULL),(124,0,'人生','路遥','    《人生》是路遥的一部中篇小说，发表于1982年，它以改革时期陕北高原的城乡生活为时空背景，叙述了高中毕业生高加林回到土地又离开土地，再回到土地这样人生的变化过程。高加林同农村姑娘刘巧珍、城市姑娘黄亚萍之间的感情纠葛构成了故事发展的矛盾，也正是体现那种艰难选择的悲剧。','s3847911.jpg','路遥|人生|小说|中国文学|命运|当代文学|经典|文学|',NULL,NULL),(125,0,'情人','[法]\n            玛格丽特·杜拉斯','    杜拉斯代表作之一，自传性质的小说，获一九八四年法国龚古尔文学奖。全书以法国殖民者在越南的生活为背景，描写贫穷的法国女孩与富有的中国少爷之间深沉而无望的爱情。','s1444578.jpg','杜拉斯|情人|法国|小说|外国文学|爱情|玛格丽特・杜拉斯|玛格丽特·杜拉斯|',NULL,NULL),(126,0,'解忧杂货店','[日]\n            东野圭吾','    现代人内心流失的东西，这家杂货店能帮你找回——    僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。    因男友身患绝症，年轻女孩静子在爱情与梦想间徘徊；克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩介面临家庭巨变，挣扎在亲情与未来的迷茫中……    他们将困惑写成信投进杂货店，随即奇妙的事情竟不断发生。    生命中的一次偶然交会，','s27264181.jpg','东野圭吾|治愈|小说|温暖|日本|日本文学|東野圭吾|推理|',NULL,NULL),(127,0,'黄金时代','王小波','    《黄金时代》是《时代三部曲》之一。  这是以文革时期为背景的系列作品构成的长篇。发生“文化大革命”的二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，知识分子群体无能为力而极“左”政治泛滥横行。作为倍受歧视的知识分子，往往丧失了自我意志和个人尊严。在这组系列作品里面，名叫“王二”的男主人公处于恐怖和荒谬的环境，遭到各种不公正待遇，但他却摆脱了传统文化人的悲愤心态，创造出一种反抗和超越','s1076372.jpg','王小波|黄金时代|小说|中国文学|经典|当代|文学|中国|',NULL,NULL),(128,0,'面包树上的女人','张小娴','    《面包树上的女人》是作者的第一部长篇小说，也是成名作，作品先在香港《明报》连载。    关于面包和爱情，是一种人生态度吧？而在面包树上的女人是最彷徨的一种。','s1566164.jpg','张小娴|面包树上的女人|爱情|小说|香港|言情|现代小说|中国文学|',NULL,NULL),(129,0,'霍乱时期的爱情','[哥伦比亚]\n            加西亚·马尔克斯','    ★马尔克斯唯一正式授权，首次完整翻译    ★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯    ★这部光芒闪耀、令人心碎的作品是人类有史以来最伟大的爱情小说。——《纽约时报》    《霍乱时期的爱情》是加西亚•马尔克斯获得诺贝尔文学奖之后完成的第一部小说。讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、','s11284102.jpg','加西亚-马尔克斯|霍乱时期的爱情|小说|爱情|加西亚·马尔克斯|拉美文学|外国文学|文学|',NULL,NULL),(130,0,'红与黑','[法]\n            司汤达','    《红与黑》这部小说的故事据悉是采自1828年2月29日《法院新闻》所登载一个死刑案件。在拿破仑帝国时代，红与黑代表着“军队”与“教会”，是有野心的法国青年发展的两个渠道（一说是轮盘上的红色与黑色）。    《红与黑》是19世纪欧洲批判现实主义的奠基作品。小说围绕主人公于连个人奋斗的经历与最终失败，尤其是他的两次爱情的描写，广泛地展现了“19世纪初30年间压在法国人民头上的历届政府所带来的社','s1988674.jpg','司汤达|红与黑|外国文学|法国|小说|名著|经典|外国名著|',NULL,NULL),(131,0,'浮沉','崔曼莉','    赛思中国的前台乔莉借助总裁秘书这块跳板成功转型为销售后，她一面承受着没有销售经验的压力，一面备受办公室政治的困扰。正苦恼间，一个价值7亿的大单与她不期而遇。在这场没有流血却你死我活的搏杀中，她是一颗悲壮的棋子，又是一名无畏的勇士，她既可能一战成名，也可能沦为阵前的炮灰……','s3074739.jpg','职场小说|职场|小说|销售|浮沉|外企|商战|商战小说|',NULL,NULL),(132,0,'一个人的朝圣','[英]\n            蕾秋·乔伊斯','    ★2013年欧洲首席畅销小说，入围2012年布克文学奖，同名电影拍摄中    ★台湾读者表示“很久没有读一本书读到凌晨”、“是一个简单、素朴但会令人深深感动的故事”、“笑泪交织的阅读”    ★2013年春季英国最具影响力“理查与茱蒂”读书俱乐部书单第1  名；欧普拉读书俱乐部夏日选书、美国图书馆协会选书；2012年英国最畅销新人小说；《出版人周刊》、《纽约时报》、《泰晤士报》、《嘉人》、','s26936721.jpg','一个人的朝圣|自我发现|小说|旅行|英国文学|心灵|外国文学|英国|',NULL,NULL),(133,0,'温柔的叹息','[日]\n            青山七惠','    《温柔的叹息》是青山七惠芥川奖获奖作品《一个人的好天气》的延伸，像极了一名女子成长历程的追踪报道。    小说从主人公“圆”突遇4年来音信全无的弟弟开始。弟弟自说自话搬进姐姐租的房子，从此开始每天记“姐姐观察日记”。姐姐读后才意识到自己的每一天过得是何等的枯燥乏味，纯粹是“复制加粘贴”。于是她决定试着改变现状，同弟弟的一个朋友相恋，接受同事参加忘年会的邀请，慢慢走出社交恐惧症的困扰。遗憾的','s4102527.jpg','青山七惠|日本文学|日本|小说|温柔的叹息|外国文学|文学|日@青山七惠|',NULL,NULL),(134,0,'局外人','[法]\n            阿尔贝·加缪','    《局外人》是加缪小说的成名作和代表作之一，堪称20世纪整个西方文坛最具有划时代意义最著名小说之一，“局外人”也由此成为整个西方文学-哲学中最经典的人物形象和最重要的关键词之一。','s4468484.jpg','加缪|存在主义|法国|小说|外国文学|法国文学|局外人|文学|',NULL,NULL),(135,0,'城南旧事','关维兴 图','    多少年来，《城南旧事》感动了一代又一代的读者，除了再版无数次的小说版外，1985年，本书在中国大陆搬上银幕，电影“城南旧事”获得“中国电影金鸡奖”、第二届“马尼拉国际电影节最佳故事片奖金鹰奖章”、第十四届“贝尔格勒国际儿童电影节最佳影片思想奖”等多项大奖。    儿童绘本版《城南旧事》由当今中国极具代表性的水彩画家关维兴，运用优雅诗意的风格和穿透人心的独到技巧，将创作的图画全然融入故事的情','s2654869.jpg','林海音|城南旧事|童年|中国文学|小说|文学|儿童文学|小时候|',NULL,NULL),(136,0,'1Q84 BOOK 3','[日]\n            村上春树','    1Q84简体中文版官方网站：http://www.douban.com/minisite/1q84/    “不管喜欢还是不喜欢，目前我已经置身于这‘1Q84年’。我熟悉的那个1984年已经无影无踪，今年是1Q84年。空气变了，风景变了。我必须尽快适应这个带着问号的世界。像被 放进陌生 森林中的动物一样，为了生存下去，得尽快了解并顺应这里的规则。”    《1Q84》写一对十岁时相遇后便各','s4577386.jpg','村上春树|日本|小说|日本文学|1Q84|爱情|文学|外国文学|',NULL,NULL),(137,0,'围城','钱钟书','    《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出现过盗印本。1980年由作者重新修订之后，在中国大陆地区由人民文学出版社刊印。此后作者又曾小幅修改过几次。《围城》 自从出版以来，就受到许多人的推崇。由于1949年后长期无法重印，这本书逐渐淡出人们的视野。1960年代，旅美汉学家夏志清','s1070222.jpg','钱钟书|围城|小说|中国文学|经典|婚姻|现代文学|文学|',NULL,NULL),(138,0,'妻妾成群','苏童','    《妻妾成群》借旧中国特有的封建家庭模式作小说的框架，一个男人娶了四个女人做太太。但作者关心的不是一个男人如何在四个女人中周旋，如何控制她们，而是关心四个女人怎会把她们一齐拴在一个男人的脖子上，并且像一棵濒临枯萎的藤蔓在稀薄的空气中相互绞杀而争得那一点点空气。    《妻妾成群》被改编为电影《大红灯笼高高挂》，张艺谋导演，获奥斯卡金像奖提名。','s6478105.jpg','苏童|小说|妻妾成群|中国文学|中国当代文学|女人|中国|当代文学|',NULL,NULL),(139,0,'月亮和六便士','[英]\n            威廉·萨默塞特·毛姆','    一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够理解。他在异国不仅肉体受着贫穷和饥饿煎熬，而且为了寻找表现手法，精神亦在忍受痛苦折磨。经过一番离奇的遭遇后，主人公最后离开文明世界，远遁到与世隔绝的塔希提岛上。他终于找到灵魂的宁静和适合自己艺术气质的氛围。他同一个土著女子同居，创作出一','s2659208.jpg','毛姆|月亮和六便士|小说|外国文学|英国|英国文学|毛姆：月亮和六便士|文学|',NULL,NULL),(140,0,'嫌疑人X的献身','[日]\n            东野圭吾','    百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。    靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由他料理善后。石神设了一个匪夷所思的局，令警方始终只能在外围敲敲打打，根本无法与案子沾边。石神究竟使用了什么手法？','s3254244.jpg','东野圭吾|推理|日本|推理小说|悬疑|小说|東野圭吾|日本文学|',NULL,NULL),(141,0,'平凡的世界（全三部）','路遥','    《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广阔背景下，通过复杂的矛盾纠葛，刻划社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。','s2335693.jpg','路遥|平凡的世界|小说|中国文学|人生|经典|文学|当代|',NULL,NULL),(142,0,'三重门','韩寒','    《三重门》是一部由一个少年写就，但却不能简单划入儿童文学的一般意义上的小说，它恰恰是以成熟、老练，甚至以老到见长的。17岁的韩寒注定要扮演不安分且引人注目的角色。他以一篇《杯中窥人》问鼎首届全国新概念作文大赛。然而，他却因期末考试的成绩单高挂七盏红灯而留级。在2000年还是用七门功课红灯照亮前程。眼下的韩寒已经成为一个“话题”——“一个‘高材’留级生引出的话题”。这个韩寒，何许人也？','s1024882.jpg','韩寒|三重门|小说|青春|80后|校园|中国文学|青春小说|',NULL,NULL),(143,0,'暗黑童话','[日]\n            乙一','    《暗黑童话》内容简介：因为一场意外失去左眼的高二女孩菜深，也同时丧失了记忆。在接受眼球移植手术之后，她的左眼竟开始频繁出现另一个男孩的过去记忆，包括他死亡之际所见到的最后影像。因为没有过去而与现实生活格格不入的她，於是决定前往男孩的世界找出害死他的凶手。但是，在那个地下室等待她的，却是暗黑澄澈而令人心痛的，爱的记忆……','s6097185.jpg','乙一|日本|推理|暗黑童话|日本文学|小说|推理小说|日本推理|',NULL,NULL),(144,0,'张爱玲文集','张爱玲','    第一卷：《牛》《霸王别姬》《沉香屑 第二炉香》《茉莉香片》《心经》《封锁》《琉璃瓦》《年轻的时候》《花凋》《殷宝滟送花楼会》《等》《桂花蒸 阿小悲秋》《留情》《鸿鸾禧》《相见欢》《色·戒》《五四遗事》    第二卷：《沉香屑 第一炉香》《倾城之恋》《金锁记》《红玫瑰与白玫瑰》《连环套》《创世纪》《多少恨》《小艾》    第三卷：《十八春》《怨女》    第四卷：《迟暮》《秋雨》《书评四篇》','s1662165.jpg','张爱玲|张爱玲文集|小说|中国文学|经典|文学|散文|现代文学|',NULL,NULL),(145,0,'彼岸花','安妮宝贝（庆山）','    乔是一个写文字的女人，略带点神精质，总在这个世界上寻找着一些可能并不存在的东西。她写了一本小说，说的是关于一个叫南生的女子的故事，南生爱上了自己父亲的情妇的儿子和平，和平却不愿负载这份过于沉重的爱，南生选择了一种出人意料的方式来结束两人的这种关系。乔在现实生活中有一个可以称作男友的森，森在最后告诉乔：你要的是彼岸的花朵，盛开在不可触及的别处。    《彼岸花》是安妮宝贝的第一部长篇小说。乔','s1077536.jpg','安妮宝贝|彼岸花|小说|爱情|颓废|安妮|文学|中国|',NULL,NULL),(146,0,'长恨歌','王安忆','    一个女人四十年的情与爱，被一枝细腻而绚烂的笔写得哀婉动人，其中交织着上海这所大都市从四十年代到九十年代沧海桑田的变迁。生活在上海弄堂里的女人沉垒了无数理想、幻灭、躁动和怨望，她们对情与爱的追求，她们的成败，在我们眼前依次展开。王安忆看似平淡却幽默冷峻的笔调，在对细小琐碎的生活细节的津津乐道中，展现时代变迁中的人和城市，被誉为“现代上海史诗”。    本书荣获第一届世界华文文学奖，并于200','s3018752.jpg','王安忆|小说|长恨歌|中国文学|老上海|女性|旧上海|文学|',NULL,NULL),(147,0,'万物生长','冯唐','    “万物生长三部曲”的第一部。第二部是《十八岁给我一个姑娘》，而第三部是正在热卖的《北京，北京》。    《万物生长》记录了一位医科学生秋水八年的成长经历。主人公秋水是北京一所著名医科大学的学生，从与两个女人的关系中获得了关于成长的秘密。秋水在学校有一个女友，但他又认识了一个年龄比他大的女人柳青，在帮助她堕胎的过程中对她产生了感情，……书中有大量对生活现实的议论与描写，充满机智、幽默和尖锐，','s6862126.jpg','冯唐|小说|青春|万物生长|中国文学|酣畅淋漓的青春，若即若离|中国|北京|',NULL,NULL),(148,0,'基督山伯爵','[法]\n            大仲马','    小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被打入死牢，狱友法里亚神甫向他传授了各种知识，还在临终前把一批宝藏的秘密告诉了他。他设法越狱后找到了宝藏，成为巨富。从此他化名为基督山伯爵，经过精心策划，报答了他的恩人，惩罚了三个一心想置他于死地的仇人。','s3248016.jpg','大仲马|基督山伯爵|外国文学|复仇|经典|小说|法国|名著|',NULL,NULL),(149,0,'包法利夫人','[法]\n            居斯塔夫·福楼拜','    一八五六至一八五七年间，法国《巴黎杂志》上连载的一部小说轰动了文坛，同时也在社会上引起了轩然大波。怒不可遏的司法当局对作者提起公诉，指控小说“伤风败俗、亵渎宗教”，并传唤作者到法庭受审。这位作者就是居斯塔夫·福楼，这部小说就是他的代表作《包法利夫人》。审判的闹剧最后以“宣判无罪”告结束，而隐居乡野、藉藉无名的作者却从此奠定了自己的文学声誉和在文学史上的地位……','s1153177.jpg','福楼拜|外国文学|包法利夫人|法国|小说|法国文学|名著|经典|',NULL,NULL),(150,0,'时间旅行者的妻子','[美]\n            奥德丽·尼芬格','    相遇那年，她6岁，他36岁；    结婚那年，她23岁，他31岁；    离别后再度重逢时，她82岁，他43岁。    相对于如此真实、强烈的感觉，时间，微不足道……    亨利，一位年轻帅气、爱冒险的图书管理员，可是他有慢性时间错位症，会不知不觉地游离在时间之间。    克莱尔，亨利的妻子，一位生活秩序很规律的艺术家。    亨利以为他在28岁时第一次遇到他20岁的妻子克莱尔，而克莱尔却','s2375756.jpg','时间旅行者的妻子|小说|爱情|外国文学|科幻|时间旅行|文学|流年|',NULL,NULL),(151,0,'西决','笛安','    作为《最小说》2009年度最热门的作者，笛安是继“校园女王”落落之后，郭敬明最为推崇的作者。    目前笛安在巴黎第四大学攻读社会学硕士学位，曾经出版《告别天堂》、《芙蓉如面柳如眉》等作品，《告别天堂》曾经和安妮宝贝的《莲花》在《收获》杂志中同期连载，不论是主流媒体还是在广大青少年读者群体中，均有着极高的认知度。    《西决》曾在《最小说》中连载6个月，人气赶超落落、七堇年，在读者群中有','s3658646.jpg','笛安|西决|小说|青春|青春文学|柯艾|中国|生活|',NULL,NULL),(152,0,'一个陌生女子的来信','[奥地利]\n            斯蒂芬·茨威格','    收作者《一个陌生女子的来信》、《家庭女教师》等5部小说。','s1119643.jpg','茨威格|一个陌生女子的来信|外国文学|小说|爱情|奥地利|经典|文学|',NULL,NULL),(153,0,'牧羊少年奇幻之旅','[巴西]\n            保罗·柯艾略','    牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间奇遇不断，在一位炼金术士的指引下，他终于到达金字塔前，悟出了宝藏的真正所在……','s3668327.jpg','牧羊少年奇幻之旅|保罗柯艾略|外国文学|小说|与心沟通|巴西|童话|拉美|',NULL,NULL),(154,0,'告白','[日]\n            凑佳苗','    日本銷售破67萬冊    獲獎記錄    ★2009年本屋大賞第1名    ★第29回小說推理新人獎    ★週刊文春「2008年Mystery Best 10」第1名    ★寶島社「2009年這本推理小說真厲害！」第4名    當倫理和正義分歧，你該選哪邊？    殺人者的與復仇者的心理演進，輪番敲擊著我們內心的道德尺度    一位中學女老師在校園游泳池內發現自己的四歲女兒意外溺斃，後','s3931802.jpg','日本|推理|湊佳苗|日本文学|小说|日系推理|推理小说|湊かなえ|',NULL,NULL),(155,0,'白鹿原','陈忠实','    这是一部渭河平原五十年变迁的雄奇史诗，一轴中国农村班斓多彩、触目惊心的长幅画卷。主人公六娶六丧，神秘的序曲预示着不祥。一个家族两代子孙，为争夺白鹿原的统治代代争斗不已，上演了一幕幕惊心动魄的活剧：巧取风水地，恶施美人计，孝子为匪，亲翁杀媳，兄弟相煎，情人反目……大革命、日寇入侵、三年内战，白鹿原翻云覆雨，王旗变幻，家仇国恨交错缠结，冤冤相报代代不已……古老的土地在新生的阵痛中颤栗。厚重深邃','s9137567.jpg','陈忠实|白鹿原|小说|中国文学|茅盾文学奖|农村|文学|中国|',NULL,NULL),(156,0,'哈利·波特与死亡圣器','[英]\n            J·K·罗琳','    《哈利·波特与死亡圣器》是“哈利·波特”系列的第七部，也就是最后一部。    还有四天，哈利就要迎来自己十七岁的生日，成为一名真正的魔法师。然而，他不得不提前离开女贞路4号，永远离开这个他曾经生活过十六年的地方。    凤凰社的成员精心谋划了秘密转移哈利的计划，以防哈利遭到伏地魔及其追随者食死徒的袭击。然而，可怕的意外还是发生了……    与此同时，卷土重来的伏地魔已经染指霍格沃茨魔法学校','s2752367.jpg','哈利波特|J.K.罗琳|魔幻|小说|英国|HarryPotter|哈利·波特|外国文学|',NULL,NULL),(157,0,'肠子','[美]\n            恰克·帕拉尼克','    重口味神作，阅读有风险，身体虚弱者勿入！    《搏击俱乐部》作者最黑暗最天才最虐心的神作。    读者在阅读后，不是火到想找作者单挑就是发出凄厉的惨叫或是整个人狂笑不行更有人虚脱到无法出声！    有73人在作者读《肠子》的时候晕倒，晕倒人数还在持续增加中。    本书包含了二十二个恐怖、好 笑，又让你反胃的故事。说这些故事的人都是应一则“作家研习营”的广告而来，却陷入类似“求生”情节的','s28676953.jpg','恰克·帕拉尼克|重口味|小说|美国|外国文学|美国文学|神作|短篇小说|',NULL,NULL),(158,0,'一九八四·动物农场','[英]\n            乔治·奥威尔','    《一九八四》和《动物农场》是奥威尔的传世之作，堪称世界文坛上最著名的政治讽喻小说。他在小说中他创造的“老大哥”、“双重思想”、“新话”等词汇都已收入权威的英语词典，甚至由他的姓衍生了一个形容词“奥威尔式”不断出现在报道国际新闻的记者笔下，足见其作品在英语国家影响之深远。“多一个人看奥威尔，就多了一份自由的保障”，有评家如是说。','s1089916.jpg','反乌托邦|乔治·奥威尔|奥威尔|1984|政治|小说|外国文学|英国|',NULL,NULL),(159,0,'寻羊冒险记','[日]\n            村上春树','    《寻羊冒险记》是村上春树继处女作《且听风吟》、《1973年的弹珠游戏》后的第三部小说，与上述两部作品构成“我与鼠”系列三部曲。小说极富寓言性与神话色彩，作者认为该小说的创作“顺利到最后，在恰到火候处止笔”。《寻羊冒险记》是村上的第一部够规模的长篇，村上因此获得了野间文艺新人赏。    一头控制全日本的超能力羊失踪了，它的宿主、黑社会头子命在旦夕。潦倒的东京青年职员无意中得到羊的照片，不料就','s1029647.jpg','村上春树|小说|日本|寻羊冒险记|日本文学|外国文学|村上春樹|文学|',NULL,NULL),(160,0,'三体Ⅲ','刘慈欣','    与三体文明的战争使人类第一次看到了宇宙黑暗的真相，地球文明像一个恐惧的孩子，熄灭了寻友的篝火，在暗夜中发抖。自以为历经沧桑，其实刚刚蹒跚学步；自以为悟出了生存竞争的秘密，其实还远没有竞争的资格。    使两个文明命悬一线的黑暗森林打击，不过是宇宙战场上一个微不足道的插曲。真正的星际战争没人见过，也不可能见到，因为战争的方式和武器已经远远超出人类的想象，目睹战场之日，即是灭亡之时。    宇','s26012674.jpg','科幻|刘慈欣|三体|小说|中国科幻|科幻小说|中国|硬科幻|',NULL,NULL),(161,0,'杜拉拉升职记','李可','    小说的主人公杜拉拉是典型的中产阶级代表，她没有背景，受过较好的教育，靠个人奋斗获取成功。小说中拉拉在外企的经历跨度八年，拉拉从一个朴实的销售助理，成长为一个专业干练的HR经理，见识了各种职场变迁，也历经了各种职场磨练。','s3012803.jpg','职场|杜拉拉升职记|小说|外企|成长|职业规划|HR|杜拉拉|',NULL,NULL),(162,0,'生活在别处','[捷克]\n            米兰·昆德拉','    《生活在别处》是一个年轻艺术家的肖像画。昆德拉以其独到的笔触塑造出雅罗米尔这样一个形象，描绘了这个年轻诗人充满激情而又短暂的一生，具有“发展小说”的许多特点。就其题材而言，表现一个艺术家（或知识分子）是本世纪文学的一个重要领域，因为展示我们这个复杂的时代也只有复杂的人物才能承担。在这部作品中，作者对诗人创作过程的分析是微妙而精细的。创作过程当然不仅指下笔写作的过程，而且更广义地指一个诗人的','s1069535.jpg','米兰・昆德拉|生活在别处|小说|外国文学|捷克|米兰·昆德拉|文学|经典|',NULL,NULL),(163,0,'来自新世界 （上下）','[日]\n            贵志祐介','    “离开小町回头去看，有一件事我看得清清楚楚——我们的小町，很扭曲。    为了维持小町的安定和秩序，不断杀害孩子们的小町，还能称之为人类的社会吗？人类从涂满鲜血的历史中走过，才抵达如今的状态。然而即使是和过去最黑暗的时代相比，今天的小町也是并不值得自豪的替代品。    我们已经无法在神栖六十六町活下去了。小町不许我们活下去。只要被打上了失格的烙印，便无法再回到当初了。这不是对待人类的方式，','s27270922.jpg','科幻|日本文学|贵志佑介|日本|小说|反乌托邦|轻小说|贵志祐介|',NULL,NULL),(164,0,'倾城之恋','张爱玲','    一对现实庸俗的男女，在战争的兵荒马乱之中被命运掷骰子般地掷到了一起，于“一刹那”体会到了“一对平凡的夫妻”之间的“一点真心”⋯⋯张爱玲是作为中国现代文学史上的一位杰出作家，而不是作为一个怪人、异人而存在的。也许她将不仅仅属于现代文学史。遥想几十年、几百年后，她会像她欣赏的李清照一样，在整个中国文学史上占据一个稳定的位置也说不定，而我们知道，那时候今天为我们所熟知的许多现代作家肯定都将被忽略','s1077102.jpg','张爱玲|倾城之恋|小说|爱情|中国文学|经典|張愛玲|文学|',NULL,NULL),(165,0,'巴黎圣母院','[法]\n            雨果','    《巴黎圣母院》是法国文豪维克多·雨果第一部引起轰动效应的浪漫派小说。小说以十五世纪路易十一统治下的法国为背景，通过一个纯洁无辜的波希米亚女郎惨遭迫害的故事，揭露了教士的阴险卑鄙，宗教法庭的野蛮残忍，贵族的荒淫无耻和国王的专横残暴。作品鲜明地体现了反封建、反教会的意识和对人民群众的赞颂。','s4493741.jpg','雨果|巴黎圣母院|外国文学|法国|小说|名著|经典|外国名著|',NULL,NULL),(166,0,'万物有灵且美','[英]\n            吉米·哈利','    “活泼的生命完全无须借助魔法，便能对我们述说至美至真的故事。大自然的真实面貌，比起诗人所能描摹的境界，更要美上千百倍。”    把追车当做一门艺术的狗，策划群猫暴动的精灵古怪的老猫……动物们的温馨感人喜剧在轮番上演着。大自然怀抱中的乡野风情，多姿多彩的人和动物，构成了一幅芸芸众生的绚烂画卷。    年轻的乡村兽医哈利，每天开着一辆冒黑烟的老爷车“南征北战”。和恶犬贴身肉搏，随时准备应对母马','s4093514.jpg','吉米·哈利|动物|外国文学|万物有灵且美|英国|小说|动物与人|英国文学|',NULL,NULL),(167,0,'球状闪电','刘慈欣','    在某个离奇的雨夜，一颗球状闪电闯进了少年的视野。它的啸叫低沉中透着尖利，像是一个鬼魂在太古的荒原上吹着埙。当鬼魂奏完乐曲，球状闪电在一瞬间将少年的父母化为灰烬，而他们身下板凳却是奇迹般的冰凉。    这一夜，少年的命运被彻底改变了，他将毕其一生去解开那个将他变成孤儿的自然之谜。但是他未曾想到，多年以后，单纯的自然科学研究被纳入进“新概念武器”开发计划，他所追寻的球状闪电变成了下一场战争中决','s26040205.jpg','科幻|刘慈欣|小说|球状闪电|科幻小说|中国|大刘|经典|',NULL,NULL),(168,0,'1Q84 BOOK 1','[日]\n            村上春树','    1Q84简体中文版官方网站：http://www.douban.com/minisite/1q84/    “不管喜欢还是不喜欢，目前我已经置身于这‘1Q84年’。我熟悉的那个1984年已经无影无踪，今年是1Q84年。空气变了，风景变了。我必须尽快适应这个带着问号的世界。像被放进陌生森林中的动物一样，为了生存下去，得尽快了解并顺应这里的规则。”    《1Q84》写一对十岁时相遇后便各奔东','s4363464.jpg','村上春树|日本|小说|1Q84|日本文学|村上春樹|文学|外国文学|',NULL,NULL),(169,0,'达·芬奇密码','[美]\n            丹·布朗','    哈佛大学的符号学专家罗伯特·兰登在法国巴黎出差期间的一个午夜接到一个紧急电话，得知卢浮宫博物馆年迈的馆长被人杀害在卢浮宫的博物馆里，人们在他的尸体旁边发现了一个难以捉摸的密码。兰登与法国一位颇有天分的密码破译专家索菲·奈芙，在对一大堆怪异的密码进行整理的过程当中，发现一连串的线索就隐藏在达芬奇的艺术作品当中，深感震惊。这些线索，大家都清楚可见，然而却被画家巧妙地隐藏起来。兰登无意之中非常震','s1513425.jpg','悬疑|达・芬奇密码|小说|推理|宗教|丹・布朗|外国文学|丹·布朗|',NULL,NULL),(170,0,'呼啸山庄','[英]\n            艾米莉·勃朗特','    夏洛蒂和传记作者告诉我们，爱米丽生性独立、豁达、纯真、刚毅、热情而又内向。她颇有男儿气概，酷爱自己生长其间的荒原，平素在离群索居中，除去手足情谊，最喜与大自然为友，从她的诗和一生行为，都可见她天人合一宇宙观与人生观的表现，有人因此而将她视为神秘主义者。其实人与自然的关系，从来就是人类文明史上重要的命题，爱米丽不过是步历代哲人、隐者、科学家、艺术家后尘，通过生活和创作，身体力行地探寻人与自然','s1095383.jpg','呼啸山庄|外国文学|小说|英国|名著|经典|爱情|外国名著|',NULL,NULL),(171,0,'银河系漫游指南','[英]\n            道格拉斯·亚当斯','    地球被毁灭了，因为要在它所在的地方修建一条超空间快速通道。主人公阿瑟·邓特活下来了，因为他有一位名叫福特·长官的朋友。这位朋友表面上是个找不着工作的演员，其实是个外星人，是名著《银河系漫游指南》派赴地球的研究员。两人开始了一场穿越银河的冒险，能够帮助他们的只有《银河系漫游指南》一书中所包括的无限智慧。    旅途中，他们遇上了一批非常有趣的同伴：    赞福德·毕博布鲁克斯：长着两个头、三','s3696740.jpg','科幻|银河系漫游指南|道格拉斯・亚当斯|英国|科幻小说|小说|幽默|经典|',NULL,NULL),(172,0,'笑傲江湖（全四册）','金庸','    《笑傲江湖》是金庸1967年写的一部武侠小说，属于金庸的后期作品。','s2157335.jpg','金庸|武侠|笑傲江湖|小说|武侠小说|经典|中国|中国文学|',NULL,NULL),(173,0,'琅琊榜','海宴','    一卷风去琅琊榜，囊尽天下奇英才。他远在江湖，却能名动帝辇，只因神秘莫测而又言出必准的琅琊阁，突然断言他是一麒麟之才，得之可得天下一。然而，身为太子与誉王竞相拉拢招揽的对象，他竟然出人意料地舍弃了这两个皇位争夺的热门人选，转而投向默默无闻、最不受皇帝宠爱的靖王。    这是想挑战自己的麒麟之才？还是其中内有隐情？那雪夜薄甲、逐敌千里的少年将军，和病骨支离、年寿难永的阴沉谋士，究竟哪一个是他最','s8994402.jpg','琅琊榜|小说|权谋|架空|海宴|网络小说|宫廷斗争|武侠|',NULL,NULL),(174,0,'梦里花落知多少','郭敬明','    《梦里花落知多少》是郭敬明出版第二部小说，此作一改《幻城》的奇幻风格，从天上回到人间。小说以北京、上海等大都市为背景，讲述了几个年青人的爱情故事，情节曲折，语言幽默生动。主人公是一些即将走出校门的大学生，在成长的过程中，友情、爱情都在经历着蜕变，那种成长的快乐和忧伤很能引起年轻读者的共鸣。','s1513378.jpg','郭敬明|梦里花落知多少|小说|青春|80后|爱情|小四|中国|',NULL,NULL),(175,0,'海底两万里','[法]\n            儒尔·凡尔纳','    本书是法国举世闻名的科幻小说作家儒尔·凡尔纳的代表作之一。    作者让读者登上“鹦鹉螺号”，以平均十二公里的时速，在将近十个月的海底旅行中，随着尼摩船长和他的“客人们”饱览海底变幻无穷的奇异景观和各类生物；航程中高潮迭起，有海底狩猎，参观海底森林，探访海底亚特兰蒂斯废墟，打捞西班牙沉船的财宝，目睹珊瑚王国的葬礼，与大蜘蛛、鲨鱼、章鱼搏斗， 击退土著人的围攻等等。    十九世纪下半叶，“','s1817666.jpg','科幻|凡尔纳|海底两万里|儒勒·凡尔纳|小说|外国文学|法国|科幻小说|',NULL,NULL),(176,0,'哈利·波特与火焰杯','[英]\n            J·K·罗琳','    《哈利·波特与火焰杯》是“哈利·波特”系列的第四部。    哈利·波特在霍格沃茨魔法学校经过三年的学习和磨炼，逐渐成长为一个出色的巫师。新学年开始前，哈利和好朋友罗恩，赫敏一起去观看精彩的魁地奇世界杯赛，无意间发现了消失十三年的黑魔标记。哈利的心头笼上了一团浓重的阴云，但三个少年依然拥有他们自己的伊甸园。然而，少男少女的心思是那样难以捉摸，三人之间的美好友情竟是那样一波三折，忽晴忽雨……哈','s1072746.jpg','哈利波特|J.K.罗琳|魔幻|小说|英国|外国文学|哈利・波特|HarryPotter|',NULL,NULL),(177,0,'且听风吟','[日]\n            村上春树','    《且听风吟》是村上春树的成名作，他是以这部中篇开始文学创作的。    小说的情节并不很复杂。“我”在酒吧喝酒，去卫生间时见一少女醉倒在地，遂就其护送回家，翌日少女发现自己一丝不挂，斥责“我”侮辱了她，“我”有口难辩。但几天后，两人逐渐亲密……不料“我”寒假回来，少女已无处可寻，只好一个人坐在原来两人坐过的地方怅怅地望着大海。','s1029019.jpg','村上春树|且听风吟|日本文学|小说|日本|青春|文学|外国文学|',NULL,NULL),(178,0,'肖申克的救赎','[美]\n            斯蒂芬·金','    这本书收入斯蒂芬·金的四部中篇小说，是他作品中的杰出代表作。其英文版一经推出，即登上《纽约时报》畅销书排行榜的冠军之位，当年在美国狂销二十八万册。目前，这本书已经被翻译成三十一种语言，同时创下了收录的四篇小说中有三篇被改编成轰动一时的电影的记录。    其中最为著名是曾获奥斯卡奖七项提名、被称为电影史上最完美影片的《肖申克救赎》（又译《刺激一九九五》）。这部小说展现了斯蒂芬·金于擅长的惊悚','s4007145.jpg','斯蒂芬·金|肖申克的救赎|小说|外国文学|经典|美国|希望|悬疑|',NULL,NULL),(179,0,'在路上','[美]\n            杰克·凯鲁亚克','    青年学生萨尔为追求个性自由，与狄安（以卡萨迪为原型）、玛丽露等一伙男女开车横穿全美，一路狂喝滥饮，耽迷酒色，流浪吸毒，性放纵，在经过精疲力竭的漫长放荡后，开始笃信东方禅宗，感悟到生命的意义。小说主人公及其伙伴沿途搭车或开车，几次横越美国大陆，最终到了墨西哥。    《在路上》体现了作者主张的即兴式自发性写作技巧，并广泛涉及美国社会一文化习俗，都给理解和翻译带来很大困难。','s2577057.jpg','在路上|垮掉的一代|凯鲁亚克|美国|小说|外国文学|旅行|文学|',NULL,NULL),(180,0,'1988：我想和这个世界谈谈','韩寒','    系列主题：《我想和这个世界谈谈》    目前在韩寒主编的杂志《独唱团》中首度连载，这是韩寒预谋已久的一个系列，也是国内首度实际尝试“公路小说”这一概念的第一本——《1988》。    所谓“公路小说”就是以路途为载体反应人生观，现实观的小说。    如果说一件真正的艺术品的面世具有任何重大意义的话，韩寒新书的出版将会在中国创造一个历史事件，文章开头“空气越来越差，我必须上路了。我开着一台1','s4477716.jpg','韩寒|小说|我想和这个世界谈谈|公路小说|1988|中国文学|中国|文学|',NULL,NULL),(181,0,'失落的秘符','[美]\n            丹·布朗','    哈佛大学符号学家罗伯特·兰登意外受邀，于当晚前往华盛顿美国国会大厦做一个讲座。就在兰登到达的几分钟内，事情发生了匪夷所思的变化。国会大厦里出现了一件令人惊恐之物——一只人手，三根手指握成拳状，伸直的拇指和食指直指天穹，每根手指上都有具特殊符号学意义的诡异刺青。兰登根据戒指认出这是他最敬爱的导师彼得·所罗门——一位著名的共济会会员和慈善家的手，也辨识出这个手势与其上的刺青结合在一起是表示邀请','s4113637.jpg','丹·布朗|悬疑|小说|宗教|推理|美国|失落的秘符|外国文学|',NULL,NULL),(182,1,'冰与火之歌（卷二）','[美]\n            乔治·R·R·马丁','    继《权力的游戏》之后，乔治·马丁推出了另一部恢宏之作，续篇《列王的纷争》。与罗伯特·乔丹不同的是，乔治·马丁牢牢把握住了精妙的情节和那些真实得令人惊叹的人物。《列王的纷争》具备了一部优秀奇幻小说需要的所有元素：爱情故事、宫廷阴谋、背叛和战争，并且远不止于此。乔治·马丁所展示的人物能够在不觉中触及你的灵魂深处，引发你强烈的爱憎感，如同他们本是你真实生活中的一部分。这使得《冰与火之歌》不仅仅在','s1482630.jpg','冰与火之歌|奇幻|乔治·马丁|小说|史诗|美国|西方奇幻|魔幻|',NULL,NULL),(183,0,'荆棘鸟','[澳]\n            考琳·麦卡洛','    《荆棘鸟》是一部澳大利亚的家世小说，以女主人公梅吉和神父拉尔夫的爱情纠葛为主线，描写了克利里一家三代人的故事，时间跨度长达半个多世纪。拉尔夫一心向往教会的权力，却爱上了克利里家的美丽少女梅吉。为了他追求的“上帝”，他抛弃了世俗的爱情，然而内心又极度矛盾和痛苦。以此为中心，克利里家族十余名成员的悲欢离合也得以展现。    小说情节曲折生动，结构严密精巧，文笔清新婉丽。在描写荒蛮广漠的澳大利业','s2781615.jpg','荆棘鸟|外国文学|考琳・麦卡洛|澳大利亚|爱情|小说|经典|名著|',NULL,NULL),(184,0,'冰与火之歌（卷一）','[美]\n            乔治·R·R·马丁','    《冰与火之歌》由美国著名科幻奇幻小说家乔治·R·R·马丁所著，是当代奇幻文学一部影响深远的里程碑式的作品。它于1996年刚一问世，便以别具一格的结构，浩瀚辽阔的视野，错落有致的情节和生动活泼的语言，迅速征服了欧美文坛。迄今，本书已被译为数十种文字，并在各个国家迭获大奖。    本书主要描述了在一片虚构的中世纪大陆上所发生的一系列相互联系的宫廷斗争、疆场厮杀、游历冒险和魔法抗衡的故事，全书七','s1358984.jpg','冰与火之歌|奇幻|乔治·马丁|小说|史诗|西方奇幻|魔幻|外国文学|',NULL,NULL),(185,0,'东京奇谭集','[日]\n            村上春树','    《东京奇谭集》收有五部短篇小说，分别为《偶然的旅人》、《哈纳莱伊湾》、《在可能找见的地方，无论哪里》、《天天移动的肾脏石块》和《品川猴》。五篇奇谭中最奇的是最后一篇《品川猴》。一个叫安藤瑞纪的年轻女子得了一种“忘名症”，每星期有一两次想不起自己的名字，几经周折，查明“忘名症”起因于一只猴……虽说是“奇谭”，但村上春树在小说中讨论的仍然是形而上的人生问题。    谭通谈，奇谭即奇谈、奇闻之意','s1738888.jpg','村上春树|日本|小说|日本文学|东京奇谭集|短篇|文学|外国文学|',NULL,NULL),(186,0,'芒果街上的小屋','[美]\n            桑德拉·希斯内罗丝','    《芒果街上的小屋》是一本优美纯净的小书，一本“诗小说”。它由几十个短篇组成，一个短篇讲述一个人、一件事、一个梦想、几朵云，几棵树、几种感觉，语言清澈如流水，点缀着零落的韵脚和新奇的譬喻，如一首首长歌短调，各自成韵，又彼此钩连，汇聚出一个清晰世界，各样杂沓人生。所有的讲述都归于一个叙述中心：居住在芝加哥拉美移民社区芒果街上的女孩埃斯佩朗莎（埃斯佩朗莎，是西班牙语里的希望）。生就对弱的同情心和','s1668712.jpg','芒果街上的小屋|桑德拉·希斯内罗丝|外国文学|成长|小说|美国|文学|芒果街|',NULL,NULL),(187,0,'偷影子的人','[法]\n            马克·李维','    一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。他开始成为需要帮助者的心灵伙伴，为每个偷来的影子找到点亮生命的小小光芒。    某年灿烂的夏天，他在海边邂逅了一位又聋又哑的女孩。他该如何用自己的能力帮助她？他将如何信守与她共许的承诺？    一段缠绵多年的爱恋，一段进行中的不完美爱情，一部令整个法国为','s10339418.jpg','小说|马克李维|法国|小清新|法国文学|治愈|外国文学|成长|',NULL,NULL),(188,0,'老人与海','[美]\n            欧内斯特·海明威','    本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被他杀死了绑在小船的一边。在归程中，他再遭到一条鲨鱼的袭击，最后回港时只剩鱼头鱼尾和一条脊骨。而在老圣地亚哥出海的日子里，他的忘年好友一直在海边忠诚地等待，满怀信心地迎接着他的归来。','s1050021.jpg','海明威|老人与海|外国文学|小说|经典|美国|名著|外国名著|',NULL,NULL),(189,0,'活着','余华','    地主少爷福贵嗜赌成性，终于赌光了家业一贫如洗，穷困之中的福贵因为母亲生病前去求医，没想到半路上被国民党部队抓了壮丁，后被解放军所俘虏，回到家乡他才知道母亲已经去世，妻子家珍含辛茹苦带大了一双儿女，但女儿不幸变成了聋哑人，儿子机灵活泼……    然而，真正的悲剧从此才开始渐次上演，每读一页，都让我们止不住泪湿双眼，因为生命里难得的温情将被一次次死亡撕扯得粉碎，只剩得老了的福贵伴随着一头老牛在','s23836852.jpg','余华|活着|小说|中国文学|人生|当代|文学|生活|',NULL,NULL),(190,0,'白银时代','王小波','    《白银时代》是《时代三部曲》之二。这是由一组虚拟时空的作品构成的长篇。这组作品写的是本世纪长大而活到下世纪的知识分子，在跨世纪的生存过程中，回忆他们的上辈、描述他们的上辈、描述他们自己的人生。与其说这是对未来世界的预测，不如说是现代生活的寓言。','s1072540.jpg','王小波|小说|白银时代|中国文学|当代|文学|中国|经典|',NULL,NULL),(191,0,'陆犯焉识','[美]\n            严歌苓','    《陆犯焉识》内容简介：陆焉识本是上海大户人家才子+公子型的少爷，聪慧而倜傥，会多国语言，也会讨女人喜欢。父亲去世后，年轻无嗣的继母冯仪芳为了巩固其在家族中的地位，软硬兼施地使他娶了自己的娘家侄女冯婉喻。没有爱情的陆焉识很快出国留学，在美国华盛顿毫无愧意地过了几年花花公子的自由生活。毕业回国后的陆焉识博士开始了风流得意的大学教授生活，也开始了在风情而精明的继母和温婉而坚韧的妻子夹缝间尴尬的家','s6987353.jpg','严歌苓|小说|中国文学|人性|中国现当代文学|历史|中国|文革|',NULL,NULL),(192,0,'在细雨中呼喊','余华','    作者以第一人称讲述了一个家庭的欢乐和苦痛，细腻地刻画了柔弱的母亲如何完成了自己忍受的一生，她唯一爆发出来的愤怒是在弥留之际；名叫孙广财的父亲又是如何骄傲地将自己培养成一名彻头彻尾的无赖，他对待自己的父亲和对待自己的儿子，就像对待自己的绊脚石。家中的三兄弟的道路只是短暂地有过重叠，随即就又叉向了各自的方向。','s1336441.jpg','余华|小说|在细雨中呼喊|中国文学|当代文学|中国|文学|人生|',NULL,NULL),(193,0,'朗读者','[德]\n            本哈德·施林克','    战后的德国萧条破败，一个15岁的少年在电车上病倒了，他独自下车，行走在滂沱大雨中，最后在一个逼仄的过道里吐得一塌糊涂，一个36岁的陌生女人帮助了他……    3个月后，少年伯格从突如其来的猩红热侵袭中恢复过来，他只是为了去感谢那个曾经在他生病时给予过他帮助的女人，但是，情欲，或者是爱情，在15岁的少年伯格心中渐渐燃烧起来。    电车售票员汉娜总是让伯格为她朗读，《荷马史诗》、《带小狗的女','s3628415.jpg','德国|小说|朗读者|外国文学|人性|电影原著|本哈德·施林克|爱情|',NULL,NULL),(194,0,'看不见的城市','[意]\n            伊塔洛·卡尔维诺','    《看不见的城市》的第一版是在1972年11月由都灵的埃伊纳乌迪出版社出版的。在这本书出版的时候，从1972年底到1973年初，卡尔维诺曾在多家报纸的文章和访谈中谈到它。\n    下面用卡尔维诺1983年3月29日在纽约哥伦比亚大学写作硕士班的一次讲座中的文字，来介绍“奥斯卡”丛书中的这个新版。讲座原为英文，这里用的是意大利文本，它是以1972到1973年的两次访谈为基础的，并且大部分在意大','s1804710.jpg','卡尔维诺|看不见的城市|意大利|外国文学|小说|文学|意大利文学|城市|',NULL,NULL),(195,0,'我在回忆里等你','辛夷坞','    他有穷困的童年，没有为爱痴狂的勇气；她有最灿烂的笑容，没有对残酷现实的感同身受。所以他和她，有最伤感的幸福，只期待在回忆的尽头相遇。    从他成为她家养子的那一天起，他只会亦步亦趋，不会有哪怕一步的逾矩，却为了她，瞒天过海，偷尝爱神无意间洒落的丝丝甘甜，就算饮鸩止渴，也甘之如饴。.而在那最最甜蜜的往昔啊，他却没有说出过一句“我爱你”……    他和她在一起，有一种孤零零的温暖，好像在失落','s4442213.jpg','辛夷坞|我在回忆里等你|小说|青春|爱情|言情|现代都市|网络小说|',NULL,NULL),(196,0,'废都','贾平凹','    荆歌：    许多时候，性爱的描写成全了整个作品。比如沈从文，他作品中的性爱，使我们感到性是一种多么美好的东西，很健康，很正常，生机勃勃的。但有时候，性描写，会毁了一部作品。我觉得贾平凹的《废都》就是一个最好的例子。我是十分喜欢《废都》这部作品的。我觉得它是20世纪末的绝唱，很多年以后，人们可以在《废都》中深刻了解中国20世纪末的社会面貌和世俗精神。但是，这部作品因为有大量露骨的性描写（我','s1456781.jpg','贾平凹|小说|废都|中国文学|当代文学|中国|社会|文学|',NULL,NULL),(197,0,'无声告白','[美]\n            伍绮诗','    我们终此一生，就是要摆脱他人的期待，找到真正的自己。    ——————————    莉迪亚死了，可他们还不知道。    莉迪亚是家中老二，李先生和李太太的掌上明珠，她遗传了母亲的蓝眼睛和父亲的黑头发。父母深信，莉迪亚一定能实现他们无法实现的梦想。莉迪亚的尸体被发现后，她的父亲内疚不已，母亲则一心报复。莉迪亚的哥哥觉得，隔壁的坏小子铁定脱不了关系，只有莉迪亚的妹妹看得一清二楚，而且，她很','s28109182.jpg','小说|成长|好书，值得一读|华裔|美国文学|美国|外国文学|我想读这本书|',NULL,NULL),(198,0,'别相信任何人','[英]S.J.沃森','    每天醒来，克丽丝汀都身处一个陌生的房间，身旁躺着一个不认识的男人。    当她面对镜子，发现自己居然老了20岁。那个男人会告诉他，你今年47岁，20年前遭遇严车祸，从此记忆受损。我是你的丈夫本，你很安全。    克丽丝汀的记忆只能保持一天，每天醒来，就再也不记得昨天发生过事。关于她世界里的一切，全部只能由本告知。不过每一天，她也会接到陌生的纳什医生来电，要她到衣橱后方找出日记。原来，克丽丝','s6919674.jpg','悬疑|小说|别相信任何人|心理学|英国|推理小说|外国文学|英国文学|',NULL,NULL),(199,0,'情书','[日]            岩井俊二','日本神户，渡边博子在未婚夫藤井树的三周年祭日上又一次陷入到悲痛和思念之中。博子在藤井树的中学同学录里找到了他在小樽市读书时的地址。由于抑制不住对爱人的怀念，博子按着这个地址给远在天国的藤井树寄去了一封充满问候和思念的书信。    不可思议的是，不久博子竟然收到了署名为“藤井树”的回信。经过进一步了解，这个藤井树是一个年轻的女子，而且她还曾经是男性藤井树的同班同学，原来是博子从同学录中误抄了','s1127135.jpg','岩井俊二|情书|日本|爱情|小说|日本文学|日本小说|电影|',1,1),(200,1,'挪威的森林','[日]            村上春树','这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，后来木月自杀了。一年后渡边同直子不期而遇并开始交往。此时的直子已变得娴静腼腆，美丽晶莹的眸子里不时掠过一丝难以捕捉的阴翳。两人只是日复一日地在落叶飘零的东京街头漫无目标地或前或后或并肩行走不止。直子20岁生日的晚上两人发生了性关系，不料','s1228930.jpg','村上春树|挪威的森林|日本文学|小说|日本|爱情|青春|外国文学|',1,1),(201,0,'北京故事','房哥','北京爱情故事','爱情故事.jpg','爱情',1,1);
/*!40000 ALTER TABLE `user_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_book_collect`
--

DROP TABLE IF EXISTS `user_book_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_book_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_book_collect_book_id_user_id_627a6a4e_uniq` (`book_id`,`user_id`),
  KEY `user_book_collect_user_id_24850fb2_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_book_collect_book_id_1fec95bd_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`),
  CONSTRAINT `user_book_collect_user_id_24850fb2_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_book_collect`
--

LOCK TABLES `user_book_collect` WRITE;
/*!40000 ALTER TABLE `user_book_collect` DISABLE KEYS */;
INSERT INTO `user_book_collect` VALUES (2,71,1),(5,94,1),(6,182,1),(1,200,1);
/*!40000 ALTER TABLE `user_book_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_commen`
--

DROP TABLE IF EXISTS `user_commen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_commen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(64) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `good` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_commen_book_id_b59c1e62_fk_user_book_id` (`book_id`),
  KEY `user_commen_user_id_d2411f96_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_commen_book_id_b59c1e62_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`),
  CONSTRAINT `user_commen_user_id_d2411f96_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_commen`
--

LOCK TABLES `user_commen` WRITE;
/*!40000 ALTER TABLE `user_commen` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_commen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_liuyan`
--

DROP TABLE IF EXISTS `user_liuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(32) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `soncon` longtext,
  `sontime` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_liuyan_user_id_67f7424d_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_liuyan_user_id_67f7424d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_liuyan`
--

LOCK TABLES `user_liuyan` WRITE;
/*!40000 ALTER TABLE `user_liuyan` DISABLE KEYS */;
INSERT INTO `user_liuyan` VALUES (1,'你好阿','2019-05-01 16:32:28.362153',NULL,'2019-05-02',1),(2,'今天天气不错','2019-05-01 16:32:35.959875',NULL,'2019-05-02',1),(3,'这个论坛做的翡翠号','2019-05-01 16:32:47.503395',NULL,'2019-05-02',1);
/*!40000 ALTER TABLE `user_liuyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rate`
--

DROP TABLE IF EXISTS `user_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` double NOT NULL,
  `addtime` datetime(6) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_rate_book_id_b0688c7d_fk_user_book_id` (`book_id`),
  KEY `user_rate_user_id_b85a90b9_fk_user_user_id` (`user_id`),
  CONSTRAINT `user_rate_book_id_b0688c7d_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`),
  CONSTRAINT `user_rate_user_id_b85a90b9_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rate`
--

LOCK TABLES `user_rate` WRITE;
/*!40000 ALTER TABLE `user_rate` DISABLE KEYS */;
INSERT INTO `user_rate` VALUES (3,5,'2019-05-05 06:10:37.042196',1,1),(4,5,'2019-05-05 06:10:47.315521',2,1),(5,5,'2019-05-05 06:49:34.449291',182,1),(6,5,'2019-05-06 13:29:32.621615',1,1);
/*!40000 ALTER TABLE `user_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_score`
--

DROP TABLE IF EXISTS `user_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `com` int(11) NOT NULL,
  `fen` double NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_id` (`book_id`),
  CONSTRAINT `user_score_book_id_c52e401d_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_score`
--

LOCK TABLES `user_score` WRITE;
/*!40000 ALTER TABLE `user_score` DISABLE KEYS */;
INSERT INTO `user_score` VALUES (1,3,2,11,1),(2,0,1,0,125),(3,1,0,5,2),(4,1,2,5,182);
/*!40000 ALTER TABLE `user_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

LOCK TABLES `user_user` WRITE;
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
INSERT INTO `user_user` VALUES (1,'fang199879','199879','15993492804','fangge','qq','935913424@qq.com');
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 12:15:46
