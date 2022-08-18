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

 Date: 15/06/2022 08:22:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yiendata3
-- ----------------------------
DROP TABLE IF EXISTS `yiendata3`;
CREATE TABLE `yiendata3`  (
  `Irank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MovieName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ReleaseTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ShowCount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ShowCountPercent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ShowCount_Eff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EnMovieID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
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
-- Records of yiendata3
-- ----------------------------
INSERT INTO `yiendata3` VALUES ('1', '速度与激情9', '2021-05-21', '228893', '59.99', '1.42', '682199', '391', '2', '61162554.47', '1392334091.97', '2752344', '35433015', '317553403.26', '816594915.72', '816594915.72', '1280573', '7.6', '1624670', 'None', '70432', '5.2', '速度与激情9', 'https://images.entgroup.cn/group2/M00/0B/CB/wKgAS2B7k2OAO7sqAAB5iDxbgwE320.jpg', '2021-05-21', '2021-05-19', '美国', '动作/犯罪/冒险');
INSERT INTO `yiendata3` VALUES ('2', '复仇者联盟4：终局之战', '2019-04-24', '226853', '82.65', '1.19', '670808', '1149', '2', '190390504.5', '4250383910.36', '3759300', '86134006', '537741506.64', '2042421871.05', '1187049258.25', '1850000', '9.0', '1391000', '9.0', '181646', '8.5', '复仇者联盟4：终局之战', 'https://images.entgroup.cn/group2/M00/00/F5/wKgAS1zrQ1KAFMwsAACALrxzfVs334.jpg', '2019-04-24', '2019-04-22', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('3', '哥斯拉大战金刚', '2021-03-26', '196385', '54.18', '1.61', '696413', '447', '2', '133127.0', '1232628705.36', '3561748', '32919765', '137018479.31', '459142936.7', '459142936.7', '506799', '8.9', '563662', '8.5', '37816', '6.3', '哥斯拉大战金刚', 'https://images.entgroup.cn/group1/M00/16/68/wKgASWA94VCAOr4OAAB111VMQCw157.jpg', '2021-03-26', '2021-03-23', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('4', '复仇者联盟3：无限战争', '2018-05-11', '189464', '67.75', '1.4', '675789', '1497', '11', '59524134.15', '2390537273.23', '3232988', '62508215', '387265541.04', '1212733200.2', '1212733200.2', '1146071', '8.9', '1024853', '8.8', '245556', '8.1', '复仇者联盟3：无限战争', 'https://images.entgroup.cn/group2/M00/00/60/wKgASlznzWyAXhGxAAB2e4Aor94573.jpg', '2018-05-11', '2018-04-28', '美国', '动作/科幻/奇幻/冒险');
INSERT INTO `yiendata3` VALUES ('5', '速度与激情：特别行动', '2019-08-23', '187668', '52.39', '1.5', '682202', '1028', '2', '35186529.03', '1434299899.05', '2694105', '40029675', '249052600.0', '677767800.0', '677767800.0', '634000', '8.6', 'None', '8.5', '45705', '6.3', '速度与激情：特别行动', 'https://images.entgroup.cn/group2/M00/02/8A/wKgASl05FhuAaBzbAABtrYa2dJM227.jpg', '2019-08-23', '2019-08-21', '美国', '动作/冒险/犯罪');
INSERT INTO `yiendata3` VALUES ('6', '唐人街探案3', '2021-02-12', '187306', '37.53', '1.58', '676314', '489', '74', '7476705.83', '4522346007.13', '3234906', '95005847', '1010739018.04', '2578720294.57', '2578720294.57', '4468547', '8.8', '8140647', '9.0', '206739', '5.3', '唐人街探案3', 'https://images.entgroup.cn/group1/M00/16/8C/wKgASWBihG-Ad-NtAACGgFj6e5k162.jpg', '2021-02-12', '2020-01-19', '中国', '喜剧/动作/悬疑/侦探');
INSERT INTO `yiendata3` VALUES ('7', '金刚川', '2020-10-23', '184706', '54.04', '1.37', '701994', '601', '3', '297292.0', '1126994961.61', '3753082', '30462554', '104708835.02', '358692697.16', '358692697.16', '123315', '9.4', '453950', '9.5', '56346', '6.5', '金刚川', 'https://images.entgroup.cn/group2/M00/08/6C/wKgAS1-x5xCAFQ6GAABwkKiQ9UE471.jpg', '2020-10-23', '2020-10-16', '中国', '剧情/历史/战争/主旋律');
INSERT INTO `yiendata3` VALUES ('8', '蜘蛛侠：英雄远征', '2019-06-28', '182616', '53.71', '1.57', '682139', '1084', '6', '22132128.82', '1417682748.43', '2318959', '38975852', '225530200.0', '655242400.0', '655242400.0', '502000', '9.0', 'None', '8.9', '103252', '7.7', '蜘蛛侠：英雄远征', 'https://images.entgroup.cn/group1/M00/05/0D/wKgASV0V3gKALHmXAAB0xubDE20677.jpg', '2019-06-28', '2019-06-21', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('9', '哥斯拉2：怪兽之王', '2019-05-31', '170401', '52.59', '1.43', '682691', '1112', '20', '26188629.13', '937467065.19', '1759858', '25678921', '135550396.0', '458946751.06', '458946751.06', '325000', '8.5', 'None', '8.4', '51316', '6.2', '哥斯拉2：怪兽之王', 'https://images.entgroup.cn/group1/M00/00/7E/wKgASVznx_eAUj3SAABmd9DBRWM170.jpg', '2019-05-31', '2019-05-04', '美国', '科幻/灾难/动作');
INSERT INTO `yiendata3` VALUES ('10', '毒液：致命守护者', '2018-11-09', '167329', '49.5', '1.66', '662209', '1315', '5', '17720694.36', '1870680440.89', '3119146', '52679663', '223382301.3', '750898254.79', '750898254.79', '394000', '9.3', '876000', '9.0', '623309', '7.2', '毒液：致命守护者', 'https://images.entgroup.cn/group1/M00/00/A9/wKgASVzny2eAJTdFAAB-OQPAq7M022.jpg', '2018-11-09', '2018-11-03', '美国', '动作/科幻/惊悚');
INSERT INTO `yiendata3` VALUES ('11', '惊奇队长', '2019-03-08', '166411', '48.88', '1.43', '679862', '1196', '3', '15370247.57', '1035322210.35', '1978149', '27811855', '215438181.69', '582964123.79', '582964123.79', '433000', '8.7', '625000', '8.5', '133868', '6.8', '惊奇队长', 'https://images.entgroup.cn/group2/M00/00/42/wKgASlznyKaAENYwAAB7JBh2tJo498.jpg', '2019-03-08', '2019-03-05', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('12', '大黄蜂', '2019-01-04', '166302', '50.17', '1.46', '678494', '1259', '5', '8290204.02', '1149841394.53', '2822475', '31980141', '111020250.64', '399734006.81', '399734006.81', '170000', '9.1', '250000', '8.8', '280395', '7.0', '大黄蜂', 'https://images.entgroup.cn/group1/M00/00/DD/wKgASVznz6yAAO1TAAByVfktJss322.jpg', '2019-01-04', '2018-12-28', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('13', '长津湖', '2021-09-30', '164692', '53.34', '1.38', '703496', '259', '30', '781533.38', '5775462186.15', '5723110', '124510658', '205191305.41', '1527660555.02', '1322469249.61', '1012616', '9.5', '1042773', 'None', 'None', '7.4', '长津湖', 'https://images.entgroup.cn/group2/M00/0E/99/wKgAS2FERbOAMo7-AABuCTH9_Bs425.jpg', '2021-09-30', '2021-08-05', '中国', '剧情/战争/历史/主旋律');
INSERT INTO `yiendata3` VALUES ('14', '变形金刚5：最后的骑士', '2017-06-23', '163815', '69.39', '1.35', '656946', '1819', '8', '42317462.66', '1551242789.86', '1842588', '41996183', '289598567.41', '829571659.22', '829571659.22', '532878', '7.4', '617679', '7.6', '34062', '4.9', '变形金刚5：最后的骑士', 'https://images.entgroup.cn/group2/M00/00/72/wKgASlzn0FOAW-76AABpq8QDO64962.jpg', '2017-06-23', '2017-06-13', '美国', '动作/冒险/科幻');
INSERT INTO `yiendata3` VALUES ('15', '海王', '2018-12-07', '163187', '53.14', '1.62', '665526', '1287', '3', '8999388.91', '2013198359.57', '3153880', '55364908', '156816433.56', '643153980.07', '643153980.07', '251000', '9.4', '489000', '9.1', '384351', '7.6', '海王', 'https://images.entgroup.cn/group2/M00/00/6E/wKgAS1znz7-AJsu4AABqxQIKzOg570.jpg', '2018-12-07', '2018-12-04', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('16', '速度与激情8', '2017-04-14', '163104', '67.63', '1.35', '659757', '1889', '4', '62708763.43', '2670959285.65', '2424981', '72879248', '417093660.72', '1289364845.77', '1289364845.77', '313365', '9.3', '690546', '9.2', '43415', '7.0', '速度与激情8', 'https://images.entgroup.cn/group1/M00/00/90/wKgASVznyWCAbE6ZAABekRbjlIA765.jpg', '2017-04-14', '2017-04-10', '美国', '动作/犯罪');
INSERT INTO `yiendata3` VALUES ('17', '侏罗纪世界2', '2018-06-15', '163063', '52.53', '1.6', '667168', '1462', '8', '13653252.51', '1695882344.2', '2486149', '47507666', '202444834.17', '720714542.29', '720714542.29', '621367', '8.6', '576855', '8.4', '52054', '6.7', '侏罗纪世界2', 'https://images.entgroup.cn/group1/M00/00/7A/wKgASVznx5OAPj9RAABr7-alkAg054.jpg', '2018-06-15', '2018-06-02', '美国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('18', '侏罗纪世界3', '2022-06-10', '159798', '48.31', '1.85', '692532', '6', '2', '4849713.1', '417356399.16', '923837', '11584288', '95214781.96', '350868684.54', '350868684.54', '433283', '8.0', '464232', 'None', '53617', '6.4', '侏罗纪世界3', 'https://images.entgroup.cn/group1/M00/26/7B/wKgASWKHQ8GAK_kSAAB0BzOfdj4148.jpg', '2022-06-10', '2022-06-06', '美国', '动作/科幻/冒险/惊悚');
INSERT INTO `yiendata3` VALUES ('19', '中国医生', '2021-07-09', '159281', '39.73', '1.63', '612290', '342', '3', '946653.43', '1328189709.15', '3293429', '36534217', '93903047.63', '348599403.11', '348599403.11', '475631', '9.4', '342305', 'None', 'None', '6.9', '中国医生', 'https://images.entgroup.cn/group2/M00/0D/31/wKgASmDJnbOAL3qtAABcy0O8YIo799.jpg', '2021-07-09', '2021-07-06', '中国', '剧情/主旋律');
INSERT INTO `yiendata3` VALUES ('20', '宠爱', '2019-12-31', '158360', '39.56', '1.28', '685447', '898', '8', '1185063.94', '684113525.8', '2131878', '19592059', '172329506.45', '437192394.9', '118812634.25', '294938', '8.9', 'None', 'None', '28588', '5.9', '宠爱', 'https://images.entgroup.cn/group2/M00/02/97/wKgAS138anyABrGMAABqXWMS8J0285.jpg', '2019-12-31', '2019-12-22', '中国', '剧情/喜剧/爱情');
INSERT INTO `yiendata3` VALUES ('21', '少年的你', '2019-10-25', '157514', '42.89', '1.49', '680681', '965', '5', '0.0', '1559025893.4', '2730096', '43016831', '149883963.33', '588648843.16', '588648843.16', '1056702', '9.4', 'None', '9.3', '195040', '8.2', '少年的你', 'https://images.entgroup.cn/group1/M00/05/25/wKgASV2uqS-AK9xkAACOPjzVcA4994.jpg', '2019-10-25', '2019-10-18', '中国', '剧情/青春');
INSERT INTO `yiendata3` VALUES ('22', '白蛇2：青蛇劫起', '2021-07-23', '154504', '41.41', '1.22', '705238', '328', '5', '500479.09', '580137422.09', '2211472', '14865235', '59895103.58', '193007806.64', '193007806.64', '339059', '9.1', '430402', 'None', '51451', '6.8', '白蛇2：青蛇劫起', 'https://images.entgroup.cn/group2/M00/0D/1C/wKgAS2C9mGqAVojSAABJ4CuEZJc331.jpg', '2021-07-23', '2021-07-16', '中国', '动画/奇幻/冒险');
INSERT INTO `yiendata3` VALUES ('23', '拆弹专家2', '2020-12-24', '153407', '41.89', '1.05', '691902', '539', '9', '2180231.71', '1314778689.39', '3148676', '34009265', '79037108.1', '418690662.48', '339653554.38', '310427', '9.3', '691954', '9.1', '68202', '7.5', '拆弹专家2', 'https://images.entgroup.cn/group1/M00/10/3C/wKgASV-k9jaAWz-lAABugxbiQKE111.jpg', '2020-12-24', '2020-08-18', '中国', '动作/犯罪');
INSERT INTO `yiendata3` VALUES ('24', '姜子牙', '2020-10-01', '151319', '36.36', '1.36', '682630', '623', '66', '1336342.06', '1602983421.72', '2096401', '40288726', '361679051.53', '1036706399.81', '675027348.28', '1425171', '8.3', 'None', '7.8', '125023', '6.6', '姜子牙', 'https://images.entgroup.cn/group1/M00/06/F3/wKgASV853gOAOlYUAABM-njq0OI280.jpg', '2020-10-01', '2020-01-22', '中国', '动画/奇幻/冒险/动作');
INSERT INTO `yiendata3` VALUES ('25', '我在时间尽头等你', '2020-08-25', '150552', '50.19', '1.06', '684830', '660', '52', '327218.5', '504608479.92', '895291', '14327323', '278202526.11', '420187214.56', '70011778.8', '642546', '7.9', 'None', 'None', '21703', '5.3', '我在时间尽头等你', 'https://images.entgroup.cn/group2/M00/03/28/wKgAS18Y9LGASDYpAABfnHubW8I079.jpg', '2020-08-25', '2019-12-31', '中国', '爱情/奇幻/喜剧');
INSERT INTO `yiendata3` VALUES ('26', '扫毒2：天地对决', '2019-07-05', '148488', '39.09', '1.51', '682018', '1077', '4', '15546082.31', '1312886495.42', '2150000', '36289642', '134565600.0', '422974400.0', '422974400.0', '321000', '9.0', '109000', '8.7', '38649', '6.0', '扫毒2：天地对决', 'https://images.entgroup.cn/group2/M00/00/59/wKgAS1znzF6AaTyeAABndlsMgaM963.jpg', '2019-07-05', '2019-06-27', '中国香港/中国', '剧情/动作/犯罪/悬疑');
INSERT INTO `yiendata3` VALUES ('27', '急先锋', '2020-09-30', '148018', '46.2', '0.98', '683149', '624', '33', '1026743.59', '293809157.72', '888679', '7704615', '57091681.97', '176931333.92', '62641649.79', '292435', '8.3', 'None', '7.9', '21065', '4.4', '急先锋', 'https://images.entgroup.cn/group2/M00/03/F4/wKgASl9PEkaAVTU0AABvhJ-2fww599.jpg', '2020-09-30', '2020-01-22', '中国', '动作/冒险/喜剧');
INSERT INTO `yiendata3` VALUES ('28', '蚁人2：黄蜂女现身', '2018-08-24', '146996', '43.4', '1.47', '676247', '1392', '8', '10385619.32', '831556637.67', '1521935', '23065271', '154489228.13', '454624746.03', '454624746.03', '319327', '8.8', '287282', '8.7', '494435', '7.3', '蚁人2：黄蜂女现身', 'https://images.entgroup.cn/group1/M00/00/A7/wKgASVzny0iAIJqBAAB1xUmpbbU004.jpg', '2018-08-24', '2018-08-15', '美国/英国', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('29', '我不是药神', '2018-07-05', '146677', '49.26', '1.67', '676313', '1442', '10', '163810448.2', '3099961063.53', '3357586', '89042524', '159726446.41', '1172698253.71', '1012971807.3', '164738', '9.6', '437473', '9.4', '880893', '9.0', '我不是药神', 'https://images.entgroup.cn/group1/M00/00/A8/wKgASVzny1SAAagSAACIKvFmOFA557.jpg', '2018-07-05', '2018-06-25', '中国', '剧情/喜剧');
INSERT INTO `yiendata3` VALUES ('30', '后来的我们', '2018-04-28', '145813', '43.86', '1.77', '663327', '1510', '7', '353254.9', '1361525311.49', '1928387', '40159737', '285564309.59', '562392950.75', '562392950.75', '911022', '8.4', '880236', '7.8', '43604', '5.9', '后来的我们', 'https://images.entgroup.cn/group2/M00/00/67/wKgAS1znzraAL0IuAABdzkesyG4563.jpg', '2018-04-28', '2018-04-20', '中国', '爱情/剧情');
INSERT INTO `yiendata3` VALUES ('31', '西虹市首富', '2018-07-27', '143779', '45.09', '1.38', '671983', '1420', '4', '363078.0', '2547571742.78', '2594818', '72657663', '227136068.52', '903494241.69', '903494241.69', '339761', '9.2', '2569251', '9.0', '424831', '6.6', '西虹市首富', 'https://images.entgroup.cn/group2/M00/00/42/wKgASlznyK6AY_1SAABzXedgJUU849.jpg', '2018-07-27', '2018-07-20', '中国', '喜剧');
INSERT INTO `yiendata3` VALUES ('32', '碟中谍6：全面瓦解', '2018-08-31', '143761', '48.68', '1.55', '657756', '1385', '8', '10417357.97', '1245216802.0', '2283761', '33818068', '168232705.47', '520598289.35', '520598289.35', '242120', '9.1', '288483', '9.0', '527835', '8.1', '碟中谍6：全面瓦解', 'https://images.entgroup.cn/group2/M00/00/55/wKgASlzny6uAdjBOAABZ7sTmgzQ170.jpg', '2018-08-31', '2018-08-09', '美国', '动作/惊悚/冒险');
INSERT INTO `yiendata3` VALUES ('33', '长津湖之水门桥', '2022-02-01', '142790', '27.15', '1.63', '709649', '135', '4', '3600.0', '4066817587.54', '4194567', '82437039', '641449090.65', '2535396671.88', '981784928.14', '1155811', '9.6', '1197868', 'None', '27540', '7.2', '长津湖之水门桥', 'https://images.entgroup.cn/group1/M00/23/4A/wKgASWHfjF-ALlFFAACE8tC_bn0313.jpg', '2022-02-01', '2022-01-21', '中国', '战争/历史/主旋律');
INSERT INTO `yiendata3` VALUES ('34', '紧急救援', '2020-12-18', '141035', '44.17', '1.2', '673155', '545', '27', '15139800.56', '485241575.37', '1368668', '12569134', '69882571.44', '222136579.39', '222136579.39', '651545', '9.2', '1039667', '9.1', '64408', '5.9', '紧急救援', 'https://images.entgroup.cn/group1/M00/11/F4/wKgASV_NlYqAQRGPAABz6eZG_-g566.jpg', '2020-12-18', '2020-01-18', '中国', '剧情/灾难');
INSERT INTO `yiendata3` VALUES ('35', '死侍2：我爱我家', '2019-01-25', '140633', '39.29', '1.28', '657841', '1238', '3', '2445458.53', '286869908.57', '1134373', '8759797', '56721375.88', '150027754.49', '150027754.49', '129000', '7.5', '158000', '7.7', '180320', '7.3', '死侍2：我爱我家', 'https://images.entgroup.cn/group2/M00/00/6C/wKgAS1znz1CAfvSFAABnY3tQXOQ362.jpg', '2019-01-25', '2019-01-21', '美国', '动作/冒险/喜剧');
INSERT INTO `yiendata3` VALUES ('36', '我和我的家乡', '2020-10-01', '139876', '33.61', '1.09', '701620', '623', '7', '351835.0', '2828832552.47', '3934357', '72990974', '275119560.76', '1080558764.12', '805439203.36', '442858', '9.2', 'None', '9.2', '93776', '7.0', '我和我的家乡', 'https://images.entgroup.cn/group2/M00/03/79/wKgAS18017aAZEpVAAB3mxyz0N0065.jpg', '2020-10-01', '2020-09-23', '中国', '剧情/喜剧/主旋律');
INSERT INTO `yiendata3` VALUES ('37', '冰雪奇缘2', '2019-11-22', '139652', '35.91', '1.53', '676432', '937', '4', '1186890.04', '861560288.35', '2202743', '25032366', '74162149.37', '374763599.29', '374763599.29', '204361', '8.9', 'None', '8.8', '104838', '7.0', '冰雪奇缘2', 'https://images.entgroup.cn/group2/M00/02/93/wKgAS12lOvCAP93oAACEwKNAR90206.jpg', '2019-11-22', '2019-11-15', '美国', '动画/冒险/喜剧');
INSERT INTO `yiendata3` VALUES ('38', '捉妖记2', '2018-02-16', '138830', '35.67', '1.19', '656875', '1581', '6', '355.0', '2237154621.99', '1322843', '58389282', '546851800.66', '1204445922.67', '1204445922.67', '668983', '8.1', '876678', '7.8', '34951', '5.1', '捉妖记2', 'https://images.entgroup.cn/group1/M00/00/B9/wKgASVznzJyAKmOKAAB6-1UsYZ8911.jpg', '2018-02-16', '2018-01-17', '中国香港/中国', '喜剧/奇幻');
INSERT INTO `yiendata3` VALUES ('39', '阿丽塔：战斗天使', '2019-02-22', '138539', '39.03', '1.41', '306285', '1210', '6', '7141838.35', '897091440.33', '1735349', '23685881', '126150480.13', '429781012.29', '429781012.29', '172000', '9.0', '1835000', '8.8', '195214', '7.5', '阿丽塔：战斗天使', 'https://images.entgroup.cn/group2/M00/00/55/wKgAS1zny76AQ_AaAABZNiXgYkU855.jpg', '2019-02-22', '2019-02-02', '美国/加拿大/阿根廷', '动作/科幻/冒险');
INSERT INTO `yiendata3` VALUES ('40', '终结者：黑暗命运', '2019-11-01', '137011', '38.22', '0.82', '694522', '958', '6', '3767736.26', '355447545.02', '993008', '10696202', '63829265.53', '193925812.96', '193925812.96', '149017', '8.6', 'None', '8.5', '42081', '6.8', '终结者：黑暗命运', 'https://images.entgroup.cn/group1/M00/05/24/wKgASV2lYrKAIPsxAABlo9dA5FQ550.jpg', '2019-11-01', '2019-10-26', '美国', '动作/冒险/科幻');
INSERT INTO `yiendata3` VALUES ('41', '银河补习班', '2019-07-18', '136579', '41.42', '1.2', '682208', '1064', '15', '99061900.0', '878344827.87', '1548530', '25501627', '64712100.0', '334521600.0', '269809500.0', '222000', '9.4', '5580', '9.2', '71089', '6.2', '银河补习班', 'https://images.entgroup.cn/group2/M00/02/8B/wKgAS11Cg0qAGU72AABaJ5gQvpM578.jpg', '2019-07-18', '2019-07-02', '中国', '剧情/亲情/家庭');
INSERT INTO `yiendata3` VALUES ('42', '环太平洋2：雷霆再起', '2018-03-23', '135469', '44.58', '1.53', '657865', '1546', '3', '8786008.66', '633223366.83', '1335480', '17870063', '136243258.11', '402790415.37', '402790415.37', '337907', '7.6', '341414', '7.8', '34304', '5.4', '环太平洋2：雷霆再起', 'https://images.entgroup.cn/group2/M00/00/74/wKgAS1zn0NiAYXFLAABonqjo6RA157.jpg', '2018-03-23', '2018-03-16', '美国', '科幻/冒险/动作');
INSERT INTO `yiendata3` VALUES ('43', '你的婚礼', '2021-04-30', '135234', '37.81', '1.82', '698843', '412', '6', '46172.0', '789259892.61', '1400271', '20998030', '141955983.56', '424910982.54', '424910982.54', '1111703', '7.9', '506996', 'None', '29612', '4.6', '你的婚礼', 'https://images.entgroup.cn/group1/M00/16/F6/wKgASWBv8miAf0VqAABYutefOqU995.jpg', '2021-04-30', '2021-04-23', '中国', '爱情/青春');
INSERT INTO `yiendata3` VALUES ('44', '1921', '2021-07-01', '134875', '39.11', '1.79', '701782', '350', '8', '74989173.6', '503888555.6', '1772323', '14442653', '81641680.51', '220718772.37', '139077091.86', '426793', '9.4', '245218', 'None', 'None', '6.7', '1921', 'https://images.entgroup.cn/group1/M00/17/67/wKgASWB9AV-ALaURAABu_HtZ0Tc198.jpg', '2021-07-01', '2021-06-21', '中国', '剧情/历史/主旋律');
INSERT INTO `yiendata3` VALUES ('45', '我要我们在一起', '2021-05-20', '133962', '33.35', '1.3', '692062', '392', '6', '252855.45', '381625120.99', '1600253', '10493091', '99796562.88', '196799482.2', '97002919.32', '403547', '8.1', '220043', 'None', '27885', '6.0', '我要我们在一起', 'https://images.entgroup.cn/group1/M00/18/21/wKgASWB-6PmAWRzKAABOWOqxPyM617.jpg', '2021-05-20', '2021-05-12', '中国', '爱情/剧情');
INSERT INTO `yiendata3` VALUES ('46', '蜘蛛侠：英雄归来', '2017-09-08', '132433', '51.59', '1.54', '657831', '1742', '4', '9892333.69', '774140574.32', '1413550', '22017539', '134542831.95', '452540434.18', '452540434.18', '474792', '8.1', '650435', '8.3', '66235', '7.3', '蜘蛛侠：英雄归来', 'https://images.entgroup.cn/group1/M00/00/D4/wKgASVznzu2AAwpAAAByTnuRZjU081.jpg', '2017-09-08', '2017-08-31', '美国', '动作/科幻/冒险/奇幻');
INSERT INTO `yiendata3` VALUES ('47', '沐浴之王', '2020-12-11', '131846', '35.38', '1.49', '698915', '552', '5', '3299859.95', '404716886.03', '1249765', '11819771', '47691426.34', '185225730.34', '185225730.34', '91202', '8.8', '165549', '8.6', '25960', '6.0', '沐浴之王', 'https://images.entgroup.cn/group1/M00/12/10/wKgASV_QOWaAB6rkAABw_eznNOA562.jpg', '2020-12-11', '2020-12-05', '中国', '喜剧/动作');
INSERT INTO `yiendata3` VALUES ('48', '八佰', '2020-08-21', '131835', '56.9', '1.54', '669412', '664', '9', '233131141.39', '3102323734.38', '4092163', '80919908', '140902260.32', '577427167.96', '577427167.96', '518898', '9.2', 'None', 'None', '148325', '7.5', '八佰', 'https://images.entgroup.cn/group1/M00/06/76/wKgASV8naXmAbQuEAABGZEs2NKg717.jpg', '2020-08-21', '2020-08-12', '中国', '战争/历史');
INSERT INTO `yiendata3` VALUES ('49', '加勒比海盗5：死无对证', '2017-05-26', '131715', '57.66', '1.48', '659751', '1847', '5', '14589637.87', '1179909693.74', '1502756', '32945551', '133209682.87', '454209871.66', '454209871.66', '518761', '8.9', '310975', '8.8', '37037', '7.3', '加勒比海盗5：死无对证', 'https://images.entgroup.cn/group1/M00/00/C9/wKgASVznzf6AXS3MAAB-jMld3vs202.jpg', '2017-05-26', '2017-05-13', '美国', '动作/奇幻/冒险');
INSERT INTO `yiendata3` VALUES ('50', 'X战警：黑凤凰', '2019-06-06', '131458', '37.17', '1.14', '666504', '1106', '17', '7889706.3', '409374624.76', '974554', '11017284', '80196063.65', '301046149.69', '220850086.04', '307000', '7.8', 'None', '7.7', '79062', '5.8', 'X战警：黑凤凰', 'https://images.entgroup.cn/group1/M00/00/9F/wKgASVznyo2AElViAABsIc-gRxU592.jpg', '2019-06-06', '2019-05-04', '美国', '动作/冒险/科幻');

SET FOREIGN_KEY_CHECKS = 1;