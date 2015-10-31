/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : pet_health_care

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-10-31 21:42:57
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
-- Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `PetID` varchar(255) NOT NULL,
  `PetName` varchar(255) NOT NULL,
  `Ownername` varchar(255) NOT NULL,
  `PetSex` varchar(255) NOT NULL,
  `PetAge` double(80,0) NOT NULL,
  `PetType` varchar(255) NOT NULL,
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
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('test', '123', '123', '123');
