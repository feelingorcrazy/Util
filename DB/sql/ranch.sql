/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : ranch

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 24/05/2023 15:39:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'rc_shop_category', '商品分类表', NULL, NULL, 'RcShopCategory', 'crud', 'com.sync.ranch.front', 'front', 'shop_category', '商品分类', 'ranch', '0', '/', '{\"parentMenuId\":\"1069\"}', 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01', NULL);
INSERT INTO `gen_table` VALUES (2, 'rc_shop_goods', '商店商品表', NULL, NULL, 'RcShopGoods', 'crud', 'com.sync.ranch.front', 'front', 'shop_goods', '商店商品', 'ranch', '0', '/', '{\"parentMenuId\":\"1069\"}', 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24', NULL);
INSERT INTO `gen_table` VALUES (3, 'rc_level', '等级表', NULL, NULL, 'RcLevel', 'crud', 'com.sync.ranch.front', 'front', 'level', '等级', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45', NULL);
INSERT INTO `gen_table` VALUES (4, 'rc_service_base', '基础食物配置表', NULL, NULL, 'RcServiceBase', 'crud', 'com.sync.ranch.front', 'front', 'service_base', '食物农资配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08', NULL);
INSERT INTO `gen_table` VALUES (5, 'rc_shop_order', '商店订单表', NULL, NULL, 'RcShopOrder', 'crud', 'com.sync.ranch.front', 'front', 'shop_order', '商店订单', 'ranch', '0', '/', '{\"parentMenuId\":\"1069\"}', 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30', NULL);
INSERT INTO `gen_table` VALUES (6, 'rc_redeem_config', '兑换配置表', NULL, NULL, 'RcRedeemConfig', 'crud', 'com.sync.ranch.front', 'front', 'redeem_config', '兑换配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27', NULL);
INSERT INTO `gen_table` VALUES (7, 'rc_time_config', '时间配置', NULL, NULL, 'RcTimeConfig', 'crud', 'com.sync.ranch.front', 'front', 'time_config', '时间配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21', NULL);
INSERT INTO `gen_table` VALUES (8, 'rc_pack_config', '碎片配置', NULL, NULL, 'RcPackConfig', 'crud', 'com.sync.ranch.front', 'front', 'pack_config', '碎片配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:24', NULL);
INSERT INTO `gen_table` VALUES (9, 'rc_pig_part_config', '猪部位配置', NULL, NULL, 'RcPigPartConfig', 'crud', 'com.sync.ranch.front', 'front', 'pig_part_config', '猪部位配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39', NULL);
INSERT INTO `gen_table` VALUES (10, 'rc_process_config', '加工配置', NULL, NULL, 'RcProcessConfig', 'crud', 'com.sync.ranch.front', 'front', 'process_config', '加工配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31', NULL);
INSERT INTO `gen_table` VALUES (11, 'rc_appointment_config', '预约单配置', NULL, NULL, 'RcAppointmentConfig', 'crud', 'com.sync.ranch.front', 'front', 'appointment_config', '预约单配置', 'ranch', '0', '/', '{\"parentMenuId\":1071}', 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52', NULL);
INSERT INTO `gen_table` VALUES (12, 'rc_config', '配置表', NULL, NULL, 'RcConfig', 'crud', 'com.sync.ranch.front', 'front', 'config', '配置', 'ranch', '0', '/', '{\"parentMenuId\":1071}', 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39', NULL);
INSERT INTO `gen_table` VALUES (13, 'rc_invite_config', '邀请奖励配置', NULL, NULL, 'RcInviteConfig', 'crud', 'com.sync.ranch.front', 'front', 'invite_config', '邀请奖励配置', 'ranch', '0', '/', '{\"parentMenuId\":\"1071\"}', 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38', NULL);
INSERT INTO `gen_table` VALUES (14, 'rc_appointment_order', '预约单', NULL, NULL, 'RcAppointmentOrder', 'crud', 'com.sync.ranch.front', 'front', 'appointment_order', '预约单', 'ranch', '0', '/', '{\"parentMenuId\":\"1206\"}', 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28', NULL);
INSERT INTO `gen_table` VALUES (15, 'rc_market', '市场表', NULL, NULL, 'RcMarket', 'crud', 'com.sync.ranch.front', 'front', 'market', '市场', 'ranch', '0', '/', '{\"parentMenuId\":\"1068\"}', 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15', NULL);
INSERT INTO `gen_table` VALUES (16, 'rc_market_order', '市场订单', NULL, NULL, 'RcMarketOrder', 'crud', 'com.sync.ranch.front', 'front', 'market_order', '市场订单', 'ranch', '0', '/', '{\"parentMenuId\":1068}', 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27', NULL);
INSERT INTO `gen_table` VALUES (17, 'rc_user', '用户信息表', NULL, NULL, 'RcUser', 'crud', 'com.sync.ranch.front', 'front', 'user', '用户信息', 'ranch', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34', NULL);
INSERT INTO `gen_table` VALUES (18, 'rc_user_friend', '好友', NULL, NULL, 'RcUserFriend', 'crud', 'com.sync.ranch.front', 'front', 'user_friend', '好友', 'ranch', '0', '/', '{\"parentMenuId\":1067}', 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21', NULL);
INSERT INTO `gen_table` VALUES (19, 'rc_user_fruiter', '用户果树表', NULL, NULL, 'RcUserFruiter', 'crud', 'com.sync.ranch.front', 'front', 'user_fruiter', '用户果树', 'ranch', '0', '/', '{\"parentMenuId\":1067}', 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02', NULL);
INSERT INTO `gen_table` VALUES (20, 'rc_user_pig', '用户小猪表', NULL, NULL, 'RcUserPig', 'crud', 'com.sync.ranch.front', 'front', 'user_pig', '用户小猪', 'ranch', '0', '/', '{\"parentMenuId\":1067}', 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08', NULL);
INSERT INTO `gen_table` VALUES (21, 'rc_user_warehouse', '用户仓库', NULL, NULL, 'RcUserWarehouse', 'crud', 'com.sync.ranch.front', 'front', 'user_warehouse', '用户仓库', 'ranch', '0', '/', '{\"parentMenuId\":\"1067\"}', 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09', NULL);
INSERT INTO `gen_table` VALUES (22, 'rc_vaccin', '疫苗表', NULL, NULL, 'RcVaccin', 'crud', 'com.sync.ranch.front', 'front', 'vaccin', '疫苗', 'ranch', '0', '/', '{\"parentMenuId\":1067}', 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29', NULL);
INSERT INTO `gen_table` VALUES (23, 'rc_portal_article', '门户文章信息', NULL, NULL, 'RcPortalArticle', 'crud', 'com.sync.ranch.front', 'front', 'portal_article', '门户文章信息', 'ranch', '0', '/', '{\"parentMenuId\":\"4\"}', 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17', NULL);
INSERT INTO `gen_table` VALUES (24, 'rc_protocol', '门户信息', NULL, NULL, 'RcProtocol', 'crud', 'com.sync.ranch.front', 'front', 'protocol', '门户信息', 'ranch', '0', '/', '{\"parentMenuId\":\"4\"}', 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:38', NULL);
INSERT INTO `gen_table` VALUES (48, 'rc_process_order', '加工订单', NULL, NULL, 'RcProcessOrder', 'crud', 'com.sync.ranch.front', 'front', 'process_order', '加工订单', 'ranch', '0', '/', '{\"parentMenuId\":1206}', 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 491 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'category_id', '分类id', 'bigint(20)', 'Long', 'categoryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (2, '1', 'name', '分类名称', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (3, '1', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_status', 3, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (4, '1', 'del_flag', '删除', 'char(1)', 'String', 'delFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_del_flag', 4, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (5, '1', 'sort', '分类排序', 'int(11)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (6, '1', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, '0', NULL, 'EQ', 'input', '', 6, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (7, '1', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', '0', NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (8, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, '0', '0', 'EQ', 'datetime', '', 8, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (9, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', '0', NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-20 09:40:38', 'admin', '2023-05-20 18:05:01');
INSERT INTO `gen_table_column` VALUES (10, '2', 'goods_id', '商品id', 'bigint(20)', 'Long', 'goodsId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (11, '2', 'category_id', '商品类目id', 'bigint(20)', 'Long', 'categoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (12, '2', 'type', '市场类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'ranch_market_category', 3, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (13, '2', 'level_id', '商品适用等级id', 'bigint(20)', 'Long', 'levelId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (14, '2', 'months', '商品适用月份', 'int(11)', 'Long', 'months', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (15, '2', 'name', '商品名称', 'varchar(64)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (16, '2', 'img', '图片', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'imageUpload', '', 7, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (17, '2', 'is_discount', '折扣', 'char(1)', 'String', 'isDiscount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_discount', 8, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (18, '2', 'cost_price', '原价', 'int(11)', 'Long', 'costPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (19, '2', 'price', '商品价格', 'int(11)', 'Long', 'price', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (20, '2', 'settle_price', '结算价格', 'int(11)', 'Long', 'settlePrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (21, '2', 'stock', '库存', 'int(11)', 'Long', 'stock', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (22, '2', 'weight', '重量', 'decimal(10,2)', 'BigDecimal', 'weight', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (23, '2', 'is_send', '赠送状态', 'char(1)', 'String', 'isSend', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_send', 14, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (24, '2', 'is_package', '套餐', 'char(1)', 'String', 'isPackage', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_package', 15, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (25, '2', 'package_use_goods', '套餐使用商品', 'varchar(500)', 'String', 'packageUseGoods', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 16, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (26, '2', 'goods_status', '商品状态', 'char(1)', 'String', 'goodsStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_goods_status', 17, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (27, '2', 'sort', '排序', 'int(11)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (28, '2', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (29, '2', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 20, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (30, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (31, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 22, 'admin', '2023-05-20 11:51:32', 'admin', '2023-05-20 16:14:24');
INSERT INTO `gen_table_column` VALUES (32, '3', 'level_id', NULL, 'bigint(20)', 'Long', 'levelId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (33, '3', 'applied_level_min', '最低适用等级', 'int(11)', 'Long', 'appliedLevelMin', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (34, '3', 'applied_level_max', '最高适用等级', 'int(11)', 'Long', 'appliedLevelMax', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (35, '3', 'hand_amount', '手工费', 'int(11)', 'Long', 'handAmount', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (36, '3', 'food_ids', '可食用食物', 'varchar(500)', 'String', 'foodIds', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (37, '3', 'applied_food_min', '最低食物量', 'int(11)', 'Long', 'appliedFoodMin', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (38, '3', 'applied_food_max', '最高食物量', 'int(11)', 'Long', 'appliedFoodMax', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (39, '3', 'sort', '排序', 'int(11)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (40, '3', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (41, '3', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (42, '3', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (43, '3', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (44, '3', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_status', 13, 'admin', '2023-05-20 13:19:57', 'admin', '2023-05-20 16:10:45');
INSERT INTO `gen_table_column` VALUES (45, '4', 'service_id', '', 'bigint(20)', 'Long', 'serviceId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (46, '4', 'name', '名称', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (47, '4', 'type', '服务类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_service_base_type', 3, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (48, '4', 'img', '图片', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'imageUpload', '', 4, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (49, '4', 'is_patch', '发放碎片', 'tinyint(1)', 'Integer', 'isPatch', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_service_base_patch', 5, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (50, '4', 'patch_img', '碎片图片', 'varchar(255)', 'String', 'patchImg', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'imageUpload', '', 6, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (51, '4', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (52, '4', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (53, '4', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_status', 9, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (54, '4', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (55, '4', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-20 13:24:16', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (56, '4', 'sort', '排序', 'int(255)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 12, '', '2023-05-20 13:41:32', 'admin', '2023-05-20 16:11:08');
INSERT INTO `gen_table_column` VALUES (57, '5', 'order_id', '订单id', 'bigint(20)', 'Long', 'orderId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (58, '5', 'type', '市场类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ranch_market_category', 2, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (59, '5', 'months', '商品适用月份', 'int(11)', 'Long', 'months', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (60, '5', 'order_no', '订单号', 'varchar(64)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (61, '5', 'is_discount', '折扣', 'char(1)', 'String', 'isDiscount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_discount', 5, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (62, '5', 'goods_coin', '商品总金币', 'int(11)', 'Long', 'goodsCoin', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (63, '5', 'weight', '总重量', 'decimal(10,2)', 'BigDecimal', 'weight', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (64, '5', 'is_send', '赠送', 'char(1)', 'String', 'isSend', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'rc_send', 8, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (65, '5', 'is_package', '套餐', 'char(1)', 'String', 'isPackage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'rc_package', 9, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (66, '5', 'package_use_goods', '套餐使用商品', 'varchar(500)', 'String', 'packageUseGoods', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (67, '5', 'status', '支付状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_order_status', 11, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (68, '5', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (69, '5', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (70, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (71, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-05-22 10:43:31', 'admin', '2023-05-22 11:16:30');
INSERT INTO `gen_table_column` VALUES (72, '6', 'config_id', NULL, 'bigint(20) unsigned', 'Long', 'configId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (73, '6', 'type', '兑换类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_redeem_type', 2, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (74, '6', 'coin', '金币', 'int(11)', 'Long', 'coin', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (75, '6', 'goods_id', '商品id', 'bigint(20)', 'Long', 'goodsId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (76, '6', 'market_id', '市场id', 'bigint(20)', 'Long', 'marketId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (77, '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (78, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (79, '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (80, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 13:50:27');
INSERT INTO `gen_table_column` VALUES (81, '7', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (82, '7', 'type', '类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_time_config_type', 2, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (83, '7', 'num', '数量', 'int(11)', 'Long', 'num', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (84, '7', 'day', '时间', 'datetime', 'Date', 'day', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (85, '7', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (86, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (87, '7', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (88, '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-22 11:24:28', 'admin', '2023-05-22 15:16:21');
INSERT INTO `gen_table_column` VALUES (89, '8', 'config_id', '', 'bigint(20)', 'Long', 'configId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:24');
INSERT INTO `gen_table_column` VALUES (90, '8', 'pack_category', '碎片种类', 'char(1)', 'String', 'packCategory', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_pack_category', 2, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:24');
INSERT INTO `gen_table_column` VALUES (92, '8', 'pack_num', '碎片数量', 'int(11)', 'Long', 'packNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:24');
INSERT INTO `gen_table_column` VALUES (93, '8', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:24');
INSERT INTO `gen_table_column` VALUES (94, '8', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:25');
INSERT INTO `gen_table_column` VALUES (95, '8', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:25');
INSERT INTO `gen_table_column` VALUES (96, '8', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:25');
INSERT INTO `gen_table_column` VALUES (97, '8', 'type', '碎片类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_pack_type', 9, 'admin', '2023-05-22 15:27:59', 'admin', '2023-05-22 15:51:25');
INSERT INTO `gen_table_column` VALUES (98, '8', 'shop_goods_id', '商店商品id', 'bigint(20)', 'Long', 'shopGoodsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-22 15:50:38', 'admin', '2023-05-22 15:51:24');
INSERT INTO `gen_table_column` VALUES (99, '9', 'config_id', NULL, 'bigint(20)', 'Long', 'configId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (100, '9', 'name', '部位名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (101, '9', 'type', '部位类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_part_type', 3, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (102, '9', 'sort', '排序', 'int(11)', 'Long', 'sort', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (103, '9', 'mode', '屠宰方式', 'char(1)', 'String', 'mode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_mode', 5, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (104, '9', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (105, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (106, '9', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (107, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (108, '9', 'mode_gut', '屠宰方式类别', 'char(1)', 'String', 'modeGut', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_mode_gut', 10, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:00:39');
INSERT INTO `gen_table_column` VALUES (109, '10', 'config_id', '', 'bigint(20)', 'Long', 'configId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (110, '10', 'name', '名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (111, '10', 'process_coin', '加工费', 'int(11)', 'Long', 'processCoin', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (112, '10', 'weight', '重量', 'decimal(10,2)', 'BigDecimal', 'weight', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (113, '10', 'type', '加工类型', 'char(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_process_type', 5, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (114, '10', 'material_total_coin', '材料总费用', 'int(11)', 'Long', 'materialTotalCoin', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (115, '10', 'material_ids', '材料ids', 'varchar(500)', 'String', 'materialIds', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (116, '10', 'desc', '说明', 'varchar(255)', 'String', 'desc', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (117, '10', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 9, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (118, '10', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (119, '10', 'update_by', '更新时间', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (120, '10', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (121, '10', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (122, '10', 'img', '', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (123, '10', 'detail', '详情', 'varchar(255)', 'String', 'detail', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 15, 'admin', '2023-05-22 16:31:20', 'admin', '2023-05-22 17:30:31');
INSERT INTO `gen_table_column` VALUES (124, '11', 'config_id', NULL, 'bigint(20)', 'Long', 'configId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (125, '11', 'type', '市场类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ranch_market_category', 2, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (126, '11', 'name', '名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (127, '11', 'fee2', '采摘费', 'int(11)', 'Long', 'fee2', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (128, '11', 'fee1', '出栏费', 'int(11)', 'Long', 'fee1', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (129, '11', 'slaughter_fee', '屠宰费用', 'int(11)', 'Long', 'slaughterFee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (130, '11', 'sort', '排序', 'int(11)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (131, '11', 'mode', '屠宰方式', 'char(1)', 'String', 'mode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_mode', 8, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (132, '11', 'mode_gut', '屠宰方式类别', 'char(1)', 'String', 'modeGut', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_mode_gut', 9, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (133, '11', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (134, '11', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (135, '11', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (136, '11', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 17:43:52');
INSERT INTO `gen_table_column` VALUES (137, '12', 'config_id', '参数主键', 'int(11)', 'Long', 'configId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (138, '12', 'config_name', '参数名称', 'varchar(100)', 'String', 'configName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (139, '12', 'config_key', '参数键名', 'varchar(100)', 'String', 'configKey', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (140, '12', 'config_value', '参数键值', 'varchar(2000)', 'String', 'configValue', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 4, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (141, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (142, '12', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (143, '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (144, '12', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 8, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (145, '12', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-22 16:31:47', 'admin', '2023-05-22 18:06:39');
INSERT INTO `gen_table_column` VALUES (146, '13', 'config_id', '邀请奖励配置id', 'bigint(20)', 'Long', 'configId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (147, '13', 'config_type', '邀请类型', 'char(1)', 'String', 'configType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_invite_config_type', 2, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (148, '13', 'reward_num', '赠送数量', 'int(11)', 'Long', 'rewardNum', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (149, '13', 'goods_id', '商品id', 'bigint(20)', 'Long', 'goodsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (150, '13', 'invite_num', '邀请数量', 'int(11)', 'Long', 'inviteNum', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (151, '13', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (152, '13', 'create_time', '删除时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (153, '13', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (154, '13', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-22 16:32:05', 'admin', '2023-05-22 18:10:38');
INSERT INTO `gen_table_column` VALUES (155, '14', 'order_id', '预约单id', 'bigint(20)', 'Long', 'orderId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (156, '14', 'fruiter_id', '树id', 'bigint(20)', 'Long', 'fruiterId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (157, '14', 'pig_id', '猪id', 'bigint(20)', 'Long', 'pigId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (158, '14', 'order_no', '预约单号', 'varchar(64)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (159, '14', 'type', '市场类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ranch_market_category', 5, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (160, '14', 'pick_fee', '采摘费', 'int(11)', 'Long', 'pickFee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:28');
INSERT INTO `gen_table_column` VALUES (161, '14', 'listing_fee', '出栏费', 'int(11)', 'Long', 'listingFee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (162, '14', 'slaughter_fee', '屠宰费用', 'int(11)', 'Long', 'slaughterFee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (163, '14', 'imprest_coin', '备用金', 'int(11)', 'Long', 'imprestCoin', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (164, '14', 'coin', '抵扣金币', 'int(11)', 'Long', 'coin', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (165, '14', 'appointment_time', '预约时间', 'datetime', 'Date', 'appointmentTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 11, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (166, '14', 'pay_coin', '总支付金币', 'int(11)', 'Long', 'payCoin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (167, '14', 'mode_gut', '屠宰方式类别', 'char(1)', 'String', 'modeGut', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_mode_gut', 13, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (168, '14', 'pay_time', '支付时间', 'datetime', 'Date', 'payTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 14, 'admin', '2023-05-23 10:49:02', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (169, '14', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '1', '0', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2023-05-23 10:49:03', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (170, '14', 'status', '支付状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'rc_order_status', 16, 'admin', '2023-05-23 10:49:03', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (171, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2023-05-23 10:49:03', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (172, '14', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2023-05-23 10:49:03', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (173, '14', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2023-05-23 10:49:03', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (174, '14', 'mode', '屠宰方式', 'char(1)', 'String', 'mode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_mode', 20, 'admin', '2023-05-23 11:18:46', 'admin', '2023-05-23 11:22:29');
INSERT INTO `gen_table_column` VALUES (175, '15', 'market_id', '产品id', 'int(11)', 'Long', 'marketId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (176, '15', 'type', '市场类别', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ranch_market_category', 2, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (177, '15', 'category_id', '类别id', 'int(11)', 'Long', 'categoryId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (178, '15', 'category_name', '品类名称', 'varchar(50)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (179, '15', 'img', '图片', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (180, '15', 'age', '猪龄', 'int(11)', 'Long', 'age', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (181, '15', 'stock', '库存', 'int(11)', 'Long', 'stock', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (182, '15', 'weight', '重量', 'int(11)', 'Long', 'weight', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (183, '15', 'insure_coin', '保证金', 'int(11)', 'Long', 'insureCoin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (184, '15', 'pick_desc', '采摘描述', 'varchar(256)', 'String', 'pickDesc', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (185, '15', 'years_limit', '领养年限', 'tinyint(1)', 'Integer', 'yearsLimit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (186, '15', 'is_discount', '折扣', 'char(1)', 'String', 'isDiscount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_discount', 12, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (187, '15', 'package_ids', '套餐', 'varchar(255)', 'String', 'packageIds', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (188, '15', 'is_package', '套餐', 'char(1)', 'String', 'isPackage', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_package', 14, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (189, '15', 'cost_price', '原价', 'int(11)', 'Long', 'costPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (190, '15', 'price', '现价', 'int(11)', 'Long', 'price', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (191, '15', 'detail', '详情', 'text', 'String', 'detail', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 17, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (192, '15', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (193, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (194, '15', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 20, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (195, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (196, '15', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 22, 'admin', '2023-05-23 14:31:42', 'admin', '2023-05-23 14:35:15');
INSERT INTO `gen_table_column` VALUES (197, '16', 'market_order_id', NULL, 'bigint(20)', 'Long', 'marketOrderId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (198, '16', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (199, '16', 'market_id', '产品id', 'bigint(20)', 'Long', 'marketId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (200, '16', 'order_no', '订单编号', 'varchar(30)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (201, '16', 'is_insure', '投保', 'char(1)', 'String', 'isInsure', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_insure', 5, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (202, '16', 'price', '商品价格', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (203, '16', 'num', '商品数量', 'int(11)', 'Long', 'num', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (204, '16', 'total_price', '订单价格', 'int(11)', 'Long', 'totalPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (205, '16', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (206, '16', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (207, '16', 'create_by', '创建人\r\n', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (208, '16', 'status', '订单状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_market_stauts', 12, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (209, '16', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (210, '16', 'is_exchange', '兑换', 'char(1)', 'String', 'isExchange', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_exchange', 14, 'admin', '2023-05-23 15:03:52', 'admin', '2023-05-23 15:08:27');
INSERT INTO `gen_table_column` VALUES (211, '17', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (212, '17', 'user_no', '用户编号', 'varchar(20)', 'String', 'userNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (213, '17', 'wx_openid', '用户微信openid', 'varchar(50)', 'String', 'wxOpenid', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (214, '17', 'mini_openid', '小程序用户openid', 'varchar(50)', 'String', 'miniOpenid', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (215, '17', 'user_name', '用户账号', 'varchar(30)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (216, '17', 'receivable_pack', '可收取碎片', 'int(11)', 'Long', 'receivablePack', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (217, '17', 'total_pack', '碎片总数', 'int(11)', 'Long', 'totalPack', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (218, '17', 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (219, '17', 'coins', '持有金币数', 'bigint(20)', 'Long', 'coins', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (220, '17', 'coin_consume', '消耗金币数', 'bigint(20)', 'Long', 'coinConsume', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (221, '17', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (222, '17', 'phone', '手机号码', 'varchar(11)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (223, '17', 'sex', '用户性别', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_sex', 13, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (224, '17', 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (225, '17', 'real_name', '真实姓名', 'varchar(20)', 'String', 'realName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 15, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (226, '17', 'id_number', '身份证ID', 'varchar(18)', 'String', 'idNumber', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (227, '17', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (228, '17', 'status', '帐号状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_user_status', 18, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (229, '17', 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_del_flag', 19, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (230, '17', 'login_ip', '最后登录IP', 'varchar(128)', 'String', 'loginIp', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 20, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (231, '17', 'login_date', '最后登录时间', 'datetime', 'Date', 'loginDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 21, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (232, '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 22, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (233, '17', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 23, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (234, '17', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 24, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (235, '17', 'referrer', '直推', 'bigint(20)', 'Long', 'referrer', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 25, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (236, '17', 'invite_code', '用户邀请码', 'varchar(255)', 'String', 'inviteCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 26, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (237, '17', 'jpush_id', '极光推送id', 'varchar(255)', 'String', 'jpushId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 27, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (238, '17', 'pay_pwd', '支付密码', 'varchar(255)', 'String', 'payPwd', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 28, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:20:34');
INSERT INTO `gen_table_column` VALUES (239, '18', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (240, '18', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (241, '18', 'fuid', '好友uid', 'bigint(20)', 'Long', 'fuid', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (242, '18', 'is_steal', '偷取', 'char(1)', 'String', 'isSteal', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'rc_steal', 4, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (243, '18', 'status', '好友通过状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_friend_status', 5, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (244, '18', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (245, '18', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (246, '18', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (247, '18', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:28:21');
INSERT INTO `gen_table_column` VALUES (248, '19', 'fruiter_id', '果树ID', 'bigint(20) unsigned', 'Long', 'fruiterId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (249, '19', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (250, '19', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 3, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (251, '19', 'market_id', '领养种类', 'bigint(20)', 'Long', 'marketId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (252, '19', 'raise_user_ids', '合养人', 'varchar(500)', 'String', 'raiseUserIds', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (253, '19', 'farmer_id', '农户id', 'bigint(20)', 'Long', 'farmerId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (254, '19', 'farmer_name', '农户名称', 'varchar(64)', 'String', 'farmerName', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (255, '19', 'nickname', '昵称', 'varchar(50)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (256, '19', 'level', '当前等级', 'int(11)', 'Long', 'level', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (257, '19', 'sn', '领养编号', 'varchar(30)', 'String', 'sn', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (258, '19', 'coin', '保证金金币', 'int(11)', 'Long', 'coin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (259, '19', 'is_raise', '合养', 'char(1)', 'String', 'isRaise', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_raise', 12, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (260, '19', 'is_insure', '投保', 'char(1)', 'String', 'isInsure', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_insure', 13, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (261, '19', 'is_control', '托管', 'char(1)', 'String', 'isControl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_control', 14, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (262, '19', 'control_day', '托管天数', 'int(11)', 'Long', 'controlDay', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (263, '19', 'unlock_month', '已解锁月份', 'int(11)', 'Long', 'unlockMonth', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (264, '19', 'seat', '位置', 'varchar(100)', 'String', 'seat', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (265, '19', 'camera_id', '摄像id', 'bigint(20)', 'Long', 'cameraId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (266, '19', 'freeze_credit', '农户冻结金额', 'decimal(10,2)', 'BigDecimal', 'freezeCredit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 19, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (267, '19', 'status', '果树状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_fruiter_status', 20, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (268, '19', 'service_status', '服务状态', 'char(1)', 'String', 'serviceStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_fruiter_service_status', 21, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (269, '19', 'settlement_method', '农户结算方式', 'char(1)', 'String', 'settlementMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_settlement_method', 22, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (270, '19', 'trace_source_code', '溯源码地址', 'varchar(256)', 'String', 'traceSourceCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 23, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (271, '19', 'pick_time', '采摘时间', 'timestamp', 'Date', 'pickTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 24, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (272, '19', 'market_order_id', '购买订单id', 'bigint(20)', 'Long', 'marketOrderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (273, '19', 'min_weight', '保底收成', 'decimal(10,2)', 'BigDecimal', 'minWeight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (274, '19', 'like_num', '点赞数量', 'int(11)', 'Long', 'likeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (275, '19', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 28, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (276, '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 29, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (277, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 30, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (278, '19', 'is_exchange', '兑换', 'char(1)', 'String', 'isExchange', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', 'rc_exchange', 31, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:39:02');
INSERT INTO `gen_table_column` VALUES (279, '20', 'pig_id', '小猪ID', 'bigint(20) unsigned', 'Long', 'pigId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (280, '20', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (281, '20', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 3, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (282, '20', 'market_id', '领养种类', 'bigint(20)', 'Long', 'marketId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (283, '20', 'raise_user_ids', '合养人', 'varchar(500)', 'String', 'raiseUserIds', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (284, '20', 'farmer_id', '农户id', 'bigint(20)', 'Long', 'farmerId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (285, '20', 'farmer_name', '农户名称', 'varchar(64)', 'String', 'farmerName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 7, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (286, '20', 'nickname', '昵称', 'varchar(50)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (287, '20', 'level', '当前等级', 'int(11)', 'Long', 'level', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (288, '20', 'sn', '领养编号', 'varchar(30)', 'String', 'sn', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (289, '20', 'coin', '备用金金币', 'int(11)', 'Long', 'coin', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (290, '20', 'used_coin', '消耗金币', 'int(11)', 'Long', 'usedCoin', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (291, '20', 'is_raise', '合养', 'char(1)', 'String', 'isRaise', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'rc_raise', 13, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (292, '20', 'is_insure', '投保', 'char(1)', 'String', 'isInsure', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_insure', 14, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (293, '20', 'is_pig_insure', '投保养猪险', 'char(1)', 'String', 'isPigInsure', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_pig_insure', 15, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (294, '20', 'is_control', '托管', 'char(1)', 'String', 'isControl', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_control', 16, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (295, '20', 'control_day', '托管天数', 'int(11)', 'Long', 'controlDay', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (296, '20', 'seat', '位置', 'varchar(100)', 'String', 'seat', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (297, '20', 'camera_id', '摄像id', 'bigint(20)', 'Long', 'cameraId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 19, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (298, '20', 'freeze_credit', '农户冻结金额', 'decimal(10,2)', 'BigDecimal', 'freezeCredit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 20, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (299, '20', 'part_num', '部位数量', 'int(11)', 'Long', 'partNum', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 21, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (300, '20', 'mode', '[屠宰方式,rc_mode,1=标准,2=精细,3=加工]', 'char(1)', 'String', 'mode', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_mode', 22, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (301, '20', 'status', '[,rc_user_pig_status,1=准备中,2=正常,3=已预约,4=屠宰中', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'rc_user_pig_status', 23, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (302, '20', 'feed_status', '喂养', 'char(1)', 'String', 'feedStatus', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_feed', 24, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (303, '20', 'settlement_method', '农户结算方式', 'char(1)', 'String', 'settlementMethod', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_settlement_method', 25, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (304, '20', 'trace_source_code', '溯源码地址', 'varchar(256)', 'String', 'traceSourceCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 26, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (305, '20', 'slaughter_at', '屠宰时间', 'datetime', 'Date', 'slaughterAt', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 27, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (306, '20', 'is_pig_king', '猪王', 'char(1)', 'String', 'isPigKing', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'rc_pig_king', 28, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (307, '20', 'market_order_id', '购买订单id', 'bigint(20)', 'Long', 'marketOrderId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 29, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (308, '20', 'like_num', '点赞数量', 'int(11)', 'Long', 'likeNum', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 30, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (309, '20', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 31, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (310, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 32, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:08');
INSERT INTO `gen_table_column` VALUES (311, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 33, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (312, '20', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 34, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (313, '20', 'is_first_name', '第一次改名', 'char(1)', 'String', 'isFirstName', '0', '0', '1', '1', '1', '1', '0', 'LIKE', 'select', 'rc_first_name', 35, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (314, '20', 'is_exchange', '兑换', 'char(1)', 'String', 'isExchange', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_exchange', 36, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (315, '20', 'mode_gut', '屠宰方式类别', 'char(1)', 'String', 'modeGut', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_mode_gut', 37, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (316, '20', 'invite_code', '邀请码', 'varchar(255)', 'String', 'inviteCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 38, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 17:58:09');
INSERT INTO `gen_table_column` VALUES (317, '21', 'warehouse_id', '仓库配送物品id', 'bigint(20)', 'Long', 'warehouseId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09');
INSERT INTO `gen_table_column` VALUES (318, '21', 'pet_type', '市场类别', 'char(1)', 'String', 'petType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'ranch_market_category', 2, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09');
INSERT INTO `gen_table_column` VALUES (319, '21', 'status', '用户物品使用状态', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_user_warehouse_status', 3, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09');
INSERT INTO `gen_table_column` VALUES (320, '21', 'shop_order_id', '对应订单ID', 'bigint(20)', 'Long', 'shopOrderId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09');
INSERT INTO `gen_table_column` VALUES (321, '21', 'goods_id', '商品ID', 'bigint(20)', 'Long', 'goodsId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:09');
INSERT INTO `gen_table_column` VALUES (322, '21', 'shop_category_id', '类目id', 'bigint(20)', 'Long', 'shopCategoryId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (323, '21', 'months', '适用月份', 'int(11)', 'Long', 'months', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (324, '21', 'pig_id', '使用物品猪ID', 'bigint(20)', 'Long', 'pigId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (325, '21', 'fruiter_id', '使用物品果树id\r\n', 'bigint(20)', 'Long', 'fruiterId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (326, '21', 'user_id', '用户ID', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (327, '21', 'name', '商品名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '0', 'LIKE', 'input', '', 11, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (328, '21', 'dosage_ids', '加量食物', 'varchar(255)', 'String', 'dosageIds', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (329, '21', 'img', '商品图片', 'varchar(255)', 'String', 'img', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', 13, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (330, '21', 'is_send', '赠送', 'char(1)', 'String', 'isSend', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_send', 14, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (331, '21', 'is_package', '套餐', 'char(1)', 'String', 'isPackage', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_package', 15, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (332, '21', 'is_exchange', '兑换', 'char(1)', 'String', 'isExchange', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_exchange', 16, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (333, '21', 'package_use', '套餐使用商品', 'varchar(50)', 'String', 'packageUse', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (334, '21', 'applied_level_min', '最低适用等级', 'int(11)', 'Long', 'appliedLevelMin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (335, '21', 'applied_level_max', '最高适用等级', 'int(11)', 'Long', 'appliedLevelMax', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 19, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (336, '21', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (337, '21', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (338, '21', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 22, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (339, '21', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 23, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (340, '21', 'is_compose', '合成', 'char(1)', 'String', 'isCompose', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'rc_compose', 24, 'admin', '2023-05-23 17:14:51', 'admin', '2023-05-23 18:02:10');
INSERT INTO `gen_table_column` VALUES (341, '22', 'vaccin_id', NULL, 'bigint(20)', 'Long', 'vaccinId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (342, '22', 'name', '疫苗名称', 'tinyint(4)', 'Integer', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (343, '22', 'coin', '需要金币', 'int(11)', 'Long', 'coin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (344, '22', 'detail', '内容', 'varchar(255)', 'String', 'detail', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (345, '22', 'status', '疫苗状态', 'tinyint(4)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_vaccin_status', 5, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (346, '22', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '1', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (347, '22', 'update_by', '更新时间', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (348, '22', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (349, '22', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-24 11:13:24', 'admin', '2023-05-24 11:14:29');
INSERT INTO `gen_table_column` VALUES (350, '23', 'id', '', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (351, '23', 'type', '类型', 'tinyint(4)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_portal_article_type', 2, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (352, '23', 'description', '描述', 'varchar(255)', 'String', 'description', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (353, '23', 'video_url', '视频地址', 'varchar(255)', 'String', 'videoUrl', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (354, '23', 'images', '多图', 'text', 'String', 'images', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'imageUpload', '', 5, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (355, '23', 'content', '内容', 'text', 'String', 'content', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'editor', '', 6, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (356, '23', 'status', '状态', 'tinyint(4)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_portal_article_status', 7, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (360, '24', 'id', '', 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (361, '24', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (362, '24', 'type', '类型', 'tinyint(4)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'rc_protocol_type', 3, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (363, '24', 'img', '图片', 'varchar(255)', 'String', 'img', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'imageUpload', '', 4, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (364, '24', 'content', '内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'editor', '', 5, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (365, '24', 'status', '状态', 'tinyint(4)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'rc_protocol_status', 6, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (366, '24', 'sort', '排序', 'int(11)', 'Long', 'sort', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-24 11:20:14', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (370, '23', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-24 11:25:24', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (371, '23', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-24 11:25:24', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (372, '23', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-05-24 11:25:24', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (373, '23', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-24 11:25:24', 'admin', '2023-05-24 11:39:17');
INSERT INTO `gen_table_column` VALUES (374, '24', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-24 11:25:26', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (375, '24', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-05-24 11:25:26', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (376, '24', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-05-24 11:25:26', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (377, '24', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-24 11:25:26', 'admin', '2023-05-24 11:43:39');
INSERT INTO `gen_table_column` VALUES (632, '48', 'order_id', NULL, 'bigint', 'Long', 'orderId', '1', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (633, '48', 'order_no', NULL, 'varchar(64)', 'String', 'orderNo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (634, '48', 'config_id', 'process_config_id', 'bigint', 'Long', 'configId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (635, '48', 'pig_id', NULL, 'int', 'Long', 'pigId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (636, '48', 'process_name', '配置名称', 'varchar(64)', 'String', 'processName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (637, '48', 'process_time', '加工时间', 'datetime', 'Date', 'processTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (638, '48', 'process_coin', '加工金币', 'int', 'Long', 'processCoin', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (639, '48', 'total_coin', '总金币', 'int', 'Long', 'totalCoin', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (640, '48', 'meteria_coin', '材料总金币', 'int', 'Long', 'meteriaCoin', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-24 14:26:48', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (641, '48', 'process_status', '加工状态', 'char(1)', 'String', 'processStatus', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', 'rc_process_status', 10, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (642, '48', 'pay_time', '支付时间', 'datetime', 'Date', 'payTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (643, '48', 'status', '支付状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', 'rc_order_status', 12, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (644, '48', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '1', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (645, '48', 'update_by', '更新时间', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (646, '48', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (647, '48', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '1', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (648, '48', 'desc', '说明', 'varchar(255)', 'String', 'desc', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (649, '48', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'editor', '', 18, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');
INSERT INTO `gen_table_column` VALUES (650, '48', 'detail', '详情', 'varchar(255)', 'String', 'detail', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 19, 'admin', '2023-05-24 14:26:51', 'admin', '2023-05-24 14:30:39');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for rc_app_version
-- ----------------------------
DROP TABLE IF EXISTS `rc_app_version`;
CREATE TABLE `rc_app_version`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[类型,rc_app_type,1=客户端,2=农户端]',
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版本号',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '下载地址',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '更新文本',
  `is_force` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[强制更新,rc_app_force,1=是,2=否]',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'app版本列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_app_version
-- ----------------------------

-- ----------------------------
-- Table structure for rc_appointment_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_appointment_config`;
CREATE TABLE `rc_appointment_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `fee2` int(0) NULL DEFAULT NULL COMMENT '采摘费',
  `fee1` int(0) NULL DEFAULT NULL COMMENT '出栏费',
  `slaughter_fee` int(0) NULL DEFAULT NULL COMMENT '屠宰费用',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `mode` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[屠宰方式,rc_mode,1=标准,2=精细,3=加工]',
  `mode_gut` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[屠宰方式类别,rc_mode_gut,1=要内脏,2=不要内脏]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约单配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_appointment_config
-- ----------------------------
INSERT INTO `rc_appointment_config` VALUES (1, '2', '就', 10, NULL, NULL, 1, NULL, NULL, 'admin', '2023-05-22 18:05:00', 'admin', '2023-05-22 18:05:00');
INSERT INTO `rc_appointment_config` VALUES (2, '1', '方式', NULL, 1, 1, 1, '1', '1', 'admin', '2023-05-22 18:05:18', 'admin', '2023-05-22 18:05:18');

-- ----------------------------
-- Table structure for rc_appointment_order
-- ----------------------------
DROP TABLE IF EXISTS `rc_appointment_order`;
CREATE TABLE `rc_appointment_order`  (
  `order_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '预约单id',
  `fruiter_id` bigint(0) NULL DEFAULT NULL COMMENT '用户树id',
  `pig_id` bigint(0) NULL DEFAULT NULL COMMENT '用户猪id',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约单号',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `pick_fee` int(0) NULL DEFAULT NULL COMMENT '采摘费',
  `listing_fee` int(0) NULL DEFAULT NULL COMMENT '出栏费',
  `slaughter_fee` int(0) NULL DEFAULT NULL COMMENT '屠宰费用',
  `imprest_coin` int(0) NOT NULL COMMENT '备用金',
  `coin` int(0) NOT NULL COMMENT '抵扣金币',
  `appointment_time` datetime(0) NULL DEFAULT NULL COMMENT '预约（屠宰/采摘）时间',
  `pay_coin` int(0) NOT NULL COMMENT '总支付金币',
  `mode_gut` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[屠宰方式类别,rc_mode_gut,1=要内脏,2=不要内脏]',
  `pay_time` datetime(0) NOT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[支付状态,rc_order_status,1=待支付,2=已支付,3=取消支付]',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `mode` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[屠宰方式,rc_mode,1=标准,2=精细,3=加工]',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_appointment_order
-- ----------------------------
INSERT INTO `rc_appointment_order` VALUES (1, 1, NULL, '1', '2', 1, NULL, NULL, 1, 1, '2023-05-24 00:00:00', 1, NULL, '2023-05-23 00:00:00', 'admin', '1', '2023-05-23 16:44:51', 'admin', '2023-05-23 16:44:51', NULL);

-- ----------------------------
-- Table structure for rc_camera
-- ----------------------------
DROP TABLE IF EXISTS `rc_camera`;
CREATE TABLE `rc_camera`  (
  `camera_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '摄像头ID',
  `device_serial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备序列号',
  `channel_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通道号',
  `video_live_url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摄像头直播源URL',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[摄像头状态,rc_camera_status,0=停用,1=正常,2=未使用]\r\n',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`camera_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '摄像头信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_camera
-- ----------------------------

-- ----------------------------
-- Table structure for rc_camera_living
-- ----------------------------
DROP TABLE IF EXISTS `rc_camera_living`;
CREATE TABLE `rc_camera_living`  (
  `living_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '直播ID',
  `camera_id` bigint(0) NOT NULL COMMENT '摄像头id',
  `video_live_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摄像头直播源URL',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[摄像头状态,rc_camera_status,0=停用,1=正常,2=未使用]\r\n',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `fruiter_id` bigint(0) NULL DEFAULT NULL,
  `pig_id` bigint(0) NULL DEFAULT NULL,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `farmer_id` bigint(0) NULL DEFAULT NULL COMMENT '农户id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`living_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '摄像头直播信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_camera_living
-- ----------------------------

-- ----------------------------
-- Table structure for rc_category
-- ----------------------------
DROP TABLE IF EXISTS `rc_category`;
CREATE TABLE `rc_category`  (
  `category_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `video` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '监控链接',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_category
-- ----------------------------
INSERT INTO `rc_category` VALUES (1, '1', '12', '123', '2023-05-23 15:36:49', 'admin', '2023-05-23 15:36:49', '123', NULL);
INSERT INTO `rc_category` VALUES (2, '2', '123', '123', '2023-05-23 15:36:55', 'admin', '2023-05-23 15:36:55', '123', NULL);

-- ----------------------------
-- Table structure for rc_cloud_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `rc_cloud_warehouse`;
CREATE TABLE `rc_cloud_warehouse`  (
  `cloud_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '仓库配送物品id',
  `part_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部位类型',
  `part_id` bigint(0) NULL DEFAULT NULL COMMENT '猪部位id',
  `user_fruiter_id` bigint(0) NULL DEFAULT NULL COMMENT '用户果树id',
  `is_send` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[赠送状态,rc_send,1=否,2=是]',
  `user_pig_id` bigint(0) NULL DEFAULT NULL COMMENT '用户猪id',
  `deposit_coin` int(0) NULL DEFAULT 0 COMMENT '托管超时金币',
  `ending_time` datetime(0) NOT NULL COMMENT '托管到期时间',
  `send_user_id` bigint(0) NULL DEFAULT NULL COMMENT '赠送用户id',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[云仓配送状态,rc_cloud_status,1=未邮寄,2=部分邮寄,3=已邮寄,4=超时,5=加工中.6=已加工]\r\n\r\n\r\n',
  `total_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '总重量',
  `use_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '可邮寄重量',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cloud_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '云仓库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_cloud_warehouse
-- ----------------------------

-- ----------------------------
-- Table structure for rc_coins_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_coins_log`;
CREATE TABLE `rc_coins_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[金币日志内容类型,rc_coin_log_type,1=增加,2=减少,3=后台增加,4=后台减少]',
  `op_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[金币日志操作类型,rc_coin_op_type,1=充值,2=消耗,3=提现,4=手续费,5=扣除,6=备用金]',
  `before_coin` int(0) NULL DEFAULT NULL COMMENT '前金币',
  `after_coin` int(0) NULL DEFAULT NULL COMMENT '后金币',
  `coins` int(0) NOT NULL COMMENT '金币数，正数表示增加，负数表示消费',
  `record_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '记录时间',
  `record_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录描述',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '金币记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_coins_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_comment
-- ----------------------------
DROP TABLE IF EXISTS `rc_comment`;
CREATE TABLE `rc_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `pig_id` bigint(0) NULL DEFAULT 0 COMMENT '宠物ID',
  `user_id` bigint(0) NULL DEFAULT 0 COMMENT '评论用户ID',
  `fruiter_id` bigint(0) NULL DEFAULT NULL COMMENT '果树id',
  `pid` int(0) NULL DEFAULT 0 COMMENT '评论id',
  `like_num` int(0) NULL DEFAULT 0 COMMENT '点赞数量',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宠物评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_comment
-- ----------------------------

-- ----------------------------
-- Table structure for rc_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_config`;
CREATE TABLE `rc_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_config
-- ----------------------------
INSERT INTO `rc_config` VALUES (1, '1', '1', '1', '2023-05-22 18:23:41', 'admin', '2023-05-22 18:23:41', '1', 'admin');

-- ----------------------------
-- Table structure for rc_dog
-- ----------------------------
DROP TABLE IF EXISTS `rc_dog`;
CREATE TABLE `rc_dog`  (
  `dog_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '守护犬ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `health` int(0) NULL DEFAULT NULL COMMENT '生命值',
  `exp` int(0) NULL DEFAULT NULL COMMENT '经验',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `attack` int(0) NOT NULL COMMENT '攻击',
  `agile` int(0) NULL DEFAULT NULL COMMENT '敏捷',
  `intel` int(0) NULL DEFAULT NULL COMMENT '智力',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[宠物状态,rc_dog_status,0=停用,1=正常]\r\n',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`dog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '守护犬表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_dog
-- ----------------------------

-- ----------------------------
-- Table structure for rc_express_company
-- ----------------------------
DROP TABLE IF EXISTS `rc_express_company`;
CREATE TABLE `rc_express_company`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '快递名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '快递编码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[物流公司状态,rc_exp_company,0=停用,1=正常]',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_express_company
-- ----------------------------

-- ----------------------------
-- Table structure for rc_express_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_express_log`;
CREATE TABLE `rc_express_log`  (
  `log_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `express_order_id` bigint(0) NOT NULL COMMENT '物流订单id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物流信息内容json',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[物流日志状态,rc_exp_status,0=异常,1=正常]',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_express_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_express_order
-- ----------------------------
DROP TABLE IF EXISTS `rc_express_order`;
CREATE TABLE `rc_express_order`  (
  `order_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '物流订单id',
  `total_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '仓库物品重量',
  `cloud_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '云仓库ID',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `address_id` bigint(0) NOT NULL COMMENT '地址id',
  `sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `express_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递公司',
  `express_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `status` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '4' COMMENT '[物流订单状态,rc_exp_order_status,1=已发货,2=在途中,3=已签收,4=待发货]',
  `express_id` bigint(0) NULL DEFAULT NULL COMMENT '物流公司id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `express_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[物流方式,rc_exp_type,1=自提,2=邮寄]',
  `express_coin` int(0) NULL DEFAULT NULL COMMENT '物流费用',
  `package_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打包方式类型',
  `package_coin` int(0) NULL DEFAULT NULL COMMENT '打包金币',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_express_order
-- ----------------------------

-- ----------------------------
-- Table structure for rc_farmer
-- ----------------------------
DROP TABLE IF EXISTS `rc_farmer`;
CREATE TABLE `rc_farmer`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '农户ID',
  `user_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户编号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农户昵称',
  `is_pigbreeder` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[养猪员,rc_pigbreeder,0=否,1=是]',
  `is_fruitfarmer` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[果农,rc_fruitfarmer,0=否,1=是]',
  `is_butcher` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[屠夫,rc_butcher,0=否,1=是]',
  `undischarged_balance` decimal(10, 2) NOT NULL COMMENT '未结算金额',
  `total_balance` decimal(10, 2) NOT NULL COMMENT '总收入',
  `amount` decimal(10, 2) NOT NULL COMMENT '手工费总额',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[用户性别,rc_sex,0=男,1=女,2=未知]',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `check_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '[农户开通状态,rc_farmer_check_status,0=审核中,1=已通过,2=未通过]',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[农户帐号状态,rc_farmer_status,0=正常,1=停用]',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[删除标志,rc_del_flag,0=正常,2=删除]',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证ID',
  `longitude` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维度',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名称',
  `bank_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡号',
  `bank_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡所属人',
  `ali_pay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  `identity_img_positive` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证正面',
  `identity_img_negative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证反面',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_farmer
-- ----------------------------

-- ----------------------------
-- Table structure for rc_farmer_amount_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_farmer_amount_log`;
CREATE TABLE `rc_farmer_amount_log`  (
  `log_id` bigint(0) NOT NULL,
  `farmer_id` bigint(0) NULL DEFAULT NULL COMMENT '农户id',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[农户流水类型,rc_farmer_amount_type,0=提现,1=喂养,2=服务,3=治疗,4=耕作]',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `withdraw_id` bigint(0) NULL DEFAULT NULL COMMENT '提现记录详情id',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[农户流水状态,rc_farmer_amount_status,1=成功,2=失败,3=结算中]',
  `before_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '前金额',
  `after_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '后金额',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农户金额流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_farmer_amount_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_farmer_service
-- ----------------------------
DROP TABLE IF EXISTS `rc_farmer_service`;
CREATE TABLE `rc_farmer_service`  (
  `service_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '农户服务id',
  `service_base_id` bigint(0) NOT NULL COMMENT '服务基础id',
  `farmer_id` bigint(0) NOT NULL COMMENT '农户id',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '[农户服务,rc_farmer_service_status,0=正常,1=停用]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农户服务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_farmer_service
-- ----------------------------

-- ----------------------------
-- Table structure for rc_farmer_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `rc_farmer_withdraw`;
CREATE TABLE `rc_farmer_withdraw`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `farmer_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户id',
  `order_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号(农户生成)',
  `trade_no_3rd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方交易订单号',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '到账金额',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `poudage` decimal(10, 2) NULL DEFAULT NULL COMMENT '手续费',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[农户提现状态,rc_farmer_withdraw_status,0=处理中,1=交易成功,2=交易失败]',
  `trade_result` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易结果',
  `bank_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户类型',
  `account_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户名称',
  `bank_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户银行',
  `branch_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户支行名称',
  `bank_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡号',
  `check_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[农户提现审核状态,rc_farmer_withdraw_check_status,0=未审核,1=审核通过,2=审核拒绝]',
  `check_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `check_date` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `check_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核原因',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `complete_date` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '[删除标志,rc_del_flag,0=正常,2=删除]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '提现记录详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_farmer_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for rc_invite_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_invite_config`;
CREATE TABLE `rc_invite_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '邀请奖励配置id',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[邀请配置类型,rc_invite_config_type,1=碎片,2=礼包]',
  `reward_num` int(0) NULL DEFAULT NULL COMMENT '赠送数量',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `invite_num` int(0) NULL DEFAULT NULL COMMENT '邀请数量',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '删除时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邀请奖励配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_invite_config
-- ----------------------------
INSERT INTO `rc_invite_config` VALUES (1, '1', 12, 1, 12, '2023-05-22 18:23:30', '2023-05-22 18:23:30', 'admin', 'admin');

-- ----------------------------
-- Table structure for rc_invite_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_invite_log`;
CREATE TABLE `rc_invite_log`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `referrer` bigint(0) NULL DEFAULT NULL COMMENT '直推',
  `pid` bigint(0) NULL DEFAULT NULL COMMENT '上级id',
  `is_valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[是否实名,rc_invite_log_valid,1=是,2=否]',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `idx_pid_level_isactive`(`pid`, `is_valid`) USING BTREE,
  INDEX `idx_uid_level_isactive`(`user_id`, `is_valid`) USING BTREE,
  INDEX `idx_uid_isactive`(`user_id`, `is_valid`) USING BTREE,
  INDEX `idx_uid_level_pid`(`user_id`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_invite_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_invite_reward_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_invite_reward_log`;
CREATE TABLE `rc_invite_reward_log`  (
  `log_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[奖励类型,rc_reward,1=碎片,2=礼包]',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品ID',
  `reward_num` int(0) NULL DEFAULT NULL COMMENT '赠送数量',
  `invite_num` int(0) NULL DEFAULT NULL COMMENT '邀请数量',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户邀请奖励日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_invite_reward_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_level
-- ----------------------------
DROP TABLE IF EXISTS `rc_level`;
CREATE TABLE `rc_level`  (
  `level_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `applied_level_min` int(0) NOT NULL COMMENT '最低适用等级',
  `applied_level_max` int(0) NOT NULL COMMENT '最高适用等级',
  `hand_amount` int(0) NOT NULL COMMENT '手工费',
  `food_ids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '可食用食物',
  `applied_food_min` int(0) NOT NULL COMMENT '最低食物量',
  `applied_food_max` int(0) NOT NULL COMMENT '最高食物量',
  `sort` int(0) NULL DEFAULT 1 COMMENT '排序',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '[状态,rc_status,0=正常,1=停用]',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '等级表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_level
-- ----------------------------
INSERT INTO `rc_level` VALUES (1, 1, 10, 10, '3,4', 1, 100, 1, '2023-05-20 17:21:27', '2023-05-20 17:21:27', 'admin', 'admin', '0');
INSERT INTO `rc_level` VALUES (2, 20, 30, 30, '3,4', 1, 20, 2, '2023-05-22 09:43:16', '2023-05-22 09:43:16', 'admin', 'admin', '0');

-- ----------------------------
-- Table structure for rc_market
-- ----------------------------
DROP TABLE IF EXISTS `rc_market`;
CREATE TABLE `rc_market`  (
  `market_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `category_id` int(0) NOT NULL COMMENT '类别id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `age` int(0) NULL DEFAULT NULL COMMENT '猪龄',
  `stock` int(0) NULL DEFAULT NULL COMMENT '库存',
  `weight` int(0) NULL DEFAULT NULL COMMENT '重量',
  `insure_coin` int(0) NULL DEFAULT NULL COMMENT '保证金',
  `pick_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '采摘描述',
  `years_limit` tinyint(1) NULL DEFAULT 1 COMMENT '领养年限',
  `is_discount` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[折扣,rc_discount,1=是,2=否]',
  `package_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '套餐 market_id',
  `is_package` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[套餐,rc_package,1=是,2=否]',
  `cost_price` int(0) NULL DEFAULT 0 COMMENT '原价',
  `price` int(0) NULL DEFAULT 0 COMMENT '现价',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`market_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '市场表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_market
-- ----------------------------
INSERT INTO `rc_market` VALUES (1, '1', 1, 'A', '123', 123, 123, 123, 123, '', 1, '1', '0', '1', 123, 0, NULL, 'admin', '2023-05-23 15:37:15', 'admin', '2023-05-23 15:37:15', NULL);
INSERT INTO `rc_market` VALUES (2, '2', 2, 'B', '123', 123, 123, 123, 123, '123', 123, '1', '12', '1', 123, 123, '31', 'admin', '2023-05-23 15:37:35', 'admin', '2023-05-23 15:37:35', NULL);

-- ----------------------------
-- Table structure for rc_market_order
-- ----------------------------
DROP TABLE IF EXISTS `rc_market_order`;
CREATE TABLE `rc_market_order`  (
  `market_order_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `market_id` bigint(0) NULL DEFAULT NULL COMMENT '产品id',
  `order_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `is_insure` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[投保,rc_insure,1=是,2=否]',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `num` int(0) NULL DEFAULT 1 COMMENT '商品数量',
  `total_price` int(0) NULL DEFAULT NULL COMMENT '订单价格',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人\r\n',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[市场订单状态,rc_market_stauts,0=退款,1=正常,2=退款中,3=拒绝退款]',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `is_exchange` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[兑换,rc_exchange,1=是,2=否]',
  PRIMARY KEY (`market_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '市场订单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_market_order
-- ----------------------------
INSERT INTO `rc_market_order` VALUES (1, 1, 1, '1', '1', 1.00, 1, 1, '2023-05-23 17:03:28', '2023-05-23 17:03:28', 'admin', '0', 'admin', '1');

-- ----------------------------
-- Table structure for rc_materia
-- ----------------------------
DROP TABLE IF EXISTS `rc_materia`;
CREATE TABLE `rc_materia`  (
  `material_id` bigint(0) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin` int(0) NULL DEFAULT NULL COMMENT '金币',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[材料类型,rc_material_type,1=白酒,2=食用盐]',
  `weight` decimal(2, 0) NULL DEFAULT NULL COMMENT '重量',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0使用 1停用',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[状态,rc_status,0=正常,1=停用]'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '材料' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_materia
-- ----------------------------

-- ----------------------------
-- Table structure for rc_materia_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_materia_log`;
CREATE TABLE `rc_materia_log`  (
  `log_id` bigint(0) NULL DEFAULT NULL,
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量',
  `reality_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际重量',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `order_id` bigint(0) NULL DEFAULT NULL,
  `materia_id` bigint(0) NULL DEFAULT NULL COMMENT '材料'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '材料日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_materia_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_msg_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_msg_log`;
CREATE TABLE `rc_msg_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[消息类型,rc_msg_type,1=服务消息,2=系统消息]',
  `op` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[消息标识,rc_msg_op,1=赠送小猪,2=合养,3=添加好友,4=赠送礼券]',
  `send_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[消息发送类型,rc_send_type,1=用户,2=农场主]',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '接收人',
  `send_uid` bigint(0) NULL DEFAULT 0 COMMENT '发送人',
  `pig_id` int(0) NULL DEFAULT 0 COMMENT '小猪ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `is_confirm` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[确认,rc_msg_confim,1=是,2=否]',
  `is_read` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[已读,rc_msg_read,1=是,2=否]',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `fruiter_id` bigint(0) NULL DEFAULT NULL COMMENT '果树id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_msg_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_pack_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_pack_config`;
CREATE TABLE `rc_pack_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `pack_category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[碎片种类,rc_pack_category,1=玉米糊]',
  `shop_goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商店商品id',
  `pack_num` int(0) NULL DEFAULT NULL COMMENT '碎片数量',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[碎片类型,rc_pack_type,1=合成,2=掉落]',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '碎片配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_pack_config
-- ----------------------------
INSERT INTO `rc_pack_config` VALUES (1, '1', 1, 10, '2023-05-22 16:21:38', '2023-05-22 16:24:23', 'admin', 'admin', '1');

-- ----------------------------
-- Table structure for rc_pig_part_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_pig_part_config`;
CREATE TABLE `rc_pig_part_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部位名称',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[部位类型,rc_part_type,1=头]',
  `sort` int(0) NOT NULL COMMENT '排序',
  `mode` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[屠宰方式,rc_mode,1=标准,2=精细,3=加工]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `mode_gut` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[屠宰方式类别,rc_mode_gut,1=要内脏,2=不要内脏]',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '猪部位配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_pig_part_config
-- ----------------------------
INSERT INTO `rc_pig_part_config` VALUES (1, '头', '1', 1, '1', 'admin', '2023-05-22 17:15:26', 'admin', '2023-05-22 17:15:26', '1');

-- ----------------------------
-- Table structure for rc_pig_vaccin
-- ----------------------------
DROP TABLE IF EXISTS `rc_pig_vaccin`;
CREATE TABLE `rc_pig_vaccin`  (
  `pig_vaccin_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` tinyint(0) NULL DEFAULT 1 COMMENT '类型:1=疫苗,2=治疗',
  `pig_id` bigint(0) NULL DEFAULT NULL COMMENT '猪id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `coin` int(0) NULL DEFAULT NULL COMMENT '需要缴纳的金币',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `status` tinyint(0) NULL DEFAULT 4 COMMENT '状态:1=已完成,2=等待中,3=治疗中,4=待确认',
  `verify_time` timestamp(0) NULL DEFAULT NULL COMMENT '确认时间',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  PRIMARY KEY (`pig_vaccin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_pig_vaccin
-- ----------------------------

-- ----------------------------
-- Table structure for rc_portal_article
-- ----------------------------
DROP TABLE IF EXISTS `rc_portal_article`;
CREATE TABLE `rc_portal_article`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[门户文章类型,rc_portal_article_type,1=品牌故事,2=领养,3=喂养,4=屠宰,5=果园]',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[门户文章状态,rc_portal_article_status,1=显示,2=隐藏]',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门户文章信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_portal_article
-- ----------------------------

-- ----------------------------
-- Table structure for rc_process_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_process_config`;
CREATE TABLE `rc_process_config`  (
  `config_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `process_coin` int(0) NULL DEFAULT NULL COMMENT '加工费',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量',
  `type` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[加工类型,rc_process_type,1=香肠,2=腊肉]',
  `material_total_coin` int(0) NULL DEFAULT NULL COMMENT '材料总费用',
  `material_ids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '材料ids',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '加工配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_process_config
-- ----------------------------

-- ----------------------------
-- Table structure for rc_process_order
-- ----------------------------
DROP TABLE IF EXISTS `rc_process_order`;
CREATE TABLE `rc_process_order`  (
  `order_id` bigint(0) NOT NULL,
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config_id` bigint(0) NULL DEFAULT NULL COMMENT 'process_config_id',
  `pig_id` int(0) NULL DEFAULT NULL,
  `process_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置名称',
  `process_time` datetime(0) NULL DEFAULT NULL COMMENT '加工时间',
  `process_coin` int(0) NULL DEFAULT NULL COMMENT '加工金币',
  `total_coin` int(0) NULL DEFAULT NULL COMMENT '总金币',
  `meteria_coin` int(0) NULL DEFAULT NULL COMMENT '材料总金币',
  `process_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[加工状态,rc_process_status,1=待加工,2=加工中,3=加工完成]',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[支付状态,rc_order_status,1=待支付,2=已支付,3=取消支付]',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '加工订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_process_order
-- ----------------------------

-- ----------------------------
-- Table structure for rc_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `rc_product_relation`;
CREATE TABLE `rc_product_relation`  (
  `relation_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `pig_product_id` bigint(0) UNSIGNED NOT NULL COMMENT '小猪ID',
  `fruiter_product_id` bigint(0) UNSIGNED NOT NULL COMMENT '果树ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_product_relation
-- ----------------------------

-- ----------------------------
-- Table structure for rc_protocol
-- ----------------------------
DROP TABLE IF EXISTS `rc_protocol`;
CREATE TABLE `rc_protocol`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[类型,rc_protocol_type,1=学院信息,2=用户协议,3=隐私公告,4=关于我们]',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[状态,rc_protocol_status,1=显示,2=隐藏]',
  `sort` int(0) NULL DEFAULT 100 COMMENT '排序',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门户信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_protocol
-- ----------------------------

-- ----------------------------
-- Table structure for rc_recharge_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_recharge_log`;
CREATE TABLE `rc_recharge_log`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '充值记录ID',
  `user_id` bigint(0) UNSIGNED NOT NULL COMMENT '充值用户ID',
  `pay_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[充值类型,rc_recharge_type,1=支付宝,2=VX]',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水号',
  `amount` decimal(10, 2) NOT NULL COMMENT '充值金额',
  `status` tinyint(0) UNSIGNED NOT NULL COMMENT '[充值状态,rc_recharge_status,0=待支付,1=支付成功,2=支付失败]',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `coin` int(0) NULL DEFAULT NULL COMMENT '金币',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_recharge_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_recharge_plans
-- ----------------------------
DROP TABLE IF EXISTS `rc_recharge_plans`;
CREATE TABLE `rc_recharge_plans`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '方案ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '充值方案名称，例如1000钻石大礼包',
  `price` int(0) NOT NULL DEFAULT 0 COMMENT '充值方案价格，单位为分，例如100元表示一元钱',
  `coin` int(0) NOT NULL DEFAULT 0 COMMENT '充值获取的虚拟货币数量，可以是金币、钻石',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用于记录一些特别的说明，例如是否限购、是否赠送额外物品等',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值方案表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_recharge_plans
-- ----------------------------

-- ----------------------------
-- Table structure for rc_redeem_code
-- ----------------------------
DROP TABLE IF EXISTS `rc_redeem_code`;
CREATE TABLE `rc_redeem_code`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `redeem_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '兑换码',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `coin` int(0) NULL DEFAULT NULL COMMENT '金币',
  `reality_coin` int(0) NULL DEFAULT NULL COMMENT '实际金币',
  `status` tinyint(0) NOT NULL DEFAULT 2 COMMENT '[兑换码状态,rc_redeem_code_status,1=已使用,2=未使用,3=已过期]',
  `expire_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `used_time` timestamp(0) NULL DEFAULT NULL COMMENT '使用时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `config_id` bigint(0) NULL DEFAULT NULL COMMENT '兑换配置id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `redeem_code_unique`(`redeem_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '兑换码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_redeem_code
-- ----------------------------

-- ----------------------------
-- Table structure for rc_redeem_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_redeem_config`;
CREATE TABLE `rc_redeem_config`  (
  `config_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '[兑换类型,rc_redeem_type,1=市场,2=商品]',
  `coin` int(0) NULL DEFAULT NULL COMMENT '金币',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  `market_id` bigint(0) NULL DEFAULT NULL COMMENT '市场id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '兑换配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_redeem_config
-- ----------------------------
INSERT INTO `rc_redeem_config` VALUES (1, '2', 50, 1, NULL, 'admin', '2023-05-22 13:19:04', 'admin', '2023-05-22 15:10:03');
INSERT INTO `rc_redeem_config` VALUES (2, '2', 88, 1, NULL, 'admin', '2023-05-22 15:05:43', 'admin', '2023-05-22 15:05:43');

-- ----------------------------
-- Table structure for rc_service_base
-- ----------------------------
DROP TABLE IF EXISTS `rc_service_base`;
CREATE TABLE `rc_service_base`  (
  `service_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[基础服务类别,rc_service_base_type,0=食物,1=农资]',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `is_patch` tinyint(1) NULL DEFAULT 1 COMMENT '[发放碎片,rc_service_base_patch,1=是,2=否]',
  `patch_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '碎片图片',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '[状态,rc_status,0=正常,1=停用]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础食物配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_service_base
-- ----------------------------
INSERT INTO `rc_service_base` VALUES (3, '食物1', '0', NULL, 1, NULL, '2023-05-20 14:34:33', '2023-05-20 14:34:33', '0', 'admin', 'admin', 1);
INSERT INTO `rc_service_base` VALUES (4, '农资1', '1', NULL, 1, NULL, '2023-05-20 14:35:01', '2023-05-20 14:35:01', '0', 'admin', 'admin', 2);

-- ----------------------------
-- Table structure for rc_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `rc_shop_category`;
CREATE TABLE `rc_shop_category`  (
  `category_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[状态,rc_status,0=正常,1=停用]',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[删除标志,rc_del_flag,0=正常,2=删除]',
  `sort` int(0) NULL DEFAULT NULL COMMENT '分类排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_shop_category
-- ----------------------------
INSERT INTO `rc_shop_category` VALUES (1, '分类1', '0', '0', 1, 'admin', 'admin', '2023-05-20 18:06:17', '2023-05-20 18:06:17');
INSERT INTO `rc_shop_category` VALUES (2, '分类2', '0', '0', 2, 'admin', 'admin', '2023-05-20 18:06:24', '2023-05-20 18:06:24');

-- ----------------------------
-- Table structure for rc_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `rc_shop_goods`;
CREATE TABLE `rc_shop_goods`  (
  `goods_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` bigint(0) NOT NULL COMMENT '商品类目id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `level_id` bigint(0) NOT NULL COMMENT '商品适用等级id',
  `months` int(0) NULL DEFAULT NULL COMMENT '商品适用月份',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `is_discount` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[折扣,rc_discount,1=是,2=否]',
  `cost_price` int(0) NOT NULL COMMENT '原价',
  `price` int(0) NOT NULL COMMENT '商品价格',
  `settle_price` int(0) NOT NULL COMMENT '结算价格',
  `stock` int(0) NOT NULL DEFAULT 0 COMMENT '库存',
  `weight` decimal(10, 2) NOT NULL COMMENT '重量',
  `is_send` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[赠送状态,rc_send,1=否,2=是]',
  `is_package` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[套餐,rc_package,1=是,2=否]',
  `package_use_goods` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '套餐使用商品',
  `goods_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[商品状态,rc_goods_status,1=上架,2=下架]',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商店商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_shop_goods
-- ----------------------------
INSERT INTO `rc_shop_goods` VALUES (1, 1, '1', 1, 1, '商品1', NULL, '1', 10, 10, 10, 10, 1.00, '1', '1', '1', '1', 1, 'admin', 'admin', '2023-05-22 10:39:36', '2023-05-20 18:24:53');

-- ----------------------------
-- Table structure for rc_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `rc_shop_order`;
CREATE TABLE `rc_shop_order`  (
  `order_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `months` int(0) NULL DEFAULT NULL COMMENT '商品适用月份',
  `order_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `is_discount` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[折扣,rc_discount,1=是,2=否]',
  `goods_coin` int(0) NOT NULL COMMENT '商品总金币',
  `weight` decimal(10, 2) NOT NULL COMMENT '总重量',
  `is_send` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[赠送状态,rc_send,1=否,2=是]',
  `is_package` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[套餐,rc_package,1=是,2=否]',
  `package_use_goods` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '套餐使用商品',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '[支付状态,rc_order_status,1=待支付,2=已支付,3=取消支付]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商店订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_shop_order
-- ----------------------------
INSERT INTO `rc_shop_order` VALUES (1, '1', 123, '123', '1', 123, 123.00, '1', '1', '1', '1', 'admin', 'admin', '2023-05-22 11:17:40', '2023-05-22 11:17:40');

-- ----------------------------
-- Table structure for rc_sms_code
-- ----------------------------
DROP TABLE IF EXISTS `rc_sms_code`;
CREATE TABLE `rc_sms_code`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[短信类型,sms_code_type,1=验证码,2=活动信息]',
  `code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信验证码',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_sms_code
-- ----------------------------

-- ----------------------------
-- Table structure for rc_sms_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_sms_log`;
CREATE TABLE `rc_sms_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '短信内容',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[短信类型,rc_sms_log_type,1=登录,2=注册,3=修改密码,4=找回密码]',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结果',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[短信状态,rc_sms_status,1=成功,2=失败]',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_sms_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_time_config
-- ----------------------------
DROP TABLE IF EXISTS `rc_time_config`;
CREATE TABLE `rc_time_config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[时间配置类型,rc_time_config_type,1=屠宰,2=加工,3=采摘]',
  `num` int(0) NOT NULL COMMENT '数量',
  `day` datetime(0) NOT NULL COMMENT '时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '时间配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_time_config
-- ----------------------------
INSERT INTO `rc_time_config` VALUES (1, '1', 12, '2023-05-24 00:00:00', 'admin', '2023-05-22 15:17:34', 'admin', '2023-05-22 15:17:34');
INSERT INTO `rc_time_config` VALUES (2, '2', 12, '2023-05-25 00:00:00', 'admin', '2023-05-22 15:17:48', 'admin', '2023-05-22 15:17:48');
INSERT INTO `rc_time_config` VALUES (3, '3', 33, '2023-05-27 00:00:00', 'admin', '2023-05-22 15:17:57', 'admin', '2023-05-22 15:17:57');

-- ----------------------------
-- Table structure for rc_user
-- ----------------------------
DROP TABLE IF EXISTS `rc_user`;
CREATE TABLE `rc_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `wx_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户微信openid',
  `mini_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序用户openid',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `receivable_pack` int(0) NULL DEFAULT 0 COMMENT '可收取碎片',
  `total_pack` int(0) NULL DEFAULT 0 COMMENT '碎片总数',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `coins` bigint(0) NULL DEFAULT 0 COMMENT '持有金币数',
  `coin_consume` bigint(0) NULL DEFAULT 0 COMMENT '消耗金币数',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[用户性别,rc_sex,0=男,1=女,2=未知]',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证ID',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[帐号状态,rc_user_status,0=正常,1=禁用,2=已注销]',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '[删除标志,rc_del_flag,0=正常,2=删除]',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `referrer` bigint(0) NULL DEFAULT NULL COMMENT '直推',
  `invite_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邀请码',
  `jpush_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '极光推送id',
  `pay_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user
-- ----------------------------
INSERT INTO `rc_user` VALUES (1, 'u1000288', NULL, NULL, 'ranch', 0, 0, 'ranch', 0, 0, '', '', '0', 'http://yipinnongchang.oss-cn-beijing.aliyuncs.com/user-images/3cd8e392ed629bf4191a5b1e16d60cff.jpg', NULL, NULL, '', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rc_user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_addresses`;
CREATE TABLE `rc_user_addresses`  (
  `address_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '收货地址ID',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人电话',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在省份',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在城市',
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在区县',
  `detail_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `is_default` tinyint(0) NULL DEFAULT 0 COMMENT '[默认地址,rc_address_default,1=是,2=否]',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user_addresses
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_friend
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_friend`;
CREATE TABLE `rc_user_friend`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `fuid` bigint(0) NULL DEFAULT NULL COMMENT '好友uid',
  `is_steal` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[偷取,rc_steal,1=是,2=否]',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[好友通过状态,rc_friend_status,1=已同意,2=等待中,3=已拒绝]',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好友' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_user_friend
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_fruiter
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_fruiter`;
CREATE TABLE `rc_user_fruiter`  (
  `fruiter_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '果树ID',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `market_id` bigint(0) NULL DEFAULT NULL COMMENT '领养种类',
  `raise_user_ids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合养人',
  `farmer_id` bigint(0) NULL DEFAULT NULL COMMENT '农户id',
  `farmer_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户名称',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `level` int(0) NULL DEFAULT 31 COMMENT '当前等级',
  `sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领养编号',
  `coin` int(0) NULL DEFAULT NULL COMMENT '保证金金币',
  `is_raise` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[合养,rc_raise,1=是,2=否]',
  `is_insure` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[投保,rc_insure,1=是,2=否]',
  `is_control` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '[托管,rc_control,1=是,2=否]',
  `control_day` int(0) NULL DEFAULT NULL COMMENT '托管天数',
  `unlock_month` int(0) NOT NULL DEFAULT 0 COMMENT '已解锁月份',
  `seat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `camera_id` bigint(0) NULL DEFAULT NULL COMMENT '摄像id',
  `freeze_credit` decimal(10, 2) NULL DEFAULT NULL COMMENT '农户冻结金额',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '[果树状态,rc_fruiter_status,1=准备中,2=正常,3=采摘中,4=已采摘,5=死亡]',
  `service_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '4' COMMENT '[果树服务状态,rc_fruiter_service_status,1=已服务,2=未服务]',
  `settlement_method` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[农户结算方式,rc_settlement_method,1=任务分配,2=总数分配]',
  `trace_source_code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '溯源码地址',
  `pick_time` timestamp(0) NULL DEFAULT NULL COMMENT '采摘时间',
  `market_order_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '购买订单id',
  `min_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '保底收成',
  `like_num` int(0) NULL DEFAULT 0 COMMENT '点赞数量',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_exchange` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[兑换,rc_exchange,1=是,2=否]',
  PRIMARY KEY (`fruiter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户果树表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user_fruiter
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_pack_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_pack_log`;
CREATE TABLE `rc_user_pack_log`  (
  `log_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `pay_user_id` bigint(0) NULL DEFAULT NULL COMMENT '支出用户ID',
  `pack_config_id` bigint(0) NULL DEFAULT 0 COMMENT '碎片配置id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[碎片日志类型,rc_pack_log_type,1=收入,2=支出]',
  `warehouse_id` bigint(0) NULL DEFAULT 0 COMMENT '用户仓库物品id',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人\r\n',
  `before_pack` int(0) NULL DEFAULT NULL COMMENT '支出/收入前 碎片',
  `after_pack` int(0) NULL DEFAULT NULL COMMENT '支出/收入后 碎片',
  `income_user_id` int(0) NULL DEFAULT NULL COMMENT '收入用户id',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '碎片日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_user_pack_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_pig
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_pig`;
CREATE TABLE `rc_user_pig`  (
  `pig_id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '小猪ID',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `market_id` bigint(0) NULL DEFAULT NULL COMMENT '领养种类',
  `raise_user_ids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合养人',
  `farmer_id` bigint(0) NULL DEFAULT NULL COMMENT '农户id',
  `farmer_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户名称',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `level` int(0) NULL DEFAULT 31 COMMENT '当前等级',
  `sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领养编号',
  `coin` int(0) NULL DEFAULT NULL COMMENT '备用金金币',
  `used_coin` int(0) NULL DEFAULT NULL COMMENT '消耗金币',
  `is_raise` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[合养,rc_raise,1=是,2=否]',
  `is_insure` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[投保,rc_insure,1=是,2=否]',
  `is_pig_insure` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[投保养猪险,rc_pig_insure,1=是,2=否]',
  `is_control` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[托管,rc_control,1=是,2=否]',
  `control_day` int(0) NULL DEFAULT NULL COMMENT '托管天数',
  `seat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `camera_id` bigint(0) NULL DEFAULT NULL COMMENT '摄像id',
  `freeze_credit` decimal(10, 2) NULL DEFAULT NULL COMMENT '农户冻结金额',
  `part_num` int(0) NOT NULL COMMENT '部位数量',
  `mode` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[屠宰方式,rc_mode,1=标准,2=精细,3=加工]',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '[用户猪状态,rc_user_pig_status,1=准备中,2=正常,3=已预约,4=屠宰中 5已完成,0=死亡]',
  `feed_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '4' COMMENT '[喂养,rc_feed,1=已喂养,2=待喂养]',
  `settlement_method` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[农户结算方式,rc_settlement_method,1=任务分配,2=总数分配]',
  `trace_source_code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '溯源码地址',
  `slaughter_at` datetime(0) NULL DEFAULT NULL COMMENT '屠宰时间',
  `is_pig_king` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[猪王,rc_pig_king,1=是,2=否]',
  `market_order_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '购买订单id',
  `like_num` int(0) NULL DEFAULT 0 COMMENT '点赞数量',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `is_first_name` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[第一次改名,rc_first_name,1=否,2=是]',
  `is_exchange` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[兑换,rc_exchange,1=是,2=否]',
  `mode_gut` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[屠宰方式类别,rc_mode_gut,1=要内脏,2=不要内脏]',
  `invite_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请码',
  PRIMARY KEY (`pig_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户小猪表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user_pig
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_service_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_service_log`;
CREATE TABLE `rc_user_service_log`  (
  `log_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `feed_type` tinyint(0) NULL DEFAULT 1 COMMENT '[喂养类型,rc_feed_type,1=早,2=中,3=晚]',
  `type` tinyint(0) NULL DEFAULT 1 COMMENT '[服务类型,rc_service_type,1=喂养,2=服务,3=治疗,4=耕作]',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '喂养用户',
  `farmer_id` bigint(0) NULL DEFAULT NULL COMMENT '农场主',
  `fruiter_id` bigint(0) NULL DEFAULT NULL COMMENT '果树id',
  `pig_id` bigint(0) NULL DEFAULT NULL COMMENT '猪ID',
  `status` tinyint(0) NULL DEFAULT 2 COMMENT '[服务状态,rc_service_status,1=已完成,2=等待中,3=进行中]',
  `start_time` timestamp(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '结束时间',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量',
  `reality_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际重量',
  `opr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作',
  `use_coin` int(0) NULL DEFAULT 0 COMMENT '消耗金币',
  `feedback_type` tinyint(1) NULL DEFAULT NULL COMMENT '[反馈类型,rc_feedback_type,1=反馈,2=点赞]',
  `feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈',
  `feedback_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈详情',
  `feedback_status` tinyint(1) NULL DEFAULT 4 COMMENT '[反馈状态,rc_feedback_status,1=已提交,2=处理中,3=已完成,4=未反馈]',
  `feedback_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈结果',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `warehouse_id` bigint(0) NULL DEFAULT NULL COMMENT '用户仓库id',
  `video_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频名称',
  `video_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '视频URL',
  `file_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[视频文件格式,rc_file_type,1=mp4,2=rmvb,3=avi]',
  `duration` bigint(0) NULL DEFAULT NULL COMMENT '视频时长（秒）',
  `resolution` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频分辨率',
  `video_status` tinyint(0) UNSIGNED NULL DEFAULT NULL COMMENT '[视频状态,rc_video_status,0=停用,1=正常,2=删除]',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农/用户操作记录日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_user_service_log
-- ----------------------------

-- ----------------------------
-- Table structure for rc_user_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_warehouse`;
CREATE TABLE `rc_user_warehouse`  (
  `warehouse_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '仓库配送物品id',
  `pet_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[市场类别,ranch_market_category,1=猪,2=树]',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '[用户物品使用状态,rc_user_warehouse_status,1=未使用,2=已使用,3=托管]',
  `shop_order_id` bigint(0) NULL DEFAULT NULL COMMENT '对应订单ID',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品ID',
  `shop_category_id` bigint(0) NULL DEFAULT NULL COMMENT '类目id',
  `months` int(0) NULL DEFAULT 0 COMMENT '适用月份',
  `pig_id` bigint(0) NULL DEFAULT 0 COMMENT '使用物品猪ID',
  `fruiter_id` bigint(0) NULL DEFAULT 0 COMMENT '使用物品果树id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `dosage_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加量食物',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `is_send` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '[赠送状态,rc_send,1=否,2=是]',
  `is_package` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[套餐,rc_package,1=是,2=否]',
  `is_exchange` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[兑换,rc_exchange,1=是,2=否]',
  `package_use` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '套餐使用商品',
  `applied_level_min` int(0) NULL DEFAULT NULL COMMENT '最低适用等级',
  `applied_level_max` int(0) NULL DEFAULT NULL COMMENT '最高适用等级',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `is_compose` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '[合成,rc_compose,1=是,2=否]',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户仓库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user_warehouse
-- ----------------------------

-- ----------------------------
-- Table structure for rc_vaccin
-- ----------------------------
DROP TABLE IF EXISTS `rc_vaccin`;
CREATE TABLE `rc_vaccin`  (
  `vaccin_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` tinyint(0) NULL DEFAULT 1 COMMENT '疫苗名称',
  `coin` int(0) NULL DEFAULT NULL COMMENT '需要金币',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `status` tinyint(0) NULL DEFAULT 4 COMMENT '[疫苗状态,rc_vaccin_status,1=上架,2=下架]',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  PRIMARY KEY (`vaccin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '疫苗表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rc_vaccin
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-04-20 16:47:53', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
INSERT INTO `sys_config` VALUES (7, '用户端-短信验证码开关', 'ranch.user.sms', 'true', 'Y', 'admin', '2023-04-28 13:09:32', 'admin', '2023-04-28 13:11:17', '是否短信验证码功能（true false）');
INSERT INTO `sys_config` VALUES (8, '用户端-微信app授权登录开关', 'ranch.user.wxapp', 'true', 'Y', 'admin', '2023-04-28 13:13:18', '', NULL, '是否允许微信app授权开关（true false）');
INSERT INTO `sys_config` VALUES (9, '用户端-微信小程序授权登录开关', 'ranch.user.wxmini', 'true', 'Y', 'admin', '2023-04-28 13:14:33', '', NULL, '是否开启微信小程序授权登录（true false）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-20 16:47:50', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-04-20 16:47:53', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-04-20 16:47:53', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-04-20 16:47:53', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-04-20 16:47:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-20 17:29:32');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-20 17:29:37');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-20 17:30:09');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-20 17:30:14');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-20 17:31:32');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-20 17:31:36');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-20 17:31:39');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-22 14:12:38');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-26 10:38:10');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-26 11:17:23');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-26 11:17:26');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-26 15:33:53');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-26 16:27:13');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-27 14:26:20');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-28 11:04:25');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-28 13:07:22');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-28 14:01:10');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-28 14:12:09');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-28 14:12:53');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-28 17:54:30');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2023-05-02 14:06:56');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-03 17:40:55');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-05 14:23:40');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-05 17:33:16');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 11:07:21');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 11:55:03');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 14:11:25');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 09:38:50');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 17:23:54');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-11 10:42:45');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-11 16:05:56');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-11 18:00:49');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-12 09:40:29');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-12 13:18:04');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-12 15:19:48');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-13 13:18:17');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-13 15:08:23');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-13 15:49:48');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-18 16:57:48');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-18 18:09:16');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-19 18:13:56');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 09:34:18');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 10:20:25');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 13:03:28');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-20 13:40:38');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 13:40:42');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-20 17:50:17');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 17:50:21');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-22 09:37:56');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-22 13:12:44');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-22 13:12:50');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-22 13:12:54');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-23 09:40:32');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-23 10:33:47');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-23 13:07:08');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-23 14:20:09');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-24 11:05:38');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-24 13:08:02');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1255 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-04-20 16:47:51', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-04-20 16:47:51', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-04-20 16:47:51', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '门户网站', 0, 4, 'http://www.sync88.com', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2023-04-20 16:47:51', 'admin', '2023-05-05 14:42:53', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-04-20 16:47:51', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-04-20 16:47:51', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-04-20 16:47:51', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-04-20 16:47:51', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-04-20 16:47:51', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-04-20 16:47:51', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-04-20 16:47:51', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-04-20 16:47:51', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-04-20 16:47:51', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-04-20 16:47:51', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-04-20 16:47:51', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-04-20 16:47:51', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-04-20 16:47:51', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-04-20 16:47:51', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-04-20 16:47:51', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-04-20 16:47:51', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-04-20 16:47:51', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-04-20 16:47:51', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-04-20 16:47:51', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-04-20 16:47:51', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '用户信息', 1067, 1, 'user', 'front/user/index', NULL, 1, 0, 'C', '0', '0', 'front:user:list', 'user', 'admin', '2023-04-28 13:54:46', 'admin', '2023-04-28 14:08:57', '用户信息菜单');
INSERT INTO `sys_menu` VALUES (1062, '用户信息查询', 1061, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:query', '#', 'admin', '2023-04-28 13:54:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '用户信息新增', 1061, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:add', '#', 'admin', '2023-04-28 13:54:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '用户信息修改', 1061, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:edit', '#', 'admin', '2023-04-28 13:54:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '用户信息删除', 1061, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:remove', '#', 'admin', '2023-04-28 13:54:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '用户信息导出', 1061, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:export', '#', 'admin', '2023-04-28 13:54:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '用户管理', 0, 8, 'front', NULL, NULL, 1, 0, 'M', '0', '0', '', 'server', 'admin', '2023-04-28 14:04:19', 'admin', '2023-05-05 14:41:09', '');
INSERT INTO `sys_menu` VALUES (1068, '市场管理', 0, 5, 'market', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'shopping', 'admin', '2023-05-05 14:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '商店管理', 0, 6, 'store', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'money', 'admin', '2023-05-05 14:28:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '农户管理', 0, 7, 'farmer', NULL, NULL, 1, 0, 'M', '0', '0', '', 'international', 'admin', '2023-05-05 14:33:51', 'admin', '2023-05-05 14:40:46', '');
INSERT INTO `sys_menu` VALUES (1071, '配置管理', 0, 9, 'config', NULL, NULL, 1, 0, 'M', '0', '0', '', 'swagger', 'admin', '2023-05-05 14:34:41', 'admin', '2023-05-05 14:41:40', '');
INSERT INTO `sys_menu` VALUES (1072, '消息管理', 0, 10, 'message', NULL, NULL, 1, 0, 'M', '0', '0', '', 'message', 'admin', '2023-05-05 14:35:22', 'admin', '2023-05-05 14:41:51', '');
INSERT INTO `sys_menu` VALUES (1073, '兑换管理', 0, 11, 'exchange', NULL, NULL, 1, 0, 'M', '0', '0', '', 'international', 'admin', '2023-05-05 14:38:53', 'admin', '2023-05-05 14:42:02', '');
INSERT INTO `sys_menu` VALUES (1074, '市场类别', 1068, 1, 'category', 'front/category/index', NULL, 1, 0, 'C', '0', '0', 'front:category:list', 'list', 'admin', '2023-05-05 14:54:14', 'admin', '2023-05-05 17:40:31', '类别菜单');
INSERT INTO `sys_menu` VALUES (1075, '类别查询', 1074, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:category:query', '#', 'admin', '2023-05-05 14:54:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '类别新增', 1074, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:category:add', '#', 'admin', '2023-05-05 14:54:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1077, '类别修改', 1074, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:category:edit', '#', 'admin', '2023-05-05 14:54:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '类别删除', 1074, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:category:remove', '#', 'admin', '2023-05-05 14:54:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '类别导出', 1074, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:category:export', '#', 'admin', '2023-05-05 14:54:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1080, '市场列表', 1068, 1, 'market', 'front/market/index', NULL, 1, 0, 'C', '0', '0', 'front:market:list', 'form', 'admin', '2023-05-08 14:17:19', 'admin', '2023-05-11 16:06:27', '市场菜单');
INSERT INTO `sys_menu` VALUES (1081, '市场查询', 1080, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market:query', '#', 'admin', '2023-05-08 14:17:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1082, '市场新增', 1080, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market:add', '#', 'admin', '2023-05-08 14:17:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '市场修改', 1080, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market:edit', '#', 'admin', '2023-05-08 14:17:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '市场删除', 1080, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market:remove', '#', 'admin', '2023-05-08 14:17:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '市场导出', 1080, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market:export', '#', 'admin', '2023-05-08 14:17:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1086, '商品分类导出', 1104, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_category:export', '#', 'admin', '2023-05-10 16:53:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1087, '商品分类删除', 1104, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_category:remove', '#', 'admin', '2023-05-10 16:53:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1088, '商品分类修改', 1104, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_category:edit', '#', 'admin', '2023-05-10 16:53:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1089, '商品分类新增', 1104, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_category:add', '#', 'admin', '2023-05-10 16:53:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1090, '商品分类查询', 1104, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_category:query', '#', 'admin', '2023-05-10 16:53:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1091, '商品分类', 1069, 1, 'shop_category', 'front/shop_category/index', NULL, 1, 0, 'C', '0', '0', 'front:shop_category:list', 'list', 'admin', '2023-05-10 16:53:49', 'admin', '2023-05-10 17:25:25', '商品分类菜单');
INSERT INTO `sys_menu` VALUES (1092, '商品', 1069, 1, 'shop_goods', 'front/shop_goods/index', NULL, 1, 0, 'C', '0', '0', 'front:shop_goods:list', 'list', 'admin', '2023-05-13 10:46:31', 'admin', '2023-05-22 10:41:07', '商品菜单');
INSERT INTO `sys_menu` VALUES (1093, '商品查询', 1092, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_goods:query', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1094, '商品新增', 1092, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_goods:add', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1095, '商品修改', 1092, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_goods:edit', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1096, '商品删除', 1092, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_goods:remove', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1097, '商品导出', 1092, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:shop_goods:export', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1104, '等级', 1071, 1, 'level', 'front/level/index', NULL, 1, 0, 'C', '0', '0', 'front:level:list', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '等级菜单');
INSERT INTO `sys_menu` VALUES (1105, '等级查询', 1104, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:level:query', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1106, '等级新增', 1104, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:level:add', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1107, '等级修改', 1104, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:level:edit', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1108, '等级删除', 1104, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:level:remove', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1109, '等级导出', 1104, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:level:export', '#', 'admin', '2023-05-13 10:46:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1122, '食物农资配置', 1071, 1, 'service_base', 'front/service_base/index', NULL, 1, 0, 'C', '0', '0', 'front:service_base:list', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '食物农资配置菜单');
INSERT INTO `sys_menu` VALUES (1123, '食物农资配置查询', 1122, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:service_base:query', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1124, '食物农资配置新增', 1122, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:service_base:add', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1125, '食物农资配置修改', 1122, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:service_base:edit', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1126, '食物农资配置删除', 1122, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:service_base:remove', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1127, '食物农资配置导出', 1122, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:service_base:export', '#', 'admin', '2023-05-20 13:46:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1128, '商店订单', 1069, 1, 'goods_order', 'front/shop_order/index', NULL, 1, 0, 'C', '0', '0', 'front:goods_order:list', 'list', 'admin', '2023-05-22 11:06:35', 'admin', '2023-05-22 11:07:18', '商店订单菜单');
INSERT INTO `sys_menu` VALUES (1129, '商店订单查询', 1128, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:goods_order:query', '#', 'admin', '2023-05-22 11:06:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1130, '商店订单新增', 1128, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:goods_order:add', '#', 'admin', '2023-05-22 11:06:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1131, '商店订单修改', 1128, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:goods_order:edit', '#', 'admin', '2023-05-22 11:06:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1132, '商店订单删除', 1128, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:goods_order:remove', '#', 'admin', '2023-05-22 11:06:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1133, '商店订单导出', 1128, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:goods_order:export', '#', 'admin', '2023-05-22 11:06:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1140, '兑换配置', 1071, 1, 'redeem_config', 'front/redeem_config/index', NULL, 1, 0, 'C', '0', '0', 'front:redeem_config:list', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '兑换配置菜单');
INSERT INTO `sys_menu` VALUES (1141, '兑换配置查询', 1140, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:redeem_config:query', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1142, '兑换配置新增', 1140, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:redeem_config:add', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1143, '兑换配置修改', 1140, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:redeem_config:edit', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1144, '兑换配置删除', 1140, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:redeem_config:remove', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1145, '兑换配置导出', 1140, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:redeem_config:export', '#', 'admin', '2023-05-22 11:28:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1146, '时间配置', 1071, 1, 'time_config', 'front/time_config/index', NULL, 1, 0, 'C', '0', '0', 'front:time_config:list', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '时间配置菜单');
INSERT INTO `sys_menu` VALUES (1147, '时间配置查询', 1146, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:time_config:query', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1148, '时间配置新增', 1146, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:time_config:add', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1149, '时间配置修改', 1146, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:time_config:edit', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1150, '时间配置删除', 1146, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:time_config:remove', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1151, '时间配置导出', 1146, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:time_config:export', '#', 'admin', '2023-05-22 15:13:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1158, '碎片配置', 1071, 1, 'pack_config', 'front/pack_config/index', NULL, 1, 0, 'C', '0', '0', 'front:pack_config:list', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '碎片配置菜单');
INSERT INTO `sys_menu` VALUES (1159, '碎片配置查询', 1158, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pack_config:query', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1160, '碎片配置新增', 1158, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pack_config:add', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1161, '碎片配置修改', 1158, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pack_config:edit', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1162, '碎片配置删除', 1158, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pack_config:remove', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1163, '碎片配置导出', 1158, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pack_config:export', '#', 'admin', '2023-05-22 15:45:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1164, '猪部位配置', 1071, 1, 'pig_part_config', 'front/pig_part_config/index', NULL, 1, 0, 'C', '0', '0', 'front:pig_part_config:list', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '猪部位配置菜单');
INSERT INTO `sys_menu` VALUES (1165, '猪部位配置查询', 1164, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pig_part_config:query', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1166, '猪部位配置新增', 1164, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pig_part_config:add', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1167, '猪部位配置修改', 1164, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pig_part_config:edit', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1168, '猪部位配置删除', 1164, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pig_part_config:remove', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1169, '猪部位配置导出', 1164, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:pig_part_config:export', '#', 'admin', '2023-05-22 17:03:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1170, '加工配置', 1071, 1, 'process_config', 'front/process_config/index', NULL, 1, 0, 'C', '0', '0', 'front:process_config:list', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '加工配置菜单');
INSERT INTO `sys_menu` VALUES (1171, '加工配置查询', 1170, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:process_config:query', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1172, '加工配置新增', 1170, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:process_config:add', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1173, '加工配置修改', 1170, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:process_config:edit', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1174, '加工配置删除', 1170, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:process_config:remove', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1175, '加工配置导出', 1170, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:process_config:export', '#', 'admin', '2023-05-22 17:03:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1176, '预约单配置', 1071, 1, 'appointment_config', 'front/appointment_config/index', NULL, 1, 0, 'C', '0', '0', 'front:appointment_config:list', '#', 'admin', '2023-05-22 17:44:18', '', NULL, '预约单配置菜单');
INSERT INTO `sys_menu` VALUES (1177, '预约单配置查询', 1176, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_config:query', '#', 'admin', '2023-05-22 17:44:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1178, '预约单配置新增', 1176, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_config:add', '#', 'admin', '2023-05-22 17:44:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1179, '预约单配置修改', 1176, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_config:edit', '#', 'admin', '2023-05-22 17:44:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1180, '预约单配置删除', 1176, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_config:remove', '#', 'admin', '2023-05-22 17:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1181, '预约单配置导出', 1176, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_config:export', '#', 'admin', '2023-05-22 17:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1194, '邀请奖励配置', 1071, 1, 'invite_config', 'front/invite_config/index', NULL, 1, 0, 'C', '0', '0', 'front:invite_config:list', '#', 'admin', '2023-05-22 18:11:32', '', NULL, '邀请奖励配置菜单');
INSERT INTO `sys_menu` VALUES (1195, '邀请奖励配置查询', 1194, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:invite_config:query', '#', 'admin', '2023-05-22 18:11:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1196, '邀请奖励配置新增', 1194, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:invite_config:add', '#', 'admin', '2023-05-22 18:11:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1197, '邀请奖励配置修改', 1194, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:invite_config:edit', '#', 'admin', '2023-05-22 18:11:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1198, '邀请奖励配置删除', 1194, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:invite_config:remove', '#', 'admin', '2023-05-22 18:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1199, '邀请奖励配置导出', 1194, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:invite_config:export', '#', 'admin', '2023-05-22 18:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1200, '配置', 1071, 1, 'config', 'front/config/index', NULL, 1, 0, 'C', '0', '0', 'front:config:list', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '配置菜单');
INSERT INTO `sys_menu` VALUES (1201, '配置查询', 1200, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:config:query', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1202, '配置新增', 1200, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:config:add', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1203, '配置修改', 1200, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:config:edit', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1204, '配置删除', 1200, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:config:remove', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1205, '配置导出', 1200, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:config:export', '#', 'admin', '2023-05-22 18:12:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1206, '订单管理', 0, 12, 'order', NULL, NULL, 1, 0, 'M', '0', '0', '', 'documentation', 'admin', '2023-05-23 09:44:06', 'admin', '2023-05-23 09:44:28', '');
INSERT INTO `sys_menu` VALUES (1207, '预约单', 1206, 1, 'appointment_order', 'front/appointment_order/index', NULL, 1, 0, 'C', '0', '0', 'front:appointment_order:list', '#', 'admin', '2023-05-23 11:07:40', '', NULL, '预约单菜单');
INSERT INTO `sys_menu` VALUES (1208, '预约单查询', 1207, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_order:query', '#', 'admin', '2023-05-23 11:07:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1209, '预约单新增', 1207, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_order:add', '#', 'admin', '2023-05-23 11:07:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1210, '预约单修改', 1207, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_order:edit', '#', 'admin', '2023-05-23 11:07:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1211, '预约单删除', 1207, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_order:remove', '#', 'admin', '2023-05-23 11:07:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1212, '预约单导出', 1207, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:appointment_order:export', '#', 'admin', '2023-05-23 11:07:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1213, '市场订单', 1068, 1, 'market_order', 'front/market_order/index', NULL, 1, 0, 'C', '0', '0', 'front:market_order:list', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '市场订单菜单');
INSERT INTO `sys_menu` VALUES (1214, '市场订单查询', 1213, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market_order:query', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1215, '市场订单新增', 1213, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market_order:add', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1216, '市场订单修改', 1213, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market_order:edit', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1217, '市场订单删除', 1213, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market_order:remove', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1218, '市场订单导出', 1213, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:market_order:export', '#', 'admin', '2023-05-23 16:46:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1219, '用户信息', 1061, 1, 'user', 'front/user/index', NULL, 1, 0, 'C', '0', '0', 'front:user:list', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '用户信息菜单');
INSERT INTO `sys_menu` VALUES (1220, '用户信息查询', 1219, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:query', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1221, '用户信息新增', 1219, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:add', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1222, '用户信息修改', 1219, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:edit', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1223, '用户信息删除', 1219, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:remove', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1224, '用户信息导出', 1219, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user:export', '#', 'admin', '2023-05-23 18:04:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1225, '用户仓库', 1067, 1, 'user_warehouse', 'front/user_warehouse/index', NULL, 1, 0, 'C', '0', '0', 'front:user_warehouse:list', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '用户仓库菜单');
INSERT INTO `sys_menu` VALUES (1226, '用户仓库查询', 1225, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_warehouse:query', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1227, '用户仓库新增', 1225, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_warehouse:add', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1228, '用户仓库修改', 1225, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_warehouse:edit', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1229, '用户仓库删除', 1225, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_warehouse:remove', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1230, '用户仓库导出', 1225, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_warehouse:export', '#', 'admin', '2023-05-23 18:04:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1231, '用户小猪', 1067, 1, 'user_pig', 'front/user_pig/index', NULL, 1, 0, 'C', '0', '0', 'front:user_pig:list', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '用户小猪菜单');
INSERT INTO `sys_menu` VALUES (1232, '用户小猪查询', 1231, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_pig:query', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1233, '用户小猪新增', 1231, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_pig:add', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1234, '用户小猪修改', 1231, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_pig:edit', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1235, '用户小猪删除', 1231, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_pig:remove', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1236, '用户小猪导出', 1231, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_pig:export', '#', 'admin', '2023-05-23 18:04:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1237, '用户果树', 1067, 1, 'user_fruiter', 'front/user_fruiter/index', NULL, 1, 0, 'C', '0', '0', 'front:user_fruiter:list', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '用户果树菜单');
INSERT INTO `sys_menu` VALUES (1238, '用户果树查询', 1237, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_fruiter:query', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1239, '用户果树新增', 1237, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_fruiter:add', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1240, '用户果树修改', 1237, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_fruiter:edit', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241, '用户果树删除', 1237, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_fruiter:remove', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1242, '用户果树导出', 1237, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_fruiter:export', '#', 'admin', '2023-05-23 18:04:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1243, '好友', 1067, 1, 'user_friend', 'front/user_friend/index', NULL, 1, 0, 'C', '0', '0', 'front:user_friend:list', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '好友菜单');
INSERT INTO `sys_menu` VALUES (1244, '好友查询', 1243, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_friend:query', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1245, '好友新增', 1243, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_friend:add', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1246, '好友修改', 1243, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_friend:edit', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1247, '好友删除', 1243, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_friend:remove', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1248, '好友导出', 1243, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:user_friend:export', '#', 'admin', '2023-05-23 18:04:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1249, '疫苗', 1067, 1, 'vaccin', 'front/vaccin/index', NULL, 1, 0, 'C', '0', '0', 'front:vaccin:list', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '疫苗菜单');
INSERT INTO `sys_menu` VALUES (1250, '疫苗查询', 1249, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:vaccin:query', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1251, '疫苗新增', 1249, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:vaccin:add', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1252, '疫苗修改', 1249, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:vaccin:edit', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253, '疫苗删除', 1249, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:vaccin:remove', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254, '疫苗导出', 1249, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'front:vaccin:export', '#', 'admin', '2023-05-24 11:17:29', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-04-20 16:47:53', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-04-20 16:47:53', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(0) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 818 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-04-20 16:47:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-04-20 16:47:51', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-04-20 16:47:51', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 0, 0, '0', '0', 'admin', '2023-04-20 16:47:51', 'admin', '2023-04-22 14:41:20', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '小优', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-24 13:08:03', 'admin', '2023-04-20 16:47:50', '', '2023-05-24 13:08:02', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ranch', '小优', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-20 16:47:50', 'admin', '2023-04-20 16:47:50', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
