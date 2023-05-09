-- --------------------------------------------------------
-- 主机:                          127.0.0.1
-- Server version:               10.3.21-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssm_music_online
CREATE DATABASE IF NOT EXISTS `ssm_music_online` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssm_music_online`;

-- Dumping structure for table ssm_music_online.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `adminPwd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminId`, `adminName`, `adminPwd`) VALUES
	(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.collection
DROP TABLE IF EXISTS `collection`;
CREATE TABLE IF NOT EXISTS `collection` (
  `collectionId` int(11) NOT NULL AUTO_INCREMENT,
  `collectionName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.collection: ~4 rows (approximately)
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` (`collectionId`, `collectionName`, `userId`) VALUES
	(7, '收藏列表', 5),
	(8, '收藏列表', 7),
	(9, '收藏列表', 10),
	(10, '收藏列表', 11);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.collectionlist
DROP TABLE IF EXISTS `collectionlist`;
CREATE TABLE IF NOT EXISTS `collectionlist` (
  `collectionId` int(11) DEFAULT NULL,
  `musicId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.collectionlist: ~40 rows (approximately)
/*!40000 ALTER TABLE `collectionlist` DISABLE KEYS */;
INSERT INTO `collectionlist` (`collectionId`, `musicId`) VALUES
	(8, 6),
	(8, 3),
	(8, 3),
	(8, 3),
	(8, 10),
	(8, 10),
	(8, 10),
	(8, 7),
	(8, 7),
	(8, 7),
	(8, 4),
	(8, 4),
	(8, 4),
	(9, 3),
	(9, 3),
	(9, 3),
	(9, 3),
	(9, 6),
	(9, 6),
	(9, 6),
	(10, 5),
	(10, 3),
	(10, 7),
	(10, 9),
	(10, 11),
	(10, 4),
	(10, 6),
	(10, 15),
	(10, 15),
	(10, 15),
	(10, 13),
	(10, 15),
	(9, 6),
	(9, 6),
	(9, 6),
	(9, 6),
	(9, 6),
	(9, 6),
	(9, 6),
	(9, 6);
