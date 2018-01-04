# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 33.33.33.58 (MySQL 5.5.47-0ubuntu0.14.04.1)
# Database: sites_joomlatools
# Generation Time: 2018-01-04 14:32:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table j_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_assets`;

CREATE TABLE `j_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_assets` WRITE;
/*!40000 ALTER TABLE `j_assets` DISABLE KEYS */;

INSERT INTO `j_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`)
VALUES
	(1,0,1,438,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(2,1,2,3,1,'com_admin','com_admin','{}'),
	(3,1,4,11,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(4,1,12,13,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(5,1,14,15,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(6,1,16,17,1,'com_config','com_config','{}'),
	(7,1,18,87,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(8,1,88,297,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
	(9,1,298,299,1,'com_cpanel','com_cpanel','{}'),
	(10,1,300,301,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
	(11,1,302,303,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
	(12,1,304,305,1,'com_login','com_login','{}'),
	(13,1,306,307,1,'com_mailto','com_mailto','{}'),
	(14,1,308,309,1,'com_massmail','com_massmail','{}'),
	(15,1,310,311,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
	(16,1,312,313,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
	(17,1,37,38,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(18,1,316,321,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
	(19,1,322,329,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(20,1,330,331,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
	(21,1,332,333,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
	(22,1,334,335,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(23,1,336,337,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
	(24,1,338,341,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
	(26,1,342,343,1,'com_wrapper','com_wrapper','{}'),
	(33,1,422,423,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(34,8,105,108,2,'com_content.category.9','Uncategorised','{\"core.create\":{\"10\":0,\"12\":0}}'),
	(35,3,7,8,2,'com_banners.category.10','Uncategorised','{}'),
	(36,7,23,24,2,'com_contact.category.11','Uncategorised','{}'),
	(37,19,325,326,2,'com_newsfeeds.category.12','Uncategorised','{}'),
	(39,8,109,296,2,'com_content.category.14','Sample Data-Articles','{}'),
	(40,3,9,10,2,'com_banners.category.15','Sample Data-Banners','{}'),
	(41,7,25,86,2,'com_contact.category.16','Sample Data-Contact','{}'),
	(42,19,327,328,2,'com_newsfeeds.category.17','Sample Data-Newsfeeds','{}'),
	(44,39,110,245,3,'com_content.category.19','Joomla!','{\"core.create\":{\"10\":0,\"12\":0}}'),
	(45,44,111,222,4,'com_content.category.20','Extensions','{}'),
	(46,45,112,127,5,'com_content.category.21','Components','{}'),
	(47,45,128,189,5,'com_content.category.22','Modules','{}'),
	(48,45,190,199,5,'com_content.category.23','Templates','{}'),
	(49,45,200,201,5,'com_content.category.24','Languages','{}'),
	(50,45,202,221,5,'com_content.category.25','Plugins','{}'),
	(51,39,246,277,3,'com_content.category.26','Park Site','{\"core.create\":{\"10\":0,\"12\":0}}'),
	(52,51,247,252,4,'com_content.category.27','Park Blog','{}'),
	(53,51,253,274,4,'com_content.category.28','Photo Gallery','{}'),
	(54,39,278,291,3,'com_content.category.29','Fruit Shop Site','{}'),
	(55,54,279,284,4,'com_content.category.30','Growers','{\"core.create\":{\"12\":0},\"core.edit.own\":{\"10\":1}}'),
	(59,41,26,27,3,'com_contact.category.34','Park Site','{}'),
	(60,41,28,85,3,'com_contact.category.35','Shop Site','{}'),
	(61,60,29,30,4,'com_contact.category.36','Staff','{}'),
	(62,60,31,84,4,'com_contact.category.37','Fruit Encyclopedia','{}'),
	(63,62,32,33,5,'com_contact.category.38','A','{}'),
	(64,62,34,35,5,'com_contact.category.39','B','{}'),
	(65,62,36,37,5,'com_contact.category.40','C','{}'),
	(66,62,38,39,5,'com_contact.category.41','D','{}'),
	(67,62,40,41,5,'com_contact.category.42','E','{}'),
	(68,62,42,43,5,'com_contact.category.43','F','{}'),
	(69,62,44,45,5,'com_contact.category.44','G','{}'),
	(70,62,46,47,5,'com_contact.category.45','H','{}'),
	(71,62,48,49,5,'com_contact.category.46','I','{}'),
	(72,62,50,51,5,'com_contact.category.47','J','{}'),
	(73,62,52,53,5,'com_contact.category.48','K','{}'),
	(74,62,54,55,5,'com_contact.category.49','L','{}'),
	(75,62,56,57,5,'com_contact.category.50','M','{}'),
	(76,62,58,59,5,'com_contact.category.51','N','{}'),
	(77,62,60,61,5,'com_contact.category.52','O','{}'),
	(78,62,62,63,5,'com_contact.category.53','P','{}'),
	(79,62,64,65,5,'com_contact.category.54','Q','{}'),
	(80,62,66,67,5,'com_contact.category.55','R','{}'),
	(81,62,68,69,5,'com_contact.category.56','S','{}'),
	(82,62,70,71,5,'com_contact.category.57','T','{}'),
	(83,62,72,73,5,'com_contact.category.58','U','{}'),
	(84,62,74,75,5,'com_contact.category.59','V','{}'),
	(85,62,76,77,5,'com_contact.category.60','W','{}'),
	(86,62,78,79,5,'com_contact.category.61','X','{}'),
	(87,62,80,81,5,'com_contact.category.62','Y','{}'),
	(88,62,82,83,5,'com_contact.category.63','Z','{}'),
	(89,46,113,114,6,'com_content.article.1','Administrator Components','{}'),
	(90,93,130,131,7,'com_content.article.2','Archive Module','{}'),
	(91,93,132,133,7,'com_content.article.3','Article Categories Module','{}'),
	(92,93,134,135,7,'com_content.article.4','Articles Category Module','{}'),
	(93,47,129,144,6,'com_content.category.64','Content Modules','{}'),
	(94,47,145,152,6,'com_content.category.65','User Modules','{}'),
	(95,47,153,166,6,'com_content.category.66','Display Modules','{}'),
	(96,47,167,180,6,'com_content.category.67','Utility Modules','{}'),
	(98,48,191,192,6,'com_content.category.69','Beez3','{}'),
	(100,48,193,194,6,'com_content.category.71','Milky Way','{}'),
	(101,50,203,204,6,'com_content.article.5','Authentication','{}'),
	(102,51,275,276,4,'com_content.article.6','Australian Parks ','{\"core.edit\":{\"2\":1}}'),
	(103,95,154,155,7,'com_content.article.7','Banner Module','{}'),
	(104,44,223,224,4,'com_content.article.8','Beginners','{}'),
	(105,46,115,116,6,'com_content.article.9','Contact','{}'),
	(106,46,117,118,6,'com_content.article.10','Content','{}'),
	(107,109,265,266,6,'com_content.article.11','Cradle Mountain','{}'),
	(108,53,254,263,5,'com_content.category.72','Animals','{}'),
	(109,53,264,273,5,'com_content.category.73','Scenery','{}'),
	(110,95,156,157,7,'com_content.article.12','Custom Module','{}'),
	(111,54,285,286,4,'com_content.article.13','Directions','{}'),
	(112,50,205,206,6,'com_content.article.14','Editors','{}'),
	(113,50,207,208,6,'com_content.article.15','Editors-xtd','{}'),
	(114,95,158,159,7,'com_content.article.16','Feed Display','{}'),
	(115,52,248,249,5,'com_content.article.17','First Blog Post','{}'),
	(116,52,250,251,5,'com_content.article.18','Second Blog Post','{}'),
	(117,95,160,161,7,'com_content.article.19','Footer Module','{}'),
	(118,54,287,288,4,'com_content.article.20','Fruit Shop','{}'),
	(119,44,225,226,4,'com_content.article.21','Getting Help','{}'),
	(120,44,227,228,4,'com_content.article.22','Getting Started','{}'),
	(121,55,280,281,5,'com_content.article.23','Happy Orange Orchard','{}'),
	(122,44,229,230,4,'com_content.article.24','Joomla!','{}'),
	(123,108,255,256,6,'com_content.article.25','Koala','{}'),
	(124,96,168,169,7,'com_content.article.26','Language Switcher','{}'),
	(125,93,136,137,7,'com_content.article.27','Latest Articles Module','{}'),
	(126,94,146,147,7,'com_content.article.28','Login Module','{}'),
	(127,166,184,185,7,'com_content.article.29','Menu Module','{}'),
	(128,93,138,139,7,'com_content.article.30','Most Read Content','{}'),
	(129,93,140,141,7,'com_content.article.31','News Flash','{}'),
	(130,44,231,232,4,'com_content.article.32','Parameters','{}'),
	(131,108,257,258,6,'com_content.article.33','Phyllopteryx','{}'),
	(132,109,267,268,6,'com_content.article.34','Pinnacles','{}'),
	(133,44,233,234,4,'com_content.article.35','Professionals','{}'),
	(134,95,162,163,7,'com_content.article.36','Random Image Module','{}'),
	(135,93,142,143,7,'com_content.article.37','Related Items Module','{}'),
	(136,44,235,236,4,'com_content.article.38','Sample Sites','{}'),
	(137,46,119,120,6,'com_content.article.39','Search','{}'),
	(138,96,170,171,7,'com_content.article.40','Search Module','{}'),
	(139,50,209,210,6,'com_content.article.41','Search ','{}'),
	(140,39,292,293,3,'com_content.article.42','Site Map','{}'),
	(141,108,259,260,6,'com_content.article.43','Spotted Quoll','{}'),
	(142,96,172,173,7,'com_content.article.44','Statistics Module','{}'),
	(143,96,174,175,7,'com_content.article.45','Syndicate Module','{}'),
	(144,50,211,212,6,'com_content.article.46','System','{}'),
	(145,44,237,238,4,'com_content.article.47','The Joomla! Community','{}'),
	(146,44,239,240,4,'com_content.article.48','The Joomla! Project','{}'),
	(147,48,195,196,6,'com_content.article.49','Typography','{}'),
	(148,44,241,242,4,'com_content.article.50','Upgraders','{}'),
	(149,50,213,214,6,'com_content.article.51','User','{}'),
	(150,46,121,122,6,'com_content.article.52','Users','{}'),
	(151,44,243,244,4,'com_content.article.53','Using Joomla!','{}'),
	(154,94,148,149,7,'com_content.article.56','Who\'s Online','{}'),
	(155,108,261,262,6,'com_content.article.57','Wobbegone','{}'),
	(156,55,282,283,5,'com_content.article.58','Wonderful Watermelon','{}'),
	(157,96,176,177,7,'com_content.article.59','Wrapper Module','{}'),
	(158,46,125,126,6,'com_content.article.60','News Feeds','{}'),
	(159,166,186,187,7,'com_content.article.61','Breadcrumbs Module','{}'),
	(160,50,215,216,6,'com_content.article.62','Content','{}'),
	(162,109,269,270,6,'com_content.article.64','Blue Mountain Rain Forest','{}'),
	(163,109,271,272,6,'com_content.article.65','Ormiston Pound','{}'),
	(165,94,150,151,7,'com_content.article.66','Latest Users Module','{}'),
	(166,47,183,188,6,'com_content.category.75','Navigation Modules','{}'),
	(167,54,289,290,4,'com_content.category.76','Recipes','{\"core.create\":{\"12\":1,\"10\":1},\"core.edit.own\":{\"12\":1,\"10\":1}}'),
	(168,34,106,107,3,'com_content.article.67','What\'s New in 1.5?','{}'),
	(169,24,339,340,2,'com_users.category.77','Uncategorised','{}'),
	(170,50,217,218,6,'com_content.article.68','Captcha','{}'),
	(171,50,219,220,6,'com_content.article.69','Quick Icons','{}'),
	(172,96,178,179,7,'com_content.article.70','Smart Search','{}'),
	(173,1,424,425,1,'com_joomlaupdate','com_joomlaupdate','{}'),
	(174,48,197,198,6,'com_content.category.78','Protostar','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(175,1,426,427,1,'com_tags','com_tags','{\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(176,1,428,429,1,'com_contenthistory','com_contenthistory','{}'),
	(177,1,430,431,1,'com_ajax','com_ajax','{}'),
	(178,1,432,433,1,'com_postinstall','com_postinstall','{}'),
	(180,1,434,435,1,'com_textman','com_textman','{}'),
	(182,1,436,437,1,'com_fileman','com_fileman','{\"core.admin\":[],\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[]}'),
	(183,18,317,318,2,'com_modules.module.91','FILEman - Folders','{}'),
	(184,18,319,320,2,'com_modules.module.92','FILEman - Files','{}');

/*!40000 ALTER TABLE `j_assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_associations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_associations`;

CREATE TABLE `j_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_banner_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_banner_clients`;

CREATE TABLE `j_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_banner_clients` WRITE;
/*!40000 ALTER TABLE `j_banner_clients` DISABLE KEYS */;

INSERT INTO `j_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`)
VALUES
	(1,'Joomla!','Administrator','banner@example.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,-1,-1),
	(2,'Shop','Example','banner@example.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,0,0),
	(3,'Bookstore','Bookstore Example','banner@example.com','',1,0,'0000-00-00 00:00:00','',0,'',-1,0,0);

/*!40000 ALTER TABLE `j_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_banner_tracks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_banner_tracks`;

CREATE TABLE `j_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_banners`;

CREATE TABLE `j_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_banners` WRITE;
/*!40000 ALTER TABLE `j_banners` DISABLE KEYS */;

INSERT INTO `j_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`)
VALUES
	(2,3,0,'Shop 1',X'73686F702D31',0,0,0,'http://astore.amazon.com/joomlabooks04f-20',1,15,'Get books about Joomla! at the Joomla! Book Shop.','',0,1,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Books\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB',42,'Joomla','0000-00-00 00:00:00',0,1),
	(3,2,0,'Shop 2',X'73686F702D32',0,0,0,'https://community.joomla.org/the-joomla-shop.html',1,15,'T Shirts, caps and more from the Joomla! Shop.','',0,2,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"Joomla! Shop\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB',42,'Joomla','0000-00-00 00:00:00',0,1),
	(4,1,0,'Support Joomla!',X'737570706F72742D6A6F6F6D6C61',0,0,0,'https://contribute.joomla.org',1,15,'Your contributions of time, talent and money make Joomla possible.','',0,3,'','{\"imageurl\":\"images\\/banners\\/white.png\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2011-01-01 00:00:01','en-GB',42,'Joomla','0000-00-00 00:00:00',0,1);

/*!40000 ALTER TABLE `j_banners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_categories`;

CREATE TABLE `j_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the j_assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_categories` WRITE;
/*!40000 ALTER TABLE `j_categories` DISABLE KEYS */;

INSERT INTO `j_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`)
VALUES
	(1,0,0,0,123,0,'','system','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(9,34,1,119,120,1,'uncategorised','com_content','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(10,35,1,117,118,1,'uncategorised','com_banners','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(11,36,1,113,114,1,'uncategorised','com_contact','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(12,37,1,49,50,1,'uncategorised','com_newsfeeds','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(14,39,1,1,46,1,'sample-data-articles','com_content','Sample Data-Articles',X'73616D706C652D646174612D61727469636C6573','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(15,40,1,115,116,1,'sample-data-banners','com_banners','Sample Data-Banners',X'73616D706C652D646174612D62616E6E657273','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(16,41,1,51,112,1,'sample-data-contact','com_contact','Sample Data-Contact',X'73616D706C652D646174612D636F6E74616374','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(17,42,1,47,48,1,'sample-data-newsfeeds','com_newsfeeds','Sample Data-Newsfeeds',X'73616D706C652D646174612D6E6577736665656473','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(19,44,14,2,29,2,'sample-data-articles/joomla','com_content','Joomla!',X'6A6F6F6D6C61','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(20,45,19,3,28,3,'sample-data-articles/joomla/extensions','com_content','Extensions',X'657874656E73696F6E73','','<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href=\"https://extensions.joomla.org/\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(21,46,20,4,5,4,'sample-data-articles/joomla/extensions/components','com_content','Components',X'636F6D706F6E656E7473','','<p>Components are larger extensions that produce the major content for your site. Each component has one or more \"views\" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 06:33:59',0,'*',1),
	(22,47,20,6,17,4,'sample-data-articles/joomla/extensions/modules','com_content','Modules',X'6D6F64756C6573','','<p>Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 06:34:18',0,'*',1),
	(23,48,20,18,23,4,'sample-data-articles/joomla/extensions/templates','com_content','Templates',X'74656D706C61746573','','<p>Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Template_Manager_Templates\">Help</a></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 06:36:13',0,'*',1),
	(24,49,20,24,25,4,'sample-data-articles/joomla/extensions/languages','com_content','Languages',X'6C616E677561676573','','<p>Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Language_Manager_Installed\">Help</a></p><p><a href=\"https://community.joomla.org/translations.html\">Translation information</a></p><p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation.</p><p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p><p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href=\"https://docs.joomla.org/Special:MyLanguage/Language_Switcher_Tutorial\">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p><p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p><p>There are a number of extensions that can help you manage translations of content available in the<a href=\"https://extensions.joomla.org/\"> Joomla! Extensions Directory</a>.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 06:37:26',0,'*',1),
	(25,50,20,26,27,4,'sample-data-articles/joomla/extensions/plugins','com_content','Plugins',X'706C7567696E73','','<p>Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Plugin_Manager_Edit\">Help</a></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 06:36:50',0,'*',1),
	(26,51,14,30,39,2,'sample-data-articles/park-site','com_content','Park Site',X'7061726B2D73697465','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'en-GB',1),
	(27,52,26,31,32,3,'sample-data-articles/park-site/park-blog','com_content','Park Blog',X'7061726B2D626C6F67','','<p><span style=\"font-size: 12px;\">Here is where I will blog all about the parks of Australia.</span></p><p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p><p><em>To enhance your blog you may want to add extensions for <a href=\"https://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">comments</a>,<a href=\"https://extensions.joomla.org/category/social-web\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\"> interacting with social network sites</a>, <a href=\"https://extensions.joomla.org/category/content-sharing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">tagging</a>, and <a href=\"https://extensions.joomla.org/category/marketing\" style=\"color: #1b57b1; text-decoration: none; font-weight: normal;\">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"images\\/sampledata\\/parks\\/banner_cradle.jpg\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'en-GB',1),
	(28,53,26,33,38,3,'sample-data-articles/park-site/photo-gallery','com_content','Photo Gallery',X'70686F746F2D67616C6C657279','','<p>These are my photos from parks I have visited (I didn\'t take them, they are all from <a href=\"https://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>).</p><p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p><p><em>In each article put a thumbnail image before a \"readmore\" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 11:05:37',0,'en-GB',1),
	(29,54,14,40,45,2,'sample-data-articles/fruit-shop-site','com_content','Fruit Shop Site',X'66727569742D73686F702D73697465','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(30,55,29,41,42,3,'sample-data-articles/fruit-shop-site/growers','com_content','Growers',X'67726F77657273','','<p>We search the whole countryside for the best fruit growers.</p><p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p><p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p><p><em>This illustrates the use of the Edit Own permission. </em></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(34,59,16,52,53,2,'sample-data-contact/park-site','com_contact','Park Site',X'7061726B2D73697465','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'en-GB',1),
	(35,60,16,54,111,2,'sample-data-contact/shop-site','com_contact','Shop Site',X'73686F702D73697465','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(36,61,35,55,56,3,'sample-data-contact/shop-site/staff','com_contact','Staff',X'7374616666','','<p>Please feel free to contact our staff at any time should you need assistance.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(37,62,35,57,110,3,'sample-data-contact/shop-site/fruit-encyclopedia','com_contact','Fruit Encyclopedia',X'66727569742D656E6379636C6F7065646961','','<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href=\"https://commons.wikimedia.org/wiki/Main_Page\">Wikimedia Commons</a>.</p><p><img src=\"images/sampledata/fruitshop/apple.jpg\" border=\"0\" alt=\"Apples\" title=\"Apples\" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(38,63,37,58,59,4,'sample-data-contact/shop-site/fruit-encyclopedia/a','com_contact','A',X'61','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(39,64,37,60,61,4,'sample-data-contact/shop-site/fruit-encyclopedia/b','com_contact','B',X'62','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(40,65,37,62,63,4,'sample-data-contact/shop-site/fruit-encyclopedia/c','com_contact','C',X'63','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(41,66,37,64,65,4,'sample-data-contact/shop-site/fruit-encyclopedia/d','com_contact','D',X'64','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(42,67,37,66,67,4,'sample-data-contact/shop-site/fruit-encyclopedia/e','com_contact','E',X'65','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(43,68,37,68,69,4,'sample-data-contact/shop-site/fruit-encyclopedia/f','com_contact','F',X'66','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(44,69,37,70,71,4,'sample-data-contact/shop-site/fruit-encyclopedia/g','com_contact','G',X'67','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(45,70,37,72,73,4,'sample-data-contact/shop-site/fruit-encyclopedia/h','com_contact','H',X'68','','',0,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(46,71,37,74,75,4,'sample-data-contact/shop-site/fruit-encyclopedia/i','com_contact','I',X'69','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(47,72,37,76,77,4,'sample-data-contact/shop-site/fruit-encyclopedia/j','com_contact','J',X'6A','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(48,73,37,78,79,4,'sample-data-contact/shop-site/fruit-encyclopedia/k','com_contact','K',X'6B','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(49,74,37,80,81,4,'sample-data-contact/shop-site/fruit-encyclopedia/l','com_contact','L',X'6C','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(50,75,37,82,83,4,'sample-data-contact/shop-site/fruit-encyclopedia/m','com_contact','M',X'6D','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(51,76,37,84,85,4,'sample-data-contact/shop-site/fruit-encyclopedia/n','com_contact','N',X'6E','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(52,77,37,86,87,4,'sample-data-contact/shop-site/fruit-encyclopedia/o','com_contact','O',X'6F','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(53,78,37,88,89,4,'sample-data-contact/shop-site/fruit-encyclopedia/p','com_contact','P',X'70','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(54,79,37,90,91,4,'sample-data-contact/shop-site/fruit-encyclopedia/q','com_contact','Q',X'71','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(55,80,37,92,93,4,'sample-data-contact/shop-site/fruit-encyclopedia/r','com_contact','R',X'72','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(56,81,37,94,95,4,'sample-data-contact/shop-site/fruit-encyclopedia/s','com_contact','S',X'73','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(57,82,37,96,97,4,'sample-data-contact/shop-site/fruit-encyclopedia/t','com_contact','T',X'74','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(58,83,37,98,99,4,'sample-data-contact/shop-site/fruit-encyclopedia/u','com_contact','U',X'75','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(59,84,37,100,101,4,'sample-data-contact/shop-site/fruit-encyclopedia/v','com_contact','V',X'76','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(60,85,37,102,103,4,'sample-data-contact/shop-site/fruit-encyclopedia/w','com_contact','W',X'77','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(61,86,37,104,105,4,'sample-data-contact/shop-site/fruit-encyclopedia/x','com_contact','X',X'78','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(62,87,37,106,107,4,'sample-data-contact/shop-site/fruit-encyclopedia/y','com_contact','Y',X'79','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(63,88,37,108,109,4,'sample-data-contact/shop-site/fruit-encyclopedia/z','com_contact','Z',X'7A','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(64,93,22,7,8,5,'sample-data-articles/joomla/extensions/modules/articles-modules','com_content','Content Modules',X'61727469636C65732D6D6F64756C6573','','<p>Content modules display article and other information from the content component.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(65,94,22,9,10,5,'sample-data-articles/joomla/extensions/modules/user-modules','com_content','User Modules',X'757365722D6D6F64756C6573','','<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(66,95,22,11,12,5,'sample-data-articles/joomla/extensions/modules/display-modules','com_content','Display Modules',X'646973706C61792D6D6F64756C6573','','<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(67,96,22,13,14,5,'sample-data-articles/joomla/extensions/modules/utility-modules','com_content','Utility Modules',X'7574696C6974792D6D6F64756C6573','','<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(69,98,23,19,20,5,'sample-data-articles/joomla/extensions/templates/beez3','com_content','Beez3',X'6265657A33','','<p>Beez3 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques.</p><ul><li><a href=\"index.php?Itemid=424\">Home Page</a></li><li><a href=\"index.php?Itemid=423\">Typography</a></li></ul>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',123,'2012-09-25 11:47:38',0,'*',1),
	(72,108,28,34,35,4,'sample-data-articles/park-site/photo-gallery/animals','com_content','Animals',X'616E696D616C73','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'en-GB',1),
	(73,109,28,36,37,4,'sample-data-articles/park-site/photo-gallery/scenery','com_content','Scenery',X'7363656E657279','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'en-GB',1),
	(75,166,22,15,16,5,'sample-data-articles/joomla/extensions/modules/navigation-modules','com_content','Navigation Modules',X'6E617669676174696F6E2D6D6F64756C6573','','<p>Navigation modules help your visitors move through your site and find what they need.</p><p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p><p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the \"This Site\" menu.</p><p>Breadcrumbs provide users with information about where they are in a site.</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(76,167,29,43,44,3,'sample-data-articles/fruit-shop-site/recipes','com_content','Recipes',X'72656369706573','','<p>Customers and suppliers can post their favorite recipes for fruit here.</p><p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p><p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users\' pages.</em><br /><br /></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(77,169,1,121,122,1,'uncategorised','com_users','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',910,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),
	(78,174,23,21,22,5,'sample-data-articles/joomla/extensions/templates/protostar','com_content','Protostar',X'70726F746F73746172','','<p>Protostar is a mobile ready template designed using Twitter Bootstrap. It is sleek and easily to customise. It is the default template for Joomla 3.</p><ul><li><a href=\"index.php?Itemid=469\">Home Page</a></li><li><a href=\"index.php?option=com_content&amp;view=article&amp;id=49&amp;catid=23&amp;Itemid=470\">Typography</a></li></ul>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',910,'2012-09-25 11:50:03',123,'2012-09-25 12:13:14',0,'*',1);

/*!40000 ALTER TABLE `j_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_contact_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_contact_details`;

CREATE TABLE `j_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_contact_details` WRITE;
/*!40000 ALTER TABLE `j_contact_details` DISABLE KEYS */;

INSERT INTO `j_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`)
VALUES
	(1,'Contact Name Here',X'6E616D65','Position','Street Address','Suburb','State','Country','Zip Code','Telephone','Fax','<p>Information about or by the contact.</p>','images/powered_by.png','email@example.com',1,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Twitter\",\"linka\":\"https:\\/\\/twitter.com\\/joomla\",\"linkb_name\":\"YouTube\",\"linkb\":\"https:\\/\\/www.youtube.com\\/user\\/joomla\",\"linkc_name\":\"Facebook\",\"linkc\":\"https://www.facebook.com/joomla\",\"linkd_name\":\"FriendFeed\",\"linkd\":\"http:\\/\\/friendfeed.com\\/joomla\",\"linke_name\":\"Scribd\",\"linke\":\"https:\\/\\/www.scribd.com\\/user\\/504592\\/Joomla\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,16,1,'','','last','first','middle','en-GB','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(2,'Webmaster',X'7765626D6173746572','','','','','','','','','','','webmaster@example.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,34,1,'','','','','','en-GB','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(3,'Owner',X'6F776E6572','','','','','','','','','<p>I\'m the owner of this store.</p>','','',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(4,'Buyer',X'6275796572','','','','','','','','','<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>','','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,36,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(5,'Bananas',X'62616E616E6173','Scientific Name: Musa','Image Credit: EnzikRights: Creative Commons Share Alike Unported 3.0Source: https://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg','','Type: Herbaceous','Large Producers: India, China, Brasil','','','','<p>Bananas are a great source of potassium.</p><p> </p>','images/sampledata/fruitshop/bananas_2.jpg','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"show_with_link\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"1\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"1\",\"show_postcode\":\"\",\"show_country\":\"1\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Banana English\",\"linka\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/Banana\",\"linkb_name\":\"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e\",\"linkb\":\"https:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE\",\"linkc_name\":\"Wikipedia:Banana Portugu\\u00eas\",\"linkc\":\"https:\\/\\/pt.wikipedia.org\\/wiki\\/Banana\",\"linkd_name\":\"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439\",\"linkd\":\"https:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,39,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(6,'Apples',X'6170706C6573','Scientific Name: Malus domestica','Image Credit: FievetRights: Public DomainSource: https://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG','','Family: Rosaceae','Large: Producers: China, United States','','','','<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p><p>There are more that 7500 different kinds of apples grown around the world.</p>','images/sampledata/fruitshop/apple.jpg','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Apples English\",\"linka\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/Apple\",\"linkb_name\":\"Wikipedia: Manzana Espa\\u00f1ol \",\"linkb\":\"https:\\/\\/es.wikipedia.org\\/wiki\\/Manzana\",\"linkc_name\":\"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587\",\"linkc\":\"https:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c\",\"linkd_name\":\"Wikipedia: Tofaa Kiswahili\",\"linkd\":\"https:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,38,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(7,'Tamarind',X'74616D6172696E64','Scientific Name: Tamarindus indica','Image Credit: Franz Eugen Köhler, Köhler\'s Medizinal-Pflanzen Rights: Public DomainSource:https://commons.wikimedia.org/wiki/File:Koeh-134.jpg','','Family: Fabaceae','Large Producers: India, United States','','','','<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p><p> </p>','images/sampledata/fruitshop/tamarind.jpg','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"Wikipedia: Tamarind English\",\"linka\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind\",\"linkb_name\":\"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  \",\"linkb\":\"https:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 \",\"linkc_name\":\"Wikipedia: Tamarinier Fran\\u00e7ais\",\"linkc\":\"https:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier\",\"linkd_name\":\"Wikipedia:Tamaline lea faka-Tonga\",\"linkd\":\"https:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"beez5:encyclopedia\"}',0,57,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0),
	(8,'Shop Address',X'73686F702D61646472657373','','','Our City','Our Province','Our Country','','555-555-5555','','<p>Here are directions for how to get to our shop.</p>','','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,35,1,'','','','','','*','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',1,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0);

/*!40000 ALTER TABLE `j_contact_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_content`;

CREATE TABLE `j_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the j_assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_content` WRITE;
/*!40000 ALTER TABLE `j_content` DISABLE KEYS */;

INSERT INTO `j_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`)
VALUES
	(1,89,'Administrator Components',X'61646D696E6973747261746F722D636F6D706F6E656E7473','<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p><ul><li>Media Manager</li><li>Extensions Manager</li><li>Menu Manager</li><li>Global Configuration</li><li>Banners</li><li>Redirect</li></ul><hr title=\"Media Manager\" alt=\"Media Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" /><p> </p><h3>Media Manager</h3><p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Content_Media_Manager\">Help</a></p><hr title=\"Extensions Manager\" alt=\"Extensions Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" /><h3>Extensions Manager</h3><p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Extension_Manager_Install\">Help</a></p><hr title=\"Menu Manager\" alt=\"Menu Manager\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" /><h3>Menu Manager</h3><p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Menus_Menu_Manager\">Help</a></p><hr title=\"Global Configuration\" alt=\"Global Configuration\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" /><h3>Global Configuration</h3><p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Site_Global_Configuration\">Help</a></p><hr title=\"Banners\" alt=\"Banners\" class=\"system-pagebreak\" style=\"color: gray; border: 1px dashed gray;\" /><h3>Banners</h3><p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Components_Banners_Banners_Edit\">Help</a></p><hr title=\"Redirect\" class=\"system-pagebreak\" /><h3><br />Redirect</h3><p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Components_Redirect_Manager\">Help</a></p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,7,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(2,90,'Archive Module',X'617263686976652D6D6F64756C65','<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Articles_Archive\" title=\"Archive Module\">Help</a></p><div class=\"sample-module\">{loadmodule articles_archive,Archived Articles}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,5,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(3,91,'Article Categories Module',X'61727469636C652D63617465676F726965732D6D6F64756C65','<p>This module displays a list of categories from one parent category. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Articles_Categories\" title=\"Categories Module\">Help</a></p><div class=\"sample-module\">{loadmodule articles_categories,Articles Categories}</div><p> </p>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,6,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(4,92,'Articles Category Module',X'61727469636C65732D63617465676F72792D6D6F64756C65','<p>This module allows you to display the articles in a specific category. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Articles_Category\">Help</a></p><div class=\"sample-module\">{loadmodule articles_category,Articles Category}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,7,'','articles,content',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(5,101,'Authentication',X'61757468656E7469636174696F6E','<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p><p>Default on:</p><ul><li>Joomla <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li></ul><p>Default off:</p><ul><li>Gmail <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_GMail\">Help</a></li><li>LDAP <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP\">Help</a></li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(6,102,'Australian Parks ',X'6175737472616C69616E2D7061726B73','<p>Welcome!</p><p>This is a basic site about the beautiful and fascinating parks of Australia.</p><p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p><p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a \"brochure site,\" a personal blog, or as a way to present information on a topic you are interested in.</em></p><p><em> Read more about the site in the About Parks module.</em></p><p></p>','',1,26,'2011-01-01 00:00:01',123,'Joomla','2012-09-25 11:04:30',123,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,14,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(7,103,'Banner Module',X'62616E6E65722D6D6F64756C65','<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Banners\">Help</a>.</p><div class=\"sample-module\">{loadmodule banners,Banners}</div>','',1,66,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,6,'','',1,0,'',0,'*',''),
	(8,104,'Beginners',X'626567696E6E657273','<p>If this is your first Joomla! site or your first website, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p><p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>','<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you\'re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners\' Areas of the <a href=\"https://docs.joomla.org/Special:MyLanguage/Beginners\">Joomla documentation</a> and <a href=\"https://forum.joomla.org/\">support forums</a>.</p><p>You\'ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href=\"https://showcase.joomla.org/\">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p><p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href=\"https://extensions.joomla.org/\">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can\'t find what you need? You may want to find a Joomla professional in the <a href=\"https://resources.joomla.org/\">Joomla! Resource Directory</a>.</p><p>Want to learn more? Consider attending a <a href=\"https://community.joomla.org/events.html\">Joomla! Day</a> or other event or joining a local <a href=\"https://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Can\'t find one near you? Start one yourself.</p>',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(9,105,'Contacts',X'636F6E74616374','<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Components_Contacts_Contacts\">Help</a></p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(10,106,'Content',X'636F6E74656E74','<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Content_Article_Manager\">Help</a></p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(11,107,'Cradle Mountain',X'637261646C652D6D6F756E7461696E','<p> </p>','<p> </p>',1,73,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Cradle Mountain\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg\",\"float_fulltext\":\"none\",\"image_fulltext_alt\":\"Cradle Mountain\",\"image_fulltext_caption\":\"Source: https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(12,110,'Custom Module',X'637573746F6D2D6D6F64756C65','<p>This module allows you to create your own Module using a WYSIWYG editor. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Custom\" title=\"Custom Module\">Help</a></p><div class=\"sample-module\">{loadmodule custom,Custom}</div>','',1,66,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(13,111,'Directions',X'646972656374696F6E73','<p>Here\'s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>','',1,29,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,2,'','',1,3,'',0,'*',''),
	(14,112,'Editors',X'656469746F7273','<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p><p>Default on:</p><ul><li>CodeMirror <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror\">Help</a></li><li>TinyMCE<a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE\"> Help</a></li><li>No Editor <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_None\">Help</a></li></ul><p>Default off:</p><ul><li>None</li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,5,'','',1,0,'',0,'*',''),
	(15,113,'Editors-xtd',X'656469746F72732D787464','<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p><p>Default on:</p><ul><li>Editor Button: Image<a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Image\"> Help</a></li><li>Editor Button: Readmore <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Readmore\">Help</a></li><li>Editor Button: Page Break <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak\">Help</a></li><li>Editor Button: Article <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Article\">Help</a></li></ul><p>Default off:</p><ul><li>None</li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,6,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(16,114,'Feed Display',X'666565642D646973706C6179','<p>This module allows the displaying of a syndicated feed. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Feed_Display\" title=\"Feed Display Module\">Help</a></p><div class=\"sample-module\">{loadmodule feed,Feed Display}</div>','',1,66,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,2,'','',1,0,'',0,'*',''),
	(17,115,'First Blog Post',X'66697273742D626C6F672D706F7374','<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>','<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>',1,27,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,2,'','',1,1,'',0,'*',''),
	(18,116,'Second Blog Post',X'7365636F6E642D626C6F672D706F7374','<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>','<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>',1,27,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,2,'',0,'*',''),
	(19,117,'Footer Module',X'666F6F7465722D6D6F64756C65','<p>This module shows the Joomla! copyright information. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Footer\" title=\"Footer Module\">Help</a></p><div class=\"sample-module\">{loadmodule footer,Footer}</div>','',1,66,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,3,'','',1,0,'',0,'*',''),
	(20,118,'Fruit Shop',X'66727569742D73686F70','<h2>Welcome to the Fruit Shop</h2><p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p><p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href=\"http://extensions.joomla.org/\"><em> Joomla! Extensions Directory</em></a>.</p><p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>','',1,29,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(21,119,'Getting Help',X'67657474696E672D68656C70','<p>There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p><ul><li><a href=\"https://forum.joomla.org/\">Support Forums</a></li><li><a href=\"https://docs.joomla.org/\">Documentation</a></li><li><a href=\"https://resources.joomla.org/\">Professionals</a></li><li><a href=\"http://astore.amazon.com/joomlabooks04f-20\">Books</a></li></ul>','',1,19,'2011-01-01 00:00:01',123,'Joomla','2012-09-25 07:39:17',123,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,8,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(22,120,'Getting Started',X'67657474696E672D73746172746564','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"This Site\" menu or by adding /administrator to the end of you domain name.</p><p>Log in to the administrator using the username and password created during the installation of Joomla.</p><h3>Logging in</h3><p>To login to the front end of your site use the login form or the login menu link on the \"This Site\" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p><p>In managing your site, you will be able to create content that only logged-in users are able to see.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"submit article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\"> Joomla! forums</a>.</p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,9,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(23,121,'Happy Orange Orchard',X'68617070792D6F72616E67652D6F726368617264','<p>At our orchard we grow the world\'s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>','',1,30,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,2,'','',1,0,'',0,'*',''),
	(24,122,'Joomla!',X'6A6F6F6D6C61','<p><img alt=\"description\" class=\"filelink\" data-source=\"fileman-files://testing/zermat-image.jpg\" src=\"http://joomlatools.test/joomlatools-files/fileman-thumbnails/testing/medium-zermat-image.jpg.jpg\" title=\"title\" /></p>\r\n\r\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>\r\n\r\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.</p>\r\n','',1,19,'2011-01-01 00:00:01',123,'Joomla','2017-12-21 10:15:51',951,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":null,\"image_intro_caption\":null,\"image_intro_alt\":null,\"image_fulltext\":null,\"image_fulltext_caption\":null,\"image_fulltext_alt\":null}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,2,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(25,123,'Koala',X'6B6F616C61','<p> </p><p> </p><p> </p><p> </p><p> </p>','<p> </p>',1,72,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Koala  Thumbnail\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Koala Climbing Tree\",\"image_fulltext_caption\":\"Source: https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(26,124,'Language Switcher',X'6C616E67756167652D7377697463686572','<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p><p>This module displays a list of available Content Languages for switching between them.</p><p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p><p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p><p><strong></strong> <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Language_Switcher\" title=\"Language Switcher Module\">Help</a></p><p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled \"language switcher\" and visit the fruit shop or park sample sites. Then follow<a href=\"https://docs.joomla.org/Special:MyLanguage/Language_Switcher_Tutorial_for_Joomla_1.6\"> the instructions in this tutorial</a>.</p>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(27,125,'Latest Articles Module',X'6C61746573742D61727469636C65732D6D6F64756C65','<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Latest_News\" title=\"Latest Articles\">Help</a></p><div class=\"sample-module\">{loadmodule articles_latest,Latest News}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(28,126,'Login Module',X'6C6F67696E2D6D6F64756C65','<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Login\" title=\"Login\">Help</a></p><div class=\"sample-module\">{loadmodule login,login}</div>','',1,65,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,2,'','',1,0,'',0,'*',''),
	(29,127,'Menu Module',X'6D656E752D6D6F64756C65','<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Menu\">Help</a></p><div class=\"sample-module\">{loadmodule mod_menu,Menu Example}</div>','',1,75,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,0,'',0,'*',''),
	(30,128,'Most Read Content',X'6D6F73742D726561642D636F6E74656E74','<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Most_Read\" title=\"Most Read Content\">Help</a></p><div class=\"sample-module\">{loadmodule articles_popular,Articles Most Read}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(31,129,'News Flash',X'6E6577732D666C617368','<p>Displays a set number of articles from a category based on date or random selection. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Articles_Newsflash\" title=\"News Flash Module\">Help</a></p><div class=\"sample-module\">{loadmodule articles_news,News Flash}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,3,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(32,130,'Options',X'6F7074696F6E73','<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author\'s name is displayed to who can view what to the number of items shown on a list.</p><p>Default options for each component are changed using the Options button on the component toolbar.</p><p>Options can also be set on an individual item, such as an article or contact and in menu links.</p><p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p><p> </p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,10,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(33,131,'Phyllopteryx',X'7068796C6C6F707465727978','<p> </p>','<p> </p>',1,72,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Phyllopteryx\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Phyllopteryx\",\"image_fulltext_caption\":\"Source: https:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(34,132,'Pinnacles',X'70696E6E61636C6573','<p> </p>','<p> </p>',1,73,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Kings Canyon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Kings Canyon\",\"image_fulltext_caption\":\"Source: https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later.\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(35,133,'Professionals',X'70726F66657373696F6E616C73','<p>Joomla! 3 continues development of the Joomla Platform and CMS as a powerful and flexible way to bring your vision of the web to reality. With the new administrator interface and adoption of Twitter Bootstrap, the ability to control its look and the management of extensions is now complete.</p>','<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.3.10 and above makes Joomla lighter and faster than ever.</p><p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>',1,19,'2011-01-01 00:00:01',123,'Joomla','2012-09-25 07:14:30',123,0,'0000-00-00 00:00:00','2011-01-09 16:41:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(36,134,'Random Image Module',X'72616E646F6D2D696D6167652D6D6F64756C65','<p>This module displays a random image from your chosen image directory. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Random_Image\" title=\"Random Image Module\">Help</a></p><div class=\"sample-module\">{loadmodule random_image,Random Image}</div>','',1,66,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(37,135,'Related Items Module',X'72656C617465642D6974656D732D6D6F64756C65','<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Articles_Related\" title=\"Related Items Module\">Help</a></p><div class=\"sample-module\">{loadmodule related_items,Articles Related Items}</div>','',1,64,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'modules, content','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(38,136,'Sample Sites',X'73616D706C652D7369746573','<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample \"sites within a site\" designed to help you get started with building your own site.</p><p>The first site is a simple site about <a href=\"index.php?Itemid=243\">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p><p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href=\"index.php?Itemid=429\">Fruit Shop</a>.</p><p>In building either style site, or something completely different, you will probably want to add <a href=\"https://extensions.joomla.org/\">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href=\"https://docs.joomla.org/Special:MyLanguage/How_do_you_modify_a_template%3F\">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site\'s focus.</p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,11,'','',1,14,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(39,137,'Search',X'7365617263682D636F6D706F6E656E74','<p>Joomla! 2.5 offers two search options.</p><p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Components_Search\">Help</a></p><p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(40,138,'Search Module',X'7365617263682D6D6F64756C65','<p>This module will display a search box. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Search\" title=\"Search\">Help</a></p><div class=\"sample-module\">{loadmodule search,Search}</div>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,4,'','',1,0,'',0,'*',''),
	(41,139,'Search ',X'7365617263682D706C7567696E','<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p><p>Default On:</p><ul><li>Content <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Content\">Help</a></li><li>Contacts <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Contacts\">Help</a></li><li>Weblinks <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Weblinks\">Help</a></li><li>News Feeds <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds\">Help</a></li><li>Categories <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Categories\">Help</a></li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,0,'',0,'*',''),
	(42,140,'Site Map',X'736974652D6D6170','<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>','',1,14,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,3,'',0,'*',''),
	(43,141,'Spotted Quoll',X'73706F747465642D71756F6C6C','<p> </p><p> </p>','<p> </p>',1,72,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Spotted Quoll\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Spotted Quoll\",\"image_fulltext_caption\":\"Source: https:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(44,142,'Statistics Module',X'73746174697374696373','<p>This module shows information about your server installation together with statistics on the website users, number of Articles in your database and the number of Web links you provide.</p><div class=\"sample-module\">{loadmodule mod_stats,Statistics}</div>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(45,143,'Syndicate Module',X'73796E6469636174652D6D6F64756C65','<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Syndication_Feeds\" title=\"Synicate Module\">Help</a></p><div class=\"sample-module\">{loadposition syndicate,Syndicate}</div>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,6,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(46,144,'System',X'73797374656D','<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a \"remember me\" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p><p>Default on:</p><ul><li>Remember me <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Remember_Me\">Help</a></li><li>SEF <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_SEF\">Help</a></li><li>Debug <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Debug\">Help</a></li></ul><p>Default off:</p><ul><li>Cache <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Cache\">Help</a></li><li>Log <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Log\">Help</a></li><li>Redirect <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Redirect\">Help</a></li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(47,145,'The Joomla! Community',X'7468652D6A6F6F6D6C612D636F6D6D756E697479','<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p><p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href=\"https://www.joomla.org/\">Joomla.org</a> family of websites (the<a href=\"https://forum.joomla.org/\"> forum </a>is a great place to start). Come to a <a href=\"https://community.joomla.org/events.html\">Joomla! event</a>. Join or start a <a href=\"https://community.joomla.org/user-groups.html\">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(48,146,'The Joomla! Project',X'7468652D6A6F6F6D6C612D70726F6A656374','<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p><p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p><p>The core values are:</p><ul><li>Freedom</li><li>Equality</li><li>Trust</li><li>Community</li><li>Collaboration</li><li>Usability</li></ul><p>In our vision, we see:</p><ul><li>People publishing and collaborating in their communities and around the world</li><li>Software that is free, secure, and high-quality</li><li>A community that is enjoyable and rewarding to participate in</li><li>People around the world using their preferred languages</li><li>A project that acts autonomously</li><li>A project that is socially responsible</li><li>A project dedicated to maintaining the trust of its users</li></ul><p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p><p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(49,147,'Typography',X'7479706F677261706879','<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>','',1,23,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,8,'',0,'*',''),
	(50,148,'Upgraders',X'757067726164657273','<p>If you are an experienced Joomla! user, this Joomla site will seem very familiar but also very different. The biggest change is the new administrator interface and the adoption of responsive design. Hundreds of other improvements have been made.</p><p></p><p></p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','2012-09-25 07:12:10',123,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,6,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
	(51,149,'User',X'757365722D706C7567696E73','<p>Default on:</p><ul><li>Joomla <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Joomla.21\">Help</a></li></ul><p>Default off:</p><p>Two new plugins are available but are disabled by default.</p><ul><li>Contact Creator <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator\">Help</a><br />Creates a new linked contact record for each new user created.</li><li>Profile <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Profile\">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(52,150,'Users',X'75736572732D636F6D706F6E656E74','<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Users_User_Manager\">Help</a></p><p>Please note that some of the user views will not display if you are not logged-in to the site.</p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(53,151,'Using Joomla!',X'7573696E672D6A6F6F6D6C61','<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p><p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p><p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>','',1,19,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,7,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(56,154,'Who\'s Online',X'77686F732D6F6E6C696E65','<p>The Who\'s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the website. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Who_Online\" title=\"Who\'s Online\">Help</a></p><div class=\"sample-module\">{loadmodule whosonline,Who\'s Online}</div>','',1,65,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,0,'',0,'*',''),
	(57,155,'Wobbegone',X'776F626265676F6E65','<p> </p>','<p> </p>',1,72,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"Wobbegon\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Wobbegon\",\"image_fulltext_caption\":\"Source: https:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(58,156,'Wonderful Watermelon',X'776F6E64657266756C2D77617465726D656C6F6E','<p>Watermelon is a wonderful and healthy treat. We grow the world\'s sweetest watermelon. We have the largest watermelon patch in our country.</p>','',1,30,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,0,'',0,'*',''),
	(59,157,'Wrapper Module',X'777261707065722D6D6F64756C65','<p>This module shows an iframe window to specified location. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Wrapper\" title=\"Wrapper Module\">Help</a></p><div class=\"sample-module\">{loadmodule wrapper,Wrapper}</div>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,1,'','',1,0,'',0,'*',''),
	(60,158,'News Feeds',X'6E6577732D6665656473','<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You can use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Components_Newsfeeds_Feeds\">Help</a></p>','',1,21,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(61,159,'Breadcrumbs Module',X'62726561646372756D62732D6D6F64756C65','<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Breadcrumbs\" title=\"Breacrumbs Module\">Help</a></p><div class=\"sample-module\">{loadmodule breadcrumbs,breadcrumbs}</div>','',1,75,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(62,160,'Content',X'636F6E74656E742D706C7567696E73','<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p><p>Default on:</p><ul><li>Email Cloaking <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking\">Help</a></li><li>Load Module <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules\">Help</a></li><li>Page Break <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak\">Help</a></li><li>Page Navigation<a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation\"> Help</a></li><li>Vote <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Vote\">Help</a></li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,7,'','',1,0,'',0,'*',''),
	(64,162,'Blue Mountain Rain Forest',X'626C75652D6D6F756E7461696E2D7261696E2D666F72657374','<p> </p>','<p> </p>',1,73,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Rain Forest Blue Mountains\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Rain Forest Blue Mountains\",\"image_fulltext_caption\":\"Source: https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(65,163,'Ormiston Pound',X'6F726D6973746F6E2D706F756E64','<p> </p>','<p> </p>',1,73,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','{\"image_intro\":\"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg\",\"float_intro\":\"none\",\"image_intro_alt\":\"Ormiston Pound\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"Ormiston Pound\",\"image_fulltext_caption\":\"Source: https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(66,165,'Latest Users Module',X'6C61746573742D75736572732D6D6F64756C65','<p>This module displays the latest registered users. <a href=\"https://help.joomla.org/proxy/index.php?keyref=Help31:Extensions_Module_Manager_Latest_Users\">Help</a></p><div class=\"sample-module\">{loadmodule users_latest,Users Latest}</div>','',1,65,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,3,'','',1,0,'',0,'*',''),
	(67,168,'What\'s New in 1.5?',X'77686174732D6E65772D696E2D3135','<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p><p style=\"margin-bottom: 0in;\">In Joomla! 1.5, you\'\'ll notice:</p><ul><li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li><li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li><li>Extended integration of external applications through Web services</li><li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li><li>A more sustainable and flexible framework for Component and Extension developers</li><li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li></ul>','',2,9,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2011-01-01 00:00:01','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_readmore\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"page_title\":\"\",\"alternative_readmore\":\"\",\"layout\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(68,170,'Captcha',X'63617074636861','<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha&reg; service but you may install other plugins connecting to different Captcha systems.</p><p>Default on:</p><ul><li>ReCaptcha <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit\">help</a></li></ul><p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-17 03:20:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(69,171,'Quick Icons',X'717569636B2D69636F6E73','<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p><p>Default on:</p><ul><li>Quick icon - Joomla! extensions updates notification <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit\">Help</a>.</li><li>Quick icon - Joomla! update notification <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Plugin_Manager_Edit\">Help</a></li></ul>','',1,25,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-17 03:27:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(70,170,'Smart Search',X'736D6172742D736561726368','<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href=\"https://help.joomla.org/proxy/index.php?amp;keyref=Help31:Extensions_Module_Manager_Smart_Search\">Help</a>.</p><div class=\"sample-module\">{loadmodule finder,Smart Search}</div>','',1,67,'2011-01-01 00:00:01',123,'Joomla','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-17 03:42:36','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*!40000 ALTER TABLE `j_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_content_frontpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_content_frontpage`;

CREATE TABLE `j_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_content_frontpage` WRITE;
/*!40000 ALTER TABLE `j_content_frontpage` DISABLE KEYS */;

INSERT INTO `j_content_frontpage` (`content_id`, `ordering`)
VALUES
	(8,2),
	(24,1),
	(35,4),
	(50,3);

/*!40000 ALTER TABLE `j_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_content_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_content_rating`;

CREATE TABLE `j_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_content_types`;

CREATE TABLE `j_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_content_types` WRITE;
/*!40000 ALTER TABLE `j_content_types` DISABLE KEYS */;

INSERT INTO `j_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`)
VALUES
	(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"j_content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"j_contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
	(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"j_newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(4,'User','com_users.user','{\"special\":{\"dbtable\":\"j_users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),
	(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"j_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"j_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"j_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"j_tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"j_banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"j_banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"j_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"j_banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
	(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"j_user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"j_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"j_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"j_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"j_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"j_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

/*!40000 ALTER TABLE `j_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_contentitem_tag_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_contentitem_tag_map`;

CREATE TABLE `j_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';



# Dump of table j_core_log_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_core_log_searches`;

CREATE TABLE `j_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_extensions`;

CREATE TABLE `j_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_extensions` WRITE;
/*!40000 ALTER TABLE `j_extensions` DISABLE KEYS */;

INSERT INTO `j_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`)
VALUES
	(1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),
	(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"version\": \"3.8.3\"}','{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),
	(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"version\": \"3.8.3\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),
	(12,0,'com_login','component','com_login','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(13,0,'com_media','component','com_media','',1,1,0,1,'{\"version\": \"3.8.3\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),
	(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"version\": \"3.8.3\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(19,0,'com_search','component','com_search','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"version\": \"3.8.3\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),
	(22,0,'com_content','component','com_content','',1,1,0,1,'{\"version\": \"3.8.3\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(23,0,'com_config','component','com_config','',1,1,0,1,'{\"version\": \"3.8.3\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
	(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(25,0,'com_users','component','com_users','',1,1,0,1,'{\"version\": \"3.8.3\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"13\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"save_history\":\"1\",\"history_limit\":5}','','',0,'0000-00-00 00:00:00',0,0),
	(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"version\": \"3.8.3\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"version\": \"3.8.3\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"version\": \"3.8.3\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(102,0,'phputf8','library','phputf8','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(103,0,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"version\": \"3.8.3\"}','{\"mediaversion\":\"177e7fa02d5d0be804916af4e6395f17\"}','','',0,'0000-00-00 00:00:00',0,0),
	(104,0,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(105,0,'FOF','library','fof','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(106,0,'PHPass','library','phpass','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
	(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(318,0,'mod_sampledata','module','mod_sampledata','',1,1,1,0,'{\"version\": \"3.8.3\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
	(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
	(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
	(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),
	(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
	(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
	(409,0,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',6,0),
	(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"version\": \"3.8.3\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
	(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),
	(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
	(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"version\": \"3.8.3\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
	(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
	(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',6,0),
	(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',7,0),
	(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',8,0),
	(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
	(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
	(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',10,0),
	(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"version\": \"3.8.3\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
	(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',7,0),
	(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(448,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(450,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"lastrun\":1515075198}','','',0,'0000-00-00 00:00:00',0,0),
	(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"mode\":3,\"lastrun\":1513850402,\"unique_id\":\"f43d8597b27076d421b3109176ed2bac496be585\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),
	(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(456,0,'plg_installer_folderinstaller','plugin','folderinstaller','installer',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(457,0,'plg_installer_urlinstaller','plugin','urlinstaller','installer',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(479,0,'plg_sampledata_blog','plugin','blog','sampledata',0,1,1,0,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(503,0,'beez3','template','beez3','',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
	(504,0,'hathor','template','hathor','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(506,0,'protostar','template','protostar','',0,1,1,0,'{\"version\": \"3.8.3\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(507,0,'isis','template','isis','',1,1,1,0,'{\"version\": \"3.8.3\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"version\": \"3.8.3\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10000,0,'plg_installer_webinstaller','plugin','webinstaller','installer',0,1,1,0,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"version\":\"1.0.5\",\"description\":\"Web Installer\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10002,0,'plg_system_joomlatools','plugin','joomlatools','system',0,1,1,0,'{\"name\":\"plg_system_joomlatools\",\"type\":\"plugin\",\"creationDate\":\"October 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2017 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.4\",\"description\":\"\",\"group\":\"\",\"filename\":\"joomlatools\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10003,0,'com_textman','component','com_textman','',1,1,0,0,'{\"name\":\"com_textman\",\"type\":\"component\",\"creationDate\":\"December 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2017 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"2.0.0\",\"description\":\"COM_TEXTMAN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textman\"}','{\"readmore_limit\":200,\"toolbar_location\":\"k-edit-bar--top\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10004,0,'plg_content_textman','plugin','textman','content',0,1,1,0,'{\"name\":\"plg_content_textman\",\"type\":\"plugin\",\"creationDate\":\"December 2016\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2016 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"2.0.0\",\"description\":\"PLG_CONTENT_TEXTMAN_DESCRIPTION\",\"group\":\"\",\"filename\":\"textman\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10005,0,'plg_system_textman','plugin','textman','system',0,1,1,0,'{\"name\":\"plg_system_textman\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2016 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"2.0.0\",\"description\":\"PLG_SYSTEM_TEXTMAN_DESCRIPTION\",\"group\":\"\",\"filename\":\"textman\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10006,0,'plg_logman_textman','plugin','textman','logman',0,1,1,0,'{\"name\":\"plg_logman_textman\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 - 2017 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"2.0.0\",\"description\":\"PLG_LOGMAN_TEXTMAN_DESC\",\"group\":\"\",\"filename\":\"textman\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10007,0,'plg_textman_notify','plugin','notify','textman',0,1,1,0,'{\"name\":\"plg_textman_notify\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"2.0.0\",\"description\":\"PLG_TEXTMAN_NOTIFY_DESCRIPTION\",\"group\":\"\",\"filename\":\"notify\"}','{\"notify_article\":\"1\",\"notify_article_group\":\"0\",\"notify_category\":\"0\",\"notify_add\":\"1\",\"notify_edit\":\"1\",\"notify_delete\":\"1\",\"notify_publish\":\"1\",\"notify_trash\":\"1\",\"notify_restore\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10008,0,'plg_system_joomlatoolsupdater','plugin','joomlatoolsupdater','system',0,1,1,0,'{\"name\":\"plg_system_joomlatoolsupdater\",\"type\":\"plugin\",\"creationDate\":\"June 2016\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2016 Timble CVBA\",\"authorEmail\":\"info@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"joomlatoolsupdater\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10010,0,'com_fileman','component','com_fileman','',1,1,0,0,'{\"name\":\"com_fileman\",\"type\":\"component\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"Advanced Media Manager\",\"group\":\"\",\"filename\":\"fileman\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10011,0,'plg_content_filelink','plugin','filelink','content',0,1,1,0,'{\"name\":\"plg_content_filelink\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"PLG_CONTENT_FILELINK_DESCRIPTION\",\"group\":\"\",\"filename\":\"filelink\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10012,0,'Button - FILElink','plugin','filelink','editors-xtd',0,1,1,0,'{\"name\":\"Button - FILElink\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"\",\"group\":\"\",\"filename\":\"filelink\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10013,0,'Button - Attachments','plugin','attachments','editors-xtd',0,1,1,0,'{\"name\":\"Button - Attachments\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"\",\"group\":\"\",\"filename\":\"attachments\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10014,0,'plg_koowa_fileman','plugin','fileman','koowa',0,1,1,0,'{\"name\":\"plg_koowa_fileman\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"PLG_KOOWA_FILEMAN_DESC\",\"group\":\"\",\"filename\":\"fileman\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10015,0,'plg_system_joomlatoolsscheduler','plugin','joomlatoolsscheduler','system',0,1,1,0,'{\"name\":\"plg_system_joomlatoolsscheduler\",\"type\":\"plugin\",\"creationDate\":\"September 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2015 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"joomlatoolsscheduler\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10016,0,'mod_fileman_folders','module','mod_fileman_folders','',0,1,0,0,'{\"name\":\"mod_fileman_folders\",\"type\":\"module\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"MOD_FILEMAN_FOLDERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fileman_folders\"}','{\"page\":\"\",\"folder\":\"\",\"tree\":\"1\",\"limit\":\"10\",\"show_icon\":\"1\",\"humanize_filenames\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10017,0,'mod_fileman_files','module','mod_fileman_files','',0,1,0,0,'{\"name\":\"mod_fileman_files\",\"type\":\"module\",\"creationDate\":\"November 2017\",\"author\":\"Joomlatools\",\"copyright\":\"Copyright (C) 2011 Timble CVBA (http:\\/\\/www.timble.net)\",\"authorEmail\":\"support@joomlatools.com\",\"authorUrl\":\"www.joomlatools.com\",\"version\":\"3.1.2\",\"description\":\"MOD_FILEMAN_FILES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fileman_files\"}','{\"page\":\"\",\"folder\":\"\",\"limit\":\"10\",\"layout\":\"_:default.html\",\"track_downloads\":\"1\",\"show_icon\":\"1\",\"show_filenames\":\"1\",\"humanize_filenames\":\"1\",\"sort\":\"name\",\"direction\":\"asc\",\"download_in_blank_page\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);

/*!40000 ALTER TABLE `j_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fields`;

CREATE TABLE `j_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_fields_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fields_categories`;

CREATE TABLE `j_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_fields_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fields_groups`;

CREATE TABLE `j_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_fields_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fields_values`;

CREATE TABLE `j_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_fileman_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fileman_attachments`;

CREATE TABLE `j_fileman_attachments` (
  `fileman_attachment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `files_container_id` bigint(20) NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  `path` varchar(2000) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL,
  `locked_by` bigint(20) NOT NULL,
  `locked_on` datetime NOT NULL,
  PRIMARY KEY (`fileman_attachment_id`),
  UNIQUE KEY `uuid` (`uuid`),
  UNIQUE KEY `files_container_id` (`files_container_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table j_fileman_attachments_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fileman_attachments_relations`;

CREATE TABLE `j_fileman_attachments_relations` (
  `fileman_attachment_id` bigint(20) unsigned NOT NULL,
  `table` varchar(255) NOT NULL DEFAULT '',
  `row` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`fileman_attachment_id`,`table`,`row`),
  CONSTRAINT `j_fileman_attachments_relations_ibfk_1` FOREIGN KEY (`fileman_attachment_id`) REFERENCES `j_fileman_attachments` (`fileman_attachment_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table j_fileman_file_contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fileman_file_contents`;

CREATE TABLE `j_fileman_file_contents` (
  `fileman_content_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `container` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(512) NOT NULL DEFAULT '',
  `contents` longtext,
  PRIMARY KEY (`fileman_content_id`),
  UNIQUE KEY `fileman_content_id` (`fileman_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table j_fileman_scans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_fileman_scans`;

CREATE TABLE `j_fileman_scans` (
  `fileman_scan_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `container` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(512) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ocr` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `response` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`fileman_scan_id`),
  UNIQUE KEY `fileman_scan_id` (`fileman_scan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table j_files_containers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_files_containers`;

CREATE TABLE `j_files_containers` (
  `files_container_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  PRIMARY KEY (`files_container_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `j_files_containers` WRITE;
/*!40000 ALTER TABLE `j_files_containers` DISABLE KEYS */;

INSERT INTO `j_files_containers` (`files_container_id`, `slug`, `title`, `path`, `parameters`)
VALUES
	(1,'textman-files','TEXTman Files','images','{\"allowed_extensions\":[\"xml\",\"xlsx\",\"xls\",\"txt\",\"tex\",\"rtf\",\"pptx\",\"ppt\",\"pps\",\"pdf\",\"pages\",\"odt\",\"ods\",\"odp\",\"keynote\",\"key\",\"html\",\"docx\",\"doc\",\"csv\"],\"allowed_mimetypes\":[\"application\\/msword\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/x-tex\",\"application\\/xml\",\"text\\/csv\",\"text\\/html\",\"text\\/plain\"]}'),
	(2,'textman-images','TEXTman Images','images','{\"allowed_extensions\":[\"bmp\",\"gif\",\"jpeg\",\"jpg\",\"png\"],\"allowed_mimetypes\":[\"image\\/bmp\",\"image\\/gif\",\"image\\/jpeg\",\"image\\/jpeg\",\"image\\/png\"],\"maximum_image_size\":\"1024\"}'),
	(3,'fileman-files','FILEman','joomlatools-files/fileman-files','{\"thumbnails_container\":\"fileman-thumbnails\",\"allowed_extensions\":[\"csv\",\"doc\",\"docx\",\"html\",\"key\",\"keynote\",\"odp\",\"ods\",\"odt\",\"pages\",\"pdf\",\"pps\",\"ppt\",\"pptx\",\"rtf\",\"tex\",\"txt\",\"xls\",\"xlsx\",\"xml\",\"bmp\",\"exif\",\"gif\",\"ico\",\"jpeg\",\"jpg\",\"png\",\"psd\",\"tif\",\"tiff\",\"3gp\",\"asf\",\"avi\",\"flv\",\"m4v\",\"mkv\",\"mov\",\"mp4\",\"mpeg\",\"mpg\",\"ogg\",\"rm\",\"swf\",\"vob\",\"wmv\",\"aac\",\"aif\",\"aiff\",\"alac\",\"amr\",\"au\",\"cdda\",\"flac\",\"m3u\",\"m4a\",\"m4p\",\"mid\",\"mp3\",\"mpa\",\"pac\",\"ra\",\"wav\",\"wma\"],\"maximum_size\":0,\"thumbnails\":true}'),
	(4,'fileman-thumbnails','FILEman Thumbnails','joomlatools-files/fileman-thumbnails','{\"versions\":{\"small\":{\"dimension\":{\"width\":320,\"height\":320},\"crop\":false},\"medium\":{\"dimension\":{\"width\":768,\"height\":768},\"crop\":false},\"large\":{\"dimension\":{\"width\":1024,\"height\":1024},\"crop\":false}}}'),
	(5,'fileman-attachments','FILEman Attachments','joomlatools-files/fileman-attachments','{\"thumbnails_container\":\"fileman-attachments-thumbnails\",\"allowed_extensions\":[\"csv\",\"doc\",\"docx\",\"html\",\"key\",\"keynote\",\"odp\",\"ods\",\"odt\",\"pages\",\"pdf\",\"pps\",\"ppt\",\"pptx\",\"rtf\",\"tex\",\"txt\",\"xls\",\"xlsx\",\"xml\",\"bmp\",\"exif\",\"gif\",\"ico\",\"jpeg\",\"jpg\",\"png\",\"psd\",\"tif\",\"tiff\",\"3gp\",\"asf\",\"avi\",\"flv\",\"m4v\",\"mkv\",\"mov\",\"mp4\",\"mpeg\",\"mpg\",\"ogg\",\"rm\",\"swf\",\"vob\",\"wmv\",\"aac\",\"aif\",\"aiff\",\"alac\",\"amr\",\"au\",\"cdda\",\"flac\",\"m3u\",\"m4a\",\"m4p\",\"mid\",\"mp3\",\"mpa\",\"pac\",\"ra\",\"wav\",\"wma\"],\"maximum_size\":0,\"thumbnails\":true,\"check_duplicates\":\"confirm\"}'),
	(6,'fileman-attachments-thumbnails','FILEman Attachments Thumbnails','joomlatools-files/fileman-attachments-thumbnails','{\"dimension\":{\"width\":320,\"height\":320},\"crop\":false}'),
	(7,'fileman-user-files','FILEman User Files','joomlatools-files/fileman-user-files','{\"thumbnails_container\":\"fileman-user-thumbnails\",\"allowed_extensions\":[\"csv\",\"doc\",\"docx\",\"html\",\"key\",\"keynote\",\"odp\",\"ods\",\"odt\",\"pages\",\"pdf\",\"pps\",\"ppt\",\"pptx\",\"rtf\",\"tex\",\"txt\",\"xls\",\"xlsx\",\"xml\",\"bmp\",\"exif\",\"gif\",\"ico\",\"jpeg\",\"jpg\",\"png\",\"psd\",\"tif\",\"tiff\",\"3gp\",\"asf\",\"avi\",\"flv\",\"m4v\",\"mkv\",\"mov\",\"mp4\",\"mpeg\",\"mpg\",\"ogg\",\"rm\",\"swf\",\"vob\",\"wmv\",\"aac\",\"aif\",\"aiff\",\"alac\",\"amr\",\"au\",\"cdda\",\"flac\",\"m3u\",\"m4a\",\"m4p\",\"mid\",\"mp3\",\"mpa\",\"pac\",\"ra\",\"wav\",\"wma\"],\"maximum_size\":0,\"thumbnails\":true}'),
	(8,'fileman-user-thumbnails','FILEman User Thumbnails','joomlatools-files/fileman-user-thumbnails','{\"versions\":{\"small\":{\"dimension\":{\"width\":320,\"height\":320},\"crop\":false},\"medium\":{\"dimension\":{\"width\":768,\"height\":768},\"crop\":false},\"large\":{\"dimension\":{\"width\":1024,\"height\":1024},\"crop\":false}}}');

/*!40000 ALTER TABLE `j_files_containers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_files_mimetypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_files_mimetypes`;

CREATE TABLE `j_files_mimetypes` (
  `mimetype` varchar(255) NOT NULL,
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`mimetype`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `j_files_mimetypes` WRITE;
/*!40000 ALTER TABLE `j_files_mimetypes` DISABLE KEYS */;

INSERT INTO `j_files_mimetypes` (`mimetype`, `extension`)
VALUES
	('application/andrew-inset','ez'),
	('application/applixware','aw'),
	('application/atom+xml','atom'),
	('application/atomcat+xml','atomcat'),
	('application/atomsvc+xml','atomsvc'),
	('application/ccxml+xml','ccxml'),
	('application/cdmi-capability','cdmia'),
	('application/cdmi-container','cdmic'),
	('application/cdmi-domain','cdmid'),
	('application/cdmi-object','cdmio'),
	('application/cdmi-queue','cdmiq'),
	('application/cu-seeme','cu'),
	('application/davmount+xml','davmount'),
	('application/docbook+xml','dbk'),
	('application/dssc+der','dssc'),
	('application/dssc+xml','xdssc'),
	('application/ecmascript','ecma'),
	('application/emma+xml','emma'),
	('application/epub+zip','epub'),
	('application/exi','exi'),
	('application/font-tdpfr','pfr'),
	('application/font-woff','woff'),
	('application/gml+xml','gml'),
	('application/gpx+xml','gpx'),
	('application/gxf','gxf'),
	('application/hyperstudio','stk'),
	('application/inkml+xml','ink'),
	('application/inkml+xml','inkml'),
	('application/ipfix','ipfix'),
	('application/java-archive','jar'),
	('application/java-serialized-object','ser'),
	('application/java-vm','class'),
	('application/javascript','js'),
	('application/json','json'),
	('application/jsonml+json','jsonml'),
	('application/lost+xml','lostxml'),
	('application/mac-binhex40','hqx'),
	('application/mac-compactpro','cpt'),
	('application/mads+xml','mads'),
	('application/marc','mrc'),
	('application/marcxml+xml','mrcx'),
	('application/mathematica','ma'),
	('application/mathematica','mb'),
	('application/mathematica','nb'),
	('application/mathml+xml','mathml'),
	('application/mbox','mbox'),
	('application/mediaservercontrol+xml','mscml'),
	('application/metalink+xml','metalink'),
	('application/metalink4+xml','meta4'),
	('application/mets+xml','mets'),
	('application/mods+xml','mods'),
	('application/mp21','m21'),
	('application/mp21','mp21'),
	('application/mp4','mp4s'),
	('application/msword','doc'),
	('application/msword','dot'),
	('application/mxf','mxf'),
	('application/octet-stream','bin'),
	('application/octet-stream','bpk'),
	('application/octet-stream','deploy'),
	('application/octet-stream','dist'),
	('application/octet-stream','distz'),
	('application/octet-stream','dms'),
	('application/octet-stream','dump'),
	('application/octet-stream','elc'),
	('application/octet-stream','lrf'),
	('application/octet-stream','mar'),
	('application/octet-stream','pkg'),
	('application/octet-stream','so'),
	('application/oda','oda'),
	('application/oebps-package+xml','opf'),
	('application/ogg','ogx'),
	('application/omdoc+xml','omdoc'),
	('application/onenote','onepkg'),
	('application/onenote','onetmp'),
	('application/onenote','onetoc'),
	('application/onenote','onetoc2'),
	('application/oxps','oxps'),
	('application/patch-ops-error+xml','xer'),
	('application/pdf','pdf'),
	('application/pgp-encrypted','pgp'),
	('application/pgp-signature','asc'),
	('application/pgp-signature','sig'),
	('application/pics-rules','prf'),
	('application/pkcs10','p10'),
	('application/pkcs7-mime','p7c'),
	('application/pkcs7-mime','p7m'),
	('application/pkcs7-signature','p7s'),
	('application/pkcs8','p8'),
	('application/pkix-attr-cert','ac'),
	('application/pkix-cert','cer'),
	('application/pkix-crl','crl'),
	('application/pkix-pkipath','pkipath'),
	('application/pkixcmp','pki'),
	('application/pls+xml','pls'),
	('application/postscript','ai'),
	('application/postscript','eps'),
	('application/postscript','ps'),
	('application/prs.cww','cww'),
	('application/pskc+xml','pskcxml'),
	('application/rdf+xml','rdf'),
	('application/reginfo+xml','rif'),
	('application/relax-ng-compact-syntax','rnc'),
	('application/resource-lists+xml','rl'),
	('application/resource-lists-diff+xml','rld'),
	('application/rls-services+xml','rs'),
	('application/rpki-ghostbusters','gbr'),
	('application/rpki-manifest','mft'),
	('application/rpki-roa','roa'),
	('application/rsd+xml','rsd'),
	('application/rss+xml','rss'),
	('application/rtf','rtf'),
	('application/sbml+xml','sbml'),
	('application/scvp-cv-request','scq'),
	('application/scvp-cv-response','scs'),
	('application/scvp-vp-request','spq'),
	('application/scvp-vp-response','spp'),
	('application/sdp','sdp'),
	('application/set-payment-initiation','setpay'),
	('application/set-registration-initiation','setreg'),
	('application/shf+xml','shf'),
	('application/smil+xml','smi'),
	('application/smil+xml','smil'),
	('application/sparql-query','rq'),
	('application/sparql-results+xml','srx'),
	('application/srgs','gram'),
	('application/srgs+xml','grxml'),
	('application/sru+xml','sru'),
	('application/ssdl+xml','ssdl'),
	('application/ssml+xml','ssml'),
	('application/tei+xml','tei'),
	('application/tei+xml','teicorpus'),
	('application/thraud+xml','tfi'),
	('application/timestamped-data','tsd'),
	('application/vnd.3gpp.pic-bw-large','plb'),
	('application/vnd.3gpp.pic-bw-small','psb'),
	('application/vnd.3gpp.pic-bw-var','pvb'),
	('application/vnd.3gpp2.tcap','tcap'),
	('application/vnd.3m.post-it-notes','pwn'),
	('application/vnd.accpac.simply.aso','aso'),
	('application/vnd.accpac.simply.imp','imp'),
	('application/vnd.acucobol','acu'),
	('application/vnd.acucorp','acutc'),
	('application/vnd.acucorp','atc'),
	('application/vnd.adobe.air-application-installer-package+zip','air'),
	('application/vnd.adobe.formscentral.fcdt','fcdt'),
	('application/vnd.adobe.fxp','fxp'),
	('application/vnd.adobe.fxp','fxpl'),
	('application/vnd.adobe.xdp+xml','xdp'),
	('application/vnd.adobe.xfdf','xfdf'),
	('application/vnd.ahead.space','ahead'),
	('application/vnd.airzip.filesecure.azf','azf'),
	('application/vnd.airzip.filesecure.azs','azs'),
	('application/vnd.amazon.ebook','azw'),
	('application/vnd.americandynamics.acc','acc'),
	('application/vnd.amiga.ami','ami'),
	('application/vnd.android.package-archive','apk'),
	('application/vnd.anser-web-certificate-issue-initiation','cii'),
	('application/vnd.anser-web-funds-transfer-initiation','fti'),
	('application/vnd.antix.game-component','atx'),
	('application/vnd.apple.installer+xml','mpkg'),
	('application/vnd.apple.mpegurl','m3u8'),
	('application/vnd.aristanetworks.swi','swi'),
	('application/vnd.astraea-software.iota','iota'),
	('application/vnd.audiograph','aep'),
	('application/vnd.blueice.multipass','mpm'),
	('application/vnd.bmi','bmi'),
	('application/vnd.businessobjects','rep'),
	('application/vnd.chemdraw+xml','cdxml'),
	('application/vnd.chipnuts.karaoke-mmd','mmd'),
	('application/vnd.cinderella','cdy'),
	('application/vnd.claymore','cla'),
	('application/vnd.cloanto.rp9','rp9'),
	('application/vnd.clonk.c4group','c4d'),
	('application/vnd.clonk.c4group','c4f'),
	('application/vnd.clonk.c4group','c4g'),
	('application/vnd.clonk.c4group','c4p'),
	('application/vnd.clonk.c4group','c4u'),
	('application/vnd.cluetrust.cartomobile-config','c11amc'),
	('application/vnd.cluetrust.cartomobile-config-pkg','c11amz'),
	('application/vnd.commonspace','csp'),
	('application/vnd.contact.cmsg','cdbcmsg'),
	('application/vnd.cosmocaller','cmc'),
	('application/vnd.crick.clicker','clkx'),
	('application/vnd.crick.clicker.keyboard','clkk'),
	('application/vnd.crick.clicker.palette','clkp'),
	('application/vnd.crick.clicker.template','clkt'),
	('application/vnd.crick.clicker.wordbank','clkw'),
	('application/vnd.criticaltools.wbs+xml','wbs'),
	('application/vnd.ctc-posml','pml'),
	('application/vnd.cups-ppd','ppd'),
	('application/vnd.curl.car','car'),
	('application/vnd.curl.pcurl','pcurl'),
	('application/vnd.dart','dart'),
	('application/vnd.data-vision.rdz','rdz'),
	('application/vnd.dece.data','uvd'),
	('application/vnd.dece.data','uvf'),
	('application/vnd.dece.data','uvvd'),
	('application/vnd.dece.data','uvvf'),
	('application/vnd.dece.ttml+xml','uvt'),
	('application/vnd.dece.ttml+xml','uvvt'),
	('application/vnd.dece.unspecified','uvvx'),
	('application/vnd.dece.unspecified','uvx'),
	('application/vnd.dece.zip','uvvz'),
	('application/vnd.dece.zip','uvz'),
	('application/vnd.denovo.fcselayout-link','fe_launch'),
	('application/vnd.dna','dna'),
	('application/vnd.dolby.mlp','mlp'),
	('application/vnd.dpgraph','dpg'),
	('application/vnd.dreamfactory','dfac'),
	('application/vnd.ds-keypoint','kpxx'),
	('application/vnd.dvb.ait','ait'),
	('application/vnd.dvb.service','svc'),
	('application/vnd.dynageo','geo'),
	('application/vnd.ecowin.chart','mag'),
	('application/vnd.enliven','nml'),
	('application/vnd.epson.esf','esf'),
	('application/vnd.epson.msf','msf'),
	('application/vnd.epson.quickanime','qam'),
	('application/vnd.epson.salt','slt'),
	('application/vnd.epson.ssf','ssf'),
	('application/vnd.eszigno3+xml','es3'),
	('application/vnd.eszigno3+xml','et3'),
	('application/vnd.ezpix-album','ez2'),
	('application/vnd.ezpix-package','ez3'),
	('application/vnd.fdf','fdf'),
	('application/vnd.fdsn.mseed','mseed'),
	('application/vnd.fdsn.seed','dataless'),
	('application/vnd.fdsn.seed','seed'),
	('application/vnd.flographit','gph'),
	('application/vnd.fluxtime.clip','ftc'),
	('application/vnd.framemaker','book'),
	('application/vnd.framemaker','fm'),
	('application/vnd.framemaker','frame'),
	('application/vnd.framemaker','maker'),
	('application/vnd.frogans.fnc','fnc'),
	('application/vnd.frogans.ltf','ltf'),
	('application/vnd.fsc.weblaunch','fsc'),
	('application/vnd.fujitsu.oasys','oas'),
	('application/vnd.fujitsu.oasys2','oa2'),
	('application/vnd.fujitsu.oasys3','oa3'),
	('application/vnd.fujitsu.oasysgp','fg5'),
	('application/vnd.fujitsu.oasysprs','bh2'),
	('application/vnd.fujixerox.ddd','ddd'),
	('application/vnd.fujixerox.docuworks','xdw'),
	('application/vnd.fujixerox.docuworks.binder','xbd'),
	('application/vnd.fuzzysheet','fzs'),
	('application/vnd.genomatix.tuxedo','txd'),
	('application/vnd.geogebra.file','ggb'),
	('application/vnd.geogebra.tool','ggt'),
	('application/vnd.geometry-explorer','gex'),
	('application/vnd.geometry-explorer','gre'),
	('application/vnd.geonext','gxt'),
	('application/vnd.geoplan','g2w'),
	('application/vnd.geospace','g3w'),
	('application/vnd.gmx','gmx'),
	('application/vnd.google-earth.kml+xml','kml'),
	('application/vnd.google-earth.kmz','kmz'),
	('application/vnd.grafeq','gqf'),
	('application/vnd.grafeq','gqs'),
	('application/vnd.groove-account','gac'),
	('application/vnd.groove-help','ghf'),
	('application/vnd.groove-identity-message','gim'),
	('application/vnd.groove-injector','grv'),
	('application/vnd.groove-tool-message','gtm'),
	('application/vnd.groove-tool-template','tpl'),
	('application/vnd.groove-vcard','vcg'),
	('application/vnd.hal+xml','hal'),
	('application/vnd.handheld-entertainment+xml','zmm'),
	('application/vnd.hbci','hbci'),
	('application/vnd.hhe.lesson-player','les'),
	('application/vnd.hp-hpgl','hpgl'),
	('application/vnd.hp-hpid','hpid'),
	('application/vnd.hp-hps','hps'),
	('application/vnd.hp-jlyt','jlt'),
	('application/vnd.hp-pcl','pcl'),
	('application/vnd.hp-pclxl','pclxl'),
	('application/vnd.hydrostatix.sof-data','sfd-hdstx'),
	('application/vnd.ibm.minipay','mpy'),
	('application/vnd.ibm.modcap','afp'),
	('application/vnd.ibm.modcap','list3820'),
	('application/vnd.ibm.modcap','listafp'),
	('application/vnd.ibm.rights-management','irm'),
	('application/vnd.ibm.secure-container','sc'),
	('application/vnd.iccprofile','icc'),
	('application/vnd.iccprofile','icm'),
	('application/vnd.igloader','igl'),
	('application/vnd.immervision-ivp','ivp'),
	('application/vnd.immervision-ivu','ivu'),
	('application/vnd.insors.igm','igm'),
	('application/vnd.intercon.formnet','xpw'),
	('application/vnd.intercon.formnet','xpx'),
	('application/vnd.intergeo','i2g'),
	('application/vnd.intu.qbo','qbo'),
	('application/vnd.intu.qfx','qfx'),
	('application/vnd.ipunplugged.rcprofile','rcprofile'),
	('application/vnd.irepository.package+xml','irp'),
	('application/vnd.is-xpr','xpr'),
	('application/vnd.isac.fcs','fcs'),
	('application/vnd.jam','jam'),
	('application/vnd.jcp.javame.midlet-rms','rms'),
	('application/vnd.jisp','jisp'),
	('application/vnd.joost.joda-archive','joda'),
	('application/vnd.kahootz','ktr'),
	('application/vnd.kahootz','ktz'),
	('application/vnd.kde.karbon','karbon'),
	('application/vnd.kde.kchart','chrt'),
	('application/vnd.kde.kformula','kfo'),
	('application/vnd.kde.kivio','flw'),
	('application/vnd.kde.kontour','kon'),
	('application/vnd.kde.kpresenter','kpr'),
	('application/vnd.kde.kpresenter','kpt'),
	('application/vnd.kde.kspread','ksp'),
	('application/vnd.kde.kword','kwd'),
	('application/vnd.kde.kword','kwt'),
	('application/vnd.kenameaapp','htke'),
	('application/vnd.kidspiration','kia'),
	('application/vnd.kinar','kne'),
	('application/vnd.kinar','knp'),
	('application/vnd.koan','skd'),
	('application/vnd.koan','skm'),
	('application/vnd.koan','skp'),
	('application/vnd.koan','skt'),
	('application/vnd.kodak-descriptor','sse'),
	('application/vnd.las.las+xml','lasxml'),
	('application/vnd.llamagraphics.life-balance.desktop','lbd'),
	('application/vnd.llamagraphics.life-balance.exchange+xml','lbe'),
	('application/vnd.lotus-1-2-3','123'),
	('application/vnd.lotus-approach','apr'),
	('application/vnd.lotus-freelance','pre'),
	('application/vnd.lotus-notes','nsf'),
	('application/vnd.lotus-organizer','org'),
	('application/vnd.lotus-screencam','scm'),
	('application/vnd.lotus-wordpro','lwp'),
	('application/vnd.macports.portpkg','portpkg'),
	('application/vnd.mcd','mcd'),
	('application/vnd.medcalcdata','mc1'),
	('application/vnd.mediastation.cdkey','cdkey'),
	('application/vnd.mfer','mwf'),
	('application/vnd.mfmp','mfm'),
	('application/vnd.micrografx.flo','flo'),
	('application/vnd.micrografx.igx','igx'),
	('application/vnd.mif','mif'),
	('application/vnd.mobius.daf','daf'),
	('application/vnd.mobius.dis','dis'),
	('application/vnd.mobius.mbk','mbk'),
	('application/vnd.mobius.mqy','mqy'),
	('application/vnd.mobius.msl','msl'),
	('application/vnd.mobius.plc','plc'),
	('application/vnd.mobius.txf','txf'),
	('application/vnd.mophun.application','mpn'),
	('application/vnd.mophun.certificate','mpc'),
	('application/vnd.mozilla.xul+xml','xul'),
	('application/vnd.ms-artgalry','cil'),
	('application/vnd.ms-cab-compressed','cab'),
	('application/vnd.ms-excel','xla'),
	('application/vnd.ms-excel','xlc'),
	('application/vnd.ms-excel','xlm'),
	('application/vnd.ms-excel','xls'),
	('application/vnd.ms-excel','xlt'),
	('application/vnd.ms-excel','xlw'),
	('application/vnd.ms-excel.addin.macroenabled.12','xlam'),
	('application/vnd.ms-excel.sheet.binary.macroenabled.12','xlsb'),
	('application/vnd.ms-excel.sheet.macroenabled.12','xlsm'),
	('application/vnd.ms-excel.template.macroenabled.12','xltm'),
	('application/vnd.ms-fontobject','eot'),
	('application/vnd.ms-htmlhelp','chm'),
	('application/vnd.ms-ims','ims'),
	('application/vnd.ms-lrm','lrm'),
	('application/vnd.ms-officetheme','thmx'),
	('application/vnd.ms-pki.seccat','cat'),
	('application/vnd.ms-pki.stl','stl'),
	('application/vnd.ms-powerpoint','pot'),
	('application/vnd.ms-powerpoint','pps'),
	('application/vnd.ms-powerpoint','ppt'),
	('application/vnd.ms-powerpoint.addin.macroenabled.12','ppam'),
	('application/vnd.ms-powerpoint.presentation.macroenabled.12','pptm'),
	('application/vnd.ms-powerpoint.slide.macroenabled.12','sldm'),
	('application/vnd.ms-powerpoint.slideshow.macroenabled.12','ppsm'),
	('application/vnd.ms-powerpoint.template.macroenabled.12','potm'),
	('application/vnd.ms-project','mpp'),
	('application/vnd.ms-project','mpt'),
	('application/vnd.ms-word.document.macroenabled.12','docm'),
	('application/vnd.ms-word.template.macroenabled.12','dotm'),
	('application/vnd.ms-works','wcm'),
	('application/vnd.ms-works','wdb'),
	('application/vnd.ms-works','wks'),
	('application/vnd.ms-works','wps'),
	('application/vnd.ms-wpl','wpl'),
	('application/vnd.ms-xpsdocument','xps'),
	('application/vnd.mseq','mseq'),
	('application/vnd.musician','mus'),
	('application/vnd.muvee.style','msty'),
	('application/vnd.mynfc','taglet'),
	('application/vnd.neurolanguage.nlu','nlu'),
	('application/vnd.nitf','nitf'),
	('application/vnd.nitf','ntf'),
	('application/vnd.noblenet-directory','nnd'),
	('application/vnd.noblenet-sealer','nns'),
	('application/vnd.noblenet-web','nnw'),
	('application/vnd.nokia.n-gage.data','ngdat'),
	('application/vnd.nokia.n-gage.symbian.install','n-gage'),
	('application/vnd.nokia.radio-preset','rpst'),
	('application/vnd.nokia.radio-presets','rpss'),
	('application/vnd.novadigm.edm','edm'),
	('application/vnd.novadigm.edx','edx'),
	('application/vnd.novadigm.ext','ext'),
	('application/vnd.oasis.opendocument.chart','odc'),
	('application/vnd.oasis.opendocument.chart-template','otc'),
	('application/vnd.oasis.opendocument.database','odb'),
	('application/vnd.oasis.opendocument.formula','odf'),
	('application/vnd.oasis.opendocument.formula-template','odft'),
	('application/vnd.oasis.opendocument.graphics','odg'),
	('application/vnd.oasis.opendocument.graphics-template','otg'),
	('application/vnd.oasis.opendocument.image','odi'),
	('application/vnd.oasis.opendocument.image-template','oti'),
	('application/vnd.oasis.opendocument.presentation','odp'),
	('application/vnd.oasis.opendocument.presentation-template','otp'),
	('application/vnd.oasis.opendocument.spreadsheet','ods'),
	('application/vnd.oasis.opendocument.spreadsheet-template','ots'),
	('application/vnd.oasis.opendocument.text','odt'),
	('application/vnd.oasis.opendocument.text-master','odm'),
	('application/vnd.oasis.opendocument.text-template','ott'),
	('application/vnd.oasis.opendocument.text-web','oth'),
	('application/vnd.olpc-sugar','xo'),
	('application/vnd.oma.dd2+xml','dd2'),
	('application/vnd.openofficeorg.extension','oxt'),
	('application/vnd.openxmlformats-officedocument.presentationml.presentation','pptx'),
	('application/vnd.openxmlformats-officedocument.presentationml.slide','sldx'),
	('application/vnd.openxmlformats-officedocument.presentationml.slideshow','ppsx'),
	('application/vnd.openxmlformats-officedocument.presentationml.template','potx'),
	('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','xlsx'),
	('application/vnd.openxmlformats-officedocument.spreadsheetml.template','xltx'),
	('application/vnd.openxmlformats-officedocument.wordprocessingml.document','docx'),
	('application/vnd.openxmlformats-officedocument.wordprocessingml.template','dotx'),
	('application/vnd.osgeo.mapguide.package','mgp'),
	('application/vnd.osgi.dp','dp'),
	('application/vnd.osgi.subsystem','esa'),
	('application/vnd.palm','oprc'),
	('application/vnd.palm','pdb'),
	('application/vnd.palm','pqa'),
	('application/vnd.pawaafile','paw'),
	('application/vnd.pg.format','str'),
	('application/vnd.pg.osasli','ei6'),
	('application/vnd.picsel','efif'),
	('application/vnd.pmi.widget','wg'),
	('application/vnd.pocketlearn','plf'),
	('application/vnd.powerbuilder6','pbd'),
	('application/vnd.previewsystems.box','box'),
	('application/vnd.proteus.magazine','mgz'),
	('application/vnd.publishare-delta-tree','qps'),
	('application/vnd.pvi.ptid1','ptid'),
	('application/vnd.quark.quarkxpress','qwd'),
	('application/vnd.quark.quarkxpress','qwt'),
	('application/vnd.quark.quarkxpress','qxb'),
	('application/vnd.quark.quarkxpress','qxd'),
	('application/vnd.quark.quarkxpress','qxl'),
	('application/vnd.quark.quarkxpress','qxt'),
	('application/vnd.realvnc.bed','bed'),
	('application/vnd.recordare.musicxml','mxl'),
	('application/vnd.recordare.musicxml+xml','musicxml'),
	('application/vnd.rig.cryptonote','cryptonote'),
	('application/vnd.rim.cod','cod'),
	('application/vnd.rn-realmedia','rm'),
	('application/vnd.rn-realmedia-vbr','rmvb'),
	('application/vnd.route66.link66+xml','link66'),
	('application/vnd.sailingtracker.track','st'),
	('application/vnd.seemail','see'),
	('application/vnd.sema','sema'),
	('application/vnd.semd','semd'),
	('application/vnd.semf','semf'),
	('application/vnd.shana.informed.formdata','ifm'),
	('application/vnd.shana.informed.formtemplate','itp'),
	('application/vnd.shana.informed.interchange','iif'),
	('application/vnd.shana.informed.package','ipk'),
	('application/vnd.simtech-mindmapper','twd'),
	('application/vnd.simtech-mindmapper','twds'),
	('application/vnd.smaf','mmf'),
	('application/vnd.smart.teacher','teacher'),
	('application/vnd.solent.sdkm+xml','sdkd'),
	('application/vnd.solent.sdkm+xml','sdkm'),
	('application/vnd.spotfire.dxp','dxp'),
	('application/vnd.spotfire.sfs','sfs'),
	('application/vnd.stardivision.calc','sdc'),
	('application/vnd.stardivision.draw','sda'),
	('application/vnd.stardivision.impress','sdd'),
	('application/vnd.stardivision.math','smf'),
	('application/vnd.stardivision.writer','sdw'),
	('application/vnd.stardivision.writer','vor'),
	('application/vnd.stardivision.writer-global','sgl'),
	('application/vnd.stepmania.package','smzip'),
	('application/vnd.stepmania.stepchart','sm'),
	('application/vnd.sun.xml.calc','sxc'),
	('application/vnd.sun.xml.calc.template','stc'),
	('application/vnd.sun.xml.draw','sxd'),
	('application/vnd.sun.xml.draw.template','std'),
	('application/vnd.sun.xml.impress','sxi'),
	('application/vnd.sun.xml.impress.template','sti'),
	('application/vnd.sun.xml.math','sxm'),
	('application/vnd.sun.xml.writer','sxw'),
	('application/vnd.sun.xml.writer.global','sxg'),
	('application/vnd.sun.xml.writer.template','stw'),
	('application/vnd.sus-calendar','sus'),
	('application/vnd.sus-calendar','susp'),
	('application/vnd.svd','svd'),
	('application/vnd.symbian.install','sis'),
	('application/vnd.symbian.install','sisx'),
	('application/vnd.syncml+xml','xsm'),
	('application/vnd.syncml.dm+wbxml','bdm'),
	('application/vnd.syncml.dm+xml','xdm'),
	('application/vnd.tao.intent-module-archive','tao'),
	('application/vnd.tcpdump.pcap','cap'),
	('application/vnd.tcpdump.pcap','dmp'),
	('application/vnd.tcpdump.pcap','pcap'),
	('application/vnd.tmobile-livetv','tmo'),
	('application/vnd.trid.tpt','tpt'),
	('application/vnd.triscape.mxs','mxs'),
	('application/vnd.trueapp','tra'),
	('application/vnd.ufdl','ufd'),
	('application/vnd.ufdl','ufdl'),
	('application/vnd.uiq.theme','utz'),
	('application/vnd.umajin','umj'),
	('application/vnd.unity','unityweb'),
	('application/vnd.uoml+xml','uoml'),
	('application/vnd.vcx','vcx'),
	('application/vnd.visio','vsd'),
	('application/vnd.visio','vss'),
	('application/vnd.visio','vst'),
	('application/vnd.visio','vsw'),
	('application/vnd.visionary','vis'),
	('application/vnd.vsf','vsf'),
	('application/vnd.wap.wbxml','wbxml'),
	('application/vnd.wap.wmlc','wmlc'),
	('application/vnd.wap.wmlscriptc','wmlsc'),
	('application/vnd.webturbo','wtb'),
	('application/vnd.wolfram.player','nbp'),
	('application/vnd.wordperfect','wpd'),
	('application/vnd.wqd','wqd'),
	('application/vnd.wt.stf','stf'),
	('application/vnd.xara','xar'),
	('application/vnd.xfdl','xfdl'),
	('application/vnd.yamaha.hv-dic','hvd'),
	('application/vnd.yamaha.hv-script','hvs'),
	('application/vnd.yamaha.hv-voice','hvp'),
	('application/vnd.yamaha.openscoreformat','osf'),
	('application/vnd.yamaha.openscoreformat.osfpvg+xml','osfpvg'),
	('application/vnd.yamaha.smaf-audio','saf'),
	('application/vnd.yamaha.smaf-phrase','spf'),
	('application/vnd.yellowriver-custom-menu','cmp'),
	('application/vnd.zul','zir'),
	('application/vnd.zul','zirz'),
	('application/vnd.zzazz.deck+xml','zaz'),
	('application/voicexml+xml','vxml'),
	('application/widget','wgt'),
	('application/winhlp','hlp'),
	('application/wsdl+xml','wsdl'),
	('application/wspolicy+xml','wspolicy'),
	('application/x-7z-compressed','7z'),
	('application/x-abiword','abw'),
	('application/x-ace-compressed','ace'),
	('application/x-apple-diskimage','dmg'),
	('application/x-authorware-bin','aab'),
	('application/x-authorware-bin','u32'),
	('application/x-authorware-bin','vox'),
	('application/x-authorware-bin','x32'),
	('application/x-authorware-map','aam'),
	('application/x-authorware-seg','aas'),
	('application/x-bcpio','bcpio'),
	('application/x-bittorrent','torrent'),
	('application/x-blorb','blb'),
	('application/x-blorb','blorb'),
	('application/x-bzip','bz'),
	('application/x-bzip2','boz'),
	('application/x-bzip2','bz2'),
	('application/x-cbr','cb7'),
	('application/x-cbr','cba'),
	('application/x-cbr','cbr'),
	('application/x-cbr','cbt'),
	('application/x-cbr','cbz'),
	('application/x-cdlink','vcd'),
	('application/x-cfs-compressed','cfs'),
	('application/x-chat','chat'),
	('application/x-chess-pgn','pgn'),
	('application/x-conference','nsc'),
	('application/x-cpio','cpio'),
	('application/x-csh','csh'),
	('application/x-debian-package','deb'),
	('application/x-debian-package','udeb'),
	('application/x-dgc-compressed','dgc'),
	('application/x-director','cct'),
	('application/x-director','cst'),
	('application/x-director','cxt'),
	('application/x-director','dcr'),
	('application/x-director','dir'),
	('application/x-director','dxr'),
	('application/x-director','fgd'),
	('application/x-director','swa'),
	('application/x-director','w3d'),
	('application/x-doom','wad'),
	('application/x-dtbncx+xml','ncx'),
	('application/x-dtbook+xml','dtb'),
	('application/x-dtbresource+xml','res'),
	('application/x-dvi','dvi'),
	('application/x-envoy','evy'),
	('application/x-eva','eva'),
	('application/x-font-bdf','bdf'),
	('application/x-font-ghostscript','gsf'),
	('application/x-font-linux-psf','psf'),
	('application/x-font-otf','otf'),
	('application/x-font-pcf','pcf'),
	('application/x-font-snf','snf'),
	('application/x-font-ttf','ttc'),
	('application/x-font-ttf','ttf'),
	('application/x-font-type1','afm'),
	('application/x-font-type1','pfa'),
	('application/x-font-type1','pfb'),
	('application/x-font-type1','pfm'),
	('application/x-freearc','arc'),
	('application/x-futuresplash','spl'),
	('application/x-gca-compressed','gca'),
	('application/x-glulx','ulx'),
	('application/x-gnumeric','gnumeric'),
	('application/x-gramps-xml','gramps'),
	('application/x-gtar','gtar'),
	('application/x-gzip','gz'),
	('application/x-hdf','hdf'),
	('application/x-install-instructions','install'),
	('application/x-iso9660-image','iso'),
	('application/x-java-jnlp-file','jnlp'),
	('application/x-latex','latex'),
	('application/x-lzh-compressed','lha'),
	('application/x-lzh-compressed','lzh'),
	('application/x-mie','mie'),
	('application/x-mobipocket-ebook','mobi'),
	('application/x-mobipocket-ebook','prc'),
	('application/x-ms-application','application'),
	('application/x-ms-shortcut','lnk'),
	('application/x-ms-wmd','wmd'),
	('application/x-ms-wmz','wmz'),
	('application/x-ms-xbap','xbap'),
	('application/x-msaccess','mdb'),
	('application/x-msbinder','obd'),
	('application/x-mscardfile','crd'),
	('application/x-msclip','clp'),
	('application/x-msdownload','bat'),
	('application/x-msdownload','com'),
	('application/x-msdownload','dll'),
	('application/x-msdownload','exe'),
	('application/x-msdownload','msi'),
	('application/x-msmediaview','m13'),
	('application/x-msmediaview','m14'),
	('application/x-msmediaview','mvb'),
	('application/x-msmetafile','emf'),
	('application/x-msmetafile','emz'),
	('application/x-msmetafile','wmf'),
	('application/x-msmetafile','wmz'),
	('application/x-msmoney','mny'),
	('application/x-mspublisher','pub'),
	('application/x-msschedule','scd'),
	('application/x-msterminal','trm'),
	('application/x-mswrite','wri'),
	('application/x-netcdf','cdf'),
	('application/x-netcdf','nc'),
	('application/x-nzb','nzb'),
	('application/x-pkcs12','p12'),
	('application/x-pkcs12','pfx'),
	('application/x-pkcs7-certificates','p7b'),
	('application/x-pkcs7-certificates','spc'),
	('application/x-pkcs7-certreqresp','p7r'),
	('application/x-rar-compressed','rar'),
	('application/x-research-info-systems','ris'),
	('application/x-sh','sh'),
	('application/x-shar','shar'),
	('application/x-shockwave-flash','swf'),
	('application/x-silverlight-app','xap'),
	('application/x-sql','sql'),
	('application/x-stuffit','sit'),
	('application/x-stuffitx','sitx'),
	('application/x-subrip','srt'),
	('application/x-sv4cpio','sv4cpio'),
	('application/x-sv4crc','sv4crc'),
	('application/x-t3vm-image','t3'),
	('application/x-tads','gam'),
	('application/x-tar','tar'),
	('application/x-tcl','tcl'),
	('application/x-tex','tex'),
	('application/x-tex-tfm','tfm'),
	('application/x-texinfo','texi'),
	('application/x-texinfo','texinfo'),
	('application/x-tgif','obj'),
	('application/x-ustar','ustar'),
	('application/x-wais-source','src'),
	('application/x-x509-ca-cert','crt'),
	('application/x-x509-ca-cert','der'),
	('application/x-xfig','fig'),
	('application/x-xliff+xml','xlf'),
	('application/x-xpinstall','xpi'),
	('application/x-xz','xz'),
	('application/x-zmachine','z1'),
	('application/x-zmachine','z2'),
	('application/x-zmachine','z3'),
	('application/x-zmachine','z4'),
	('application/x-zmachine','z5'),
	('application/x-zmachine','z6'),
	('application/x-zmachine','z7'),
	('application/x-zmachine','z8'),
	('application/xaml+xml','xaml'),
	('application/xcap-diff+xml','xdf'),
	('application/xenc+xml','xenc'),
	('application/xhtml+xml','xht'),
	('application/xhtml+xml','xhtml'),
	('application/xml','xml'),
	('application/xml','xsl'),
	('application/xml-dtd','dtd'),
	('application/xop+xml','xop'),
	('application/xproc+xml','xpl'),
	('application/xslt+xml','xslt'),
	('application/xspf+xml','xspf'),
	('application/xv+xml','mxml'),
	('application/xv+xml','xhvml'),
	('application/xv+xml','xvm'),
	('application/xv+xml','xvml'),
	('application/yang','yang'),
	('application/yin+xml','yin'),
	('application/zip','zip'),
	('audio/adpcm','adp'),
	('audio/basic','au'),
	('audio/basic','snd'),
	('audio/midi','kar'),
	('audio/midi','mid'),
	('audio/midi','midi'),
	('audio/midi','rmi'),
	('audio/mp4','mp4a'),
	('audio/mpeg','m2a'),
	('audio/mpeg','m3a'),
	('audio/mpeg','mp2'),
	('audio/mpeg','mp2a'),
	('audio/mpeg','mp3'),
	('audio/mpeg','mpga'),
	('audio/ogg','oga'),
	('audio/ogg','ogg'),
	('audio/ogg','spx'),
	('audio/s3m','s3m'),
	('audio/silk','sil'),
	('audio/vnd.dece.audio','uva'),
	('audio/vnd.dece.audio','uvva'),
	('audio/vnd.digital-winds','eol'),
	('audio/vnd.dra','dra'),
	('audio/vnd.dts','dts'),
	('audio/vnd.dts.hd','dtshd'),
	('audio/vnd.lucent.voice','lvp'),
	('audio/vnd.ms-playready.media.pya','pya'),
	('audio/vnd.nuera.ecelp4800','ecelp4800'),
	('audio/vnd.nuera.ecelp7470','ecelp7470'),
	('audio/vnd.nuera.ecelp9600','ecelp9600'),
	('audio/vnd.rip','rip'),
	('audio/webm','weba'),
	('audio/x-aac','aac'),
	('audio/x-aiff','aif'),
	('audio/x-aiff','aifc'),
	('audio/x-aiff','aiff'),
	('audio/x-caf','caf'),
	('audio/x-flac','flac'),
	('audio/x-matroska','mka'),
	('audio/x-mpegurl','m3u'),
	('audio/x-ms-wax','wax'),
	('audio/x-ms-wma','wma'),
	('audio/x-pn-realaudio','ra'),
	('audio/x-pn-realaudio','ram'),
	('audio/x-pn-realaudio-plugin','rmp'),
	('audio/x-wav','wav'),
	('audio/xm','xm'),
	('chemical/x-cdx','cdx'),
	('chemical/x-cif','cif'),
	('chemical/x-cmdf','cmdf'),
	('chemical/x-cml','cml'),
	('chemical/x-csml','csml'),
	('chemical/x-xyz','xyz'),
	('image/bmp','bmp'),
	('image/cgm','cgm'),
	('image/g3fax','g3'),
	('image/gif','gif'),
	('image/ief','ief'),
	('image/jpeg','jpe'),
	('image/jpeg','jpeg'),
	('image/jpeg','jpg'),
	('image/ktx','ktx'),
	('image/png','png'),
	('image/prs.btif','btif'),
	('image/sgi','sgi'),
	('image/svg+xml','svg'),
	('image/svg+xml','svgz'),
	('image/tiff','tif'),
	('image/tiff','tiff'),
	('image/vnd.adobe.photoshop','psd'),
	('image/vnd.dece.graphic','uvg'),
	('image/vnd.dece.graphic','uvi'),
	('image/vnd.dece.graphic','uvvg'),
	('image/vnd.dece.graphic','uvvi'),
	('image/vnd.djvu','djv'),
	('image/vnd.djvu','djvu'),
	('image/vnd.dvb.subtitle','sub'),
	('image/vnd.dwg','dwg'),
	('image/vnd.dxf','dxf'),
	('image/vnd.fastbidsheet','fbs'),
	('image/vnd.fpx','fpx'),
	('image/vnd.fst','fst'),
	('image/vnd.fujixerox.edmics-mmr','mmr'),
	('image/vnd.fujixerox.edmics-rlc','rlc'),
	('image/vnd.ms-modi','mdi'),
	('image/vnd.ms-photo','wdp'),
	('image/vnd.net-fpx','npx'),
	('image/vnd.wap.wbmp','wbmp'),
	('image/vnd.xiff','xif'),
	('image/webp','webp'),
	('image/x-3ds','3ds'),
	('image/x-cmu-raster','ras'),
	('image/x-cmx','cmx'),
	('image/x-freehand','fh'),
	('image/x-freehand','fh4'),
	('image/x-freehand','fh5'),
	('image/x-freehand','fh7'),
	('image/x-freehand','fhc'),
	('image/x-icon','ico'),
	('image/x-mrsid-image','sid'),
	('image/x-pcx','pcx'),
	('image/x-pict','pct'),
	('image/x-pict','pic'),
	('image/x-portable-anymap','pnm'),
	('image/x-portable-bitmap','pbm'),
	('image/x-portable-graymap','pgm'),
	('image/x-portable-pixmap','ppm'),
	('image/x-rgb','rgb'),
	('image/x-tga','tga'),
	('image/x-xbitmap','xbm'),
	('image/x-xpixmap','xpm'),
	('image/x-xwindowdump','xwd'),
	('message/rfc822','eml'),
	('message/rfc822','mime'),
	('model/iges','iges'),
	('model/iges','igs'),
	('model/mesh','mesh'),
	('model/mesh','msh'),
	('model/mesh','silo'),
	('model/vnd.collada+xml','dae'),
	('model/vnd.dwf','dwf'),
	('model/vnd.gdl','gdl'),
	('model/vnd.gtw','gtw'),
	('model/vnd.mts','mts'),
	('model/vnd.vtu','vtu'),
	('model/vrml','vrml'),
	('model/vrml','wrl'),
	('model/x3d+binary','x3db'),
	('model/x3d+binary','x3dbz'),
	('model/x3d+vrml','x3dv'),
	('model/x3d+vrml','x3dvz'),
	('model/x3d+xml','x3d'),
	('model/x3d+xml','x3dz'),
	('text/cache-manifest','appcache'),
	('text/calendar','ics'),
	('text/calendar','ifb'),
	('text/css','css'),
	('text/csv','csv'),
	('text/html','htm'),
	('text/html','html'),
	('text/n3','n3'),
	('text/plain','conf'),
	('text/plain','def'),
	('text/plain','in'),
	('text/plain','list'),
	('text/plain','log'),
	('text/plain','text'),
	('text/plain','txt'),
	('text/prs.lines.tag','dsc'),
	('text/richtext','rtx'),
	('text/sgml','sgm'),
	('text/sgml','sgml'),
	('text/tab-separated-values','tsv'),
	('text/troff','man'),
	('text/troff','me'),
	('text/troff','ms'),
	('text/troff','roff'),
	('text/troff','t'),
	('text/troff','tr'),
	('text/turtle','ttl'),
	('text/uri-list','uri'),
	('text/uri-list','uris'),
	('text/uri-list','urls'),
	('text/vcard','vcard'),
	('text/vnd.curl','curl'),
	('text/vnd.curl.dcurl','dcurl'),
	('text/vnd.curl.mcurl','mcurl'),
	('text/vnd.curl.scurl','scurl'),
	('text/vnd.dvb.subtitle','sub'),
	('text/vnd.fly','fly'),
	('text/vnd.fmi.flexstor','flx'),
	('text/vnd.graphviz','gv'),
	('text/vnd.in3d.3dml','3dml'),
	('text/vnd.in3d.spot','spot'),
	('text/vnd.sun.j2me.app-descriptor','jad'),
	('text/vnd.wap.wml','wml'),
	('text/vnd.wap.wmlscript','wmls'),
	('text/x-asm','asm'),
	('text/x-asm','s'),
	('text/x-c','c'),
	('text/x-c','cc'),
	('text/x-c','cpp'),
	('text/x-c','cxx'),
	('text/x-c','dic'),
	('text/x-c','h'),
	('text/x-c','hh'),
	('text/x-fortran','f'),
	('text/x-fortran','f77'),
	('text/x-fortran','f90'),
	('text/x-fortran','for'),
	('text/x-java-source','java'),
	('text/x-nfo','nfo'),
	('text/x-opml','opml'),
	('text/x-pascal','p'),
	('text/x-pascal','pas'),
	('text/x-setext','etx'),
	('text/x-sfv','sfv'),
	('text/x-uuencode','uu'),
	('text/x-vcalendar','vcs'),
	('text/x-vcard','vcf'),
	('video/3gpp','3gp'),
	('video/3gpp2','3g2'),
	('video/h261','h261'),
	('video/h263','h263'),
	('video/h264','h264'),
	('video/jpeg','jpgv'),
	('video/jpm','jpgm'),
	('video/jpm','jpm'),
	('video/mj2','mj2'),
	('video/mj2','mjp2'),
	('video/mp4','mp4'),
	('video/mp4','mp4v'),
	('video/mp4','mpg4'),
	('video/mpeg','m1v'),
	('video/mpeg','m2v'),
	('video/mpeg','mpe'),
	('video/mpeg','mpeg'),
	('video/mpeg','mpg'),
	('video/ogg','ogv'),
	('video/quicktime','mov'),
	('video/quicktime','qt'),
	('video/vnd.dece.hd','uvh'),
	('video/vnd.dece.hd','uvvh'),
	('video/vnd.dece.mobile','uvm'),
	('video/vnd.dece.mobile','uvvm'),
	('video/vnd.dece.pd','uvp'),
	('video/vnd.dece.pd','uvvp'),
	('video/vnd.dece.sd','uvs'),
	('video/vnd.dece.sd','uvvs'),
	('video/vnd.dece.video','uvv'),
	('video/vnd.dece.video','uvvv'),
	('video/vnd.dvb.file','dvb'),
	('video/vnd.fvt','fvt'),
	('video/vnd.mpegurl','m4u'),
	('video/vnd.mpegurl','mxu'),
	('video/vnd.ms-playready.media.pyv','pyv'),
	('video/vnd.uvvu.mp4','uvu'),
	('video/vnd.uvvu.mp4','uvvu'),
	('video/vnd.vivo','viv'),
	('video/webm','webm'),
	('video/x-f4v','f4v'),
	('video/x-fli','fli'),
	('video/x-flv','flv'),
	('video/x-m4v','m4v'),
	('video/x-matroska','mk3d'),
	('video/x-matroska','mks'),
	('video/x-matroska','mkv'),
	('video/x-mng','mng'),
	('video/x-ms-asf','asf'),
	('video/x-ms-asf','asx'),
	('video/x-ms-vob','vob'),
	('video/x-ms-wm','wm'),
	('video/x-ms-wmv','wmv'),
	('video/x-ms-wmx','wmx'),
	('video/x-ms-wvx','wvx'),
	('video/x-msvideo','avi'),
	('video/x-sgi-movie','movie'),
	('video/x-smv','smv'),
	('x-conference/x-cooltalk','ice');

/*!40000 ALTER TABLE `j_files_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_finder_filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_filters`;

CREATE TABLE `j_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links`;

CREATE TABLE `j_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms0`;

CREATE TABLE `j_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms1`;

CREATE TABLE `j_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms2`;

CREATE TABLE `j_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms3`;

CREATE TABLE `j_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms4`;

CREATE TABLE `j_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms5`;

CREATE TABLE `j_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms6`;

CREATE TABLE `j_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms7`;

CREATE TABLE `j_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms8`;

CREATE TABLE `j_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_terms9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_terms9`;

CREATE TABLE `j_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termsa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termsa`;

CREATE TABLE `j_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termsb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termsb`;

CREATE TABLE `j_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termsc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termsc`;

CREATE TABLE `j_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termsd
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termsd`;

CREATE TABLE `j_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termse`;

CREATE TABLE `j_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_links_termsf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_links_termsf`;

CREATE TABLE `j_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_taxonomy`;

CREATE TABLE `j_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `j_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `j_finder_taxonomy` DISABLE KEYS */;

INSERT INTO `j_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`)
VALUES
	(1,0,'ROOT',0,0,0);

/*!40000 ALTER TABLE `j_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_finder_taxonomy_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_taxonomy_map`;

CREATE TABLE `j_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_terms`;

CREATE TABLE `j_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_terms_common
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_terms_common`;

CREATE TABLE `j_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `j_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `j_finder_terms_common` DISABLE KEYS */;

INSERT INTO `j_finder_terms_common` (`term`, `language`)
VALUES
	('a','en'),
	('about','en'),
	('after','en'),
	('ago','en'),
	('all','en'),
	('am','en'),
	('an','en'),
	('and','en'),
	('any','en'),
	('are','en'),
	('aren\'t','en'),
	('as','en'),
	('at','en'),
	('be','en'),
	('but','en'),
	('by','en'),
	('for','en'),
	('from','en'),
	('get','en'),
	('go','en'),
	('how','en'),
	('if','en'),
	('in','en'),
	('into','en'),
	('is','en'),
	('isn\'t','en'),
	('it','en'),
	('its','en'),
	('me','en'),
	('more','en'),
	('most','en'),
	('must','en'),
	('my','en'),
	('new','en'),
	('no','en'),
	('none','en'),
	('not','en'),
	('nothing','en'),
	('of','en'),
	('off','en'),
	('often','en'),
	('old','en'),
	('on','en'),
	('onc','en'),
	('once','en'),
	('only','en'),
	('or','en'),
	('other','en'),
	('our','en'),
	('ours','en'),
	('out','en'),
	('over','en'),
	('page','en'),
	('she','en'),
	('should','en'),
	('small','en'),
	('so','en'),
	('some','en'),
	('than','en'),
	('thank','en'),
	('that','en'),
	('the','en'),
	('their','en'),
	('theirs','en'),
	('them','en'),
	('then','en'),
	('there','en'),
	('these','en'),
	('they','en'),
	('this','en'),
	('those','en'),
	('thus','en'),
	('time','en'),
	('times','en'),
	('to','en'),
	('too','en'),
	('true','en'),
	('under','en'),
	('until','en'),
	('up','en'),
	('upon','en'),
	('use','en'),
	('user','en'),
	('users','en'),
	('version','en'),
	('very','en'),
	('via','en'),
	('want','en'),
	('was','en'),
	('way','en'),
	('were','en'),
	('what','en'),
	('when','en'),
	('where','en'),
	('which','en'),
	('who','en'),
	('whom','en'),
	('whose','en'),
	('why','en'),
	('wide','en'),
	('will','en'),
	('with','en'),
	('within','en'),
	('without','en'),
	('would','en'),
	('yes','en'),
	('yet','en'),
	('you','en'),
	('your','en'),
	('yours','en');

/*!40000 ALTER TABLE `j_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_finder_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_tokens`;

CREATE TABLE `j_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_tokens_aggregate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_tokens_aggregate`;

CREATE TABLE `j_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;



# Dump of table j_finder_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_finder_types`;

CREATE TABLE `j_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table j_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_languages`;

CREATE TABLE `j_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_languages` WRITE;
/*!40000 ALTER TABLE `j_languages` DISABLE KEYS */;

INSERT INTO `j_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`)
VALUES
	(1,0,X'656E2D4742','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);

/*!40000 ALTER TABLE `j_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_menu`;

CREATE TABLE `j_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to j_menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to j_extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to j_users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_menu` WRITE;
/*!40000 ALTER TABLE `j_menu` DISABLE KEYS */;

INSERT INTO `j_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`)
VALUES
	(1,'','Menu_Item_Root',X'726F6F74','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,263,0,'*',0),
	(2,'main','com_banners',X'42616E6E657273','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),
	(3,'main','com_banners',X'42616E6E657273','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),
	(4,'main','com_banners_categories',X'43617465676F72696573','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),
	(5,'main','com_banners_clients',X'436C69656E7473','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),
	(6,'main','com_banners_tracks',X'547261636B73','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),
	(7,'main','com_contact',X'436F6E7461637473','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',19,24,0,'*',1),
	(8,'main','com_contact_contacts',X'436F6E7461637473','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',20,21,0,'*',1),
	(9,'main','com_contact_categories',X'43617465676F72696573','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',22,23,0,'*',1),
	(10,'main','com_messages',X'4D6573736167696E67','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',27,30,0,'*',1),
	(11,'main','com_messages_add',X'4E65772050726976617465204D657373616765','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',28,29,0,'*',1),
	(13,'main','com_newsfeeds',X'4E657773204665656473','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',31,36,0,'*',1),
	(14,'main','com_newsfeeds_feeds',X'4665656473','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',32,33,0,'*',1),
	(15,'main','com_newsfeeds_categories',X'43617465676F72696573','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',34,35,0,'*',1),
	(16,'main','com_redirect',X'5265646972656374','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',37,38,0,'*',1),
	(17,'main','com_search',X'426173696320536561726368','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',39,40,0,'*',1),
	(18,'main','com_finder',X'536D61727420536561726368','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',41,42,0,'*',1),
	(19,'main','com_joomlaupdate',X'4A6F6F6D6C612120557064617465','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),
	(20,'main','com_tags',X'54616773','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',45,46,0,'',1),
	(21,'main','com_postinstall',X'506F73742D696E7374616C6C6174696F6E206D65737361676573','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',47,48,0,'*',1),
	(22,'main','com_associations',X'4D756C74696C696E6775616C204173736F63696174696F6E73','','Multilingual Associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,0,'class:associations',0,'',49,50,0,'*',1),
	(201,'usermenu','Your Profile',X'796F75722D70726F66696C65','','your-profile','index.php?option=com_users&view=profile','component',1,1,1,25,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',219,220,0,'*',0),
	(207,'top','Joomla.org',X'6A6F6F6D6C616F7267','','joomlaorg','https://www.joomla.org/','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',217,218,0,'*',0),
	(229,'aboutjoomla','Single Contact',X'73696E676C652D636F6E74616374','','using-joomla/extensions/components/contact-component/single-contact','index.php?option=com_contact&view=contact&id=1','component',1,270,5,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_crumb\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),
	(233,'mainmenu','Login',X'6C6F67696E','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',25,26,0,'*',0),
	(234,'parks','Park Blog',X'7061726B2D626C6F67','','park-blog','index.php?option=com_content&view=category&layout=blog&id=27','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',223,224,0,'en-GB',0),
	(238,'mainmenu','Sample Sites',X'73616D706C652D7369746573','','sample-sites','index.php?option=com_content&view=article&id=38','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',245,250,0,'*',0),
	(242,'parks','Write a Blog Post',X'77726974652D612D626C6F672D706F7374','','write-a-blog-post','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,3,'',114,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',225,226,0,'en-GB',0),
	(243,'parks','Parks Home',X'7061726B732D686F6D65','','parks-home','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',114,'{\"show_noauth\":\"\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',221,222,0,'en-GB',0),
	(244,'parks','Image Gallery',X'696D6167652D67616C6C657279','','image-gallery','index.php?option=com_content&view=categories&id=28','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',114,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"drill_down_layout\":\"1\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',227,232,0,'en-GB',0),
	(251,'aboutjoomla','Contact Categories',X'636F6E746163742D63617465676F72696573','','using-joomla/extensions/components/contact-component/contact-categories','index.php?option=com_contact&view=categories&id=16','component',1,270,5,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',73,74,0,'*',0),
	(252,'aboutjoomla','News Feed Categories',X'6E65772D666565642D63617465676F72696573','','using-joomla/extensions/components/news-feeds-component/new-feed-categories','index.php?option=com_newsfeeds&view=categories&id=0','component',1,267,5,17,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"1\",\"categories_description\":\"Because this links to the root category the \\\"uncategorised\\\" category is displayed. \",\"maxLevel\":\"-1\",\"show_empty_categories\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"1\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',83,84,0,'*',0),
	(253,'aboutjoomla','News Feed Category',X'6E6577732D666565642D63617465676F7279','','using-joomla/extensions/components/news-feeds-component/news-feed-category','index.php?option=com_newsfeeds&view=category&id=17','component',1,267,5,17,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),
	(254,'aboutjoomla','Single News Feed',X'73696E676C652D6E6577732D66656564','','using-joomla/extensions/components/news-feeds-component/single-news-feed','index.php?option=com_newsfeeds&view=newsfeed&id=4','component',1,267,5,17,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),
	(255,'aboutjoomla','Search',X'736561726368','','using-joomla/extensions/components/search-component/search','index.php?option=com_search&view=search','component',1,276,5,19,0,'0000-00-00 00:00:00',0,1,'',0,'{\"search_areas\":\"1\",\"show_date\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',105,106,0,'*',0),
	(256,'aboutjoomla','Archived Articles',X'61726368697665642D61727469636C6573','','using-joomla/extensions/components/content-component/archived-articles','index.php?option=com_content&view=archive','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"orderby_sec\":\"\",\"order_date\":\"\",\"display_num\":\"\",\"filter_field\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),
	(257,'aboutjoomla','Single Article',X'73696E676C652D61727469636C65','','using-joomla/extensions/components/content-component/single-article','index.php?option=com_content&view=article&id=6','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',57,58,0,'*',0),
	(259,'aboutjoomla','Article Category Blog',X'61727469636C652D63617465676F72792D626C6F67','','using-joomla/extensions/components/content-component/article-category-blog','index.php?option=com_content&view=category&layout=blog&id=27','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),
	(260,'aboutjoomla','Article Category List',X'61727469636C652D63617465676F72792D6C697374','','using-joomla/extensions/components/content-component/article-category-list','index.php?option=com_content&view=category&id=19','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),
	(262,'aboutjoomla','Featured Articles',X'66656174757265642D61727469636C6573','','using-joomla/extensions/components/content-component/featured-articles','index.php?option=com_content&view=featured','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),
	(263,'aboutjoomla','Submit Article',X'7375626D69742D61727469636C65','','using-joomla/extensions/components/content-component/submit-article','index.php?option=com_content&view=form&layout=edit','component',1,266,5,22,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),
	(266,'aboutjoomla','Content Component',X'636F6E74656E742D636F6D706F6E656E74','','using-joomla/extensions/components/content-component','index.php?option=com_content&view=article&id=10','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',56,71,0,'*',0),
	(267,'aboutjoomla','News Feeds Component',X'6E6577732D66656564732D636F6D706F6E656E74','','using-joomla/extensions/components/news-feeds-component','index.php?option=com_content&view=article&id=60','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"Newsfeeds Categories View \",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',82,89,0,'*',0),
	(268,'aboutjoomla','Components',X'636F6D706F6E656E7473','','using-joomla/extensions/components','index.php?option=com_content&view=category&layout=blog&id=21','component',1,277,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"7\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"0\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_readmore\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,112,0,'*',0),
	(270,'aboutjoomla','Contact Component',X'636F6E746163742D636F6D706F6E656E74','','using-joomla/extensions/components/contact-component','index.php?option=com_content&view=article&id=9','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',72,81,0,'*',0),
	(271,'aboutjoomla','Users Component',X'75736572732D636F6D706F6E656E74','','using-joomla/extensions/components/users-component','index.php?option=com_content&view=article&id=52','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',90,103,0,'*',0),
	(272,'aboutjoomla','Article Categories',X'61727469636C652D63617465676F72696573','','using-joomla/extensions/components/content-component/article-categories','index.php?option=com_content&view=categories&id=14','component',1,266,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"category_layout\":\"\",\"show_headings\":\"\",\"show_date\":\"\",\"date_format\":\"\",\"filter_field\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0),
	(273,'aboutjoomla','Administrator Components',X'61646D696E6973747261746F722D636F6D706F6E656E7473','','using-joomla/extensions/components/administrator-components','index.php?option=com_content&view=article&id=1','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',110,111,0,'*',0),
	(275,'aboutjoomla','Contact Single Category',X'636F6E746163742D73696E676C652D63617465676F7279','','using-joomla/extensions/components/contact-component/contact-single-category','index.php?option=com_contact&view=category&catid=26&id=36','component',1,270,5,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"20\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,76,0,'*',0),
	(276,'aboutjoomla','Search Components',X'7365617263682D636F6D706F6E656E74','','using-joomla/extensions/components/search-component','index.php?option=com_content&view=article&id=39','component',1,268,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',104,109,0,'*',0),
	(277,'aboutjoomla','Using Extensions',X'657874656E73696F6E73','','using-joomla/extensions','index.php?option=com_content&view=categories&id=20','component',1,280,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"1\",\"show_empty_categories_cat\":\"1\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"0\",\"drill_down_layout\":\"0\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"1\",\"show_empty_categories\":\"1\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',54,203,0,'*',0),
	(278,'aboutjoomla','The Joomla! Project',X'7468652D6A6F6F6D6C612D70726F6A656374','','the-joomla-project','index.php?option=com_content&view=article&id=48','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"1\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',211,212,0,'*',0),
	(279,'aboutjoomla','The Joomla! Community',X'7468652D6A6F6F6D6C612D636F6D6D756E697479','','the-joomla-community','index.php?option=com_content&view=article&id=47','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',213,214,0,'*',0),
	(280,'aboutjoomla','Using Joomla!',X'7573696E672D6A6F6F6D6C61','','using-joomla','index.php?option=com_content&view=article&id=53','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,208,0,'*',0),
	(281,'aboutjoomla','Modules',X'6D6F64756C6573','','using-joomla/extensions/modules','index.php?option=com_content&view=category&id=22','component',1,277,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"1\",\"show_empty_categories\":\"1\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',113,170,0,'*',0),
	(282,'aboutjoomla','Templates',X'74656D706C61746573','','using-joomla/extensions/templates','index.php?option=com_content&view=category&id=23','component',1,277,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"2\",\"show_empty_categories\":\"1\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"show_pagination\":\"0\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Templates\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',171,184,0,'*',0),
	(283,'aboutjoomla','Languages',X'6C616E677561676573','','using-joomla/extensions/languages','index.php?option=com_content&view=category&layout=blog&id=24','component',1,277,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_category_title\":\"1\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',185,186,0,'*',0),
	(284,'aboutjoomla','Plugins',X'706C7567696E73','','using-joomla/extensions/plugins','index.php?option=com_content&view=category&layout=blog&id=25','component',1,277,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_category_title\":\"1\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"7\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',187,202,0,'*',0),
	(290,'mainmenu','Articles',X'61727469636C6573','','site-map/articles','index.php?option=com_content&view=categories&id=0','component',1,294,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"category_layout\":\"\",\"show_headings\":\"\",\"show_date\":\"\",\"date_format\":\"\",\"filter_field\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',14,15,0,'*',0),
	(294,'mainmenu','Site Map',X'736974652D6D6170','','site-map','index.php?option=com_content&view=article&id=42','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',13,18,0,'*',0),
	(300,'aboutjoomla','Latest Users',X'6C61746573742D7573657273','','using-joomla/extensions/modules/user-modules/latest-users','index.php?option=com_content&view=article&id=66','component',1,412,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',137,138,0,'*',0),
	(301,'aboutjoomla','Who\'s Online',X'77686F732D6F6E6C696E65','','using-joomla/extensions/modules/user-modules/whos-online','index.php?option=com_content&view=article&id=56','component',1,412,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',139,140,0,'*',0),
	(302,'aboutjoomla','Most Read',X'6D6F73742D72656164','','using-joomla/extensions/modules/content-modules/most-read','index.php?option=com_content&view=article&id=30','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',121,122,0,'*',0),
	(303,'aboutjoomla','Menu',X'6D656E75','','using-joomla/extensions/modules/navigation-modules/menu','index.php?option=com_content&view=article&id=29','component',1,415,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',115,116,0,'*',0),
	(304,'aboutjoomla','Statistics',X'73746174697374696373','','using-joomla/extensions/modules/utility-modules/statistics','index.php?option=com_content&view=article&id=44','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',159,160,0,'*',0),
	(305,'aboutjoomla','Banner',X'62616E6E6572','','using-joomla/extensions/modules/display-modules/banner','index.php?option=com_content&view=article&id=7','component',1,413,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',147,148,0,'*',0),
	(306,'aboutjoomla','Search',X'736561726368','','using-joomla/extensions/modules/utility-modules/search','index.php?option=com_content&view=article&id=40','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',161,162,0,'*',0),
	(307,'aboutjoomla','Random Image',X'72616E646F6D2D696D616765','','using-joomla/extensions/modules/display-modules/random-image','index.php?option=com_content&view=article&id=36','component',1,413,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',145,146,0,'*',0),
	(309,'aboutjoomla','News Flash',X'6E6577732D666C617368','','using-joomla/extensions/modules/content-modules/news-flash','index.php?option=com_content&view=article&id=31','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',123,124,0,'*',0),
	(310,'aboutjoomla','Latest Articles',X'6C61746573742D61727469636C6573','','using-joomla/extensions/modules/content-modules/latest-articles','index.php?option=com_content&view=article&id=27','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',125,126,0,'*',0),
	(311,'aboutjoomla','Syndicate',X'73796E646963617465','','using-joomla/extensions/modules/utility-modules/syndicate','index.php?option=com_content&view=article&id=45','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',157,158,0,'*',0),
	(312,'aboutjoomla','Login',X'6C6F67696E','','using-joomla/extensions/modules/user-modules/login','index.php?option=com_content&view=article&id=28','component',1,412,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',141,142,0,'*',0),
	(313,'aboutjoomla','Wrapper',X'77726170706572','','using-joomla/extensions/modules/utility-modules/wrapper','index.php?option=com_content&view=article&id=59','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',165,166,0,'*',0),
	(317,'aboutjoomla','System',X'73797374656D','','using-joomla/extensions/plugins/system','index.php?option=com_content&view=article&id=46','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',200,201,0,'*',0),
	(318,'aboutjoomla','Authentication',X'61757468656E7469636174696F6E','','using-joomla/extensions/plugins/authentication','index.php?option=com_content&view=article&id=5','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',188,189,0,'*',0),
	(319,'aboutjoomla','Content',X'636F6E74656E74','','using-joomla/extensions/plugins/content','index.php?option=com_content&view=article&id=62','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',190,191,0,'*',0),
	(320,'aboutjoomla','Editors',X'656469746F7273','','using-joomla/extensions/plugins/editors','index.php?option=com_content&view=article&id=14','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',192,193,0,'*',0),
	(321,'aboutjoomla','Editors Extended',X'656469746F72732D657874656E646564','','using-joomla/extensions/plugins/editors-extended','index.php?option=com_content&view=article&id=15','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',194,195,0,'*',0),
	(322,'aboutjoomla','Search',X'736561726368','','using-joomla/extensions/plugins/search','index.php?option=com_content&view=article&id=41','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',196,197,0,'*',0),
	(323,'aboutjoomla','User',X'75736572','','using-joomla/extensions/plugins/user','index.php?option=com_content&view=article&id=51','component',1,284,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',198,199,0,'*',0),
	(324,'aboutjoomla','Footer',X'666F6F746572','','using-joomla/extensions/modules/display-modules/footer','index.php?option=com_content&view=article&id=19','component',1,413,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',151,152,0,'*',0),
	(325,'aboutjoomla','Archive',X'61726368697665','','using-joomla/extensions/modules/content-modules/archive','index.php?option=com_content&view=article&id=2','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',127,128,0,'*',0),
	(326,'aboutjoomla','Related Items',X'72656C617465642D6974656D73','','using-joomla/extensions/modules/content-modules/related-items','index.php?option=com_content&view=article&id=37','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',129,130,0,'*',0),
	(399,'parks','Animals',X'616E696D616C73','','image-gallery/animals','index.php?option=com_content&view=category&layout=blog&id=72','component',1,244,2,22,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"6\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',228,229,0,'en-GB',0),
	(400,'parks','Scenery',X'7363656E657279','','image-gallery/scenery','index.php?option=com_content&view=category&layout=blog&id=73','component',1,244,2,22,0,'0000-00-00 00:00:00',0,1,'',114,'{\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"show_category_title\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"0\",\"show_category\":\"1\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',230,231,0,'en-GB',0),
	(402,'aboutjoomla','Login Form',X'6C6F67696E2D666F726D','','using-joomla/extensions/components/users-component/login-form','index.php?option=com_users&view=login','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',91,92,0,'*',0),
	(403,'aboutjoomla','User Profile',X'757365722D70726F66696C65','','using-joomla/extensions/components/users-component/user-profile','index.php?option=com_users&view=profile','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',93,94,0,'*',0),
	(404,'aboutjoomla','Edit User Profile',X'656469742D757365722D70726F66696C65','','using-joomla/extensions/components/users-component/edit-user-profile','index.php?option=com_users&view=profile&layout=edit','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',95,96,0,'*',0),
	(405,'aboutjoomla','Registration Form',X'726567697374726174696F6E2D666F726D','','using-joomla/extensions/components/users-component/registration-form','index.php?option=com_users&view=registration','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',97,98,0,'*',0),
	(406,'aboutjoomla','Username Reminder Request',X'757365726E616D652D72656D696E646572','','using-joomla/extensions/components/users-component/username-reminder','index.php?option=com_users&view=remind','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',99,100,0,'*',0),
	(409,'aboutjoomla','Password Reset',X'70617373776F72642D7265736574','','using-joomla/extensions/components/users-component/password-reset','index.php?option=com_users&view=reset','component',1,271,5,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',101,102,0,'*',0),
	(410,'aboutjoomla','Feed Display',X'666565642D646973706C6179','','using-joomla/extensions/modules/display-modules/feed-display','index.php?option=com_content&view=article&id=16','component',1,413,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',149,150,0,'*',0),
	(411,'aboutjoomla','Content Modules',X'636F6E74656E742D6D6F64756C6573','','using-joomla/extensions/modules/content-modules','index.php?option=com_content&view=category&id=64','component',1,281,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',120,135,0,'*',0),
	(412,'aboutjoomla','User Modules',X'757365722D6D6F64756C6573','','using-joomla/extensions/modules/user-modules','index.php?option=com_content&view=category&id=65','component',1,281,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',136,143,0,'*',0),
	(413,'aboutjoomla','Display Modules',X'646973706C61792D6D6F64756C6573','','using-joomla/extensions/modules/display-modules','index.php?option=com_content&view=category&id=66','component',1,281,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"1\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"hide\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',144,155,0,'*',0),
	(414,'aboutjoomla','Utility Modules',X'7574696C6974792D6D6F64756C6573','','using-joomla/extensions/modules/utility-modules','index.php?option=com_content&view=category&id=67','component',1,281,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"0\",\"show_category_title\":\"1\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"show_cat_num_articles\":\"\",\"display_num\":\"0\",\"show_headings\":\"0\",\"list_show_title\":\"0\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"filter_field\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"0\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',156,169,0,'*',0),
	(415,'aboutjoomla','Navigation Modules',X'6E617669676174696F6E2D6D6F64756C6573','','using-joomla/extensions/modules/navigation-modules','index.php?option=com_content&view=category&id=75','component',1,281,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"\",\"show_category_title\":\"\",\"page_subheading\":\"\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"list_show_title\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"filter_field\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_limit\":\"\",\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',114,119,0,'*',0),
	(416,'aboutjoomla','Breadcrumbs',X'62726561646372756D6273','','using-joomla/extensions/modules/navigation-modules/breadcrumbs','index.php?option=com_content&view=article&id=61','component',1,415,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',117,118,0,'*',0),
	(418,'aboutjoomla','Custom',X'637573746F6D','','using-joomla/extensions/modules/display-modules/custom','index.php?option=com_content&view=article&id=12','component',1,413,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',153,154,0,'*',0),
	(419,'aboutjoomla','Beez3',X'6265657A33','','using-joomla/extensions/templates/beez3','index.php?option=com_content&view=category&layout=blog&id=69','component',1,282,4,22,0,'0000-00-00 00:00:00',0,1,'',9,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',172,177,0,'*',0),
	(423,'aboutjoomla','Typography Beez 3',X'7479706F6772617068792D6265657A2D33','','using-joomla/extensions/templates/beez3/typography-beez-3','index.php?option=com_content&view=article&id=49','component',1,419,5,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',173,174,0,'*',0),
	(424,'aboutjoomla','Home Page Beez 3',X'686F6D652D706167652D6265657A2D33','','using-joomla/extensions/templates/beez3/home-page-beez-3','index.php?option=com_content&view=featured','component',1,419,5,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',175,176,0,'*',0),
	(427,'fruitshop','Fruit Encyclopedia',X'66727569742D656E6379636C6F7065646961','','fruit-encyclopedia','index.php?option=com_contact&view=categories&id=37','component',1,1,1,8,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_base_description\":\"1\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_items_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"1\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"0\",\"show_position_headings\":\"\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"0\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"0\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\" categories-listalphabet\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',235,236,0,'*',0),
	(429,'fruitshop','Welcome',X'77656C636F6D65','Fruit store front page','welcome','index.php?option=com_content&view=article&id=20','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',233,234,0,'*',0),
	(430,'fruitshop','Contact Us',X'636F6E746163742D7573','','contact-us','index.php?option=com_contact&view=category&catid=47&id=36','component',1,1,1,8,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"0\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"initial_sort\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',239,240,0,'*',0),
	(431,'fruitshop','Growers',X'67726F77657273','','growers','index.php?option=com_content&view=category&layout=blog&id=30','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"layout_type\":\"blog\",\"show_category_title\":\"0\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"0\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"5\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"info_bloc_position\":\"0\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"Growers\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',237,238,0,'*',0),
	(432,'fruitshop','Login ',X'73686F702D6C6F67696E','','shop-login','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',4,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',241,242,0,'*',0),
	(433,'fruitshop','Directions',X'646972656374696F6E73','','directions','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',243,244,0,'*',0),
	(435,'mainmenu','Home',X'686F6D6570616765','','homepage','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"1\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,1,'*',0),
	(436,'aboutjoomla','Getting Help',X'67657474696E672D68656C70','','using-joomla/getting-help','index.php?option=com_content&view=article&id=21','component',1,280,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',206,207,0,'*',0),
	(437,'aboutjoomla','Getting Started',X'67657474696E672D73746172746564','','getting-started','index.php?option=com_content&view=article&id=22','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'*',0),
	(439,'mainmenu','Contacts',X'636F6E7461637473','','site-map/contacts','index.php?option=com_contact&view=categories&id=0','component',1,294,2,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"categories_description\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',16,17,0,'*',0),
	(443,'aboutjoomla','Article Categories',X'61727469636C652D63617465676F726965732D76696577','','using-joomla/extensions/modules/content-modules/article-categories-view','index.php?option=com_content&view=article&id=3','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',131,132,0,'*',0),
	(444,'top','Sample Sites',X'73616D706C652D73697465732D32','','sample-sites-2','index.php?Itemid=','alias',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"238\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',215,216,0,'*',0),
	(445,'mainmenu','Parks',X'7061726B73','','sample-sites/parks','index.php?Itemid=','alias',1,238,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"243\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',246,247,0,'*',0),
	(446,'mainmenu','Shop',X'73686F70','','sample-sites/shop','index.php?Itemid=','alias',1,238,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"429\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',248,249,0,'*',0),
	(447,'aboutjoomla','Language Switcher',X'6C616E67756167652D7377697463686572','','using-joomla/extensions/modules/utility-modules/language-switcher','index.php?option=com_content&view=article&id=26','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',163,164,0,'*',0),
	(448,'mainmenu','Site Administrator',X'736974652D61646D696E6973747261746F72','','site-administrator','administrator','url',1,1,1,0,0,'0000-00-00 00:00:00',1,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',251,252,0,'*',0),
	(449,'usermenu','Submit an Article',X'7375626D69742D616E2D61727469636C65','','submit-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',253,254,0,'*',0),
	(452,'aboutjoomla','Featured Contacts',X'66656174757265642D636F6E7461637473','','using-joomla/extensions/components/contact-component/featured-contacts','index.php?option=com_contact&view=featured&id=16','component',1,270,5,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"show_cat_num_articles\":\"\",\"display_num\":\"\",\"show_headings\":\"\",\"filter_field\":\"\",\"show_pagination\":\"\",\"show_noauth\":\"\",\"presentation_style\":\"sliders\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"1\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0),
	(453,'aboutjoomla','Parameters',X'706172616D6574657273','','using-joomla/parameters','index.php?option=com_content&view=article&id=32','component',1,280,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"1\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"1\",\"link_parent_category\":\"1\",\"show_author\":\"1\",\"link_author\":\"1\",\"show_create_date\":\"1\",\"show_modify_date\":\"1\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":0,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',204,205,0,'*',0),
	(455,'mainmenu','Example Pages',X'6578616D706C652D7061676573','','example-pages','index.php?Itemid=','alias',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"268\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',255,256,0,'*',0),
	(459,'aboutjoomla','Article Category',X'61727469636C652D63617465676F7279','','using-joomla/extensions/modules/content-modules/article-category','index.php?option=com_content&view=article&id=4','component',1,411,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_noauth\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"robots\":\"\",\"rights\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"secure\":0}',133,134,0,'*',0),
	(462,'fruitshop','Add a recipe',X'6164642D612D726563697065','','add-a-recipe','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,4,'',4,'{\"enable_category\":\"0\",\"catid\":\"14\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',257,258,0,'*',0),
	(463,'fruitshop','Recipes',X'72656369706573','','recipes','index.php?option=com_content&view=category&id=76','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',4,'{\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"0\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',259,260,0,'*',0),
	(464,'top','Home',X'686F6D65','','home','index.php?Itemid=','alias',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"435\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\"}',209,210,0,'*',0),
	(466,'aboutjoomla','Smart Search',X'736D6172742D736561726368','','using-joomla/extensions/components/search-component/smart-search','index.php?option=com_finder&view=search&q=&f=','component',1,276,5,27,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_date_filters\":\"\",\"show_advanced\":\"\",\"expand_advanced\":\"\",\"show_description\":\"\",\"description_length\":255,\"show_url\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"allow_empty_query\":\"0\",\"search_order\":\"\",\"show_feed\":\"0\",\"show_feed_text\":\"0\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',107,108,0,'*',0),
	(467,'aboutjoomla','Smart Search',X'736D6172742D736561726368','','using-joomla/extensions/modules/utility-modules/smart-search','index.php?option=com_content&view=article&id=70','component',1,414,5,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',167,168,0,'*',0),
	(468,'aboutjoomla','Protostar',X'70726F746F73746172','','using-joomla/extensions/templates/protostar','index.php?option=com_content&view=category&layout=blog&id=78','component',1,282,4,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',178,183,0,'*',0),
	(469,'aboutjoomla','Home Page Protostar',X'686F6D652D706167652D70726F746F73746172','','using-joomla/extensions/templates/protostar/home-page-protostar','index.php?option=com_content&view=featured','component',1,468,5,22,0,'0000-00-00 00:00:00',0,1,'',7,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',179,180,0,'*',0),
	(470,'aboutjoomla','Typography Protostar',X'7479706F6772617068792D70726F746F73746172','','using-joomla/extensions/templates/protostar/typography-protostar','index.php?option=com_content&view=article&id=49','component',1,468,5,22,0,'0000-00-00 00:00:00',0,1,'',7,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',181,182,0,'*',0),
	(471,'main','COM_FILEMAN',X'636F6D5F66696C656D616E','','com_fileman','index.php?option=com_fileman','component',1,1,1,10010,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',261,262,0,'',1);

/*!40000 ALTER TABLE `j_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_menu_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_menu_types`;

CREATE TABLE `j_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_menu_types` WRITE;
/*!40000 ALTER TABLE `j_menu_types` DISABLE KEYS */;

INSERT INTO `j_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`)
VALUES
	(2,0,'usermenu','User Menu','A Menu for logged-in Users',0),
	(3,0,'top','Top','Links for major types of users',0),
	(4,0,'aboutjoomla','About Joomla','All about Joomla!',0),
	(5,0,'parks','Australian Parks','Main menu for a site about Australian parks',0),
	(6,0,'mainmenu','Main Menu','Simple Home Menu',0),
	(7,0,'fruitshop','Fruit Shop','Menu for the sample shop site.',0);

/*!40000 ALTER TABLE `j_menu_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_messages`;

CREATE TABLE `j_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_messages_cfg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_messages_cfg`;

CREATE TABLE `j_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_modules`;

CREATE TABLE `j_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the j_assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_modules` WRITE;
/*!40000 ALTER TABLE `j_modules` DISABLE KEYS */;

INSERT INTO `j_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`)
VALUES
	(1,0,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
	(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
	(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
	(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
	(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
	(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
	(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
	(16,0,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
	(17,0,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
	(18,0,'Book Store','','',1,'position-10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"3\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Books!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(19,0,'User Menu','','',3,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',2,1,'{\"menutype\":\"usermenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(20,0,'Top','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"top\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(22,0,'Australian Parks ','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"parks\",\"active\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'en-GB'),
	(23,0,'About Joomla!','','',4,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"aboutjoomla\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(25,0,'Site Map','','',1,'sitemapload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"2\",\"endLevel\":\"3\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"sitemap\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(26,0,'This Site','','',5,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(27,0,'Archived Articles','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_archive',1,1,'{\"count\":\"10\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(28,0,'Latest News','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"19\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(29,0,'Articles Most Read','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_popular',1,1,'{\"catid\":[\"26\",\"29\"],\"count\":\"5\",\"show_front\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(30,0,'Feed Display','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"https:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(31,0,'News Flash','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_news',1,1,'{\"catid\":[\"19\"],\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"1\",\"count\":\"1\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(33,0,'Random Image','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_random_image',1,1,'{\"type\":\"jpg\",\"folder\":\"images\\/sampledata\\/parks\\/animals\",\"link\":\"\",\"width\":\"180\",\"height\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),
	(34,0,'Articles Related Items','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_related_items',1,1,'{\"showDate\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\"}',0,'*'),
	(35,0,'Search','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(36,0,'Statistics','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats',1,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"1\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(37,0,'Syndicate Feeds','','',1,'syndicateload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_syndicate',1,1,'{\"text\":\"Feed Entries\",\"format\":\"rss\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),
	(38,0,'Users Latest','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_users_latest',1,1,'{\"shownumber\":\"5\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(39,0,'Who\'s Online','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_whosonline',1,1,'{\"showmode\":\"2\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),
	(40,0,'Wrapper','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_wrapper',1,1,'{\"url\":\"https:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"640\",\"height\":\"390\",\"height_auto\":\"1\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(41,0,'Footer','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(44,0,'Login','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"280\",\"logout\":\"280\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',0,'*'),
	(45,0,'Menu Example','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(47,0,'Latest Park Blogs','','',6,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"27\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'en-GB'),
	(48,0,'Custom','','<p>This is a custom module. That means you can enter whatever content you want.</p>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(52,0,'Breadcrumbs','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
	(56,0,'Banners','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,1,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"random\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(57,0,'Fruit Shop','','',3,'position-5',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"fruitshop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(58,0,'Special!','','<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',4,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(61,0,'Articles Categories','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,1,'{\"parent\":\"29\",\"show_description\":\"0\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"_:default\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(62,0,'Language Switcher','','',3,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(63,0,'Search','','',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"set_itemid\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(64,0,'Language Switcher','','',1,'languageswitcherload',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"image\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(65,0,'About Fruit Shop','','<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>',1,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),
	(67,0,'Extensions','','',2,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"aboutjoomla\",\"startLevel\":\"1\",\"endLevel\":\"6\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"-menu\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(68,0,'About Parks','','<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p>',2,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Protostar-well\"}',0,'*'),
	(69,0,'Articles Category','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"show_front\":\"show\",\"count\":\"0\",\"category_filtering_type\":\"1\",\"catid\":[\"72\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"item_heading\":\"4\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(77,0,'Shop','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"2\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Shop!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(78,0,'Contribute','','',1,'position-9',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"15\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Contribute! \",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),
	(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(84,0,'Smart Search Module','','',2,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_finder',1,1,'{\"searchfilter\":\"\",\"show_autosuggest\":\"1\",\"show_advanced\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"field_size\":20,\"alt_label\":\"\",\"show_label\":\"0\",\"label_pos\":\"top\",\"show_button\":\"0\",\"button_pos\":\"right\",\"opensearch\":\"1\",\"opensearch_title\":\"\"}',0,'*'),
	(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(87,0,'Fruit Shop','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"fruitshop\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(88,0,'Image Module','','<p><img src=\"images/headers/maple.jpg\" alt=\"\" /></p>',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(89,0,'Custom','','<p>In this module you can put whatever text or other content you would like.</p>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(90,0,'Parks Image Module','','<p><img src=\"images/sampledata/parks/banner_cradle.jpg\" alt=\"\" /></p>',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
	(91,183,'FILEman - Folders','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_fileman_folders',1,1,'',0,'*'),
	(92,184,'FILEman - Files','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_fileman_files',1,1,'',0,'*');

/*!40000 ALTER TABLE `j_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_modules_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_modules_menu`;

CREATE TABLE `j_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_modules_menu` WRITE;
/*!40000 ALTER TABLE `j_modules_menu` DISABLE KEYS */;

INSERT INTO `j_modules_menu` (`moduleid`, `menuid`)
VALUES
	(1,101),
	(2,0),
	(3,0),
	(4,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0),
	(16,205),
	(16,435),
	(17,0),
	(18,0),
	(19,-463),
	(19,-462),
	(19,-433),
	(19,-432),
	(19,-431),
	(19,-430),
	(19,-429),
	(19,-427),
	(19,-400),
	(19,-399),
	(19,-296),
	(19,-244),
	(19,-243),
	(19,-242),
	(19,-234),
	(20,0),
	(22,234),
	(22,238),
	(22,242),
	(22,243),
	(22,244),
	(22,296),
	(22,399),
	(22,400),
	(23,-463),
	(23,-462),
	(23,-433),
	(23,-432),
	(23,-431),
	(23,-430),
	(23,-429),
	(23,-427),
	(23,-400),
	(23,-399),
	(23,-296),
	(23,-244),
	(23,-243),
	(23,-242),
	(23,-238),
	(23,-234),
	(25,294),
	(26,-463),
	(26,-462),
	(26,-433),
	(26,-432),
	(26,-431),
	(26,-430),
	(26,-429),
	(26,-427),
	(26,-400),
	(26,-399),
	(26,-296),
	(26,-244),
	(26,-243),
	(26,-242),
	(26,-238),
	(26,-234),
	(27,325),
	(28,310),
	(29,302),
	(30,410),
	(31,309),
	(32,309),
	(33,307),
	(34,326),
	(35,306),
	(36,304),
	(37,311),
	(38,300),
	(39,301),
	(40,313),
	(41,324),
	(44,312),
	(45,303),
	(47,234),
	(47,242),
	(47,243),
	(47,244),
	(47,296),
	(47,399),
	(47,400),
	(48,418),
	(52,416),
	(56,305),
	(57,238),
	(57,427),
	(57,429),
	(57,430),
	(57,431),
	(57,432),
	(57,433),
	(57,462),
	(57,463),
	(58,427),
	(58,429),
	(58,430),
	(58,431),
	(58,432),
	(58,433),
	(58,462),
	(58,463),
	(61,443),
	(62,231),
	(62,234),
	(62,242),
	(62,243),
	(62,244),
	(62,296),
	(62,399),
	(62,400),
	(63,0),
	(64,447),
	(65,427),
	(65,429),
	(65,430),
	(65,431),
	(65,432),
	(65,433),
	(65,462),
	(65,463),
	(68,243),
	(69,459),
	(77,0),
	(78,0),
	(79,0),
	(84,467),
	(86,0),
	(87,238),
	(87,427),
	(87,429),
	(87,430),
	(87,431),
	(87,432),
	(87,433),
	(87,462),
	(87,463),
	(88,-463),
	(88,-462),
	(88,-433),
	(88,-432),
	(88,-431),
	(88,-430),
	(88,-429),
	(88,-427),
	(88,-400),
	(88,-399),
	(88,-296),
	(88,-244),
	(88,-243),
	(88,-242),
	(88,-234),
	(89,-463),
	(89,-462),
	(89,-433),
	(89,-432),
	(89,-431),
	(89,-430),
	(89,-429),
	(89,-427),
	(89,-418),
	(89,-400),
	(89,-399),
	(89,-296),
	(89,-244),
	(89,-243),
	(89,-242),
	(89,-234),
	(90,234),
	(90,242),
	(90,243),
	(90,244),
	(90,296),
	(90,399),
	(90,400);

/*!40000 ALTER TABLE `j_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_newsfeeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_newsfeeds`;

CREATE TABLE `j_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_newsfeeds` WRITE;
/*!40000 ALTER TABLE `j_newsfeeds` DISABLE KEYS */;

INSERT INTO `j_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`)
VALUES
	(17,1,'Joomla! Announcements',X'6A6F6F6D6C612D616E6E6F756E63656D656E7473','http://feeds.joomla.org/JoomlaAnnouncements',1,5,3600,0,'0000-00-00 00:00:00',1,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,0,''),
	(17,2,'New Joomla! Extensions',X'6E65772D6A6F6F6D6C612D657874656E73696F6E73','http://feeds.joomla.org/JoomlaExtensions',1,5,3600,0,'0000-00-00 00:00:00',4,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,0,''),
	(17,3,'Joomla! Security News',X'6A6F6F6D6C612D73656375726974792D6E657773','http://feeds.joomla.org/JoomlaSecurityNews',1,5,3600,0,'0000-00-00 00:00:00',2,1,1,'en-GB','{\"show_feed_image\":\"\",\"show_feed_description\":\"\",\"show_item_description\":\"\",\"feed_character_count\":\"0\",\"newsfeed_layout\":\"\",\"feed_display_order\":\"\"}','2011-01-01 00:00:01',42,'Joomla','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}','','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,0,'');

/*!40000 ALTER TABLE `j_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_overrider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_overrider`;

CREATE TABLE `j_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_postinstall_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_postinstall_messages`;

CREATE TABLE `j_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to j_extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `j_postinstall_messages` DISABLE KEYS */;

INSERT INTO `j_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`)
VALUES
	(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),
	(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
	(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
	(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),
	(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),
	(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1);

/*!40000 ALTER TABLE `j_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_redirect_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_redirect_links`;

CREATE TABLE `j_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_scheduler_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_scheduler_jobs`;

CREATE TABLE `j_scheduler_jobs` (
  `uuid` char(36) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `frequency` varchar(128) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `queue` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `state` text,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `completed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `name` (`identifier`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `j_scheduler_jobs` WRITE;
/*!40000 ALTER TABLE `j_scheduler_jobs` DISABLE KEYS */;

INSERT INTO `j_scheduler_jobs` (`uuid`, `identifier`, `package`, `frequency`, `status`, `queue`, `ordering`, `state`, `modified_on`, `completed_on`)
VALUES
	('1bd927f7-8914-406b-ba04-561eccb37f28','com://admin/fileman.job.attachments','fileman','0 0 * * *',0,0,1,'[]','2018-01-04 14:13:19','2018-01-04 14:13:19'),
	('9f8341c0-664d-468a-a684-780c8a05e5c7','com://admin/fileman.job.scans','fileman','*/5 * * * *',0,0,2,'[]','2018-01-04 14:17:07','2018-01-04 14:17:07');

/*!40000 ALTER TABLE `j_scheduler_jobs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_scheduler_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_scheduler_metadata`;

CREATE TABLE `j_scheduler_metadata` (
  `type` varchar(32) NOT NULL DEFAULT '',
  `sleep_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_run` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `unique_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `j_scheduler_metadata` WRITE;
/*!40000 ALTER TABLE `j_scheduler_metadata` DISABLE KEYS */;

INSERT INTO `j_scheduler_metadata` (`type`, `sleep_until`, `last_run`)
VALUES
	('metadata','2018-01-04 14:20:00','2018-01-04 14:17:07');

/*!40000 ALTER TABLE `j_scheduler_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_schemas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_schemas`;

CREATE TABLE `j_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_schemas` WRITE;
/*!40000 ALTER TABLE `j_schemas` DISABLE KEYS */;

INSERT INTO `j_schemas` (`extension_id`, `version_id`)
VALUES
	(700,'3.8.2-2017-10-14'),
	(10003,'1.0.0-beta1');

/*!40000 ALTER TABLE `j_schemas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_session`;

CREATE TABLE `j_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_session` WRITE;
/*!40000 ALTER TABLE `j_session` DISABLE KEYS */;

INSERT INTO `j_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`)
VALUES
	('36rr00aq6fciu0bonij7t04teo',0,1,'1515075427','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075427;s:4:\"last\";i:1515075427;s:3:\"now\";i:1515075427;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQyNztzOjQ6Imxhc3QiO2k6MTUxNTA3NTQyNztzOjM6Im5vdyI7aToxNTE1MDc1NDI3O31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
	('3utc0ca4npbr1n8nea9ma9pi1t',0,1,'1515075199','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075199;s:4:\"last\";i:1515075199;s:3:\"now\";i:1515075199;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTE5OTtzOjQ6Imxhc3QiO2k6MTUxNTA3NTE5OTtzOjM6Im5vdyI7aToxNTE1MDc1MTk5O31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
	('50ns0mlk2v8irgsg2r46m8ov19',1,1,'1515075439','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075439;s:4:\"last\";i:1515075439;s:3:\"now\";i:1515075439;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:824:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjQ6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQzOTtzOjQ6Imxhc3QiO2k6MTUxNTA3NTQzOTtzOjM6Im5vdyI7aToxNTE1MDc1NDM5O31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO31zOjU6InRva2VuIjtzOjMyOiJibGFrbUp3ekJDWlhOSHRsSkw2dGcyUDdtcTFrZGI2cSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),
	('7f31t5t1khh6fdrr76uqts0c2j',0,1,'1515075433','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075433;s:4:\"last\";i:1515075433;s:3:\"now\";i:1515075433;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQzMztzOjQ6Imxhc3QiO2k6MTUxNTA3NTQzMztzOjM6Im5vdyI7aToxNTE1MDc1NDMzO31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
	('bfpp34dad4mk2mbmj69l1b896n',0,1,'1515075431','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075431;s:4:\"last\";i:1515075431;s:3:\"now\";i:1515075431;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQzMDtzOjQ6Imxhc3QiO2k6MTUxNTA3NTQzMDtzOjM6Im5vdyI7aToxNTE1MDc1NDMwO31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
	('jtdakhuvcmsj3bv6i0trenp8i6',0,1,'1515075433','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075433;s:4:\"last\";i:1515075433;s:3:\"now\";i:1515075433;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:824:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjQ6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQzMztzOjQ6Imxhc3QiO2k6MTUxNTA3NTQzMztzOjM6Im5vdyI7aToxNTE1MDc1NDMzO31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO31zOjU6InRva2VuIjtzOjMyOiJuY1plSnFNa29pM1Y2OVozTUUxRlBlRTV5T2lIZmdUcCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),
	('q1rqgs8vpaug1s6k7r711fo8i0',0,1,'1515075428','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075428;s:4:\"last\";i:1515075428;s:3:\"now\";i:1515075428;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUxNTA3NTQyODtzOjQ6Imxhc3QiO2k6MTUxNTA3NTQyODtzOjM6Im5vdyI7aToxNTE1MDc1NDI4O31zOjY6ImNsaWVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJmb3J3YXJkZWQiO3M6MTA6IjMzLjMzLjMzLjEiO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
	('reb0qog310v8cqohd72ftas3j9',0,1,'1515075201','__koowa|a:3:{s:10:\"__metadata\";a:1:{s:5:\"timer\";a:3:{s:5:\"start\";i:1515075197;s:4:\"last\";i:1515075199;s:3:\"now\";i:1515075200;}}s:11:\"__attribute\";a:1:{s:4:\"user\";a:12:{s:2:\"id\";i:0;s:5:\"email\";N;s:4:\"name\";N;s:8:\"username\";N;s:8:\"password\";N;s:4:\"salt\";s:0:\"\";s:9:\"authentic\";b:0;s:7:\"enabled\";b:1;s:7:\"expired\";b:1;s:10:\"attributes\";a:0:{}s:5:\"roles\";a:0:{}s:6:\"groups\";a:0:{}}}s:9:\"__message\";a:0:{}}joomla|s:824:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjQ6e3M6NjoiY2xpZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImZvcndhcmRlZCI7czoxMDoiMzMuMzMuMzMuMSI7fXM6NzoiY291bnRlciI7aTozO3M6NToidG9rZW4iO3M6MzI6ImNkYnRidDNpZjB2eWQzVVdlUlJrck1lVEZIUzRYQ1BJIjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MTUwNzUxOTk7czo0OiJsYXN0IjtpOjE1MTUwNzUxOTk7czozOiJub3ciO2k6MTUxNTA3NTIwMDt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,'');

/*!40000 ALTER TABLE `j_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_tags`;

CREATE TABLE `j_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_tags` WRITE;
/*!40000 ALTER TABLE `j_tags` DISABLE KEYS */;

INSERT INTO `j_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`)
VALUES
	(1,0,0,1,0,'','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `j_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_template_styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_template_styles`;

CREATE TABLE `j_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_template_styles` WRITE;
/*!40000 ALTER TABLE `j_template_styles` DISABLE KEYS */;

INSERT INTO `j_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`)
VALUES
	(4,'beez3',0,'0','Beez3 - Fruit Shop','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"Fruit Shop\",\"sitedescription\":\"The freshest fruit for you\",\"navposition\":\"left\",\"bootstrap\":\"\",\"templatecolor\":\"red\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}'),
	(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
	(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
	(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),
	(9,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"bootstrap\":\"\",\"templatecolor\":\"personal\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}');

/*!40000 ALTER TABLE `j_template_styles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_textman_revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_textman_revisions`;

CREATE TABLE `j_textman_revisions` (
  `textman_revision_id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `article_id` int(11) NOT NULL,
  `data` longtext NOT NULL COMMENT '@Filter("json")',
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trashed_on` datetime NOT NULL,
  `trashed_by` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`textman_revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `j_textman_revisions` WRITE;
/*!40000 ALTER TABLE `j_textman_revisions` DISABLE KEYS */;

INSERT INTO `j_textman_revisions` (`textman_revision_id`, `uuid`, `article_id`, `data`, `created_on`, `created_by`, `modified_on`, `modified_by`, `trashed_on`, `trashed_by`, `status`, `token`)
VALUES
	(1,'34af0b0182e443929a6b442fd776f2dd',24,'{\"menu_id\":\"260\",\"title\":\"Joomla!\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/mayrhofen-snowy.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/medium-mayrhofen-snowy.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\",\"fulltext\":\"\"}','2017-12-21 10:05:52',951,'2017-12-21 10:06:29',951,'0000-00-00 00:00:00',0,'updated',''),
	(2,'d600e604d53f4decbdcd1b1264583708',24,'{\"menu_id\":\"260\",\"title\":\"Joomla!\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/top-of-powder-field.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-top-of-powder-field.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\",\"fulltext\":\"\"}','2017-12-21 10:07:02',951,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'updated',''),
	(3,'d505c6613848452c953d45bfb328fb89',24,'{\"menu_id\":\"260\",\"title\":\"Joomla!\",\"introtext\":\"<p><img alt=\\\"testing\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" title=\\\"testy\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\",\"fulltext\":\"\"}','2017-12-21 10:09:42',951,'2017-12-21 10:10:15',951,'0000-00-00 00:00:00',0,'updated',''),
	(4,'75e1a012bebe43308d856f284993301c',24,'{\"menu_id\":\"260\",\"title\":\"Joomla!\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" style=\\\"float:left\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\",\"fulltext\":\"\"}','2017-12-21 10:14:54',951,'2017-12-21 10:15:29',951,'0000-00-00 00:00:00',0,'updated',''),
	(5,'aa33f0e5611d43429181c9f0d1740c61',24,'{\"menu_id\":\"260\",\"title\":\"Joomla!\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\",\"fulltext\":\"\"}','2017-12-21 10:15:51',951,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'updated','');

/*!40000 ALTER TABLE `j_textman_revisions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_ucm_base
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_ucm_base`;

CREATE TABLE `j_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_ucm_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_ucm_content`;

CREATE TABLE `j_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the j_assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';



# Dump of table j_ucm_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_ucm_history`;

CREATE TABLE `j_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_ucm_history` WRITE;
/*!40000 ALTER TABLE `j_ucm_history` DISABLE KEYS */;

INSERT INTO `j_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`)
VALUES
	(1,24,1,'','2017-12-21 10:06:29',951,2398,'80c52798df86820945531fe5b69bb666be7a075f','{\"id\":\"24\",\"asset_id\":\"122\",\"title\":\"Joomla!\",\"alias\":\"joomla\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/mayrhofen-snowy.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/medium-mayrhofen-snowy.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"19\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"123\",\"created_by_alias\":\"Joomla\",\"modified\":\"2017-12-21 10:06:29\",\"modified_by\":\"951\",\"checked_out\":\"951\",\"checked_out_time\":\"2017-12-21 10:05:52\",\"publish_up\":\"2011-01-01 00:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":null,\\\"image_intro_caption\\\":null,\\\"image_intro_alt\\\":null,\\\"image_fulltext\\\":null,\\\"image_fulltext_caption\\\":null,\\\"image_fulltext_alt\\\":null}\",\"urls\":\"{\\\"urla\\\":null,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":null,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":null,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),
	(2,24,1,'','2017-12-21 10:07:02',951,2424,'0535ed01d171ca692af02387ca896f16f8ee557a','{\"id\":\"24\",\"asset_id\":\"122\",\"title\":\"Joomla!\",\"alias\":\"joomla\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/top-of-powder-field.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-top-of-powder-field.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"19\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"123\",\"created_by_alias\":\"Joomla\",\"modified\":\"2017-12-21 10:07:02\",\"modified_by\":\"951\",\"checked_out\":\"951\",\"checked_out_time\":\"2017-12-21 10:06:35\",\"publish_up\":\"2011-01-01 00:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":null,\\\"image_intro_caption\\\":null,\\\"image_intro_alt\\\":null,\\\"image_fulltext\\\":null,\\\"image_fulltext_caption\\\":null,\\\"image_fulltext_alt\\\":null}\",\"urls\":\"{\\\"urla\\\":null,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":null,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":null,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),
	(3,24,1,'','2017-12-21 10:10:15',951,2406,'3dfbca32f7c66d6f249fc9bd02e4c6da41386857','{\"id\":\"24\",\"asset_id\":\"122\",\"title\":\"Joomla!\",\"alias\":\"joomla\",\"introtext\":\"<p><img alt=\\\"testing\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" title=\\\"testy\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"19\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"123\",\"created_by_alias\":\"Joomla\",\"modified\":\"2017-12-21 10:10:15\",\"modified_by\":\"951\",\"checked_out\":\"951\",\"checked_out_time\":\"2017-12-21 10:10:12\",\"publish_up\":\"2011-01-01 00:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":null,\\\"image_intro_caption\\\":null,\\\"image_intro_alt\\\":null,\\\"image_fulltext\\\":null,\\\"image_fulltext_caption\\\":null,\\\"image_fulltext_alt\\\":null}\",\"urls\":\"{\\\"urla\\\":null,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":null,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":null,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),
	(4,24,1,'','2017-12-21 10:15:29',951,2431,'f1cba1563a4ed2ce2afc30c958fa985ad65255d4','{\"id\":\"24\",\"asset_id\":\"122\",\"title\":\"Joomla!\",\"alias\":\"joomla\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" style=\\\"float:left\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"19\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"123\",\"created_by_alias\":\"Joomla\",\"modified\":\"2017-12-21 10:15:29\",\"modified_by\":\"951\",\"checked_out\":\"951\",\"checked_out_time\":\"2017-12-21 10:15:24\",\"publish_up\":\"2011-01-01 00:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":null,\\\"image_intro_caption\\\":null,\\\"image_intro_alt\\\":null,\\\"image_fulltext\\\":null,\\\"image_fulltext_caption\\\":null,\\\"image_fulltext_alt\\\":null}\",\"urls\":\"{\\\"urla\\\":null,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":null,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":null,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),
	(5,24,1,'','2017-12-21 10:15:51',951,2410,'d299cf8ec4c966c23fd5d03972113f39a7b166cf','{\"id\":\"24\",\"asset_id\":\"122\",\"title\":\"Joomla!\",\"alias\":\"joomla\",\"introtext\":\"<p><img alt=\\\"description\\\" class=\\\"filelink\\\" data-source=\\\"fileman-files:\\/\\/testing\\/zermat-image.jpg\\\" src=\\\"http:\\/\\/joomlatools.test\\/joomlatools-files\\/fileman-thumbnails\\/testing\\/medium-zermat-image.jpg.jpg\\\" title=\\\"title\\\" \\/><\\/p>\\r\\n\\r\\n<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.<\\/p>\\r\\n\\r\\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.<\\/p>\\r\\n\\r\\n<p>The content in this installation of Joomla has been designed to give you an in depth tour of Joomla&#39;s features.<\\/p>\\r\\n\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"19\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"123\",\"created_by_alias\":\"Joomla\",\"modified\":\"2017-12-21 10:15:51\",\"modified_by\":\"951\",\"checked_out\":\"951\",\"checked_out_time\":\"2017-12-21 10:15:35\",\"publish_up\":\"2011-01-01 00:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":null,\\\"image_intro_caption\\\":null,\\\"image_intro_alt\\\":null,\\\"image_fulltext\\\":null,\\\"image_fulltext_caption\\\":null,\\\"image_fulltext_alt\\\":null}\",\"urls\":\"{\\\"urla\\\":null,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":null,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":null,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"7\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0);

/*!40000 ALTER TABLE `j_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_update_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_update_sites`;

CREATE TABLE `j_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

LOCK TABLES `j_update_sites` WRITE;
/*!40000 ALTER TABLE `j_update_sites` DISABLE KEYS */;

INSERT INTO `j_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`)
VALUES
	(1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1515075438,''),
	(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,0,''),
	(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),
	(4,'TEXTman','extension','https://api.joomlatools.com/extension/textman.xml',1,0,''),
	(5,'FILEman','extension','https://api.joomlatools.com/extension/fileman.xml',1,0,'');

/*!40000 ALTER TABLE `j_update_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_update_sites_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_update_sites_extensions`;

CREATE TABLE `j_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

LOCK TABLES `j_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `j_update_sites_extensions` DISABLE KEYS */;

INSERT INTO `j_update_sites_extensions` (`update_site_id`, `extension_id`)
VALUES
	(1,700),
	(2,802),
	(3,28),
	(4,10003),
	(5,10010);

/*!40000 ALTER TABLE `j_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_updates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_updates`;

CREATE TABLE `j_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';



# Dump of table j_user_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_user_keys`;

CREATE TABLE `j_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_user_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_user_notes`;

CREATE TABLE `j_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table j_user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_user_profiles`;

CREATE TABLE `j_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';



# Dump of table j_user_usergroup_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_user_usergroup_map`;

CREATE TABLE `j_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to j_users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to j_usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `j_user_usergroup_map` DISABLE KEYS */;

INSERT INTO `j_user_usergroup_map` (`user_id`, `group_id`)
VALUES
	(951,8),
	(952,2),
	(953,6);

/*!40000 ALTER TABLE `j_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_usergroups`;

CREATE TABLE `j_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_usergroups` WRITE;
/*!40000 ALTER TABLE `j_usergroups` DISABLE KEYS */;

INSERT INTO `j_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`)
VALUES
	(1,0,1,22,'Public'),
	(2,1,8,19,'Registered'),
	(3,2,9,16,'Author'),
	(4,3,10,13,'Editor'),
	(5,4,11,12,'Publisher'),
	(6,1,4,7,'Manager'),
	(7,6,5,6,'Administrator'),
	(8,1,20,21,'Super Users'),
	(10,3,14,15,'Shop Suppliers (Example)'),
	(12,2,17,18,'Customer Group (Example)'),
	(13,1,2,3,'Guest');

/*!40000 ALTER TABLE `j_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_users`;

CREATE TABLE `j_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_users` WRITE;
/*!40000 ALTER TABLE `j_users` DISABLE KEYS */;

INSERT INTO `j_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`)
VALUES
	(951,'Super User','admin','admin@example.com','$2y$10$pEp3/kYIpLNfLJCXVSgAdOG9DB2Fn36VHJ3eEpYHDdyt3Rajhr7RC',0,1,'2013-07-24 09:07:43','2018-01-04 14:17:19','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),
	(952,'User','user','user@example.com','$2y$10$PDoFwo7LPp9U8ykVuiSE8.T5vdxw/gpTFFLRomeWrjFiRNx6xxY3e',0,0,'2013-07-24 09:23:03','2018-01-04 14:17:13','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),
	(953,'Manager','manager','manager@example.com','e0f025cc620a663e172c8b25911e5c4e:44wqdHQWhDPcrRg5koGsWJ9Zlhr9WC5x',0,0,'2013-07-24 10:53:59','0000-00-00 00:00:00','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);

/*!40000 ALTER TABLE `j_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_utf8_conversion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_utf8_conversion`;

CREATE TABLE `j_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `j_utf8_conversion` DISABLE KEYS */;

INSERT INTO `j_utf8_conversion` (`converted`)
VALUES
	(0);

/*!40000 ALTER TABLE `j_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table j_viewlevels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `j_viewlevels`;

CREATE TABLE `j_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `j_viewlevels` WRITE;
/*!40000 ALTER TABLE `j_viewlevels` DISABLE KEYS */;

INSERT INTO `j_viewlevels` (`id`, `title`, `ordering`, `rules`)
VALUES
	(1,'Public',0,'[1]'),
	(2,'Registered',2,'[6,2,8]'),
	(3,'Special',4,'[6,3,8]'),
	(4,'Customer Access Level (Example)',3,'[6,3,12]'),
	(5,'Guest',1,'[13]'),
	(6,'Super Users',5,'[8]');

/*!40000 ALTER TABLE `j_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
