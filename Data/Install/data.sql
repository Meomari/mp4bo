-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 09 月 28 日 05:18
-- 服务器版本: 5.1.50
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yge`
--

-- --------------------------------------------------------

--
-- 表的结构 `yge_ad`
--

CREATE TABLE IF NOT EXISTS `yge_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告分类',
  `title_style` text NOT NULL COMMENT '标题样式',
  `title_style_serialize` text NOT NULL COMMENT '标题样式序列化',
  `ad_type` char(10) NOT NULL DEFAULT 'text' COMMENT '广告类型',
  `link_url` varchar(255) NOT NULL COMMENT '链接地址',
  `description` text NOT NULL COMMENT '简介',
  `code_body` text NOT NULL COMMENT '代码内容',
  `height` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '高度',
  `width` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '宽度',
  `text_body` text NOT NULL COMMENT '文字广告内容',
  `font_size` varchar(255) NOT NULL COMMENT '文字大小',
  `attach_file` varchar(50) NOT NULL COMMENT '附件名称',
  `attach_ext` varchar(50) NOT NULL COMMENT '附件类型',
  `attach_alt` varchar(255) NOT NULL COMMENT 'alt 文字',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序数值，越小排得越前',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='广告' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `yge_ad`
--

INSERT INTO `yge_ad` (`id`, `title`, `category_id`, `title_style`, `title_style_serialize`, `ad_type`, `link_url`, `description`, `code_body`, `height`, `width`, `text_body`, `font_size`, `attach_file`, `attach_ext`, `attach_alt`, `display_order`, `status`, `create_time`, `update_time`) VALUES
(1, 'test1', 33, 'color:#800080;font-weight:bold;TEXT-DECORATION: underline', 'a:3:{s:5:"color";s:7:"#800080";s:4:"bold";s:4:"bold";s:9:"underline";s:9:"underline";}', 'image', 'ddd', 'test', 'test', 0, 0, '', '12px', 'Ad/4b89c936da4e9.jpg', '', 'test', 0, 0, 1267282184, 1267324636),
(2, 'test2', 33, '', '', 'image', 'ddd', '', '', 0, 0, '', '12px', 'Ad/4b89c945afdab.jpg', '', '', 0, 0, 1267321157, 0),
(3, 'test3', 33, '', '', 'image', 'ggg', '', '', 0, 0, '', '12px', 'Ad/4b89c96059ba3.jpg', '', '', 0, 0, 1267321184, 1267793689);

-- --------------------------------------------------------

--
-- 表的结构 `yge_admin`
--

CREATE TABLE IF NOT EXISTS `yge_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `notepad` text NOT NULL COMMENT '备忘录',
  `sex` char(5) NOT NULL DEFAULT '男' COMMENT '性别',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `qq` varchar(50) NOT NULL COMMENT 'QQ',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yge_admin`
--

INSERT INTO `yge_admin` (`id`, `role_id`, `username`, `password`, `realname`, `notepad`, `sex`, `telephone`, `mobile_telephone`, `fax`, `web_url`, `email`, `qq`, `address`, `login_count`, `create_time`, `update_time`, `last_login_time`) VALUES
(1, 1, 'lizhongyi', '93279e3308bdbbeed946fc965017f67a', 'admin', '<scripot>nihaohah</script>', '男', '1860123421', '1860123421', '05560000000', '1860123421', '1860123421', '1860123421', '', 1, 1312176093, 1344238928, 1312176093);

-- --------------------------------------------------------

--
-- 表的结构 `yge_admin_log`
--

