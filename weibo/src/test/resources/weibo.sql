/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : weibo

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-10-24 15:51:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `aid` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `follow` int(11) DEFAULT NULL,
  `fans` int(11) DEFAULT NULL,
  `weibo` int(11) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `acccount_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'zhangsan@163.com', '张三', '123456', '2', '3', '7', '1.jpg');
INSERT INTO `account` VALUES ('2', 'lisi@163.com', '李四', '123456', '0', '0', '1', '2.jpg');
INSERT INTO `account` VALUES ('3', 'wangwu@163.com', '王五', '123456', '0', '0', '2', '3.jpg');
INSERT INTO `account` VALUES ('4', 'maliu@gmail.com', '马六', '123456', '0', '0', '0', '4.jpg');
INSERT INTO `account` VALUES ('5', 'QQONKUKHLSFXVHIJLHHN', 'EMCKVKDPP', 'XRKYLBH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('6', 'DDFDVYFQDRLTT', 'PCOHWJGLNDVIEZDG', 'CKZXWFYCE', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('7', 'CHMVBYCORDLENGFNFCS', 'GQNBGQPBQUOMRO', 'BUJBVK', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('8', 'UQQLXLOREPXVYN', 'BKPNMMZXXZEV', 'QPSKLHLW', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('9', 'CXEOAHBZ', 'MBKFCXWURSX', 'HYXQEBRPMQB', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('10', 'YIFGTKMHKI', 'XSVDUKCTAPPFB', 'OGGYYYIUNTVPQVM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('11', 'IKINMV', 'HVTPALHDSBPADDWQZJBJ', 'QPCAVIEFMG', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('12', 'YHNYCLRETFQALD', 'KLEWRBSFYUADZNRUWUT', 'DOAOKUEGIQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('13', 'IYQIHE', 'XMVBIPFZSTEYUGTTGSKU', 'FSELQCLPRRMQYTL', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('14', 'ITVDFZL', 'VBLKI', 'STRQYM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('15', 'IMOHEURBPHE', 'DPRYKTKECMQHBYGG', 'GCJKDHACBYVLGUL', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('16', 'FKYQYSHYHQ', 'VROEWSZLRKQOCX', 'JKJWIM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('17', 'WSUWVCDUJVURQQDWGT', 'EIURIVJTPCBJL', 'MGUNWVRMBUW', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('18', 'PRFTDMLNHISNJCWQRF', 'HRLNBLXZKH', 'GFOECHZEYACGF', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('19', 'XGCWIPMLCREUHKV', 'MPMHLYRD', 'DSONDSDNFEGFJHRG', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('20', 'RVPBYDECSRSHMBTG', 'UVRTXYLDYWJ', 'SOZCRZPBW', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('21', 'QCXOUIDERIJEBVOFVRS', 'SEYRHUFBVCJFGDEVUTN', 'YQQIHXNQJM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('22', 'WYIVHBSRDWRIH', 'UIDLSMBGEJCXZEDGTNEG', 'OKEQDWYJLSWLQY', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('23', 'QNPKKKDOT', 'LWIGTQSTSQUTKEDPV', 'TMCOWYRRV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('24', 'ANHEWIXQ', 'NPHSAKLN', 'OCCGOOH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('25', 'TPEKAGJZJUEV', 'JZKQVSPEEDHLLO', 'NNNWRS', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('26', 'GFYHDQHEDJOSJNRD', 'URDQHWFGLHHMMLBUSOD', 'LSDYUK', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('27', 'MPUZUDDFGHAQVG', 'QPVMNNTPKPOPR', 'TKCKNMYDSDCQQFC', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('28', 'UZVIROMJVDOAI', 'THVIIWQVX', 'LQLEECAELODOXD', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('29', 'BHKSLDUBPOSBUJ', 'XLKLGMPCWKYST', 'OILWBYMFC', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('30', 'JCVPKOPFIYC', 'RQGJSH', 'JOYEEYVWLTSG', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('31', 'JNOEGIFDGNDDNLP', 'WUWYUUNVEEYSVNNCI', 'UUTUIDQFMXXYM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('32', 'BOSKDQHLVJYBCA', 'JEHPLKOIO', 'MQFXEDPAHQWPOO', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('33', 'YCKFFXLFBYOEWQ', 'QPACYGVYOHBKGFJU', 'JNZNLX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('34', 'NBQHWKY', 'OPRHVTXMHLX', 'JJOOZFKTAUFD', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('35', 'THCPWBPLJLYT', 'WNFYFYESFGAEMOMPFDQ', 'RRGIMKROISH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('36', 'KXMJRSUWX', 'IOSUTUU', 'IMRESRJDLN', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('37', 'WBWCUWBI', 'LCJZEWMECBSSGRCNIA', 'BUUJKROWSGZ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('38', 'RBGXVUFRESSCXVRLG', 'OFSELYBBKUI', 'GSWLYTAJYLNTHFNX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('39', 'JROHMOYDKXRWPUOQ', 'FMJDIPGPGDMF', 'KCLXCQXUUJMQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('40', 'DDRPSCYKR', 'QFLDMJEMTXTJIH', 'YGGIILTVBHLB', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('41', 'PVJFEAF', 'KXQSBP', 'YWWYSVEEIANB', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('42', 'JMITTCDMYJEHEQXYC', 'LUTICDUNR', 'OLIQZN', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('43', 'RCHQARGLQ', 'HUYYRAKCMFYLV', 'FKDYBJS', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('44', 'IFTBLDUEKOIUYNPZ', 'TSYOUKXPVTSQ', 'LVSJHTQNA', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('45', 'SKKAVCAYTTBHGEXDJEU', 'FMQGMK', 'QVRTRSIVRETTXCU', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('46', 'TBEZOGB', 'QXTRJDSVN', 'RRVVQAFCDWKV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('47', 'UJKXVMQMJYMJJER', 'EXVBYFE', 'VOKMCNCD', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('48', 'SESMVO', 'KRNRUBUNBQNJMJWXQ', 'YNBGJEWCY', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('49', 'DSZMOJROKUFNORN', 'ENCIQNUHADRA', 'JXVVBXDWMCE', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('50', 'FNIIGMVW', 'DLMQVH', 'HUKWWJSYW', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('51', 'LTOENVXSMTNHULMTUR', 'XAWKNXUPTJGBTGJ', 'YGLNMIEUI', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('52', 'KHNOP', 'EMNVNSY', 'RTFBTDPH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('53', 'HMQGOALQD', 'ISSMLJYGE', 'MPXPQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('54', 'OUKSESCR', 'FAHXRFQXCRQSSGRQVM', 'FSXMFLX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('55', 'JPODARZKXY', 'CDBVDMH', 'EBTGFHUOK', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('56', 'JFBVABSVTDUDDBJMXX', 'AAIYMSKLPESMTNS', 'DMMTBQAP', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('57', 'RSXRGEP', 'VYOOCNVHGWVSD', 'NVQQBKGEXP', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('58', 'RYBQRPU', 'KOUPUZIKRRKVIHICPQHU', 'YXEVDQHPHN', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('59', 'NMVDYSQB', 'YEVZPWENUFC', 'RCFDHVMJJ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('60', 'LKHLEB', 'LIBLSNQGBGX', 'WSZWDPCTVO', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('61', 'HFHSDNKOBDFPIZXDEYB', 'DEAJORLTI', 'VCPXDYGYJCCCCA', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('62', 'AGRHNNEPVDHWQHMQMK', 'SLZUDK', 'IYQJQFQYIK', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('63', 'NMJMUFVKGTNM', 'KCQGQLIGVXTDIL', 'RVDWVGWSZDNQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('64', 'VYOUODTMCSYHSKI', 'JNFYXWUHIRYW', 'KXLXUF', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('65', 'NQBDEBCTSB', 'CKWKESKMPTPHD', 'EIUECQNNVBHTE', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('66', 'BBLMZYQB', 'TYNGRSRQRWD', 'FOCRNWWI', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('67', 'TYGOHVXVULVFXGOV', 'OOFQMFVZRBGU', 'WKFTSEXHN', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('68', 'HLRGDSTWREXDDJ', 'ILIYAVCJEDQOM', 'OVMGSDTPOMI', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('69', 'GUKYSKWJ', 'KYCOSRKJWIIJBHI', 'XUQCV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('70', 'TFBLTVI', 'VOWEVHALCNJCKYPOOQA', 'RRGNYTOYKVYV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('71', 'LLGXXLKQGYXBL', 'OLMKHJRNS', 'HRGJZZTSQXNPZ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('72', 'PQDYCXBSPVQ', 'FYVLFCEMMLNFW', 'CZNKPDCGXB', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('73', 'MOHMULVMLHXNNPONME', 'SJWDUMGVILCBKGS', 'RCCYZJPHLV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('74', 'FCKXOIDYWUYPK', 'OKHHDUBLERGDQXFHTJ', 'XUFYYQYKSMDND', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('75', 'PSXJCXYLLTMEIX', 'LYZDPBCMYWVSKMCQR', 'JKJPRGMTX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('76', 'TZBDXHPGNAEIHHHTLNQ', 'XNJDDXWOWHSUOC', 'HEDBEXOHKMW', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('77', 'MRPDBQFRPODTFLS', 'XTQRTENWFGUXDO', 'RLZICSLBGZKX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('78', 'WFSUTNFKAIGJBDJS', 'CQTDEDHPLKTNEVEEVDO', 'HVMWIGCMFAAMQTX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('79', 'AJOYJUDRVUCRH', 'XXDDKVCEYPUXRVXYV', 'GHODDSKYLQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('80', 'PJYPHOLTZQVJFEPJGVO', 'ELHWSKYHWEOLEDWMHF', 'OWHKMHOAIRU', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('81', 'GLNNBLRIGGUN', 'CMZUMKPNTXNJWULTUQP', 'KYDFJLC', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('82', 'CEKCIYQMVSMQGV', 'YXANWQSJMPD', 'NIUDWKG', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('83', 'TFLTJUJNGUT', 'OFQWTWUYOQIWSVXPCH', 'TCJSVOTONMGINRDV', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('84', 'ZUBINONHVM', 'CCTHZFC', 'TSZKUTPYULGDTD', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('85', 'QCVVQ', 'BQQHGLQDHHCQQS', 'DPDQJDMFF', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('86', 'JBSQIJFVJQDXISO', 'COGGILQUFWKJJBVDPCT', 'AQPTIJVLBT', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('87', 'OAWOOBOMQ', 'KJZFLYKLHEEPSNDHD', 'ARJRNGTSBAOOMF', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('88', 'TEFIHL', 'YIBLUGNDIGBOC', 'RTJRHQWXDM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('89', 'EIJTGFGSXTRN', 'JUJGUDC', 'RVMPUKFNHFSAFQ', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('90', 'QVXIALRXQBMTG', 'IIZXJBKYWVWPV', 'YBHLKSOJTOF', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('91', 'TVQFJCJETOCWP', 'XIIBOULMVRGPWV', 'KJCEPMVMOUX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('92', 'TMSIC', 'EGPGPAVZGQFOWYRTFDKF', 'PLBTBCRLRC', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('93', 'DNWXGBVJRYWT', 'NPEZVOLT', 'CTJDDNHWUPIE', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('94', 'QJFJJDFT', 'FDNKFUY', 'ZKSVAJWLBTBCCNM', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('95', 'UGNFTGSSBEBYDWEIVJ', 'GMEWCFP', 'LNICXERLEX', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('96', 'DIGCFGVCIDXQSNBUY', 'KFQXENVJLDEKSGQ', 'HZYZFRBXAVCLMPU', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('97', 'DOIIOIXFJF', 'HZEWQOPMIOOXIGFMD', 'MJPPMPDEQN', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('98', 'RZPMXEIQYSZU', 'BRXEVOINVTLYZTI', 'SXDHGNSCH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('99', 'KGBVYZFJBMPVMFHMV', 'VZQGP', 'JYAPSBVH', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('100', 'EEZBBX', 'GOIFZNQQFNIUJSRL', 'YDZGK', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('102', 'aaaaaa@gmail.com', '张张张张张三三三三', '123456', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('104', 'abcdefgh2@gmail.com', '张张张张张2三三三三', '123456', '0', '0', '0', '1.jpg');
INSERT INTO `account` VALUES ('106', 'z@163.com', 'zs', null, null, null, null, null);
INSERT INTO `account` VALUES ('107', 'b@163.com', 'ls', null, null, null, null, null);
INSERT INTO `account` VALUES ('108', '1@163.com', '1', null, null, null, null, null);
INSERT INTO `account` VALUES ('109', '2@163.com', '2', null, null, null, null, null);
INSERT INTO `account` VALUES ('110', '3@163.com', '3', null, null, null, null, null);
INSERT INTO `account` VALUES ('111', '4@163.com', '4', null, null, null, null, null);
INSERT INTO `account` VALUES ('112', '5@163.com', '5', null, null, null, null, null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `aid` int(5) DEFAULT NULL,
  `wid` int(5) DEFAULT NULL,
  `ccontent` varchar(140) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `FK_account_comment` (`aid`),
  KEY `FK_weibo_comment` (`wid`),
  CONSTRAINT `FK_account_comment` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`),
  CONSTRAINT `FK_weibo_comment` FOREIGN KEY (`wid`) REFERENCES `weibo` (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '4', '3', '新修改的评论2', '2016-10-15 14:44:42');
