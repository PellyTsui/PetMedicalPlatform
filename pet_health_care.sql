/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : pet_health_care

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-02-27 23:11:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Adid` int(11) NOT NULL,
  `Adpwd` varchar(255) NOT NULL,
  `Adname` varchar(255) NOT NULL,
  PRIMARY KEY (`Adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'adminadmin', 'admin');

-- ----------------------------
-- Table structure for `antirecord`
-- ----------------------------
DROP TABLE IF EXISTS `antirecord`;
CREATE TABLE `antirecord` (
  `antiId` int(11) NOT NULL AUTO_INCREMENT,
  `petId` int(11) NOT NULL,
  `antitype` int(3) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`antiId`),
  KEY `petId` (`petId`),
  CONSTRAINT `petId` FOREIGN KEY (`petId`) REFERENCES `pet` (`PetID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of antirecord
-- ----------------------------
INSERT INTO `antirecord` VALUES ('3', '1', '2', '2016-02-02');

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `apID` varchar(255) NOT NULL,
  `apUsername` varchar(255) NOT NULL,
  `apPetID` int(255) NOT NULL,
  `apDate` date NOT NULL,
  `apTime` date NOT NULL,
  `apHosptial` varchar(255) NOT NULL,
  `apDr` varchar(255) NOT NULL,
  PRIMARY KEY (`apID`),
  KEY `app_User` (`apUsername`),
  KEY `app_Pet` (`apPetID`),
  CONSTRAINT `app_Pet` FOREIGN KEY (`apPetID`) REFERENCES `pet` (`PetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `app_User` FOREIGN KEY (`apUsername`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `tag1` varchar(255) DEFAULT NULL,
  `tag2` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `DrId` int(11) NOT NULL,
  `Drname` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`ArticleId`),
  KEY `DrId` (`DrId`),
  CONSTRAINT `DrId` FOREIGN KEY (`DrId`) REFERENCES `doctor` (`DrID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '测试测试', '测试1', '狗', '养护', '2016-01-31', '2', '李四', '0');
INSERT INTO `article` VALUES ('4', '啊啊啊啊啊啊', '啊啊啊啊啊啊啊啊啊啊啊啊', '猫', '养护', '2016-01-16', '2', '李四', '0');
INSERT INTO `article` VALUES ('5', '0', '啊啊啊啊 按法定分 发到发', '猫', '养护', '2016-01-16', '2', '李四', '0');
INSERT INTO `article` VALUES ('6', '打发发到', '发达发啊发发阿发爱的', '狗', '行为', '2016-01-31', '1', '张三', '0');
INSERT INTO `article` VALUES ('7', '打发发到2222', '打发啊发发爱的爱的啊', '狗', '养护', '2016-01-31', '1', '张三', '3');

-- ----------------------------
-- Table structure for `cat`
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `PetKindId` tinyint(3) NOT NULL AUTO_INCREMENT,
  `PetKindName` varchar(255) NOT NULL,
  PRIMARY KEY (`PetKindId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('1', '阿比西尼亚猫');
INSERT INTO `cat` VALUES ('2', '埃及猫 ');
INSERT INTO `cat` VALUES ('3', '奥西猫');
INSERT INTO `cat` VALUES ('4', '巴厘猫');
INSERT INTO `cat` VALUES ('5', '波米拉猫');
INSERT INTO `cat` VALUES ('6', '波斯猫');
INSERT INTO `cat` VALUES ('7', '伯曼猫');
INSERT INTO `cat` VALUES ('8', '布偶猫');
INSERT INTO `cat` VALUES ('9', '德文卷毛猫 ');
INSERT INTO `cat` VALUES ('10', '东方猫');
INSERT INTO `cat` VALUES ('11', '东奇尼猫');
INSERT INTO `cat` VALUES ('12', '俄罗斯蓝猫');
INSERT INTO `cat` VALUES ('13', '哈瓦那棕猫');
INSERT INTO `cat` VALUES ('14', '呵叻猫');
INSERT INTO `cat` VALUES ('15', '柯尼斯卷毛猫');
INSERT INTO `cat` VALUES ('16', '拉邦猫');
INSERT INTO `cat` VALUES ('17', '褴褛猫');
INSERT INTO `cat` VALUES ('18', '马恩岛猫');
INSERT INTO `cat` VALUES ('19', '美国短毛猫');
INSERT INTO `cat` VALUES ('20', '美国短尾猫');
INSERT INTO `cat` VALUES ('21', '美国刚毛猫');
INSERT INTO `cat` VALUES ('22', '美国卷毛猫');
INSERT INTO `cat` VALUES ('23', '孟买猫');
INSERT INTO `cat` VALUES ('24', '缅甸猫');
INSERT INTO `cat` VALUES ('25', '缅因猫');
INSERT INTO `cat` VALUES ('26', '挪威森林猫');
INSERT INTO `cat` VALUES ('27', '欧洲缅甸猫');
INSERT INTO `cat` VALUES ('28', '日本短尾猫');
INSERT INTO `cat` VALUES ('29', '塞尔凯克卷毛猫');
INSERT INTO `cat` VALUES ('30', '沙特尔猫');
INSERT INTO `cat` VALUES ('31', '斯芬克斯猫');
INSERT INTO `cat` VALUES ('32', '苏格兰折耳猫');
INSERT INTO `cat` VALUES ('33', '索马里猫');
INSERT INTO `cat` VALUES ('34', '土耳其安哥拉猫');
INSERT INTO `cat` VALUES ('35', '土耳其梵猫');
INSERT INTO `cat` VALUES ('36', '西伯利亚森林猫');
INSERT INTO `cat` VALUES ('37', '暹罗猫');
INSERT INTO `cat` VALUES ('38', '新加坡猫');
INSERT INTO `cat` VALUES ('39', '异国短毛猫');
INSERT INTO `cat` VALUES ('40', '英国短毛猫');
INSERT INTO `cat` VALUES ('41', '中国狸花猫');
INSERT INTO `cat` VALUES ('42', '中华田园猫');
INSERT INTO `cat` VALUES ('43', '重点色短毛猫');

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `DrID` int(255) NOT NULL AUTO_INCREMENT,
  `DrName` varchar(255) NOT NULL,
  `DrPwd` varchar(255) NOT NULL,
  `DrPho` varchar(255) NOT NULL,
  `DrMail` varchar(255) NOT NULL,
  `DrIntro` varchar(255) NOT NULL,
  `DrGoodAt` varchar(255) NOT NULL,
  `DrHosptl` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `locate` int(4) NOT NULL,
  PRIMARY KEY (`DrID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', '张三', '123456', '111', 'ari-sa@163.com', '111', '111', '222', '1', '4');
INSERT INTO `doctor` VALUES ('2', '李四', '123456', '12345678901', 'ari-sa@163.com', 'adf', 'adf', 'af', '1', '1');
INSERT INTO `doctor` VALUES ('4', 'åå', '123456', '12345678901', '123@11.com', 'd', 'd', 'd', '0', '0');
INSERT INTO `doctor` VALUES ('5', 'åå', '123456', '11111111111', 'sd@qq.com', 'f', 'f', 'f', '0', '0');
INSERT INTO `doctor` VALUES ('6', 'åå', '123456', '11111111111', '11@11.com', '1', '1', '1', '0', '3');

-- ----------------------------
-- Table structure for `dog`
-- ----------------------------
DROP TABLE IF EXISTS `dog`;
CREATE TABLE `dog` (
  `PetKindId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `PetKindName` varchar(255) NOT NULL,
  PRIMARY KEY (`PetKindId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dog
-- ----------------------------
INSERT INTO `dog` VALUES ('1', '阿富汗猎犬');
INSERT INTO `dog` VALUES ('2', '阿拉斯加雪橇犬');
INSERT INTO `dog` VALUES ('3', '爱尔兰猎狼犬');
INSERT INTO `dog` VALUES ('4', '巴哥犬');
INSERT INTO `dog` VALUES ('5', '北京犬');
INSERT INTO `dog` VALUES ('6', '比利时牧羊犬');
INSERT INTO `dog` VALUES ('7', '边境牧羊犬');
INSERT INTO `dog` VALUES ('8', '波利犬');
INSERT INTO `dog` VALUES ('9', '博美犬');
INSERT INTO `dog` VALUES ('10', '藏獒');
INSERT INTO `dog` VALUES ('11', '柴犬');
INSERT INTO `dog` VALUES ('12', '柴犬');
INSERT INTO `dog` VALUES ('13', '大丹犬');
INSERT INTO `dog` VALUES ('14', '大麦町犬');
INSERT INTO `dog` VALUES ('15', '德国牧羊犬');
INSERT INTO `dog` VALUES ('16', '斗牛梗');
INSERT INTO `dog` VALUES ('17', '杜宾犬');
INSERT INTO `dog` VALUES ('18', '法国斗牛犬');
INSERT INTO `dog` VALUES ('19', '贵宾犬');
INSERT INTO `dog` VALUES ('20', '哈士奇');
INSERT INTO `dog` VALUES ('21', '蝴蝶犬');
INSERT INTO `dog` VALUES ('22', '惠比特犬');
INSERT INTO `dog` VALUES ('23', '吉娃娃');
INSERT INTO `dog` VALUES ('24', '金毛寻回犬');
INSERT INTO `dog` VALUES ('25', '金毛寻回犬');
INSERT INTO `dog` VALUES ('26', '卷毛比雄犬');
INSERT INTO `dog` VALUES ('27', '卡斯罗');
INSERT INTO `dog` VALUES ('28', '柯利犬');
INSERT INTO `dog` VALUES ('29', '拉布拉多寻回犬');
INSERT INTO `dog` VALUES ('30', '兰波格犬');
INSERT INTO `dog` VALUES ('31', '猎兔犬');
INSERT INTO `dog` VALUES ('32', '美国爱斯基摩犬');
INSERT INTO `dog` VALUES ('33', '迷你杜宾');
INSERT INTO `dog` VALUES ('34', '纽芬兰犬');
INSERT INTO `dog` VALUES ('35', '秋田犬');
INSERT INTO `dog` VALUES ('36', '萨摩耶犬');
INSERT INTO `dog` VALUES ('37', '圣伯纳犬');
INSERT INTO `dog` VALUES ('38', '松狮');
INSERT INTO `dog` VALUES ('39', '苏俄猎狼犬');
INSERT INTO `dog` VALUES ('40', '西施犬');
INSERT INTO `dog` VALUES ('41', '寻血猎犬');
INSERT INTO `dog` VALUES ('42', '英国斗牛犬');
INSERT INTO `dog` VALUES ('43', '中国沙皮犬');

-- ----------------------------
-- Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `PetID` int(255) NOT NULL AUTO_INCREMENT,
  `PetName` varchar(255) NOT NULL,
  `Ownername` varchar(255) NOT NULL,
  `PetSex` tinyint(1) NOT NULL,
  `PetBirth` date NOT NULL,
  `PetType` varchar(255) NOT NULL,
  `PetKind` varchar(255) NOT NULL,
  `ancestry` tinyint(1) NOT NULL,
  `neuter` tinyint(1) NOT NULL,
  PRIMARY KEY (`PetID`),
  KEY `Owner_Pet` (`Ownername`),
  CONSTRAINT `Owner_Pet` FOREIGN KEY (`Ownername`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES ('1', '哈哈', '呵呵', '1', '2016-02-03', '1', '埃及猫 ', '1', '1');
INSERT INTO `pet` VALUES ('2', '哈哈', '呵呵', '0', '2016-02-03', '1', '埃及猫 ', '1', '0');
INSERT INTO `pet` VALUES ('3', '啊', '呵呵', '2', '2016-02-04', '0', '阿富汗猎犬', '2', '1');
INSERT INTO `pet` VALUES ('4', '22', '呵呵', '2', '2012-11-07', '0', '巴哥犬', '1', '1');

-- ----------------------------
-- Table structure for `qna`
-- ----------------------------
DROP TABLE IF EXISTS `qna`;
CREATE TABLE `qna` (
  `qnaID` varchar(255) NOT NULL,
  `qnaKey` varchar(255) NOT NULL,
  `qnaType` varchar(255) NOT NULL,
  `qnaPet` varchar(255) NOT NULL,
  `qnaTopic` varchar(255) NOT NULL,
  `qnaAnswer` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`qnaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qna
-- ----------------------------

-- ----------------------------
-- Table structure for `transwer`
-- ----------------------------
DROP TABLE IF EXISTS `transwer`;
CREATE TABLE `transwer` (
  `Taid` int(11) NOT NULL AUTO_INCREMENT,
  `Trid` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `did` int(11) NOT NULL,
  `petId` int(255) NOT NULL,
  `tacontent` mediumtext NOT NULL,
  `date` date NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`Taid`),
  KEY `Trid` (`Trid`),
  KEY `did` (`did`),
  KEY `ppid` (`petId`),
  KEY `owner` (`Username`),
  CONSTRAINT `did` FOREIGN KEY (`did`) REFERENCES `doctor` (`DrID`),
  CONSTRAINT `owner` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`),
  CONSTRAINT `ppid` FOREIGN KEY (`petId`) REFERENCES `pet` (`PetID`),
  CONSTRAINT `Trid` FOREIGN KEY (`Trid`) REFERENCES `trquestion` (`TrId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transwer
-- ----------------------------
INSERT INTO `transwer` VALUES ('4', '5', '呵呵', '2', '4', '爱的发的发发发达大厦发送发送方', '2016-02-27', '0');

-- ----------------------------
-- Table structure for `trquestion`
-- ----------------------------
DROP TABLE IF EXISTS `trquestion`;
CREATE TABLE `trquestion` (
  `TrId` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `Trtype` int(11) NOT NULL,
  `TrSubtype` int(11) NOT NULL,
  `TrTitle` varchar(255) NOT NULL,
  `TrContent` mediumtext NOT NULL,
  `date` date NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`TrId`),
  KEY `userName` (`Username`),
  KEY `petpet` (`pid`),
  CONSTRAINT `petpet` FOREIGN KEY (`pid`) REFERENCES `pet` (`PetID`),
  CONSTRAINT `userName` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trquestion
-- ----------------------------
INSERT INTO `trquestion` VALUES ('4', '呵呵', '1', '0', '2', '阿道夫', '阿道夫啊爱妃', '2016-02-23', '0');
INSERT INTO `trquestion` VALUES ('5', '呵呵', '4', '1', '1', '啊啊啊', '睇到的的的的的爱的发啊发', '2016-02-27', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Username` varchar(255) NOT NULL,
  `UserPwd` varchar(255) NOT NULL,
  `UserMail` varchar(255) NOT NULL,
  `PhoNum` varchar(11) NOT NULL,
  `UserId` int(16) NOT NULL,
  `activated` tinyint(2) NOT NULL DEFAULT '0',
  `randomCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('a', '222222', 'ari-sa@163.com', '11111111111', '1', '1', '86156907c7fac5b12852978a6959cb28');
INSERT INTO `user` VALUES ('ä½ ', '111111', '1@333.com', '11111111111', '2', '0', null);
INSERT INTO `user` VALUES ('呵呵', '123456', 'aririsa@163.com', '12345678901', '3', '1', null);
