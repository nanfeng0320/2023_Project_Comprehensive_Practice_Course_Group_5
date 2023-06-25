/*
 Navicat Premium Data Transfer

 Source Server         : test00
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : django_ccos

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 25/06/2023 12:21:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `room` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '净月校区', '冬华公寓', 'B120');
INSERT INTO `address` VALUES (2, '净月校区', '冬华公寓', 'B321');
INSERT INTO `address` VALUES (3, '净月校区', '星华公寓', 'A430');
INSERT INTO `address` VALUES (4, '净月校区', '星华公寓', 'A430');
INSERT INTO `address` VALUES (5, '净月校区', '星华公寓', 'B321');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 食堂信息', 7, 'add_canteen');
INSERT INTO `auth_permission` VALUES (26, 'Can change 食堂信息', 7, 'change_canteen');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 食堂信息', 7, 'delete_canteen');
INSERT INTO `auth_permission` VALUES (28, 'Can view 食堂信息', 7, 'view_canteen');
INSERT INTO `auth_permission` VALUES (29, 'Can add 窗口经营者信息', 8, 'add_shopmanager');
INSERT INTO `auth_permission` VALUES (30, 'Can change 窗口经营者信息', 8, 'change_shopmanager');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 窗口经营者信息', 8, 'delete_shopmanager');
INSERT INTO `auth_permission` VALUES (32, 'Can view 窗口经营者信息', 8, 'view_shopmanager');
INSERT INTO `auth_permission` VALUES (33, 'Can add 窗口信息', 9, 'add_shop');
INSERT INTO `auth_permission` VALUES (34, 'Can change 窗口信息', 9, 'change_shop');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 窗口信息', 9, 'delete_shop');
INSERT INTO `auth_permission` VALUES (36, 'Can view 窗口信息', 9, 'view_shop');
INSERT INTO `auth_permission` VALUES (37, 'Can add 地址信息', 10, 'add_address');
INSERT INTO `auth_permission` VALUES (38, 'Can change 地址信息', 10, 'change_address');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 地址信息', 10, 'delete_address');
INSERT INTO `auth_permission` VALUES (40, 'Can view 地址信息', 10, 'view_address');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户信息', 11, 'add_customer');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户信息', 11, 'change_customer');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户信息', 11, 'delete_customer');
INSERT INTO `auth_permission` VALUES (44, 'Can view 用户信息', 11, 'view_customer');
INSERT INTO `auth_permission` VALUES (45, 'Can add 菜品信息', 12, 'add_dish');
INSERT INTO `auth_permission` VALUES (46, 'Can change 菜品信息', 12, 'change_dish');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 菜品信息', 12, 'delete_dish');
INSERT INTO `auth_permission` VALUES (48, 'Can view 菜品信息', 12, 'view_dish');
INSERT INTO `auth_permission` VALUES (49, 'Can add 订单信息', 13, 'add_orders');
INSERT INTO `auth_permission` VALUES (50, 'Can change 订单信息', 13, 'change_orders');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 订单信息', 13, 'delete_orders');
INSERT INTO `auth_permission` VALUES (52, 'Can view 订单信息', 13, 'view_orders');
INSERT INTO `auth_permission` VALUES (53, 'Can add 评价信息', 14, 'add_comments');
INSERT INTO `auth_permission` VALUES (54, 'Can change 评价信息', 14, 'change_comments');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 评价信息', 14, 'delete_comments');
INSERT INTO `auth_permission` VALUES (56, 'Can view 评价信息', 14, 'view_comments');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (0, 'pbkdf2_sha256$260000$9tO2KWoeFr52euWFERjU7T$B/J+jafahnCu2k1yOJV84DsMuxDwbbjZ5KE+glC3VNs=', '2023-03-17 23:54:08.000000', 0, 'zhangsan', 'zhang', 'san', '0123456789@qq.com', 0, 1, '2023-03-07 14:52:00.000000');
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$260000$xArKT0vvgka61mA7ayyjHZ$0M8briP0O50cHTsFSus+p0ncAnVenjxEErMd0BQ6Cvg=', '2023-03-07 14:58:00.000000', 1, 'nanfeng', 'nan', 'feng', '2650958045@qq.com', 1, 1, '2023-03-07 14:40:00.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$260000$oKctadaf0a8eeg76ffegDFce$f0f2fbgkl7KfetnvawrEDft+fqamngrehekSdFegrgh3egni=', '2023-04-02 23:49:37.000000', 0, 'zhaoliu', 'zhao', 'liu', 'zhaoliu@pku.edu.cn', 0, 1, '2023-04-04 23:50:16.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$260000$vPy0nnAdIy5Genk5oORKHU$C0JilUsSrwvzIO52tjRm7HM+OkDOpmVnr6Qrdvbxh7U=', '2023-06-19 02:15:40.481747', 1, 'nanfeng0320', 'nan', 'feng0320', 'slsong@nenu.edu.cn', 1, 1, '2023-03-20 06:23:30.135478');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen`  (
  `canteen_id` int(11) NOT NULL AUTO_INCREMENT,
  `canteen_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `canteen_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sanitation_level` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `canteen_active` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`canteen_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canteen
-- ----------------------------
INSERT INTO `canteen` VALUES (0, '一食堂', 'images/canteen/canteen_0.jpg', 'A', '营业中');
INSERT INTO `canteen` VALUES (1, '二食堂', 'images/canteen/canteen_1.jpg', 'B', '营业中');
INSERT INTO `canteen` VALUES (4, '三食堂', 'images/canteen/canteen3_vkxHSxB.jpg', 'B', '歇业中');
INSERT INTO `canteen` VALUES (6, '四食堂', 'images/canteen/sishitang.jpg', 'B', '歇业中');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_score` smallint(6) NOT NULL,
  `comment_detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `comments_order_id_72ad9f82_fk_orders_order_id`(`order_id`) USING BTREE,
  CONSTRAINT `comments_order_id_72ad9f82_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 5, '满意', '2023-04-17 01:28:23.311729', 2);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `customer_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `customer_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `customer_status` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE,
  INDEX `customer_address_id_e405cf96_fk_address_address_id`(`address_id`) USING BTREE,
  CONSTRAINT `customer_address_id_e405cf96_fk_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (0, 'zhangsan', 'zs87259999', '15946981236', 0, '2023-03-07 14:56:50.771119', NULL);
INSERT INTO `customer` VALUES (3, 'lisi', 'ls87259999', '17856493281', 0, '2023-03-23 13:02:06.743637', NULL);
INSERT INTO `customer` VALUES (4, 'wangwu', 'ww87259999', '18756812493', 1, '2023-03-23 13:07:55.044428', NULL);
INSERT INTO `customer` VALUES (5, 'wuhan', 'wh87259999', '17456814792', 1, '2023-04-02 15:06:48.443614', NULL);
INSERT INTO `customer` VALUES (6, 'sunchen', 'sc87259999', '16542397056', 0, '2023-04-09 13:05:36.986986', NULL);

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `dish_id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dish_detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dish_price` decimal(5, 2) NOT NULL,
  `dish_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dish_active` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`dish_id`) USING BTREE,
  INDEX `dish_shop_id_5adbea4c_fk_shop_shop_id`(`shop_id`) USING BTREE,
  CONSTRAINT `dish_shop_id_5adbea4c_fk_shop_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, '五爷招牌热汤牛肉面', '牛肉面', 16.00, 'images/dish/niuroumian.jpg', 1, 1);
INSERT INTO `dish` VALUES (2, '沙拉鸡排饭', '脆皮鸡块，沙拉酱', 16.00, 'images/dish/2.jpg', 1, 2);
INSERT INTO `dish` VALUES (3, '中份蒸饺', '蒸饺', 8.00, 'images/dish/蒸饺.jpg', 1, 3);
INSERT INTO `dish` VALUES (4, '蜜汁烤肉拌饭', '蜜汁烤肉拌饭', 12.00, 'images/dish/mizhikaoroubanfan.jpg', 1, 2);
INSERT INTO `dish` VALUES (5, '孜然烤肉拌饭', '孜然烤肉拌饭', 12.00, 'images/dish/zirankaoroubanfan.jpg', 1, 2);
INSERT INTO `dish` VALUES (6, '田园蔬菜面', '田园蔬菜面', 10.00, 'images/dish/tianyuanshucaimian.jpg', 1, 1);
INSERT INTO `dish` VALUES (7, '高汤杂菌面', '高汤杂菌面', 12.00, 'images/dish/gaotangzajunmian.jpg', 1, 1);
INSERT INTO `dish` VALUES (8, '猪肉玉米水饺', '猪肉玉米水饺', 12.00, 'images/dish/zhurouyumi.jpg', 1, 3);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2023-03-07 14:53:00.040081', '2', 'zhangsan', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (2, '2023-03-07 14:53:27.919454', '2', 'zhangsan', 2, '[]', 4, 1);
INSERT INTO `django_admin_log` VALUES (3, '2023-03-08 09:11:39.993963', '1', '二食堂', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2023-03-08 09:12:49.269077', '2', '一食堂', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2023-03-20 06:25:42.756886', '1', 'nanfeng', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (6, '2023-03-20 06:26:00.075163', '0', 'zhangsan', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 3);
INSERT INTO `django_admin_log` VALUES (7, '2023-03-23 12:53:26.264845', '1', '张大叔', 1, '[{\"added\": {}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (8, '2023-03-23 12:59:52.453111', '1', '五爷拌面', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (9, '2023-03-23 13:13:01.145828', '1', '五爷招牌热汤牛肉面', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (10, '2023-04-17 01:06:42.629749', '3', '三食堂', 1, '[{\"added\": {}}]', 7, 3);
INSERT INTO `django_admin_log` VALUES (11, '2023-04-17 01:08:42.470847', '3', '三食堂', 3, '', 7, 3);
INSERT INTO `django_admin_log` VALUES (12, '2023-04-17 01:09:53.606631', '4', '三食堂', 1, '[{\"added\": {}}]', 7, 3);
INSERT INTO `django_admin_log` VALUES (13, '2023-04-17 01:11:18.069520', '2', '王大妈', 1, '[{\"added\": {}}]', 8, 3);
INSERT INTO `django_admin_log` VALUES (14, '2023-04-17 01:26:45.963894', '2', '烤肉拌饭', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (15, '2023-04-17 01:27:40.625907', '2', '沙拉鸡排饭', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (16, '2023-04-17 01:28:23.313273', '1', '1', 1, '[{\"added\": {}}]', 14, 3);
INSERT INTO `django_admin_log` VALUES (17, '2023-04-17 01:34:45.316206', '3', '中华饺子馆', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (18, '2023-04-17 01:35:33.369855', '3', '中份蒸饺', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (19, '2023-04-24 00:34:11.670218', '4', '蜜汁烤肉拌饭', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (20, '2023-04-24 00:34:43.574815', '5', '孜然烤肉拌饭', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (21, '2023-04-24 00:37:10.442866', '6', '田园蔬菜面', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (22, '2023-04-24 00:38:02.639188', '7', '高汤杂菌面', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (23, '2023-04-24 00:41:07.150614', '8', '猪肉玉米水饺', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (24, '2023-04-24 00:41:57.023205', '9', '小份蒸饺', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (25, '2023-05-21 12:40:48.460678', '5', '四食堂', 1, '[{\"added\": {}}]', 7, 3);
INSERT INTO `django_admin_log` VALUES (26, '2023-05-21 12:42:16.261495', '5', '四食堂', 3, '', 7, 3);
INSERT INTO `django_admin_log` VALUES (27, '2023-06-19 02:19:04.536698', '10', '羊肉泡馍', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (28, '2023-06-19 02:20:06.562824', '10', '羊肉泡馍', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (29, '2023-06-19 02:20:52.181174', '11', '羊肉泡馍', 1, '[{\"added\": {}}]', 12, 3);
INSERT INTO `django_admin_log` VALUES (30, '2023-06-19 02:21:44.607287', '11', '羊肉泡馍', 3, '', 12, 3);
INSERT INTO `django_admin_log` VALUES (31, '2023-06-19 02:32:20.342919', '6', '四食堂', 1, '[{\"added\": {}}]', 7, 3);
INSERT INTO `django_admin_log` VALUES (32, '2023-06-19 03:08:23.494679', '9', '小份蒸饺', 3, '', 12, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (7, 'canteen', 'canteen');
INSERT INTO `django_content_type` VALUES (9, 'canteen', 'shop');
INSERT INTO `django_content_type` VALUES (8, 'canteen', 'shopmanager');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'customer', 'address');
INSERT INTO `django_content_type` VALUES (11, 'customer', 'customer');
INSERT INTO `django_content_type` VALUES (14, 'dish', 'comments');
INSERT INTO `django_content_type` VALUES (12, 'dish', 'dish');
INSERT INTO `django_content_type` VALUES (13, 'dish', 'orders');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-03-07 14:34:16.487367');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-03-07 14:34:17.002992');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-03-07 14:34:17.127991');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-03-07 14:34:17.127991');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-07 14:34:17.143614');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-03-07 14:34:17.221739');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-03-07 14:34:17.268641');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-03-07 14:34:17.299907');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-03-07 14:34:17.315490');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-03-07 14:34:17.362952');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-03-07 14:34:17.362952');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-07 14:34:17.362952');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-03-07 14:34:17.425929');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-07 14:34:17.488454');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-03-07 14:34:17.504079');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-03-07 14:34:17.519705');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-07 14:34:17.582178');
INSERT INTO `django_migrations` VALUES (18, 'canteen', '0001_initial', '2023-03-07 14:34:17.754052');
INSERT INTO `django_migrations` VALUES (19, 'customer', '0001_initial', '2023-03-07 14:34:17.847802');
INSERT INTO `django_migrations` VALUES (20, 'dish', '0001_initial', '2023-03-07 14:34:18.191591');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2023-03-07 14:34:18.238467');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('c9yol7os5b0hdwdosocd39pcu254l3l6', '.eJzFlk1zmzAQhv9KhrM_BBJI5Nh7jz2VjEeWFkNqoCPBKeP_XmSc1FZkIMA4F8ujXb_s-6y86M3b8abOdo0Gtcul9-xhb3W9t-fiD5QmIF95eag2oiprle83JmVzierNz0rC8ccl90Yg4zprfx3FDPOIcRYgEgShEDKmIgqAIUok4jFAmgZYxnHIIY0QQRRHgobURyRMCWdGtICy0a3W77fEK3kBiff8lHhJ0jAsRbuERPiJt2r38rbKLppy9ZTytciVOEIXLEyt2oR7hZKGpGCWCEXpCNlGHbvYlssiL7cy11n30cW5lL_uprTBS9peAZdCNcV-uMT-ok6rp6X8nV5MGHJpoj5CgUt7zwOjjcNwGXaVkqD0AL1L0qP4TfRo88NObUGMKKR0GX6iKtp_TD1E8CPtYQyn-bQZEnvDdzeMdM_0zwUzU3eEGTMLJfjzM7V5ps5yOMo1P9aDI4OGwVkswPSOATMG3W0yU3Jrwvdb9D_lC-2Zb9qBcqxRuy2RSwvaM-CuwojotagOPcgOqmr-DjDrcr4d2iijNjJqb4QO6ZhRMJWakTTrpRdSjM4LQbMHj2h0XRXdaVWge2bPp8zxrRrv3IFtqlu7JfHAX2Qxkh9fhlFeM30Ey6l-LZY-suEy53mXqamUoZnnnfKYnl_igOd3iZc1QLnVWdUzkG6yvtKbsY5dvZno0u6N66p3q93OOFMmI4G5FLF2Wi2KteAlP_Qef0fyt0CeCcIm77okXle7FOT3dRDw-_oguFO92hzti6Lvn1680z-XDqlz:1qB5FN:I5aP2cXWSfv_TMmhbRMSO8Oz5-YhbvrEgBr9AnIk2sk', '2023-07-03 03:08:05.516484');
INSERT INTO `django_session` VALUES ('dzb76omrsx5ngbrab42duox079mwnemc', '.eJzFl01zmzAQhv-Kh7M_EAgQOfbeY08l4xHSYmj56Ehwacb_vZJxXFuRgRjGuSBGu7zsPisW6c3Z067N950EsS-48-IgZ309l1L2G2pt4L9ofWi2rKlbUaRb7bI9W-X2e8Oh_Hb2vRHIqczV0x5jGGHXw2HKYkY58IBCmGWpm2ael9HIp8SnaUgg4yQjkOIgiDG4KIwCxCho0QrqTiqtn2-JU9MKEudllThJ0hGfMzUEmKHEWau5QkXZWzMqVhndsEKwEnpjpWOV2jwolHQ4Az2EbphNkO1E2dt2lFdFveOFzPtLb6ec_7jrooxnt1QA5Ux0VToe4nBQx_VqqfyOr9oMBddW5LqeTTulntb2g2AZdo3gIOQIvbPTs_g9mKPJz7dqM6xFIYuW4ceaSn0x7RjBi9vTGD6Wp8kQmxPIXjDcvxOdAiY67tAnRA8R9j--U-p3yryAkm9o2Y62jCjwTmKeH91JQLdBe5l0l9xp8_0S_Xf5RHnmJ21BOTVRsyyhTQvUGrBHoUXkhjWHAWQH0XR_Rpj1Pl8ObVKiJrLInAgs0jGJQEeqW9Ksn14Q-e5pwO7sxsM62TZVv1oFyIHe88FzeqmmZ27B9mi2ZknikU9kMZKXm3GU10yfwfLRfA2WyDXhEut655mOlLgz13tE4-j0Ewd_fpVo3QLUO5k3Aw3pxusztZmasa02D2Zp1sa21bvVVj1Oh0mwpzdFRHWrRbFWtKaHweVvcf4SyDNBmORtm8TraJeC_D6OAn4fnwT30VxNjuZGEaHjqzpOFnJfNoeidl5a0cHauRyBvfO9DkadNv_m6twraa0eaaHUJ2R1MA1jgjw_dI7_AH8AwWk:1pZptC:_40hyxDWhMAG8Sl74sie1xDWldN6K4Ara3nR4VyNaf8', '2023-03-22 09:15:14.202165');
INSERT INTO `django_session` VALUES ('evytjw7t1frzdp7ofwq060tei2zcxt3m', '.eJzFlk1zmzAQhv9KhrM_BBJI5Nh7jz2VjEeWFkNqoCPBKeP_XmSc1FZkIMA4F8ujXb_s-6y86M3b8abOdo0Gtcul9-xhb3W9t-fiD5QmIF95eag2oiprle83JmVzierNz0rC8ccl90Yg4zprfx3FDPOIcRYgEgShEDKmIgqAIUok4jFAmgZYxnHIIY0QQRRHgobURyRMCWdGtICy0a3W77fEK3kBiff8lHhJ0jAsRbuERPiJt2r38rbKLppy9ZTytciVOEIXLEyt2oR7hZKGpGCWCEXpCNlGHbvYlssiL7cy11n30cW5lL_uprTBS9peAZdCNcV-uMT-ok6rp6X8nV5MGHJpoj5CgUt7zwOjjcNwGXaVkqD0AL1L0qP4TfRo88NObUGMKKR0GX6iKtp_TD1E8CPtYQyn-bQZEnvDdzeMdM_0zwUzU3eEGTMLJfjzM7V5ps5yOMo1P9aDI4OGwVkswPSOATMG3W0yU3Jrwvdb9D_lC-2Zb9qBcqxRuy2RSwvaM-CuwojotagOPcgOqmr-DjDrcr4d2iijNjJqb4QO6ZhRMJWakTTrpRdSjM4LQbMHj2h0XRXdaVWge2bPp8zxrRrv3IFtqlu7JfHAX2Qxkh9fhlFeM30Ey6l-LZY-suEy53mXqamUoZnnnfKYnl_igOd3iZc1QLnVWdUzkG6yvtKbsY5dvZno0u6N66p3q93OOFMmI4G5FLF2Wi2KteAlP_Qef0fyt0CeCcIm77okXle7FOT3dRDw-_oguFO92hzti6Lvn1680z-XDqlz:1q0iKL:kFVZW3IuQILIQtjqdogIZX1gaLmO06ITFeVXrS9i7FM', '2023-06-04 12:38:21.909248');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_price` decimal(5, 2) NULL DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `order_time` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `orders_customer_id_b7016332_fk_customer_customer_id`(`customer_id`) USING BTREE,
  INDEX `orders_dish_id_e7f4295e_fk_dish_dish_id`(`dish_id`) USING BTREE,
  CONSTRAINT `orders_customer_id_b7016332_fk_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_dish_id_e7f4295e_fk_dish_dish_id` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 16.00, 0, '2023-03-23 13:13:34.083072', 3, 1);
INSERT INTO `orders` VALUES (2, 16.00, 0, '2023-04-02 14:43:02.537150', 3, 1);
INSERT INTO `orders` VALUES (3, 16.00, 0, '2023-04-24 00:42:49.627128', 3, 2);
INSERT INTO `orders` VALUES (4, 16.00, 0, '2023-04-24 00:44:32.824636', 3, 2);
INSERT INTO `orders` VALUES (5, 16.00, 0, '2023-05-07 12:56:51.909655', 3, 1);
INSERT INTO `orders` VALUES (6, 16.00, 0, '2023-05-07 12:57:11.548889', 3, 2);
INSERT INTO `orders` VALUES (7, 16.00, 0, '2023-06-19 02:15:08.878072', 3, 1);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shop_detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shop_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shop_active` int(11) NOT NULL,
  `canteen_id` int(11) NOT NULL,
  `manager_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE,
  INDEX `shop_canteen_id_18b8315e_fk_canteen_canteen_id`(`canteen_id`) USING BTREE,
  INDEX `shop_manager_id_0ce22c44_fk_shop_manager_manager_id`(`manager_id`) USING BTREE,
  CONSTRAINT `shop_canteen_id_18b8315e_fk_canteen_canteen_id` FOREIGN KEY (`canteen_id`) REFERENCES `canteen` (`canteen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shop_manager_id_0ce22c44_fk_shop_manager_manager_id` FOREIGN KEY (`manager_id`) REFERENCES `shop_manager` (`manager_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '五爷拌面', '拌面、热汤面', 'images/shop/wuyebanmian.jpeg', 1, 1, 1);
INSERT INTO `shop` VALUES (2, '烤肉拌饭', '沙拉鸡排饭，葱香鸡腿饭', 'images/shop/1.jpg', 1, 1, 2);
INSERT INTO `shop` VALUES (3, '中华饺子馆', '蒸饺，煮饺', 'images/shop/zhonghuajiaozi.jpg', 1, 1, 1);

-- ----------------------------
-- Table structure for shop_manager
-- ----------------------------
DROP TABLE IF EXISTS `shop_manager`;
CREATE TABLE `shop_manager`  (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manager_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manager_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manager_status` int(11) NOT NULL,
  `manage_shop_num` int(11) NOT NULL,
  PRIMARY KEY (`manager_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_manager
-- ----------------------------
INSERT INTO `shop_manager` VALUES (1, '张大叔', 'zs123456', '17456812396', 1, 1);
INSERT INTO `shop_manager` VALUES (2, '王大妈', 'wd87259999', '14689135678', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
