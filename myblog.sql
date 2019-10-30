/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 127.0.0.1:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 30/10/2019 09:41:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fileOldName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件上传之前的名字',
  `fileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `filePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件路径',
  `fileType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上传者',
  `fileSize` decimal(10, 0) DEFAULT NULL COMMENT '文件大小，字节',
  `createTime` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  `isDelete` int(10) DEFAULT NULL COMMENT '是否删除。1：是',
  `deleteTime` datetime(0) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('09b5703a-e9f5-4b4e-8928-ce0dc1924092', NULL, '7c64c4b0c-a1b2-44d5-900c-f340ad77f780.jpg', 'E:\\myblogupload\\7c64c4b0c-a1b2-44d5-900c-f340ad77f780.jpg', 'jpg', 'null', 97324, '2019-02-17 01:11:45', '2019-02-17 01:11:45', 0, NULL);
INSERT INTO `attachment` VALUES ('1ec97a7d-acc6-4bff-92f0-3474f5a3d818', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V763eb922-0573-4095-b4cb-e998e7f4b836.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V763eb922-0573-4095-b4cb-e998e7f4b836.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 15595, '2019-02-17 16:30:36', '2019-02-17 16:30:35', 0, NULL);
INSERT INTO `attachment` VALUES ('1f48545f-98f5-4caf-9645-b94a4e7d08b3', NULL, 'cut_7c64c4b0c-a1b2-44d5-900c-f340ad77f780.jpg', 'E:\\myblogupload\\cut\\cut_7c64c4b0c-a1b2-44d5-900c-f340ad77f780.jpg', 'jpg', 'null', 10550, '2019-02-17 01:11:45', '2019-02-17 01:11:45', 0, NULL);
INSERT INTO `attachment` VALUES ('2a9f7da1-7b1f-4bfd-a612-563610c07271', NULL, '7f6ab4e11-69b2-43ee-a8d8-509b195c98e8.jpg', 'E:\\myblogupload\\7f6ab4e11-69b2-43ee-a8d8-509b195c98e8.jpg', 'jpg', 'null', 97324, '2019-02-17 01:10:07', '2019-02-17 01:10:06', 0, NULL);
INSERT INTO `attachment` VALUES ('38a14856-3491-4ad6-8eed-dfbc7f41500f', NULL, 'cut_75d68dba2-4f59-4456-bd02-3e48b2299249.jpg', 'E:\\myblogupload\\cut\\cut_75d68dba2-4f59-4456-bd02-3e48b2299249.jpg', NULL, 'null', 15611, '2019-02-17 01:03:13', '2019-02-17 01:03:13', 0, NULL);
INSERT INTO `attachment` VALUES ('3970e199-da16-4df2-b14f-5f71b3b33460', NULL, '75d68dba2-4f59-4456-bd02-3e48b2299249.jpg', 'E:\\myblogupload\\75d68dba2-4f59-4456-bd02-3e48b2299249.jpg', NULL, 'null', 97324, '2019-02-17 01:03:13', '2019-02-17 01:03:13', 0, NULL);
INSERT INTO `attachment` VALUES ('42a91b34-7a37-4e1f-ac8d-4624a361cc17', '20141107164412_v284V.jpeg', '20141107164412_v284V24b71ae8-3e88-43e6-a475-996acc1128b8.jpeg', 'E:\\myblogupload\\20141107164412_v284V24b71ae8-3e88-43e6-a475-996acc1128b8.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:23:23', '2019-02-17 16:23:23', 0, NULL);
INSERT INTO `attachment` VALUES ('4718af94-0fce-46af-8509-700a7dfee9fc', '7.jpg', 'cut_727601f53-b877-4377-aefe-a154e7963865.jpg', 'E:\\myblogupload\\cut\\cut_727601f53-b877-4377-aefe-a154e7963865.jpg', 'jpg', 'null', 10377, '2019-02-17 01:13:36', '2019-02-17 01:13:36', 0, NULL);
INSERT INTO `attachment` VALUES ('4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '头像.jpg', 'cut_头像5efd9d05-89cc-4619-a423-21471321d8e5.jpg', 'E:\\myblogupload\\cut\\cut_头像5efd9d05-89cc-4619-a423-21471321d8e5.jpg', 'jpg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 7794, '2019-02-18 14:57:10', '2019-02-18 14:57:09', 0, NULL);
INSERT INTO `attachment` VALUES ('5348f73b-1dfc-4847-a96e-96539802f7a8', '20141107164412_v284V.jpeg', '20141107164412_v284V3e59d441-ce7a-4678-8006-bca84ba86a18.jpeg', 'E:\\myblogupload\\20141107164412_v284V3e59d441-ce7a-4678-8006-bca84ba86a18.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:27:13', '2019-02-17 16:27:13', 0, NULL);
INSERT INTO `attachment` VALUES ('53741b05-e39d-42e9-9a02-45019d47ae1a', '微信.png', 'cut_微信8614cec2-3f05-4908-a9fb-d38d43acd49b.png', 'E:\\myblogupload\\cut\\cut_微信8614cec2-3f05-4908-a9fb-d38d43acd49b.png', 'png', '0de5f862-7e86-4243-81e8-5210d52f18d9', 154121, '2019-02-17 17:57:38', '2019-02-17 17:57:37', 0, NULL);
INSERT INTO `attachment` VALUES ('5b1413ba-8f3c-435f-8913-1075f8b04bfe', '7.jpg', '727601f53-b877-4377-aefe-a154e7963865.jpg', 'E:\\myblogupload\\727601f53-b877-4377-aefe-a154e7963865.jpg', 'jpg', 'null', 97324, '2019-02-17 01:13:36', '2019-02-17 01:13:36', 0, NULL);
INSERT INTO `attachment` VALUES ('5cb11dd6-60a8-4713-ba5b-bd20b2655e62', '20141107164412_v284V.jpeg', '20141107164412_v284V545c8e54-e07c-4c68-b50a-c32527e1e6ec.jpeg', 'E:\\myblogupload\\20141107164412_v284V545c8e54-e07c-4c68-b50a-c32527e1e6ec.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:39:27', '2019-02-17 16:39:26', 0, NULL);
INSERT INTO `attachment` VALUES ('6bb600bb-271a-427f-a38e-78e96d4d5d62', '20141107164412_v284V.jpeg', '20141107164412_v284V12435fd4-591d-4d1e-a5c5-ca6344bd49cf.jpeg', 'E:\\myblogupload\\20141107164412_v284V12435fd4-591d-4d1e-a5c5-ca6344bd49cf.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:03:33', '2019-02-17 16:03:32', 0, NULL);
INSERT INTO `attachment` VALUES ('737307c6-eaf9-4a3b-83f8-02f7a899aca7', '20141107164412_v284V.jpeg', '20141107164412_v284V763eb922-0573-4095-b4cb-e998e7f4b836.jpeg', 'E:\\myblogupload\\20141107164412_v284V763eb922-0573-4095-b4cb-e998e7f4b836.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:30:36', '2019-02-17 16:30:35', 0, NULL);
INSERT INTO `attachment` VALUES ('8c9a82e7-4563-407e-ba52-7267a907fc89', '微信.png', '微信5a04925f-ac6e-4d64-b18f-11ed7453fc91.png', 'E:\\myblogupload\\微信5a04925f-ac6e-4d64-b18f-11ed7453fc91.png', 'png', '0de5f862-7e86-4243-81e8-5210d52f18d9', 210572, '2019-02-17 18:02:55', '2019-02-17 18:02:55', 0, NULL);
INSERT INTO `attachment` VALUES ('987d4871-d5c7-4b18-a112-f6c90d481348', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V12435fd4-591d-4d1e-a5c5-ca6344bd49cf.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V12435fd4-591d-4d1e-a5c5-ca6344bd49cf.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 6853, '2019-02-17 16:03:33', '2019-02-17 16:03:32', 0, NULL);
INSERT INTO `attachment` VALUES ('99a5185b-7310-440c-9d75-214bc9373622', '20141107164412_v284V.jpeg', '20141107164412_v284V3d64c309-612d-406b-b626-4e62c9233daf.jpeg', 'E:\\myblogupload\\20141107164412_v284V3d64c309-612d-406b-b626-4e62c9233daf.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 16:27:23', '2019-02-17 16:27:22', 0, NULL);
INSERT INTO `attachment` VALUES ('9db63acf-718f-4799-8fb5-f42d8d2bb3ee', '微信.png', 'cut_微信5a04925f-ac6e-4d64-b18f-11ed7453fc91.png', 'E:\\myblogupload\\cut\\cut_微信5a04925f-ac6e-4d64-b18f-11ed7453fc91.png', 'png', '0de5f862-7e86-4243-81e8-5210d52f18d9', 155212, '2019-02-17 18:02:55', '2019-02-17 18:02:55', 0, NULL);
INSERT INTO `attachment` VALUES ('9e1f487f-f235-4d44-a5de-114db70d4f1d', '头像.jpg', '头像5efd9d05-89cc-4619-a423-21471321d8e5.jpg', 'E:\\myblogupload\\头像5efd9d05-89cc-4619-a423-21471321d8e5.jpg', 'jpg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 12421, '2019-02-18 14:57:10', '2019-02-18 14:57:09', 0, NULL);
INSERT INTO `attachment` VALUES ('9ea40960-80be-42ea-8cb1-611890493e53', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V3e59d441-ce7a-4678-8006-bca84ba86a18.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V3e59d441-ce7a-4678-8006-bca84ba86a18.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 6601, '2019-02-17 16:27:13', '2019-02-17 16:27:13', 0, NULL);
INSERT INTO `attachment` VALUES ('a373e649-cf75-4416-a987-f309c47e8942', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284Vdcec08dc-fa26-465e-a316-921c8da2f3df.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284Vdcec08dc-fa26-465e-a316-921c8da2f3df.jpeg', 'jpeg', 'null', 41676, '2019-02-17 01:43:49', '2019-02-17 01:43:48', 0, NULL);
INSERT INTO `attachment` VALUES ('a6668f06-1a2a-43c0-9a98-8bbbc7c7f39c', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V545c8e54-e07c-4c68-b50a-c32527e1e6ec.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V545c8e54-e07c-4c68-b50a-c32527e1e6ec.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 29089, '2019-02-17 16:39:27', '2019-02-17 16:39:26', 0, NULL);
INSERT INTO `attachment` VALUES ('a755f144-8ce8-4fbe-85eb-f3cb5e305c54', '20141107164412_v284V.jpeg', '20141107164412_v284V90c17818-05c3-4307-9e31-8cdf1372e04e.jpeg', 'E:\\myblogupload\\20141107164412_v284V90c17818-05c3-4307-9e31-8cdf1372e04e.jpeg', 'jpeg', 'null', 113956, '2019-02-17 01:45:27', '2019-02-17 01:45:27', 0, NULL);
INSERT INTO `attachment` VALUES ('ab9f05d6-a643-4569-912e-fabaf25c0956', 'timg.jpg', 'cut_timg13dda86d-1bcc-43b6-a25d-0e5601bf812d.jpg', 'E:\\myblogupload\\cut\\cut_timg13dda86d-1bcc-43b6-a25d-0e5601bf812d.jpg', 'jpg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 133248, '2019-02-18 16:59:02', '2019-02-18 16:59:02', 0, NULL);
INSERT INTO `attachment` VALUES ('add924f1-22c5-479e-b6d9-3daa203f9ffd', 'timg.jpg', 'timg13dda86d-1bcc-43b6-a25d-0e5601bf812d.jpg', 'E:\\myblogupload\\timg13dda86d-1bcc-43b6-a25d-0e5601bf812d.jpg', 'jpg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 156610, '2019-02-18 16:59:02', '2019-02-18 16:59:02', 0, NULL);
INSERT INTO `attachment` VALUES ('c2018ff1-03dc-4b91-bcdb-9f67788ec706', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V90c17818-05c3-4307-9e31-8cdf1372e04e.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V90c17818-05c3-4307-9e31-8cdf1372e04e.jpeg', 'jpeg', 'null', 41676, '2019-02-17 01:45:28', '2019-02-17 01:45:27', 0, NULL);
INSERT INTO `attachment` VALUES ('c9c6faa1-0ecf-4810-ab8a-b80971dbe718', '微信.png', '微信8614cec2-3f05-4908-a9fb-d38d43acd49b.png', 'E:\\myblogupload\\微信8614cec2-3f05-4908-a9fb-d38d43acd49b.png', 'png', '0de5f862-7e86-4243-81e8-5210d52f18d9', 210572, '2019-02-17 17:57:38', '2019-02-17 17:57:37', 0, NULL);
INSERT INTO `attachment` VALUES ('d273b40e-4b10-43e8-90a8-bb922d07d2b8', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V596d3bcb-66f6-4a5c-a4a4-735ba5fcbf32.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V596d3bcb-66f6-4a5c-a4a4-735ba5fcbf32.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 8593, '2019-02-17 15:01:14', '2019-02-17 15:01:14', 0, NULL);
INSERT INTO `attachment` VALUES ('ec9ef797-c239-4965-90b5-836489426195', NULL, 'cut_7f6ab4e11-69b2-43ee-a8d8-509b195c98e8.jpg', 'E:\\myblogupload\\cut\\cut_7f6ab4e11-69b2-43ee-a8d8-509b195c98e8.jpg', 'jpg', 'null', 10550, '2019-02-17 01:10:07', '2019-02-17 01:10:07', 0, NULL);
INSERT INTO `attachment` VALUES ('f924486d-8a31-470a-8e98-3c1a24f6206b', '20141107164412_v284V.jpeg', '20141107164412_v284Vdcec08dc-fa26-465e-a316-921c8da2f3df.jpeg', 'E:\\myblogupload\\20141107164412_v284Vdcec08dc-fa26-465e-a316-921c8da2f3df.jpeg', 'jpeg', 'null', 113956, '2019-02-17 01:43:49', '2019-02-17 01:43:48', 0, NULL);
INSERT INTO `attachment` VALUES ('fa7f0f75-5bf4-4638-8db8-d5586480d7aa', '20141107164412_v284V.jpeg', '20141107164412_v284V596d3bcb-66f6-4a5c-a4a4-735ba5fcbf32.jpeg', 'E:\\myblogupload\\20141107164412_v284V596d3bcb-66f6-4a5c-a4a4-735ba5fcbf32.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 113956, '2019-02-17 15:01:14', '2019-02-17 15:01:13', 0, NULL);
INSERT INTO `attachment` VALUES ('fc9f75e2-b08b-4429-b46a-82bf1bb88284', '20141107164412_v284V.jpeg', 'cut_20141107164412_v284V3d64c309-612d-406b-b626-4e62c9233daf.jpeg', 'E:\\myblogupload\\cut\\cut_20141107164412_v284V3d64c309-612d-406b-b626-4e62c9233daf.jpeg', 'jpeg', '0de5f862-7e86-4243-81e8-5210d52f18d9', 43454, '2019-02-17 16:27:23', '2019-02-17 16:27:22', 0, NULL);

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  `blogTitle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客标题',
  `blogContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客内容',
  `isDelete` int(10) DEFAULT 0 COMMENT '是否删除，1：删除',
  `blogIntro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客简介',
  `blogImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '博客显示图片地址',
  `blogClassfiy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '博客分类uuid',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('0a37564e-9e4d-4627-a0c2-61ee16629265', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 22:20:36', '2019-02-17 22:51:08', '1', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0048.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0064.gif\"/></p>', 0, '123123', NULL, '1');