/*!40000 ALTER TABLE `collectionlist` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `nessageName` varchar(255) DEFAULT NULL,
  `messageEmail` varchar(255) DEFAULT NULL,
  `messageComment` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `videoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_music_online.message: ~43 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`messageId`, `nessageName`, `messageEmail`, `messageComment`, `messageTime`, `videoId`) VALUES
	(1, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 1),
	(3, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 1),
	(4, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 2),
	(5, 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', 2),
	(6, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 3),
	(7, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 2),
	(8, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 2),
	(9, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 1),
	(10, 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', 1),
	(11, 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', 2),
	(12, 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', 2),
	(13, 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', 3),
	(14, 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', 2),
	(15, 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', 2),
	(16, 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', 1),
	(17, 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', 1),
	(18, 'asda', 'fdsaf@wefda.sadfsa', 'sdfsafsda', '2018-07-16', 2),
	(19, 'dsadsa', 'dsa@edwa.sdf', 'dasdsafsd', '2018-07-16', 2),
	(20, 'dfsd', 'dsfsd@fsdf.fsdf', 'sdfsafsafd', '2018-07-16', 3),
	(21, 'fdsfs', 'sadsa@qwe.qwewq', 'eqwewqe', '2018-07-16', 2),
	(22, '11111111111', 'sad2DZSD@DASD.ASDASD', 'FSAFWSFSADFSDFSDA', '2018-07-16', 2),
	(23, 'QQQQQQQQQQQQQ', 'DASD@FSD.SADF', '2222222222222222222222222222', '2018-07-16', 1),
	(24, '21212', 'asd@sadf.asdas', 'sadasdas', '2018-07-16', 1),
	(25, 'dfsd', 'dsfsd@qqsd.dfg', 'gggggggggggggggggggggggg', '2018-07-16', 2),
	(26, 'dasad', 'asdad@edqw.dasd', 'qqqqqqqqqqqqqqqqqqqq', '2018-07-16', 1),
	(27, 'dasad', 'asdad@edqw.dasd', 'qqqqqqqqqqqqqqqqqqqq', '2018-07-16', 1),
	(28, 'qwer', 'asdad@edqw.dasd', 'wwwwwwwwwww', '2018-07-16', 1),
	(29, 'qwer', 'asdad@edqw.dasd', 'wwwwwwwwwww', '2018-07-16', 1),
	(30, 'aaaa', 'asdad@edqw.dasd', '1111111111111111111111', '2018-07-16', 1),
	(31, 'aaaa', 'asdad@edqw.dasd', '1111111111111111111111', '2018-07-16', 1),
	(32, 'dasad', 'asdad@edqw.dasd', '11111111111111111', '2018-07-17', 4),
	(33, 'dasad', 'asdad@edqw.dasd', '11111111111111111', '2018-07-17', 4),
	(34, 'fhnfhnghn', 'asdad@edqw.dasd', '1222222222222222222222', '2018-07-17', 4),
	(35, 'fhnfhnghn', 'asdad@edqw.dasd', '1222222222222222222222', '2018-07-17', 4),
	(36, 'qqqqqqqqqq', 'asdad@edqw.dasd', '123456789', '2018-07-17', 4),
	(37, 'qqqqqqqqqq', 'asdad@edqw.dasd', '123456789', '2018-07-17', 4),
	(38, 'hhhhh', 'asdad@edqw.dasd', 'hhhhhhhhhhhhh', '2018-07-17', 4),
	(39, 'wearwe', 'werewr@dwq.rfwe', '11111111111111111111111111111', '2018-07-17', 2),
	(40, 'lqc520', '23232@wrew.cd', '很好听', '2018-07-18', 9),
	(41, 'lqc111', '32@rewr.fdfd', '有人很好看', '2018-07-18', 9),
	(42, '1', '', '林启澄', '2018-07-18', 1),
	(43, '1', '', 'rewrew', '2018-07-18', 1),
	(44, '211231', '1402548358@qq.com', '++++++++++', '2018-07-18', 2),
	(45, 'user', '123456@qq.com', '大家好', '2020-02-09', 4);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.music
DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `musicId` int(11) NOT NULL AUTO_INCREMENT,
  `musicName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `musicPhotoURL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `singerId` int(11) DEFAULT NULL,
  `musicHot` int(11) DEFAULT NULL,
  `lyricURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `musicTypeId` int(11) DEFAULT NULL,
  `songURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `musicTime` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`musicId`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- Dumping data for table ssm_music_online.music: ~287 rows (approximately)
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` (`musicId`, `musicName`, `musicPhotoURL`, `singerId`, `musicHot`, `lyricURL`, `musicTypeId`, `songURL`, `time`, `musicTime`) VALUES
	(1, '丑八怪1', 'images/你还要我怎样.jpg', 1, 0, 'upload/薛之谦 - 丑八怪.lrc', 1, 'upload/薛之谦 - 丑八怪.mp3', '2020-02-09 11:23:38', '04:13'),
	(2, '你还要我怎样', 'images/你还要我怎样.jpg', 1, 1, 'upload/薛之谦 - 你还要我怎样.lrc', 2, 'upload/薛之谦 - 你还要我怎样.mp3', '2020-02-09 11:32:51', '05:10'),
	(3, '演员', 'images/演员.jpg', 1, 0, 'upload/薛之谦 - 演员.lrc', 3, 'upload/薛之谦 - 演员.mp3', '2020-02-09 11:33:09', '04:21'),
	(4, '刚刚好', 'images/刚刚好.jpg', 1, 0, 'upload/薛之谦 - 刚刚好.lrc', 4, 'upload/薛之谦 - 刚刚好.mp3', '2020-02-09 11:33:24', '04:10'),
	(5, '暧昧', 'images/暧昧.jpg', 1, 0, 'upload/薛之谦 - 暧昧.lrc', 5, 'upload/薛之谦 - 暧昧.mp3', '2020-02-09 11:33:57', '05:12'),
	(6, '意外', 'images/意外.jpg', 1, 0, 'upload/薛之谦 - 意外.lrc', 1, 'upload/薛之谦 - 意外.mp3', '2020-02-09 11:34:12', '04:47'),
	(7, '走马', 'images/走马.jpg', 2, 10000, 'upload/陈粒 - 走马.lrc', 6, 'upload/粲然 - 走马.mp3', '2020-02-09 11:37:10', '03:55'),
	(8, '小半', 'images/小半.jpg', 2, 1000105, 'upload/陈粒 - 小半.lrc', 7, 'upload/周锐,郑艺彬,灵超 - 小半 (Live).mp3', '2020-02-09 11:37:27', '04:57'),
	(9, '奇妙能力歌', 'images/奇妙能力歌.jpg', 2, 0, 'upload/陈粒 - 奇妙能力歌.lrc', 9, 'upload/任然 - 奇妙能力歌（cover陈粒）.mp3', '2020-02-09 11:37:45', '04:13');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.musictype
DROP TABLE IF EXISTS `musictype`;
CREATE TABLE IF NOT EXISTS `musictype` (
  `musicTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `musicTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`musicTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_music_online.musictype: ~13 rows (approximately)
/*!40000 ALTER TABLE `musictype` DISABLE KEYS */;
INSERT INTO `musictype` (`musicTypeId`, `musicTypeName`) VALUES
	(1, '流行'),
	(2, '嘻哈'),
	(3, '摇滚'),
	(4, '电子'),
	(5, '民谣'),
	(6, 'R&B'),
	(7, '民歌'),
	(8, '轻音乐'),
	(9, '爵士'),
	(10, '古典'),
	(11, '乡村'),
	(12, '蓝调'),
	(13, '古风');
