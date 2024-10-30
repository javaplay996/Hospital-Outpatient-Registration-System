/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmyu3xi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmyu3xi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmyu3xi`;

/*Table structure for table `bingliku` */

DROP TABLE IF EXISTS `bingliku`;

CREATE TABLE `bingliku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingyin` varchar(200) DEFAULT NULL COMMENT '病因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='病例库';

/*Data for the table `bingliku` */

insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (81,'2021-03-09 14:04:36','病因1');
insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (82,'2021-03-09 14:04:36','病因2');
insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (83,'2021-03-09 14:04:36','病因3');
insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (84,'2021-03-09 14:04:36','病因4');
insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (85,'2021-03-09 14:04:36','病因5');
insert  into `bingliku`(`id`,`addtime`,`bingyin`) values (86,'2021-03-09 14:04:36','病因6');

/*Table structure for table `bingrenxinxi` */

DROP TABLE IF EXISTS `bingrenxinxi`;

CREATE TABLE `bingrenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='病人信息';

/*Data for the table `bingrenxinxi` */

insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (41,'2021-03-09 14:04:36','病人姓名1','440300199101010001','男','年龄1','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian1.jpg','13823888881');
insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (42,'2021-03-09 14:04:36','病人姓名2','440300199202020002','男','年龄2','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian2.jpg','13823888882');
insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (43,'2021-03-09 14:04:36','病人姓名3','440300199303030003','男','年龄3','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian3.jpg','13823888883');
insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (44,'2021-03-09 14:04:36','病人姓名4','440300199404040004','男','年龄4','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian4.jpg','13823888884');
insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (45,'2021-03-09 14:04:36','病人姓名5','440300199505050005','男','年龄5','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian5.jpg','13823888885');
insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shenfenzheng`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`) values (46,'2021-03-09 14:04:36','病人姓名6','440300199606060006','男','年龄6','http://localhost:8080/jspmyu3xi/upload/bingrenxinxi_zhaopian6.jpg','13823888886');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmyu3xi/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/jspmyu3xi/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/jspmyu3xi/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `guahao` */

DROP TABLE IF EXISTS `guahao`;

CREATE TABLE `guahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `jiuzhenkeshi` varchar(200) DEFAULT NULL COMMENT '就诊科室',
  `guahaofeiyong` int(11) DEFAULT NULL COMMENT '挂号费用',
  `guahaoleixing` varchar(200) DEFAULT NULL COMMENT '挂号类型',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xiaohaixinxi` longtext COMMENT '小孩信息',
  `xiaohaijiazhang` varchar(200) DEFAULT NULL COMMENT '小孩家长',
  `jiuzhenriqi` datetime DEFAULT NULL COMMENT '就诊日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guahaobianhao` (`guahaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='挂号';

/*Data for the table `guahao` */

insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (61,'2021-03-09 14:04:36','挂号编号1','就诊科室1',1,'普通挂号','病人姓名1','身份证1','联系电话1','性别1','年龄1','小孩信息1','小孩家长1','2021-03-09 14:04:36');
insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (62,'2021-03-09 14:04:36','挂号编号2','就诊科室2',2,'普通挂号','病人姓名2','身份证2','联系电话2','性别2','年龄2','小孩信息2','小孩家长2','2021-03-09 14:04:36');
insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (63,'2021-03-09 14:04:36','挂号编号3','就诊科室3',3,'普通挂号','病人姓名3','身份证3','联系电话3','性别3','年龄3','小孩信息3','小孩家长3','2021-03-09 14:04:36');
insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (64,'2021-03-09 14:04:36','挂号编号4','就诊科室4',4,'普通挂号','病人姓名4','身份证4','联系电话4','性别4','年龄4','小孩信息4','小孩家长4','2021-03-09 14:04:36');
insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (65,'2021-03-09 14:04:36','挂号编号5','就诊科室5',5,'普通挂号','病人姓名5','身份证5','联系电话5','性别5','年龄5','小孩信息5','小孩家长5','2021-03-09 14:04:36');
insert  into `guahao`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`guahaofeiyong`,`guahaoleixing`,`bingrenxingming`,`shenfenzheng`,`lianxidianhua`,`xingbie`,`nianling`,`xiaohaixinxi`,`xiaohaijiazhang`,`jiuzhenriqi`) values (66,'2021-03-09 14:04:36','挂号编号6','就诊科室6',6,'普通挂号','病人姓名6','身份证6','联系电话6','性别6','年龄6','小孩信息6','小孩家长6','2021-03-09 14:04:36');

/*Table structure for table `hushi` */

DROP TABLE IF EXISTS `hushi`;

CREATE TABLE `hushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hushizhanghao` varchar(200) NOT NULL COMMENT '护士账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `hushixingming` varchar(200) DEFAULT NULL COMMENT '护士姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `hushi` */

insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (21,'2021-03-09 14:04:36','护士1','123456','护士姓名1','男',1,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian1.jpg');
insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (22,'2021-03-09 14:04:36','护士2','123456','护士姓名2','男',2,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian2.jpg');
insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (23,'2021-03-09 14:04:36','护士3','123456','护士姓名3','男',3,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian3.jpg');
insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (24,'2021-03-09 14:04:36','护士4','123456','护士姓名4','男',4,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian4.jpg');
insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (25,'2021-03-09 14:04:36','护士5','123456','护士姓名5','男',5,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian5.jpg');
insert  into `hushi`(`id`,`addtime`,`hushizhanghao`,`mima`,`hushixingming`,`xingbie`,`nianling`,`zhaopian`) values (26,'2021-03-09 14:04:36','护士6','123456','护士姓名6','男',6,'http://localhost:8080/jspmyu3xi/upload/hushi_zhaopian6.jpg');

/*Table structure for table `kaiyaoxinxi` */

DROP TABLE IF EXISTS `kaiyaoxinxi`;

CREATE TABLE `kaiyaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `jiuzhenkeshi` varchar(200) DEFAULT NULL COMMENT '就诊科室',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `yaopinbianma` varchar(200) DEFAULT NULL COMMENT '药品编码',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `kaiyaoshuliang` varchar(200) DEFAULT NULL COMMENT '开药数量',
  `shiyongshuoming` longtext COMMENT '使用说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='开药信息';

/*Data for the table `kaiyaoxinxi` */

insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (91,'2021-03-09 14:04:36','挂号编号1','就诊科室1','病人姓名1','身份证1','药品编码1','药品分类1','药品名称1','开药数量1','使用说明1');
insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (92,'2021-03-09 14:04:36','挂号编号2','就诊科室2','病人姓名2','身份证2','药品编码2','药品分类2','药品名称2','开药数量2','使用说明2');
insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (93,'2021-03-09 14:04:36','挂号编号3','就诊科室3','病人姓名3','身份证3','药品编码3','药品分类3','药品名称3','开药数量3','使用说明3');
insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (94,'2021-03-09 14:04:36','挂号编号4','就诊科室4','病人姓名4','身份证4','药品编码4','药品分类4','药品名称4','开药数量4','使用说明4');
insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (95,'2021-03-09 14:04:36','挂号编号5','就诊科室5','病人姓名5','身份证5','药品编码5','药品分类5','药品名称5','开药数量5','使用说明5');
insert  into `kaiyaoxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`yaopinbianma`,`yaopinfenlei`,`yaopinmingcheng`,`kaiyaoshuliang`,`shiyongshuoming`) values (96,'2021-03-09 14:04:36','挂号编号6','就诊科室6','病人姓名6','身份证6','药品编码6','药品分类6','药品名称6','开药数量6','使用说明6');

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (51,'2021-03-09 14:04:36','科室名称1');
insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (52,'2021-03-09 14:04:36','科室名称2');
insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (53,'2021-03-09 14:04:36','科室名称3');
insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (54,'2021-03-09 14:04:36','科室名称4');
insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (55,'2021-03-09 14:04:36','科室名称5');
insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`) values (56,'2021-03-09 14:04:36','科室名称6');

/*Table structure for table `shoufeixinxi` */

DROP TABLE IF EXISTS `shoufeixinxi`;

CREATE TABLE `shoufeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `guahaoleixing` varchar(200) DEFAULT NULL COMMENT '挂号类型',
  `guahaofeiyong` int(11) DEFAULT NULL COMMENT '挂号费用',
  `yaopinshoufei` int(11) DEFAULT NULL COMMENT '药品收费',
  `zongshoufei` int(11) DEFAULT NULL COMMENT '总收费',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='收费信息';

/*Data for the table `shoufeixinxi` */

insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (111,'2021-03-09 14:04:36','挂号编号1','挂号类型1',1,1,1,'病人姓名1','联系电话1','身份证1');
insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (112,'2021-03-09 14:04:36','挂号编号2','挂号类型2',2,2,2,'病人姓名2','联系电话2','身份证2');
insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (113,'2021-03-09 14:04:36','挂号编号3','挂号类型3',3,3,3,'病人姓名3','联系电话3','身份证3');
insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (114,'2021-03-09 14:04:36','挂号编号4','挂号类型4',4,4,4,'病人姓名4','联系电话4','身份证4');
insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (115,'2021-03-09 14:04:36','挂号编号5','挂号类型5',5,5,5,'病人姓名5','联系电话5','身份证5');
insert  into `shoufeixinxi`(`id`,`addtime`,`guahaobianhao`,`guahaoleixing`,`guahaofeiyong`,`yaopinshoufei`,`zongshoufei`,`bingrenxingming`,`lianxidianhua`,`shenfenzheng`) values (116,'2021-03-09 14:04:36','挂号编号6','挂号类型6',6,6,6,'病人姓名6','联系电话6','身份证6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','cs1f0rxhek04qtvrdqxd53l1yc6d0cr7','2021-03-09 14:05:15','2021-03-09 15:05:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 14:04:36');

/*Table structure for table `yaofang` */

DROP TABLE IF EXISTS `yaofang`;

CREATE TABLE `yaofang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaofangzhanghao` varchar(200) NOT NULL COMMENT '药房账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='药房';

/*Data for the table `yaofang` */

insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (11,'2021-03-09 14:04:36','药房1','123456','负责人姓名1','男',1,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian1.jpg');
insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (12,'2021-03-09 14:04:36','药房2','123456','负责人姓名2','男',2,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian2.jpg');
insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (13,'2021-03-09 14:04:36','药房3','123456','负责人姓名3','男',3,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian3.jpg');
insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (14,'2021-03-09 14:04:36','药房4','123456','负责人姓名4','男',4,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian4.jpg');
insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (15,'2021-03-09 14:04:36','药房5','123456','负责人姓名5','男',5,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian5.jpg');
insert  into `yaofang`(`id`,`addtime`,`yaofangzhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`zhaopian`) values (16,'2021-03-09 14:04:36','药房6','123456','负责人姓名6','男',6,'http://localhost:8080/jspmyu3xi/upload/yaofang_zhaopian6.jpg');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianma` varchar(200) DEFAULT NULL COMMENT '药品编码',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `zongliang` int(11) DEFAULT NULL COMMENT '总量',
  `yongwanshuliang` int(11) DEFAULT NULL COMMENT '用完数量',
  `kucunshengyu` int(11) DEFAULT NULL COMMENT '库存剩余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (101,'2021-03-09 14:04:36','药品编码1','药品名称1','药品',1,100,1,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (102,'2021-03-09 14:04:36','药品编码2','药品名称2','药品',2,2,2,2);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (103,'2021-03-09 14:04:36','药品编码3','药品名称3','药品',3,3,3,3);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (104,'2021-03-09 14:04:36','药品编码4','药品名称4','药品',4,4,4,4);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (105,'2021-03-09 14:04:36','药品编码5','药品名称5','药品',5,5,5,5);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianma`,`yaopinmingcheng`,`yaopinfenlei`,`danjia`,`zongliang`,`yongwanshuliang`,`kucunshengyu`) values (106,'2021-03-09 14:04:36','药品编码6','药品名称6','药品',6,6,6,6);

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (31,'2021-03-09 14:04:36','医生1','123456','医生姓名1','专家','男','医龄1','13823888881','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian1.jpg','2021-03-09 14:04:36');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (32,'2021-03-09 14:04:36','医生2','123456','医生姓名2','专家','男','医龄2','13823888882','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian2.jpg','2021-03-09 14:04:36');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (33,'2021-03-09 14:04:36','医生3','123456','医生姓名3','专家','男','医龄3','13823888883','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian3.jpg','2021-03-09 14:04:36');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (34,'2021-03-09 14:04:36','医生4','123456','医生姓名4','专家','男','医龄4','13823888884','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian4.jpg','2021-03-09 14:04:36');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (35,'2021-03-09 14:04:36','医生5','123456','医生姓名5','专家','男','医龄5','13823888885','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian5.jpg','2021-03-09 14:04:36');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`zhaopian`,`clicktime`) values (36,'2021-03-09 14:04:36','医生6','123456','医生姓名6','专家','男','医龄6','13823888886','http://localhost:8080/jspmyu3xi/upload/yisheng_zhaopian6.jpg','2021-03-09 14:04:36');

/*Table structure for table `zhenduanxinxi` */

DROP TABLE IF EXISTS `zhenduanxinxi`;

CREATE TABLE `zhenduanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `jiuzhenkeshi` varchar(200) DEFAULT NULL COMMENT '就诊科室',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `bingyin` varchar(200) DEFAULT NULL COMMENT '病因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='诊断信息';

/*Data for the table `zhenduanxinxi` */

insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (71,'2021-03-09 14:04:36','挂号编号1','就诊科室1','病人姓名1','身份证1','体温1','血压1','病因1');
insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (72,'2021-03-09 14:04:36','挂号编号2','就诊科室2','病人姓名2','身份证2','体温2','血压2','病因2');
insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (73,'2021-03-09 14:04:36','挂号编号3','就诊科室3','病人姓名3','身份证3','体温3','血压3','病因3');
insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (74,'2021-03-09 14:04:36','挂号编号4','就诊科室4','病人姓名4','身份证4','体温4','血压4','病因4');
insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (75,'2021-03-09 14:04:36','挂号编号5','就诊科室5','病人姓名5','身份证5','体温5','血压5','病因5');
insert  into `zhenduanxinxi`(`id`,`addtime`,`guahaobianhao`,`jiuzhenkeshi`,`bingrenxingming`,`shenfenzheng`,`tiwen`,`xueya`,`bingyin`) values (76,'2021-03-09 14:04:36','挂号编号6','就诊科室6','病人姓名6','身份证6','体温6','血压6','病因6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
