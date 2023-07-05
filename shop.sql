/*
 Navicat Premium Data Transfer

 Source Server         : 110.41.149.70
 Source Server Type    : MySQL
 Source Server Version : 80026 (8.0.26)
 Source Host           : 110.41.149.70:7707
 Source Schema         : homeecms

 Target Server Type    : MySQL
 Target Server Version : 80026 (8.0.26)
 File Encoding         : 65001

 Date: 05/07/2023 21:46:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address`  (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES (10, 4, '丘展鹏', '+8613076292757', '仲恺学生公寓');

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart`  (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_price` int NULL DEFAULT NULL,
  `product_quantity` int NULL DEFAULT NULL,
  `product_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES (11, 1, 4, '冰红茶', 4, 2, '0', '11.jpg');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_parentid` int NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5556 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '优选食品', 0);
INSERT INTO `tb_category` VALUES (2, '数码产品', 0);
INSERT INTO `tb_category` VALUES (3, '精品服装', 0);
INSERT INTO `tb_category` VALUES (4, '美妆保养', 0);
INSERT INTO `tb_category` VALUES (5, '百货家具', 0);
INSERT INTO `tb_category` VALUES (11, '酒水饮料', 1);
INSERT INTO `tb_category` VALUES (12, '冷冻即食', 1);
INSERT INTO `tb_category` VALUES (13, '水果生鲜', 1);
INSERT INTO `tb_category` VALUES (14, '休闲零食', 1);
INSERT INTO `tb_category` VALUES (21, '智能手机', 2);
INSERT INTO `tb_category` VALUES (22, '专业相机', 2);
INSERT INTO `tb_category` VALUES (23, '甄选电脑', 2);
INSERT INTO `tb_category` VALUES (24, '网络设备', 2);
INSERT INTO `tb_category` VALUES (31, '潮流男装', 3);
INSERT INTO `tb_category` VALUES (32, '韵味女装', 3);
INSERT INTO `tb_category` VALUES (33, '防寒大衣', 3);
INSERT INTO `tb_category` VALUES (34, '特色服装', 3);
INSERT INTO `tb_category` VALUES (41, '男士护理', 4);
INSERT INTO `tb_category` VALUES (42, '女士彩妆', 4);
INSERT INTO `tb_category` VALUES (43, '身体洗护', 4);
INSERT INTO `tb_category` VALUES (44, '美容仪器', 4);
INSERT INTO `tb_category` VALUES (51, '日用百货', 5);
INSERT INTO `tb_category` VALUES (52, '厨房烹饪', 5);
INSERT INTO `tb_category` VALUES (53, '花卉园艺', 5);
INSERT INTO `tb_category` VALUES (54, '图书乐器', 5);

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `comment_time` datetime NULL DEFAULT NULL,
  `comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (1, 3, 1, '2023-06-26 16:56:19', '测试评论');
INSERT INTO `tb_comment` VALUES (2, 3, 2, '2023-07-05 16:27:20', '测试评论');
INSERT INTO `tb_comment` VALUES (3, 3, 3, '2023-07-05 16:30:02', '测试评论');
INSERT INTO `tb_comment` VALUES (4, 3, 4, '2023-07-05 16:30:03', '测试评论');
INSERT INTO `tb_comment` VALUES (5, 3, 5, '2023-07-05 16:30:03', '测试评论');
INSERT INTO `tb_comment` VALUES (6, 3, 6, '2023-07-05 16:30:04', '测试评论');
INSERT INTO `tb_comment` VALUES (7, 3, 7, '2023-07-05 16:30:04', '测试评论');
INSERT INTO `tb_comment` VALUES (8, 3, 8, '2023-07-05 16:30:05', '测试评论');
INSERT INTO `tb_comment` VALUES (9, 3, 9, '2023-07-05 16:30:06', '测试评论');
INSERT INTO `tb_comment` VALUES (10, 3, 10, '2023-07-05 16:30:06', '测试评论');
INSERT INTO `tb_comment` VALUES (11, 3, 11, '2023-07-05 16:30:07', '测试评论');
INSERT INTO `tb_comment` VALUES (12, 3, 12, '2023-07-05 16:30:07', '测试评论');
INSERT INTO `tb_comment` VALUES (13, 3, 13, '2023-07-05 16:30:08', '测试评论');
INSERT INTO `tb_comment` VALUES (14, 3, 14, '2023-07-05 16:30:08', '测试评论');
INSERT INTO `tb_comment` VALUES (15, 3, 15, '2023-07-05 16:30:10', '测试评论');
INSERT INTO `tb_comment` VALUES (16, 3, 16, '2023-07-05 16:30:11', '测试评论');
INSERT INTO `tb_comment` VALUES (17, 3, 17, '2023-07-05 16:30:12', '测试评论');
INSERT INTO `tb_comment` VALUES (18, 3, 18, '2023-07-05 16:30:12', '测试评论');
INSERT INTO `tb_comment` VALUES (19, 3, 19, '2023-07-05 16:30:13', '测试评论');
INSERT INTO `tb_comment` VALUES (20, 3, 20, '2023-07-05 16:30:13', '测试评论');

-- ----------------------------
-- Table structure for tb_notify
-- ----------------------------
DROP TABLE IF EXISTS `tb_notify`;
CREATE TABLE `tb_notify`  (
  `notify_id` int NOT NULL AUTO_INCREMENT,
  `notify_time` datetime NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `notify_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_notify
-- ----------------------------
INSERT INTO `tb_notify` VALUES (1, '2023-07-05 15:14:48', 1, '测试公告');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `order_price` int NULL DEFAULT NULL,
  `order_time` datetime NULL DEFAULT NULL,
  `is_pay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_ship` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_receipt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_id` int NULL DEFAULT 0,
  `product_id` int NULL DEFAULT NULL,
  `product_quantity` int NULL DEFAULT NULL,
  `product_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_price` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (86, '16885462972824', 4, 199, '2023-07-05 16:38:17', '1', '1', '0', 10, 10, 1, '连衣裙', '32.jpg', 199);

-- ----------------------------
-- Table structure for tb_orderlist
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderlist`;
CREATE TABLE `tb_orderlist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `product_quantity` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_orderlist
-- ----------------------------

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_info` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_price` int NULL DEFAULT NULL,
  `product_stock` int NULL DEFAULT NULL,
  `product_fid` int NULL DEFAULT NULL,
  `product_cid` int NULL DEFAULT NULL,
  `product_photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `product_sales` int NULL DEFAULT 0,
  `product_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES (1, '冰红茶', '康师傅冰红茶', 4, 500, 1, 11, '11.jpg', '0', 12, '2023-07-05 15:00:03');
INSERT INTO `tb_product` VALUES (2, '速冻饺子', '三全速冻饺子', 21, 200, 1, 12, '12.jpg', '0', 5, '2023-07-04 15:16:51');
INSERT INTO `tb_product` VALUES (3, '精品脐橙', '内陆精品脐橙', 32, 100, 1, 13, '13.jpg', '0', 41, '2023-07-03 15:16:58');
INSERT INTO `tb_product` VALUES (4, '卫龙辣条', '卫龙小面筋', 2, 300, 1, 14, '14.jpg', '0', 13, '2023-07-02 15:19:40');
INSERT INTO `tb_product` VALUES (5, '红米K60', '红米K60智能手机', 2599, 250, 1, 21, '21.jpg', '0', 32, '2023-07-01 15:21:18');
INSERT INTO `tb_product` VALUES (6, '索尼相机', '索尼Alpha 7 Ⅲ', 13499, 100, 1, 22, '22.jpg', '0', 54, '2023-07-01 15:21:48');
INSERT INTO `tb_product` VALUES (7, '拯救者电脑', '拯救者Y9000P 2023', 8399, 120, 1, 23, '23.jpg', '0', 7, '2023-07-01 15:25:29');
INSERT INTO `tb_product` VALUES (8, '荣耀路由器', '荣耀路由4 Pro', 799, 210, 1, 24, '24.jpg', '0', 2, '2023-07-01 15:27:10');
INSERT INTO `tb_product` VALUES (9, '男士T恤', '七匹狼男士T恤', 149, 305, 1, 31, '31.jpg', '0', 38, '2023-07-01 15:28:20');
INSERT INTO `tb_product` VALUES (10, '连衣裙', '森马连衣裙', 199, 521, 1, 32, '32.jpg', '0', 68, '2023-07-01 15:31:19');
INSERT INTO `tb_product` VALUES (11, '防寒大衣', '防寒 军大衣', 221, 534, 1, 33, '33.jpg', '0', 51, '2023-07-01 15:35:39');
INSERT INTO `tb_product` VALUES (12, '汉服', '卡辑汉服女', 278, 562, 1, 34, '34.jpg', '0', 25, '2023-07-01 15:35:43');
INSERT INTO `tb_product` VALUES (13, '男士洗面奶', '妮维雅男士洗面奶', 40, 654, 1, 41, '41.jpg', '0', 43, '2023-07-01 15:35:48');
INSERT INTO `tb_product` VALUES (14, 'MAC口红', '魅可316口红', 210, 478, 1, 42, '42.jpg', '0', 57, '2023-07-01 15:35:51');
INSERT INTO `tb_product` VALUES (15, '舒肤佳沐浴露', '舒肤佳红石榴沐浴露', 33, 215, 1, 43, '43.jpg', '0', 52, '2023-07-01 15:35:54');
INSERT INTO `tb_product` VALUES (16, '美容仪', 'AMIRO美容仪', 2899, 689, 1, 44, '44.jpg', '0', 23, '2023-07-01 15:35:57');
INSERT INTO `tb_product` VALUES (17, '维达纸巾', '维达抽纸24包', 63, 976, 1, 51, '51.jpg', '0', 67, '2023-07-01 15:35:59');
INSERT INTO `tb_product` VALUES (18, '张小泉菜刀', '张小泉菜刀N5472', 45, 654, 1, 52, '52.jpg', '0', 64, '2023-07-01 15:36:01');
INSERT INTO `tb_product` VALUES (19, '园艺水枪', '绿族园艺水枪', 29, 893, 1, 53, '53.jpg', '0', 32, '2023-07-01 15:36:03');
INSERT INTO `tb_product` VALUES (20, '钢琴', '卡罗德钢琴', 17899, 10, 1, 54, '54.jpg', '0', 16, '2023-07-01 15:36:06');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未知昵称',
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_vip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_viptime` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_photo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.jpg',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', '管理员', 'admin', '女', '0', '0', '2', '1.jpg');
INSERT INTO `tb_user` VALUES (2, 'admin2', 'admin2', 'admin2', '男', '0', '0', '2', '2.jpg');
INSERT INTO `tb_user` VALUES (3, 'test', '注水账号', '000000', '男', '0', '0', '1', '16.jpg');
INSERT INTO `tb_user` VALUES (4, '1', '1', '11', '女', '0', '0', '1', '17.jpg');

SET FOREIGN_KEY_CHECKS = 1;
