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

 Date: 22/02/2024 09:59:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for DEPT_JIANGTIANPEI
-- ----------------------------
DROP TABLE IF EXISTS `DEPT_JIANGTIANPEI`;
CREATE TABLE `DEPT_JIANGTIANPEI` (
  `ID` int NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `PARENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of DEPT_JIANGTIANPEI
-- ----------------------------
BEGIN;
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (1, '管理部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (2, '研发部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (3, '人事部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (4, '财务部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (5, '市场部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (6, '销售部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (7, '客户服务部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (8, 'IT支持部', NULL);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (9, '产品部', 2);
INSERT INTO `DEPT_JIANGTIANPEI` (`ID`, `NAME`, `PARENT_ID`) VALUES (10, '测试部', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
