-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: frizone
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB-1:10.10.2+maria~ubu2204

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
-- Table structure for table `cl_acc_validations`
--

DROP TABLE IF EXISTS `cl_acc_validations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_acc_validations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(120) NOT NULL DEFAULT '0',
  `json` text DEFAULT NULL,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_acc_validations`
--

LOCK TABLES `cl_acc_validations` WRITE;
/*!40000 ALTER TABLE `cl_acc_validations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_acc_validations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_ads`
--

DROP TABLE IF EXISTS `cl_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `cover` varchar(3000) NOT NULL DEFAULT '',
  `company` varchar(120) NOT NULL DEFAULT '',
  `target_url` varchar(1200) NOT NULL DEFAULT '',
  `status` enum('orphan','active','inactive') NOT NULL DEFAULT 'orphan',
  `approved` enum('Y','N') NOT NULL DEFAULT 'N',
  `audience` varchar(3000) NOT NULL DEFAULT '[]',
  `description` varchar(600) NOT NULL DEFAULT '',
  `cta` varchar(300) NOT NULL DEFAULT '',
  `budget` varchar(15) NOT NULL DEFAULT '0.00',
  `clicks` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_ads`
--

LOCK TABLES `cl_ads` WRITE;
/*!40000 ALTER TABLE `cl_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_affiliate_payouts`
--

DROP TABLE IF EXISTS `cl_affiliate_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_affiliate_payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(120) NOT NULL DEFAULT '',
  `amount` varchar(25) NOT NULL DEFAULT '0.00',
  `bonuses` int(11) NOT NULL DEFAULT 0,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_affiliate_payouts`
--

LOCK TABLES `cl_affiliate_payouts` WRITE;
/*!40000 ALTER TABLE `cl_affiliate_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_affiliate_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_blocks`
--

DROP TABLE IF EXISTS `cl_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_blocks`
--

LOCK TABLES `cl_blocks` WRITE;
/*!40000 ALTER TABLE `cl_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_bookmarks`
--

DROP TABLE IF EXISTS `cl_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publication_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_bookmarks`
--

LOCK TABLES `cl_bookmarks` WRITE;
/*!40000 ALTER TABLE `cl_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_chats`
--

DROP TABLE IF EXISTS `cl_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL DEFAULT 0,
  `user_two` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_chats`
--

LOCK TABLES `cl_chats` WRITE;
/*!40000 ALTER TABLE `cl_chats` DISABLE KEYS */;
INSERT INTO `cl_chats` VALUES
(1,2,1,'1669955343'),
(2,1,2,'1669955343');
/*!40000 ALTER TABLE `cl_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_configs`
--

DROP TABLE IF EXISTS `cl_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `value` varchar(3000) NOT NULL DEFAULT '',
  `regex` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_configs`
--

LOCK TABLES `cl_configs` WRITE;
/*!40000 ALTER TABLE `cl_configs` DISABLE KEYS */;
INSERT INTO `cl_configs` VALUES
(1,'Theme','theme','default',''),
(2,'Site name','name','FriZone','/^(.){0,50}$/'),
(3,'Site title','title','FriZone','/^(.){0,150}$/'),
(4,'Site description','description','FriZone','/^(.){0,350}$/'),
(5,'SEO keywords','keywords','social,socialnetwork',''),
(6,'Site logo','site_logo','statics/img/logo.png',''),
(7,'Site favicon','site_favicon','statics/img/favicon.png',''),
(8,'Chat wallpaper','chat_wp','statics/img/chatwp/default.png',''),
(9,'Account activation','acc_validation','off','/^(on|off)$/'),
(10,'Default language','language','english',''),
(11,'AS3 storage','as3_storage','off','/^(on|off)$/'),
(12,'E-mail address','email','admin@admin.com',''),
(13,'SMTP server','smtp_or_mail','smtp','/^(smtp|mail)$/'),
(14,'SMTP host','smtp_host','smtp.gmail.com',''),
(15,'SMTP password','smtp_password','ryqzwrkkpcqioizv','/^(.){0,50}$/'),
(16,'SMTP encryption','smtp_encryption','tls','/^(ssl|tls)$/'),
(17,'SMTP port','smtp_port','587','/^[0-9]{1,11}$/'),
(18,'SMTP username','smtp_username','sysadmin@elofun.com',''),
(19,'FFMPEG binary','ffmpeg_binary','core/libs/ffmpeg/ffmpeg','/^(.){0,550}$/'),
(20,'Giphy api','giphy_api_key','EEoFiCosGuyEIWlXnRuw4McTLxfjCrl1','/^(.){0,150}$/'),
(21,'Google analytics','google_analytics','',''),
(22,'Facebook API ID','facebook_api_id','332923835680324','/^(.){0,150}$/'),
(23,'Facebook API Key','facebook_api_key','c3331058655dbc70fc63739c15d73b81','/^(.){0,150}$/'),
(24,'Twitter API ID','twitter_api_id','','/^(.){0,150}$/'),
(25,'Twitter API Key','twitter_api_key','','/^(.){0,150}$/'),
(26,'Google API ID','google_api_id','','/^(.){0,150}$/'),
(27,'Google API Key','google_api_key','','/^(.){0,150}$/'),
(28,'Script version','version','1.3.3',''),
(29,'Last backup','last_backup','0',''),
(30,'Sitemap last update','sitemap_update','',''),
(31,'Affiliate bonus rate','aff_bonus_rate','0.10','/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(32,'Affiliates System','affiliates_system','on','/^(on|off)$/'),
(33,'PayPal API Public key','paypal_api_key','',''),
(34,'PayPal API Secret key','paypal_api_pass','',''),
(35,'PayPal Payment Mode','paypal_mode','sandbox','/^(sandbox|live)$/'),
(36,'Site currency','site_currency','vnd',' \r\n/^([a-zA-Z]){2,7}$/'),
(37,'Advertising system','advertising_system','on','/^(on|off)$/'),
(38,'Ad conversion rate','ad_conversion_rate','0.05','/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(39,'Max post length','max_post_len','600','/^[0-9]{1,11}$/'),
(40,'Google oAuth','google_oauth','off','/^(on|off)$/'),
(41,'Twitter oAuth','twitter_oauth','off','/^(on|off)$/'),
(42,'Facebook oAuth','facebook_oauth','on','/^(on|off)$/'),
(43,'Google ads (Horiz-banner)','google_ad_horiz','',''),
(44,'Google ads (Vert-banner)','google_ad_vert','',''),
(45,'Default country','country_id','1','/^[0-9]{1,11}$/'),
(46,'Firebase API key','firebase_api_key','',''),
(47,'Push notifications','push_notifs','on','/^(on|off)$/'),
(48,'Page update interval','page_update_interval','30','/^[0-9]{1,11}$/'),
(49,'Chat update interval','chat_update_interval','5','/^[0-9]{1,11}$/'),
(50,'Amazon S3 storage','as3_storage','off','/^(on|off)$/'),
(51,'AS3 bucket name','as3_bucket_name','',''),
(52,'Amazon S3 API key','as3_api_key','',''),
(53,'Amazon S3 API secret key','as3_api_secret_key','',''),
(54,'AS3 bucket region','as3_bucket_region','us-east-1',''),
(55,'Max upload size','max_upload_size','1073741824','/^[0-9]{1,11}$/'),
(56,'Max post audio record length','post_arec_length','30','/^[0-9]{1,11}$/'),
(57,'Wallet topup min amount','wallet_min_amount','50','/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(58,'','','',''),
(59,'Currency symbol position','currency_symbol_pos','after','/^(before|after)$/'),
(60,'Aff payout min amount','aff_payout_min','50','/^([0-9]{1,3}\\\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(61,'Default color scheme','default_color_scheme','default',''),
(62,'Default BG color','default_bg_color','dark',''),
(63,'Android app (Google play item URL)','android_app_url','',''),
(64,'IOS app (App store item URL)','ios_app_url','',''),
(65,'User registration system','user_signup','on','/^(on|off)$/'),
(66,'Cookie warning popup','cookie_warning_popup','on','/^(on|off)$/'),
(67,'Google reCAPTCHA','google_recaptcha','off','/^(on|off)$/'),
(68,'Google reCAPTCHA Sitekey','google_recap_key1','',''),
(69,'Google reCAPTCHA Secret key','google_recap_key2','',''),
(70,'E-Mail notifications','email_notifications','off','/^(on|off)$/'),
(71,'Swifts system status (Daily stories)','swift_system_status','on','/^(on|off)$/'),
(72,'PayPal Payment Status','paypal_method_status','on','/^(on|off)$/'),
(73,'PayStack API Public key','paystack_api_key','',''),
(74,'Paystack API Secret key','paystack_api_pass','',''),
(75,'Paystack Payment Status','paystack_method_status','on','/^(on|off)$/'),
(76,'Stripe API Secret key','stripe_api_pass','',''),
(77,'Stripe API Public key','stripe_api_key','',''),
(78,'Stripe Payment Status','stripe_method_status','on','/^(on|off)$/'),
(79,'AliPay Payment Status','alipay_method_status','on','/^(on|off)$/');
/*!40000 ALTER TABLE `cl_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_connections`
--

DROP TABLE IF EXISTS `cl_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(11) NOT NULL DEFAULT 0,
  `following_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `time` varchar(25) NOT NULL DEFAULT '25',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_connections`
--

LOCK TABLES `cl_connections` WRITE;
/*!40000 ALTER TABLE `cl_connections` DISABLE KEYS */;
INSERT INTO `cl_connections` VALUES
(1,2,1,'active','1669955312');
/*!40000 ALTER TABLE `cl_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_hashtags`
--

DROP TABLE IF EXISTS `cl_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posts` int(11) NOT NULL DEFAULT 0,
  `tag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_hashtags`
--

LOCK TABLES `cl_hashtags` WRITE;
/*!40000 ALTER TABLE `cl_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_invite_links`
--

DROP TABLE IF EXISTS `cl_invite_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_invite_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(300) NOT NULL DEFAULT '',
  `role` set('user','admin') NOT NULL DEFAULT 'user',
  `mnu` varchar(11) NOT NULL DEFAULT '1',
  `expires_at` varchar(25) NOT NULL DEFAULT '0',
  `registered_users` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_invite_links`
--

LOCK TABLES `cl_invite_links` WRITE;
/*!40000 ALTER TABLE `cl_invite_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_invite_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_messages`
--

DROP TABLE IF EXISTS `cl_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent_by` int(11) NOT NULL DEFAULT 0,
  `sent_to` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `message` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `media_file` varchar(1000) NOT NULL DEFAULT '',
  `media_type` varchar(25) NOT NULL DEFAULT 'none',
  `seen` varchar(25) NOT NULL DEFAULT '0',
  `deleted_fs1` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_fs2` enum('Y','N') NOT NULL DEFAULT 'N',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_messages`
--

LOCK TABLES `cl_messages` WRITE;
/*!40000 ALTER TABLE `cl_messages` DISABLE KEYS */;
INSERT INTO `cl_messages` VALUES
(1,2,1,2,'Hi','','none','1669956603','N','N','1669955336'),
(2,2,1,2,'Image','upload/images/2022/12/f8mgCjUvTATTkaTtSQgC_02_492e16858345249266dc9965bec598b5_image_original.jpg','image','1669956603','N','N','1669955343');
/*!40000 ALTER TABLE `cl_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_notifications`
--

DROP TABLE IF EXISTS `cl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL DEFAULT 0,
  `recipient_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT 'none',
  `entry_id` int(11) NOT NULL DEFAULT 0,
  `json` varchar(1200) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_notifications`
--

LOCK TABLES `cl_notifications` WRITE;
/*!40000 ALTER TABLE `cl_notifications` DISABLE KEYS */;
INSERT INTO `cl_notifications` VALUES
(1,2,1,'1','subscribe',2,'[]','1669955312');
/*!40000 ALTER TABLE `cl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_posts`
--

DROP TABLE IF EXISTS `cl_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `publication_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('post','repost') NOT NULL DEFAULT 'post',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_posts`
--

LOCK TABLES `cl_posts` WRITE;
/*!40000 ALTER TABLE `cl_posts` DISABLE KEYS */;
INSERT INTO `cl_posts` VALUES
(2,1,3,'post','1669909637'),
(3,1,5,'post','1669952275'),
(4,1,6,'post','1669952798');
/*!40000 ALTER TABLE `cl_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_profile_reports`
--

DROP TABLE IF EXISTS `cl_profile_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_profile_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `reason` int(3) NOT NULL DEFAULT 0,
  `comment` varchar(3000) NOT NULL DEFAULT '',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_profile_reports`
--

LOCK TABLES `cl_profile_reports` WRITE;
/*!40000 ALTER TABLE `cl_profile_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_profile_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_pub_reports`
--

DROP TABLE IF EXISTS `cl_pub_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_pub_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(3) NOT NULL DEFAULT '0',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `comment` varchar(1210) NOT NULL DEFAULT '',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_pub_reports`
--

LOCK TABLES `cl_pub_reports` WRITE;
/*!40000 ALTER TABLE `cl_pub_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_pub_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_publications`
--

DROP TABLE IF EXISTS `cl_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` enum('text','video','image','gif','poll','audio') NOT NULL DEFAULT 'text',
  `replys_count` int(11) NOT NULL DEFAULT 0,
  `reposts_count` int(11) NOT NULL DEFAULT 0,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive','deleted','orphan') NOT NULL DEFAULT 'active',
  `thread_id` int(11) NOT NULL DEFAULT 0,
  `target` enum('publication','pub_reply') NOT NULL DEFAULT 'publication',
  `og_data` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `poll_data` text DEFAULT NULL,
  `priv_wcs` enum('everyone','followers') NOT NULL DEFAULT 'everyone',
  `priv_wcr` enum('everyone','followers','mentioned') NOT NULL DEFAULT 'everyone',
  `time` varchar(25) NOT NULL DEFAULT '0',
  `edited` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_publications`
--

LOCK TABLES `cl_publications` WRITE;
/*!40000 ALTER TABLE `cl_publications` DISABLE KEYS */;
INSERT INTO `cl_publications` VALUES
(3,1,'Hi','text',0,0,0,'active',0,'publication','',NULL,'everyone','everyone','1669909637','0'),
(5,1,'Mô hình HPA trong triển khai Kubernetes','image',0,0,0,'active',0,'publication','',NULL,'everyone','everyone','1669952275','0'),
(6,1,'Môi trường làm việc văn phòng','image',1,0,1,'active',0,'publication','',NULL,'everyone','everyone','1669952798','0'),
(7,1,'Có đẹp không','poll',0,0,0,'active',6,'pub_reply','','[{\"option\": \"Có\",\"voters\": [1],\"votes\": 1},{\"option\": \"Không\",\"voters\": [],\"votes\": 0}]','everyone','everyone','1669953525','0');
/*!40000 ALTER TABLE `cl_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_publikes`
--

DROP TABLE IF EXISTS `cl_publikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_publikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_publikes`
--

LOCK TABLES `cl_publikes` WRITE;
/*!40000 ALTER TABLE `cl_publikes` DISABLE KEYS */;
INSERT INTO `cl_publikes` VALUES
(1,6,1,'1669953503');
/*!40000 ALTER TABLE `cl_publikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_pubmedia`
--

DROP TABLE IF EXISTS `cl_pubmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_pubmedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('image','video','gif','audio') NOT NULL,
  `src` varchar(1200) NOT NULL DEFAULT '',
  `json_data` varchar(3000) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_pubmedia`
--

LOCK TABLES `cl_pubmedia` WRITE;
/*!40000 ALTER TABLE `cl_pubmedia` DISABLE KEYS */;
INSERT INTO `cl_pubmedia` VALUES
(2,5,'image','upload/images/2022/12/63T6XvNVoGOuydSd9v7p_02_ead77d78a0d855f90991b74c8c9d5f61_image_original.png','{\n    \"image_thumb\": \"upload\\/images\\/2022\\/12\\/avARKJgqLsjeUVM4Hexc_02_ead77d78a0d855f90991b74c8c9d5f61_image_300x300.png\"\n}','1669952258'),
(3,5,'image','upload/images/2022/12/LA8vOzzTvOG3tVnilUAp_02_ead77d78a0d855f90991b74c8c9d5f61_image_original.png','{\n    \"image_thumb\": \"upload\\/images\\/2022\\/12\\/qmB4U5xYGNbkXMmP5zSD_02_ead77d78a0d855f90991b74c8c9d5f61_image_300x300.png\"\n}','1669952258'),
(4,6,'image','upload/images/2022/12/JCuYIQs1kCEwiQuHEFRx_02_30b21ed3a428d41a7a95f37fdb202585_image_original.jpg','{\n    \"image_thumb\": \"upload\\/images\\/2022\\/12\\/pvLrTEisIpokbdcpHMNE_02_30b21ed3a428d41a7a95f37fdb202585_image_300x300.jpg\"\n}','1669952783');
/*!40000 ALTER TABLE `cl_pubmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_sessions`
--

DROP TABLE IF EXISTS `cl_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(120) NOT NULL DEFAULT '',
  `user_id` varchar(11) NOT NULL DEFAULT '0',
  `platform` varchar(15) NOT NULL DEFAULT 'web',
  `time` varchar(25) NOT NULL DEFAULT '0',
  `lifespan` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_sessions`
--

LOCK TABLES `cl_sessions` WRITE;
/*!40000 ALTER TABLE `cl_sessions` DISABLE KEYS */;
INSERT INTO `cl_sessions` VALUES
(1,'77e6e16ca1394a04a2ed8adb68f2494e7e77bef116694795910a1db3da5c4a30795861387cd26d5627','1','web','1669479591','1701015591'),
(3,'8e07c9092a0eb4e91e77e087d9abc4183287c9441669904989d9caef398407cfc5be72b1a3c4025efa','1','web','1669904989','1701440989'),
(11,'70c370145af46d90e36f83b72a755148cc3dfb251669956048b9ed6deab4164060826b8f0ee25cacd4','1','web','1669956048','1701492048');
/*!40000 ALTER TABLE `cl_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_ui_langs`
--

DROP TABLE IF EXISTS `cl_ui_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_ui_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `slug` varchar(25) NOT NULL DEFAULT '',
  `status` set('1','0') NOT NULL DEFAULT '1',
  `is_rtl` set('Y','N') NOT NULL DEFAULT 'N',
  `is_native` set('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_ui_langs`
--

LOCK TABLES `cl_ui_langs` WRITE;
/*!40000 ALTER TABLE `cl_ui_langs` DISABLE KEYS */;
INSERT INTO `cl_ui_langs` VALUES
(1,'English','english','1','N','1');
/*!40000 ALTER TABLE `cl_ui_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_users`
--

DROP TABLE IF EXISTS `cl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `lname` varchar(30) NOT NULL DEFAULT '',
  `about` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `gender` enum('M','F','T','O') NOT NULL DEFAULT 'M',
  `email` varchar(60) NOT NULL DEFAULT '',
  `em_code` varchar(100) NOT NULL DEFAULT '',
  `email_conf_code` varchar(120) NOT NULL DEFAULT '0',
  `password` varchar(140) NOT NULL DEFAULT '',
  `joined` varchar(20) NOT NULL DEFAULT '0',
  `start_up` varchar(600) NOT NULL DEFAULT 'done',
  `last_active` varchar(20) NOT NULL DEFAULT '0',
  `ip_address` varchar(140) NOT NULL DEFAULT '0.0.0.0',
  `language` varchar(32) NOT NULL DEFAULT 'default',
  `avatar` varchar(300) NOT NULL DEFAULT 'upload/default/avatar-1.png',
  `cover` varchar(300) NOT NULL DEFAULT 'upload/default/cover-1.png',
  `cover_orig` varchar(300) NOT NULL DEFAULT 'upload/default/cover-1.png',
  `active` enum('0','1','2') NOT NULL DEFAULT '0',
  `verified` enum('0','1','2') NOT NULL DEFAULT '0',
  `admin` enum('0','1') NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT 0,
  `followers` int(11) NOT NULL DEFAULT 0,
  `following` int(11) NOT NULL DEFAULT 0,
  `website` varchar(120) NOT NULL DEFAULT '',
  `country_id` int(3) NOT NULL DEFAULT 1,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `last_post` int(11) NOT NULL DEFAULT 0,
  `last_swift` varchar(135) NOT NULL DEFAULT '',
  `last_ad` int(11) NOT NULL DEFAULT 0,
  `profile_privacy` enum('everyone','followers') NOT NULL DEFAULT 'everyone',
  `follow_privacy` enum('everyone','approved') NOT NULL DEFAULT 'everyone',
  `contact_privacy` enum('everyone','followed') NOT NULL DEFAULT 'everyone',
  `index_privacy` enum('Y','N') NOT NULL DEFAULT 'Y',
  `aff_bonuses` int(11) NOT NULL DEFAULT 0,
  `wallet` varchar(25) NOT NULL DEFAULT '0.00',
  `pnotif_token` varchar(600) NOT NULL DEFAULT '{"token": "","type": "android"}',
  `refresh_token` varchar(220) NOT NULL DEFAULT '0',
  `settings` varchar(3000) NOT NULL DEFAULT '{"notifs":{"like":1,"subscribe":1,"subscribe_request":1,"subscribe_accept":1,"reply":1,"repost":1,"mention":1},"enotifs":{"like":0,"subscribe":0,"subscribe_request":0,"subscribe_accept":0,"reply":0,"repost":0,"mention":0}}',
  `display_settings` varchar(1200) NOT NULL DEFAULT '{"color_scheme": "default","background": "default"}',
  `swift` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `swift_update` varchar(25) NOT NULL DEFAULT '0',
  `info_file` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `posts` (`posts`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_users`
--

LOCK TABLES `cl_users` WRITE;
/*!40000 ALTER TABLE `cl_users` DISABLE KEYS */;
INSERT INTO `cl_users` VALUES
(1,'chien','Chiến','Nguyễn','','M','nguyenchienbg2k@gmail.com','','','$2y$10$/CfjjJFZT.2mmnZ0Hq3U2e9CJUv0qsX0qdCUaxIlxhFgq/bI8QfiW','1669479573','done','1669962150','115.74.129.71','english','upload/default/avatar-1.png','upload/default/cover-1.png','upload/default/cover-1.png','1','2','1',3,1,0,'',233,'Ho Chi Minh',0,'',0,'everyone','everyone','everyone','Y',0,'0.00','{\"token\": \"\",\"type\": \"android\"}','0','{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1},\"enotifs\":{\"like\":0,\"subscribe\":0,\"subscribe_request\":0,\"subscribe_accept\":0,\"reply\":0,\"repost\":0,\"mention\":0}}','{\n    \"color_scheme\": \"default\",\n    \"background\": \"dark\"\n}','{\"5xVu9wD3ZXhewSQO\": {\"views\": {\"2\": 1669955319},\"time\": 1669952831,\"type\": \"image\",\"status\": \"active\",\"media\": {\"src\": \"upload\\/images\\/2022\\/12\\/txcVuE5bbpjU3uKqJckk_02_2dcf5c8e9d1c4004b75b181dc574c306_image_swift.jpg\"},\"exp_time\": 1670039231,\"text\": \"😄😄😄\"}}','1670039231',''),
(2,'fa_63897ebacb55d','Nobi','Nobi','','M','haidangbg2k@gmail.com','0acb759caaa8208d465c919229df8f7e0bc8f4f6','0','$2y$10$DVFLFecqs3yUhaojZaN0hucBBVxOVgpitAKNoTOlCZ2nwFfyeycs2','1669955258','done','1669956042','115.74.129.71','english','upload/avatars/2022/12/NhCtuYguoX7SARy9Ttmi_02_58e675da276afded6a82759356f8f5d9_thumbnail_512x512.jpg','upload/default/cover-4.png','upload/default/cover-4.png','1','0','0',0,0,1,'',233,'',0,'',0,'everyone','everyone','everyone','Y',0,'0.00','{\"token\": \"\",\"type\": \"android\"}','0','{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1},\"enotifs\":{\"like\":0,\"subscribe\":0,\"subscribe_request\":0,\"subscribe_accept\":0,\"reply\":0,\"repost\":0,\"mention\":0}}','{\n    \"color_scheme\": \"default\",\n    \"background\": \"dark\"\n}',NULL,'0','');
/*!40000 ALTER TABLE `cl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_verifications`
--

DROP TABLE IF EXISTS `cl_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `full_name` varchar(120) NOT NULL DEFAULT '',
  `text_message` varchar(1200) NOT NULL DEFAULT '',
  `video_message` varchar(300) NOT NULL DEFAULT '',
  `time` int(25) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_verifications`
--

LOCK TABLES `cl_verifications` WRITE;
/*!40000 ALTER TABLE `cl_verifications` DISABLE KEYS */;
INSERT INTO `cl_verifications` VALUES
(1,1,'Chiến Nguyễn','Review Profile','upload/videos/2022/12/vz3jkAQ7ZkisKoPNrsBE_02_87134f41d50bba3fcf54e94a89c087d2_video_video_message.mp4',1669953566);
/*!40000 ALTER TABLE `cl_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_wallet_history`
--

DROP TABLE IF EXISTS `cl_wallet_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_wallet_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `operation` varchar(60) NOT NULL DEFAULT '',
  `amount` varchar(25) NOT NULL DEFAULT '0.00',
  `json_data` varchar(3000) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_wallet_history`
--

LOCK TABLES `cl_wallet_history` WRITE;
/*!40000 ALTER TABLE `cl_wallet_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_wallet_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03  7:18:07