/*!40000 ALTER TABLE `musictype` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.recommended
DROP TABLE IF EXISTS `recommended`;
CREATE TABLE IF NOT EXISTS `recommended` (
  `recommendedId` int(11) NOT NULL AUTO_INCREMENT,
  `recommendedName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`recommendedId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.recommended: ~1 rows (approximately)
/*!40000 ALTER TABLE `recommended` DISABLE KEYS */;
INSERT INTO `recommended` (`recommendedId`, `recommendedName`, `photoURL`) VALUES
	(5, '中国好声音', 'upload/1457311486770.jpg');
/*!40000 ALTER TABLE `recommended` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.recommendedlist
DROP TABLE IF EXISTS `recommendedlist`;
CREATE TABLE IF NOT EXISTS `recommendedlist` (
  `reListId` int(11) NOT NULL AUTO_INCREMENT,
  `musicId` int(11) DEFAULT NULL,
  `recommendedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`reListId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.recommendedlist: ~6 rows (approximately)
/*!40000 ALTER TABLE `recommendedlist` DISABLE KEYS */;
INSERT INTO `recommendedlist` (`reListId`, `musicId`, `recommendedId`) VALUES
	(6, 3, 5),
	(7, 4, 5),
	(8, 5, 5),
	(9, 6, 5),
	(10, 7, 5),
	(11, 8, 5);