CREATE TABLE IF NOT EXISTS `yge_admin_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL COMMENT '用户ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户',
  `action` text NOT NULL COMMENT 'URI',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志' AUTO_INCREMENT=4212 ;

--
-- 转存表中的数据 `yge_admin_log`
--

INSERT INTO `yge_admin_log` (`id`, `user_id`, `username`, `action`, `ip`, `create_time`) VALUES
(3805, 1, 'lizhongyi', '/admin.php?a=index&m=Database', '127.0.0.1', 1345784685),
(3806, 1, 'lizhongyi', '/admin.php?a=index&m=AdminLog', '127.0.0.1', 1345784721),
(3807, 1, 'lizhongyi', '/admin.php?a=index&m=Database', '127.0.0.1', 1345784728),
(3808, 1, 'lizhongyi', '/admin.php?a=index&m=Database', '127.0.0.1', 1345784769),
(3809, 1, 'lizhongyi', '/admin.php?a=index&m=Database', '127.0.0.1', 1345785047),
(3810, 1, 'lizhongyi', '/admin.php?a=index&m=Database', '127.0.0.1', 1345788395),
(3811, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346044528),
(3812, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346045476),
(3813, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346045478),
(3814, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1346045479),
(3815, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346045480),
(3816, 1, 'lizhongyi', '/admin.php?a=index&m=Ad', '127.0.0.1', 1346045482),
(3817, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1346045483),
(3818, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346045484),
(3819, 1, 'lizhongyi', '/admin.php?a=index&m=Notice', '127.0.0.1', 1346045486),
(3820, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346045488),
(3821, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346385468),
(3822, 1, 'lizhongyi', '/admin.php?a=index&m=Theme', '127.0.0.1', 1346385477),
(3823, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1346385478),
(3824, 1, 'lizhongyi', '/admin.php?a=index&m=Theme', '127.0.0.1', 1346385479),
(3825, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1346385480),
(3826, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1346385484),
(3827, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1346385485),
(3828, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1346385703),
(3829, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1346385707),
(3830, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1346385708),
(3831, 1, 'nihao', '/admin.php', '127.0.0.1', 1346387154),
(3832, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346387237),
(3833, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346387239),
(3834, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346387345),
(3835, 1, '', '/admin.php', '127.0.0.1', 1346387361),
(3836, 1, '', '/admin.php', '127.0.0.1', 1346387363),
(3837, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346388098),
(3838, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346388102),
(3839, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1346388107),
(3840, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1346388108),
(3841, 1, '', '/admin.php', '127.0.0.1', 1346388117),
(3842, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346388853),
(3843, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346388855),
(3844, 1, '', '/admin.php', '127.0.0.1', 1346388863),
(3845, 1, '', '/admin.php', '127.0.0.1', 1346388864),
(3846, 1, '', '/admin.php', '127.0.0.1', 1346388865),
(3847, 1, '', '/admin.php', '127.0.0.1', 1346388866),
(3848, 1, '', '/admin.php', '127.0.0.1', 1346388894),
(3849, 1, '', '/admin.php', '127.0.0.1', 1346388895),
(3850, 1, '', '/admin.php', '127.0.0.1', 1346388902),
(3851, 1, '', '/admin.php', '127.0.0.1', 1346388902),
(3852, 1, '', '/admin.php', '127.0.0.1', 1346388903),
(3853, 1, '', '/admin.php', '127.0.0.1', 1346388905),
(3854, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346389366),
(3855, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346389368),
(3856, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389418),
(3857, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389419),
(3858, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389420),
(3859, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389420),
(3860, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389420),
(3861, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389449),
(3862, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389450),
(3863, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389590),
(3864, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389591),
(3865, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389622),
(3866, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389623),
(3867, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389629),
(3868, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346389630),
(3869, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346390802),
(3870, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1346394292),
(3871, 1, 'lizhongyi', '/admin.php?a=index&m=Page', '127.0.0.1', 1346394294),
(3872, 1, 'lizhongyi', '/admin.php?a=index&m=Page', '127.0.0.1', 1346394308),
(3873, 1, 'lizhongyi', '/admin.php?a=doModify&m=Page (编辑:27)', '127.0.0.1', 1346394708),
(3874, 1, 'lizhongyi', '/admin.php/Page', '127.0.0.1', 1346394709),
(3875, 1, 'lizhongyi', '/admin.php/Page', '127.0.0.1', 1346394732),
(3876, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346394870),
(3877, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Product (批量更新: 100,99,98,97 影响 4 条记录)', '127.0.0.1', 1346394876),
(3878, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346394878),
(3879, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346394879),
(3880, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346394880),
(3881, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346394881),
(3882, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346394883),
(3883, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Product (批量更新: 100,99,98,97 影响 4 条记录)', '127.0.0.1', 1346394887),
(3884, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346394889),
(3885, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Product (删除: 100,99,98,97)', '127.0.0.1', 1346394893),
(3886, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346394895),
(3887, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1346394922),
(3888, 1, 'lizhongyi', '/admin.php?a=doModify&m=Category (编辑:104)', '127.0.0.1', 1346394947),
(3889, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1346394949),
(3890, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1346394951),
(3891, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Product (录入:101)', '127.0.0.1', 1346395009),
(3892, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395011),
(3893, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Product (录入:102)', '127.0.0.1', 1346395058),
(3894, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395059),
(3895, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Product (录入:103)', '127.0.0.1', 1346395114),
(3896, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395116),
(3897, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Product (录入:104)', '127.0.0.1', 1346395267),
(3898, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395269),
(3899, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395289),
(3900, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395323),
(3901, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395324),
(3902, 1, 'lizhongyi', '/admin.php?m=Product', '127.0.0.1', 1346395379),
(3903, 1, 'lizhongyi', '/admin.php?a=doModify&m=Product (编辑:104)', '127.0.0.1', 1346396055),
(3904, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1346396058),
(3905, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346406539),
(3906, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346406539),
(3907, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346406541),
(3908, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346475629),
(3909, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1346477186),
(3910, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1346477199),
(3911, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1346477202),
(3912, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1346477242),
(3913, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1346477246),
(3914, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336009944),
(3915, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336010286),
(3916, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1336012156),
(3917, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1336012187),
(3918, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336013824),
(3919, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336013825),
(3920, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1336013848),
(3921, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1336014458),
(3922, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336017193),
(3923, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336017194),
(3924, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336017194),
(3925, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336020878),
(3926, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1336024784),
(3927, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1336025223),
(3928, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336026456),
(3929, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336026457),
(3930, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1336026515),
(3931, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Menu (批量更新: 38,10,9,8,7,6,5,1 影响 8 条记录)', '127.0.0.1', 1336026523),
(3932, 1, 'lizhongyi', '/admin.php/Menu', '127.0.0.1', 1336026526),
(3933, 1, 'lizhongyi', '/admin.php/Menu', '127.0.0.1', 1336026542),
(3934, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Menu (批量更新: 38,10,9,8,7,6,5,1 影响 8 条记录)', '127.0.0.1', 1336026929),
(3935, 1, 'lizhongyi', '/admin.php/Menu', '127.0.0.1', 1336026931),
(3936, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336028133),
(3937, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336030117),
(3938, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1336031528),
(3939, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1336031529),
(3940, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1336031533),
(3941, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1336031535),
(3942, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1336031552),
(3943, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336031558),
(3944, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336031568),
(3945, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336031803),
(3946, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336031804),
(3947, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336031821),
(3948, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336031822),
(3949, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%2FArticle (编辑:840)', '127.0.0.1', 1336032910),
(3950, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336032914),
(3951, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%2FArticle (编辑:840)', '127.0.0.1', 1336032938),
(3952, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336032939),
(3953, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336040064),
(3954, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1336040068),
(3955, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1336040068),
(3956, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1336040072),
(3957, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1336040074),
(3958, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336052293),
(3959, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1336052665),
(3960, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336052720),
(3961, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336052723),
(3962, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1336052770),
(3963, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:835)', '127.0.0.1', 1336052782),
(3964, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336052784),
(3965, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%2FArticle (编辑:836)', '127.0.0.1', 1336052894),
(3966, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%2FArticle (编辑:836)', '127.0.0.1', 1336052898),
(3967, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1336056891),
(3968, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1336056899),
(3969, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336056903),
(3970, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%2FArticle (编辑:840)', '127.0.0.1', 1336056982),
(3971, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1336056985),
(3972, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336114863),
(3973, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336124634),
(3974, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1336124783),
(3975, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1336124799),
(3976, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1336124801),
(3977, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1336125081),
(3978, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1346816777),
(3979, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347085019),
(3980, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347085025),
(3981, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347085504),
(3982, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Category (录入:112)', '127.0.0.1', 1347085524),
(3983, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347085527),
(3984, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Category (录入:113)', '127.0.0.1', 1347085540),
(3985, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347085543),
(3986, 1, 'lizhongyi', '/admin.php?a=index&m=Product', '127.0.0.1', 1347086816),
(3987, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347086818),
(3988, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1347095594),
(3989, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347106099),
(3990, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347106100),
(3991, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347106106),
(3992, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347106108),
(3993, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Category (录入:114)', '127.0.0.1', 1347106138),
(3994, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347106141),
(3995, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347106985),
(3996, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347110097),
(3997, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347182746),
(3998, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347184035),
(3999, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347184558),
(4000, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Category (录入:115)', '127.0.0.1', 1347184591),
(4001, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347184594),
(4002, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347188809),
(4003, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Category (删除: 115)', '127.0.0.1', 1347188827),
(4004, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347188831),
(4005, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347188831),
(4006, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347188867),
(4007, 1, 'lizhongyi', '/admin.php/Category', '127.0.0.1', 1347188879),
(4008, 1, 'lizhongyi', '/admin.php?a=index&m=Tools', '127.0.0.1', 1347188921),
(4009, 1, 'lizhongyi', '/admin.php?a=doCache&m=Tools (更新缓存)', '127.0.0.1', 1347188925),
(4010, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347190876),
(4011, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347190887),
(4012, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1347190894),
(4013, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347190897),
(4014, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347191319),
(4015, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347191323),
(4016, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1347191340),
(4017, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347191342),
(4018, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347192314),
(4019, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347199095),
(4020, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1347199566),
(4021, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347244715),
(4022, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1347352539),
(4023, 1, 'lizhongyi', '/admin.php/Product', '127.0.0.1', 1347352575),
(4024, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347522760),
(4025, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347522979),
(4026, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347522980),
(4027, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523094),
(4028, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523259),
(4029, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523311),
(4030, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523312),
(4031, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523313),
(4032, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523317),
(4033, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347523389),
(4034, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523539),
(4035, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523540),
(4036, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347523705),
(4037, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1347524226),
(4038, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1347524230),
(4039, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347524287),
(4040, 1, 'lizhongyi', '/admin.php?a=index&m=Tags', '127.0.0.1', 1347524403),
(4041, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1347524536),
(4042, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1347524540),
(4043, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Menu (批量更新: 38,10,9,8,7,6,5,1 影响 8 条记录)', '127.0.0.1', 1347524547),
(4044, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524559),
(4045, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524561),
(4046, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347524600),
(4047, 1, 'lizhongyi', '/admin.php?a=doInsert&m=Category (录入:116)', '127.0.0.1', 1347524622),
(4048, 1, 'lizhongyi', '/admin.php?m=Category', '127.0.0.1', 1347524660),
(4049, 1, 'lizhongyi', '/admin.php?a=index&m=Job', '127.0.0.1', 1347524681),
(4050, 1, 'lizhongyi', '/admin.php?a=doModify&m=Job (编辑:8)', '127.0.0.1', 1347524686),
(4051, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524696),
(4052, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347524701),
(4053, 1, 'lizhongyi', '/admin.php?a=doCommand&m=Article (批量更新: 840,839,838,837,836,835,834,833 影响 8 条记录)', '127.0.0.1', 1347524705),
(4054, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524711),
(4055, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524712),
(4056, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347524769),
(4057, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347524776),
(4058, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347524842),
(4059, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347524849),
(4060, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347524865),
(4061, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524874),
(4062, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347524875),
(4063, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347524881),
(4064, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1347524884),
(4065, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347524889),
(4066, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347524897),
(4067, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347525089),
(4068, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1347525252),
(4069, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1347525254),
(4070, 1, 'lizhongyi', '/admin.php?a=index&m=Tags', '127.0.0.1', 1347525332),
(4071, 1, 'lizhongyi', '/admin.php?a=index&m=Module', '127.0.0.1', 1347525333),
(4072, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347525335),
(4073, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1347525339),
(4074, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525345),
(4075, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525346),
(4076, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347525349),
(4077, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347525355),
(4078, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525396),
(4079, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525397),
(4080, 1, 'lizhongyi', '/admin.php?a=index&m=Config', '127.0.0.1', 1347525403),
(4081, 1, 'lizhongyi', '/admin.php?a=doModify&m=Config (编辑系统配置)', '127.0.0.1', 1347525406),
(4082, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525412),
(4083, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347525418),
(4084, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347525425),
(4085, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347525496),
(4086, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347526269),
(4087, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347526337),
(4088, 1, 'lizhongyi', '/admin.php?a=index&m=Admin', '127.0.0.1', 1347526594),
(4089, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347526633),
(4090, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347526915),
(4091, 1, 'lizhongyi', '/admin.php?a=index&m=Category', '127.0.0.1', 1347526916),
(4092, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347527300),
(4093, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347527424),
(4094, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347527424),
(4095, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347527425),
(4096, 1, 'lizhongyi', '/admin.php?a=index&m=Index', '127.0.0.1', 1347527425),
(4097, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347538868),
(4098, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347538900),
(4099, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347540606),
(4100, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347586274),
(4101, 1, 'lizhongyi', '/admin.php?a=index&m=Page', '127.0.0.1', 1347586367),
(4102, 1, 'lizhongyi', '/admin.php?a=index&m=Article', '127.0.0.1', 1347586503),
(4103, 1, 'lizhongyi', '/admin.php?a=doModify&m=Article&jump=%2Fadmin.php%3Fa%3Dindex%26m%3DArticle (编辑:840)', '127.0.0.1', 1347586509),
(4104, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347587206),
(4105, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347589733),
(4106, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347589735),
(4107, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347590905),
(4108, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347592011),
(4109, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347592013),
(4110, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347594067),
(4111, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347594068),
(4112, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347600656),
(4113, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347600658),
(4114, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347601061),
(4115, 1, 'lizhongyi', '/admin.php?a=index&m=Menu', '127.0.0.1', 1347601899),
(4116, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347636966),
(4117, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347637026),
(4118, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347868676),
(4119, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347873644),
(4120, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347884883),
(4121, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347886414),
(4122, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347888507),
(4123, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347888517),
(4124, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888520),
(4125, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347888574),
(4126, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888578),
(4127, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888741),
(4128, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347888750),
(4129, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888754),
(4130, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888778),
(4131, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347888790),
(4132, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347888794),
(4133, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1347954160),
(4134, 1, 'lizhongyi', '/admin.php?m=Module&a=index', '127.0.0.1', 1347954186),
(4135, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347954190),
(4136, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347954295),
(4137, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347954320),
(4138, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347954322),
(4139, 1, 'lizhongyi', '/admin.php?m=Module&a=index', '127.0.0.1', 1347954329),
(4140, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1347954331),
(4141, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347954342),
(4142, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954346),
(4143, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1347954357),
(4144, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954360),
(4145, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954388),
(4146, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954391),
(4147, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954410),
(4148, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954448),
(4149, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954484),
(4150, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954487),
(4151, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954500),
(4152, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954511),
(4153, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954513),
(4154, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954589),
(4155, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954613),
(4156, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954643),
(4157, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1347954657),
(4158, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348132178),
(4159, 1, 'lizhongyi', '/admin.php?m=Config&a=index', '127.0.0.1', 1348132181),
(4160, 1, 'lizhongyi', '/admin.php?m=Config&a=doModify (编辑系统配置)', '127.0.0.1', 1348132187),
(4161, 1, 'lizhongyi', '/admin.php/Config', '127.0.0.1', 1348132191),
(4162, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348210496),
(4163, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348538552),
(4164, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348538921),
(4165, 1, 'lizhongyi', '/admin.php?m=Category&a=index', '127.0.0.1', 1348538925),
(4166, 1, 'lizhongyi', '/admin.php?m=Category&a=index', '127.0.0.1', 1348538929),
(4167, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348538933),
(4168, 1, 'lizhongyi', '/admin.php?m=Article&a=index', '127.0.0.1', 1348539177),
(4169, 1, 'lizhongyi', '/admin.php?m=Category&a=index', '127.0.0.1', 1348539181),
(4170, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539185),
(4171, 1, 'lizhongyi', '/admin.php?m=Category&a=index', '127.0.0.1', 1348539319),
(4172, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539324),
(4173, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539446),
(4174, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539452),
(4175, 1, 'lizhongyi', '/admin.php?m=Category&a=index', '127.0.0.1', 1348539453),
(4176, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539458),
(4177, 1, 'lizhongyi', '/admin.php?a=index&m=Product&category=103', '127.0.0.1', 1348539515),
(4178, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539520),
(4179, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348539522),
(4180, 1, 'lizhongyi', '/admin.php?m=Tools&a=index', '127.0.0.1', 1348539561),
(4181, 1, 'lizhongyi', '/admin.php?m=Tools&a=doCache (更新缓存)', '127.0.0.1', 1348539564),
(4182, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348540884),
(4183, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348540903),
(4184, 1, 'lizhongyi', '/admin.php?m=Menu&a=doCommand (批量更新: 42,10,9,8,7,6,5,1 影响 8 条记录)', '127.0.0.1', 1348540908),
(4185, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348540954),
(4186, 1, 'lizhongyi', '/admin.php?m=Menu&a=index', '127.0.0.1', 1348540983),
(4187, 1, 'lizhongyi', '/admin.php/Menu', '127.0.0.1', 1348541058),
(4188, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348567482),
(4189, 1, 'lizhongyi', '/admin.php/Category/index.html', '127.0.0.1', 1348567486),
(4190, 1, 'lizhongyi', '/admin.php/Menu/index.html', '127.0.0.1', 1348567491),
(4191, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348636928),
(4192, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348641136),
(4193, 1, 'lizhongyi', '/admin.php/Category/index.html', '127.0.0.1', 1348641161),
(4194, 1, 'lizhongyi', '/admin.php/Theme/index.html', '127.0.0.1', 1348641162),
(4195, 1, 'lizhongyi', '/admin.php/Article/index.html', '127.0.0.1', 1348641163),
(4196, 1, 'lizhongyi', '/admin.php/Article/doModify/jump/admin.php.html (编辑:840)', '127.0.0.1', 1348641193),
(4197, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1348641197),
(4198, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348641494),
(4199, 1, 'lizhongyi', '/admin.php/Index/index.html', '127.0.0.1', 1348643578),
(4200, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348646267),
(4201, 1, 'lizhongyi', '/admin.php/Feedback/index.html', '127.0.0.1', 1348646292),
(4202, 1, 'lizhongyi', '/admin.php', '127.0.0.1', 1348646682),
(4203, 1, 'lizhongyi', '/admin.php/Article/index.html', '127.0.0.1', 1348646685),
(4204, 1, 'lizhongyi', '/admin.php/Article/doCommand.html (批量更新: 840,839,838,837,836,835,834,833 影响 8 条记录)', '127.0.0.1', 1348646698),
(4205, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1348646702),
(4206, 1, 'lizhongyi', '/admin.php/Article/doModify/jump/admin.php.html (编辑:840)', '127.0.0.1', 1348646716),
(4207, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1348646720),
(4208, 1, 'lizhongyi', '/admin.php/Article/doModify/jump/admin.php.html (编辑:840)', '127.0.0.1', 1348647826),
(4209, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1348647831),
(4210, 1, 'lizhongyi', '/admin.php/Article/doCommand.html (批量更新: 840,839,838,837,836,835,834,833 影响 8 条记录)', '127.0.0.1', 1348647838),
(4211, 1, 'lizhongyi', '/admin.php/Article', '127.0.0.1', 1348647842);

-- --------------------------------------------------------

--
-- 表的结构 `yge_admin_role`
--

CREATE TABLE IF NOT EXISTS `yge_admin_role` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT 'all' COMMENT '名称',
  `role_permission` text NOT NULL COMMENT '权限',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  `create_time` int(11) unsigned NOT NULL COMMENT '增加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员角色' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `yge_admin_role`
--

INSERT INTO `yge_admin_role` (`id`, `role_name`, `role_permission`, `system`, `create_time`, `update_time`) VALUES
(1, '超级管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Category_update,Aticle_index,Aticle_modify,Aticle_insert,Aticle_move,Aticle_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Template,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command', 1, 0, 0),
(2, '禁止访问', 'disable', 1, 0, 0),
(3, '普通管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Aticle_index,Aticle_modify,Aticle_insert,Aticle_move,Aticle_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Theme,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command,Module_index,Module_install,Config_index,Config_core,Database_index,Database_export,AdminLog,Tools,Label', 1, 0, 1263392210);

-- --------------------------------------------------------

--
-- 表的结构 `yge_article`
--

CREATE TABLE IF NOT EXISTS `yge_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '发布用户名',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `copy_from` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `from_link` varchar(255) NOT NULL DEFAULT '0' COMMENT '来源链接 ',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `html_url` varchar(255) NOT NULL,
  `description` text NOT NULL COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻' AUTO_INCREMENT=841 ;