INSERT INTO `comment` VALUES ('2', '4', '3', '新修改的评论343434', '2016-10-15 15:04:11');
INSERT INTO `comment` VALUES ('3', '4', '3', '新修改的评论343434', '2016-10-15 15:04:57');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `fid` int(5) NOT NULL AUTO_INCREMENT,
  `aid` int(5) DEFAULT NULL,
  `follow_aid` int(11) DEFAULT NULL,
  `ftime` datetime DEFAULT NULL,
  `mutual_concern` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `FK_account_follow` (`aid`),
  CONSTRAINT `FK_account_follow` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('1', '1', '2', '2016-07-29 15:36:42', null);
INSERT INTO `follow` VALUES ('2', '1', '3', '2016-07-29 15:36:51', null);
INSERT INTO `follow` VALUES ('3', '2', '1', '2016-07-29 15:37:02', null);
INSERT INTO `follow` VALUES ('4', '2', '4', '2016-07-29 15:37:11', null);
INSERT INTO `follow` VALUES ('5', '3', '1', '2016-07-29 15:37:31', null);
INSERT INTO `follow` VALUES ('6', '4', '1', '2016-07-29 15:58:13', null);
INSERT INTO `follow` VALUES ('7', '4', '2', '2016-07-29 15:58:20', null);
INSERT INTO `follow` VALUES ('8', '4', '3', '2016-07-29 15:58:28', null);

