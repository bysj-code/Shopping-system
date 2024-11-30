/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2ps06
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2ps06` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2ps06`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261328249 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-01-10 14:10:27',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-10 14:10:27',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-10 14:10:27',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-10 14:10:27',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-10 14:10:27',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-10 14:10:27',6,'宇宙银河系月球1号','月某','13823888886','是'),(1610260228625,'2021-01-10 14:30:27',41,'元岗广东实验中学附属天河学校(天源路西)','小吴','16459878988','是'),(1610261328248,'2021-01-10 14:48:47',1610261192320,'龙华区民治街道黄金台','小邹','16459878988','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tejiashangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261244169 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261280731 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-01-10 14:10:27',1,1,'提问1','回复1',1),(52,'2021-01-10 14:10:27',2,2,'提问2','回复2',2),(53,'2021-01-10 14:10:27',3,3,'提问3','回复3',3),(54,'2021-01-10 14:10:27',4,4,'提问4','回复4',4),(55,'2021-01-10 14:10:27',5,5,'提问5','回复5',5),(56,'2021-01-10 14:10:27',6,6,'提问6','回复6',6),(1610260246679,'2021-01-10 14:30:46',41,NULL,'111',NULL,0),(1610261063165,'2021-01-10 14:44:22',41,1,NULL,'用户购买商品时候可以向管理员咨询相关情况 管理员在这里回复',NULL),(1610261280730,'2021-01-10 14:48:00',1610261192320,NULL,'这里可以向管理员咨询商品相关信息',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2ps06/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2ps06/upload/1610261077421.png'),(3,'picture3','http://localhost:8080/ssm2ps06/upload/1610260535962.png'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610260873646 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-01-10 14:10:27',1,1,'评论内容1','回复内容1'),(122,'2021-01-10 14:10:27',2,2,'评论内容2','回复内容2'),(123,'2021-01-10 14:10:27',3,3,'评论内容3','回复内容3'),(124,'2021-01-10 14:10:27',4,4,'评论内容4','回复内容4'),(125,'2021-01-10 14:10:27',5,5,'评论内容5','回复内容5'),(126,'2021-01-10 14:10:27',6,6,'评论内容6','回复内容6'),(1610260873645,'2021-01-10 14:41:13',22,41,'66','用户在前台可以评论商品信息  管理员在这里回复评论');

/*Table structure for table `discusstejiashangpin` */

DROP TABLE IF EXISTS `discusstejiashangpin`;

CREATE TABLE `discusstejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261226239 DEFAULT CHARSET=utf8 COMMENT='特价商品评论表';

/*Data for the table `discusstejiashangpin` */

insert  into `discusstejiashangpin`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (131,'2021-01-10 14:10:27',1,1,'评论内容1','回复内容1'),(132,'2021-01-10 14:10:27',2,2,'评论内容2','回复内容2'),(133,'2021-01-10 14:10:27',3,3,'评论内容3','回复内容3'),(134,'2021-01-10 14:10:27',4,4,'评论内容4','回复内容4'),(135,'2021-01-10 14:10:27',5,5,'评论内容5','回复内容5'),(136,'2021-01-10 14:10:27',6,6,'评论内容6','回复内容6'),(1610261226238,'2021-01-10 14:47:06',31,1610261192320,'这里对商品可以评论','');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261293801 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-01-10 14:10:27',1,'用户名1','留言内容1','回复内容1'),(112,'2021-01-10 14:10:27',2,'用户名2','留言内容2','回复内容2'),(113,'2021-01-10 14:10:27',3,'用户名3','留言内容3','回复内容3'),(114,'2021-01-10 14:10:27',4,'用户名4','留言内容4','回复内容4'),(115,'2021-01-10 14:10:27',5,'用户名5','留言内容5','回复内容5'),(116,'2021-01-10 14:10:27',6,'用户名6','留言内容6','回复内容6'),(1610260258176,'2021-01-10 14:30:57',41,'001','意见反馈','这里对用户留言可以回复'),(1610261293800,'2021-01-10 14:48:12',1610261192320,'666','这里可以发表意见反馈','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='购物资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (101,'2021-01-10 14:10:27','离岛免税购物形成消费引力场','http://localhost:8080/ssm2ps06/upload/news_picture1.jpg','<p><strong>　离岛免税购物形成消费引力场</strong></p><p>本报记者 潘世鹏</p><p>受强冷空气影响，海南岛近日出现持续低温天气。尽管如此，1月9日下午，记者在海口日月广场免税店内看到，前来参观购物的人群络绎不绝，一派火爆景象。在化妆品、箱包鞋帽、酒类等专柜购买结算的人排起了长队，购物人群以年轻人居多，也有许多全家一起来的游客。</p><p>“这里的免税商品不仅种类多，而且价格便宜，看来到海南购物确实名不虚传。”内蒙古游客赵先生一边跟记者闲聊，一边将免税店内火爆的购物场景在微信朋友圈分享。</p><p>海南是全球旅游度假热门目的地，也是消费购物的热门目的地。离岛旅客免税购物新政策实施以来，离岛免税购物成为许多游客到海南的主要目的之一，海南国际旅游消费中心建设因此步入了“快车道”。海关统计数据显示，元旦假期，海关共监管销售离岛免税品66.9万件，购物人数7.6万人次，销售金额5.4亿元，同比分别增长200%、80.9%和195.16%。</p>'),(102,'2021-01-10 14:10:27','元旦将至 购物','http://localhost:8080/ssm2ps06/upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">春节将至，为切实保障广大群众的消费安全、出游安全，1月9日，山西省市场监督管理局12315投诉举报指挥中心发布相关消费提示。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">选购年货食品要注意</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">要到正规的商场、超市、农贸市场和平台网店等经营单位购买年货。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">在采购食品和原料时，要选购新鲜食物，查看食品标签是否标明产品名称、型号规格、净含量、配料表、生产者或经销者的名称、地址、产品标准号、生产日期、保质期、生产许可证号等信息。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">在购买冷冻或冷藏食品时，要尽量避免用手直接接触食品，最好用超市准备好的夹子挑选食品，然后放入塑料袋中；接触生鲜食品后，手要避免触摸口、鼻子和眼睛；购物完毕要用肥皂（或洗手液）、流动水充分洗手。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">消费者在购买食品时，必须向销售者索要正规发票，发票内容要齐全具体，品名、规格、数量、单价等要与所购食品相符一致。</span></p>'),(103,'2021-01-10 14:10:27','当“文化”遇上“购物”','http://localhost:8080/ssm2ps06/upload/news_picture3.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">“2020上海‘艺术商圈’特色活动颁奖典礼”现场“2020上海‘艺术商圈’特色活动颁奖典礼”在上海举行，此次活动的评选共收到来自全市71个商业主体申报的840余项活动。经专家评审，共有25个项目被评为“2020上海艺术商圈特色活动”。</span></p>'),(104,'2021-01-10 14:10:27','全力以赴打造免税购物新地标','http://localhost:8080/ssm2ps06/upload/news_picture4.jpg','<p class=\"ql-align-justify\">阴雨天，海风裹挟着冷冽，呼呼吹过。</p><p class=\"ql-align-justify\">“我们不怕降温，怕台风。台风一来物流和施工都受限制，但气温低影响不大，天冷点活照样能干。”1月8日下午，在海口国际免税城项目施工工地上，该项目钢结构施工负责人潘梦良一边扶着安全帽，一边指着在高空作业的工友对海南日报记者说：“你抬头看，那两名穿着雨衣的工人，他们正在上面焊接钢梁。”</p><p class=\"ql-align-justify\">焊接产生的火花，转瞬即逝，让阴雨的天气，增加了一丝丝暖意。这些高达几十米钢梁，纵横交错，在火光中勾勒出免税城项目免税商业中心“骨骼轮廓”。</p><p class=\"ql-align-justify\">元旦前，也就是在2020年12月31日，免税商业中心地上顺利完成钢结构框架封顶。这一新封顶的建筑是“庞然大物”——建筑面积28.56万平方米，地下2层混凝土结构，地上4层全钢结构，面积相当于40个足球场，总用钢量约为3万吨，钢结构件数量2万余根。</p><p><br></p>'),(105,'2021-01-10 14:10:27','商超购物请注意','http://localhost:8080/ssm2ps06/upload/news_picture5.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">黑河市区商超消费者购物事项须知</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">为提升市区大型商超服务水平，营造安全和谐购物环境，满足广大消费者生活购物需求，现将相关事项通知</span></p>'),(106,'2021-01-10 14:10:27','杭州“豪华”的商场','http://localhost:8080/ssm2ps06/upload/news_picture6.jpg','<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">我们所了解的城市中心往往都有政治中心和商业中心之分，虽然这样的区别在我国的大多数城市中并不明显，可是因为不同的城市功能确实会有市政中心以及“CBD”的区分，而这些能够成为商业中心地区的建筑往往就是当地的地标性建筑了。</strong></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tejiashangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261348135 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1610260234835,'2021-01-10 14:30:34','202111014303448825198','shangpinxinxi',41,22,'护肤','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian2.jpg',1,88,88,88,88,1,'已完成','元岗广东实验中学附属天河学校(天源路西)'),(1610260290644,'2021-01-10 14:31:30','202111014313027452584','tejiashangpin',41,31,'商品名称1','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian1.jpg',1,20,20,20,20,1,'已完成','元岗广东实验中学附属天河学校(天源路西)'),(1610261333551,'2021-01-10 14:48:53','202111014485318186044','tejiashangpin',1610261192320,33,'商品名称3','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian3.jpg',1,110,110,110,110,1,'已支付','龙华区民治街道黄金台'),(1610261348134,'2021-01-10 14:49:07','20211101449713237746','shangpinxinxi',1610261192320,21,'饮料','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian1.jpg',1,22,22,22,22,1,'已支付','龙华区民治街道黄金台');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610260854277 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (11,'2021-01-10 14:10:27','水果'),(12,'2021-01-10 14:10:27','零食'),(13,'2021-01-10 14:10:27','家具'),(14,'2021-01-10 14:10:27','手机'),(15,'2021-01-10 14:10:27','服装'),(16,'2021-01-10 14:10:27','饮料'),(1610259748810,'2021-01-10 14:22:28','美妆护肤'),(1610260115552,'2021-01-10 14:28:34','图书'),(1610260854276,'2021-01-10 14:40:53','这里添加商品的分类');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`pinpai`,`shengchanriqi`,`baozhiqi`,`xiangqing`,`clicktime`,`clicknum`,`price`) values (21,'2021-01-10 14:10:27','饮料','饮料','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian1.jpg','瓶','品牌1','2020-08-30','保质期1','<p>详情1</p>','2021-01-10 14:49:09',8,22),(22,'2021-01-10 14:10:27','护肤','分类2','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian2.jpg','规格2','品牌2','2020-08-30','保质期2','<p>详情2</p>','2021-01-10 14:45:48',9,88),(23,'2021-01-10 14:10:27','商品名称3','分类3','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian3.jpg','规格3','品牌3','2020-08-30','保质期3','<p>详情3</p>','2021-01-10 14:32:48',4,99.9),(24,'2021-01-10 14:10:27','商品名称4','分类4','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian4.jpg','规格4','品牌4','2020-08-30','保质期4','<p>详情4</p>','2021-01-10 14:32:54',5,99.9),(25,'2021-01-10 14:10:27','商品名称5','分类5','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian5.jpg','规格5','品牌5','2020-08-30','保质期5','<p>详情5</p>','2021-01-10 14:33:02',6,99.9),(26,'2021-01-10 14:10:27','商品名称6','分类6','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian6.jpg','规格6','品牌6','2020-08-30','保质期6','<p>详情6</p>','2021-01-10 14:33:09',7,99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261219883 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1610260202383,'2021-01-10 14:30:01',41,22,'shangpinxinxi','护肤','http://localhost:8080/ssm2ps06/upload/shangpinxinxi_tupian2.jpg'),(1610261219882,'2021-01-10 14:46:58',1610261192320,31,'tejiashangpin','商品名称1','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian1.jpg');

/*Table structure for table `tejiashangpin` */

DROP TABLE IF EXISTS `tejiashangpin`;

CREATE TABLE `tejiashangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `xiangqing` longtext COMMENT '详情',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='特价商品';

/*Data for the table `tejiashangpin` */

insert  into `tejiashangpin`(`id`,`addtime`,`shangpinmingcheng`,`fenlei`,`tupian`,`guige`,`pinpai`,`shengchanriqi`,`baozhiqi`,`xiangqing`,`reversetime`,`price`) values (31,'2021-01-10 14:10:27','商品名称1','图书','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian1.jpg','规格1','品牌1','2020-10-01','保质期1','<p>详情1</p>','2020-11-08 00:00:00',20),(32,'2021-01-10 14:10:27','商品名称2','美妆护肤','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian2.jpg','规格2','品牌2','2020-10-01','保质期2','<p>详情2</p>','2021-01-14 00:00:00',16),(33,'2021-01-10 14:10:27','商品名称3','分类3','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian3.jpg','规格3','品牌3','2020-10-01','保质期3','<p>详情3</p>','2021-01-11 00:00:00',110),(34,'2021-01-10 14:10:27','商品名称4','分类4','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian4.jpg','规格4','品牌4','2019-10-01','保质期4','<p>详情4</p>','2021-01-30 00:00:00',99.9),(35,'2021-01-10 14:10:27','商品名称5','分类5','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian5.jpg','规格5','品牌5','2019-10-11','保质期5','<p>详情5</p>','2021-01-11 00:00:00',99.9),(36,'2021-01-10 14:10:27','商品名称6','分类6','http://localhost:8080/ssm2ps06/upload/tejiashangpin_tupian6.jpg','规格6','品牌6','2019-11-01','保质期6','<p>详情6</p>','2021-01-14 00:00:00',99.9);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','veq2u4yzsvatzwdq46ecr81r81zhqi00','2021-01-10 14:17:53','2021-01-10 15:41:22'),(2,41,'001','yonghu','用户','39s9fbhpeixg2oj89kvq6vylgp5r8j6p','2021-01-10 14:29:45','2021-01-10 15:49:23'),(3,1610261192320,'666','yonghu','用户','uqsusrgrwvlyenvel2fnuuj7849wrxky','2021-01-10 14:46:37','2021-01-10 15:46:37');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-10 14:10:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610261192321 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`money`) values (41,'2021-01-10 14:10:27','001','001','小吴','女','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',292),(42,'2021-01-10 14:10:27','用户2','123456','姓名2','男','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(43,'2021-01-10 14:10:27','用户3','123456','姓名3','男','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(44,'2021-01-10 14:10:27','用户4','123456','姓名4','男','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(45,'2021-01-10 14:10:27','用户5','123456','姓名5','男','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(46,'2021-01-10 14:10:27','用户6','123456','姓名6','男','http://localhost:8080/ssm2ps06/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1610261192320,'2021-01-10 14:46:32','666','666','小邹',NULL,'http://localhost:8080/ssm2ps06/upload/1610261259279.jpg','16459878982','1623@123.com',168);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