INSERT INTO `blog` VALUES ('18cce336-a41f-47c2-9165-293397cb5c45', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:54:50', '2019-02-17 22:51:09', '1', '12123123', 0, '1', NULL, '1');
INSERT INTO `blog` VALUES ('1ca164d5-3636-4625-ac15-a0a3edbc5bdf', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:57:50', '2019-02-18 14:57:50', '测试首页4', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('1ce9a9c5-946d-451d-bf3d-08c836b16088', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:54:47', '2019-02-17 22:51:10', '1', '1', 0, '2', NULL, '2');
INSERT INTO `blog` VALUES ('20552b13-eb99-468c-8934-fe54ee7d02c7', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:57:40', '2019-02-18 14:57:39', '测试首页2', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('248c7f3d-9899-49fe-927d-d2fca0049041', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-14 19:39:57', '2019-02-17 22:51:11', '123123', '123123', 0, '3', NULL, '2');
INSERT INTO `blog` VALUES ('2726ace5-5d4c-4f86-9a14-c9e3fd5a84f1', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:58:06', '2019-02-18 14:58:05', '测试首页7', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('2e4c4dcf-d92e-4926-aeeb-c73279584761', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:55:08', '2019-02-17 19:54:58', '1', '12345678', 1, '4', NULL, '0');
INSERT INTO `blog` VALUES ('2f0208b5-41b0-46c7-9824-8bfbdff9341f', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-14 19:38:11', '2019-02-17 22:51:19', '123123', '123123', 0, '5', NULL, '2');
INSERT INTO `blog` VALUES ('4106e4cf-ea72-454a-ac5d-92ee12857c05', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:54:56', '2019-02-17 22:51:20', '1', '1234', 0, '6', NULL, '3');
INSERT INTO `blog` VALUES ('544cc7e8-5a4f-46c4-adae-245a63774844', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:58:11', '2019-02-18 14:58:11', '测试首页8', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('64625c66-ab83-4e6e-91e0-5c757b27d548', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:54:59', '2019-02-17 22:51:21', '1', '12345', 0, '7', NULL, '3');
INSERT INTO `blog` VALUES ('65f1f06a-0261-44be-8edc-8e5b7152b164', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:57:34', '2019-02-18 14:57:34', '测试首页1', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('6d7b956b-674d-46b3-bf94-01f341af9fe2', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:58:18', '2019-02-18 14:58:17', '测试首页9', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('72d9f1e6-90fc-4947-bb03-2bae8df05415', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-17 16:39:57', '2019-02-17 22:51:23', '测试首页图片', '<p>这是测试首页博客图片的<img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0053.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0057.gif\"/></p>', 0, '这是测试我的首页图片用的', 'a6668f06-1a2a-43c0-9a98-8bbbc7c7f39c', '3');
INSERT INTO `blog` VALUES ('8b6109c5-81e6-4b94-8fd2-369eaefe9f5e', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 22:20:38', '2019-02-17 19:54:53', '2', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0048.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0064.gif\"/></p>', 0, '123123', 'a373e649-cf75-4416-a987-f309c47e8942', '0');
INSERT INTO `blog` VALUES ('8bbebb97-d41b-4472-b5db-c5b51db77f00', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:54:53', '2019-02-17 19:54:53', '1', '123', 0, '8', NULL, '0');
INSERT INTO `blog` VALUES ('9668dcb9-7e25-439f-8699-38978de863ec', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:55:02', '2019-02-17 19:54:54', '1', '123456', 1, '9', NULL, '0');
INSERT INTO `blog` VALUES ('ca9f063b-40d9-4f26-8ae8-69522ff22409', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 20:29:38', '2019-02-17 19:54:54', '这是我的第一个博客', '<p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">本文很长，记录了我博客建站初到现在的过程，还有我从毕业到现在的一个状态，感谢您的阅读，如果你还是学生，也许你能从此文中，找到我们曾经相似的地方。如果你已经工作，有自己的博客，我想，你并没有忘记当初建立个人博客的初衷吧！</span></p><p><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">我的个人博客已经建站有8年的时间了，对它的热爱，一直都是只增未减。回想大学读书的那几年，那会儿非常流行QQ空间，我们寝室的室友还经常邀约去学校的网吧做自己的空间。系里有个男生，空间做得非常漂亮，什么悬浮，开场动画，音乐播放器，我们女生羡慕得不得了。还邀约他跟我们一起去通宵弄空间，网上可以找到很多免费的flash资源，还有音乐，那也是第一次接触js，知道在浏览器输入一个地址，修改一下数据，就能调用一些背景出来。然后把自己QQ空间弄得漂漂亮亮的，经常邀约室友来互踩。我记得08年地震，第二天晚上，我们寝室的几个人还淡定的在寝室装扮空间呢！</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><img alt=\"\" src=\"/showBlog/images/1.jpg\"/></p><p><br/></p><p><br/></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">后来空间收费项目也多了，官方漏洞也修复了，加上临近毕业，又要忙着做毕业设计，就没再打理QQ空间。我知道现在的九零后，零零后，你们肯定没看过《一帘幽梦》，那会儿我也是疯狂追剧，喜欢上紫菱，喜欢上她的网站。想看看她的小世界，而我更想学着做一个她那样的网站。那会儿还天真的以为网上真的有她的网站，百度搜了好些天也没有。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">要毕业的时候，要交作业了，感觉自己什么都没学会。室友拉着我们去看了她同学做的网站，我们一个个佩服得五体投地，甚至觉得太不可思议了。有难度，又怕自己不会。老师教我们怎么布局，怎么做，并没有教我们右键保存网页。不知道是谁先会了这绝技，然后我们一个个又跟打了鸡血似的，疯狂在网上找网页，右键另存为。然后一个个修改文字，图片。仿佛又回到了那会儿做QQ空间那个时候。拿着copy来，并且精心修改的作品，递交了毕业设计，顺利结业。那会儿还是很蒙，一种云里雾里的感觉，竟有种不知道自己到底是会还是不会的感觉，也就是大家常说的毕业迷茫期。</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><img alt=\"\" src=\"/showBlog/images/2.jpg\"/></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">工作后进入社会，出去谈业务，遇到一个对网页设计超级感兴趣的人，聊了一下午都还不够，他是完全自学的，做了一个首页宣传他们的产品。他眼里的我就是专业的，总是请教我一些问题。其实我内心特羡慕人家，每次问我，我也似懂非懂的跟人家解决问题，但我还是经常靠百度来搜索他要的答案。他身上那种好学好问的那股劲儿，也成为我迫切想拥有自己的个人博客的一个重要原因。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">做博客不是说做就做的，很多东西我都不懂，也不知道要购买域名还有空间。前期要做的工作还是很多。幸好张园同学，也是我实习期的同事，他会这些，教我网上找免费的虚拟空间，然后就是把自己做的页面上传进去，还给了有一个地址，然后就能访问了。那是第一次接触，也了解了整个网站的制作过程，只可惜买域名还有空间需要费用，还在实习期的我，想想也就算了。虚拟空间毕竟是免费的，没多长时间，做过的网页就不能访问了，又得重新注册，重新上传。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">等自己有一些资金和技术后，我开始买域名和空间。从一开始，我就没想过只是练练手，或者用一段时间就行了。我会一直用下去，所以精心挑选了域名和空间。这些年除了域名没有更换外，后台程序由asp换成了php，空间从西部数据换成万网，也就是现在的阿里云。一步步升级，就想把最好的一面呈现给大家。很多人问我网站速度怎么访问那么快，其实一是网站程序，页面最好是静态页面。每次我写的代码的时候，我都在琢磨怎么减少代码，减少使用div和图片，让html结构简单化，而又不失美观。所以，网站也改版了有好几次。二是空间还有带宽。这个其实很重要，现在备案跟以前比，快很多了，快的话一星期，慢的话顶多二十天。所以，不是因为特着急的话，还是用国内空间。关于国外空间，其实现在阿里云的香港虚拟主机也不错，访问还是上传都比以前好很多了。用它的小伙伴也挺多。延伸阅读 《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/jstt/web/2014-01-18/644.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">我的个人博客之——阿里云空间选择<span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》</span></a></span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"text-decoration:underline;\"><img alt=\"\" src=\"/showBlog/images/3.jpg\"/></span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。虽然访问人数少，我也不在乎这些，个人博客就好像我自己的一个日记本，来窥探的人多了，反而不自在了。因为博客，我还是交了不少朋友。我网站之前的logo就是网友给我设计的。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">后来，也是因为同学说百度搜不着我的个人博客，我才开始琢磨怎么把自己的博客排名提上去，放上去一些自己做过的模板，提供免费下载。页面以前也只有一个首页，当初我就是想着设计一个首页就行了，真正想学的人，一个页面足够了，其他页面，都靠自己设计。现在不同啦，近期版本我提供的模板都很全，实在是架不住人多都来问我怎么只有一个页面，虽然我已经在下载说明里面说得很清楚了。也就是提供了这样一些资源，我的个人博客也不再是一个只关乎自己的一个平台。曝光率越来越高，光天化日之下，哪敢放自己照片，写自己心情啊，于是乎，继续这样的模式吧，把自己写的模板放到网站上去。乐于分享，是能结交到很多朋友的。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">我的个人博客，在今年三月份之前是没有提供后台安装，调试这些服务的。其实一直都有人找我做个人博客，因为调试时间还有修改的问题，从上传到安装到修改调试，一般要四五个小时，我怕收费高，所以一直都是拒绝的。自从推出来《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2017-09-08/789.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">心蓝时间轴</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》后，主动找我做网站的也多了，他们都说是我粉丝，喜欢我的模板，所以我在模板下面写了付费说明，我的个人博客也开始有了付费项目。</span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><img alt=\"\" src=\"/showBlog/images/4.jpg\"/></span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">我接到的第一单，是一位父亲，想给自家的宝贝建立一个博客。他说他想买一个域名，谈了好几天，最终花了8000多购买到，我挺敬佩他的，对孩子的爱，毫不吝啬。域名固然重要，其实我想说坚持用博客来记录宝贝成长点滴，才是最有价值的。第二单是一个阅读网站，从加他到跟他聊，看他朋友圈，很有才气的一个人，也相当有爱心，他的网站大部分是分享给一些爱好阅读的长者。还有些就是技术类的站长，做资讯，做旅游，做推广的。通常，从选的模板就能看出来网站类型。《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2017-09-08/789.html\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">心蓝时间轴</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》偏个人，《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2018-03-18/807.html\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">绅士</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》，《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2018-04-22/815.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">格调</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》偏技术，资讯。《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2018-04-18/814.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">清雅</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》，《</span><span style=\"text-decoration:underline;\"><a href=\"http://www.yangqq.com/download/div/2017-07-16/785.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(85, 85, 85);\">水墨古典</a></span><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">》偏文艺。但也有对我防备心的，比如说付款方式，能不能走淘宝，这些我也能理解，但是有些吧，从一开始聊，感觉就不太好，理应就认为不应该收钱，收钱干嘛，到处都是免费的，听到这些，我也慢慢解释。其实他们并不了解我，了解我的网站，只要是从我博客来的，关注过一段时间的，都知道青姐的人品是咋样的。用“心塞”这个词，毫不为过吧。</span><br/><br/><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">我做过的网站，每过一段时间，我都会一个个点击看看进展怎么样，个人博客，不像真实的面对面聊，更多的是文字的交流，不得不说有时候文字传达的信息更能了解一个人，甚至有心灵共鸣。我想我还会再重新做一个仅仅属于自己的个人博客，如果你也想要做一个博客，用来记录自己的家庭，工作，生活，或者讨女友欢心，不妨现在就开始吧！</span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br/></span></span></p>', 0, '个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。', NULL, '0');
INSERT INTO `blog` VALUES ('da21f828-0467-42f5-ac9a-24961da80108', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:58:00', '2019-02-18 14:58:00', '测试首页6', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('ddbbdfda-31ee-45c2-b4ef-75c40030b32e', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 22:20:34', '2019-02-17 19:54:54', '1', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0048.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0064.gif\"/></p>', 0, '123123', NULL, '0');
INSERT INTO `blog` VALUES ('dea4e781-cb8e-4e06-a954-fdfa7ff5652b', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-15 13:55:05', '2019-02-17 19:54:55', '1', '99999999999999999999999', 0, '12', NULL, '0');
INSERT INTO `blog` VALUES ('e124d594-4159-4954-9958-85f64939492a', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:57:44', '2019-02-18 14:57:44', '测试首页3', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('e3fe0ce0-e4a4-4b39-bbe8-873089c3409e', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-14 19:40:37', '2019-02-17 19:54:55', '111111111111', '1111111111111111111', 0, '13', NULL, '0');
INSERT INTO `blog` VALUES ('ec4b9918-4961-4a6c-9401-84c50464b8d3', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 14:57:55', '2019-02-18 14:57:55', '测试首页5', '<p>测试首页用的无意义<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p>', 0, '阿斯顿发生的发生的发生的发生地方', '4e82e5c2-5f2e-47c3-b6a6-5a908d11c257', '0');
INSERT INTO `blog` VALUES ('f9f4ab56-6488-449f-a84b-713e7eeb0de1', '0de5f862-7e86-4243-81e8-5210d52f18d9', '2019-02-18 16:59:34', '2019-02-18 16:59:33', '欢迎来到我的博客', '<p>这是一个用java完成的网站，虽然还有很多地方需要完善<br/></p>', 0, 'look，这就是我的博客简介', 'ab9f05d6-a643-4569-912e-fabaf25c0956', '0');

-- ----------------------------
-- Table structure for blogclassify
-- ----------------------------
DROP TABLE IF EXISTS `blogclassify`;
CREATE TABLE `blogclassify`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `blogClassifyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '博客分类名称',
  `isDelete` int(10) DEFAULT 0 COMMENT '是否删除。1：删除',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博客分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogclassify
-- ----------------------------
INSERT INTO `blogclassify` VALUES ('0', '未分类', 0, '2019-02-17 19:55:19');
INSERT INTO `blogclassify` VALUES ('1', '随笔', 0, '2019-02-17 19:47:35');
INSERT INTO `blogclassify` VALUES ('2', 'java技术', 0, '2019-02-17 19:47:56');
INSERT INTO `blogclassify` VALUES ('3', '推荐', 0, '2019-02-17 19:49:30');

-- ----------------------------
-- Table structure for roleandpermission
-- ----------------------------
DROP TABLE IF EXISTS `roleandpermission`;
CREATE TABLE `roleandpermission`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `roleValue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色value',
  `roleOrPermission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色还是权限。1：角色，2：权限',
  `permissionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限名称',
  `permissionValue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限value',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色和权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid主键',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `userPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `isLock` int(16) DEFAULT 0 COMMENT '是否锁定，禁止登录。1：锁定，0：不锁定',
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `userName`(`userName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0b4aa533-e433-4df1-ab7e-e19f6527605b', '111', '111', '2019-01-24 00:43:27', '2019-01-24 00:44:38', 1);
INSERT INTO `user` VALUES ('0de5f862-7e86-4243-81e8-5210d52f18d9', '18731543694', '1111', '2019-01-25 15:58:41', '2019-01-25 15:58:41', 0);
INSERT INTO `user` VALUES ('282fd694-7f05-49ac-9d47-cc4cba766dbe', '2222', '2222', '2019-02-15 22:21:18', '2019-02-15 22:21:18', 1);

-- ----------------------------
-- Table structure for userextend
-- ----------------------------
DROP TABLE IF EXISTS `userextend`;
CREATE TABLE `userextend`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `userLocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户地址 (暂时不维护)',
  `userIntroduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户简介',
  `userBirthday` date DEFAULT NULL COMMENT '用户生日',
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  `userSex` int(255) DEFAULT NULL COMMENT '用户性别：1：男，2：女',
  `userMobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户手机号',
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `userHeadPortrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像id',
  `userWeChat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户微信 附件id',
  `userNick` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `userProfession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户职业',
  `userSkill` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作技能',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户扩展表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userextend
-- ----------------------------
INSERT INTO `userextend` VALUES ('0de5f862-7e86-4243-81e8-5210d52f18d9', NULL, '一个通往大神路上的菜鸡，热爱编码，并对此乐此不疲。', '2019-02-19', '2019-02-18 14:11:51', 1, '18731546456', '18731543694@163.com', NULL, '9db63acf-718f-4799-8fb5-f42d8d2bb3ee', '孟轶龙', 'java软件工程师', '1、123123213');

-- ----------------------------
-- Table structure for websitemanagementmenu
-- ----------------------------
DROP TABLE IF EXISTS `websitemanagementmenu`;
CREATE TABLE `websitemanagementmenu`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `menuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menuSort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单排序',
  `parentMenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级菜单id，为null是顶级菜单',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `menuUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单的url',
  `isDelete` int(6) DEFAULT 0 COMMENT '是否删除，1：删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台管理的菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of websitemanagementmenu
-- ----------------------------
INSERT INTO `websitemanagementmenu` VALUES ('1', '账号管理', '-999', NULL, '2019-01-25 21:57:23', '2019-01-25 21:57:44', NULL, 0);
INSERT INTO `websitemanagementmenu` VALUES ('11', '个人信息', '1', '1', '2019-01-25 22:22:13', '2019-01-25 22:22:14', '/user/updateUserInfo', 0);
INSERT INTO `websitemanagementmenu` VALUES ('12', '修改密码', '2', '1', '2019-01-25 22:56:02', '2019-01-25 22:56:04', '/user/updateUserPwd', 0);
INSERT INTO `websitemanagementmenu` VALUES ('2', '系统管理', '-998', NULL, '2019-01-25 22:55:07', '2019-01-25 22:55:09', NULL, 1);
INSERT INTO `websitemanagementmenu` VALUES ('21', '菜单管理', '1', '2', '2019-01-25 21:58:23', '2019-01-25 21:58:24', '/menuManagement/menuManagement', 1);
INSERT INTO `websitemanagementmenu` VALUES ('3', '博客管理', '-997', NULL, '2019-02-14 14:39:35', '2019-02-14 14:39:38', NULL, 0);
INSERT INTO `websitemanagementmenu` VALUES ('31', '文章管理', '1', '3', '2019-02-14 14:40:02', '2019-02-14 14:40:05', '/common/html/websiteManagement/blogManager', 0);
INSERT INTO `websitemanagementmenu` VALUES ('32', '发布文章', '2', '3', '2019-02-14 14:41:08', '2019-02-14 14:41:10', '/blogManager/addBlogPage', 0);
INSERT INTO `websitemanagementmenu` VALUES ('4', '管理员菜单', '-996', NULL, '2019-02-14 14:45:15', '2019-02-14 14:45:16', NULL, 0);
INSERT INTO `websitemanagementmenu` VALUES ('41', '用户管理', '1', '4', '2019-02-14 14:46:15', '2019-02-14 14:46:16', '/common/html/websiteManagement/userManager', 0);

SET FOREIGN_KEY_CHECKS = 1;