/*!40000 ALTER TABLE `recommendedlist` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.singer
DROP TABLE IF EXISTS `singer`;
CREATE TABLE IF NOT EXISTS `singer` (
  `singerId` int(11) NOT NULL AUTO_INCREMENT,
  `singerName` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `singerPhotoURL` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `singerHot` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`singerId`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.singer: ~126 rows (approximately)
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` (`singerId`, `singerName`, `singerPhotoURL`, `singerHot`, `typeId`, `address`) VALUES
	(1, '薛之谦', 'images/薛之谦.jpg', 100000, 1, ' 内地'),
	(2, '陈粒', 'images/陈粒.jpg', 3, 2, ' 内地'),
	(3, '陈奕迅', 'images/陈奕迅.jpg', 5, 1, ' 港台'),
	(4, '林俊杰', 'images/林俊杰.jpg', 8, 1, '  港台'),
	(5, 'Alan Walker', 'images/Alan Walker.jpg', 9, 10, ' 欧美'),
	(6, 'Coldplay', 'images/Coldplay.jpg', 60, 12, ' 欧美'),
	(7, 'Ed Sheeran', 'images/Ed Sheeran.jpg', 35, 10, ' 欧美'),
	(8, 'J.Fla', 'images/J.Fla.jpg', 100000, 5, '韩国'),
	(9, 'July', 'images/July.jpg', 13, 4, '韩国'),
	(10, 'EXO', 'images/EXO.jpg', 4, 6, '韩国'),
	(11, 'Aimer', 'images/Aimer.jpg', 1, 8, ' 日本'),
	(12, 'DAISHI DANCE', 'images/DAISHI DANCE.jpg', 1, 7, '日本'),
	(13, 'Goose house', 'images/Goose house.jpg', 1, 9, '日本'),
	(14, '中島みゆき(中岛美雪)', 'images/中島みゆき(中岛美雪).jpg', 1, 8, '日本'),
	(15, 'Madilyn Bailey', 'images/Madilyn Bailey.jpg', 1, 11, '  欧美'),
	(16, '好妹妹', 'images/好妹妹.jpg', 1, 3, ' 内地'),
	(17, '庄心妍', 'images/庄心妍.jpg', 1, 2, ' 内地'),
	(18, '张韶涵', 'images/张韶涵.jpg', 1, 2, ' 港台'),
	(19, 'G.E.M.邓紫棋', 'images/G.E.M.邓紫棋.jpg', 1, 2, ' 港台'),
	(20, '久石譲', 'images/久石譲.jpg', 1, 7, '日本'),
	(21, '米津玄師', 'images/米津玄師.jpg', 1, 7, '日本'),
	(22, 'G-DRAGON', 'images/G-DRAGON.jpg', 1, 4, '韩国'),
	(23, '伯贤', 'images/伯贤.jpg', 1, 4, '韩国'),
	(24, 'Taylor Swift', 'images/Taylor Swift.jpg', 1, 11, '  欧美'),
	(25, '初音ミク', 'images/初音ミク.jpg', 1, 8, '日本'),
	(26, 'MANISH', 'images/MANISH.jpg', 1, 9, '日本'),
	(27, 'Maroon 5', 'images/Maroon 5.jpg', 1, 12, ' 欧美'),
	(28, 'Westlife', 'images/Westlife.jpg', 1, 12, ' 欧美'),
	(29, 'RADWIMPS', 'images/RADWIMPS.jpg', 1, 9, '日本'),
	(30, 'BIGBANG', 'images/BIGBANG.jpg', 1, 6, '韩国'),
	(31, '少女时代', 'images/少女时代.jpg', 1, 6, '韩国'),
	(32, 'TFBOYS', 'images/TFBOYS.jpg', 1, 3, '内地'),
	(33, '张杰', 'images/张杰.jpg', NULL, 1, '内地'),
	(34, '周杰伦', 'images/周杰伦.jpg', NULL, 1, ' 港台'),
	(35, '毛不易', 'images/毛不易.jpg', NULL, 1, '内地'),
	(36, '梁静茹', 'images/梁静茹.jpg', NULL, 2, '港台'),
	(37, '张靓颖', 'images/张靓颖.jpg', NULL, 2, '内地'),
	(38, '澤野弘之', 'images/澤野弘之.jpg', NULL, 7, '日本'),
	(39, 'Lady Gaga', 'images/Lady Gaga.jpg', NULL, 11, ' 欧美'),
	(40, 'Avril Lavigne', 'images/Avril Lavigne.jpg', NULL, 11, ' 欧美'),
	(41, 'Backstreet Boys', 'images/Backstreet Boys.jpg', NULL, 12, ' 欧美'),
	(42, 'Justin Bieber', 'images/Justin Bieber.jpg', NULL, 10, ' 欧美'),
	(43, 'Michael Jackson', 'images/Michael Jackson.jpg', NULL, 10, ' 欧美'),
	(44, '五月天', 'images/五月天.jpg', NULL, 3, '港台'),
	(45, 'BTS（防弹少年团）', 'images/BTS（防弹少年团）.jpg', NULL, 6, '韩国'),
	(46, '蔡妍', 'images/蔡妍.jpg', NULL, 5, '韩国'),
	(47, '灿烈', 'images/灿烈.jpg', NULL, 4, '韩国'),
	(48, '浜崎あゆみ', 'images/浜崎あゆみ.jpg', NULL, 8, '日本'),
	(49, '凛として時雨', 'images/凛として時雨.jpg', NULL, 9, '日本'),
	(50, '泫雅', 'images/泫雅.jpg', NULL, 5, '韩国'),
	(51, '金泰宇', 'images/金泰宇.jpg', NULL, 4, '韩国'),
	(52, '张惠妹', 'images/张惠妹.jpg', NULL, 2, ' 港台'),
	(53, '王菲', 'images/王菲.jpg', NULL, 2, ' 内地'),
	(54, '张学友', 'images/张学友.jpg', NULL, 1, '港台'),
	(55, '林宥嘉', 'images/林宥嘉.jpg', NULL, 1, '港台'),
	(56, '华晨宇', 'images/华晨宇.jpg', NULL, 1, ' 内地'),
	(57, '高橋優', 'images/高橋優.jpg', NULL, 7, '日本'),
	(58, '倉木麻衣', 'images/倉木麻衣.jpg', NULL, 8, '日本'),
	(59, '小野丽莎', 'images/小野丽莎.jpg', NULL, 8, '日本'),
	(60, 'GARNiDELiA', 'images/GARNiDELiA.jpg', NULL, 9, '日本'),
	(61, '宇多田ヒカル', 'images/宇多田ヒカル.jpg', NULL, 8, '日本'),
	(62, 'Olly Murs', 'images/Olly Murs.jpg', NULL, 10, ' 欧美'),
	(63, 'Selena Gomez', 'images/Selena Gomez.jpg', NULL, 11, ' 欧美'),
	(64, 'The Chainsmokers', 'images/The Chainsmokers.jpg', NULL, 12, ' 欧美'),
	(65, 'Troye Sivan', 'images/Troye Sivan.jpg', NULL, 10, ' 欧美'),
	(66, '鹿晗', 'images/鹿晗.jpg', NULL, 1, '内地'),
	(67, 'Eminem', 'images/Eminem.jpg', NULL, 10, ' 欧美'),
	(68, 'iKON', 'images/iKON.jpg', NULL, 6, '韩国'),
	(69, 'Apink', 'images/Apink.jpg', NULL, 6, '韩国'),
	(70, 'TWICE', 'images/TWICE.jpg', NULL, 6, '韩国'),
	(71, '李贞贤', 'images/李贞贤.jpg', NULL, 5, '韩国'),
	(72, '程潇', 'images/程潇.jpg', NULL, 5, '韩国'),
	(73, '宋仲基', 'images/宋仲基.jpg', NULL, 4, '韩国'),
	(74, '黄致列', 'images/黄致列.jpg', NULL, 4, '韩国'),
	(75, '和田光司', 'images/和田光司.jpg', NULL, 7, '日本'),
	(76, '岸部眞明', 'images/岸部眞明.jpg', NULL, 7, '日本'),
	(77, '宮野真守', 'images/宮野真守.jpg', NULL, 7, '日本'),
	(78, '汪苏泷', 'images/汪苏泷.jpg', NULL, 1, '内地'),
	(79, '李荣浩', 'images/李荣浩.jpg', NULL, 1, '内地'),
	(80, '许嵩', 'images/许嵩.jpg', NULL, 1, '内地'),
	(81, '汪峰', 'images/汪峰.jpg', NULL, 1, '内地'),
	(82, '袁娅维', 'images/袁娅维.jpg', NULL, 2, '港台'),
	(83, '张碧晨', 'images/张碧晨.jpg', NULL, 2, '内地'),
	(84, '刘若英', 'images/刘若英.jpg', NULL, 2, '港台'),
	(85, '于文文', 'images/于文文.jpg', NULL, 2, '内地'),
	(86, '莫文蔚', 'images/莫文蔚.jpg', NULL, 2, '港台'),
	(87, '岑宁儿', 'images/岑宁儿.jpg', NULL, 2, '港台'),
	(88, 'S.H.E', 'images/S.H.E.jpg', NULL, 3, '港台'),
	(89, '筷子兄弟', 'images/筷子兄弟.jpg', NULL, 3, '内地'),
	(90, 'T-ara', 'images/T-ara.jpg', NULL, 6, '韩国'),
	(91, 'ZARD', 'images/ZARD.jpg', NULL, 8, '日本'),
	(92, '安室奈美恵', 'images/安室奈美恵.jpg', NULL, 8, '日本'),
	(93, 'Bruno Mars', 'images/Bruno Mars.jpg', NULL, 10, ' 欧美'),
	(94, 'Vitas', 'images/Vitas.jpg', NULL, 10, ' 欧美'),
	(95, 'Avicii', 'images/Avicii.jpg', NULL, 10, ' 欧美'),
	(96, '喜多郎', 'images/喜多郎.jpg', NULL, 7, '日本'),
	(97, '徳永英明', 'images/徳永英明.jpg', NULL, 7, '日本'),
	(98, 'Clean Bandit', 'images/Clean Bandit.jpg', NULL, 12, ' 欧美'),
	(99, 'The Beatles', 'images/The Beatles.jpg', NULL, 12, ' 欧美'),
	(100, 'Jessie J', 'images/Jessie J.jpg', NULL, 11, ' 欧美'),
	(101, '吴世勋', 'images/吴世勋.jpg', NULL, 4, '韩国'),
	(102, '郑容和', 'images/郑容和.jpg', NULL, 4, '韩国'),
	(103, '张根硕', 'images/张根硕.jpg', NULL, 4, '韩国'),
	(104, 'Sarah Brightman', 'images/Sarah Brightman.jpg', NULL, 11, ' 欧美'),
	(105, '允儿', 'images/允儿.jpg', NULL, 5, '韩国'),
	(106, '白智英', 'images/白智英.jpg', NULL, 5, '韩国'),
	(107, '朴信惠', 'images/朴信惠.jpg', NULL, 5, '韩国'),
	(108, '王力宏', 'images/王力宏.jpg', NULL, 1, '港台'),
	(109, '萧敬腾', 'images/萧敬腾.jpg', NULL, 1, '港台'),
	(110, '黄子韬', 'images/黄子韬.jpg', NULL, 1, '内地'),
	(111, '吴亦凡', 'images/吴亦凡.jpg', NULL, 1, '内地'),
	(112, '赵雷', 'images/赵雷.jpg', NULL, 1, '内地'),
	(113, '张艺兴', 'images/张艺兴.jpg', NULL, 1, '内地'),
	(114, '周笔畅', 'images/周笔畅.jpg', NULL, 2, '内地'),
	(115, '萧亚轩', 'images/萧亚轩.jpg', NULL, 2, '港台'),
	(116, '田馥甄', 'images/田馥甄.jpg', NULL, 2, '港台'),
	(117, '那英', 'images/那英.jpg', NULL, 2, '内地'),
	(118, '蔡依林', 'images/蔡依林.jpg', NULL, 2, '港台'),
	(119, '李宇春', 'images/李宇春.jpg', NULL, 2, '港台'),
	(120, '林忆莲', 'images/林忆莲.png', NULL, 2, '港台'),
	(121, '牛奶咖啡', 'images/牛奶咖啡.jpg', NULL, 3, '内地'),
	(122, 'Twins', 'images/Twins.jpg', NULL, 3, '港台'),
	(123, '缝纫机乐队', 'images/纫机乐队.jpg', NULL, 3, '内地'),
	(124, 'SNH48', 'images/SNH48.jpg', NULL, 3, '内地'),
	(125, '至上励合', 'images/至上励合.jpg', NULL, 3, '内地'),
	(126, 'uhggu', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.singertype
DROP TABLE IF EXISTS `singertype`;
CREATE TABLE IF NOT EXISTS `singertype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.singertype: ~12 rows (approximately)
/*!40000 ALTER TABLE `singertype` DISABLE KEYS */;
INSERT INTO `singertype` (`typeId`, `typeName`, `photoURL`) VALUES
	(1, '华语男歌手', 'upload/1457310390637.jpg'),
	(2, '华语女歌手', 'upload/1457310524666.jpg'),
	(3, '华语组合', 'upload/1457310540567.jpg'),
	(4, '韩国男歌手', 'upload/1457314379770.jpg'),
	(5, '韩国女歌手', 'upload/1491830457050.png'),
	(6, '韩国组合', NULL),
	(7, '日本男歌手', NULL),
	(8, '日本女歌手', NULL),
	(9, '日本组合', NULL),
	(10, '欧美男歌手', NULL),
	(11, '欧美女歌手', NULL),
	(12, '欧美组合', NULL);
