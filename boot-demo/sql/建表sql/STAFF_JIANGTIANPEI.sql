/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : db_test

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 22/02/2024 09:59:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for STAFF_JIANGTIANPEI
-- ----------------------------
DROP TABLE IF EXISTS `STAFF_JIANGTIANPEI`;
CREATE TABLE `STAFF_JIANGTIANPEI` (
  `ID` int NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `DEPT_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `staff_jiangtianpei_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPT_JIANGTIANPEI` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of STAFF_JIANGTIANPEI
-- ----------------------------
BEGIN;
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (1, '张三', 1);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (2, '李四', 2);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (3, '王五', 3);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (4, '赵六', 4);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (5, '孙七', 5);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (6, '周八', 6);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (7, '吴九', 7);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (8, '郑十', 8);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (9, '冯十一', 9);
INSERT INTO `STAFF_JIANGTIANPEI` (`ID`, `NAME`, `DEPT_ID`) VALUES (10, '陈十二', 10);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