--
-- 转存表中的数据 `yge_article`
--

INSERT INTO `yge_article` (`id`, `category_id`, `user_id`, `username`, `title`, `title_style`, `title_style_serialize`, `keyword`, `copy_from`, `from_link`, `link_url`, `html_url`, `description`, `content`, `tags`, `template`, `attach`, `attach_image`, `attach_thumb`, `istop`, `status`, `recommend`, `display_order`, `view_count`, `create_time`, `update_time`) VALUES
(833, 98, 1, 'lizhongyi', '没定义请留空，默认为 detail 不需要填写.htmladadsa', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/833.html', '', 'asdasdasdadsewr wew rwe rwe r', '', '', 0, '', '', 0, 0, 0, 0, 208, 1333296000, 0),
(834, 98, 1, 'lizhongyi', 'we rwe rw', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/834.html', ' rwer wer ', 'we rwer wer wer we r', '', '', 0, '', '', 0, 0, 0, 0, 193, 1333296000, 0),
(835, 98, 1, 'lizhongyi', '无二玩儿玩儿无二为二位肉味儿', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/835.html', '无二', '<div style="margin-left:0px;font-size:14px;color:#333333;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<table width="100%">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n					<p style="text-align:center;">\r\n						<a target="_blank" href="http://down.qiannao.com/space/file/ylws/2012-8001-6881-770b-7535-5f71/20120830-300a-4fdd-9556-300b-8ffd-5fc6-66fe-7ecf-7684-5929-7c41-4e4b-97f3.mp3/.page">点这里下载本期音频（标准MP3格式）</a>\r\n					</p>\r\n					<div align="center" style="margin-left:0px;">\r\n						&nbsp;\r\n					</div>\r\n					<div align="center" style="margin-left:0px;">\r\n						<embed height="500" width="640" src="http://173.254.199.124/wlds/player/youku.swf?VideoIDS=XNDQ1MDc4MTQ0&amp;isAutoPlay=false&amp;isDebug=false&amp;UserID=&amp;winType=interior&amp;playMovie=true&amp;MMControl=false&amp;MMout=false&amp;" type="application/x-shockwave-flash" quality="high" autostart="true" allowscriptaccess="never" />\r\n					</div>\r\n					<p style="text-align:center;">\r\n						&nbsp;\r\n					</p>\r\n</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "></align="center">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">责任编辑：月落无声网</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">分享到：</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<div style="margin-left:0px;text-align:left !important;">\r\n						<a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><span style="background-color:initial !important;font-family:瀹嬩綋, Arial;">更多</span><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#">5</a>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<div style="margin-left:0px;text-align:center;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<ul style="margin-left:auto;">\r\n	</ul>\r\n</div>\r\n<div style="margin-left:auto;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<div style="margin-left:0px;background-color:initial;">\r\n		<div style="margin-left:0px;font-size:14px;font-weight:bold;color:#CC3300;">\r\n			顶一下\r\n		</div>\r\n		<div style="margin-left:0px;color:#CC6633;">\r\n			(62)\r\n		</div>\r\n		<div style="margin-left:0px;">\r\n			<div style="margin-left:0px;background-color:#E8E8E8;">\r\n				<span style="background-color:#FFC535;"></span>\r\n			</div>\r\n			<div style="margin-left:0px;font-size:10px;">\r\n				100.00%\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div style="margin-left:0px;background-color:initial;">\r\n		<div style="margin-left:0px;font-size:14px;font-weight:bold;color:#3366CC;">\r\n			踩一下\r\n		</div>\r\n		<div style="margin-left:0px;color:#3399CC;">\r\n			(0)\r\n		</div>\r\n		<div style="margin-left:0px;">\r\n			<div style="margin-left:0px;background-color:#E8E8E8;">\r\n				<span style="background-color:#94C0E4;"></span>\r\n			</div>\r\n			<div style="margin-left:0px;font-size:10px;">\r\n				0.00%\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div style="margin-left:auto;background-color:#FFFFFF;font-family:Verdana, Arial, Tahoma;">\r\n	h\r\n</div>', '', '', 0, '', '', 0, 0, 0, 0, 142, 1333296000, 1336052782),
(836, 98, 1, 'lizhongyi', '为肉味儿无二', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/836.html', '为肉味儿玩儿玩儿', '<div style="margin-left:0px;font-size:14px;color:#333333;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<table width="100%">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">\r\n					<p style="text-align:center;">\r\n						<a target="_blank" href="http://down.qiannao.com/space/file/ylws/2012-8001-6881-770b-7535-5f71/20120830-300a-4fdd-9556-300b-8ffd-5fc6-66fe-7ecf-7684-5929-7c41-4e4b-97f3.mp3/.page">点这里下载本期音频（标准MP3格式）</a>\r\n					</p>\r\n					<div align="center" style="margin-left:0px;">\r\n						&nbsp;\r\n					</div>\r\n					<div align="center" style="margin-left:0px;">\r\n						<embed height="500" width="640" src="http://173.254.199.124/wlds/player/youku.swf?VideoIDS=XNDQ1MDc4MTQ0&amp;isAutoPlay=false&amp;isDebug=false&amp;UserID=&amp;winType=interior&amp;playMovie=true&amp;MMControl=false&amp;MMout=false&amp;" type="application/x-shockwave-flash" quality="high" autostart="true" allowscriptaccess="never" />\r\n					</div>\r\n					<p style="text-align:center;">\r\n						&nbsp;\r\n					</p>\r\n</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<align="center" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; "></align="center">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">责任编辑：月落无声网</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<style="text-align:left" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; ">分享到：</style="text-align:left">\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<div style="margin-left:0px;text-align:left !important;">\r\n						<a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#"></a><span style="background-color:initial !important;font-family:瀹嬩綋, Arial;">更多</span><a href="http://173.254.199.124/a/llkdy/2012gsws/2012/0831/5101.html#">5</a>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<div style="margin-left:0px;text-align:center;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<ul style="margin-left:auto;">\r\n	</ul>\r\n</div>\r\n<div style="margin-left:auto;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<div style="margin-left:0px;background-color:initial;">\r\n		<div style="margin-left:0px;font-size:14px;font-weight:bold;color:#CC3300;">\r\n			顶一下\r\n		</div>\r\n		<div style="margin-left:0px;color:#CC6633;">\r\n			(62)\r\n		</div>\r\n		<div style="margin-left:0px;">\r\n			<div style="margin-left:0px;background-color:#E8E8E8;">\r\n				<span style="background-color:#FFC535;"></span>\r\n			</div>\r\n			<div style="margin-left:0px;font-size:10px;">\r\n				100.00%\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div style="margin-left:0px;background-color:initial;">\r\n		<div style="margin-left:0px;font-size:14px;font-weight:bold;color:#3366CC;">\r\n			踩一下\r\n		</div>\r\n		<div style="margin-left:0px;color:#3399CC;">\r\n			(0)\r\n		</div>\r\n		<div style="margin-left:0px;">\r\n			<div style="margin-left:0px;background-color:#E8E8E8;">\r\n				<span style="background-color:#94C0E4;"></span>\r\n			</div>\r\n			<div style="margin-left:0px;font-size:10px;">\r\n				0.00%\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div style="margin-left:auto;background-color:#FFFFFF;font-family:Verdana, Arial, Tahoma;">\r\n	<br />\r\n</div>\r\n<br />', '', '', 0, '', '', 0, 0, 0, 0, 175, 1333296000, 1336052898),
(837, 98, 1, 'lizhongyi', '阿四大四大', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/837.html', '阿斯达阿斯达', '阿斯达阿斯达阿斯达', '', '', 0, '', '', 0, 0, 0, 0, 176, 1333382400, 0),
(838, 98, 1, 'lizhongyi', '阿斯达阿斯达阿斯达', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/838.html', '阿斯达阿斯达', '阿斯达阿斯达按时大大', '', '', 0, '', '', 0, 0, 0, 0, 6395, 1333382400, 0),
(839, 98, 1, 'lizhongyi', '阿斯达阿斯达敖德萨撒旦', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/839.html', '', '敖德萨阿斯达阿四大四大阿萨德撒的', '', '', 0, '', '', 0, 0, 0, 0, 725, 1333382400, 0),
(840, 98, 1, 'lizhongyi', 'nihao\\"\\"', '', '', '', '', '', '', 'html/Article/meitijujiao/201204/840.html', '', '<div style="margin-left:0px;font-family:Verdana, Arial, Tahoma;background-color:#FFFFFF;">\r\n	<span><span style="line-height:normal;">dsfsdfsfd tetert et “”“”“""""ASdaSDASD""""""</span></span> \r\n</div>', '', '', 0, '', '', 0, 0, 0, 0, 212, 1333468800, 1348647827);

-- --------------------------------------------------------

--
-- 表的结构 `yge_category`
--

CREATE TABLE IF NOT EXISTS `yge_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT 'N/A' COMMENT '模块',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级目录',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `biaozhi` varchar(50) NOT NULL COMMENT '分类标志',
  `html_url` varchar(255) NOT NULL,
  `menu` int(2) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `display_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `protected` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否保护',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`display_order`),
  KEY `parentid` (`parent_id`),
  FULLTEXT KEY `biaozhi` (`biaozhi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='全局分类' AUTO_INCREMENT=117 ;

--
-- 转存表中的数据 `yge_category`
--

INSERT INTO `yge_category` (`id`, `module`, `parent_id`, `title`, `biaozhi`, `html_url`, `menu`, `keyword`, `description`, `display_order`, `protected`, `status`, `create_time`, `update_time`) VALUES
(2, '', 1, '公司新闻', 'gonsixinwen', 'html/Article/gonsixinwen/index.html', 0, '', '公司动态', 0, 0, 0, 1262410927, 1333274002),
(14, 'Download', 0, '下载模块', '', '', 0, '', '下载模块', 0, 0, 0, 1262411171, 1342680191),
(15, '', 14, '系统软件', '', '', 0, '', '系统软件', 1, 0, 0, 1262411182, 1262411190),
(1, 'Article', 0, '文章模块', '', '', 0, '', '', 0, 0, 0, 0, 0),
(17, '', 14, '恢复类软件', '', '', 0, '', '恢复类软件', 0, 0, 0, 1262411216, 0),
(33, '', 32, '首页横幅', '', '', 0, '', '首页横幅', 0, 0, 0, 1267112629, 1267288982),
(32, 'Ad', 0, '广告模块', '', '', 0, '', '广告模块', 0, 0, 0, 1267112377, 1267112406),
(34, '', 32, '公共', '', '', 0, '', '公共', 0, 0, 0, 1267112648, 0),
(35, 'Link', 0, '链接类型', '', '', 0, '', '链接类型', 0, 0, 0, 1267287014, 0),
(36, '', 35, '默认类型', '', '', 0, '', '普通链接', 0, 0, 0, 1267287066, 1267288647),
(104, '', 103, '摄像头', 'shexiang', 'html/Product/shexiang/index.html', 0, '', '', 0, 0, 0, 1342668413, 1346394947),
(99, '', 72, '公司活动', '', '', 0, '', '', 0, 0, 0, 1324554041, 0),
(103, 'Product', 0, '产品模块', 'Product', '', 1, '', '产品的跟分类', 0, 0, 0, 1342668340, 1344836777),
(98, '', 1, '媒体聚焦', 'meitijujiao', 'html/Article/meitijujiao/index.html', 0, '', '', 0, 0, 0, 1324552052, 1333273969),
(84, '', 72, '员工天地', '', '', 0, '', '', 0, 0, 0, 1316584975, 1324554013),
(94, '', 93, '企业文化', '', '', 0, '', '', 0, 0, 0, 1316832672, 1324552285),
(110, 'Category', 2, '公司动态', 'gongsidongtai', 'html/Article/gongsidongtai/index.html', 0, '', '', 0, 0, 0, 1344835275, 0),
(111, '', 2, '员工风采', 'ygfc', 'html/Article/ygfc/index.html', 0, '', '', 0, 0, 0, 1344835290, 1344852851),
(112, '', 104, '高速球', 'gaosuqiu', 'html/Product/gaosuqiu/index.html', 0, '', '', 0, 0, 0, 1347085524, 0),
(113, '', 112, '打球', 'daqoiu', 'html/Product/daqoiu/index.html', 0, '', '啊十大是', 0, 0, 0, 1347085540, 0),
(114, '', 111, '员工照片', 'yuangong', 'html/Article/yuangong/index.html', 0, '', '', 0, 0, 0, 1347106138, 0),
(116, '', 112, '大篮球', 'dalanqiu', 'html/Product/dalanqiu/index.html', 0, '', '', 0, 0, 0, 1347524622, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_comment`
--

CREATE TABLE IF NOT EXISTS `yge_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT 'Aticle' COMMENT '模块',
  `title_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT 'ip',
  `content` text NOT NULL COMMENT '评论内容',
  `reply_content` text NOT NULL COMMENT '评论回复',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='评论' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yge_comment`
--

INSERT INTO `yge_comment` (`id`, `module`, `title_id`, `title`, `username`, `email`, `ip`, `content`, `reply_content`, `status`, `create_time`, `update_time`) VALUES
(1, 'Aticle', 9, '', 'ooooo', 'ooo', '192.168.1.222', 'ooooo', '', 1, 1312182344, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_config`
--

CREATE TABLE IF NOT EXISTS `yge_config` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `lang` char(20) NOT NULL DEFAULT 'cn' COMMENT '语言',
  `site_name` varchar(100) NOT NULL COMMENT '网站名称',
  `company_name` varchar(200) NOT NULL COMMENT '公司名称',
  `site_url` varchar(200) NOT NULL COMMENT '网站地址',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `icp` varchar(20) NOT NULL COMMENT 'icp',
  `qq` varchar(50) NOT NULL COMMENT 'qq',
  `msn` varchar(100) NOT NULL COMMENT 'msn',
  `im` varchar(250) NOT NULL COMMENT '即时通讯工具',
  `web_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '网站状态',
  `status_description` text NOT NULL COMMENT '停止描述',
  `header_content` text NOT NULL COMMENT '头部内容',
  `footer_content` text NOT NULL COMMENT '脚部内容',
  `comment_verify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启留言/评论审核',
  `sys_log` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '系统日志',
  `sys_log_ext` varchar(255) NOT NULL COMMENT '记录日志类型',
  `download_suffix` varchar(255) NOT NULL DEFAULT 'Winndows' COMMENT '下载类型',
  `run_system` varchar(255) NOT NULL COMMENT '运行平台',
  `global_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '缩略图开关',
  `watermark_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '水印开关',
  `watermark_size` varchar(50) NOT NULL COMMENT '水印尺寸',
  `watermark_position` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '水印位置',
  `watermark_padding` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印边距',
  `watermark_trans` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印透明度',
  `global_attach_size` int(10) unsigned NOT NULL DEFAULT '2048000' COMMENT '附件大小',
  `global_attach_suffix` varchar(200) NOT NULL COMMENT '允许附件类型',
  `Aticle_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新闻缩略图状态',
  `Aticle_thumb_size` varchar(50) NOT NULL COMMENT '新闻缩略图高',
  `product_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品缩略图开关',
  `product_thumb_size` varchar(50) NOT NULL COMMENT '产品缩略图高',
  `download_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '下载缩略图开关',
  `download_thumb_size` varchar(50) NOT NULL COMMENT '下载缩略图高',
  `global_thumb_size` varchar(50) NOT NULL COMMENT '全局缩略图 尺寸',
  `seo_title` varchar(200) NOT NULL,
  `seo_keyword` varchar(240) NOT NULL,
  `seo_description` varchar(240) NOT NULL,
  `smtpserver` varchar(50) NOT NULL,
  `smtpport` smallint(4) NOT NULL,
  `smtpyz` smallint(1) NOT NULL,
  `smtpmail` varchar(50) NOT NULL,
  `smtpuser` varchar(50) NOT NULL,
  `smtppass` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统配置' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yge_config`
--

INSERT INTO `yge_config` (`id`, `lang`, `site_name`, `company_name`, `site_url`, `contact_name`, `telephone`, `email`, `fax`, `mobile_telephone`, `address`, `icp`, `qq`, `msn`, `im`, `web_status`, `status_description`, `header_content`, `footer_content`, `comment_verify`, `sys_log`, `sys_log_ext`, `download_suffix`, `run_system`, `global_thumb_status`, `watermark_status`, `watermark_size`, `watermark_position`, `watermark_padding`, `watermark_trans`, `global_attach_size`, `global_attach_suffix`, `Aticle_thumb_status`, `Aticle_thumb_size`, `product_thumb_status`, `product_thumb_size`, `download_thumb_status`, `download_thumb_size`, `global_thumb_size`, `seo_title`, `seo_keyword`, `seo_description`, `smtpserver`, `smtpport`, `smtpyz`, `smtpmail`, `smtpuser`, `smtppass`, `create_time`, `update_time`) VALUES
(1, 'cn', '义哥cms', '义哥cms', 'yigecms.com', '', '', '', '', '', '北京市海淀区', '', '', '', '', 0, '', '', '地址：北京市海淀区　\r\n\r\n电话: 010-63971971 　\r\n\r\n手机: 13261285464　', 1, 1, 'index,delete,modify,insert,update,login', 'Winndows', 'window,linux', 1, 0, '500', 0, 0, 0, 3000000, 'jpg,gif,bmp,png,doc,docx,rar,7z,zip,png,swf,xls,pdf,', 0, '', 1, '500,220', 1, '500,220', '500,220', '这是沃我们的网站', '阿萨德均按时大大', '阿斯达啊实打实大的是', 'smtp.qq.com', 25, 1, '165256676@qq.com', '165256676', 'jjj', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_download`
--

CREATE TABLE IF NOT EXISTS `yge_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '软件名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '样式序列化',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `run_system` varchar(255) NOT NULL DEFAULT 'windows' COMMENT '运行系统',
  `extension` varchar(10) NOT NULL DEFAULT 'zip' COMMENT '扩展名',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '大小',
  `file_size_unit` char(10) NOT NULL DEFAULT 'KB' COMMENT '大小单位',
  `download_url` text NOT NULL COMMENT '下载地址1',
  `link_url` varchar(100) NOT NULL COMMENT '外链',
  `description` text NOT NULL COMMENT '简单描述',
  `content` text NOT NULL COMMENT '介绍',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `file_attach` varchar(50) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attach` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  `attach_image` varchar(50) NOT NULL DEFAULT '' COMMENT '附件大图',
  `attach_thumb` varchar(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='下载' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `yge_download`
--

INSERT INTO `yge_download` (`id`, `user_id`, `title`, `title_style`, `title_style_serialize`, `category_id`, `keyword`, `run_system`, `extension`, `file_size`, `file_size_unit`, `download_url`, `link_url`, `description`, `content`, `tags`, `template`, `file_attach`, `attach`, `attach_image`, `attach_thumb`, `view_count`, `istop`, `recommend`, `status`, `display_order`, `create_time`, `update_time`) VALUES
(1, 1, '泄露个人信息 铁道部坦承是个问题 ', '', '', 15, '', '', 'zip', 0, 'KB', 'test', '', '泄露个人信息 铁道部坦承是个问题 ', '<p style="text-indent: 2em">环球网记者范凌志报道，台湾前&ldquo;副总统&rdquo;吕秀莲本周访问美国华府。她在与美方人士会面时称，美国虽然持续对台军售，但不能忽略台湾&ldquo;自我防卫&rdquo;的需求，应该&ldquo;尽快考虑出售F16C/D型战机&rdquo;。</p>\r\n<p style="text-indent: 2em">据台湾&ldquo;中央社&rdquo;24日消息，吕秀莲此行已与美国国务院、美国在台协会（AIT）官员见面，并拜会了美国多位涉台机构官员。</p>\r\n<p style="text-indent: 2em">吕秀莲称，对于美国政府决定新一波的对台军售，台湾当然&ldquo;很感谢&rdquo;，但&ldquo;遗憾的是F16C/D型战机仍未纳入&rdquo;。美方亲台官员与议员还说，洛克希德马丁公司（LockheedMartin）万一关闭F16生产线，台湾要取得F-35战机将&ldquo;更为困难&rdquo;。</p>\r\n<p style="text-indent: 2em">同时，&ldquo;台湾连线&rdquo;共同主席、共和党籍众议员狄亚士巴拉特（Lincoln Diaz-Balart）等人承诺&ldquo;将发动国会连署&rdquo;要求行政部门尽快决定F16C/D的军售案。</p>\r\n<p style="text-indent: 2em">此前，美联社及路透两大国际通讯社在22日都在台北发布新闻，指根据美国政府最新公布的报告指出，台湾在与大陆进行战斗时，&ldquo;可供作战的战机数量将不敷使用，也凸显台湾空防战力已有&lsquo;不堪一击&rsquo;的危机&rdquo;。</p>\r\n<p style="text-indent: 2em">路透认为，这份报告可能促成美国在肯定触怒北京的情况下，对台提供新的军售，以确保台海情势稳定；美联社则点出，美国防部强烈怀疑：台湾是否拥有足够</p>', '', '', '', 0, '', '', 1, 0, 0, 0, 0, 1266940800, 0),
(2, 1, '广西公务员考试涉嫌试题泄露 已立案调查 ', 'color:#800080;font-weight:bold', 'a:2:{s:5:"color";s:7:"#800080";s:4:"bold";s:4:"bold";}', 15, '', '', 'zip', 0, 'KB', 'http://test.com\r\nhttp://www.sss.com', 'http://www.sss.com', '', '<p style="text-indent: 2em">吕秀莲称，对于美国政府决定新一波的对台军售，台湾当然&ldquo;很感谢&rdquo;，但&ldquo;遗憾的是F16C/D型战机仍未纳入&rdquo;。美方亲台官员与议员还说，洛克希德马丁公司（LockheedMartin）万一关闭F16生产线，台湾要取得F-35战机将&ldquo;更为困难&rdquo;。</p>\r\n<p style="text-indent: 2em">同时，&ldquo;台湾连线&rdquo;共同主席、共和党籍众议员狄亚士巴拉特（Lincoln Diaz-Balart）等人承诺&ldquo;将发动国会连署&rdquo;要求行政部门尽快决定F16C/D的军售案。</p>\r\n<p style="text-indent: 2em">此前，美联社及路透两大国际通讯社在22日都在台北发布新闻，指根据美国政府最新公布的报告指出，台湾在与大陆进行战斗时，&ldquo;可供作战的战机数量将不敷使用，也凸显台湾空防战力已有&lsquo;不堪一击&rsquo;的危机&rdquo;。</p>\r\n<p style="text-indent: 2em">路透认为，这份报告可能促成美国在肯定触怒北京的情况下，对台提供新的军售，以确保台海情势稳定；美联社则点出，美国防部强烈怀疑：台湾是否拥有足够抵御大陆攻击的能力。</p>\r\n<p style="text-indent: 2em">台空军对此表示，美方正在评估台湾采购F-16C/D的可行性，目前台方尚未取得这份报告，因此不便对媒体报道评论。而台当局高层官员则分析称，美国官方刻意将这份报告提供给国际媒体并选在台北发出，是向两岸发出极为明显的政治讯息，可能是为宣布出售F-16C/D给台湾进行&ldquo;暖身铺路&rdquo;，台湾静观这项发展，并&ldquo;将会做好准备&rdquo;。</p>', '了修正,55,aaaxxx', '', '', 0, '', '', 0, 0, 0, 0, 0, 1266940800, 0),
(3, 1, 'fsg', '', '', 17, '', '', 'zip', 0, 'MB', 'fsg', '', 'fasdf', '<p>fsg</p>', 'fsdf', '', '', 1, 'Download/201003/4b910457af736.jpg', 'Download/201003/4b910457af736_s.jpg', 0, 0, 0, 0, 0, 1267718400, 0),
(4, 1, 'asdf', '', '', 15, '', '', 'zip', 0, 'MB', 'asdf', '', '', '<p>fasdf</p>', '', '', '', 1, 'Download/201003/4b91048378829.gif', 'Download/201003/4b91048378829_s.gif', 1, 0, 0, 0, 0, 1267718400, 0),
(5, 1, 'ccc', '', '', 15, '', '', 'zip', 0, 'MB', 'cc', '', '', '<p>cc</p>', '了修正,55,fadsf,hghdf', '', '', 0, '', '', 0, 0, 0, 0, 0, 1267891200, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_feedback`
--

CREATE TABLE IF NOT EXISTS `yge_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '留言主题',
  `username` varchar(50) NOT NULL COMMENT '留言者',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是为男，否为女',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `qq` varchar(50) NOT NULL COMMENT 'QQ',
  `email` varchar(50) NOT NULL COMMENT 'email',
  `web_url` varchar(200) NOT NULL DEFAULT '' COMMENT '个人主页',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `content` text NOT NULL COMMENT '留言内容',
  `reply_content` text NOT NULL COMMENT '回复内容',
  `status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `ip` char(15) NOT NULL DEFAULT '0' COMMENT '留言IP',
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '留言时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='留言' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `yge_feedback`
--

INSERT INTO `yge_feedback` (`id`, `title`, `username`, `sex`, `mobile_tel`, `telephone`, `fax`, `qq`, `email`, `web_url`, `address`, `content`, `reply_content`, `status`, `ip`, `reply_time`, `create_time`, `update_time`) VALUES
(1, 'uikuik', 'uikuik', 1, 'uik', 'uik', 'uiku', 'ikuik', 'kuikuik', 'http://ui', '', 'kikuikuik', '', 1, '192.168.1.222', 0, 1312182324, 0),
(2, '', '""', 1, '', '', '', '', '&quot;&quot;', '', '', '"""', '', 1, '127.0.0.1', 0, 1348646255, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_idc`
--

CREATE TABLE IF NOT EXISTS `yge_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu` char(20) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '发布者',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `standard` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `number` varchar(50) NOT NULL DEFAULT '' COMMENT '产品型号',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `sale_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商场价',
  `description` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '产品说明',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `area` char(20) NOT NULL COMMENT '地区',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否附件 1是0否',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `link_url` varchar(100) NOT NULL COMMENT '外链接',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核',
  `xianlu` int(11) NOT NULL,
  `nianfu` char(20) NOT NULL,
  `yuefu` char(20) NOT NULL,
  `yingpan` char(20) NOT NULL,
  `neicun` varchar(20) NOT NULL,
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='产品' AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `yge_idc`
--

INSERT INTO `yge_idc` (`id`, `cpu`, `user_id`, `username`, `category_id`, `title`, `title_style`, `title_style_serialize`, `standard`, `number`, `keyword`, `sale_price`, `market_price`, `shop_price`, `description`, `content`, `tags`, `area`, `template`, `attach`, `attach_image`, `attach_thumb`, `link_url`, `istop`, `status`, `xianlu`, `nianfu`, `yuefu`, `yingpan`, `neicun`, `recommend`, `display_order`, `view_count`, `create_time`, `update_time`) VALUES
(19, '', 1, 'lizhongyi', 101, '我要录入这些呢', '', '', '', '', '', 0.00, 0.00, 0.00, '', '阿斯大苏打阿萨德', '', '', '', 0, '', '', '', 0, 0, 0, '', '', '', '', 0, 0, 2, 1326297600, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_job`
--

CREATE TABLE IF NOT EXISTS `yge_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '工作名称或招聘对象',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(250) NOT NULL COMMENT '关键字',
  `number` int(11) unsigned NOT NULL COMMENT '招聘人数',
  `description` text NOT NULL COMMENT '招聘要求',
  `content` text NOT NULL COMMENT '详细介绍',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `copy_from` varchar(255) NOT NULL COMMENT '来源',
  `from_link` varchar(255) NOT NULL COMMENT '来源链接',
  `link_url` varchar(200) NOT NULL COMMENT '链接地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `time_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '招聘时间/1长期2限时',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '有效天数',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `istop` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `view_count` mediumint(8) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='招聘' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `yge_job`
--

INSERT INTO `yge_job` (`id`, `user_id`, `title`, `title_style`, `title_style_serialize`, `keyword`, `number`, `description`, `content`, `template`, `tags`, `copy_from`, `from_link`, `link_url`, `status`, `time_type`, `end_time`, `attach_file`, `istop`, `view_count`, `display_order`, `create_time`, `update_time`) VALUES
(8, 1, '招聘人员测试', '', '', '', 0, '招聘人员测试招聘人员测试招聘人员测试招聘人员测试', '<p>女性，已婚，25-45岁，工作地点在开发区，4812军工厂对面。</p>', '', '招聘人员测试', '', '', '', 0, 0, 1267891200, '', 0, 8, 0, 1267891200, 1347524686);

-- --------------------------------------------------------

--
-- 表的结构 `yge_label`
--

CREATE TABLE IF NOT EXISTS `yge_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `description` text NOT NULL COMMENT '简述',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='标签调用' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yge_label`
--

INSERT INTO `yge_label` (`id`, `title`, `description`, `content`, `create_time`, `update_time`) VALUES
(1, '调取新闻列表', '这是调取新闻的模板列表', '<ygecms:getData model="Article" name="list" id="vo" offset="5" length=''10''>\r\n{$vo[''title'']}\r\n</ygecms:getData>', 0, 1345705705);

-- --------------------------------------------------------

--
-- 表的结构 `yge_link`
--

CREATE TABLE IF NOT EXISTS `yge_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '网站名称',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `category_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '链接类型：首页，内页，论坛,文字',
  `link_type` enum('text','image') NOT NULL DEFAULT 'text' COMMENT '链接类型',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `description` text NOT NULL COMMENT '简介',
  `attach_image` varchar(50) NOT NULL DEFAULT '' COMMENT '附件图片',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '首页显示、内页显示等显示方式',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序数值，越小排得越前',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '重新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='链接' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `yge_link`
--

INSERT INTO `yge_link` (`id`, `title`, `title_style`, `title_style_serialize`, `category_id`, `link_type`, `link_url`, `description`, `attach_image`, `status`, `display_order`, `create_time`, `update_time`) VALUES
(16, '小何安防公司', '', '', 36, 'text', 'http://www.dongart.net/', '', '', 0, 0, 1306554094, 0),
(17, '大哥安防公司', '', '', 36, 'text', 'http://www.qiaozilong.com/', '', '', 0, 0, 1306554242, 0),
(18, '某某个安防公司', '', '', 36, 'text', 'http://www.barbie-eye.com/', '', '', 0, 0, 1306554466, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_member`
--

CREATE TABLE IF NOT EXISTS `yge_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `question` varchar(50) NOT NULL COMMENT '问题',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `sex` tinyint(4) NOT NULL COMMENT '性别真为男',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `regip` varchar(200) NOT NULL,
  `group` int(11) NOT NULL,
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `address` varchar(100) NOT NULL,
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='会员' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `yge_member`
--


-- --------------------------------------------------------

--
-- 表的结构 `yge_menu`
--

CREATE TABLE IF NOT EXISTS `yge_menu` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题模式序列化',
  `parent_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '上级',
  `link_url` varchar(100) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `target` varchar(10) NOT NULL DEFAULT '_blank' COMMENT '新窗口',
  `weizhi` int(4) NOT NULL,
  `cid` int(9) NOT NULL,
  `display_order` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='导航' AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `yge_menu`
--

INSERT INTO `yge_menu` (`id`, `title`, `title_style`, `title_style_serialize`, `parent_id`, `link_url`, `target`, `weizhi`, `cid`, `display_order`, `status`, `create_time`, `update_time`) VALUES
(1, '交流中心', '', '', 0, '/Feedback', '_self', 0, 0, 0, 0, 1267540911, 1306373656),
(5, '人才招聘', '', '', 0, '/Job', '_blank', 0, 0, 2, 0, 1306563708, 0),
(8, '企业文化', '', '', 0, '/Page_about_item_aboutus', '_blank', 0, 0, 8, 0, 1308553182, 1308553216),
(6, '客户中心', '', '', 0, '/Solution', '_blank', 0, 0, 3, 0, 1306563770, 0),
(7, '产品展示', '', '', 0, '/Product', '_blank', 0, 0, 2, 0, 1306563856, 0),
(9, '蓝天概况', '', '', 0, '/Page_about_item_aboutus', '_self', 0, 0, 9, 0, 1308555375, 0),
(10, '新闻中心', '', '', 0, '/Article', '_self', 0, 0, 3, 0, 1308559155, 0),
(43, '产品模块', '', '', 0, '/index.php/Product/index/category/103.html', '_blank', 2, 103, 0, 0, 1348567489, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_module`
--

CREATE TABLE IF NOT EXISTS `yge_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `module_title` varchar(100) NOT NULL COMMENT '中文',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名称',
  `module_permission` text NOT NULL COMMENT '包含权限',
  `system_module` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内置',
  `left_menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示在管理菜单左侧',
  `developer` text NOT NULL COMMENT '开发者版权',
  `build_version` varchar(255) NOT NULL DEFAULT 'N/A' COMMENT '版本',
  `display_order` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='模块' AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `yge_module`
--

INSERT INTO `yge_module` (`id`, `module_title`, `module_name`, `module_permission`, `system_module`, `left_menu`, `developer`, `build_version`, `display_order`, `status`, `create_time`, `update_time`) VALUES
(4, '导航管理', 'Menu', '浏览=Menu_index|录入=Menu_insert|编辑=Menu_modify|批量操作=Menu_command', 1, 1, '', '2.0', 0, 0, 0, 0),
(7, '分类管理', 'Category', '浏览=Category_index|编辑=Category_modify|批量操作=Category_update', 1, 1, '', '2.0', 0, 0, 0, 0),
(8, '文章管理', 'Article', '浏览=Article_index|编辑=Article_modify|录入=Article_insert|移动栏目=Article_move|批量操作=Article_command', 1, 1, '', '2.0', 0, 0, 0, 0),
(9, '产品管理', 'Product', '浏览=Product_index|录入=Product_insert|编辑=Product_modify|批量操作=Product_command|订单管理=Product_order|移动类别=Product_move', 0, 1, '', '2.0', 0, 0, 0, 0),
(10, '下载管理', 'Download', '浏览=Download_index|录入=Download_insert|编辑=Download_modify|批量操作=Download_command|移动栏目=Download_move', 0, 1, '', '2.0', 0, 0, 0, 0),
(11, '留言管理', 'Feedback', '浏览=Feedback_index|录入=Feedback_insert|编辑=Feedback_modify|批量操作=Feedback_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(12, '招聘管理', 'Job', '浏览=Job_index|录入=Job_insert|编辑=Job_modify|应聘管理=Job_resume|批量操作=Job_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(13, '公告管理', 'Notice', '浏览=Notice_index|录入=Notice_insert|编辑=Notice_modify|批量操作=Notice_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(14, '链接管理', 'Link', '浏览=Link_index|录入=Link_insert|编辑=Link_modify|批量操作=Link_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(15, '单页管理', 'Page', '浏览=Page_index|录入=Page_insert|编辑=Page_modify|批量操作=Page_command', 1, 1, '', '2.0', 0, 0, 0, 0),
(16, '广告管理', 'Ad', '浏览=Ad_index|录入=Ad_insert|编辑=Ad_modify|批量操作=Ad_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(27, 'Tags', 'Tags', '管理=Tags', 1, 1, '', '2.0', 0, 0, 0, 0),
(28, '评论管理', 'Comment', '浏览=Comment_index|回复=Comment_modify|批量操作=Comment_command', 0, 1, '', '2.0', 0, 0, 0, 0),
(29, '管理员管理', 'Admin', '浏览=Admin_index|录入=Admin_insert|编辑=Admin_modify|批量操作=Admin_command', 1, 0, '', '2.0', 0, 0, 0, 0),
(31, '模板风格', 'Theme', '管理=Theme', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(30, '角色管理', 'AdminRole', '浏览=AdminRole_index|录入=AdminRole_insert|编辑=AdminRole_modify|批量操作=AdminRole_command', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(32, '模块管理', 'Module', '浏览=Module_index|编辑=Module_modify|安装=Module_install|卸载=Module_uninstall', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(33, '系统配置', 'Config', '浏览系统配置=Config_index|编辑系统配置=Config_modify|浏览核心配置=Config_core|编辑核心配置=Config_coreModify', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(34, '数据库管理', 'Database', '浏览=Database_index|执行SQL=Database_query|备份数据库=Database_export|恢复数据库=Database_import', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(35, '操作日志管理', 'AdminLog', '管理=AdminLog', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(36, '工具箱管理', 'Tools', '管理=Tools', 1, 0, 'developer:shuguangcms\r\nweb:http://www.sgcms.cn', '2.0', 0, 0, 0, 0),
(37, '数据调用', 'Label', '管理=Label', 1, 0, 'developer:shuguangcms', '', 0, 0, 0, 0),
(105, '客户中心', 'Solution', '浏览=Solution_index|录入=Solution_insert|编辑=Solution_modify|批量操作=Product_command|订单管理=Solution_order|移动类别=Solution_move', 0, 1, '', 'N/A', 0, 1, 1316575356, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_notice`
--

CREATE TABLE IF NOT EXISTS `yge_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'udi',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '样式序列化',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `come_from` varchar(50) NOT NULL DEFAULT '' COMMENT '来源名称',
  `come_from_url` varchar(255) NOT NULL COMMENT '来源地址',
  `link_url` varchar(100) NOT NULL COMMENT '链接地址',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件文件',
  `keyword` varchar(250) NOT NULL COMMENT '关键字',
  `view_count` int(11) unsigned NOT NULL COMMENT '查看次数',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='公告' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `yge_notice`
--

INSERT INTO `yge_notice` (`id`, `user_id`, `title`, `title_style`, `title_style_serialize`, `username`, `come_from`, `come_from_url`, `link_url`, `content`, `template`, `tags`, `start_time`, `end_time`, `attach_file`, `keyword`, `view_count`, `display_order`, `status`, `create_time`, `update_time`) VALUES
(1, 1, '这个公告就能显示么？', '', '', '', '艾什顿', '暗示打算的', '', '<h3 style="color: red">&nbsp;</h3>\r\n<p>不限就是爱仕达爱仕达爱仕达爱仕达爱仕达是</p>', '', '', 1312128000, 1314720000, '', '爱上大声的', 0, 0, 0, 1312179086, 0),
(2, 1, '这个公告就能显示么？', '', '', '', '艾什顿', '暗示打算的', '', '<h3 style="color: red">&nbsp;</h3>\r\n<p>不限就是爱仕达爱仕达爱仕达爱仕达爱仕达是</p>', '', '', 1312128000, 1314720000, '', '爱上大声的', 0, 0, 0, 1312179101, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_order`
--

CREATE TABLE IF NOT EXISTS `yge_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `telephone` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `introduction` text NOT NULL COMMENT '详细内容',
  `remark` text NOT NULL COMMENT '备注',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '状态(0未阅 1已阅 2已处理)',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订货日期',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='订单' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `yge_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `yge_page`
--

CREATE TABLE IF NOT EXISTS `yge_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `category_id` int(11) NOT NULL,
  `link_label` char(50) NOT NULL DEFAULT '' COMMENT '链接标识',
  `keyword` varchar(250) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` text NOT NULL COMMENT '简述',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(100) NOT NULL COMMENT '模板',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '附件图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_ext` varchar(50) NOT NULL COMMENT '附件类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='单页' AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `yge_page`
--

INSERT INTO `yge_page` (`id`, `title`, `category_id`, `link_label`, `keyword`, `description`, `content`, `template`, `attach_image`, `attach_thumb`, `attach_ext`, `status`, `view_count`, `create_time`, `update_time`) VALUES
(27, '关于我们', 95, 'aboutus', '', '', '<p>\r\n	&nbsp; ygecms，建站利器，采用thinkphp框架编写，完美MVC架构，是目前市面上那个最敏捷的cms。非常适合中小型网站建设/二次来发。\r\n</p>\r\n<p>\r\n	主要内置的功能模块有，新闻模块，产品模块，单页模块，招聘下载模块，浏览模块，会员系统。免费开源，欢迎使用。\r\n</p>', '', '', '', '', 0, 0, 1317195061, 1346394708);

-- --------------------------------------------------------

--
-- 表的结构 `yge_product`
--

CREATE TABLE IF NOT EXISTS `yge_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '发布者',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `standard` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `number` varchar(50) NOT NULL DEFAULT '' COMMENT '产品型号',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `sale_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商场价',
  `description` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '产品说明',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `area` char(20) NOT NULL COMMENT '地区',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否附件 1是0否',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `link_url` varchar(100) NOT NULL COMMENT '外链接',
  `html_url` varchar(255) NOT NULL,
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='产品' AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `yge_product`
--

INSERT INTO `yge_product` (`id`, `user_id`, `username`, `category_id`, `title`, `title_style`, `title_style_serialize`, `standard`, `number`, `keyword`, `sale_price`, `market_price`, `shop_price`, `description`, `content`, `tags`, `area`, `template`, `attach`, `attach_image`, `attach_thumb`, `link_url`, `html_url`, `istop`, `status`, `recommend`, `display_order`, `view_count`, `create_time`, `update_time`) VALUES
(101, 1, 'lizhongyi', 104, '抢式摄像头', '', '', '122', '111', '', 1333.00, 455.00, 0.00, '产品简述\r\n\r\nND-SL200IR系列百万像素高清网络红外摄像机，采用1/2.5英寸低照度感光器，相对普通高清红外摄像机具有更大的感光面积，在低照度下的成像效果远远高于普通高清红外摄像机。极大的改善低照度效果、提升画质、信噪比。          ND-SL200IR系列数字摄像机为日夜两用型，白天彩色，晚上红外灯开启，配合超低照度感光器出色的画质，解决高清数字摄像机相对黑暗环境成像效果不清晰的现状。', '<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>ND-SL200IR</strong><strong>系列百万高清网络红外摄像机</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>产品简述</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	ND-SL200IR系列百万像素高清网络红外摄像机，采用1/2.5英寸低照度感光器，相对普通高清红外摄像机具有更大的感光面积，在低照度下的成像效果远远高于普通高清红外摄像机。极大的改善低照度效果、提升画质、信噪比。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ND-SL200IR系列数字摄像机为日夜两用型，白天彩色，晚上红外灯开启，配合超低照度感光器出色的画质，解决高清数字摄像机相对黑暗环境成像效果不清晰的现状。\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>特色功能</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	IP-MAC绑定\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	断电恢复功能\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	低照度自动转换\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	实时显示实时录像、回放\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	更高色彩还原度,可图像倒置\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	可按照客户需求增减相应的程序\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	随时提供远程技术升级，增设新的功能\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	支持报警、开发语音双向对讲、多用户管理等\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	支持升级WEB浏览、抓拍、WPA2、WEP加密协议\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	散热性能更高并适合更高工作温度并保修期延长至三年保\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	可升级：P2P手机浏览、流媒体服务器转发，单访问鉴权，多用户权限管理\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	可提供第三方系统集成接口,配合平台软件实现不同网络环境大规模联网&nbsp;\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	主要功能\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	超低功耗TI达芬奇DSP芯片\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	主机端录像分辨率1920X1080,1280X720，640X352，远程浏览用小码流432X240\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	&nbsp;固定码流(码流大小可设置)，可变码流、复杂智能型码流三种码流控制方式\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	IR-CUT双滤光片切换\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	自动曝光、自动白平衡、自动增益\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	数字智能降噪\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	&nbsp;&nbsp; 电子快门\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	录像回放画面亮度可调\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	夜间自动降帧（可选）\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	看门狗防死机\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	支持系统功能更新\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	支持动态域名解析(DDNS)\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	突出优势\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	彩色超低照度0.01Lux / F1.2\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	POE网络供电（可选）\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	1根网线代替音频线、视频线、电源线\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	与其它产品使用组成模数混合监控系统\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	直接接入PDVR设备，可无需通过交换机，免受病毒影响\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	软件自动搜索摄像机IP地址，无需繁琐的IP配置\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	背光补偿，提供多种曝光模式\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	录像预览全实时(1280X720/960X720)\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	采用低照度传感器，黑暗的环境下生成清晰图像，低照效果优于普通高清摄像机\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	技术参数\r\n</p>\r\n<table style="color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;background-color:#FFFFFF;" border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<strong><span style="font-family:宋体;color:black;font-size:12pt;">产品型号</span></strong>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-indent:94.5pt;">\r\n					<span style="color:black;"><span style="font-size:small;"><span style="font-family:''Times New Roman'';"><span style="font-size:x-small;">ND-SL100IR</span></span></span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">图像传感器</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">1/2.5 inch 500</span><span style="font-family:宋体;color:black;font-size:9pt;">万像素逐行扫描数字<span>CMOS</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;font-size:9pt;">像素</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">2592H X1 944V</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;font-size:9pt;">扫描类型</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">逐行</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">视频压缩算法</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">H.264</span><span style="font-family:宋体;color:black;font-size:9pt;">、<span>mpeg4</span>、<span>mjpg</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">视频分辨率</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">1920*1080/1280*720/640*352/352*192</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" width="89">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">多码流</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">可同时支持<span>3</span>路码流<span>(720P/VGA/CIF)</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" width="89">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">视频帧率</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">22-30</span><span style="font-family:宋体;color:black;font-size:9pt;">帧</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">镜头焦距</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">6mm</span><span style="font-family:宋体;color:black;font-size:9pt;">标配；<span>8mm</span>、<span>12mm</span>、<span>16mm</span>可选</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">曝光模式</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">自动曝光、自动白平衡、自动增益</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">最低照度</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">0.01Lux/F1.2(</span><span style="font-family:宋体;color:black;font-size:9pt;">彩色<span>)</span>，<span>0Lux</span>（红外灯开启）</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">日夜转换</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">IR-CUT</span><span style="font-family:宋体;color:black;font-size:9pt;">双滤光片切换</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">红外灯</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-indent:112.5pt;">\r\n					<span style="color:black;font-size:9pt;"><span style="font-family:''Times New Roman'';">36</span></span><span style="font-family:宋体;color:black;font-size:9pt;">颗</span><span style="font-family:宋体;color:black;font-size:9pt;">LED</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">红外距离</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="color:black;font-size:9pt;"><span style="font-family:''Times New Roman'';">10~</span><span style="font-family:''Times New Roman'';">50</span><span style="font-family:宋体;"><span>米</span></span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">输入电源</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">DC&nbsp;12V/1A</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" width="89">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">SD</span><span style="font-family:宋体;color:black;font-size:9pt;">卡接口</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">可选</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">视频压缩码率</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">60Kbit/S</span><span style="font-family:宋体;color:black;font-size:9pt;">～<span>8Mbit/S</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">防水功能</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">支持</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">音频压缩算法</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">G.721</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" width="89">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">支持协议</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">支持<span>HTTP</span>、<span>TCP/IP</span>、<span>UDP</span>、<span>RTSP</span>等多种协议</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" width="89">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">通讯接口</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" width="354">\r\n				<p style="margin-left:0px;text-align:left;" align="left">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">1</span><span style="font-family:宋体;color:black;font-size:9pt;">个<span>10/100M</span>以太网接口、一个<span>RS485</span>接口（</span><span style="font-family:宋体;font-size:9pt;">支持透明通道连接</span><span style="font-family:宋体;color:black;font-size:9pt;">）和<span>1</span>路<span>RS232</span>接口</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">后端录像方式</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">耐迪斯尔混合<span>DVR</span>卡、混合嵌入式<span>DVR</span>、<span>PDVR</span>、<span>PC</span>、百万高清系统卡、<span>IP-SAN</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">功耗</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">小于<span>8W</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">工作环境</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;font-size:9pt;">温度</span><span style="font-size:9pt;"><span style="font-family:''Times New Roman'';">-10 ~ +50°C</span></span><span style="font-family:宋体;font-size:9pt;">，湿度</span><span style="font-family:''Times New Roman'';"><span style="font-size:9pt;">20 ~ 80%</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">工作湿度</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;font-size:9pt;">温度</span><span style="font-size:9pt;"><span style="font-family:''Times New Roman'';">-20 ~ +65°C</span></span><span style="font-family:宋体;font-size:9pt;">，湿度</span><span style="font-family:''Times New Roman'';"><span style="font-size:9pt;">20 ~ 95 %</span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:transparent;" valign="top" width="89">\r\n				<p style="margin-left:0px;">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">系统</span>\r\n				</p>\r\n			</td>\r\n			<td style="background-color:transparent;" valign="top" width="354">\r\n				<p style="margin-left:0px;text-align:center;" align="center">\r\n					<span style="font-family:宋体;color:black;font-size:9pt;">Linux</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '', '', '', 1, '/Product/201208/m_50405b807bade.jpg', '/Product/201208/s_50405b807bade.jpg', '', '/html/Product/shexiang/201209/101.html', 0, 0, 0, 0, 3, 1346342400, 0),
(102, 1, 'lizhongyi', 104, '百万高清网络红外摄像机', '', '', '222', '222', '', 0.00, 0.00, 0.00, 'ND-SL200IR系列百万高清网络红外摄像机\r\n\r\n', '<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>ND-SL200IR</strong><strong>系列百万高清网络红外摄像机</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>产品简述</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	ND-SL200IR系列百万像素高清网络红外摄像机，采用1/2.5英寸低照度感光器，相对普通高清红外摄像机具有更大的感光面积，在低照度下的成像效果远远高于普通高清红外摄像机。极大的改善低照度效果、提升画质、信噪比。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ND-SL200IR系列数字摄像机为日夜两用型，白天彩色，晚上红外灯开启，配合超低照度感光器出色的画质，解决高清数字摄像机相对黑暗环境成像效果不清晰的现状。\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<strong>特色功能</strong>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	IP-MAC绑定\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	断电恢复功能\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	低照度自动转换\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	实时显示实时录像、回放\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	更高色彩还原度,可图像倒置\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	可按照客户需求增减相应的程序\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	随时提供远程技术升级，增设新的功能\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	支持报警、开发语音双向对讲、多用户管理等\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	支持升级WEB浏览、抓拍、WPA2、WEP加密协议\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	散热性能更高并适合更高工作温度并保修期延长至三年保\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;background-color:#FFFFFF;" align="left">\r\n	可升级：P2P手机浏览、流媒体服务器转发，单访问鉴权，多用户权限管理\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	可提供第三方系统集成接口,配合平台软件实现不同网络环境大规模联网&nbsp;\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<br />', '', '', '', 1, '/Product/201208/m_50405bb1d2f48.jpg', '/Product/201208/s_50405bb1d2f48.jpg', '', '/html/Product/shexiang/201209/102.html', 0, 0, 0, 0, 3, 1346342400, 0),
(103, 1, 'lizhongyi', 104, '红外防水摄像机，摄像机，红外摄像机', '', '', '1212', '1212', '', 0.00, 0.00, 0.00, '红外防水摄像机，摄像机\r\n\r\n产品型号:AM-838M20  图像传感器:1/3″SONY CCD  水平清晰度:480电视线\r\n\r\n其它参数:\r\n\r\n像素: 500(水平)×582(垂直) PAL制式; 510(水平)×492(垂直) NTSC制式', '<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">红外防水摄像机，摄像机</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">产品型号</span><span style="font-size:9pt;">:AM-838M20<span>&nbsp;<span>&nbsp;</span></span></span><span style="font-family:宋体;font-size:9pt;">图像传感器</span><span style="font-size:9pt;">:1/3</span><span style="font-family:宋体;font-size:9pt;">″</span><span style="font-size:9pt;">SONY CCD<span>&nbsp;<span>&nbsp;</span></span></span><span style="font-family:宋体;font-size:9pt;">水平清晰度</span><span style="font-size:9pt;">:480</span><span style="font-family:宋体;font-size:9pt;">电视线</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">其它参数</span><span style="font-size:9pt;">:</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">像素</span><span style="font-size:9pt;">: 500(</span><span style="font-family:宋体;font-size:9pt;">水平</span><span style="font-size:9pt;">)</span><span style="font-family:宋体;font-size:9pt;">×</span><span style="font-size:9pt;">582(</span><span style="font-family:宋体;font-size:9pt;">垂直</span><span style="font-size:9pt;">) PAL</span><span style="font-family:宋体;font-size:9pt;">制式</span><span style="font-size:9pt;">; 510(</span><span style="font-family:宋体;font-size:9pt;">水平</span><span style="font-size:9pt;">)</span><span style="font-family:宋体;font-size:9pt;">×</span><span style="font-size:9pt;">492(</span><span style="font-family:宋体;font-size:9pt;">垂直</span><span style="font-size:9pt;">) NTSC</span><span style="font-family:宋体;font-size:9pt;">制式</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">制式</span><span style="font-size:9pt;">: PAL/NTSC</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">同步系统</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">内同步</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">水平清晰度</span><span style="font-size:9pt;">: 420/480</span><span style="font-family:宋体;font-size:9pt;">电视线</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">最低照度</span><span style="font-size:9pt;">: 0Lux(</span><span style="font-family:宋体;font-size:9pt;">红外灯开启</span><span style="font-size:9pt;">) 0.8 Lux(</span><span style="font-family:宋体;font-size:9pt;">白天</span><span style="font-size:9pt;">)/F1.2</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">信噪比</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">≥</span><span style="font-size:9pt;">48dB</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">快门速度</span><span style="font-size:9pt;">: 1/50(1/60) -1/100,000(</span><span style="font-family:宋体;font-size:9pt;">秒</span><span style="font-size:9pt;">)</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">视频输出</span><span style="font-size:9pt;">: BNC</span><span style="font-family:宋体;font-size:9pt;">型</span><span style="font-size:9pt;"><span>&nbsp;</span>1.0Vp-p 75</span><span style="font-family:宋体;font-size:9pt;">Ω</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">白平衡</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">自动跟踪白平衡</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">背光补偿</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">开</span><span style="font-size:9pt;">/</span><span style="font-family:宋体;font-size:9pt;">关</span><span style="font-size:9pt;"><span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">可选</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">增益控制</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">开</span><span style="font-size:9pt;">/</span><span style="font-family:宋体;font-size:9pt;">关</span><span style="font-size:9pt;"><span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">可选</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">电子快门</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">开</span><span style="font-size:9pt;">/</span><span style="font-family:宋体;font-size:9pt;">关</span><span style="font-size:9pt;"><span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">可选</span><span style="font-size:9pt;"></span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">电源功耗</span><span style="font-size:9pt;">: DC12V 1.2W</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">镜头</span><span style="font-size:9pt;">: 3.6mm</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">颜色</span><span style="font-size:9pt;">:</span><span style="font-family:宋体;font-size:9pt;">银白色</span><span style="font-size:9pt;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></span></span><span style="font-family:宋体;font-size:9pt;">红外灯距离</span><span style="font-size:9pt;">:20M</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">红外灯数</span><span style="font-size:9pt;">: 24PCS</span>\r\n</p>\r\n<p style="margin-left:0px;color:#000000;font-family:Arial, Helvetica, sans-serif;font-size:12px;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;background-color:#FFFFFF;">\r\n	<span style="font-family:宋体;font-size:9pt;">红外红外灯自动开关</span><span style="font-size:9pt;">:<span>&nbsp;</span></span><span style="font-family:宋体;font-size:9pt;">夜晚</span><span style="font-size:9pt;">(</span><span style="font-family:宋体;font-size:9pt;">开</span><span style="font-size:9pt;">)/</span><span style="font-family:宋体;font-size:9pt;">白天</span><span style="font-size:9pt;">(</span><span style="font-family:宋体;font-size:9pt;">关</span><span style="font-size:9pt;">)</span>\r\n</p>\r\n<br />', '', '', '', 1, '/Product/201208/m_50405be9d87d2.jpg', '/Product/201208/s_50405be9d87d2.jpg', '', '/html/Product/shexiang/201209/103.html', 0, 0, 0, 0, 4, 1346342400, 0),
(105, 1, 'lizhongyi', 104, '倒萨阿斯顿阿斯顿', '', '', '', '', '', 0.00, 0.00, 0.00, '阿斯顿阿斯顿啊', '阿斯顿阿斯顿啊阿斯顿', '', '', '', 0, '', '', '', 'html/Product/shexiang/201209/105.html', 0, 0, 0, 0, 4, 1347465600, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yge_resume`
--

CREATE TABLE IF NOT EXISTS `yge_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '岗位ID',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(50) NOT NULL DEFAULT '' COMMENT '出生日期',
  `marry` char(10) NOT NULL DEFAULT '未婚' COMMENT '婚否',
  `school` varchar(255) NOT NULL DEFAULT '' COMMENT '学校',
  `degree` varchar(255) NOT NULL DEFAULT '' COMMENT '学历',
  `gradyear` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业时间',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `address` varchar(50) NOT NULL COMMENT '联系地址',
  `introduction` text NOT NULL COMMENT '简介',
  `remark` text NOT NULL COMMENT '备注',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `attach_file` varchar(100) NOT NULL COMMENT '附件',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态(0未阅 1已阅 2录用 3未录用)',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '应聘时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='应聘简历' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `yge_resume`
--


-- --------------------------------------------------------

--
-- 表的结构 `yge_solution`
--

CREATE TABLE IF NOT EXISTS `yge_solution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '发布用户名',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `copy_from` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `from_link` varchar(255) NOT NULL DEFAULT '0' COMMENT '来源链接 ',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `description` text NOT NULL COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻' AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `yge_solution`
--


-- --------------------------------------------------------

--
-- 表的结构 `yge_tags`
--

CREATE TABLE IF NOT EXISTS `yge_tags` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tag_name` char(20) NOT NULL DEFAULT '' COMMENT '标签',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `total_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '出现主题数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='tag标签' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `yge_tags`
--

INSERT INTO `yge_tags` (`id`, `tag_name`, `module`, `total_count`) VALUES
(1, '花卉租摆', 'Product', 1),
(2, '招聘人员测试', 'Job', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yge_tags_cache`
--

CREATE TABLE IF NOT EXISTS `yge_tags_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `tag_name` char(20) NOT NULL COMMENT '标签名',
  `title_id` int(10) unsigned NOT NULL COMMENT '主题ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='tag主题关联' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `yge_tags_cache`
--

INSERT INTO `yge_tags_cache` (`id`, `module`, `tag_name`, `title_id`) VALUES
(1, 'Product', '花卉租摆', 4),
(2, 'Job', '招聘人员测试', 8);

-- --------------------------------------------------------

--
-- 表的结构 `yge_user`
--

CREATE TABLE IF NOT EXISTS `yge_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `face` varchar(255) NOT NULL,
  `question` varchar(50) NOT NULL COMMENT '问题',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `sex` tinyint(4) NOT NULL COMMENT '性别真为男',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `regip` varchar(200) NOT NULL,
  `group` int(11) NOT NULL,
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `address` varchar(100) NOT NULL,
  `edu` varchar(255) NOT NULL COMMENT '教育背景',
  `about` varchar(500) NOT NULL,
  `hometown` varchar(255) NOT NULL,
  `city` bigint(20) NOT NULL,
  `worker` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `motto` varchar(255) NOT NULL,
  `randnum` varchar(50) NOT NULL,
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='会员' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `yge_user`
--

INSERT INTO `yge_user` (`id`, `role_id`, `username`, `password`, `realname`, `face`, `question`, `answer`, `sex`, `telephone`, `mobile_telephone`, `fax`, `regip`, `group`, `web_url`, `email`, `address`, `edu`, `about`, `hometown`, `city`, `worker`, `birthday`, `motto`, `randnum`, `login_count`, `create_time`, `update_time`, `last_login_time`) VALUES
(1, 0, 'nihao', '93279e3308bdbbeed946fc965017f67a', '阿四大说的', '', '', '', 1, '111', '', '', '', 0, '', '592341646@qq.com', '', '埃索达', '你在所什么啊啊为二位v上的发生的发生地方&lt;br/&gt;埃索达&lt;br/&gt;埃索达阿杜&lt;br/&gt;埃索达', '4312532736', 4311744512, '程序员', '19840214', '埃索达', '', 117, 0, 0, 1348808237),
(2, 0, 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'IC4xOTI4MzgzMDA=', 0, 0, 0, 0),
(11, 0, 'nihaoa', '5e543256c480ac577d30f76f9120eb74', '', '', '', '', 0, '', '', '', '127.0.0.1', 0, '', '', '', '', '', '', 0, '', '', '', '', 1, 0, 0, 1346376057),
(12, 0, 'nihao1', '93279e3308bdbbeed946fc965017f67addd', '', '', '', '', 0, '', '', '', '127.0.0.1', 0, '', '', '', '', '', '', 0, '', '', '', '', 1, 0, 0, 1346376375),
(13, 0, 'wozhidao', '8ce87b8ec346ff4c80635f667d1592ae', '我是一只小猫', '', '', '', 0, '', '', '', '127.0.0.1', 0, '', '798899898@qq.com', '', '埃索达飒飒', '好吧 那我就介绍一下吧', '4479713280', 4463132672, '我是大夫', '19840204', '我不想成为傀儡', '', 1, 1348802740, 0, 1348802741),
(14, 0, '你知道的', 'b8758baafb49a07db57c444e9a58468c', '', '', '', '', 0, '', '', '', '127.0.0.1', 0, '', '', '', '', '', '', 0, '', '', '', '', 1, 1348808030, 0, 1348808030);

-- --------------------------------------------------------

--
-- 表的结构 `yge_user_log`
--

CREATE TABLE IF NOT EXISTS `yge_user_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL COMMENT '用户ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户',
  `action` text NOT NULL COMMENT 'URI',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志' AUTO_INCREMENT=3821 ;

--
-- 转存表中的数据 `yge_user_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `yge_user_role`
--

CREATE TABLE IF NOT EXISTS `yge_user_role` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT 'all' COMMENT '名称',
  `role_permission` text NOT NULL COMMENT '权限',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  `create_time` int(11) unsigned NOT NULL COMMENT '增加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员角色' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `yge_user_role`
--

INSERT INTO `yge_user_role` (`id`, `role_name`, `role_permission`, `system`, `create_time`, `update_time`) VALUES
(1, '超级管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Category_update,Aticle_index,Aticle_modify,Aticle_insert,Aticle_move,Aticle_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Template,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command', 1, 0, 0),
(2, '禁止访问', 'disable', 1, 0, 0),
(3, '普通管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Aticle_index,Aticle_modify,Aticle_insert,Aticle_move,Aticle_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Theme,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command,Module_index,Module_install,Config_index,Config_core,Database_index,Database_export,AdminLog,Tools,Label', 1, 0, 1263392210);