/*!40000 ALTER TABLE `singertype` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.type
DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.type: ~5 rows (approximately)
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`typeId`, `typeName`, `photoURL`) VALUES
	(4, '大陆男歌手', 'upload/1457310390637.jpg'),
	(5, '港台歌手', 'upload/1457310524666.jpg'),
	(6, '港台组合', 'upload/1457310540567.jpg'),
	(7, '大陆歌手', 'upload/1457314379770.jpg'),
	(8, '儿歌', 'upload/1491830457050.png');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userEmail` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `userPwd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.user: ~13 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userId`, `userName`, `userEmail`, `userPwd`, `phone`, `address`) VALUES
	(1, '1402548358', NULL, 'e10adc3949ba59abbe56e057f20f883e\r\n', '18065859553', '福建厦门'),
	(2, '958465427', NULL, 'e10adc3949ba59abbe56e057f20f883e', '18065859552', '福建厦门'),
	(3, '1908357899', NULL, 'e10adc3949ba59abbe56e057f20f883e', '18065859551', '福建厦门'),
	(4, '1976999791', NULL, 'e10adc3949ba59abbe56e057f20f883e', '18065859550', '福建厦门'),
	(5, '2895778340', NULL, 'e10adc3949ba59abbe56e057f20f883e', '18065859554', '福建厦门'),
	(6, '1244638099', NULL, 'e10adc3949ba59abbe56e057f20f883e', '18065859556', '福建厦门'),
	(22, '1234343', '545@reew.vd', '17e74d8fcbf4612b187b8d2712ed48de', NULL, NULL),
	(32, 'lqc520', '1@fdsf.vd', '9cf009e20740ac65740a6019d5b54cf8', NULL, NULL),
	(33, '1', NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL),
	(34, 'lqc521', NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL),
	(35, 'qqqq', 'qqqqqq@qq.com', 'bc6f8fdede28d4236e5eff8d39397142', NULL, NULL),
	(36, '543543', '123@ERS.CSD', '5f8591a3d4fe06393cad53edff27ba05', NULL, NULL),
	(37, '2313', 'gf$#@fdsf.fd', '9cbf8a4dcb8e30682b927f352d6559a0', NULL, NULL),
	(38, 'user', '123456@qq.com', 'af8f9dffa5d420fbc249141645b962ee', NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.userhistory
DROP TABLE IF EXISTS `userhistory`;
CREATE TABLE IF NOT EXISTS `userhistory` (
  `userId` int(11) DEFAULT NULL,
  `musicId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table ssm_music_online.userhistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `userhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `userhistory` ENABLE KEYS */;

