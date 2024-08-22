/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t380`;
CREATE DATABASE IF NOT EXISTS `t380` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t380`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-25 09:29:13'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-25 09:29:13'),
	(3, 'single_seach_types', '单页数据类型', 1, '美术馆', NULL, NULL, '2023-04-25 09:29:13'),
	(4, 'zuozhe_types', '作者类型', 1, '作者类型1', NULL, NULL, '2023-04-25 09:29:13'),
	(5, 'zuozhe_types', '作者类型', 2, '作者类型2', NULL, NULL, '2023-04-25 09:29:13'),
	(6, 'zuozhe_types', '作者类型', 3, '作者类型3', NULL, NULL, '2023-04-25 09:29:13'),
	(7, 'zuozhe_types', '作者类型', 4, '作者类型4', NULL, NULL, '2023-04-25 09:29:13'),
	(8, 'yishu_types', '艺术类型', 1, '艺术类型1', NULL, NULL, '2023-04-25 09:29:13'),
	(9, 'yishu_types', '艺术类型', 2, '艺术类型2', NULL, NULL, '2023-04-25 09:29:13'),
	(10, 'yishu_types', '艺术类型', 3, '艺术类型3', NULL, NULL, '2023-04-25 09:29:13'),
	(11, 'yishu_types', '艺术类型', 4, '艺术类型4', NULL, NULL, '2023-04-25 09:29:13'),
	(12, 'yishu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-25 09:29:13'),
	(13, 'yishu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-25 09:29:13'),
	(14, 'yishu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-25 09:29:13'),
	(15, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-25 09:29:13'),
	(16, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-25 09:29:13');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-25 09:30:12', '公告详情1', '2023-04-25 09:30:12'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-25 09:30:12', '公告详情2', '2023-04-25 09:30:12'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-25 09:30:12', '公告详情3', '2023-04-25 09:30:12'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-25 09:30:12', '公告详情4', '2023-04-25 09:30:12'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-25 09:30:12', '公告详情5', '2023-04-25 09:30:12'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-04-25 09:30:12', '公告详情6', '2023-04-25 09:30:12'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-25 09:30:12', '公告详情7', '2023-04-25 09:30:12'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-25 09:30:12', '公告详情8', '2023-04-25 09:30:12'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-25 09:30:12', '公告详情9', '2023-04-25 09:30:12'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-25 09:30:12', '公告详情10', '2023-04-25 09:30:12'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-25 09:30:12', '公告详情11', '2023-04-25 09:30:12'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-25 09:30:12', '公告详情12', '2023-04-25 09:30:12'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-25 09:30:12', '公告详情13', '2023-04-25 09:30:12'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-25 09:30:12', '公告详情14', '2023-04-25 09:30:12');

DROP TABLE IF EXISTS `gongzuo`;
CREATE TABLE IF NOT EXISTS `gongzuo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '工作人员编号 Search111 ',
  `gongzuo_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuo_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuo_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuo_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `gongzuo_email` varchar(200) DEFAULT NULL COMMENT '工作人员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='工作人员';

DELETE FROM `gongzuo`;
INSERT INTO `gongzuo` (`id`, `username`, `password`, `gongzuo_uuid_number`, `gongzuo_name`, `gongzuo_phone`, `gongzuo_id_number`, `gongzuo_photo`, `sex_types`, `gongzuo_email`, `create_time`) VALUES
	(1, '工作人员1', '123456', '1682415012563', '工作人员姓名1', '17703786901', '410224199010102001', 'upload/gongzuo1.jpg', 1, '1@qq.com', '2023-04-25 09:30:12'),
	(2, '工作人员2', '123456', '1682415012625', '工作人员姓名2', '17703786902', '410224199010102002', 'upload/gongzuo2.jpg', 1, '2@qq.com', '2023-04-25 09:30:12'),
	(3, '工作人员3', '123456', '1682415012605', '工作人员姓名3', '17703786903', '410224199010102003', 'upload/gongzuo3.jpg', 2, '3@qq.com', '2023-04-25 09:30:12');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-04-25 09:30:12', '回复信息1', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(2, 2, '留言标题2', '留言内容2', '2023-04-25 09:30:12', '回复信息2', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(3, 3, '留言标题3', '留言内容3', '2023-04-25 09:30:12', '回复信息3', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(4, 2, '留言标题4', '留言内容4', '2023-04-25 09:30:12', '回复信息4', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(5, 2, '留言标题5', '留言内容5', '2023-04-25 09:30:12', '回复信息5', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(6, 2, '留言标题6', '留言内容6', '2023-04-25 09:30:12', '回复信息6', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(7, 1, '留言标题7', '留言内容7', '2023-04-25 09:30:12', '回复信息7', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(8, 1, '留言标题8', '留言内容8', '2023-04-25 09:30:12', '回复信息8', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(9, 3, '留言标题9', '留言内容9', '2023-04-25 09:30:12', '回复信息9', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(10, 2, '留言标题10', '留言内容10', '2023-04-25 09:30:12', '回复信息10', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(11, 1, '留言标题11', '留言内容11', '2023-04-25 09:30:12', '回复信息11', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(12, 3, '留言标题12', '留言内容12', '2023-04-25 09:30:12', '回复信息12', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(13, 1, '留言标题13', '留言内容13', '2023-04-25 09:30:12', '回复信息13', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(14, 3, '留言标题14', '留言内容14', '2023-04-25 09:30:12', '回复信息14', '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(15, 1, '测试', '测试', '2023-04-26 01:09:30', '嗯嗯啊', '2023-04-26 01:10:53', '2023-04-26 01:09:30'),
	(16, 1, '666', '66666', '2024-08-12 08:09:26', NULL, NULL, '2024-08-12 08:09:26');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '介绍', 1, '/upload/1682471317028.jpg', '<p>美术馆介绍</p>', '2023-04-26 01:08:44');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '000o4wmohf90mhlsfhhhm8tv74c7ca3a', '2023-04-25 09:31:55', '2024-08-12 09:09:11'),
	(2, 1, 'admin', 'users', '管理员', 'bwmhsh24zwflzeovu42h39pg0sg4s0bt', '2023-04-26 01:05:27', '2024-08-12 09:07:44'),
	(3, 1, 'a1', 'gongzuo', '工作人员', 'ldyid66k89kylubw01bjipegfb2vj4og', '2023-04-26 01:10:08', '2024-08-12 09:08:55');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-25 09:29:13');