-- ----------------------------
-- Table structure for liked
-- ----------------------------
DROP TABLE IF EXISTS `liked`;
CREATE TABLE `liked` (
  `aid` int(5) NOT NULL,
  `wid` int(5) NOT NULL,
  `ltime` datetime DEFAULT NULL,
  PRIMARY KEY (`aid`,`wid`),
  KEY `FK_weibo_liked` (`wid`),
  CONSTRAINT `FK_account_liked` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`),
  CONSTRAINT `FK_weibo_liked` FOREIGN KEY (`wid`) REFERENCES `weibo` (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liked
-- ----------------------------
INSERT INTO `liked` VALUES ('1', '1', '2016-08-02 12:10:49');
INSERT INTO `liked` VALUES ('1', '5', '2016-08-02 15:25:23');
INSERT INTO `liked` VALUES ('1', '6', '2016-08-02 15:25:22');
INSERT INTO `liked` VALUES ('1', '8', '2016-08-02 16:09:44');
INSERT INTO `liked` VALUES ('1', '10', '2016-08-05 16:01:48');
INSERT INTO `liked` VALUES ('1', '50214', '2016-08-05 16:01:21');
INSERT INTO `liked` VALUES ('1', '50215', '2016-08-05 16:24:17');
INSERT INTO `liked` VALUES ('2', '2', '2016-08-02 16:44:45');
INSERT INTO `liked` VALUES ('2', '4', '2016-08-02 16:44:44');
INSERT INTO `liked` VALUES ('2', '5', '2016-08-02 15:25:25');
INSERT INTO `liked` VALUES ('2', '6', '2016-08-05 15:49:31');
INSERT INTO `liked` VALUES ('2', '7', '2016-08-02 16:44:42');
INSERT INTO `liked` VALUES ('2', '8', '2016-08-05 16:02:30');
INSERT INTO `liked` VALUES ('2', '9', '2016-08-02 16:44:40');
INSERT INTO `liked` VALUES ('2', '10', '2016-08-02 16:44:37');
INSERT INTO `liked` VALUES ('2', '11', '2016-08-02 16:44:38');
INSERT INTO `liked` VALUES ('2', '13', '2016-08-05 15:49:24');
INSERT INTO `liked` VALUES ('2', '15', '2016-08-05 15:49:21');
INSERT INTO `liked` VALUES ('2', '50214', '2016-08-05 16:02:34');
INSERT INTO `liked` VALUES ('2', '50215', '2016-08-05 16:02:32');
INSERT INTO `liked` VALUES ('3', '1', '2016-08-05 15:49:53');
INSERT INTO `liked` VALUES ('3', '2', '2016-07-29 15:36:16');
INSERT INTO `liked` VALUES ('3', '3', '2016-08-05 15:50:06');
INSERT INTO `liked` VALUES ('3', '5', '2016-08-05 15:50:06');
INSERT INTO `liked` VALUES ('3', '6', '2016-08-05 15:49:58');
INSERT INTO `liked` VALUES ('3', '7', '2016-08-05 15:49:59');
INSERT INTO `liked` VALUES ('3', '8', '2016-08-05 15:49:56');
INSERT INTO `liked` VALUES ('3', '10', '2016-08-05 15:50:02');
INSERT INTO `liked` VALUES ('3', '12', '2016-08-05 15:50:03');
INSERT INTO `liked` VALUES ('3', '14', '2016-08-05 15:50:04');
INSERT INTO `liked` VALUES ('3', '50215', '2016-08-05 16:02:48');
INSERT INTO `liked` VALUES ('4', '10', '2016-08-05 16:04:46');
INSERT INTO `liked` VALUES ('4', '50214', '2016-08-05 16:04:42');
INSERT INTO `liked` VALUES ('4', '50215', '2016-08-05 16:03:18');

-- ----------------------------
-- Table structure for weibo
-- ----------------------------
DROP TABLE IF EXISTS `weibo`;
CREATE TABLE `weibo` (
  `wid` int(5) NOT NULL AUTO_INCREMENT,
  `aid` int(5) DEFAULT NULL,
  `wcontent` varchar(140) DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`),
  KEY `FK_account_weibo` (`aid`),
  CONSTRAINT `FK_account_weibo` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=50216 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weibo