-- Dumping structure for table ssm_music_online.video
DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) DEFAULT NULL,
  `videoAuthor` varchar(255) DEFAULT NULL,
  `videoPhoto` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `videoTime` datetime DEFAULT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_music_online.video: ~30 rows (approximately)
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` (`videoId`, `videoName`, `videoAuthor`, `videoPhoto`, `videoURL`, `videoTime`) VALUES
	(1, '方圆几里1', '薛之谦', 'images/1.jpg', 'video/people_wel_motionAsset.m4v', '2020-02-09 11:46:08'),
	(2, '他不懂', '张杰', 'images/2.jpg', 'video/people_wel_motionAsset.m4v', '2017-09-10 00:00:00'),
	(3, 'Catch me when I fall', '鹿晗 ', 'images/3.jpg', 'video/people_wel_motionAsset.m4v', '2018-03-06 00:00:00'),
	(4, '气球', '许佩哲', 'images/4.jpg', 'video/people_wel_motionAsset.m4v', '2018-04-16 00:00:00'),
	(5, '离人愁', '李袁杰', 'images/5.jpg', 'video/people_wel_motionAsset.m4v', '2018-04-03 00:00:00'),
	(6, '想你', '吴亦凡、赵丽颖', 'images/6.jpg', 'video/people_wel_motionAsset.m4v', '2018-04-30 00:00:00'),
	(7, '空空如也', '胡66', 'images/7.jpg', 'video/people_wel_motionAsset.m4v', '2018-04-23 00:00:00'),
	(8, '亲爱的你', '陈粒', 'images/8.jpg', 'video/people_wel_motionAsset.m4v', '2018-02-26 00:00:00'),
	(9, '三生三世', '张杰', 'images/9.jpg', 'video/people_wel_motionAsset.m4v', '2017-08-07 00:00:00');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