DROP TABLE IF EXISTS `yishu`;
CREATE TABLE IF NOT EXISTS `yishu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuozhe_id` int DEFAULT NULL COMMENT '作者',
  `yishu_name` varchar(200) DEFAULT NULL COMMENT '艺术名称  Search111 ',
  `yishu_uuid_number` varchar(200) DEFAULT NULL COMMENT '艺术编号',
  `yishu_photo` varchar(200) DEFAULT NULL COMMENT '艺术照片',
  `yishu_address` varchar(200) DEFAULT NULL COMMENT '艺术地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `yishu_types` int DEFAULT NULL COMMENT '艺术类型 Search111',
  `yishu_clicknum` int DEFAULT NULL COMMENT '艺术热度',
  `yishu_content` longtext COMMENT '艺术介绍 ',
  `yishu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='艺术信息';

DELETE FROM `yishu`;
INSERT INTO `yishu` (`id`, `zuozhe_id`, `yishu_name`, `yishu_uuid_number`, `yishu_photo`, `yishu_address`, `zan_number`, `cai_number`, `yishu_types`, `yishu_clicknum`, `yishu_content`, `yishu_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '艺术名称1', '1682415012546', 'upload/yishu1.jpg', '艺术地点1', 153, 160, 4, 327, '艺术介绍1', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(2, 2, '艺术名称2', '1682415012598', 'upload/yishu2.jpg', '艺术地点2', 446, 1, 4, 59, '艺术介绍2', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(3, 3, '艺术名称3', '1682415012626', 'upload/yishu3.jpg', '艺术地点3', 273, 2, 2, 368, '艺术介绍3', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(4, 4, '艺术名称4', '1682415012557', 'upload/yishu4.jpg', '艺术地点4', 69, 422, 2, 83, '艺术介绍4', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(5, 5, '艺术名称5', '1682415012575', 'upload/yishu5.jpg', '艺术地点5', 38, 303, 3, 226, '艺术介绍5', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(6, 6, '艺术名称6', '1682415012636', 'upload/yishu6.jpg', '艺术地点6', 488, 249, 3, 251, '艺术介绍6', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(7, 7, '艺术名称7', '1682415012608', 'upload/yishu7.jpg', '艺术地点7', 102, 472, 3, 240, '艺术介绍7', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(8, 8, '艺术名称8', '1682415012560', 'upload/yishu8.jpg', '艺术地点8', 12, 309, 1, 273, '艺术介绍8', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(9, 9, '艺术名称9', '1682415012631', 'upload/yishu9.jpg', '艺术地点9', 79, 121, 4, 314, '艺术介绍9', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(10, 10, '艺术名称10', '1682415012628', 'upload/yishu10.jpg', '艺术地点10', 136, 376, 3, 456, '艺术介绍10', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(11, 11, '艺术名称11', '1682415012607', 'upload/yishu11.jpg', '艺术地点11', 460, 496, 2, 97, '艺术介绍11', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(12, 12, '艺术名称12', '1682415012595', 'upload/yishu12.jpg', '艺术地点12', 454, 371, 1, 63, '艺术介绍12', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(13, 13, '艺术名称13', '1682415012625', 'upload/yishu13.jpg', '艺术地点13', 5, 420, 1, 92, '艺术介绍13', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(14, 14, '艺术名称14', '1682415012629', 'upload/yishu14.jpg', '艺术地点14', 136, 188, 4, 383, '艺术介绍14', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12');

DROP TABLE IF EXISTS `yishu_collection`;
CREATE TABLE IF NOT EXISTS `yishu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yishu_id` int DEFAULT NULL COMMENT '艺术',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yishu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='艺术收藏';

DELETE FROM `yishu_collection`;
INSERT INTO `yishu_collection` (`id`, `yishu_id`, `yonghu_id`, `yishu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(2, 2, 1, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(3, 3, 1, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(4, 4, 1, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(5, 5, 2, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(6, 6, 2, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(7, 7, 1, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(8, 8, 2, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(9, 9, 3, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(10, 10, 1, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(12, 12, 3, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(13, 13, 2, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(14, 14, 3, 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(15, 11, 1, 1, '2023-04-26 01:09:05', '2023-04-26 01:09:05'),
	(19, 14, 1, 1, '2024-08-12 08:09:40', '2024-08-12 08:09:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '1682415012603', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-04-25 09:30:12'),
	(2, '用户2', '123456', '1682415012590', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', '2023-04-25 09:30:12'),
	(3, '用户3', '123456', '1682415012557', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-04-25 09:30:12');

DROP TABLE IF EXISTS `zuozhe`;
CREATE TABLE IF NOT EXISTS `zuozhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuozhe_name` varchar(200) DEFAULT NULL COMMENT '作者名称  Search111 ',
  `zuozhe_uuid_number` varchar(200) DEFAULT NULL COMMENT '作者编号',
  `zuozhe_photo` varchar(200) DEFAULT NULL COMMENT '作者照片',
  `zuozhe_address` varchar(200) DEFAULT NULL COMMENT '作者地点',
  `zuozhe_jiangxinag` varchar(200) DEFAULT NULL COMMENT '获得奖项',
  `zuozhe_time` date DEFAULT NULL COMMENT '生年',
  `zuozhe_types` int DEFAULT NULL COMMENT '作者类型 Search111',
  `zuozhe_content` longtext COMMENT '作者介绍 ',
  `zuozhe_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='作者';

DELETE FROM `zuozhe`;
INSERT INTO `zuozhe` (`id`, `zuozhe_name`, `zuozhe_uuid_number`, `zuozhe_photo`, `zuozhe_address`, `zuozhe_jiangxinag`, `zuozhe_time`, `zuozhe_types`, `zuozhe_content`, `zuozhe_delete`, `insert_time`, `create_time`) VALUES
	(1, '作者名称1', '1682415012643', 'upload/zuozhe1.jpg', '作者地点1', '获得奖项1', '2023-04-25', 4, '作者介绍1', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(2, '作者名称2', '1682415012601', 'upload/zuozhe2.jpg', '作者地点2', '获得奖项2', '2023-04-25', 2, '作者介绍2', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(3, '作者名称3', '1682415012586', 'upload/zuozhe3.jpg', '作者地点3', '获得奖项3', '2023-04-25', 4, '作者介绍3', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(4, '作者名称4', '1682415012558', 'upload/zuozhe4.jpg', '作者地点4', '获得奖项4', '2023-04-25', 1, '作者介绍4', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(5, '作者名称5', '1682415012599', 'upload/zuozhe5.jpg', '作者地点5', '获得奖项5', '2023-04-25', 4, '作者介绍5', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(6, '作者名称6', '1682415012553', 'upload/zuozhe6.jpg', '作者地点6', '获得奖项6', '2023-04-25', 2, '作者介绍6', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(7, '作者名称7', '1682415012617', 'upload/zuozhe7.jpg', '作者地点7', '获得奖项7', '2023-04-25', 2, '作者介绍7', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(8, '作者名称8', '1682415012593', 'upload/zuozhe8.jpg', '作者地点8', '获得奖项8', '2023-04-25', 2, '作者介绍8', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(9, '作者名称9', '1682415012588', 'upload/zuozhe9.jpg', '作者地点9', '获得奖项9', '2023-04-25', 1, '作者介绍9', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(10, '作者名称10', '1682415012578', 'upload/zuozhe10.jpg', '作者地点10', '获得奖项10', '2023-04-25', 2, '作者介绍10', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(11, '作者名称11', '1682415012633', 'upload/zuozhe11.jpg', '作者地点11', '获得奖项11', '2023-04-25', 3, '作者介绍11', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(12, '作者名称12', '1682415012565', 'upload/zuozhe12.jpg', '作者地点12', '获得奖项12', '2023-04-25', 1, '作者介绍12', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(13, '作者名称13', '1682415012560', 'upload/zuozhe13.jpg', '作者地点13', '获得奖项13', '2023-04-25', 4, '作者介绍13', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12'),
	(14, '作者名称14', '1682415012599', 'upload/zuozhe14.jpg', '作者地点14', '获得奖项14', '2023-04-25', 4, '作者介绍14', 1, '2023-04-25 09:30:12', '2023-04-25 09:30:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