-- ----------------------------
INSERT INTO `weibo` VALUES ('1', '1', '大王叫我来巡山', '2016-07-29 15:32:10', 'iPhone 6s', '2', '0');
INSERT INTO `weibo` VALUES ('2', '2', '我是来揍张三的', '2016-07-29 15:32:59', 'weibo 网页', '2', '0');
INSERT INTO `weibo` VALUES ('3', '3', '天王盖地虎', '2016-07-29 15:33:56', '华为 P9', '1', '1');
INSERT INTO `weibo` VALUES ('4', '4', '我是马六，刚开通微博', '2016-07-29 15:49:03', 'weibo 网页', '1', '0');
INSERT INTO `weibo` VALUES ('5', '1', 'test', '2016-08-02 10:50:24', 'weibo 网页', '3', '0');
INSERT INTO `weibo` VALUES ('6', '1', 'test2', '2016-08-02 08:53:47', 'weibo 网页', '3', '0');
INSERT INTO `weibo` VALUES ('7', '1', '测试set修改', '2016-08-02 16:06:55', 'iPhone 7 Plus', '2', '0');
INSERT INTO `weibo` VALUES ('8', '1', 'aad', '2016-08-02 16:08:05', 'weibo网页', '3', '0');
INSERT INTO `weibo` VALUES ('9', '1', '张三发微博', '2016-08-02 16:09:16', 'weibo网页', '1', '0');
INSERT INTO `weibo` VALUES ('10', '1', '张三发微博2', '2016-08-02 16:10:21', 'weibo网页', '4', '0');
INSERT INTO `weibo` VALUES ('11', '2', '李四发一条', '2016-08-02 16:12:26', 'weibo网页', '1', '0');
INSERT INTO `weibo` VALUES ('12', '1', 'VAOXHUGAOFMHVUUAVHTPKVBDSGKYXODDUUMGXKRFU GFRVWU', '2016-08-05 13:38:01', 'ZYIFWTCYUJKNSQRTYRMN', '1', '0');
INSERT INTO `weibo` VALUES ('13', '2', 'RVVHSXPSUERATJLHTUNTFSLCIBQNWPLPQ', '2016-08-05 13:38:01', 'YBOIBUTIDPGFS', '1', '0');
INSERT INTO `weibo` VALUES ('14', '3', 'TPFJDDHMYXRYEBWYKIWYRMLUIKJCPFPMPLOOPQNDCHXNZ NHN QM', '2016-08-05 13:38:01', 'ITXPHFQXSSWYCAYWQBK', '1', '0');
INSERT INTO `weibo` VALUES ('15', '4', 'XYJXAGJJOPAZ', '2016-08-05 13:38:01', 'MMSLNLGQXJAGHLATQW', '1', '0');
INSERT INTO `weibo` VALUES ('50212', '3', 's', '2016-08-05 15:50:52', 'weibo网页', '0', '0');
INSERT INTO `weibo` VALUES ('50213', '3', 'gfgfg', '2016-08-05 15:53:53', 'weibo网页', '0', '0');
INSERT INTO `weibo` VALUES ('50214', '1', 'sdf', '2016-08-05 15:57:47', 'weibo网页', '3', '0');
INSERT INTO `weibo` VALUES ('50215', '1', 'sdfsdfd', '2016-08-05 16:00:50', 'weibo网页', '4', '0');
