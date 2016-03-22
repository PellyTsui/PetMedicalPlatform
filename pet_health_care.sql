/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : pet_health_care

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-03-22 22:49:51
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of antirecord
-- ----------------------------
INSERT INTO `antirecord` VALUES ('6', '8', '1', '2015-05-15');
INSERT INTO `antirecord` VALUES ('8', '8', '1', '2015-08-20');
INSERT INTO `antirecord` VALUES ('9', '8', '1', '2016-03-20');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('9', '猫癣：想说再见不容易', '   猫癣对于很多猫奴们都不陌生，因为很多猫奴不是奋战在对抗猫癣的一线，就是刚刚把猫主子从猫癣的魔抓中救出，心惊胆战的担心猫癣再次袭来。是的，猫癣是猫咪皮肤病中最常见的，尤其对于从收容所或者街上带回的猫咪，猫癣经常会让粑粑麻麻闹心一阵子。今天就带猫奴们详细了解下为啥猫癣总也赶不走。\r\n\r\n   猫癣到底是什么？\r\n   猫癣（Ringworm）是一种由一组皮肤真菌感染造成的皮肤病。真菌以皮肤上的死细胞和毛发为食，在人身上会带来很典型的圆圈型症状，在猫咪身上通常表现为干燥、瘙痒、片状的脱皮、脱毛，皮肤上也会出现圆圈状发红的症状，但是同时也可能呈现各种其他皮肤病的表征。\r\n\r\n   猫咪是怎么得病的？\r\n   造成猫癣的皮肤真菌可以散播孢子，而这种孢子非常难杀死，可以在环境中存活很多年。一颗孢子与受损皮肤的接触就可以使猫咪感染猫癣，所以刚剃过毛的猫咪或者身上有抓伤的猫咪感染的几率会高许多。健康、完整的皮肤即使接触孢子通常也不会感染。</span></p><p><br></p><p><span style=\"font-size:16px\">感染了猫癣的猫咪会持续性的在掉毛的同时散播孢子到环境中。有些猫咪虽然并没有皮肤病的症状，但有可能依然是真菌的携带者，比如猫癣治疗后期的猫咪，虽然症状已经全部恢复，但是可能依然携带一部分真菌；另外，健康的猫咪也有可能偶尔携带真菌，比如与患有猫癣或者猫癣刚刚治愈的猫咪短暂接触之后，但是这种情况孢子是可以很容易被洗掉的。\r\n\r\n   猫癣可以自愈吗？\r\n   有研究表明，猫癣是应该可以最终自愈的。通常情况下需要大概4个月。但是考虑到真菌感染非常强的污染性，以及感染期间猫咪可能会因为皮肤受损感染其他疾病，我们强烈建议在发现时就及时治疗。\r\n', '猫', '养护', '2016-03-01', '8', '李小红', '0');
INSERT INTO `article` VALUES ('10', '宠物疫苗那些事：猫咪免疫规程', '   家里迎来了一位新成员——猫咪，各位粑粑麻麻就会面临一个问题，那就是应该在什么时候以怎样一个流程给宝贝进行免疫呢？今天，我们就来了解一下猫的免疫规程。\r\n   猫咪的疫苗分为核心疫苗和非核心疫苗。核心疫苗指的是对猫咪有高度危险性的病原体的相应疫苗，而非核心疫苗指的是较低危险性病原体的疫苗。简单来说，核心疫苗就是一定要打的疫苗，而非核心疫苗的选择是根据不同地区不同国度的病原分布，以及猫咪所处环境的病毒情况来制定的。\r\n   1、猫咪的核心疫苗：\r\n猫细小病毒（即猫瘟/猫泛白细胞减少），猫疱疹病毒-1型，猫杯状病毒，狂犬病毒疫苗，其中前三种疫苗的联合疫苗就是常见的猫三联苗。\r\n   2、猫咪的非核心疫苗：猫白血病病毒、猫艾滋病病毒、猫传染性腹膜炎病毒、猫衣原体、支气管败血博氏杆菌疫苗。\r\n    而所谓的联苗呢，是把两种或两种以上疾病的疫苗做在了一起。一般来说，注射的联苗的联数越多，免疫的效果就会相对不稳定一些。每种疫苗都存在自己的特性，也有各自的免疫持续时间，类似木桶原理，联苗的持续时间是随所联的几种疫苗中持续时间最短的那一个。\r\n也就是说，如果一个三联苗中的三种疫苗的持续时间分别是1年、2年和3年，那么联苗应该一年注射一次加强针。不然其中一种疫苗（通常是非核心疫苗）的免疫持续时间一过，就会失去对动物的保护作用，动物就相当于暴露在危险中了。综合WASAVA（世界小动物兽医协会）及AHAA（美国动物医院协会）等权威组织的疫苗规程，以及中国狂犬病防治现状，猫咪的免疫可以总结如下：如果猫咪没有注射过疫苗，并且年龄小于16周龄，建议是在8、12和16周时分别接种一针猫三联，一年后加强一次，之后最好3年一次。', '猫', '医疗', '2016-01-27', '8', '李小红', '0');
INSERT INTO `article` VALUES ('11', '竟没发现你家狗狗已经压力山大？六个方法帮TA减压！', '   铲屎官们，有没有发现你的汪星人有时也压力山大？注意了！！！如果TA们长期这样的话，就会处于亚健康的状态！动物行为专家建议用不同的方法让TA们缓解压力、舒畅心情。快来看看以下哪种减压方法适合你的汪星人吧！\r\n   \r\n   食物疗法。\r\n   这个食物疗法对吃货来说真是简单暴力啊~~~~~但食物疗法并不是说给汪星人吃大量的食物，而是以食物为诱饵来帮助TA减压。这个方法的套路是揭样滴：首先，你得设计一个捉迷藏游戏：把部分食物藏在不同的地方，当汪找到食物的时候给TA一些适当的表扬。其次，没有其次了。\r\n   \r\n   视觉刺激法。\r\n   给TA看感兴趣的电视节目、CD，或者一个可以看到窗外的阳台，光这个办法就够TA自嗨好几个小时了。再唠叨一句，关于看电视，汪星人的眼睛可是比蓝星人要敏感的多哟，所以他们会对屏幕刷新率比较高的电视节目感兴趣哒。\r\n\r\n   汪是群居动物，所以TA们很喜欢和其他动物待在一起。然而，有的狗狗只喜欢和主人在一起玩儿，那你就多陪一会吧~~~比如，有的狗狗和其他汪星人在一起时，会表现的很紧张，这种情况狗狗公园对TA来说不是好去处。既然TA喜欢和蓝星人相处，你可以邀请你的朋友或者邻居来家里，一起玩耍也是可以的。', '狗', '养护', '2016-03-20', '8', '李小红', '0');
INSERT INTO `article` VALUES ('12', '绝育的影响以及最佳年龄', '   是否应该让自己的宠物绝育，最佳的绝育年龄是几岁大概是每个养宠物的人心中的疑问了。下面这篇文章以问答的方式综合了各种研究和调查，总结了关于绝育的好处。\r\n美国兽医一般建议什么时候绝育？传统的最适合绝育的年龄段是6个月到9个月大的时候。 但是没有研究证明这个结论：事实上，最佳的年龄对于不同个体是不一样的。\r\n\r\n   绝育手术危险吗？\r\n   绝育手术的并发症几率对于狗来说是6.1%，对于猫来说是2.6%。 并发症都很轻微，比如说手术伤口发炎或者肠胃不适。总体来说，绝育手术属于非常常规的手术，手术技术已经是很成熟了。建议去正规医院只要在条件不错的医院做的绝育手术基本上都是有保障的哦。\r\n \r\n   绝育对于社会有什么影响？\r\n   绝育最重要的社会影响就是减少宠物被送去收容所的几率。 很多研究证明没有绝育的宠物更容易被送去收容所。 而且绝育可以减少不需要的小狗小猫的出生，控制狗和猫的整体数量，也就减少了无人领养的猫狗的数量。\r\n\r\n   绝育对宠物的行为有什么影响？\r\n   绝育可以减少性激素引起的行为问题，比如说公狗在有发情的母狗在场时的侵略性行为。 对公猫来说，减少这种行为问题非常重要，因为未绝育的公猫会用小便划地界，而且会对侵入地界的动物有过激行为。有研究表明如果在5个月之前绝育，可以减少分离焦虑症及小便划地盘的行为。', '狗', '医疗', '2015-07-07', '9', '张海峰', '0');
INSERT INTO `article` VALUES ('13', '短腿儿狗狗“萌”的代价：腰椎疾病如何预防？', '   所有短腿犬，像上图所示的柯基犬、腊肠犬、巴吉度犬，都有这种先天性的缺陷；另外也见于西施犬、京巴犬、法国斗牛犬、比格犬等品种。 \r\n   软骨发育不良的狗狗特别容易发生椎间盘突出，而腰部是运动时受冲力最大的部位，因而多在此处发病。尤其对于短腿品种，TA们在奔跑、跳跃时，脊柱受冲力的方向与脊柱的长轴垂直，而前后肢不能非常协调地分配体重，这样就使腰椎的负担比较大，时间久了，损伤积累起来就容易发病。因此，短腿狗狗罹患腰椎疾病的风险比其他品种要高得多哟~长的“萌”也是要付出代价的呢！所以各位粑粑麻麻，如果你家里的宝贝是这一类狗狗，或者将来打算抱回来一只，一定要对TA们倍加呵护，尽量预防腰病的发生哟~\r\n\r\n   1. 使用正确的抱姿： 对于短腿品种以及非短腿的先天性软骨发育不良品种（如上所述），抱起TA们时动作要轻柔，注意一定要托住后躯，不要让腰部承受过大的力。\r\n\r\n   2. 使用缓冲牵引绳：这种牵引绳可以为狗狗负担一部分重量，减轻腰部受到的冲力。 \r\n\r\n   3.&nbsp;不要让狗狗经常做上下楼梯、从高处跳下这种冲力大的运动，很伤腰哟！\r\n\r\n   4. 尽量让狗狗保持好身材，肥胖也会加大腰病发生的几率呢~\r\n\r\n   如果有一天在你抱起TA时，听到一声惨叫；或者发现后肢瘫软无法行走，就很有可能是腰椎出了问题~这种情况请及时就诊，到医院做检查，请医生评估狗狗患病的严重程度、并让狗狗接受治疗.', '狗', '养护', '2015-12-26', '9', '张海峰', '0');

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
  `DrIntro` mediumtext NOT NULL,
  `DrGoodAt` mediumtext NOT NULL,
  `DrHosptl` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `truename` varchar(255) NOT NULL,
  PRIMARY KEY (`DrID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', '钱玲玲', '123456', '111', 'qinglingl@163.com', '111', '111', '北京芭比堂动物医院', '0', null, '钱玲玲');
INSERT INTO `doctor` VALUES ('2', '谭友华', '123456', '12345678901', 'tangyh@qq.com', 'adf', 'adf', '鹏爱缘宠物医院', '0', null, '谭友华');
INSERT INTO `doctor` VALUES ('8', '李小红', 'b81a4989824fe44b3a15705dd8d41083480c00b90e305c01', '13533949494', 'lxh@163.com', '中国农业大学兽医硕士。曾经先后到加拿大、法国、瑞士、意大利、香港、台湾等宠物诊疗水平较高的国家和地区交流学习。2010年获得北京小动物诊疗行业协会和北京畜牧兽医总站联合颁发的“杰出青年兽医”奖。在国家级核心期刊发表专业论文十多篇，其中有两篇论文获得北京兽医大会优秀论文奖。', '主攻兽医影像和犬猫肿瘤，擅长犬猫老年性疾病、犬猫骨关节疾病、肿瘤疾病的诊断和治疗。', '广州百思宠物医院', '1', '1458477046062.png', '李晓红');
INSERT INTO `doctor` VALUES ('9', '张海峰', '88587d42038a70b368c7f484169b90a9a272740133c33509', '13455612222', 'zhanghf@126.com', '方庄伴侣动物医院副院长，毕业后一直在方庄伴侣动物医院工作至今，2002年取得北京市执业宠物医师资格。北京市小动物诊疗协会会员，多次参加国内外的学习。发表文章10余篇其中有3篇文章发表在全国性的专业周刊中。随着兴趣的爱好2010年后逐渐向皮肤病的诊治发展，多次参加欧洲高级兽医学院皮肤病的专科学习。亚洲兽医皮肤病协会会员,擅长犬猫的皮肤病，内科疾病及关节性疾病的治疗。我的服务宗旨：用真心善待生命，用爱心换取健康。', '猫的皮肤病，内科疾病及关节性疾病的治疗', '方庄伴侣动物医院', '1', '1458478173309.png', '张海丰');

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
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PetID`),
  KEY `Owner_Pet` (`Ownername`),
  CONSTRAINT `Owner_Pet` FOREIGN KEY (`Ownername`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES ('8', '球球', '王小明', '1', '2015-01-04', '1', '中华田园猫', '0', '1', null);
INSERT INTO `pet` VALUES ('9', '丁丁', '王小明', '1', '2012-02-29', '0', '萨摩耶犬', '0', '0', null);

-- ----------------------------
-- Table structure for `transwer`
-- ----------------------------
DROP TABLE IF EXISTS `transwer`;
CREATE TABLE `transwer` (
  `Taid` int(11) NOT NULL AUTO_INCREMENT,
  `Trid` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `did` int(11) NOT NULL,
  `drName` varchar(255) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transwer
-- ----------------------------
INSERT INTO `transwer` VALUES ('9', '10', '王小明', '9', '张海峰', '8', '猫草可以刺激肠胃，达到呕吐效果。\r\n\r\n建议把猫草剪碎放在猫饭碗里，\r\n\r\n最好的排毛效果是通过排泄物带出，而不是呕吐。', '2016-03-20', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trquestion
-- ----------------------------
INSERT INTO `trquestion` VALUES ('10', '王小明', '8', '1', '0', '我猫吐猫草了怎么办？', '为什么猫咪吃过猫草后会呕吐？看到呕吐物里有猫草，呕吐物的液体里是黄色的水。', '2016-03-20', '2');
INSERT INTO `trquestion` VALUES ('11', '王小明', '8', '1', '0', '猫咪吃塑料袋怎么办？', '平时它吃2个品牌商品猫粮，猫罐头，猪肝，虾，以猫粮为主其他都是补充。', '2016-03-20', '0');

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
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('王小明', '53232910139d487f96442b00d9a597930064b7a24295a93f', 'pellyxu@qq.com', '13535353535', '7', '1', null, '1458468001000.jpg');
