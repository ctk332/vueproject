/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50529
 Source Host           : localhost:3306
 Source Schema         : ad_platform

 Target Server Type    : MySQL
 Target Server Version : 50529
 File Encoding         : 65001

 Date: 16/02/2023 15:42:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_menu
-- ----------------------------
DROP TABLE IF EXISTS `ad_menu`;
CREATE TABLE `ad_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件对应路径',
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父级菜单id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问url',
  `is_home` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '1默认首页 0 不是首页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ad_menu
-- ----------------------------
INSERT INTO `ad_menu` VALUES (1, '添加产品', 'product/index', 1606209619, 1606209619, NULL, 0, 'product', '1');
INSERT INTO `ad_menu` VALUES (2, '菜单管理', 'system/menu/menuList', 1606209619, 1606209619, NULL, 0, 'menuList', '1');

-- ----------------------------
-- Table structure for ad_product
-- ----------------------------
DROP TABLE IF EXISTS `ad_product`;
CREATE TABLE `ad_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ad_product
-- ----------------------------
INSERT INTO `ad_product` VALUES (1, '空军白低邦', '整体总结：通货，优点是价格低，适合跑量，平台退货率15%左右', '空军一号321', NULL, NULL, 'http://192.168.10.109:12580\\prdunctImg\\20210726171705.jpg;', '1');
INSERT INTO `ad_product` VALUES (2, '伦敦三代经典款', '整体总结：通货品质，价格低，适合跑量，平台退货率10%左右', '伦敦三代', NULL, NULL, NULL, '1');
INSERT INTO `ad_product` VALUES (3, '贝克头系列', '整体总结：通货品质，价格低，适合跑量，平台退货率10%左右', '贝壳头', NULL, NULL, NULL, '1');
INSERT INTO `ad_product` VALUES (4, '321', '321', '321', 1625989935, 1625989936, '', '1');
INSERT INTO `ad_product` VALUES (5, '321', '321', '321', 1625990329, 1625990329, '', '1');
INSERT INTO `ad_product` VALUES (6, '213', '32131', '3213', 1625991784, 1625991784, 'http://192.168.10.105:12580\\prdunctImg\\20210711162301.jpg;', '1');
INSERT INTO `ad_product` VALUES (7, '213', '32131', '3213', 1626262904, 1626262904, 'http://192.168.10.105:12580\\prdunctImg\\20210711162301.jpg;http://192.168.10.105:12580\\prdunctImg\\20210714194141.jpg;', '1');
INSERT INTO `ad_product` VALUES (8, '213', '32131', '3213', 1627287649, 1627287649, 'http://192.168.10.105:12580\\prdunctImg\\20210711162301.jpg;http://192.168.10.105:12580\\prdunctImg\\20210714194141.jpg;http://192.168.10.109:12580\\prdunctImg\\20210726162046.jpg;', '1');

-- ----------------------------
-- Table structure for ad_user
-- ----------------------------
DROP TABLE IF EXISTS `ad_user`;
CREATE TABLE `ad_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` int(11) NULL DEFAULT 0 COMMENT '角色',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `site_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分销网址',
  `company_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近登录ip',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父类Id',
  `delete_time` int(11) NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agent` int(11) NULL DEFAULT NULL COMMENT '0不显示，1显示',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ad_user
-- ----------------------------
INSERT INTO `ad_user` VALUES (1, 'admin', '123456', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
