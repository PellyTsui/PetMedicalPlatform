/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : pet_health_care

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-12-06 22:35:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acttraining`
-- ----------------------------
DROP TABLE IF EXISTS `acttraining`;
CREATE TABLE `acttraining` (
  `ActID` varchar(255) NOT NULL,
  `ActType` int(10) NOT NULL,
  `ActPet` int(10) NOT NULL,
  `ActTopic` varchar(255) NOT NULL,
  `ActContent` varchar(6000) NOT NULL,
  `ActAuthor` varchar(255) NOT NULL,
  `ActDate` date NOT NULL,
  `ActPic` varchar(255) DEFAULT NULL,
  `state` int(5) NOT NULL,
  PRIMARY KEY (`ActID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acttraining
-- ----------------------------

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `apID` varchar(255) NOT NULL,
  `apUsername` varchar(255) NOT NULL,
  `apPetID` varchar(255) NOT NULL,
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
-- Table structure for `dailyhealth`
-- ----------------------------
DROP TABLE IF EXISTS `dailyhealth`;
CREATE TABLE `dailyhealth` (
  `dahlID` varchar(255) NOT NULL,
  `dahlType` varchar(255) NOT NULL,
  `dahlPet` int(10) NOT NULL,
  `dahlTopic` varchar(255) NOT NULL,
  `dahlContent` varchar(6000) NOT NULL,
  `dahlAuthor` varchar(255) NOT NULL,
  `dahlDate` date NOT NULL,
  `dahlPic` varchar(255) DEFAULT NULL,
  `state` int(5) NOT NULL,
  PRIMARY KEY (`dahlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dailyhealth
-- ----------------------------

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `DrID` varchar(255) NOT NULL,
  `DrName` varchar(255) NOT NULL,
  `DrIntro` varchar(255) NOT NULL,
  `DrGoodAt` varchar(255) NOT NULL,
  `DrHosptl` varchar(255) NOT NULL,
  PRIMARY KEY (`DrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------

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
INSERT INTO `dog` VALUES ('43', '中国沙皮犬 \r\n中国沙皮犬 \r\n中国沙皮犬 \r\n中国沙皮犬 \r\n中国沙皮犬');

-- ----------------------------
-- Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `PetID` varchar(255) NOT NULL,
  `PetName` varchar(255) NOT NULL,
  `Ownername` varchar(255) NOT NULL,
  `PetSex` tinyint(1) NOT NULL,
  `PetAge` double(80,0) NOT NULL,
  `PetType` varchar(255) NOT NULL,
  `PetKind` varchar(255) NOT NULL,
  PRIMARY KEY (`PetID`),
  KEY `Owner_Pet` (`Ownername`),
  CONSTRAINT `Owner_Pet` FOREIGN KEY (`Ownername`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------

-- ----------------------------
-- Table structure for `qanda`
-- ----------------------------
DROP TABLE IF EXISTS `qanda`;
CREATE TABLE `qanda` (
  `qnaID` varchar(255) NOT NULL,
  `qnaKey` varchar(255) NOT NULL,
  `qnaType` varchar(255) NOT NULL,
  `qnaPet` varchar(255) NOT NULL,
  `qnaTopic` varchar(255) NOT NULL,
  `qnaAnswer` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`qnaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qanda
-- ----------------------------

-- ----------------------------
-- Table structure for `recommendation`
-- ----------------------------
DROP TABLE IF EXISTS `recommendation`;
CREATE TABLE `recommendation` (
  `recID` varchar(255) NOT NULL,
  `recType` varchar(255) NOT NULL,
  `recPet` int(10) NOT NULL,
  `recContent` varchar(6000) NOT NULL,
  `recPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommendation
-- ----------------------------

-- ----------------------------
-- Table structure for `treatmentfeedback`
-- ----------------------------
DROP TABLE IF EXISTS `treatmentfeedback`;
CREATE TABLE `treatmentfeedback` (
  `tfbID` varchar(255) NOT NULL,
  `tfbTID` varchar(255) NOT NULL,
  `tfbContent` varchar(6000) NOT NULL,
  PRIMARY KEY (`tfbID`),
  KEY `Treat_Feedback` (`tfbTID`),
  CONSTRAINT `Treat_Feedback` FOREIGN KEY (`tfbTID`) REFERENCES `treatmentrecord` (`trID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of treatmentfeedback
-- ----------------------------

-- ----------------------------
-- Table structure for `treatmentrecord`
-- ----------------------------
DROP TABLE IF EXISTS `treatmentrecord`;
CREATE TABLE `treatmentrecord` (
  `trID` varchar(255) NOT NULL,
  `trUsername` varchar(255) NOT NULL,
  `trPetID` varchar(255) NOT NULL,
  `trDrID` varchar(255) NOT NULL,
  `trDate` date NOT NULL,
  `trTopic` varchar(255) NOT NULL,
  `trContent` varchar(6000) NOT NULL,
  `trKey` varchar(255) NOT NULL,
  `trAnswer` varchar(6000) NOT NULL,
  `trFeedBackState` tinyint(1) NOT NULL,
  PRIMARY KEY (`trID`),
  KEY `Treat_Username` (`trUsername`),
  KEY `Treat_Pet` (`trPetID`),
  KEY `Treat_Dr` (`trDrID`),
  CONSTRAINT `Treat_Dr` FOREIGN KEY (`trDrID`) REFERENCES `doctor` (`DrID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Treat_Pet` FOREIGN KEY (`trPetID`) REFERENCES `pet` (`PetID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Treat_Username` FOREIGN KEY (`trUsername`) REFERENCES `user` (`Username`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of treatmentrecord
-- ----------------------------

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
