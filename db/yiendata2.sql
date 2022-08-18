/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : yien

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 15/06/2022 08:22:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yiendata2
-- ----------------------------
DROP TABLE IF EXISTS `yiendata2`;
CREATE TABLE `yiendata2`  (
  `Irank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MovieName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ReleaseTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOffice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxPercent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ReleaseDays` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PointDays` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOfficePoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOfficeToTal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ShowCountALL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AudienceCountALL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOfficeFirstDay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOfficeFirstWeek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BoxOfficeWeekEnd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MaoYanWantToSee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MaoYanScore` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TaoPiaoPiaoWantToSee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TaoPiaoPiaoScore` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DouBanWantToSee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DouBanScore` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Movie_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DefaultImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ReleaseDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PointDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yiendata2
-- ----------------------------
INSERT INTO `yiendata2` VALUES ('1', '流浪地球', '2019-02-05', '4449421756', '40.06', '1226', '15', '14011306.26', '4686822999.86', '3598816', '104630392', '190752045.44', '2018592382.71', '1224554513.29', '249887', '9.2', '1210000', '9.1', '513530', '7.9', '流浪地球', 'https://images.entgroup.cn/group1/M00/00/AB/wKgASVzny4uAEWvcAABfH3c7ZxA728.jpg', '2019-02-05', '2019-01-07', '中国', '科幻/冒险');
INSERT INTO `yiendata2` VALUES ('2', '战狼2', '2017-07-27', '4240481397', '57.56', '1784', '5', '350911.8', '5688740587.69', '4273115', '159827209', '102076959.51', '996565884.15', '894488924.64', '411940', '9.7', '865905', '9.5', '96201', '7.1', '战狼2', 'https://images.entgroup.cn/group1/M00/00/C2/wKgASVznzXuAZSQEAAB9n21g2SM514.jpg', '2017-07-27', '2017-07-22', '中国', '动作/战争/主旋律');
INSERT INTO `yiendata2` VALUES ('3', '哪吒之魔童降世', '2019-07-26', '3380354036', '43.61', '1055', '14', '62237136.98', '5035020808.88', '5984754', '139580117', '144498500.0', '665169800.0', '665169800.0', '172113', '9.6', '5782', '9.5', '179545', '8.4', '哪吒之魔童降世', 'https://images.entgroup.cn/group2/M00/02/8A/wKgAS10-kBmAKrbcAABr892L23I638.jpg', '2019-07-26', '2019-07-12', '中国', '动画/玄幻/动作/喜剧');
INSERT INTO `yiendata2` VALUES ('4', '美人鱼', '2016-02-08', '3176950832', '46.13', '2319', '15', '4903279.05', '3397175023.19', '2140418', '92642619', '272330991.55', '1818019746.17', '802570021.68', '613749', '9.0', 'None', 'None', '40979', '6.7', '美人鱼', 'https://images.entgroup.cn/group2/M00/00/5E/wKgASlznzS2AcWCeAABwl8jFKb8737.jpg', '2016-02-08', '2015-12-13', '中国香港/中国', '喜剧/爱情/科幻/怀旧');
INSERT INTO `yiendata2` VALUES ('5', '我不是药神', '2018-07-05', '3038539534', '43.65', '1441', '10', '163810448.2', '3099961063.53', '3357586', '89042524', '159726446.41', '1172698253.71', '1012971807.3', '164738', '9.6', '437473', '9.4', '880893', '9.0', '我不是药神', 'https://images.entgroup.cn/group1/M00/00/A8/wKgASVzny1SAAagSAACIKvFmOFA557.jpg', '2018-07-05', '2018-06-25', '中国', '剧情/喜剧');
INSERT INTO `yiendata2` VALUES ('6', '唐人街探案2', '2018-02-16', '2872571141', '28.32', '1580', '10', '34555.0', '3397688097.35', '2275267', '87665654', '340761532.48', '990449456.54', '990449456.54', '463427', '9.2', '905270', '8.9', '61139', '6.6', '唐人街探案2', 'https://images.entgroup.cn/group2/M00/00/50/wKgAS1znyuSAWjHMAACH710vKVc225.jpg', '2018-02-16', '2018-01-17', '中国', '喜剧/动作/悬疑');
INSERT INTO `yiendata2` VALUES ('7', '我和我的祖国', '2019-09-30', '2612821600', '31.53', '989', '21', '12637761.23', '3176156807.16', '2388645', '83175481', '290415727.56', '2088087180.79', '734961777.48', '578308', '9.7', '1042', '9.4', '123413', '7.6', '我和我的祖国', 'https://images.entgroup.cn/group1/M00/05/1F/wKgASV1-9TiAGhZmAACCZzeu0MY565.jpg', '2019-09-30', '2019-09-09', '中国香港/中国', '剧情/主旋律');
INSERT INTO `yiendata2` VALUES ('8', '复仇者联盟4：终局之战', '2019-04-24', '2605238071', '55.43', '1148', '2', '190390504.5', '4250383910.36', '3759300', '86134006', '537741506.64', '2042421871.05', '1187049258.25', '1850000', '9.0', '1391000', '9.0', '181646', '8.5', '复仇者联盟4：终局之战', 'https://images.entgroup.cn/group2/M00/00/F5/wKgAS1zrQ1KAFMwsAACALrxzfVs334.jpg', '2019-04-24', '2019-04-22', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('9', '中国机长', '2019-09-30', '2583768600', '31.18', '989', '9', '56959019.78', '2913281787.88', '3005531', '77811523', '209358688.51', '1766121220.37', '739066792.37', '561040', '9.4', '7174', '9.3', '77980', '6.6', '中国机长', 'https://images.entgroup.cn/group1/M00/05/1F/wKgASV2AgMGAB6kZAAB8yi1T_ZQ512.jpg', '2019-09-30', '2019-09-12', '中国', '剧情/灾难/主旋律');
INSERT INTO `yiendata2` VALUES ('10', '红海行动', '2018-02-16', '2500157536', '24.65', '1580', '16', '20986.7', '3651886398.21', '2837491', '92970471', '129509878.31', '464989911.72', '464989911.72', '162042', '9.4', '533886', '9.3', '121269', '8.3', '红海行动', 'https://images.entgroup.cn/group2/M00/00/55/wKgAS1zny8GAcqTMAAB5ad6sOkg158.jpg', '2018-02-16', '2018-01-03', '中国香港/中国', '动作/剧情/犯罪/主旋律');
INSERT INTO `yiendata2` VALUES ('11', '速度与激情8', '2017-04-14', '2489466792', '51.1', '1888', '4', '62708763.43', '2670959285.65', '2424981', '72879248', '417093660.72', '1289364845.77', '1289364845.77', '313365', '9.3', '690546', '9.2', '43415', '7.0', '速度与激情8', 'https://images.entgroup.cn/group1/M00/00/90/wKgASVznyWCAbE6ZAABekRbjlIA765.jpg', '2017-04-14', '2017-04-10', '美国', '动作/犯罪');
INSERT INTO `yiendata2` VALUES ('12', '疯狂的外星人', '2019-02-05', '2185705923', '19.68', '1226', '10', '28712.0', '2214254201.44', '1750930', '52519962', '410262693.52', '1462049462.73', '524385215.39', '460000', '8.5', '1105000', '8.3', '553300', '6.4', '疯狂的外星人', 'https://images.entgroup.cn/group1/M00/00/DE/wKgASVznz8WAQKvIAAB1bv8-IXs402.jpg', '2019-02-05', '2019-01-06', '中国', '喜剧/科幻');
INSERT INTO `yiendata2` VALUES ('13', '复仇者联盟3：无限战争', '2018-05-11', '2182980431', '50.46', '1496', '11', '59524134.15', '2390537273.23', '3232988', '62508215', '387265541.04', '1212733200.2', '1212733200.2', '1146071', '8.9', '1024853', '8.8', '245556', '8.1', '复仇者联盟3：无限战争', 'https://images.entgroup.cn/group2/M00/00/60/wKgASlznzWyAXhGxAAB2e4Aor94573.jpg', '2018-05-11', '2018-04-28', '美国', '动作/科幻/奇幻/冒险');
INSERT INTO `yiendata2` VALUES ('14', '速度与激情7', '2015-04-12', '2131659608', '51.89', '2621', '4', '52470158.97', '2426586547.19', '1479847', '62446535', '346351045.52', '346351045.52', '346351045.52', '244929', '9.5', 'None', 'None', '54951', '8.4', '速度与激情7', 'https://images.entgroup.cn/group1/M00/00/99/wKgASVznyheAQbw2AAHXg_SRHaY703.jpg', '2015-04-12', '2015-03-26', '美国/日本', '动作/犯罪');
INSERT INTO `yiendata2` VALUES ('15', '捉妖记2', '2018-02-16', '2117337146', '20.87', '1580', '6', '355.0', '2237154621.99', '1322843', '58389282', '546851800.66', '1204445922.67', '1204445922.67', '668983', '8.1', '876678', '7.8', '34951', '5.1', '捉妖记2', 'https://images.entgroup.cn/group1/M00/00/B9/wKgASVznzJyAKmOKAAB6-1UsYZ8911.jpg', '2018-02-16', '2018-01-17', '中国香港/中国', '喜剧/奇幻');
INSERT INTO `yiendata2` VALUES ('16', '羞羞的铁拳', '2017-09-30', '2006145390', '39.11', '1719', '9', '476065.0', '2201748735.32', '2605630', '65872348', '132942563.13', '309896340.93', '309896340.93', '284299', '9.1', '291337', '9.0', '37429', '6.8', '羞羞的铁拳', 'https://images.entgroup.cn/group1/M00/00/BF/wKgASVznzROAGDqzAABwMl3RXa4825.jpg', '2017-09-30', '2017-09-19', '中国', '喜剧/奇幻');
INSERT INTO `yiendata2` VALUES ('17', '海王', '2018-12-07', '1852176950', '42.33', '1286', '3', '8999388.91', '2013198359.57', '3153880', '55364908', '156816433.56', '643153980.07', '643153980.07', '251000', '9.4', '489000', '9.1', '384351', '7.6', '海王', 'https://images.entgroup.cn/group2/M00/00/6E/wKgAS1znz7-AJsu4AABqxQIKzOg570.jpg', '2018-12-07', '2018-12-04', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('18', '毒液：致命守护者', '2018-11-09', '1747787319', '46.78', '1314', '5', '17720694.36', '1870680440.89', '3119146', '52679663', '223382301.3', '750898254.79', '750898254.79', '394000', '9.3', '876000', '9.0', '623309', '7.2', '毒液：致命守护者', 'https://images.entgroup.cn/group1/M00/00/A9/wKgASVzny2eAJTdFAAB-OQPAq7M022.jpg', '2018-11-09', '2018-11-03', '美国', '动作/科幻/惊悚');
INSERT INTO `yiendata2` VALUES ('19', '飞驰人生', '2019-02-05', '1685233771', '15.17', '1226', '10', '87652.0', '1729373180.88', '1648195', '41296764', '321973160.52', '1054008317.65', '374747245.2', '382000', '8.8', '1081000', '8.6', '325494', '6.9', '飞驰人生', 'https://images.entgroup.cn/group2/M00/00/3E/wKgAS1znx-OAQ_xBAAB0ieHaxFI960.jpg', '2019-02-05', '2019-01-07', '中国', '喜剧/动作');
INSERT INTO `yiendata2` VALUES ('20', '捉妖记', '2015-07-16', '1658458761', '30.12', '2526', '11', '11284788.9', '2441462276.0', '1585277', '65689807', '162774970.55', '664776293.25', '502001322.7', '204826', '9.1', 'None', 'None', '21593', '6.7', '捉妖记', 'https://images.entgroup.cn/group2/M00/00/70/wKgAS1zn0DSASFhJAAJglvEhGpM532.jpg', '2015-07-16', '2015-07-03', '中国香港/中国', '奇幻/喜剧');
INSERT INTO `yiendata2` VALUES ('21', '复仇者联盟4：终局之战', '2019-04-24', '1632112183', '44.25', '1148', '2', '190390504.5', '4250383910.36', '3759300', '86134006', '537741506.64', '2042421871.05', '1187049258.25', '1850000', '9.0', '1391000', '9.0', '181646', '8.5', '复仇者联盟4：终局之战', 'https://images.entgroup.cn/group2/M00/00/F5/wKgAS1zrQ1KAFMwsAACALrxzfVs334.jpg', '2019-04-24', '2019-04-22', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('22', '前任3：再见前任', '2017-12-29', '1625892928', '32.85', '1629', '10', '13639245.63', '1941740154.06', '1938300', '55382104', '64466739.29', '281426639.84', '281426639.84', '250058', '9.2', '512647', '8.7', '53359', '5.6', '前任3：再见前任', 'https://images.entgroup.cn/group1/M00/00/B9/wKgASVznzJeAXq-JAACOx9il-lo882.jpg', '2017-12-29', '2017-12-19', '中国', '喜剧/爱情');
INSERT INTO `yiendata2` VALUES ('23', '烈火英雄', '2019-08-01', '1573718400', '20.3', '1049', '13', '55683800.0', '1707188998.83', '2461780', '47636224', '122298400.0', '516169700.0', '393871300.0', '164000', '9.4', 'None', '9.2', '46959', '6.4', '烈火英雄', 'https://images.entgroup.cn/group2/M00/02/8B/wKgAS11CgQGAaweAAAB7sr_UZpk254.jpg', '2019-08-01', '2019-07-19', '中国', '灾难/抢险/动作/爱情/亲情/主旋律');
INSERT INTO `yiendata2` VALUES ('24', '侏罗纪世界2', '2018-06-15', '1506834487', '42.11', '1461', '8', '13653252.51', '1695882344.2', '2486149', '47507666', '202444834.17', '720714542.29', '720714542.29', '621367', '8.6', '576855', '8.4', '52054', '6.7', '侏罗纪世界2', 'https://images.entgroup.cn/group1/M00/00/7A/wKgASVznx5OAPj9RAABr7-alkAg054.jpg', '2018-06-15', '2018-06-02', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('25', '魔兽', '2016-06-08', '1462410738', '37.82', '2198', '9', '50137561.29', '1472297906.1', '1590170', '39718286', '251612714.13', '980405121.55', '428709782.57', '467099', '9.0', 'None', 'None', '26536', '7.9', '魔兽', 'https://images.entgroup.cn/group1/M00/00/A0/wKgASVznyp6AVdupAABUbBxwfy0524.jpg', '2016-06-08', '2016-05-22', '美国', '动作/冒险/奇幻');
INSERT INTO `yiendata2` VALUES ('26', '复仇者联盟2：奥创纪元', '2015-05-12', '1409810642', '44.33', '2591', '4', '29741253.55', '1464392888.3', '1283135', '36599504', '185864249.65', '936918059.79', '534374383.99', '311650', '8.3', 'None', 'None', '32640', '7.1', '复仇者联盟2：奥创纪元', 'https://images.entgroup.cn/group2/M00/00/60/wKgASlznzWGAFyE2AAFsX8hcC5U783.jpg', '2015-05-12', '2015-05-08', '美国', '科幻/动作/冒险');
INSERT INTO `yiendata2` VALUES ('27', '寻龙诀', '2015-12-18', '1373915610', '32.69', '2371', '7', '9418860.83', '1682742951.66', '1156163', '46478812', '161601555.56', '592048809.21', '592048809.21', '559237', '9.1', 'None', 'None', '24739', '7.4', '寻龙诀', 'https://images.entgroup.cn/group1/M00/00/90/wKgASVznyVmAUe9EAACKwRJ9t2M175.jpg', '2015-12-18', '2015-12-11', '中国香港/中国', '动作/冒险/惊悚');
INSERT INTO `yiendata2` VALUES ('28', '夏洛特烦恼', '2015-09-30', '1372033168', '32.57', '2450', '23', '11258670.17', '1447823756.4', '1356133', '45023733', '23266156.04', '258171974.5', '194080109.37', '80510', '9.3', 'None', 'None', '26862', '7.7', '夏洛特烦恼', 'https://images.entgroup.cn/group2/M00/00/6A/wKgASlznzw-ARfmXAAGL4jGgs8M121.jpg', '2015-09-30', '2015-07-07', '中国', '喜剧/爱情/青春');
INSERT INTO `yiendata2` VALUES ('29', '疯狂动物城', '2016-03-04', '1337203608', '35.86', '2294', '1', '163635.9', '1534528519.84', '1629215', '45698756', '22454228.18', '155323654.41', '155323654.41', '72537', '9.5', 'None', 'None', '147633', '9.2', '疯狂动物城', 'https://images.entgroup.cn/group1/M00/00/8F/wKgASVznyVCACpvWAACQLh4tpr8084.jpg', '2016-03-04', '2016-03-03', '美国', '动画/冒险');
INSERT INTO `yiendata2` VALUES ('30', '一出好戏', '2018-08-10', '1320086649', '19.36', '1405', '9', '490262.0', '1355047659.3', '1530835', '39037304', '151797403.59', '534549684.89', '534549684.89', '411582', '8.3', '574372', '8.4', '545748', '7.1', '一出好戏', 'https://images.entgroup.cn/group1/M00/00/D5/wKgASVznzw2AGJpgAACNBA751ag723.jpg', '2018-08-10', '2018-07-30', '中国', '喜剧');
INSERT INTO `yiendata2` VALUES ('31', '西虹市首富', '2018-07-27', '1299171751', '18.66', '1419', '4', '363078.0', '2547571742.78', '2594818', '72657663', '227136068.52', '903494241.69', '903494241.69', '339761', '9.2', '2569251', '9.0', '424831', '6.6', '西虹市首富', 'https://images.entgroup.cn/group2/M00/00/42/wKgASlznyK6AY_1SAABzXedgJUU849.jpg', '2018-07-27', '2018-07-20', '中国', '喜剧');
INSERT INTO `yiendata2` VALUES ('32', '哪吒之魔童降世', '2019-07-26', '1295816360', '22.73', '1055', '14', '62237136.98', '5035020808.88', '5984754', '139580117', '144498500.0', '665169800.0', '665169800.0', '172113', '9.6', '5782', '9.5', '179545', '8.4', '哪吒之魔童降世', 'https://images.entgroup.cn/group2/M00/02/8A/wKgAS10-kBmAKrbcAABr892L23I638.jpg', '2019-07-26', '2019-07-12', '中国', '动画/玄幻/动作/喜剧');
INSERT INTO `yiendata2` VALUES ('33', '侏罗纪世界', '2015-06-10', '1293155581', '38.54', '2562', '3', '8541044.05', '1420732578.44', '1134152', '37103942', '101128360.83', '598187458.09', '416962303.91', '149933', '9.0', 'None', 'None', '33574', '7.7', '侏罗纪世界', 'https://images.entgroup.cn/group2/M00/00/3C/wKgAS1znx6mAYTRVAACxBBPnUGA978.jpg', '2015-06-10', '2015-06-06', '美国', '动作/冒险/科幻/惊悚');
INSERT INTO `yiendata2` VALUES ('34', '战狼2', '2017-07-27', '1270079046', '25.19', '1784', '5', '350911.8', '5688740587.69', '4273115', '159827209', '102076959.51', '996565884.15', '894488924.64', '411940', '9.7', '865905', '9.5', '96201', '7.1', '战狼2', 'https://images.entgroup.cn/group1/M00/00/C2/wKgASVznzXuAZSQEAAB9n21g2SM514.jpg', '2017-07-27', '2017-07-22', '中国', '动作/战争/主旋律');
INSERT INTO `yiendata2` VALUES ('35', '美国队长3：英雄内战', '2016-05-06', '1229753163', '39.17', '2231', '5', '16969943.98', '1246348110.67', '1420629', '35622592', '181311687.42', '611027557.08', '611027557.08', '555845', '8.8', 'None', 'None', '15615', '7.8', '美国队长3：英雄内战', 'https://images.entgroup.cn/group2/M00/00/3D/wKgAS1znx8OAQf-QAABzh-WJVOM358.jpg', '2016-05-06', '2016-04-29', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('36', '变形金刚4：绝迹重生', '2014-06-27', '1220993331', '33.55', '2910', '6', '21240493.21', '1977522538.2', '957299', '47417723', '174684551.83', '610916511.91', '610916511.91', 'None', 'None', 'None', 'None', 'None', 'None', '变形金刚4：绝迹重生', 'https://images.entgroup.cn/group1/M00/00/CE/wKgASVznzmaABuK1AACJ7JVO_ks873.jpg', '2014-06-27', '2014-06-19', '美国/中国', '科幻/动作/冒险');
INSERT INTO `yiendata2` VALUES ('37', '西虹市首富', '2018-07-27', '1220781761', '17.9', '1419', '4', '363078.0', '2547571742.78', '2594818', '72657663', '227136068.52', '903494241.69', '903494241.69', '339761', '9.2', '2569251', '9.0', '424831', '6.6', '西虹市首富', 'https://images.entgroup.cn/group2/M00/00/42/wKgASlznyK6AY_1SAABzXedgJUU849.jpg', '2018-07-27', '2018-07-20', '中国', '喜剧');
INSERT INTO `yiendata2` VALUES ('38', '变形金刚5：最后的骑士', '2017-06-23', '1198932566', '30.5', '1818', '8', '42317462.66', '1551242789.86', '1842588', '41996183', '289598567.41', '829571659.22', '829571659.22', '532878', '7.4', '617679', '7.6', '34062', '4.9', '变形金刚5：最后的骑士', 'https://images.entgroup.cn/group2/M00/00/72/wKgASlzn0FOAW-76AABpq8QDO64962.jpg', '2017-06-23', '2017-06-13', '美国', '动作/冒险/科幻');
INSERT INTO `yiendata2` VALUES ('39', '芳华', '2017-12-15', '1186950757', '23.34', '1643', '41', '25554493.17', '1422584326.78', '1690656', '41553636', '76066073.36', '293472167.41', '293472167.41', '163381', '9.1', '252546', '8.8', '63012', '7.9', '芳华', 'https://images.entgroup.cn/group2/M00/00/6B/wKgASlznzxeAcfICAABawRSZKkk584.jpg', '2017-12-15', '2017-09-13', '中国', '战争/剧情/爱情');
INSERT INTO `yiendata2` VALUES ('40', '功夫瑜伽', '2017-01-28', '1172042378', '18.95', '1964', '3', '3390421.42', '1752603744.55', '1377361', '45907825', '138454790.1', '269326017.99', '269326017.99', '87299', '8.4', '163025', '8.6', '14480', '5.2', '功夫瑜伽', 'https://images.entgroup.cn/group1/M00/00/CE/wKgASVznzmaAAKM9AABhzY2sARw134.jpg', '2017-01-28', '2017-01-18', '中国/印度', '喜剧/动作/冒险');
INSERT INTO `yiendata2` VALUES ('41', '无双', '2018-09-30', '1170560594', '32.09', '1354', '5', '8846.0', '1273770349.84', '2454638', '35818125', '54813491.72', '54813491.72', '54813491.72', '125425', '8.9', '222000', '8.9', '390997', '8.0', '无双', 'https://images.entgroup.cn/group2/M00/00/3F/wKgAS1znyD-AdpfuAABzvsthWW8895.jpg', '2018-09-30', '2018-09-24', '中国香港/中国', '动作/犯罪');
INSERT INTO `yiendata2` VALUES ('42', '西游记之孙悟空三打白骨精', '2016-02-08', '1166567892', '16.94', '2319', '13', '2353049.7', '1201008291.68', '918749', '32752994', '166683845.88', '768565822.97', '277067961.24', '204003', '7.8', 'None', 'None', '19450', '5.9', '西游记之孙悟空三打白骨精', 'https://images.entgroup.cn/group1/M00/00/85/wKgASVznyHmAdrbNAAB8_CoDe2w046.jpg', '2016-02-08', '2016-01-20', '中国', '动作/奇幻/喜剧');
INSERT INTO `yiendata2` VALUES ('43', '速度与激情：特别行动', '2019-08-23', '1114419672', '14.38', '1027', '2', '35186529.03', '1434299899.05', '2694105', '40029675', '249052600.0', '677767800.0', '677767800.0', '634000', '8.6', 'None', '8.5', '45705', '6.3', '速度与激情：特别行动', 'https://images.entgroup.cn/group2/M00/02/8A/wKgASl05FhuAaBzbAABtrYa2dJM227.jpg', '2019-08-23', '2019-08-21', '美国', '动作/冒险/犯罪');
INSERT INTO `yiendata2` VALUES ('44', '头号玩家', '2018-03-30', '1108318659', '28.35', '1538', '7', '2876399.89', '1396660613.44', '2188500', '38366816', '85690448.1', '387801373.7', '387801373.7', '104974', '9.1', '196708', '9.0', '155725', '8.7', '头号玩家', 'https://images.entgroup.cn/group2/M00/00/42/wKgASlznyJuAZhHqAAB3hf2NqGc525.jpg', '2018-03-30', '2018-03-23', '美国', '科幻/动作/冒险');
INSERT INTO `yiendata2` VALUES ('45', '大黄蜂', '2019-01-04', '1105858393', '32.83', '1258', '5', '8290204.02', '1149841394.53', '2822475', '31980141', '111020250.64', '399734006.81', '399734006.81', '170000', '9.1', '250000', '8.8', '280395', '7.0', '大黄蜂', 'https://images.entgroup.cn/group1/M00/00/DD/wKgASVznz6yAAO1TAAByVfktJss322.jpg', '2019-01-04', '2018-12-28', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata2` VALUES ('46', '湄公河行动', '2016-09-30', '1105411570', '32.32', '2084', '6', '1477137.98', '1188593831.16', '1608502', '39043285', '38992614.87', '164174573.11', '164174573.11', '57731', '9.3', 'None', '9.4', '64839', '8.0', '湄公河行动', 'https://images.entgroup.cn/group2/M00/00/43/wKgASlznyL2AZKvlAABv1Fvb_kI580.jpg', '2016-09-30', '2016-09-24', '中国/中国香港', '动作/犯罪/剧情/主旋律');
INSERT INTO `yiendata2` VALUES ('47', '红海行动', '2018-02-16', '1097266438', '21.45', '1580', '16', '20986.7', '3651886398.21', '2837491', '92970471', '129509878.31', '464989911.72', '464989911.72', '162042', '9.4', '533886', '9.3', '121269', '8.3', '红海行动', 'https://images.entgroup.cn/group2/M00/00/55/wKgAS1zny8GAcqTMAAB5ad6sOkg158.jpg', '2018-02-16', '2018-01-03', '中国香港/中国', '动作/剧情/犯罪/主旋律');
INSERT INTO `yiendata2` VALUES ('48', '澳门风云3', '2016-02-08', '1096826067', '15.93', '2319', '10', '6336770.84', '1118212086.75', '873464', '31377130', '176395503.25', '786578371.34', '255676512.87', '520726', '5.7', 'None', 'None', '9471', '4.4', '澳门风云3', 'https://images.entgroup.cn/group1/M00/00/CD/wKgASVznzmCATD0TAACAdQuxqtE108.jpg', '2016-02-08', '2016-01-28', '中国/中国香港', '喜剧/动作');
INSERT INTO `yiendata2` VALUES ('49', '极限特工：终极回归', '2017-02-10', '1094268674', '17.7', '1951', '3', '5273810.98', '1127410361.38', '1374210', '31134863', '143435190.4', '429915393.66', '429915393.66', '124350', '8.7', '159825', '8.9', '17204', '5.8', '极限特工：终极回归', 'https://images.entgroup.cn/group2/M00/00/4B/wKgASlznyfKAQAEVAABcGmjjHfs001.jpg', '2017-02-10', '2017-02-05', '美国', '动作/冒险');
INSERT INTO `yiendata2` VALUES ('50', '西游降魔篇', '2013-02-10', '1085809283', '50.87', '3412', '17', '2095332.59', '1246990794.27', '764904', '31050325', '82981139.68', '82981139.68', '82981139.68', 'None', 'None', 'None', 'None', 'None', 'None', '西游降魔篇', 'https://images.entgroup.cn/group1/M00/00/85/wKgASVznyHmAO1VrAACdwdSv_qs734.jpg', '2013-02-10', '2013-01-12', '中国/中国香港', '奇幻/喜剧/冒险');

SET FOREIGN_KEY_CHECKS = 1;