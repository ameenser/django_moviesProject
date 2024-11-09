-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `auth_group`
--
CREATE DATABASE  IF NOT EXISTS  movies;
USE movies
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie'),(29,8,'add_comment','Can add comment'),(30,8,'change_comment','Can change comment'),(31,8,'delete_comment','Can delete comment'),(32,8,'view_comment','Can view comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` DATETIME DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` DATETIME DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$oaI8IE6tfM5UK92nd1LzLT$htH7vLB/f/pFzyqQBsRTBHYD5viOwbQzv7F3d6m0hnc=','2024-10-31',1,'ameen','','ameenserh9@gmail.com',1,1,'2024-09-24',''),(2,'pbkdf2_sha256$870000$0omxEAU4YqKeJJNKWHw1wu$+2pJU+1xUVmY5S00gcy3kS22QrjAI4kOTd9c5Kz8qsc=','2024-09-25',0,'ameenser','','',0,1,'2024-09-25','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(16) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(36) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'first movie',1,'[{\"added\": {}}]',7,1,'2024-09-24'),(2,2,'second movie',1,'[{\"added\": {}}]',7,1,'2024-09-24'),(3,3,'third movie',1,'[{\"added\": {}}]',7,1,'2024-09-24'),(4,3,'third movie',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-24'),(5,2,'second movie',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-24'),(6,1,'first movie',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-24'),(7,3,'third movie',3,'',7,1,'2024-09-25'),(8,2,'second movie',3,'',7,1,'2024-09-25'),(9,1,'first movie',3,'',7,1,'2024-09-25'),(10,4,'The Garfield',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(11,5,'The Painter',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(12,6,'The Green Knight',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(13,7,'Smile',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(14,8,'Mean Streets',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(15,9,'Kill Bill',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(16,10,'Bad Boys',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(17,11,'Agent',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(18,12,'Top Gun',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(19,13,'Bab El-Hara',1,'[{\"added\": {}}]',7,1,'2024-09-25'),(20,8,'ameenser: df',3,'',8,1,'2024-09-25'),(21,7,'ameen: hgf',3,'',8,1,'2024-09-25'),(22,6,'ameen: a',3,'',8,1,'2024-09-25'),(23,5,'ameen: aa',3,'',8,1,'2024-09-25'),(24,4,'ameenser: aaa',3,'',8,1,'2024-09-25'),(25,3,'ameenser: Hi',3,'',8,1,'2024-09-25'),(26,2,'ameen: hi',3,'',8,1,'2024-09-25'),(27,1,'ameen: hi',3,'',8,1,'2024-09-25');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'movies','comment'),(7,'movies','movie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-24'),(2,'auth','0001_initial','2024-09-24'),(3,'admin','0001_initial','2024-09-24'),(4,'admin','0002_logentry_remove_auto_add','2024-09-24'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-24'),(6,'contenttypes','0002_remove_content_type_name','2024-09-24'),(7,'auth','0002_alter_permission_name_max_length','2024-09-24'),(8,'auth','0003_alter_user_email_max_length','2024-09-24'),(9,'auth','0004_alter_user_username_opts','2024-09-24'),(10,'auth','0005_alter_user_last_login_null','2024-09-24'),(11,'auth','0006_require_contenttypes_0002','2024-09-24'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-24'),(13,'auth','0008_alter_user_username_max_length','2024-09-24'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-24'),(15,'auth','0010_alter_group_name_max_length','2024-09-24'),(16,'auth','0011_update_proxy_permissions','2024-09-24'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-24'),(18,'movies','0001_initial','2024-09-24'),(19,'sessions','0001_initial','2024-09-24'),(20,'movies','0002_movie_thumb','2024-09-24'),(21,'movies','0003_comment','2024-09-25');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(228) DEFAULT NULL,
  `expire_date` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dugry8se0oqqt68z6zz5sh4016pkdful','.eJxVjEEOgjAQRe_StWmmpUypS_ecgUw7g6CmTSisjHcXEha6_e-9_1YDbes0bFWWYWZ1VUZdfrdI6Sn5APygfC86lbwuc9SHok9adV9YXrfT_TuYqE57PVovpnPAhLZrRzDNCBikIQiEYthERgcNohFqkcF6m3YRXOp8DAnU5wvIkzcB:1st5vX:nyy_qq-C80vLdGQqN3FlxIcghfWD4ZCh4VDv0sQVIAU','2024-10-08');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_comment`
--

DROP TABLE IF EXISTS `movies_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_comment` (
  `id` varchar(0) DEFAULT NULL,
  `text` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `movie_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_comment`
--

LOCK TABLES `movies_comment` WRITE;
/*!40000 ALTER TABLE `movies_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(16) DEFAULT NULL,
  `slug` varchar(18) DEFAULT NULL,
  `body` text,
  `date` DATETIME DEFAULT NULL,
  `thumb` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (4,'The Garfield','the-garfield-movie','he Garfield Movie is a 2024 American animated comedy film based on the comic strip Garfield created by Jim Davis. Directed by Mark Dindal from a screenplay by Paul A. Kaplan, Mark Torgove, and David Reynolds, the film stars Chris Pratt as the voice of the titular character, alongside the voices of Samuel L. Jackson, Hannah Waddingham, Ving Rhames, Nicholas Hoult, Cecily Strong, Harvey Guillén, Brett Goldstein, Bowen Yang, and Snoop Dogg. In the film, Garfield is reunited with his long-lost father, a street cat named Vic, before being forced into joining him on a high-stakes adventure. It is the sixth Garfield film adaptation since Garfield\'s Pet Force, which was released fifteen years prior.','2024-09-25','the-garfield-movie_WsHEOy9.jpg'),(5,'The Painter','the-painter-movie','The Painter is a 2024 American action thriller film directed by Kimani Ray Smith and written by Brian Buccellato. It stars Charlie Weber, Jon Voight, Marie Avgeropoulos, and Madison Bailey.','2024-09-25','the_painter_qviXxz3.jpg'),(6,'The Green Knight','the-green-knight','The Green Knight is a 2021 epic medieval fantasy adventure[5] film written, produced, directed and edited by David Lowery that is an adaptation from the 14th-century poem Sir Gawain and the Green Knight. The film stars Dev Patel as Gawain, who sets out on a journey to test his courage and face the Green Knight. It also stars Alicia Vikander, Joel Edgerton, Sarita Choudhury, Sean Harris, and Ralph Ineson.','2024-09-25','the_green_knight.png'),(7,'Smile','smile-movie','Smile is a 2022 American psychological supernatural horror film written and directed by Parker Finn, and based on Finn\'s short film Laura Hasn\'t Slept (2020). The film stars Sosie Bacon as a therapist who witnesses the bizarre suicide of a patient, then goes through increasingly disturbing and daunting experiences that lead her to believe she is experiencing something supernatural. It also stars Jessie T. Usher, Kyle Gallner, Kal Penn, and Rob Morgan, as well as Caitlin Stasey reprising her role from Laura Hasn\'t Slept.','2024-09-25','smile_GEDW3ts.png'),(8,'Mean Streets','mean-streets-movie','Mean Streets is a 1973 American crime drama film directed by Martin Scorsese, co-written by Scorsese and Mardik Martin, and starring Robert De Niro and Harvey Keitel. It was produced by Warner Bros. The film premiered at the New York Film Festival on October 2, 1973, and was released on October 14.[3] De Niro won the National Society of Film Critics and the New York Film Critics Circle award for Best Supporting Actor for his role as \"Johnny Boy\" Civello.','2024-09-25','mean_streets.png'),(9,'Kill Bill','kill-bill-movie','Kill Bill: Volume 1 is a 2003 American martial arts film written and directed by Quentin Tarantino. It stars Uma Thurman as the Bride, who swears revenge on a group of assassins (Lucy Liu, Michael Madsen, Daryl Hannah, and Vivica A. Fox) and their leader, Bill (David Carradine), after they try to kill her and her unborn child. Her journey takes her to Tokyo, where she battles the yakuza.','2024-09-25','kill_bill.png'),(10,'Bad Boys','bad-boys-movie','Bad Boys is a series of American action comedy films starring Will Smith and Martin Lawrence as two detectives in the Miami Police Department, Mike Lowrey and Marcus Burnett. The series was created by George Gallo. Joe Pantoliano appears in all four films, and Theresa Randle appears in the first three films being replaced by Tasha Smith in the fourth film. Michael Bay directed the first two films and Adil & Bilall directed the third and fourth. Gabrielle Union, who starred in the second installment, later starred alongside Jessica Alba in a spin-off television series, L.A.\'s Finest.','2024-09-25','bad_boys_gTPhlm9.jpg'),(11,'Agent','agent-movie','Agent is a 2023 Indian Telugu-language spy action thriller film directed by Surender Reddy and produced by Anil Sunkara and Rambrahmam Sunkara under AK Entertainments. The film stars Mammootty and Akhil Akkineni alongside Dino Morea, Sakshi Vaidya and Vikramjeet Virk in supporting roles. The film marks the debut of Sakshi Vaidya and Dino Morea in Telugu cinema.[5]','2024-09-25','agetnt_tSIvRCS.png'),(12,'Top Gun','top-gun-movie','Top Gun is a 1986 American action drama film[2] directed by Tony Scott and produced by Don Simpson and Jerry Bruckheimer, with distribution by Paramount Pictures. The screenplay was written by Jim Cash and Jack Epps Jr., and was inspired by an article titled \"Top Guns\", written by Ehud Yonay and published in California magazine three years earlier. It stars Tom Cruise as Lieutenant Pete \"Maverick\" Mitchell, a young naval aviator aboard the aircraft carrier USS Enterprise. He and his radar intercept officer, Lieutenant (junior grade) Nick \"Goose\" Bradshaw (Anthony Edwards), are given the chance to train at the United States Navy\'s Fighter Weapons School (Top Gun) at Naval Air Station Miramar in San Diego, California. Kelly McGillis, Val Kilmer and Tom Skerritt also appear in supporting roles.','2024-09-25','top_gun.png'),(13,'Bab El-Hara','bab-el-hara-movie','Bab Al-Hara (Arabic: باب الحارة; \"The Neighbourhood\'s Gate\") is one of the most popular television series in the Arab world,[1] reportedly watched by millions of people in the Arab world.[2][3] The series chronicles the daily happenings and family dramas in a neighborhood in Damascus, Syria in the inter-war period under French rule when the local population yearned for independence.[3] The appeal is cross-generational, and viewers include Muslims, Christians, Druze and Jews from Arab countries. The show was a huge success in the Arab World, so MBC managed to renew it for a second season. The series\' second season was even a bigger success, and the finale was watched by over 50 million viewers around the Arab World. It was renewed for 10 more seasons.','2024-09-25','default.png');
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',21),('django_admin_log',27),('django_content_type',8),('auth_permission',32),('auth_group',0),('auth_user',2),('movies_movie',13),('movies_comment',8);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:46
